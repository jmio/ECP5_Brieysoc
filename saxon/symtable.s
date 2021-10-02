	.file	"symtable.c"
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
	.comm	SYMTABLETOP,4,4
	.section	.text.symt_init,"ax",@progbits
	.align	1
	.globl	symt_init
	.type	symt_init, @function
symt_init:
.LFB1:
	.file 1 "symtable.c"
	.loc 1 12 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 13 14
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,-20(s0)
	sw	a4,%lo(SYMTABLETOP)(a5)
	.loc 1 14 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	symt_init, .-symt_init
	.section	.text.symt_clear,"ax",@progbits
	.align	1
	.globl	symt_clear
	.type	symt_clear, @function
symt_clear:
.LFB2:
	.loc 1 17 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 19 8
	sw	zero,-20(s0)
	.loc 1 19 2
	j	.L3
.L4:
	.loc 1 21 14 discriminator 3
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 21 26 discriminator 3
	sb	zero,0(a5)
	.loc 1 19 20 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L3:
	.loc 1 19 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	ble	a4,a5,.L4
	.loc 1 23 13
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 23 25
	sw	zero,12(a5)
	.loc 1 24 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	symt_clear, .-symt_clear
	.section	.text.symt_get,"ax",@progbits
	.align	1
	.globl	symt_get
	.type	symt_get, @function
symt_get:
.LFB3:
	.loc 1 27 1
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
	.loc 1 29 8
	sw	zero,-20(s0)
	.loc 1 29 2
	j	.L6
.L10:
	.loc 1 31 18
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 31 26
	lbu	a5,0(a5)
	.loc 1 31 6
	beqz	a5,.L11
	.loc 1 32 34
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 32 7
	li	a2,12
	lw	a1,-36(s0)
	mv	a0,a5
	call	strncmp
	mv	a5,a0
	.loc 1 32 6
	bnez	a5,.L8
	.loc 1 33 11
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	.loc 1 33 24
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 33 11
	add	a5,a4,a5
	j	.L9
.L11:
	.loc 1 31 3
	nop
.L8:
	.loc 1 29 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 29 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	ble	a4,a5,.L10
	.loc 1 36 9
	li	a5,0
.L9:
	.loc 1 37 1
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
	.size	symt_get, .-symt_get
	.section	.text.symt_put,"ax",@progbits
	.align	1
	.globl	symt_put
	.type	symt_put, @function
symt_put:
.LFB4:
	.loc 1 40 1
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
	.loc 1 41 16
	lw	a0,-36(s0)
	call	symt_get
	sw	a0,-28(s0)
	.loc 1 42 5
	lw	a5,-28(s0)
	bnez	a5,.L13
.LBB2:
	.loc 1 44 7
	lw	a0,-36(s0)
	call	strlen
	mv	a5,a0
	.loc 1 44 5
	sw	a5,-24(s0)
	.loc 1 45 6
	lw	a4,-24(s0)
	li	a5,12
	ble	a4,a5,.L14
	.loc 1 45 18 discriminator 1
	li	a5,12
	sw	a5,-24(s0)
.L14:
	.loc 1 46 9
	sw	zero,-20(s0)
	.loc 1 46 3
	j	.L15
.L18:
	.loc 1 48 19
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 48 27
	lbu	a5,0(a5)
	.loc 1 48 7
	bnez	a5,.L16
	.loc 1 49 32
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 49 21
	mv	a4,a5
	.loc 1 49 5
	lw	a5,-24(s0)
	mv	a2,a5
	lw	a1,-36(s0)
	mv	a0,a4
	call	strncpy
	.loc 1 50 16
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	lw	a5,-20(s0)
	slli	a5,a5,4
	add	a5,a4,a5
	.loc 1 50 28
	lw	a4,-40(s0)
	sw	a4,12(a5)
	.loc 1 51 12
	lui	a5,%hi(SYMTABLETOP)
	lw	a4,%lo(SYMTABLETOP)(a5)
	.loc 1 51 25
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 51 12
	add	a5,a4,a5
	j	.L17
.L16:
	.loc 1 46 21 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L15:
	.loc 1 46 3 discriminator 1
	lw	a4,-20(s0)
	li	a5,127
	ble	a4,a5,.L18
	j	.L19
