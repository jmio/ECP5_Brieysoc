# Saxon SoC on [ICESugar Pro](https://github.com/wuxx/icesugar-pro) (Lattice ECP5)


## About Saxon Soc and This Implementation
+ The [Saxon SoC](https://github.com/SpinalHDL/SaxonSoc) is a SoC using the [VexRiscv](https://github.com/SpinalHDL/VexRiscv).
+ This is the configuration for using VexRiscv (RV32IMC) on bare metal.

## Similar Projects
- [Briey SoC on ECP5](https://github.com/jmio/ECP5_Brieysoc)
- [Briey SoC on Sipeed Tang Primer](https://github.com/jmio/testvex)
## Supported HW
+ UART (Saxon SoC, 115200bps)
+ JTAG DEBUG @ iCELink 2nd JTAG (VexRiscv JTAG Port)
+ SDRAM (x2 Clock, 0x4000000- @100MHz)
+ HDMI (Saxon SoC DMA Controller, FrameBuffer@0x40000000-)

## HW Build Tool
+ [yosys](https://github.com/YosysHQ/yosys)
+ [nextpnr](https://github.com/YosysHQ/nextpnr)
+ [Project Trellis](https://github.com/YosysHQ/prjtrellis)

```
# Required packages
sudo apt-get install build-essential clang bison flex \
libreadline-dev gawk tcl-dev libffi-dev git \
graphviz xdot pkg-config python3 libboost-system-dev \
libboost-python-dev libboost-filesystem-dev zlib1g-dev cmake
```
```
# prjtrellis
git clone --recursive https://github.com/YosysHQ/prjtrellis
sudo apt-get install libboost-all-dev
cd prjtrellis/libtrellis
cmake -DCMAKE_INSTALL_PREFIX=/usr .
make
sudo make install

# yosys
git clone --recursive  https://github.com/YosysHQ/yosys.git
cd yosys
make config-clang
make -j7
sudo make install

# nextpnr-ecp5
sudo apt install libeigen3-dev
git clone --recursive  https://github.com/YosysHQ/nextpnr.git
cd nextpnr
cmake . -DARCH=ecp5 -DTRELLIS_INSTALL_PREFIX=/usr
make -j7
sudo make install
```

After completing the above settings, go to the project folder and execute the following to build.

```
$ cd (Project Folder)
$ ./build_top.sh
```

For those of you using ICESugarPro, I would like to add that drag-and-drop writing using the JTAG chip (iCELink) may fail.

If it does not work properly, please try re-writing using icesprog or ecpdap.

## FW Build Tool (VSCode Sample with BSP)
Open VS Code in ~/saxon, and Build(Ctrl+Shift+B). 
You can also debug it, but you will need to change the configuration file.

Toolchain (Tested on Windows)
+ GNU MCU Eclipse RISC-V Embedded GCC 8.2.0
+ make.exe (incuded)
+ openocd for vexriscv
https://github.com/SpinalHDL/openocd_riscv
(libUSB FT2232 Dongle, Windows Binary included)

+ The folder names are embedded in "tasks.json" and "launch.json", so you need to rewrite them.
Make sure that riscv-none-embed-gcc, make and openocd work properly.

Example of embedding
```
            "debugServerArgs": "-c \"set VEXRISCV_YAML C:/(PROJECT FOLDER)/ECP5_Briey/saxon/Briey.yaml\" -f ${workspaceFolder}/vexriscv_dual.cfg",

                {"text": "-file-exec-and-symbols C:/(PROJECT FOLDER)/ECP5_Briey/briey/progmem.elf","description": "set architecture","ignoreFailures": false},
 
```

## Create Custom ICESugarPro.v for this project
1. Clone SaxonSoc Repo.
```
git clone https://github.com/jmio/SaxonSoc.git -b dev-0.3-jmio --recursive SaxonSoc
(ignore warning)
```

2. Build
```
# Compile the software
cd ~/SaxonSoc/software/standalone/blinkAndEcho
make BSP_PATH=../../../bsp/muselab/ICESugarPro/minimal/

# Generate the netlist
cd ~/SaxonSoc
sbt "runMain saxon.board.muselab.ICESugarPro.ICESugarProMinimal"
```
The synthesized .v will be generated in ~SaxonSoc/hardware/netlist.

## Embedding the boot code

Replace the $readmem section of the generated ICESugarProMinimal.v with the following (included in the project as progmemh.v.txt)

```
    initial begin
        $readmemh("saxon/progmem0.hex",ram_symbol0);
        $readmemh("saxon/progmem1.hex",ram_symbol1);
        $readmemh("saxon/progmem2.hex",ram_symbol2);
        $readmemh("saxon/progmem3.hex",ram_symbol3);
    end
```
