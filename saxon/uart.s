	.file	"uart.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
	.type	vga_h800_v480_r60, @object
	.size	vga_h800_v480_r60, 32
vga_h800_v480_r60:
	.word	61
	.word	937
	.word	119
	.word	919
	.word	5
	.word	525
	.word	35
	.word	515
	.align	2
	.type	vga_h640_v480_r60, @object
	.size	vga_h640_v480_r60, 32
vga_h640_v480_r60:
	.word	96
	.word	800
	.word	112
	.word	752
	.word	2
	.word	525
	.word	12
	.word	492
	.align	2
	.type	vga_simRes, @object
	.size	vga_simRes, 32
vga_simRes:
	.word	8
	.word	70
	.word	16
	.word	64
	.word	2
	.word	48
	.word	8
	.word	40
	.align	2
	.type	vga_simRes_h160_v120, @object
	.size	vga_simRes_h160_v120, 32
vga_simRes_h160_v120:
	.word	8
	.word	184
	.word	16
	.word	176
	.word	2
	.word	130
	.word	6
	.word	126
	.section	.text.uart_writeAvailability,"ax",@progbits
	.align	1
	.globl	uart_writeAvailability
	.type	uart_writeAvailability, @function
uart_writeAvailability:
.LFB0:
	.file 1 "uart.c"
	.loc 1 5 47
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 6 13
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 6 22
	srli	a5,a5,16
	.loc 1 6 29
	andi	a5,a5,255
	.loc 1 7 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	uart_writeAvailability, .-uart_writeAvailability
	.section	.text.uart_readOccupancy,"ax",@progbits
	.align	1
	.globl	uart_readOccupancy
	.type	uart_readOccupancy, @function
uart_readOccupancy:
.LFB1:
	.loc 1 9 43
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 10 12
	lw	a5,-20(s0)
	lw	a5,4(a5)
	.loc 1 10 21
	srli	a5,a5,24
	.loc 1 11 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uart_readOccupancy, .-uart_readOccupancy
	.section	.text.uart_write,"ax",@progbits
	.align	1
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB2:
	.loc 1 13 46
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 14 7
	nop
.L6:
	.loc 1 14 8 discriminator 1
	lw	a0,-20(s0)
	call	uart_writeAvailability
	mv	a5,a0
	.loc 1 14 7 discriminator 1
	beqz	a5,.L6
	.loc 1 15 12
	lw	a5,-20(s0)
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 16 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uart_write, .-uart_write
	.section	.text.uart_read,"ax",@progbits
	.align	1
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB3:
	.loc 1 19 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 20 6
	lw	a0,-36(s0)
	call	uart_readOccupancy
	mv	a5,a0
	.loc 1 20 5
	beqz	a5,.L8
.LBB2:
	.loc 1 21 15
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 21 7
	andi	a5,a5,255
	sw	a5,-20(s0)
	.loc 1 22 10
	lw	a5,-20(s0)
	j	.L9
.L8:
.LBE2:
	.loc 1 24 10
	li	a5,-1
.L9:
	.loc 1 26 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	uart_read, .-uart_read
	.section	.text.uart_applyConfig,"ax",@progbits
	.align	1
	.globl	uart_applyConfig
	.type	uart_applyConfig, @function
uart_applyConfig:
.LFB4:
	.loc 1 28 58
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 29 29
	lw	a5,-24(s0)
	lw	a4,12(a5)
	.loc 1 29 21
	lw	a5,-20(s0)
	sw	a4,8(a5)
	.loc 1 30 30
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 1 30 46
	addi	a4,a5,-1
	.loc 1 30 61
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 1 30 70
	slli	a5,a5,8
	.loc 1 30 52
	or	a4,a4,a5
	.loc 1 30 85
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 1 30 92
	slli	a5,a5,16
	.loc 1 30 76
	or	a4,a4,a5
	.loc 1 30 20
	lw	a5,-20(s0)
	sw	a4,12(a5)
	.loc 1 31 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	uart_applyConfig, .-uart_applyConfig
	.section	.text.uart_init,"ax",@progbits
	.align	1
	.globl	uart_init
	.type	uart_init, @function
uart_init:
.LFB5:
	.loc 1 34 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 37 24
	li	a5,8
	sw	a5,-32(s0)
	.loc 1 38 20
	sw	zero,-28(s0)
	.loc 1 39 18
	sw	zero,-24(s0)
	.loc 1 40 26
	li	a5,53
	sw	a5,-20(s0)
	.loc 1 41 2
	addi	a5,s0,-32
	mv	a1,a5
	li	a0,-268369920
	call	uart_applyConfig
	.loc 1 42 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	uart_init, .-uart_init
	.section	.text.uart_pollrx,"ax",@progbits
	.align	1
	.globl	uart_pollrx
	.type	uart_pollrx, @function
