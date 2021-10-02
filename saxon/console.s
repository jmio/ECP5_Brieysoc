	.file	"console.c"
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
	.section	.text.console_clear,"ax",@progbits
	.align	1
	.globl	console_clear
	.type	console_clear, @function
console_clear:
.LFB0:
	.file 1 "console.c"
	.loc 1 11 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 13 8
	sw	zero,-20(s0)
	.loc 1 13 2
	j	.L2
.L3:
	.loc 1 14 36 discriminator 3
	lw	a5,-20(s0)
	slli	a4,a5,2
	li	a5,-268173312
	add	a5,a4,a5
	.loc 1 14 40 discriminator 3
	sw	zero,0(a5)
	.loc 1 13 34 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 13 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,1919
	bleu	a4,a5,.L3
	.loc 1 16 40
	li	a5,-268107776
	addi	a4,a5,132
	.loc 1 16 74
	li	a5,0
	sw	a5,0(a4)
	.loc 1 16 3
	li	a4,-268107776
	addi	a4,a4,128
	.loc 1 16 37
	sw	a5,0(a4)
	.loc 1 17 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	console_clear, .-console_clear
	.section	.text.console_scroll,"ax",@progbits
	.align	1
	.globl	console_scroll
	.type	console_scroll, @function
console_scroll:
.LFB1:
	.loc 1 20 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 22 8
	sw	zero,-24(s0)
	.loc 1 22 2
	j	.L5
.L8:
	.loc 1 23 9
	sw	zero,-20(s0)
	.loc 1 23 3
	j	.L6
.L7:
	.loc 1 24 105 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	.loc 1 24 119 discriminator 3
	slli	a4,a5,7
	lw	a5,-20(s0)
	add	a5,a4,a5
	slli	a4,a5,2
	li	a5,-268173312
	add	a4,a4,a5
	.loc 1 24 40 discriminator 3
	lw	a5,-24(s0)
	.loc 1 24 55 discriminator 3
	slli	a3,a5,7
	lw	a5,-20(s0)
	add	a5,a3,a5
	slli	a3,a5,2
	li	a5,-268173312
	add	a5,a3,a5
	.loc 1 24 65 discriminator 3
	lw	a4,0(a4)
	.loc 1 24 62 discriminator 3
	sw	a4,0(a5)
	.loc 1 23 23 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L6:
	.loc 1 23 3 discriminator 1
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L7
	.loc 1 22 25 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L5:
	.loc 1 22 2 discriminator 1
	lw	a4,-24(s0)
	li	a5,13
	ble	a4,a5,.L8
	.loc 1 28 4
	li	a5,14
	sw	a5,-24(s0)
	.loc 1 29 8
	sw	zero,-20(s0)
	.loc 1 29 2
	j	.L9
.L10:
	.loc 1 30 39 discriminator 3
	lw	a5,-24(s0)
	.loc 1 30 54 discriminator 3
	slli	a4,a5,7
	lw	a5,-20(s0)
	add	a5,a4,a5
	slli	a4,a5,2
	li	a5,-268173312
	add	a5,a4,a5
	.loc 1 30 61 discriminator 3
	sw	zero,0(a5)
	.loc 1 29 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L9:
	.loc 1 29 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L10
	.loc 1 32 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	console_scroll, .-console_scroll
	.globl	escape_seq
	.section	.sbss,"aw",@nobits
	.align	2
	.type	escape_seq, @object
	.size	escape_seq, 4
escape_seq:
	.zero	4
	.globl	escape_digit
	.align	2
	.type	escape_digit, @object
	.size	escape_digit, 4
escape_digit:
	.zero	4
	.section	.text.debugout,"ax",@progbits
	.align	1
	.type	debugout, @function
debugout:
.LFB2:
	.loc 1 41 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 42 42
	li	a5,-268107776
	addi	a5,a5,132
	lw	a5,0(a5)
	.loc 1 42 86
	slli	a3,a5,7
	.loc 1 42 89
	li	a5,-268107776
	addi	a4,a5,128
	lw	a5,0(a4)
	.loc 1 42 86
	addi	a2,a5,1
	sw	a2,0(a4)
	add	a5,a3,a5
	slli	a4,a5,2
	li	a5,-268173312
	add	a5,a4,a5
	.loc 1 42 128
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 1 43 7
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 43 5
	li	a5,99
	bleu	a4,a5,.L13
	.loc 1 44 38
	li	a5,-268107776
	addi	a5,a5,132
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,132
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 45 4
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 45 38
	sw	zero,0(a5)
.L13:
	.loc 1 47 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	debugout, .-debugout
	.globl	HEXA
	.data
	.align	2
	.type	HEXA, @object
	.size	HEXA, 17
HEXA:
	.string	"0123456789ABCDEF"
	.section	.text.debugouthex2,"ax",@progbits
	.align	1
	.type	debugouthex2, @function
