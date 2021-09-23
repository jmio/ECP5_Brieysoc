/*
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.
*/
OUTPUT_FORMAT("elf32-littleriscv", "elf32-littleriscv", "elf32-littleriscv")
OUTPUT_ARCH(riscv)
ENTRY(crtStart)

MEMORY {
  RAM  (wrx) /*(RX)*/ : ORIGIN = 0x80000000, LENGTH = 32K
  RAM2 (wrx) /*(RX)*/ : ORIGIN = 0x80008000, LENGTH = 16K
  TVRAM (wrx) /*(RX)*/ : ORIGIN = 0xF0040000, LENGTH = 16K
  FRAMEBUF (wrx) : ORIGIN = 0x40000000, LENGTH = 1M
  HEAPRAM (wrx) : ORIGIN = 0x40100000, LENGTH = 1M
  APPRAM (wrx) : ORIGIN = 0x40200000, LENGTH = 6M
}
_stack_size = 13312;
_heap_size = 1024k;

SECTIONS {

  ._vector ORIGIN(RAM): {
    *crt.o(.start_jump);
    *crt.o(.text);
  } > RAM

  .memory : {
    *(.text);
    end = .;
  } > RAM

  .data :
  {
    *(.rdata)
    *(.rodata .rodata.*)
    *(.gnu.linkonce.r.*)
    *(.data .data.*)
    *(.gnu.linkonce.d.*)
    . = ALIGN(8);
    PROVIDE( __global_pointer$ = . + 0x800 );
    *(.sdata .sdata.*)
    *(.gnu.linkonce.s.*)
    . = ALIGN(8);
    *(.srodata.cst16)
    *(.srodata.cst8)
    *(.srodata.cst4)
    *(.srodata.cst2)
    *(.srodata .srodata.*)
  } > RAM

  .bss (NOLOAD) : {
		. = ALIGN(4);
		/* This is used by the startup in order to initialize the .bss secion */
		_bss_start = .;
    *(.sbss*)
    *(.gnu.linkonce.sb.*)
    *(.bss .bss.*)
    *(.gnu.linkonce.b.*)
    *(COMMON)
		. = ALIGN(4);
		_bss_end = .;
  } > RAM2


  .rodata         :
  {
    *(.rdata)
    *(.rodata .rodata.*)
    *(.gnu.linkonce.r.*)
  } > RAM

  .noinit (NOLOAD) : {
      . = ALIGN(4);
      *(.noinit .noinit.*)
      . = ALIGN(4);
  } > RAM2

  .tvram (NOLOAD):
  {
    . = ALIGN(4);
  } > TVRAM

  .framebuf (NOLOAD):
  {
    . = ALIGN(4);
  } > FRAMEBUF

  .appram (NOLOAD):
  {
    . = ALIGN(4);
  } > APPRAM

  .ctors          :
  {
    . = ALIGN(4);
    _ctors_start = .;
    KEEP(*(.init_array*))
    KEEP (*(SORT(.ctors.*)))
    KEEP (*(.ctors))
    . = ALIGN(4);
    _ctors_end = .;
    PROVIDE ( END_OF_SW_IMAGE = . );
  } > RAM

  ._user_heap (NOLOAD):
  {
    . = ALIGN(8);
    PROVIDE ( end = . );
    PROVIDE ( _end = . );
    PROVIDE ( _heap_start = .);
    . = . + _heap_size;
    . = ALIGN(8);
    PROVIDE ( _heap_end = .);
  } > HEAPRAM

._stack (NOLOAD):
  {
    . = ALIGN(16);
    PROVIDE (_stack_end = .);
    . = . + _stack_size;
    . = ALIGN(16);
    PROVIDE (_stack_start = .);
  } > RAM2

}
