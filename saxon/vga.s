	.file	"vga.c"
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
	.section	.text.vga_init,"ax",@progbits
	.align	1
	.globl	vga_init
	.type	vga_init, @function
vga_init:
.LFB0:
	.file 1 "vga.c"
	.loc 1 10 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 11 5
	li	a0,-268238848
	call	vga_stop
	.loc 1 12 29
	li	a5,-268238848
	.loc 1 12 38
	lui	a4,%hi(vga_h800_v480_r60)
	lw	t1,%lo(vga_h800_v480_r60)(a4)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a7,4(a3)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a6,8(a3)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a0,12(a3)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a1,16(a3)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a2,20(a3)
	addi	a3,a4,%lo(vga_h800_v480_r60)
	lw	a3,24(a3)
	addi	a4,a4,%lo(vga_h800_v480_r60)
	lw	a4,28(a4)
	sw	t1,64(a5)
	sw	a7,68(a5)
	sw	a6,72(a5)
	sw	a0,76(a5)
	sw	a1,80(a5)
	sw	a2,84(a5)
	sw	a3,88(a5)
	sw	a4,92(a5)
	.loc 1 13 29
	li	a5,-268238848
	.loc 1 13 42
	li	a4,765952
	addi	a4,a4,2047
	sw	a4,4(a5)
	.loc 1 14 29
	li	a5,-268238848
	.loc 1 14 42
	li	a4,1073741824
	sw	a4,8(a5)
	.loc 1 15 5
	li	a0,-268238848
	call	vga_run
	.loc 1 16 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	vga_init, .-vga_init
	.section	.text.vga_clear,"ax",@progbits
	.align	1
	.globl	vga_clear
	.type	vga_clear, @function
vga_clear:
.LFB1:
	.loc 1 19 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 21 12
	li	a5,1073741824
	sw	a5,-20(s0)
.LBB2:
	.loc 1 22 15
	sw	zero,-24(s0)
	.loc 1 22 2
	j	.L3
.L6:
.LBB3:
	.loc 1 23 16
	sw	zero,-28(s0)
	.loc 1 23 3
	j	.L4
.L5:
	.loc 1 24 8 discriminator 3
	lw	a5,-20(s0)
	addi	a4,a5,4
	sw	a4,-20(s0)
	.loc 1 24 11 discriminator 3
	sw	zero,0(a5)
	.loc 1 23 35 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L4:
	.loc 1 23 3 discriminator 1
	lw	a4,-28(s0)
	li	a5,399
	bleu	a4,a5,.L5
.LBE3:
	.loc 1 22 32 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L3:
	.loc 1 22 2 discriminator 1
	lw	a4,-24(s0)
	li	a5,479
	bleu	a4,a5,.L6
.LBE2:
	.loc 1 27 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	vga_clear, .-vga_clear
	.section	.text.vga_isBusy,"ax",@progbits
	.align	1
	.globl	vga_isBusy
	.type	vga_isBusy, @function
vga_isBusy:
.LFB2:
	.loc 1 30 34
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 31 13
	lw	a5,-20(s0)
	lw	a5,0(a5)
	.loc 1 31 22
	andi	a5,a5,2
	.loc 1 31 27
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 32 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	vga_isBusy, .-vga_isBusy
	.section	.text.vga_run,"ax",@progbits
	.align	1
	.globl	vga_run
	.type	vga_run, @function
vga_run:
.LFB3:
	.loc 1 34 27
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 35 14
	lw	a5,-20(s0)
	li	a4,1
	sw	a4,0(a5)
	.loc 1 36 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	vga_run, .-vga_run
	.section	.text.vga_stop,"ax",@progbits
	.align	1
	.globl	vga_stop
	.type	vga_stop, @function
vga_stop:
.LFB4:
	.loc 1 38 28
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
	.loc 1 39 14
	lw	a5,-20(s0)
	sw	zero,0(a5)
	.loc 1 40 7
	nop