debugouthex2:
.LFB3:
	.loc 1 53 1
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
	.loc 1 54 2
	li	a0,91
	call	debugout
	.loc 1 55 27
	lbu	a5,-17(s0)
	srli	a5,a5,4
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 55 15
	lui	a5,%hi(HEXA)
	addi	a5,a5,%lo(HEXA)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 55 2
	mv	a0,a5
	call	debugout
	.loc 1 56 19
	lbu	a5,-17(s0)
	andi	a4,a5,15
	.loc 1 56 15
	lui	a5,%hi(HEXA)
	addi	a5,a5,%lo(HEXA)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 56 2
	mv	a0,a5
	call	debugout
	.loc 1 57 2
	li	a0,93
	call	debugout
	.loc 1 58 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	debugouthex2, .-debugouthex2
	.section	.text.console_putc,"ax",@progbits
	.align	1
	.globl	console_putc
	.type	console_putc, @function
console_putc:
.LFB4:
	.loc 1 62 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 63 2
	lui	a5,%hi(escape_seq)
	lw	a5,%lo(escape_seq)(a5)
	li	a4,1
	beq	a5,a4,.L16
	li	a4,2
	beq	a5,a4,.L17
	j	.L40
.L16:
	.loc 1 66 9
	lbu	a5,-33(s0)
	li	a4,79
	beq	a5,a4,.L19
	li	a4,91
	bne	a5,a4,.L20
	.loc 1 68 28
	lui	a5,%hi(escape_seq)
	li	a4,2
	sw	a4,%lo(escape_seq)(a5)
	.loc 1 69 17
	j	.L21
.L19:
	.loc 1 71 28
	lui	a5,%hi(escape_seq)
	li	a4,4
	sw	a4,%lo(escape_seq)(a5)
	.loc 1 72 17
	j	.L21
.L20:
	.loc 1 74 28
	lui	a5,%hi(escape_seq)
	sw	zero,%lo(escape_seq)(a5)
	.loc 1 75 17
	nop
.L21:
	.loc 1 77 3
	j	.L22
.L17:
	.loc 1 79 20
	lui	a5,%hi(escape_seq)
	sw	zero,%lo(escape_seq)(a5)
	.loc 1 80 12
	lbu	a4,-33(s0)
	li	a5,47
	bleu	a4,a5,.L23
	.loc 1 80 22 discriminator 1
	lbu	a4,-33(s0)
	li	a5,57
	bgtu	a4,a5,.L23
	.loc 1 81 38
	lui	a5,%hi(escape_digit)
	lw	a4,%lo(escape_digit)(a5)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 1 81 43
	lbu	a5,-33(s0)
	add	a5,a4,a5
	addi	a4,a5,-48
	.loc 1 81 23
	lui	a5,%hi(escape_digit)
	sw	a4,%lo(escape_digit)(a5)
	.loc 1 82 24
	lui	a5,%hi(escape_seq)
	li	a4,2
	sw	a4,%lo(escape_seq)(a5)
	.loc 1 119 3
	j	.L41
.L23:
	.loc 1 84 16
	lbu	a4,-33(s0)
	li	a5,65
	beq	a4,a5,.L41
	.loc 1 86 23
	lbu	a4,-33(s0)
	li	a5,66
	beq	a4,a5,.L41
	.loc 1 88 23
	lbu	a4,-33(s0)
	li	a5,67
	beq	a4,a5,.L41
	.loc 1 90 23
	lbu	a4,-33(s0)
	li	a5,68
	bne	a4,a5,.L25
	.loc 1 92 31
	lui	a5,%hi(escape_digit)
	lw	a5,%lo(escape_digit)(a5)
	.loc 1 92 17
	bnez	a5,.L26
	.loc 1 93 44
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 93 7
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 93 78
	addi	a4,a4,-1
	.loc 1 93 41
	sw	a4,0(a5)
	.loc 1 119 3
	j	.L41
.L26:
	.loc 1 95 11
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 95 45
	lui	a5,%hi(escape_digit)
	lw	a5,%lo(escape_digit)(a5)
	.loc 1 95 9
	bleu	a4,a5,.L28
	.loc 1 96 45
	li	a5,-268107776
	addi	a5,a5,128
	lw	a3,0(a5)
	.loc 1 96 79
	lui	a5,%hi(escape_digit)
	lw	a4,%lo(escape_digit)(a5)
	.loc 1 96 8
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 96 79
	sub	a4,a3,a4
	.loc 1 96 42
	sw	a4,0(a5)
	.loc 1 119 3
	j	.L41
.L28:
	.loc 1 98 17
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 98 51
	sw	zero,0(a5)
	.loc 1 119 3
	j	.L41
