	.file	"traphandler.c"
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
	.globl	irqCount
	.section	.sbss,"aw",@nobits
	.align	2
	.type	irqCount, @object
	.size	irqCount, 4
irqCount:
	.zero	4
	.globl	syscallCount
	.align	2
	.type	syscallCount, @object
	.size	syscallCount, 4
syscallCount:
	.zero	4
	.comm	timerPending,4,4
	.comm	traparg1,4,4
	.comm	traparg2,4,4
	.comm	traparg3,4,4
	.comm	trapcause,4,4
	.comm	trappc,4,4
	.comm	irqcause,4,4
	.comm	irqpc,4,4
	.globl	__floatunsidf
	.globl	__muldf3
	.globl	__divdf3
	.globl	__fixunsdfsi
	.section	.text.irqCallback,"ax",@progbits
	.align	1
	.globl	irqCallback
	.type	irqCallback, @function
irqCallback:
.LFB0:
	.file 1 "traphandler.c"
	.loc 1 22 19
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 24 11
	lui	a5,%hi(sys_mcause)
	lw	a4,%lo(sys_mcause)(a5)
	lui	a5,%hi(irqcause)
	sw	a4,%lo(irqcause)(a5)
	.loc 1 25 8
	lui	a5,%hi(sys_mepc)
	lw	a4,%lo(sys_mepc)(a5)
	lui	a5,%hi(irqpc)
	sw	a4,%lo(irqpc)(a5)
.LBB2:
	.loc 1 41 15
	li	a5,-268107776
	addi	a5,a5,172
	.loc 1 41 12
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 42 14
	li	a5,-268107776
	addi	a5,a5,164
	.loc 1 42 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 43 14
	li	a5,-268107776
	addi	a5,a5,168
	.loc 1 43 11
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 44 8
	sw	zero,-20(s0)
	.loc 1 45 6
	lw	a4,-24(s0)
	li	a5,120
	bleu	a4,a5,.L2
	.loc 1 46 7
	lw	a4,-28(s0)
	li	a5,176
	bleu	a4,a5,.L2
	.loc 1 46 26 discriminator 1
	lw	a4,-28(s0)
	li	a5,4096
	addi	a5,a5,-193
	bgtu	a4,a5,.L2
	.loc 1 47 8
	lw	a4,-32(s0)
	li	a5,336
	bleu	a4,a5,.L2
	.loc 1 47 27 discriminator 1
	lw	a4,-32(s0)
	li	a5,4096
	addi	a5,a5,-157
	bgtu	a4,a5,.L2
	.loc 1 48 52
	lw	a5,-28(s0)
	addi	a5,a5,-176
	.loc 1 48 61
	mv	a0,a5
	call	__floatunsidf
.LVL0:
	lui	a5,%hi(.LC0)
	lw	a2,%lo(.LC0)(a5)
	lw	a3,%lo(.LC0+4)(a5)
	call	__muldf3
.LVL1:
	mv	a5,a0
	mv	a6,a1
	mv	a0,a5
	mv	a1,a6
	.loc 1 48 69
	lui	a5,%hi(.LC1)
	lw	a2,%lo(.LC1)(a5)
	lw	a3,%lo(.LC1+4)(a5)
	call	__divdf3
.LVL2:
	mv	a5,a0
	mv	a6,a1
	mv	a3,a5
	mv	a4,a6
	.loc 1 48 7
	li	a5,-268107776
	addi	s1,a5,16
	.loc 1 48 41
	mv	a0,a3
	mv	a1,a4
	call	__fixunsdfsi
.LVL3:
	mv	a5,a0
	sw	a5,0(s1)
	.loc 1 49 52
	lw	a5,-32(s0)
	addi	a5,a5,-336
	.loc 1 49 61
	mv	a0,a5
	call	__floatunsidf
.LVL4:
	lui	a5,%hi(.LC2)
	lw	a2,%lo(.LC2)(a5)
	lw	a3,%lo(.LC2+4)(a5)
	call	__muldf3
.LVL5:
	mv	a5,a0
	mv	a6,a1
	mv	a0,a5
	mv	a1,a6
	.loc 1 49 69
	lui	a5,%hi(.LC3)
	lw	a2,%lo(.LC3)(a5)
	lw	a3,%lo(.LC3+4)(a5)
	call	__divdf3
.LVL6:
	mv	a5,a0
	mv	a6,a1
	mv	a3,a5
	mv	a4,a6
	.loc 1 49 7
	li	a5,-268107776
	addi	s1,a5,24
	.loc 1 49 41
	mv	a0,a3
	mv	a1,a4
	call	__fixunsdfsi