uart_pollrx:
.LFB6:
	.loc 1 45 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 46 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	uart_pollrx, .-uart_pollrx
	.section	.text.uart_polltx,"ax",@progbits
	.align	1
	.globl	uart_polltx
	.type	uart_polltx, @function
uart_polltx:
.LFB7:
	.loc 1 49 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 50 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	uart_polltx, .-uart_polltx
	.section	.text.uart_getc,"ax",@progbits
	.align	1
	.globl	uart_getc
	.type	uart_getc, @function
uart_getc:
.LFB8:
	.loc 1 53 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 9
	li	a0,-268369920
	call	uart_read
	mv	a5,a0
	.loc 1 55 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE8:
	.size	uart_getc, .-uart_getc
	.section	.text.uart_putc,"ax",@progbits
	.align	1
	.globl	uart_putc
	.type	uart_putc, @function
uart_putc:
.LFB9:
	.loc 1 58 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 59 7
	nop
.L17:
	.loc 1 59 8 discriminator 1
	li	a0,-268369920
	call	uart_writeAvailability
	mv	a5,a0
	.loc 1 59 7 discriminator 1
	beqz	a5,.L17
	.loc 1 60 27
	li	a5,-268369920
	.loc 1 60 34
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 1 61 9
	li	a5,0
	.loc 1 62 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	uart_putc, .-uart_putc
	.section	.text.uart_puts,"ax",@progbits
	.align	1
	.globl	uart_puts
	.type	uart_puts, @function
uart_puts:
.LFB10:
	.loc 1 66 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 69 8
	j	.L20
.L23:
	.loc 1 70 9
	lbu	a5,-17(s0)
	mv	a0,a5
	call	uart_putc
	mv	a5,a0
	.loc 1 70 8
	beqz	a5,.L21
	.loc 1 71 14
	li	a5,255
	j	.L22
.L21:
	.loc 1 73 6
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L20:
	.loc 1 69 12
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 69 8
	lbu	a5,-17(s0)
	bnez	a5,.L23
	.loc 1 75 10
	li	a5,0
.L22:
	.loc 1 76 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE10:
	.size	uart_puts, .-uart_puts
	.section	.text._uart_wait,"ax",@progbits
	.align	1
	.globl	_uart_wait
	.type	_uart_wait, @function
_uart_wait:
.LFB11:
	.loc 1 79 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 80 7
	nop