.L13:
.LBE2:
	.loc 1 55 14
	lw	a5,-28(s0)
	lw	a4,-40(s0)
	sw	a4,12(a5)
.L19:
	.loc 1 57 9
	li	a5,0
.L17:
	.loc 1 58 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	symt_put, .-symt_put
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.file 5 "symtable.h"
	.file 6 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\lock.h"
	.file 7 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h"
	.file 8 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h"
	.file 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF147
	.byte	0xc
	.4byte	.LASF148
	.4byte	.LASF149
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
	.byte	0x20
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.4byte	0xfa
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x53
	.byte	0xb
	.4byte	0x77
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x53
	.byte	0x17
	.4byte	0x77
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0x77
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x77
	.byte	0xc
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x56
	.byte	0xb
	.4byte	0x77
	.byte	0x10
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x56
	.byte	0x17
	.4byte	0x77
	.byte	0x14
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0x77
	.byte	0x18
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x57
	.byte	0x17
	.4byte	0x77
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x58
	.byte	0x2
	.4byte	0x88
	.byte	0x8
	.4byte	0xfa
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x5a
	.byte	0x19
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x65
	.byte	0x19
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x70
	.byte	0x19
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.4byte	0x106
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0x83
	.byte	0xb
	.4byte	.LASF43
	.byte	0x10
	.byte	0x5
	.byte	0x6
	.byte	0x10
	.4byte	0x187
	.byte	0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x8
	.byte	0x10
	.4byte	0x187
	.byte	0
	.byte	0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0x9
	.byte	0xf
	.4byte	0x70
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x197
	.byte	0xd
	.4byte	0x70
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xa
	.byte	0x3
	.4byte	0x15f
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0xc
	.byte	0x12
	.4byte	0x1af
	.byte	0xe
	.byte	0x4
	.4byte	0x197
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF29
	.byte	0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x22
	.byte	0x19
	.4byte	0x1c8
	.byte	0xe
	.byte	0x4
	.4byte	0x1ce
	.byte	0xf
	.4byte	.LASF139
	.byte	0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x2c
	.byte	0xe
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x72
	.byte	0xe
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x91
	.byte	0x14
	.4byte	0x69
	.byte	0x10
	.4byte	.LASF34
	.byte	0x8
	.2byte	0x165
	.byte	0x16
	.4byte	0x70
	.byte	0x11
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.byte	0x3
	.4byte	0x226
	.byte	0x12
	.4byte	.LASF35
	.byte	0x7
	.byte	0xa8
	.byte	0xc
	.4byte	0x1f7
	.byte	0x12
	.4byte	.LASF36
	.byte	0x7
	.byte	0xa9
	.byte	0x13
	.4byte	0x226
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x236
	.byte	0xd
	.4byte	0x70
	.byte	0x3
	.byte	0
	.byte	0x6
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x25a
	.byte	0x7
	.4byte	.LASF37
	.byte	0x7
	.byte	0xa5
	.byte	0x7
	.4byte	0x69
	.byte	0
	.byte	0x7
	.4byte	.LASF38
	.byte	0x7
	.byte	0xaa
	.byte	0x5
	.4byte	0x204
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0xab
	.byte	0x3
	.4byte	0x236
	.byte	0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0xaf
	.byte	0x11
	.4byte	0x1bc
	.byte	0x13
	.byte	0x4
	.byte	0xe
	.byte	0x4
	.4byte	0x27a
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF41
	.byte	0x8
	.4byte	0x27a
	.byte	0x3
	.4byte	.LASF42
	.byte	0x9
	.byte	0x16
	.byte	0x17
	.4byte	0x54
	.byte	0xb
	.4byte	.LASF44
	.byte	0x18
	.byte	0x9
	.byte	0x2f
	.byte	0x8
	.4byte	0x2ec
	.byte	0x7
	.4byte	.LASF45
	.byte	0x9
	.byte	0x31
	.byte	0x13
	.4byte	0x2ec
	.byte	0
	.byte	0x14
	.string	"_k"
	.byte	0x9
	.byte	0x32
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.byte	0x7
	.4byte	.LASF46
	.byte	0x9
	.byte	0x32
	.byte	0xb
	.4byte	0x69
	.byte	0x8
	.byte	0x7
	.4byte	.LASF47
	.byte	0x9
	.byte	0x32
	.byte	0x14
	.4byte	0x69
	.byte	0xc
	.byte	0x7
	.4byte	.LASF48
	.byte	0x9
	.byte	0x32
	.byte	0x1b
	.4byte	0x69
	.byte	0x10
	.byte	0x14
	.string	"_x"
	.byte	0x9
	.byte	0x33
	.byte	0xb
	.4byte	0x2f2
	.byte	0x14
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x292
	.byte	0xc
	.4byte	0x286
	.4byte	0x302
	.byte	0xd
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x24
	.byte	0x9
	.byte	0x37
	.byte	0x8
	.4byte	0x385
	.byte	0x7
	.4byte	.LASF50
	.byte	0x9
	.byte	0x39
	.byte	0x7
	.4byte	0x69
	.byte	0
	.byte	0x7
	.4byte	.LASF51
	.byte	0x9
	.byte	0x3a
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.byte	0x7
	.4byte	.LASF52
	.byte	0x9
	.byte	0x3b
	.byte	0x7
	.4byte	0x69
	.byte	0x8
	.byte	0x7
	.4byte	.LASF53
	.byte	0x9
	.byte	0x3c
	.byte	0x7
	.4byte	0x69
	.byte	0xc
	.byte	0x7
	.4byte	.LASF54
	.byte	0x9
	.byte	0x3d
	.byte	0x7
	.4byte	0x69
	.byte	0x10
	.byte	0x7
	.4byte	.LASF55
	.byte	0x9
	.byte	0x3e
	.byte	0x7
	.4byte	0x69
	.byte	0x14
	.byte	0x7
	.4byte	.LASF56
	.byte	0x9
	.byte	0x3f
	.byte	0x7
	.4byte	0x69
	.byte	0x18
	.byte	0x7
	.4byte	.LASF57
	.byte	0x9
	.byte	0x40
	.byte	0x7
	.4byte	0x69
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF58
	.byte	0x9
	.byte	0x41
	.byte	0x7
	.4byte	0x69
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LASF59
	.2byte	0x108
	.byte	0x9
	.byte	0x4a
	.byte	0x8
	.4byte	0x3ca
	.byte	0x7
	.4byte	.LASF60
	.byte	0x9
	.byte	0x4b
	.byte	0x9
	.4byte	0x3ca
	.byte	0
	.byte	0x7
	.4byte	.LASF61
	.byte	0x9
	.byte	0x4c
	.byte	0x9
	.4byte	0x3ca
	.byte	0x80
	.byte	0x16
	.4byte	.LASF62
	.byte	0x9
	.byte	0x4e
	.byte	0xa
	.4byte	0x286
	.2byte	0x100
	.byte	0x16
	.4byte	.LASF63
	.byte	0x9
	.byte	0x51
	.byte	0xa
	.4byte	0x286
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x272
	.4byte	0x3da
	.byte	0xd
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.byte	0x15
	.4byte	.LASF64
	.2byte	0x190
	.byte	0x9
	.byte	0x5d
	.byte	0x8
	.4byte	0x41d
	.byte	0x7
	.4byte	.LASF45
	.byte	0x9
	.byte	0x5e
	.byte	0x12
	.4byte	0x41d
	.byte	0
	.byte	0x7
	.4byte	.LASF65
	.byte	0x9
	.byte	0x5f
	.byte	0x6
	.4byte	0x69
	.byte	0x4
	.byte	0x7
	.4byte	.LASF66
	.byte	0x9
	.byte	0x61
	.byte	0x9
	.4byte	0x423
	.byte	0x8
	.byte	0x7
	.4byte	.LASF59
	.byte	0x9
	.byte	0x62
	.byte	0x1e
	.4byte	0x385
	.byte	0x88
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x3da
	.byte	0xc
	.4byte	0x433
	.4byte	0x433
	.byte	0xd
	.4byte	0x70
	.byte	0x1f
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x439
	.byte	0x17
	.byte	0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0x9
	.byte	0x75
	.byte	0x8
	.4byte	0x462
	.byte	0x7
	.4byte	.LASF68
	.byte	0x9
	.byte	0x76
	.byte	0x11
	.4byte	0x462
	.byte	0
	.byte	0x7
	.4byte	.LASF69
	.byte	0x9
	.byte	0x77
	.byte	0x6
	.4byte	0x69
	.byte	0x4
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0xb
	.4byte	.LASF70
	.byte	0x68
	.byte	0x9
	.byte	0xb5
	.byte	0x8
	.4byte	0x5ab
	.byte	0x14
	.string	"_p"
	.byte	0x9
	.byte	0xb6
	.byte	0x12
	.4byte	0x462
	.byte	0
	.byte	0x14
	.string	"_r"
	.byte	0x9
	.byte	0xb7
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.byte	0x14
	.string	"_w"
	.byte	0x9
	.byte	0xb8
	.byte	0x7
	.4byte	0x69
	.byte	0x8
	.byte	0x7
	.4byte	.LASF71
	.byte	0x9
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0x7
	.4byte	.LASF72
	.byte	0x9
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0x14
	.string	"_bf"
	.byte	0x9
	.byte	0xbb
	.byte	0x11
	.4byte	0x43a
	.byte	0x10
	.byte	0x7
	.4byte	.LASF73
	.byte	0x9
	.byte	0xbc
	.byte	0x7
	.4byte	0x69
	.byte	0x18
	.byte	0x7
	.4byte	.LASF74
	.byte	0x9
	.byte	0xc3
	.byte	0xa
	.4byte	0x272
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF75
	.byte	0x9
	.byte	0xc5
	.byte	0xe
	.4byte	0x71d
	.byte	0x20
	.byte	0x7
	.4byte	.LASF76
	.byte	0x9
	.byte	0xc7
	.byte	0xe
	.4byte	0x747
	.byte	0x24
	.byte	0x7
	.4byte	.LASF77
	.byte	0x9
	.byte	0xca
	.byte	0xd
	.4byte	0x76b
	.byte	0x28
	.byte	0x7
	.4byte	.LASF78
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0x785
	.byte	0x2c
	.byte	0x14
	.string	"_ub"
	.byte	0x9
	.byte	0xce
	.byte	0x11
	.4byte	0x43a
	.byte	0x30
	.byte	0x14
	.string	"_up"
	.byte	0x9
	.byte	0xcf
	.byte	0x12
	.4byte	0x462
	.byte	0x38
	.byte	0x14
	.string	"_ur"
	.byte	0x9
	.byte	0xd0
	.byte	0x7
	.4byte	0x69
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF79
	.byte	0x9
	.byte	0xd3
	.byte	0x11
	.4byte	0x78b
	.byte	0x40
	.byte	0x7
	.4byte	.LASF80
	.byte	0x9
	.byte	0xd4
	.byte	0x11
	.4byte	0x79b
	.byte	0x43
	.byte	0x14
	.string	"_lb"
	.byte	0x9
	.byte	0xd7
	.byte	0x11
	.4byte	0x43a
	.byte	0x44
	.byte	0x7
	.4byte	.LASF81
	.byte	0x9
	.byte	0xda
	.byte	0x7
	.4byte	0x69
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF82
	.byte	0x9
	.byte	0xdb
	.byte	0xa
	.4byte	0x1d3
	.byte	0x50
	.byte	0x7
	.4byte	.LASF83
	.byte	0x9
	.byte	0xde
	.byte	0x12
	.4byte	0x5c9
	.byte	0x54
	.byte	0x7
	.4byte	.LASF84
	.byte	0x9
	.byte	0xe2
	.byte	0xc
	.4byte	0x266
	.byte	0x58
	.byte	0x7
	.4byte	.LASF85
	.byte	0x9
	.byte	0xe4
	.byte	0xe
	.4byte	0x25a
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF86
	.byte	0x9
	.byte	0xe5
	.byte	0x7
	.4byte	0x69
	.byte	0x64
	.byte	0
	.byte	0x18
	.4byte	0x1eb
	.4byte	0x5c9
	.byte	0x19
	.4byte	0x5c9
	.byte	0x19
	.4byte	0x272
	.byte	0x19
	.4byte	0x274
	.byte	0x19
	.4byte	0x69
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x5d4
	.byte	0x8
	.4byte	0x5c9
	.byte	0x1a
	.4byte	.LASF87
	.2byte	0x428
	.byte	0x9
	.2byte	0x239
	.byte	0x8
	.4byte	0x71d
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x9
	.2byte	0x23b
	.byte	0x7
	.4byte	0x69
	.byte	0
	.byte	0x1b
	.4byte	.LASF89
	.byte	0x9
	.2byte	0x240
	.byte	0xb
	.4byte	0x7f7
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x240
	.byte	0x14
	.4byte	0x7f7
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x240
	.byte	0x1e
	.4byte	0x7f7
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF92
	.byte	0x9
	.2byte	0x242
	.byte	0x7
	.4byte	0x69
	.byte	0x10
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x9
	.2byte	0x243
	.byte	0x8
	.4byte	0x9f7
	.byte	0x14
	.byte	0x1b
	.4byte	.LASF94
	.byte	0x9
	.2byte	0x246
	.byte	0x7
	.4byte	0x69
	.byte	0x30
	.byte	0x1b
	.4byte	.LASF95
	.byte	0x9
	.2byte	0x247
	.byte	0x16
	.4byte	0xa0c
	.byte	0x34
	.byte	0x1b
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x249
	.byte	0x7
	.4byte	0x69
	.byte	0x38
	.byte	0x1b
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x24b
	.byte	0xa
	.4byte	0xa1d
	.byte	0x3c
	.byte	0x1b
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x24e
	.byte	0x13
	.4byte	0x2ec
	.byte	0x40
	.byte	0x1b
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x24f
	.byte	0x7
	.4byte	0x69
	.byte	0x44
	.byte	0x1b
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x250
	.byte	0x13
	.4byte	0x2ec
	.byte	0x48
	.byte	0x1b
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x251
	.byte	0x14
	.4byte	0xa23
	.byte	0x4c
	.byte	0x1b
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x254
	.byte	0x7
	.4byte	0x69
	.byte	0x50
	.byte	0x1b
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x255
	.byte	0x9
	.4byte	0x274
	.byte	0x54
	.byte	0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x278
	.byte	0x7
	.4byte	0x9d2
	.byte	0x58
	.byte	0x1c
	.4byte	.LASF64
	.byte	0x9
	.2byte	0x27c
	.byte	0x13
	.4byte	0x41d
	.2byte	0x148
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x27d
	.byte	0x12
	.4byte	0x3da
	.2byte	0x14c
	.byte	0x1c
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x281
	.byte	0xc
	.4byte	0xa34
	.2byte	0x2dc
	.byte	0x1c
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x286
	.byte	0x10
	.4byte	0x7b8
	.2byte	0x2e0
	.byte	0x1c
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x288
	.byte	0xa
	.4byte	0xa40
	.2byte	0x2ec
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x5ab
	.byte	0x18
	.4byte	0x1eb
	.4byte	0x741
	.byte	0x19
	.4byte	0x5c9
	.byte	0x19
	.4byte	0x272
	.byte	0x19
	.4byte	0x741
	.byte	0x19
	.4byte	0x69
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x281
	.byte	0xe
	.byte	0x4
	.4byte	0x723
	.byte	0x18
	.4byte	0x1df
	.4byte	0x76b
	.byte	0x19
	.4byte	0x5c9
	.byte	0x19
	.4byte	0x272
	.byte	0x19
	.4byte	0x1df
	.byte	0x19
	.4byte	0x69
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x74d
	.byte	0x18
	.4byte	0x69
	.4byte	0x785
	.byte	0x19
	.4byte	0x5c9
	.byte	0x19
	.4byte	0x272
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x771
	.byte	0xc
	.4byte	0x2c
	.4byte	0x79b
	.byte	0xd
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x7ab
	.byte	0xd
	.4byte	0x70
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x11f
	.byte	0x18
	.4byte	0x468
	.byte	0x1d
	.4byte	.LASF110
	.byte	0xc
	.byte	0x9
	.2byte	0x123
	.byte	0x8
	.4byte	0x7f1
	.byte	0x1b
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x125
	.byte	0x11
	.4byte	0x7f1
	.byte	0
	.byte	0x1b
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x126
	.byte	0x7
	.4byte	0x69
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x127
	.byte	0xb
	.4byte	0x7f7
	.byte	0x8
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x7b8
	.byte	0xe
	.byte	0x4
	.4byte	0x7ab
	.byte	0x1d
	.4byte	.LASF113
	.byte	0xe
	.byte	0x9
	.2byte	0x13f
	.byte	0x8
	.4byte	0x836
	.byte	0x1b
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x140
	.byte	0x12
	.4byte	0x836
	.byte	0
	.byte	0x1b
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x141
	.byte	0x12
	.4byte	0x836
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x3a
	.4byte	0x846
	.byte	0xd
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x1e
	.byte	0xd0
	.byte	0x9
	.2byte	0x259
	.byte	0x7
	.4byte	0x95b
	.byte	0x1b
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x25b
	.byte	0x18
	.4byte	0x70
	.byte	0
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x25c
	.byte	0x12
	.4byte	0x274
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x25d
	.byte	0x10
	.4byte	0x95b
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x25e
	.byte	0x17
	.4byte	0x302
	.byte	0x24
	.byte	0x1b
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x25f
	.byte	0xf
	.4byte	0x69
	.byte	0x48
	.byte	0x1b
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x260
	.byte	0x2c
	.4byte	0x62
	.byte	0x50
	.byte	0x1b
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x261
	.byte	0x1a
	.4byte	0x7fd
	.byte	0x58
	.byte	0x1b
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x262
	.byte	0x16
	.4byte	0x25a
	.byte	0x68
	.byte	0x1b
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x263
	.byte	0x16
	.4byte	0x25a
	.byte	0x70
	.byte	0x1b
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x264
	.byte	0x16
	.4byte	0x25a
	.byte	0x78
	.byte	0x1b
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x265
	.byte	0x10
	.4byte	0x96b
	.byte	0x80
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x266
	.byte	0x10
	.4byte	0x97b
	.byte	0x88
	.byte	0x1b
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x267
	.byte	0xf
	.4byte	0x69
	.byte	0xa0
	.byte	0x1b
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x268
	.byte	0x16
	.4byte	0x25a
	.byte	0xa4
	.byte	0x1b
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x269
	.byte	0x16
	.4byte	0x25a
	.byte	0xac
	.byte	0x1b
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x26a
	.byte	0x16
	.4byte	0x25a
	.byte	0xb4
	.byte	0x1b
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x26b
	.byte	0x16
	.4byte	0x25a
	.byte	0xbc
	.byte	0x1b
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x26c
	.byte	0x16
	.4byte	0x25a
	.byte	0xc4
	.byte	0x1b
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x26d
	.byte	0x8
	.4byte	0x69
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0x27a
	.4byte	0x96b
	.byte	0xd
	.4byte	0x70
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0x27a
	.4byte	0x97b
	.byte	0xd
	.4byte	0x70
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0x27a
	.4byte	0x98b
	.byte	0xd
	.4byte	0x70
	.byte	0x17
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x9
	.2byte	0x272
	.byte	0x7
	.4byte	0x9b2
	.byte	0x1b
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x275
	.byte	0x1b
	.4byte	0x9b2
	.byte	0
	.byte	0x1b
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x276
	.byte	0x18
	.4byte	0x9c2
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x462
	.4byte	0x9c2
	.byte	0xd
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x70
	.4byte	0x9d2
	.byte	0xd
	.4byte	0x70
	.byte	0x1d
	.byte	0
	.byte	0x1f
	.byte	0xf0
	.byte	0x9
	.2byte	0x257
	.byte	0x3
	.4byte	0x9f7
	.byte	0x20
	.4byte	.LASF87
	.byte	0x9
	.2byte	0x26e
	.byte	0xb
	.4byte	0x846
	.byte	0x20
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x277
	.byte	0xb
	.4byte	0x98b
	.byte	0
	.byte	0xc
	.4byte	0x27a
	.4byte	0xa07
	.byte	0xd
	.4byte	0x70
	.byte	0x18
	.byte	0
	.byte	0xf
	.4byte	.LASF140
	.byte	0xe
	.byte	0x4
	.4byte	0xa07
	.byte	0x21
	.4byte	0xa1d
	.byte	0x19
	.4byte	0x5c9
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xa12
	.byte	0xe
	.byte	0x4
	.4byte	0x2ec
	.byte	0x21
	.4byte	0xa34
	.byte	0x19
	.4byte	0x69
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xa3a
	.byte	0xe
	.byte	0x4
	.4byte	0xa29
	.byte	0xc
	.4byte	0x7ab
	.4byte	0xa50
	.byte	0xd
	.4byte	0x70
	.byte	0x2
	.byte	0
	.byte	0x22
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x307
	.byte	0x17
	.4byte	0x5c9
	.byte	0x22
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x308
	.byte	0x1d
	.4byte	0x5cf
	.byte	0x23
	.4byte	0x1a3
	.byte	0x1
	.byte	0x9
	.byte	0xb
	.byte	0x5
	.byte	0x3
	.4byte	SYMTABLETOP
	.byte	0x24
	.4byte	.LASF143
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	0x1af
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xade
	.byte	0x25
	.string	"n"
	.byte	0x1
	.byte	0x27
	.byte	0x1a
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x25
	.string	"a"
	.byte	0x1
	.byte	0x27
	.byte	0x29
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x26
	.string	"s"
	.byte	0x1
	.byte	0x29
	.byte	0xc
	.4byte	0x1af
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x26
	.string	"i"
	.byte	0x1
	.byte	0x2b
	.byte	0x7
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x26
	.string	"l"
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF144
	.byte	0x1
	.byte	0x1a
	.byte	0xb
	.4byte	0x1af
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xb13
	.byte	0x25
	.string	"n"
	.byte	0x1
	.byte	0x1a
	.byte	0x1a
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x26
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x28
	.4byte	.LASF145
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xb37
	.byte	0x26
	.string	"i"
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x29
	.4byte	.LASF146
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x25
	.string	"s"
	.byte	0x1
	.byte	0xb
	.byte	0x1a
	.4byte	0x1af
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x17
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
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x16
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
.LASF61:
	.string	"_dso_handle"