.L25:
	.loc 1 101 23
	lbu	a4,-33(s0)
	li	a5,72
	beq	a4,a5,.L41
	.loc 1 103 23
	lbu	a4,-33(s0)
	li	a5,70
	beq	a4,a5,.L41
	.loc 1 105 23
	lbu	a4,-33(s0)
	li	a5,75
	bne	a4,a5,.L29
.LBB2:
	.loc 1 108 13
	li	a5,-268107776
	addi	a5,a5,128
	lw	a5,0(a5)
	.loc 1 108 11
	sw	a5,-20(s0)
	.loc 1 108 5
	j	.L30
.L31:
	.loc 1 109 46 discriminator 3
	li	a5,-268107776
	addi	a5,a5,132
	lw	a5,0(a5)
	.loc 1 109 90 discriminator 3
	slli	a4,a5,7
	lw	a5,-20(s0)
	add	a5,a4,a5
	slli	a4,a5,2
	li	a5,-268173312
	add	a5,a4,a5
	.loc 1 109 97 discriminator 3
	sw	zero,0(a5)
	.loc 1 108 58 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L30:
	.loc 1 108 5 discriminator 1
	lw	a4,-20(s0)
	li	a5,99
	ble	a4,a5,.L31
.LBE2:
	.loc 1 119 3
	j	.L41
.L29:
	.loc 1 113 11
	li	a0,42
	call	debugout
	.loc 1 114 11
	li	a0,69
	call	debugout
	.loc 1 115 11
	li	a0,91
	call	debugout
	.loc 1 116 5
	lbu	a5,-33(s0)
	mv	a0,a5
	call	debugouthex2
	.loc 1 119 3
	j	.L41
.L40:
	.loc 1 122 6
	lbu	a4,-33(s0)
	li	a5,10
	bne	a4,a5,.L32
	.loc 1 123 39
	li	a5,-268107776
	addi	a5,a5,132
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,132
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 141 3
	j	.L42
.L32:
	.loc 1 124 13
	lbu	a4,-33(s0)
	li	a5,13
	bne	a4,a5,.L34
	.loc 1 125 5
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 125 39
	sw	zero,0(a5)
	.loc 1 141 3
	j	.L42
.L34:
	.loc 1 126 13
	lbu	a4,-33(s0)
	li	a5,8
	bne	a4,a5,.L35
	.loc 1 127 9
	li	a5,-268107776
	addi	a5,a5,128
	lw	a5,0(a5)
	.loc 1 127 7
	beqz	a5,.L42
	.loc 1 127 45 discriminator 1
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 127 78 discriminator 1
	addi	a4,a4,-1
	sw	a4,0(a5)
	.loc 1 141 3 discriminator 1
	j	.L42
.L35:
	.loc 1 128 13
	lbu	a4,-33(s0)
	li	a5,27
	bne	a4,a5,.L37
	.loc 1 129 17
	lui	a5,%hi(escape_digit)
	sw	zero,%lo(escape_digit)(a5)
	.loc 1 130 15
	lui	a5,%hi(escape_seq)
	li	a4,1
	sw	a4,%lo(escape_seq)(a5)
	.loc 1 141 3
	j	.L42
.L37:
	.loc 1 131 13
	lbu	a4,-33(s0)
	li	a5,31
	bgtu	a4,a5,.L38
	.loc 1 132 4
	lbu	a5,-33(s0)
	mv	a0,a5
	call	debugouthex2
	.loc 1 141 3
	j	.L42
.L38:
	.loc 1 134 44
	li	a5,-268107776
	addi	a5,a5,132
	lw	a5,0(a5)
	.loc 1 134 88
	slli	a4,a5,7
	li	a5,-268107776
	addi	a5,a5,128
	lw	a5,0(a5)
	add	a5,a4,a5
	slli	a4,a5,2
	li	a5,-268173312
	add	a5,a4,a5
	.loc 1 134 128
	lbu	a4,-33(s0)
	sw	a4,0(a5)
	.loc 1 135 5
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 135 38
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 136 9
	li	a5,-268107776
	addi	a5,a5,128
	lw	a4,0(a5)
	.loc 1 136 7
	li	a5,99
	bleu	a4,a5,.L42
	.loc 1 137 40
	li	a5,-268107776
	addi	a5,a5,132
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,132
	addi	a4,a4,1
	sw	a4,0(a5)
	.loc 1 138 6
	li	a5,-268107776
	addi	a5,a5,128
	.loc 1 138 40
	sw	zero,0(a5)
	.loc 1 141 3
	j	.L42
.L41:
	.loc 1 119 3
	nop
	j	.L22
.L42:
	.loc 1 141 3
	nop