.LVL7:
	mv	a5,a0
	sw	a5,0(s1)
	.loc 1 50 11
	li	a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 54 4
	li	a5,-268107776
	addi	a5,a5,32
	.loc 1 54 38
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 56 4
	li	a5,-268107776
	addi	a5,a5,160
	.loc 1 56 38
	sw	zero,0(a5)
	.loc 1 59 11
	lui	a5,%hi(irqCount)
	lw	a5,%lo(irqCount)(a5)
	addi	a4,a5,1
	lui	a5,%hi(irqCount)
	sw	a4,%lo(irqCount)(a5)
	.loc 1 62 50
	li	a5,-268304384
	addi	a5,a5,16
	lw	a4,0(a5)
	.loc 1 62 16
	lui	a5,%hi(timerPending)
	sw	a4,%lo(timerPending)(a5)
	.loc 1 63 35
	li	a5,-268304384
	addi	a5,a5,16
	.loc 1 63 46
	lui	a4,%hi(timerPending)
	lw	a4,%lo(timerPending)(a4)
	sw	a4,0(a5)
.LBE2:
	.loc 1 65 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	irqCallback, .-irqCallback
	.section	.rodata
	.align	2
.LC4:
	.string	"ecall @ %08X\n"
	.section	.text.sysCallback,"ax",@progbits
	.align	1
	.globl	sysCallback
	.type	sysCallback, @function
sysCallback:
.LFB1:
	.loc 1 69 1
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
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 70 6
	sw	zero,-20(s0)
	.loc 1 72 11
	lui	a5,%hi(traparg1)
	lw	a4,-36(s0)
	sw	a4,%lo(traparg1)(a5)
	.loc 1 73 11
	lui	a5,%hi(traparg2)
	lw	a4,-40(s0)
	sw	a4,%lo(traparg2)(a5)
	.loc 1 74 11
	lui	a5,%hi(traparg3)
	lw	a4,-44(s0)
	sw	a4,%lo(traparg3)(a5)
	.loc 1 75 12
	lui	a5,%hi(sys_mcause)
	lw	a4,%lo(sys_mcause)(a5)
	lui	a5,%hi(trapcause)
	sw	a4,%lo(trapcause)(a5)
	.loc 1 76 9
	lui	a5,%hi(sys_mepc)
	lw	a4,%lo(sys_mepc)(a5)
	lui	a5,%hi(trappc)
	sw	a4,%lo(trappc)(a5)
	.loc 1 78 14
	lui	a5,%hi(syscallCount)
	lw	a5,%lo(syscallCount)(a5)
	addi	a4,a5,1
	lui	a5,%hi(syscallCount)
	sw	a4,%lo(syscallCount)(a5)
	.loc 1 80 2
	lw	a4,-36(s0)
	li	a5,4096
	addi	a5,a5,-96
	bne	a4,a5,.L4
	.loc 1 83 13
	lui	a5,%hi(SYMTABLETOP)
	lw	a5,%lo(SYMTABLETOP)(a5)
	.loc 1 83 11
	sw	a5,-20(s0)
	.loc 1 84 4
	j	.L5
.L4:
	.loc 1 86 4
	lui	a5,%hi(trappc)
	lw	a5,%lo(trappc)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	xprintf
	.loc 1 87 11
	li	a5,-559038464
	addi	a5,a5,-273
	sw	a5,-20(s0)
	.loc 1 88 4
	nop
.L5:
	.loc 1 90 9
	lw	a5,-20(s0)
	.loc 1 91 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	sysCallback, .-sysCallback
	.section	.rodata
	.align	3
.LC0:
	.word	0
	.word	1082720256
	.align	3
.LC1:
	.word	0
	.word	1085087744
	.align	3
.LC2:
	.word	0
	.word	1081999360
	.align	3
