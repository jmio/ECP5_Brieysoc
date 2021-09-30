# Saxon SoC on [ICESugar Pro](https://github.com/wuxx/icesugar-pro) (Lattice ECP5)


## About Saxon Soc
+ The [Saxon SoC](https://github.com/SpinalHDL/SaxonSoc) is a SoC using the [VexRiscv](https://github.com/SpinalHDL/VexRiscv).

## Similar Projects
- [Briey SoC on ECP5](https://github.com/jmio/ECP5_Brieysoc)
- [Briey SoC on Sipeed Tang Primer](https://github.com/jmio/testvex)
## Supported HW
+ UART (Saxon SoC, 115200bps)
+ JTAG DEBUG @ iCELink 2nd JTAG (VexRiscv)

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

## FW Build Tool (Saxon Soc BSP and Sample)
```
cd ~/SaxonSoc/software/standalone/blinkAndEcho
make BSP_PATH=../../../bsp/radiona/ulx3s/minimal
```

## Create Custom XXXXXXXX.v for this project
1. Clone SaxonSoc Repo.
```
git clone https://github.com/jmio/SaxonSoc.git -b dev-0.3 --recursive SaxonSoc
(ignore warning)
```

2. Build
```
# Compile the software
cd ~/SaxonSoc/software/standalone/blinkAndEcho
make BSP_PATH=../../../bsp/radiona/ulx3s/minimal

# Generate the netlist
cd ~/SaxonSoc
sbt "runMain saxon.board.radiona.ulx3s.Ulx3sMinimal"
```
The synthesized .v will be generated in ~SaxonSoc/hardware/netlist.

## Sample FW
(~/SaxonSoc/software/standalone/blinkAndEcho)

UART 115200bps Echo, and Blink LED.