.LASF69:
	.string	"_size"
.LASF113:
	.string	"_rand48"
.LASF93:
	.string	"_emergency"
.LASF83:
	.string	"_data"
.LASF133:
	.string	"_wcrtomb_state"
.LASF134:
	.string	"_wcsrtombs_state"
.LASF7:
	.string	"long long unsigned int"
.LASF147:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF73:
	.string	"_lbfsize"
.LASF23:
	.string	"vga_simRes_h160_v120"
.LASF140:
	.string	"__locale_t"
.LASF131:
	.string	"_mbrtowc_state"
.LASF50:
	.string	"__tm_sec"
.LASF12:
	.string	"hSyncEnd"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF79:
	.string	"_ubuf"
.LASF68:
	.string	"_base"
.LASF52:
	.string	"__tm_hour"
.LASF108:
	.string	"__sf"
.LASF59:
	.string	"_on_exit_args"
.LASF21:
	.string	"vga_h640_v480_r60"
.LASF74:
	.string	"_cookie"
.LASF107:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"vSyncStart"
.LASF71:
	.string	"_flags"
.LASF63:
	.string	"_is_cxa"
.LASF89:
	.string	"_stdin"
.LASF109:
	.string	"__FILE"
.LASF81:
	.string	"_blksize"
.LASF25:
	.string	"address"
