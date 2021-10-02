	.file	"xprintf.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	xfunc_out,4,4
	.local	outptr
	.comm	outptr,4,4
	.section	.text.xputc,"ax",@progbits
	.align	1
	.globl	xputc
	.type	xputc, @function
xputc:
.LFB0:
	.file 1 "xprintf.c"
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
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 35 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L2
	.loc 1 35 22 discriminator 1
	li	a0,13
	call	xputc
.L2:
	.loc 1 37 6
	lui	a5,%hi(outptr)
	lw	a5,%lo(outptr)(a5)
	.loc 1 37 5
	beqz	a5,.L3
	.loc 1 38 10
	lui	a5,%hi(outptr)
	lw	a5,%lo(outptr)(a5)
	addi	a3,a5,1
	lui	a4,%hi(outptr)
	sw	a3,%lo(outptr)(a4)
	.loc 1 38 13
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	.loc 1 39 3
	j	.L1
.L3:
	.loc 1 41 6
	lui	a5,%hi(xfunc_out)
	lw	a5,%lo(xfunc_out)(a5)
	.loc 1 41 5
	beqz	a5,.L1
	.loc 1 42 3
	lui	a5,%hi(xfunc_out)
	lw	a4,%lo(xfunc_out)(a5)
	lbu	a5,-17(s0)
	mv	a0,a5
	jalr	a4
.LVL0:
.L1:
	.loc 1 44 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	xputc, .-xputc
	.section	.text.xfputc,"ax",@progbits
	.align	1
	.globl	xfputc
	.type	xfputc, @function