.L22:
	.loc 1 144 7
	li	a5,-268107776
	addi	a5,a5,132
	lw	a4,0(a5)
	.loc 1 144 5
	li	a5,14
	bleu	a4,a5,.L43
	.loc 1 145 3
	call	console_scroll
	.loc 1 146 4
	li	a5,-268107776
	addi	a5,a5,132
	lw	a4,0(a5)
	.loc 1 146 37
	addi	a4,a4,-1
	sw	a4,0(a5)
.L43:
	.loc 1 148 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	console_putc, .-console_putc
	.section	.text.console_puts,"ax",@progbits
	.align	1
	.globl	console_puts
	.type	console_puts, @function
console_puts:
.LFB5:
	.loc 1 152 1
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
	.loc 1 154 8
	sw	zero,-20(s0)
	.loc 1 154 2
	j	.L45
.L48:
	.loc 1 155 7
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 155 6
	beqz	a5,.L49
	.loc 1 156 3 discriminator 2
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	mv	a0,a5
	call	console_putc
	.loc 1 154 20 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 154 24 discriminator 2
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L45:
	.loc 1 154 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,255
	ble	a4,a5,.L48
	j	.L44
.L49:
	.loc 1 155 19
	nop
.L44:
	.loc 1 158 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	console_puts, .-console_puts
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2e1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.4byte	.LASF29
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0x83
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	0x18c
	.byte	0xc
	.4byte	.LASF24
	.byte	0
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc
	.4byte	.LASF26
	.byte	0x2
	.byte	0xc
	.4byte	.LASF27
	.byte	0x3
	.byte	0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x23
	.byte	0x5
	.4byte	0x69
	.byte	0x5
	.byte	0x3
	.4byte	escape_seq
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x24
	.byte	0xa
	.4byte	0x77
	.byte	0x5
	.byte	0x3
	.4byte	escape_digit
	.byte	0xe
	.4byte	0x1c0
	.4byte	0x1c0
	.byte	0xf
	.4byte	0x70
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF32
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	0x1b0
	.byte	0x5
	.byte	0x3
	.4byte	HEXA
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x20a
	.byte	0x11
	.string	"c"
	.byte	0x1
	.byte	0x97
	.byte	0x22
	.4byte	0x20a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.string	"i"
	.byte	0x1
	.byte	0x99
	.byte	0x6
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x24b
	.byte	0x11
	.string	"c"
	.byte	0x1
	.byte	0x3d
	.byte	0x21
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x12
	.string	"i"
	.byte	0x1
	.byte	0x6b
	.byte	0x12
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF36
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x26f
	.byte	0x11
	.string	"c"
	.byte	0x1
	.byte	0x34
	.byte	0x21
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x16
	.4byte	.LASF37
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x293
	.byte	0x11
	.string	"c"
	.byte	0x1
	.byte	0x28
	.byte	0x1d
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x17
	.4byte	.LASF41
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c4
	.byte	0x12
	.string	"x"
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.string	"y"
	.byte	0x1
	.byte	0x15
	.byte	0x8
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.string	"x"
	.byte	0x1
	.byte	0xc
	.byte	0xb
	.4byte	0x77
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
	.byte	0x4
	.byte	0x1
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x1
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
	.byte	0x16
	.byte	0x2e
	.byte	0x1
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
	.byte	0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"ESEQ_ESC_BRACKET"
.LASF36:
	.string	"debugouthex2"
.LASF15:
	.string	"vSyncStart"
.LASF17:
	.string	"vColorStart"
.LASF34:
	.string	"console_puts"
.LASF28:
	.string	"ESEQ_ESC_O"
.LASF22:
	.string	"vga_simRes"
.LASF14:
	.string	"hColorEnd"
.LASF2:
	.string	"short int"
.LASF40:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF9:
	.string	"__uint32_t"
.LASF38:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF37:
	.string	"debugout"
.LASF6:
	.string	"long long int"
.LASF41:
	.string	"console_scroll"
.LASF33:
	.string	"HEXA"
.LASF4:
	.string	"long int"
.LASF31:
	.string	"escape_digit"
.LASF13:
	.string	"hColorStart"
.LASF11:
	.string	"hSyncStart"
.LASF16:
	.string	"vSyncEnd"
.LASF27:
	.string	"ESEQ_ESC_BRACKET_DIGIT"
.LASF19:
	.string	"Vga_Timing"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"vga_h800_v480_r60"
.LASF42:
	.string	"console_clear"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF12:
	.string	"hSyncEnd"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"vga_simRes_h160_v120"
.LASF21:
	.string	"vga_h640_v480_r60"
.LASF18:
	.string	"vColorEnd"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"console.c"
.LASF32:
	.string	"char"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"irqCount"
.LASF25:
	.string	"ESEQ_ESC"
.LASF30:
	.string	"escape_seq"
.LASF35:
	.string	"console_putc"
.LASF24:
	.string	"ESEQ_NONE"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