.LASF103:
	.string	"_cvtbuf"
.LASF82:
	.string	"_offset"
.LASF132:
	.string	"_mbsrtowcs_state"
.LASF130:
	.string	"_mbrlen_state"
.LASF60:
	.string	"_fnargs"
.LASF66:
	.string	"_fns"
.LASF9:
	.string	"__uint32_t"
.LASF47:
	.string	"_sign"
.LASF40:
	.string	"_flock_t"
.LASF91:
	.string	"_stderr"
.LASF44:
	.string	"_Bigint"
.LASF121:
	.string	"_gamma_signgam"
.LASF143:
	.string	"symt_put"
.LASF75:
	.string	"_read"
.LASF99:
	.string	"_result_k"
.LASF49:
	.string	"__tm"
.LASF8:
	.string	"unsigned int"
.LASF36:
	.string	"__wchb"
.LASF90:
	.string	"_stdout"
.LASF102:
	.string	"_cvtlen"
.LASF5:
	.string	"long unsigned int"
.LASF72:
	.string	"_file"
.LASF24:
	.string	"name"
.LASF111:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF105:
	.string	"_atexit0"
.LASF128:
	.string	"_signal_buf"
.LASF119:
	.string	"_asctime_buf"
.LASF17:
	.string	"vColorStart"