.LC3:
	.word	0
	.word	1085024256
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.file 5 "symtable.h"
	.file 6 "xprintf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x377
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
	.byte	0x8
	.byte	0x4
	.byte	0x1a
	.byte	0x9
	.4byte	0xac
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1c
	.byte	0x15
	.4byte	0x83
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1d
	.byte	0x15
	.4byte	0x83
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x1e
	.byte	0x3
	.4byte	0x88
	.byte	0x6
	.byte	0x20
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.4byte	0x12a
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x53
	.byte	0xb
	.4byte	0x77
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x53
	.byte	0x17
	.4byte	0x77
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0x77
	.byte	0x8
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x77
	.byte	0xc
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x56
	.byte	0xb
	.4byte	0x77
	.byte	0x10
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x56
	.byte	0x17
	.4byte	0x77
	.byte	0x14
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0x77
	.byte	0x18
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x57
	.byte	0x17
	.4byte	0x77
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x58
	.byte	0x2
	.4byte	0xb8
	.byte	0x8
	.4byte	0x12a
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x5a
	.byte	0x19
	.4byte	0x136
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x65
	.byte	0x19
	.4byte	0x136
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x70
	.byte	0x19
	.4byte	0x136
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.4byte	0x136
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0x83
	.byte	0xb
	.4byte	.LASF55
	.byte	0x10
	.byte	0x5
	.byte	0x6
	.byte	0x10
	.4byte	0x1b7
	.byte	0x7
	.4byte	.LASF27
	.byte	0x5
	.byte	0x8
	.byte	0x10
	.4byte	0x1b7
	.byte	0
	.byte	0x7
	.4byte	.LASF28
	.byte	0x5
	.byte	0x9
	.byte	0xf
	.4byte	0x70
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x1c7
	.byte	0xd
	.4byte	0x70
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0xa
	.byte	0x3
	.4byte	0x18f
	.byte	0xa
	.4byte	.LASF31
	.byte	0x5
	.byte	0xc
	.byte	0x12
	.4byte	0x1df
	.byte	0xe
	.byte	0x4
	.4byte	0x1c7
	.byte	0xf
	.4byte	0x1f0
	.byte	0x10
	.4byte	0x2c
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x13
	.byte	0xf
	.4byte	0x1fc
	.byte	0xe
	.byte	0x4
	.4byte	0x1e5
	.byte	0xa
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9
	.byte	0x11
	.4byte	0x77
	.byte	0xa
	.4byte	.LASF34
	.byte	0x1
	.byte	0x9
	.byte	0x1c
	.4byte	0x77
	.byte	0x11
	.4byte	0x183
	.byte	0x1
	.byte	0xb
	.byte	0x13
	.byte	0x5
	.byte	0x3
	.4byte	irqCount
	.byte	0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0xc
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	syscallCount
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	timerPending
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	traparg1
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0xf
	.byte	0x1c
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	traparg2
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf
	.byte	0x25
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	traparg3
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x10
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	trapcause
	.byte	0x12
	.4byte	.LASF41
	.byte	0x1
	.byte	0x11
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	trappc
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0x12
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	irqcause
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x13
	.byte	0x13
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	irqpc
	.byte	0x13
	.4byte	.LASF56
	.byte	0x1
	.byte	0x44
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x321
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x44
	.byte	0x1f
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x44
	.byte	0x2d
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x44
	.byte	0x3b
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x9
	.4byte	.LASF47
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LASF57
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x9
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1e
	.byte	0xc
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x9
	.4byte	.LASF49
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x9
	.4byte	.LASF50
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x9
	.4byte	.LASF51
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"result"
.LASF18:
	.string	"vSyncStart"
.LASF20:
	.string	"vColorStart"
.LASF31:
	.string	"SYMTABLETOP"
.LASF25:
	.string	"vga_simRes"
.LASF56:
	.string	"sysCallback"
.LASF17:
	.string	"hColorEnd"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"PENDINGS"
.LASF54:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF9:
	.string	"__uint32_t"
.LASF29:
	.string	"SYMTABLE"
.LASF52:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF57:
	.string	"irqCallback"
.LASF34:
	.string	"sys_mepc"
.LASF40:
	.string	"trapcause"
.LASF42:
	.string	"irqcause"
.LASF44:
	.string	"arg1"
.LASF45:
	.string	"arg2"
.LASF46:
	.string	"arg3"
.LASF13:
	.string	"InterruptCtrl_Reg"
.LASF6:
	.string	"long long int"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"address"
.LASF32:
	.string	"xfunc_out"
.LASF16:
	.string	"hColorStart"
.LASF14:
	.string	"hSyncStart"
.LASF19:
	.string	"vSyncEnd"
.LASF27:
	.string	"name"
.LASF41:
	.string	"trappc"
.LASF22:
	.string	"Vga_Timing"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"vga_h800_v480_r60"
.LASF33:
	.string	"sys_mcause"
.LASF35:
	.string	"syscallCount"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF15:
	.string	"hSyncEnd"
.LASF8:
	.string	"unsigned int"
.LASF51:
	.string	"TPOK"
.LASF26:
	.string	"vga_simRes_h160_v120"
.LASF24:
	.string	"vga_h640_v480_r60"
.LASF21:
	.string	"vColorEnd"
.LASF3:
	.string	"short unsigned int"
.LASF43:
	.string	"irqpc"
.LASF12:
	.string	"MASKS"
.LASF37:
	.string	"traparg1"
.LASF38:
	.string	"traparg2"
.LASF39:
	.string	"traparg3"
.LASF49:
	.string	"TPREADX"
.LASF50:
	.string	"TPREADY"
.LASF36:
	.string	"timerPending"
.LASF53:
	.string	"traphandler.c"
.LASF5:
	.string	"long unsigned int"
.LASF48:
	.string	"TPREADZ1"
.LASF55:
	.string	"_SYMTABLE"
.LASF30:
	.string	"irqCount"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