xfputc:
.LFB1:
	.loc 1 51 1
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
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 55 5
	lui	a5,%hi(xfunc_out)
	lw	a5,%lo(xfunc_out)(a5)
	sw	a5,-20(s0)
	.loc 1 56 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-36(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 57 2
	lbu	a5,-37(s0)
	mv	a0,a5
	call	xputc
	.loc 1 58 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-20(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 59 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	xfputc, .-xfputc
	.section	.text.xputs,"ax",@progbits
	.align	1
	.globl	xputs
	.type	xputs, @function
xputs:
.LFB2:
	.loc 1 70 1
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
	.loc 1 71 8
	j	.L7
.L8:
	.loc 1 72 13
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 72 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	xputc
.L7:
	.loc 1 71 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 71 8
	bnez	a5,.L8
	.loc 1 74 1
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
	.size	xputs, .-xputs
	.section	.text.xfputs,"ax",@progbits
	.align	1
	.globl	xfputs
	.type	xfputs, @function
xfputs:
.LFB3:
	.loc 1 81 1
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
	.loc 1 85 5
	lui	a5,%hi(xfunc_out)
	lw	a5,%lo(xfunc_out)(a5)
	sw	a5,-20(s0)
	.loc 1 86 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-36(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 87 8
	j	.L10
.L11:
	.loc 1 88 13
	lw	a5,-40(s0)
	addi	a4,a5,1
	sw	a4,-40(s0)
	.loc 1 88 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	xputc
.L10:
	.loc 1 87 9
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 87 8
	bnez	a5,.L11
	.loc 1 90 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-20(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 91 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	xfputs, .-xfputs
	.globl	__umodsi3
	.globl	__udivsi3
	.section	.text.xvprintf,"ax",@progbits
	.align	1
	.type	xvprintf, @function
xvprintf:
.LFB4:
	.loc 1 119 1
	.cfi_startproc
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,112
	.cfi_def_cfa 8, 0
	sw	a0,-100(s0)
	sw	a1,-104(s0)
.L63:
	.loc 1 133 11
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 133 5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	.loc 1 134 6
	lbu	a5,-41(s0)
	beqz	a5,.L64
	.loc 1 135 6
	lbu	a4,-41(s0)
	li	a5,37
	beq	a4,a5,.L15
	.loc 1 136 4
	lbu	a5,-41(s0)
	mv	a0,a5
	call	xputc
	j	.L16
.L15:
	.loc 1 138 9
	sw	zero,-32(s0)
	.loc 1 138 5
	lw	a5,-32(s0)
	sw	a5,-36(s0)
	.loc 1 139 11
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 139 5
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	.loc 1 140 6
	lbu	a4,-41(s0)
	li	a5,48
	bne	a4,a5,.L17
	.loc 1 141 6
	li	a5,1
	sw	a5,-36(s0)
	.loc 1 141 19
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 141 13
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	j	.L18
.L17:
	.loc 1 143 7
	lbu	a4,-41(s0)
	li	a5,45
	bne	a4,a5,.L18
	.loc 1 144 7
	li	a5,2
	sw	a5,-36(s0)
	.loc 1 144 20
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 144 14
	lbu	a5,0(a5)
	sb	a5,-41(s0)
.L18:
	.loc 1 147 6
	lbu	a4,-41(s0)
	li	a5,42
	bne	a4,a5,.L22
	.loc 1 148 6
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
	sw	a5,-40(s0)
	.loc 1 149 7
	lw	a5,-40(s0)
	bgez	a5,.L20
	.loc 1 150 7
	lw	a5,-40(s0)
	neg	a5,a5
	sw	a5,-40(s0)
	.loc 1 151 7
	li	a5,2
	sw	a5,-36(s0)
.L20:
	.loc 1 153 6
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	.loc 1 153 19
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 153 13
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	j	.L21
.L23:
	.loc 1 156 11
	lw	a4,-32(s0)
	mv	a5,a4
	slli	a5,a5,2
	add	a5,a5,a4
	slli	a5,a5,1
	mv	a4,a5
	.loc 1 156 16
	lbu	a5,-41(s0)
	add	a5,a4,a5
	.loc 1 156 7
	addi	a5,a5,-48
	sw	a5,-32(s0)
	.loc 1 157 13
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 157 7
	lbu	a5,0(a5)
	sb	a5,-41(s0)
.L22:
	.loc 1 155 10
	lbu	a4,-41(s0)
	li	a5,47
	bleu	a4,a5,.L21
	.loc 1 155 20 discriminator 1
	lbu	a4,-41(s0)
	li	a5,57
	bleu	a4,a5,.L23
.L21:
	.loc 1 160 6
	lbu	a4,-41(s0)
	li	a5,108
	beq	a4,a5,.L24
	.loc 1 160 16 discriminator 1
	lbu	a4,-41(s0)
	li	a5,76
	bne	a4,a5,.L25
.L24:
	.loc 1 161 6
	lw	a5,-36(s0)
	ori	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 161 20
	lw	a5,-100(s0)
	addi	a4,a5,1
	sw	a4,-100(s0)
	.loc 1 161 14
	lbu	a5,0(a5)
	sb	a5,-41(s0)
.L25:
	.loc 1 168 6
	lbu	a5,-41(s0)
	beqz	a5,.L65
	.loc 1 169 5
	lbu	a5,-41(s0)
	sb	a5,-42(s0)
	.loc 1 170 6
	lbu	a4,-42(s0)
	li	a5,96
	bleu	a4,a5,.L27
	.loc 1 170 19 discriminator 1
	lbu	a5,-42(s0)
	addi	a5,a5,-32
	sb	a5,-42(s0)
.L27:
	.loc 1 171 3
	lbu	a5,-42(s0)
	addi	a5,a5,-66
	li	a4,22
	bgtu	a5,a4,.L28
	slli	a4,a5,2
	lui	a5,%hi(.L30)
	addi	a5,a5,%lo(.L30)
	add	a5,a4,a5
	lw	a5,0(a5)
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L30:
	.word	.L35
	.word	.L34
	.word	.L31
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L33
	.word	.L28
	.word	.L28
	.word	.L28
	.word	.L32
	.word	.L28
	.word	.L31
	.word	.L28
	.word	.L28
	.word	.L29
	.section	.text.xvprintf
.L32:
	.loc 1 173 6
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
	sw	a5,-56(s0)
	.loc 1 174 11
	sw	zero,-28(s0)
	.loc 1 174 4
	j	.L36
.L37:
	.loc 1 174 23 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L36:
	.loc 1 174 17 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 174 4 discriminator 1
	bnez	a5,.L37
	.loc 1 175 10
	j	.L38
.L40:
	.loc 1 175 32 discriminator 3
	li	a0,32
	call	xputc
.L38:
	.loc 1 175 15 discriminator 1
	lw	a5,-36(s0)
	andi	a5,a5,2
	.loc 1 175 10 discriminator 1
	bnez	a5,.L39
	.loc 1 175 24 discriminator 2
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 175 20 discriminator 2
	lw	a4,-32(s0)
	bgtu	a4,a5,.L40
.L39:
	.loc 1 176 4
	lw	a0,-56(s0)
	call	xputs
	.loc 1 177 10
	j	.L41
.L42:
	.loc 1 177 20 discriminator 2
	li	a0,32
	call	xputc
.L41:
	.loc 1 177 12 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 177 10 discriminator 1
	lw	a4,-32(s0)
	bgtu	a4,a5,.L42
	.loc 1 178 4
	j	.L16
.L34:
	.loc 1 180 15
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
	.loc 1 180 4
	andi	a5,a5,0xff
	mv	a0,a5
	call	xputc
	.loc 1 180 31
	j	.L16
.L35:
	.loc 1 182 6
	li	a5,2
	sw	a5,-20(s0)
	.loc 1 182 4
	j	.L43
.L33:
	.loc 1 184 6
	li	a5,8
	sw	a5,-20(s0)
	.loc 1 184 4
	j	.L43
.L31:
	.loc 1 187 6
	li	a5,10
	sw	a5,-20(s0)
	.loc 1 187 4
	j	.L43
.L29:
	.loc 1 189 6
	li	a5,16
	sw	a5,-20(s0)
	.loc 1 189 4
	j	.L43
.L28:
	.loc 1 191 4
	lbu	a5,-41(s0)
	mv	a0,a5
	call	xputc
	j	.L16
.L43:
	.loc 1 206 9
	lw	a5,-36(s0)
	andi	a5,a5,4
	.loc 1 206 6
	beqz	a5,.L44
	.loc 1 207 6
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
	sw	a5,-48(s0)
	j	.L45
.L44:
	.loc 1 209 43
	lbu	a4,-42(s0)
	li	a5,68
	bne	a4,a5,.L46
	.loc 1 209 43 is_stmt 0 discriminator 1
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
	j	.L47
.L46:
	.loc 1 209 51 is_stmt 1 discriminator 2
	lw	a5,-104(s0)
	addi	a4,a5,4
	sw	a4,-104(s0)
	lw	a5,0(a5)
.L47:
	.loc 1 209 6 discriminator 4
	sw	a5,-48(s0)
.L45:
	.loc 1 212 6
	lbu	a4,-42(s0)
	li	a5,68
	bne	a4,a5,.L48
	.loc 1 212 16 discriminator 1
	lw	a5,-48(s0)
	bgez	a5,.L48
	.loc 1 213 6
	lw	a5,-48(s0)
	neg	a5,a5
	sw	a5,-48(s0)
	.loc 1 213 17
	lw	a5,-36(s0)
	ori	a5,a5,16
	sw	a5,-36(s0)
.L48:
	.loc 1 215 5
	sw	zero,-24(s0)
	.loc 1 215 13
	lw	a5,-48(s0)
	sw	a5,-52(s0)
.L53:
	.loc 1 217 18
	lw	a5,-52(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	__umodsi3
.LVL1:
	mv	a5,a0
	.loc 1 217 6
	sb	a5,-42(s0)
	.loc 1 217 27
	lw	a1,-20(s0)
	lw	a0,-52(s0)
	call	__udivsi3
.LVL2:
	mv	a5,a0
	sw	a5,-52(s0)
	.loc 1 218 7
	lbu	a4,-42(s0)
	li	a5,9
	bleu	a4,a5,.L49
	.loc 1 218 17 discriminator 1
	lbu	a4,-41(s0)
	li	a5,120
	bne	a4,a5,.L50
	.loc 1 218 17 is_stmt 0 discriminator 2
	li	a5,39
	j	.L51
.L50:
	.loc 1 218 17 discriminator 3
	li	a5,7
.L51:
	.loc 1 218 17 discriminator 5
	lbu	a4,-42(s0)
	add	a5,a5,a4
	sb	a5,-42(s0)
.L49:
	.loc 1 219 7 is_stmt 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 219 15
	lbu	a4,-42(s0)
	addi	a4,a4,48
	andi	a4,a4,0xff
	.loc 1 219 11
	addi	a3,s0,-16
	add	a5,a3,a5
	sb	a4,-72(a5)
	.loc 1 220 3
	lw	a5,-52(s0)
	beqz	a5,.L52
	.loc 1 220 20 discriminator 1
	lw	a4,-24(s0)
	li	a5,31
	bleu	a4,a5,.L53
.L52:
	.loc 1 221 9
	lw	a5,-36(s0)
	andi	a5,a5,16
	.loc 1 221 6
	beqz	a5,.L54
	.loc 1 221 18 discriminator 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 221 22 discriminator 1
	addi	a4,s0,-16
	add	a5,a4,a5
	li	a4,45
	sb	a4,-72(a5)
.L54:
	.loc 1 222 5
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 222 17
	lw	a5,-36(s0)
	andi	a5,a5,1
	.loc 1 222 12
	beqz	a5,.L55
	.loc 1 222 12 is_stmt 0 discriminator 1
	li	a5,48
	j	.L56
.L55:
	.loc 1 222 12 discriminator 2
	li	a5,32
.L56:
	.loc 1 222 12 discriminator 4
	sb	a5,-42(s0)
	.loc 1 223 9 is_stmt 1 discriminator 4
	j	.L57
.L59:
	.loc 1 223 31 discriminator 3
	lbu	a5,-42(s0)
	mv	a0,a5
	call	xputc
.L57:
	.loc 1 223 14 discriminator 1
	lw	a5,-36(s0)
	andi	a5,a5,2
	.loc 1 223 9 discriminator 1
	bnez	a5,.L60
	.loc 1 223 23 discriminator 2
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 223 19 discriminator 2
	lw	a4,-32(s0)
	bgtu	a4,a5,.L59
.L60:
	.loc 1 224 6 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	addi	a4,s0,-16
	add	a5,a4,a5
	lbu	a5,-72(a5)
	mv	a0,a5
	call	xputc
	.loc 1 224 3 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L60
	.loc 1 225 9
	j	.L61
.L62:
	.loc 1 225 19 discriminator 2
	li	a0,32
	call	xputc
.L61:
	.loc 1 225 11 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 225 9 discriminator 1
	lw	a4,-32(s0)
	bgtu	a4,a5,.L62
.L16:
	.loc 1 133 5
	j	.L63
.L64:
	.loc 1 134 3
	nop
	j	.L14
.L65:
	.loc 1 168 3
	nop
.L14:
	.loc 1 227 1 discriminator 1
	nop
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	addi	sp,sp,112
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	xvprintf, .-xvprintf
	.section	.text.xprintf,"ax",@progbits
	.align	1
	.globl	xprintf
	.type	xprintf, @function
xprintf:
.LFB5:
	.loc 1 234 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,4(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 238 1
	addi	a5,s0,32
	addi	a5,a5,-28
	sw	a5,-20(s0)
	.loc 1 239 2
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	xvprintf
	.loc 1 241 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa 2, 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	xprintf, .-xprintf
	.section	.text.xsprintf,"ax",@progbits
	.align	1
	.globl	xsprintf
	.type	xsprintf, @function
xsprintf:
.LFB6:
	.loc 1 249 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 253 9
	lui	a5,%hi(outptr)
	lw	a4,-36(s0)
	sw	a4,%lo(outptr)(a5)
	.loc 1 255 1
	addi	a5,s0,32
	addi	a5,a5,-24
	sw	a5,-20(s0)
	.loc 1 256 2
	lw	a5,-20(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	xvprintf
	.loc 1 259 2
	lui	a5,%hi(outptr)
	lw	a5,%lo(outptr)(a5)
	.loc 1 259 10
	sb	zero,0(a5)
	.loc 1 260 9
	lui	a5,%hi(outptr)
	sw	zero,%lo(outptr)(a5)
	.loc 1 261 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa 2, 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	xsprintf, .-xsprintf
	.section	.text.xfprintf,"ax",@progbits
	.align	1
	.globl	xfprintf
	.type	xfprintf, @function
xfprintf:
.LFB7:
	.loc 1 269 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	addi	s0,sp,48
	.cfi_def_cfa 8, 32
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,8(s0)
	sw	a3,12(s0)
	sw	a4,16(s0)
	sw	a5,20(s0)
	sw	a6,24(s0)
	sw	a7,28(s0)
	.loc 1 274 5
	lui	a5,%hi(xfunc_out)
	lw	a5,%lo(xfunc_out)(a5)
	sw	a5,-20(s0)
	.loc 1 275 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-36(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 277 1
	addi	a5,s0,32
	addi	a5,a5,-24
	sw	a5,-24(s0)
	.loc 1 278 2
	lw	a5,-24(s0)
	mv	a1,a5
	lw	a0,-40(s0)
	call	xvprintf
	.loc 1 281 12
	lui	a5,%hi(xfunc_out)
	lw	a4,-20(s0)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 1 282 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa 2, 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	xfprintf, .-xfprintf
	.section	.rodata
	.align	2
.LC0:
	.string	"%08lX "
	.align	2
.LC1:
	.string	" %02X"
	.align	2
.LC2:
	.string	" %04X"
	.align	2
.LC3:
	.string	" %08LX"
	.section	.text.put_dump,"ax",@progbits
	.align	1
	.globl	put_dump
	.type	put_dump, @function
put_dump:
.LFB8:
	.loc 1 296 1
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
	sw	a3,-48(s0)
	.loc 1 303 2
	lw	a1,-40(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	xprintf
	lw	a4,-48(s0)
	li	a5,2
	beq	a4,a5,.L70
	lw	a4,-48(s0)
	li	a5,4
	beq	a4,a5,.L71
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L72
	.loc 1 307 6
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	.loc 1 308 10
	sw	zero,-20(s0)
	.loc 1 308 3
	j	.L73
.L74:
	.loc 1 309 23 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 309 4 discriminator 3
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	xprintf
	.loc 1 308 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L73:
	.loc 1 308 3 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L74
	.loc 1 310 3
	li	a0,32
	call	xputc
	.loc 1 311 10
	sw	zero,-20(s0)
	.loc 1 311 3
	j	.L75
.L78:
	.loc 1 312 29
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 312 4
	li	a5,31
	bleu	a4,a5,.L76
	.loc 1 312 45 discriminator 1
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 312 40 discriminator 1
	li	a5,126
	bgtu	a4,a5,.L76
	.loc 1 312 61 discriminator 3
	lw	a5,-20(s0)
	lw	a4,-32(s0)
	add	a5,a4,a5
	.loc 1 312 4 discriminator 3
	lbu	a5,0(a5)
	j	.L77
.L76:
	.loc 1 312 4 is_stmt 0 discriminator 4
	li	a5,46
.L77:
	.loc 1 312 4 discriminator 6
	mv	a0,a5
	call	xputc
	.loc 1 311 25 is_stmt 1 discriminator 6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L75:
	.loc 1 311 3 discriminator 2
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L78
	.loc 1 313 3
	j	.L72
.L70:
	.loc 1 315 6
	lw	a5,-36(s0)
	sw	a5,-24(s0)
.L79:
	.loc 1 317 24 discriminator 1
	lw	a5,-24(s0)
	addi	a4,a5,2
	sw	a4,-24(s0)
	.loc 1 317 21 discriminator 1
	lhu	a5,0(a5)
	.loc 1 317 4 discriminator 1
	mv	a1,a5
	lui	a5,%hi(.LC2)
	addi	a0,a5,%lo(.LC2)
	call	xprintf
	.loc 1 318 3 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L79
	.loc 1 319 3
	j	.L72
.L71:
	.loc 1 321 6
	lw	a5,-36(s0)
	sw	a5,-28(s0)
.L80:
	.loc 1 323 25 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,4
	sw	a4,-28(s0)
	.loc 1 323 4 discriminator 1
	lw	a5,0(a5)
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	xprintf
	.loc 1 324 3 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L80
	.loc 1 325 3
	nop
.L72:
	.loc 1 328 2
	li	a0,10
	call	xputc
	.loc 1 329 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE8:
	.size	put_dump, .-put_dump
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stdarg.h"
	.file 3 "xprintf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x403
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LASF21
	.4byte	.LASF22
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	0x30
	.byte	0x3
	.4byte	0x30
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x5
	.4byte	0x30
	.byte	0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x13
	.byte	0xf
	.4byte	0x48
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x28
	.byte	0x1b
	.4byte	0x5a
	.byte	0x9
	.byte	0x4
	.4byte	.LASF24
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x63
	.byte	0x18
	.4byte	0x4e
	.byte	0xa
	.4byte	0x3c
	.byte	0x1
	.byte	0x1a
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	xfunc_out
	.byte	0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	outptr
	.byte	0x7
	.byte	0x4
	.4byte	0x92
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x5
	.4byte	0x92
	.byte	0xc
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x122
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x131
	.byte	0xd
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x123
	.byte	0xe
	.4byte	0x131
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x124
	.byte	0x10
	.4byte	0x138
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xe
	.string	"len"
	.byte	0x1
	.2byte	0x125
	.byte	0x6
	.4byte	0x144
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xd
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	0x144
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xf
	.string	"i"
	.byte	0x1
	.2byte	0x129
	.byte	0x6
	.4byte	0x144
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xf
	.string	"bp"
	.byte	0x1
	.2byte	0x12a
	.byte	0x17
	.4byte	0x14b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xf
	.string	"sp"
	.byte	0x1
	.2byte	0x12b
	.byte	0x18
	.4byte	0x151
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xf
	.string	"lp"
	.byte	0x1
	.2byte	0x12c
	.byte	0x17
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x137
	.byte	0x10
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	0x138
	.byte	0x11
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x7
	.byte	0x4
	.4byte	0x37
	.byte	0x7
	.byte	0x4
	.4byte	0x15e
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x157
	.byte	0x7
	.byte	0x4
	.4byte	0x13f
	.byte	0xc
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x108
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c3
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x109
	.byte	0x8
	.4byte	0x48
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0xe
	.string	"fmt"
	.byte	0x1
	.2byte	0x10a
	.byte	0xe
	.4byte	0x1c3
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x12
	.byte	0xf
	.string	"arp"
	.byte	0x1
	.2byte	0x10e
	.byte	0xa
	.4byte	0x60
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0xf
	.string	"pf"
	.byte	0x1
	.2byte	0x10f
	.byte	0x9
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x99
	.byte	0x13
	.4byte	.LASF13
	.byte	0x1
	.byte	0xf4
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x210
	.byte	0x14
	.4byte	.LASF4
	.byte	0x1
	.byte	0xf5
	.byte	0x8
	.4byte	0x8c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x15
	.string	"fmt"
	.byte	0x1
	.byte	0xf6
	.byte	0xe
	.4byte	0x1c3
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x12
	.byte	0x16
	.string	"arp"
	.byte	0x1
	.byte	0xfa
	.byte	0xa
	.4byte	0x60
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x13
	.4byte	.LASF14
	.byte	0x1
	.byte	0xe6
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x247
	.byte	0x15
	.string	"fmt"
	.byte	0x1
	.byte	0xe7
	.byte	0xe
	.4byte	0x1c3
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x12
	.byte	0x16
	.string	"arp"
	.byte	0x1
	.byte	0xeb
	.byte	0xa
	.4byte	0x60
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.byte	0x73
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x31c
	.byte	0x15
	.string	"fmt"
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x1c3
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x15
	.string	"arp"
	.byte	0x1
	.byte	0x75
	.byte	0xa
	.4byte	0x60
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x16
	.string	"r"
	.byte	0x1
	.byte	0x78
	.byte	0xf
	.4byte	0x31c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0x78
	.byte	0x12
	.4byte	0x31c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x16
	.string	"j"
	.byte	0x1
	.byte	0x78
	.byte	0x15
	.4byte	0x31c
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x16
	.string	"w"
	.byte	0x1
	.byte	0x78
	.byte	0x18
	.4byte	0x31c
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x16
	.string	"f"
	.byte	0x1
	.byte	0x78
	.byte	0x1b
	.4byte	0x31c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.string	"n"
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.4byte	0x144
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"s"
	.byte	0x1
	.byte	0x7a
	.byte	0x7
	.4byte	0x323
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x16
	.string	"c"
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.byte	0x57
	.byte	0x16
	.string	"d"
	.byte	0x1
	.byte	0x7a
	.byte	0x11
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.byte	0x56
	.byte	0x16
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.byte	0x15
	.4byte	0x8c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x16
	.string	"v"
	.byte	0x1
	.byte	0x7f
	.byte	0x7
	.4byte	0x333
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x16
	.string	"vs"
	.byte	0x1
	.byte	0x80
	.byte	0x10
	.4byte	0x138
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x18
	.4byte	0x92
	.4byte	0x333
	.byte	0x19
	.4byte	0x31c
	.byte	0x1f
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF16
	.byte	0x13
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x37d
	.byte	0x14
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4e
	.byte	0x8
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.string	"str"
	.byte	0x1
	.byte	0x4f
	.byte	0xe
	.4byte	0x1c3
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.string	"pf"
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a3
	.byte	0x15
	.string	"str"
	.byte	0x1
	.byte	0x44
	.byte	0xe
	.4byte	0x1c3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x3e6
	.byte	0x14
	.4byte	.LASF12
	.byte	0x1
	.byte	0x30
	.byte	0x8
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.string	"chr"
	.byte	0x1
	.byte	0x31
	.byte	0x7
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x16
	.string	"pf"
	.byte	0x1
	.byte	0x34
	.byte	0x9
	.4byte	0x48
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1a
	.4byte	.LASF26
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.string	"c"
	.byte	0x1
	.byte	0x21
	.byte	0x12
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.byte	0x6f
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x5
	.byte	0
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0xd
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x18
	.byte	0
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.4byte	0x5c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF22:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF24:
	.string	"__builtin_va_list"
.LASF21:
	.string	"xprintf.c"
.LASF19:
	.string	"xfputc"
.LASF7:
	.string	"outptr"
.LASF0:
	.string	"__gnuc_va_list"
.LASF2:
	.string	"unsigned char"
.LASF17:
	.string	"xfputs"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"addr"
.LASF1:
	.string	"va_list"
.LASF18:
	.string	"xputs"
.LASF4:
	.string	"buff"
.LASF23:
	.string	"xfunc_out"
.LASF11:
	.string	"xfprintf"
.LASF15:
	.string	"unsigned int"
.LASF3:
	.string	"char"
.LASF13:
	.string	"xsprintf"
.LASF12:
	.string	"func"
.LASF10:
	.string	"put_dump"
.LASF14:
	.string	"xprintf"
.LASF6:
	.string	"width"
.LASF16:
	.string	"long int"
.LASF25:
	.string	"xvprintf"
.LASF9:
	.string	"short unsigned int"
.LASF26:
	.string	"xputc"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