.LASF35:
	.string	"__wch"
.LASF30:
	.string	"_LOCK_T"
.LASF34:
	.string	"wint_t"
.LASF84:
	.string	"_lock"
.LASF86:
	.string	"_flags2"
.LASF98:
	.string	"_result"
.LASF145:
	.string	"symt_clear"
.LASF76:
	.string	"_write"
.LASF55:
	.string	"__tm_year"
.LASF137:
	.string	"_nmalloc"
.LASF16:
	.string	"vSyncEnd"
.LASF29:
	.string	"long double"
.LASF27:
	.string	"irqCount"
.LASF136:
	.string	"_nextf"
.LASF146:
	.string	"symt_init"
.LASF54:
	.string	"__tm_mon"
.LASF64:
	.string	"_atexit"
.LASF120:
	.string	"_localtime_buf"
.LASF96:
	.string	"__sdidinit"
.LASF31:
	.string	"_off_t"
.LASF101:
	.string	"_freelist"
.LASF126:
	.string	"_wctomb_state"
.LASF148:
	.string	"symtable.c"
.LASF1:
	.string	"unsigned char"
.LASF104:
	.string	"_new"
.LASF135:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF57:
	.string	"__tm_yday"
.LASF67:
	.string	"__sbuf"
.LASF112:
	.string	"_iobs"