.L11:
	.loc 1 40 8 discriminator 1
	lw	a0,-20(s0)
	call	vga_isBusy
	mv	a5,a0
	.loc 1 40 7 discriminator 1
	bnez	a5,.L11
	.loc 1 41 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	vga_stop, .-vga_stop
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x46
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.4byte	0x8f
	.byte	0x6
	.byte	0x20
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.4byte	0x112
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x53
	.byte	0xb
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x53
	.byte	0x17
	.4byte	0x8f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x8f
	.byte	0xc
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x56
	.byte	0xb
	.4byte	0x8f
	.byte	0x10
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x56
	.byte	0x17
	.4byte	0x8f
	.byte	0x14
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0x8f
	.byte	0x18
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x57
	.byte	0x17
	.4byte	0x8f
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x58
	.byte	0x2
	.4byte	0xa0
	.byte	0x8
	.4byte	0x112
	.byte	0x5
	.4byte	0x112
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x5a
	.byte	0x19
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x65
	.byte	0x19
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x70
	.byte	0x19
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.4byte	0x11e
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0x6
	.byte	0x60
	.byte	0x4
	.byte	0x86
	.byte	0x9
	.4byte	0x1bb
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x88
	.byte	0x15
	.4byte	0x9b
	.byte	0
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x89
	.byte	0x15
	.4byte	0x9b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x8a
	.byte	0x15
	.4byte	0x9b
	.byte	0x8
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x8b
	.byte	0x15
	.4byte	0x1cb
	.byte	0xc
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x8c
	.byte	0x17
	.4byte	0x123
	.byte	0x40
	.byte	0
	.byte	0xa
	.4byte	0x9b
	.4byte	0x1cb
	.byte	0xb
	.4byte	0x7c
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	0x1bb
	.byte	0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.4byte	0x170
	.byte	0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0x9b
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x20e
	.byte	0xe
	.string	"reg"
	.byte	0x1
	.byte	0x26
	.byte	0x18
	.4byte	0x20e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x1d0
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x23a
	.byte	0xe
	.string	"reg"
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.4byte	0x20e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1e
	.byte	0xa
	.4byte	0x8f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x264
	.byte	0xe
	.string	"reg"
	.byte	0x1
	.byte	0x1e
	.byte	0x1e
	.4byte	0x20e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b8
	.byte	0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x15
	.byte	0xc
	.4byte	0x2b8
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x13
	.string	"y"
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x13
	.string	"x"
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8f
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"vSyncStart"
.LASF19:
	.string	"vColorStart"
.LASF38:
	.string	"vga_isBusy"
.LASF24:
	.string	"vga_simRes"
.LASF35:
	.string	"vga.c"
.LASF16:
	.string	"hColorEnd"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"vga_clear"
.LASF36:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF6:
	.string	"__uint32_t"
.LASF5:
	.string	"__uint16_t"
.LASF34:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF40:
	.string	"vga_init"
.LASF28:
	.string	"FRAME_BASE"
.LASF8:
	.string	"long long int"
.LASF26:
	.string	"STATUS"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"hColorStart"
.LASF13:
	.string	"hSyncStart"
.LASF18:
	.string	"vSyncEnd"
.LASF30:
	.string	"TIMING"
.LASF21:
	.string	"Vga_Timing"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"vga_h800_v480_r60"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF14:
	.string	"hSyncEnd"
.LASF10:
	.string	"unsigned int"
.LASF11:
	.string	"uint16_t"
.LASF25:
	.string	"vga_simRes_h160_v120"
.LASF23:
	.string	"vga_h640_v480_r60"
.LASF20:
	.string	"vColorEnd"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"DUMMY0"
.LASF32:
	.string	"vga_stop"
.LASF7:
	.string	"long unsigned int"
.LASF27:
	.string	"FRAME_SIZE"
.LASF37:
	.string	"irqCount"
.LASF33:
	.string	"vga_run"
.LASF31:
	.string	"Vga_Reg"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
