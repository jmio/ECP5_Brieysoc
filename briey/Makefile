
# When you change the memory size below, make sure to also change it in:
#
# ./sw/sections.lds
# ./sw/start.S
# ./rtl/top.v

MEM_WORDS       = 8192  #1024
MEM_BYTES       = 32768 #4096

MARCH           = rv32ic
CPU_FREQ_MHZ    = 50
CC_OPT          = -Os
GDBFLAGS        = -g -ggdb
#GDBFLAGS        =

OBJ_FILES       = crt.o uart.o vga.o console.o sdmm.o ff.o deb.o symtable.o traphandler.o xprintf.o main.o

#TOOLS_PREFIX    = /opt/riscv32im/bin/
#TOOLS_PREFIX     = ~/litex/riscv64-*/bin/
TOOLS_PREFIX     = C:/gccriscv/8.2.0/bin

#TARGET          = $(TOOLS_PREFIX)/riscv32-unknown-elf
TARGET          = $(TOOLS_PREFIX)/riscv-none-embed

AS              = $(TARGET)-as
ASFLAGS         = -march=$(MARCH) -mabi=ilp32
LD              = $(TARGET)-gcc
LDFLAGS         = -march=$(MARCH) $(GDBFLAGS) --specs=sim.specs -mabi=ilp32 -Wl,-Tlinker.ld,-Map,progmem.map -Wl,--gc-sections -ffreestanding -nostartfiles -Wl,--no-relax -Wl,--start-group,--end-group
CC              = $(TARGET)-gcc
CFLAGS          = -march=$(MARCH) $(GDBFLAGS) -save-temps -mno-div --specs=sim.specs -ffunction-sections -mabi=ilp32 -Wall -Wextra -pedantic -DCPU_FREQ=$(CPU_FREQ_MHZ)000000 $(CC_OPT)
OBJCOPY         = $(TARGET)-objcopy
OBJDUMP         = $(TARGET)-objdump
READELF         = $(TARGET)-readelf
GETSIZE         = $(TARGET)-size

GDBGUI          = gdbgui

CREATE_MIF      = ruby ./create_mif.rb

.PHONY: all clean 

all: progmem.dis progmem.bin progmem0.hex progmem.hex progmem0.mif

progmem.dis: progmem_dis.elf
	$(OBJDUMP) -s -D $< > $@

progmem.hex: progmem.elf
	$(GETSIZE) $<
	$(OBJCOPY) -O ihex $< $@

progmem0.hex: progmem.bin
	$(CREATE_MIF) -f hex -d $(MEM_WORDS) -w 8 -o 0 -i 4 $< > progmem0.hex
	$(CREATE_MIF) -f hex -d $(MEM_WORDS) -w 8 -o 1 -i 4 $< > progmem1.hex
	$(CREATE_MIF) -f hex -d $(MEM_WORDS) -w 8 -o 2 -i 4 $< > progmem2.hex
	$(CREATE_MIF) -f hex -d $(MEM_WORDS) -w 8 -o 3 -i 4 $< > progmem3.hex

progmem0.mif: progmem.bin
	$(CREATE_MIF) -f mif -d $(MEM_WORDS) -w 8 -o 0 -i 4 $< > progmem0.mif
	$(CREATE_MIF) -f mif -d $(MEM_WORDS) -w 8 -o 1 -i 4 $< > progmem1.mif
	$(CREATE_MIF) -f mif -d $(MEM_WORDS) -w 8 -o 2 -i 4 $< > progmem2.mif
	$(CREATE_MIF) -f mif -d $(MEM_WORDS) -w 8 -o 3 -i 4 $< > progmem3.mif

progmem.bin: progmem.elf
	$(OBJCOPY) -O binary $< $@

progmem.elf: $(OBJ_FILES) murax.h linker.ld Makefile 
	$(LD) $(LDFLAGS) -Wl,--print-memory-usage -o $@ $(OBJ_FILES) -lm 

progmem_dis.elf: $(OBJ_FILES) murax.h linker.ld Makefile
	$(LD) $(LDFLAGS) -o $@ $(OBJ_FILES) -lm 

main.o: murax.h

main.c: murax.h

sdmm.o: murax.h sdio.h ff.h diskio.h

ff.o: ff.h diskio.h ffconf.h

ocd:
	/opt/openocd-vex/bin/openocd -f /opt/openocd-vex/share/openocd/scripts/interface/ftdi/digilent_jtag_smt2.cfg \
		-c "adapter speed 1000; transport select jtag" \
		-f "vexriscv_init.cfg"

gdb:
	$(TARGET)-gdb progmem.elf \
		-ex "target remote localhost:3333"
gdbgui:
	$(GDBGUI) -g '$(TARGET)-gdb progmem.elf -ex "target remote localhost:3333"'

clean:
	del *.o *.hex *.elf *.dis *.bin *.coe *.map *.mif *.mem *.funcs *.globs