.LASF14:
	.string	"hColorEnd"
.LASF39:
	.string	"_mbstate_t"
.LASF70:
	.string	"__sFILE"
.LASF85:
	.string	"_mbstate"
.LASF122:
	.string	"_rand_next"
.LASF124:
	.string	"_mblen_state"
.LASF92:
	.string	"_inc"
.LASF65:
	.string	"_ind"
.LASF95:
	.string	"_locale"
.LASF97:
	.string	"__cleanup"
.LASF94:
	.string	"_unspecified_locale_info"
.LASF46:
	.string	"_maxwds"
.LASF87:
	.string	"_reent"
.LASF114:
	.string	"_seed"
.LASF37:
	.string	"__count"
.LASF139:
	.string	"__lock"
.LASF10:
	.string	"uint32_t"
.LASF77:
	.string	"_seek"
.LASF141:
	.string	"_impure_ptr"
.LASF11:
	.string	"hSyncStart"
.LASF32:
	.string	"_fpos_t"
.LASF88:
	.string	"_errno"
.LASF41:
	.string	"char"
.LASF51:
	.string	"__tm_min"
.LASF18:
	.string	"vColorEnd"
.LASF26:
	.string	"SYMTABLE"
.LASF62:
	.string	"_fntypes"
.LASF115:
	.string	"_mult"