.L25:
	.loc 1 80 8 discriminator 1
	li	a0,-268369920
	call	uart_writeAvailability
	mv	a5,a0
	.loc 1 80 7 discriminator 1
	beqz	a5,.L25
	.loc 1 81 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE11:
	.size	_uart_wait, .-_uart_wait
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x417
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x5
	.4byte	0x77
	.byte	0x6
	.4byte	.LASF13
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x4
	.byte	0x2b
	.byte	0x6
	.4byte	0xad
	.byte	0x7
	.4byte	.LASF11
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0x8
	.string	"ODD"
	.byte	0x2
	.byte	0
	.byte	0x6
	.4byte	.LASF14
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x4
	.byte	0x2c
	.byte	0x6
	.4byte	0xcc
	.byte	0x8
	.string	"ONE"
	.byte	0
	.byte	0x8
	.string	"TWO"
	.byte	0x1
	.byte	0
	.byte	0x9
	.byte	0x10
	.byte	0x4
	.byte	0x2e
	.byte	0x9
	.4byte	0x10a
	.byte	0xa
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x15
	.4byte	0x83
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x4
	.byte	0x31
	.byte	0x15
	.4byte	0x83
	.byte	0x4
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0x32
	.byte	0x15
	.4byte	0x83
	.byte	0x8
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.byte	0x33
	.byte	0x15
	.4byte	0x83
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x34
	.byte	0x3
	.4byte	0xcc
	.byte	0x9
	.byte	0x10
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.4byte	0x154
	.byte	0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x77
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x38
	.byte	0x12
	.4byte	0x88
	.byte	0x4
	.byte	0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x39
	.byte	0x10
	.4byte	0xad
	.byte	0x8
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0x3a
	.byte	0xb
	.4byte	0x77
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3b
	.byte	0x3
	.4byte	0x116
	.byte	0x9
	.byte	0x20
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.4byte	0x1d2
	.byte	0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0x53
	.byte	0xb
	.4byte	0x77
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x53
	.byte	0x17
	.4byte	0x77
	.byte	0x4
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0x77
	.byte	0x8
	.byte	0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x77
	.byte	0xc
	.byte	0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x56
	.byte	0xb
	.4byte	0x77
	.byte	0x10
	.byte	0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x56
	.byte	0x17
	.4byte	0x77
	.byte	0x14
	.byte	0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0x77
	.byte	0x18
	.byte	0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x57
	.byte	0x17
	.4byte	0x77
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x58
	.byte	0x2
	.4byte	0x160
	.byte	0xb
	.4byte	0x1d2
	.byte	0xc
	.4byte	.LASF34
	.byte	0x4
	.byte	0x5a
	.byte	0x19
	.4byte	0x1de
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0xc
	.4byte	.LASF35
	.byte	0x4
	.byte	0x65
	.byte	0x19
	.4byte	0x1de
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x70
	.byte	0x19
	.4byte	0x1de
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.4byte	0x1de
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0xd
	.4byte	.LASF55
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0x83
	.byte	0xe
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	0x27e
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x27e
	.byte	0x10
	.string	"s"
	.byte	0x1
	.byte	0x41
	.byte	0x1f
	.4byte	0x285
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.string	"t"
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF38
	.byte	0x12
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x39
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b3
	.byte	0x10
	.string	"c"
	.byte	0x1
	.byte	0x39
	.byte	0x14
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.4byte	.LASF57
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x313
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0x154
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x348
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.byte	0x1c
	.byte	0x21
	.4byte	0x348
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.4byte	.LASF45
	.byte	0x1
	.byte	0x1c
	.byte	0x33
	.4byte	0x34e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x12
	.byte	0x4
	.4byte	0x10a
	.byte	0x12
	.byte	0x4
	.4byte	0x154
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.byte	0x12
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x395
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.byte	0x12
	.byte	0x19
	.4byte	0x348
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x15
	.byte	0x7
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ca
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.byte	0xd
	.byte	0x1b
	.4byte	0x348
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.byte	0x29
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF50
	.byte	0x1
	.byte	0x9
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f4
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.byte	0x9
	.byte	0x27
	.4byte	0x348
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.string	"reg"
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.4byte	0x348
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"uart_init"
.LASF24:
	.string	"Uart_Config"
.LASF29:
	.string	"vSyncStart"
.LASF31:
	.string	"vColorStart"
.LASF36:
	.string	"vga_simRes"
.LASF14:
	.string	"UartStop"
.LASF28:
	.string	"hColorEnd"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"CLOCK_DIVIDER"
.LASF54:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF9:
	.string	"__uint32_t"
.LASF48:
	.string	"uart_write"
.LASF46:
	.string	"uart_read"
.LASF52:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF20:
	.string	"dataLength"
.LASF50:
	.string	"uart_readOccupancy"
.LASF13:
	.string	"UartParity"
.LASF45:
	.string	"config"
.LASF6:
	.string	"long long int"
.LASF16:
	.string	"STATUS"
.LASF12:
	.string	"EVEN"
.LASF4:
	.string	"long int"
.LASF43:
	.string	"uart_pollrx"
.LASF27:
	.string	"hColorStart"
.LASF41:
	.string	"_uart_wait"
.LASF21:
	.string	"parity"
.LASF25:
	.string	"hSyncStart"
.LASF44:
	.string	"uartConfig"
.LASF30:
	.string	"vSyncEnd"
.LASF15:
	.string	"DATA"
.LASF33:
	.string	"Vga_Timing"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"FRAME_CONFIG"
.LASF34:
	.string	"vga_h800_v480_r60"
.LASF51:
	.string	"uart_writeAvailability"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF26:
	.string	"hSyncEnd"
.LASF8:
	.string	"unsigned int"
.LASF37:
	.string	"vga_simRes_h160_v120"
.LASF35:
	.string	"vga_h640_v480_r60"
.LASF32:
	.string	"vColorEnd"
.LASF3:
	.string	"short unsigned int"
.LASF22:
	.string	"stop"
.LASF38:
	.string	"char"
.LASF49:
	.string	"data"
.LASF5:
	.string	"long unsigned int"
.LASF56:
	.string	"uart_getc"
.LASF53:
	.string	"uart.c"
.LASF11:
	.string	"NONE"
.LASF23:
	.string	"clockDivider"
.LASF40:
	.string	"uart_putc"
.LASF55:
	.string	"irqCount"
.LASF42:
	.string	"uart_polltx"
.LASF19:
	.string	"Uart_Reg"
.LASF39:
	.string	"uart_puts"
.LASF47:
	.string	"uart_applyConfig"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