.LASF45:
	.string	"_next"
.LASF118:
	.string	"_strtok_last"
.LASF38:
	.string	"__value"
.LASF20:
	.string	"vga_h800_v480_r60"
.LASF144:
	.string	"symt_get"
.LASF116:
	.string	"_add"
.LASF42:
	.string	"__ULong"
.LASF129:
	.string	"_getdate_err"
.LASF142:
	.string	"_global_impure_ptr"
.LASF43:
	.string	"_SYMTABLE"
.LASF19:
	.string	"Vga_Timing"
.LASF117:
	.string	"_unused_rand"
.LASF149:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF22:
	.string	"vga_simRes"
.LASF48:
	.string	"_wds"
.LASF56:
	.string	"__tm_wday"
.LASF110:
	.string	"_glue"
.LASF33:
	.string	"_ssize_t"
.LASF127:
	.string	"_l64a_buf"
.LASF106:
	.string	"_sig_func"
.LASF80:
	.string	"_nbuf"
.LASF138:
	.string	"_unused"
.LASF13:
	.string	"hColorStart"
.LASF58:
	.string	"__tm_isdst"
.LASF28:
	.string	"SYMTABLETOP"
.LASF78:
	.string	"_close"
.LASF123:
	.string	"_r48"
.LASF125:
	.string	"_mbtowc_state"
.LASF100:
	.string	"_p5s"
.LASF53:
	.string	"__tm_mday"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
