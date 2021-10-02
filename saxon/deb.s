	.file	"deb.c"
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
	.section	.text.getcon,"ax",@progbits
	.align	1
	.globl	getcon
	.type	getcon, @function
getcon:
.LFB0:
	.file 1 "deb.c"
	.loc 1 14 15
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 16 8
	nop
.L2:
	.loc 1 16 14 discriminator 1
	li	a0,-268369920
	call	uart_read
	sw	a0,-20(s0)
	.loc 1 16 8 discriminator 1
	lw	a5,-20(s0)
	bltz	a5,.L2
	.loc 1 18 9
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 19 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	getcon, .-getcon
	.section	.text.consts,"ax",@progbits
	.align	1
	.globl	consts
	.type	consts, @function
consts:
.LFB1:
	.loc 1 22 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 23 10
	li	a0,-268369920
	call	uart_readOccupancy
	mv	a5,a0
	.loc 1 24 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	consts, .-consts
	.comm	col,4,4
	.comm	line,80,4
	.comm	lp,4,4
	.comm	datap,4,4
	.comm	codep,4,4
	.section	.text.putch,"ax",@progbits
	.align	1
	.globl	putch
	.type	putch, @function
putch:
.LFB2:
	.loc 1 31 1
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
	.loc 1 32 5
	lbu	a4,-17(s0)
	li	a5,13
	bne	a4,a5,.L7
	.loc 1 33 7
	lui	a5,%hi(col)
	sw	zero,%lo(col)(a5)
.L7:
	.loc 1 34 5
	lbu	a4,-17(s0)
	li	a5,31
	bleu	a4,a5,.L8
	.loc 1 35 6
	lui	a5,%hi(col)
	lw	a5,%lo(col)(a5)
	addi	a4,a5,1
	lui	a5,%hi(col)
	sw	a4,%lo(col)(a5)
.L8:
	.loc 1 36 2
	lbu	a5,-17(s0)
	mv	a0,a5
	call	putcon
	.loc 1 37 1
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
	.size	putch, .-putch
	.section	.text.putcrlf,"ax",@progbits
	.align	1
	.globl	putcrlf
	.type	putcrlf, @function
putcrlf:
.LFB3:
	.loc 1 42 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 43 2
	li	a0,13
	call	putch
	.loc 1 44 2
	li	a0,10
	call	putch
	.loc 1 45 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	putcrlf, .-putcrlf
	.section	.text.putback,"ax",@progbits
	.align	1
	.globl	putback
	.type	putback, @function
putback:
.LFB4:
	.loc 1 48 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 49 2
	li	a0,8
	call	putch
	.loc 1 49 15
	li	a0,32
	call	putch
	.loc 1 49 27
	li	a0,8
	call	putch
	.loc 1 50 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	putback, .-putback
	.section	.text._error,"ax",@progbits
	.align	1
	.globl	_error
	.type	_error, @function
_error:
.LFB5:
	.loc 1 54 15
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 54 19
	call	putcrlf
	.loc 1 54 30
	li	a0,63
	call	putch
	.loc 1 54 42
	nop
	.loc 1 54 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	_error, .-_error
	.section	.text.getline,"ax",@progbits
	.align	1
	.globl	getline
	.type	getline, @function
getline:
.LFB6:
	.loc 1 57 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 61 9
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 1 61 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-20(s0)
	.loc 1 62 5
	sw	zero,-24(s0)
.L26:
	.loc 1 64 15
	call	getcon
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 1 64 13
	lbu	a5,-25(s0)
	li	a4,10
	beq	a5,a4,.L14
	li	a4,10
	bgt	a5,a4,.L15
	li	a4,8
	beq	a5,a4,.L16
	j	.L17
.L15:
	li	a4,13
	beq	a5,a4,.L14
	li	a4,24
	beq	a5,a4,.L18
	j	.L17
.L16:
	.loc 1 66 7
	lw	a5,-24(s0)
	beqz	a5,.L28
	.loc 1 67 6
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 68 7
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 1 69 5
	call	putback
	.loc 1 71 4
	j	.L28
.L14:
	.loc 1 73 7
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 1 75 4
	j	.L27
.L18:
	.loc 1 77 6
	lui	a5,%hi(line)
	addi	a5,a5,%lo(line)
	sw	a5,-20(s0)
	.loc 1 78 4
	j	.L22
.L23:
	.loc 1 79 5 discriminator 2
	call	putback
	.loc 1 78 22 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L22:
	.loc 1 78 4 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L23
	.loc 1 80 4
	j	.L20
.L17:
	.loc 1 82 7
	lbu	a4,-25(s0)
	li	a5,31
	bleu	a4,a5,.L26
.LBB2:
	.loc 1 83 13
	lbu	a5,-25(s0)
	sb	a5,-26(s0)
	.loc 1 83 19
	call	__locale_ctype_ptr
	mv	a4,a0
	.loc 1 83 59
	lbu	a5,-26(s0)
	.loc 1 83 58
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 83 71
	andi	a4,a5,3
	.loc 1 83 110
	li	a5,2
	bne	a4,a5,.L24
	.loc 1 83 88 discriminator 1
	lbu	a5,-26(s0)
	.loc 1 83 110 discriminator 1
	addi	a4,a5,-32
	j	.L25
.L24:
	.loc 1 83 110 is_stmt 0 discriminator 2
	lbu	a4,-26(s0)
.L25:
.LBE2:
	.loc 1 83 7 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 83 10 discriminator 4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 84 7 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 85 5 discriminator 4
	lbu	a5,-25(s0)
	mv	a0,a5
	call	putch
	j	.L26
.L28:
	.loc 1 71 4
	nop
.L20:
	.loc 1 64 3 discriminator 1
	j	.L26
.L27:
	.loc 1 89 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	getline, .-getline
	.section	.text.inhex,"ax",@progbits
	.align	1
	.globl	inhex
	.type	inhex, @function
inhex:
.LFB7:
	.loc 1 92 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 93 4
	lbu	a5,-17(s0)
	addi	a5,a5,-48
	sb	a5,-17(s0)
	.loc 1 94 5
	lbu	a4,-17(s0)
	li	a5,9
	bgtu	a4,a5,.L30
	.loc 1 94 21 discriminator 1
	lbu	a5,-17(s0)
	j	.L31
.L30:
	.loc 1 95 4
	lbu	a5,-17(s0)
	addi	a5,a5,-7
	sb	a5,-17(s0)
	.loc 1 96 5
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L32
	.loc 1 96 16 discriminator 1
	lbu	a4,-17(s0)
	li	a5,15
	bgtu	a4,a5,.L32
	.loc 1 96 37 discriminator 2
	lbu	a5,-17(s0)
	j	.L31
.L32:
	.loc 1 97 9
	li	a5,-1
.L31:
	.loc 1 98 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	inhex, .-inhex
	.section	.text.gethex,"ax",@progbits
	.align	1
	.globl	gethex
	.type	gethex, @function
gethex:
.LFB8:
	.loc 1 101 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 105 4
	sw	zero,-20(s0)
	.loc 1 106 2
	j	.L34
.L35:
	.loc 1 107 9 discriminator 2
	lw	a5,-20(s0)
	slli	a4,a5,4
	.loc 1 107 14 discriminator 2
	lw	a5,-24(s0)
	.loc 1 107 5 discriminator 2
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 106 35 discriminator 2
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a4,a5,1
	lui	a5,%hi(lp)
	sw	a4,%lo(lp)(a5)
.L34:
	.loc 1 106 14 discriminator 1
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	sw	a0,-24(s0)
	.loc 1 106 2 discriminator 1
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L35
	.loc 1 108 9
	lw	a5,-20(s0)
	.loc 1 109 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE8:
	.size	gethex, .-gethex
	.section	.text.getdata,"ax",@progbits
	.align	1
	.globl	getdata
	.type	getdata, @function
getdata:
.LFB9:
	.loc 1 114 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 115 6
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	mv	a4,a0
	.loc 1 115 5
	li	a5,-1
	bne	a4,a5,.L38
	.loc 1 116 10
	li	a5,0
	j	.L39
.L38:
	.loc 1 117 10
	call	gethex
	mv	a5,a0
.L39:
	.loc 1 118 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	getdata, .-getdata
	.section	.text.ogetdata,"ax",@progbits
	.align	1
	.globl	ogetdata
	.type	ogetdata, @function
ogetdata:
.LFB10:
	.loc 1 123 1
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
	.loc 1 124 9
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	beqz	a5,.L41
	li	a4,44
	bne	a5,a4,.L42
.L41:
	.loc 1 127 10
	lw	a5,-20(s0)
	j	.L43
.L42:
	.loc 1 129 11
	call	getdata
	mv	a5,a0
.L43:
	.loc 1 131 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE10:
	.size	ogetdata, .-ogetdata
	.section	.text.puthex,"ax",@progbits
	.align	1
	.globl	puthex
	.type	puthex, @function
puthex:
.LFB11:
	.loc 1 142 1
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
	.loc 1 143 2
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L45
	.loc 1 143 19 discriminator 1
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 143 2 discriminator 1
	addi	a5,a5,48
	andi	a5,a5,0xff
	j	.L46
.L45:
	.loc 1 143 35 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 1 143 2 discriminator 2
	addi	a5,a5,55
	andi	a5,a5,0xff
.L46:
	.loc 1 143 2 is_stmt 0 discriminator 4
	mv	a0,a5
	call	putch
	.loc 1 144 1 is_stmt 1 discriminator 4
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE11:
	.size	puthex, .-puthex
	.section	.text.puthxb,"ax",@progbits
	.align	1
	.globl	puthxb
	.type	puthxb, @function
puthxb:
.LFB12:
	.loc 1 147 1
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
	.loc 1 148 12
	lw	a5,-20(s0)
	srli	a5,a5,4
	.loc 1 148 2
	andi	a5,a5,15
	mv	a0,a5
	call	puthex
	.loc 1 149 2
	lw	a5,-20(s0)
	andi	a5,a5,15
	mv	a0,a5
	call	puthex
	.loc 1 150 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE12:
	.size	puthxb, .-puthxb
	.section	.text.puthxw,"ax",@progbits
	.align	1
	.globl	puthxw
	.type	puthxw, @function
puthxw:
.LFB13:
	.loc 1 153 1
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
	.loc 1 154 12
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 1 154 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 1 155 2
	lw	a5,-20(s0)
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 1 156 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE13:
	.size	puthxw, .-puthxw
	.section	.text.puthxww,"ax",@progbits
	.align	1
	.globl	puthxww
	.type	puthxww, @function
puthxww:
.LFB14:
	.loc 1 159 1
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
	.loc 1 160 12
	lw	a5,-20(s0)
	srli	a5,a5,24
	.loc 1 160 2
	mv	a0,a5
	call	puthxb
	.loc 1 161 12
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 1 161 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 1 162 12
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 1 162 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 1 163 2
	lw	a5,-20(s0)
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 1 164 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE14:
	.size	puthxww, .-puthxww
	.section	.text.comma,"ax",@progbits
	.align	1
	.globl	comma
	.type	comma, @function
comma:
.LFB15:
	.loc 1 167 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 168 8
	nop
.L52:
	.loc 1 168 9 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 168 8 discriminator 2
	beqz	a5,.L51
	.loc 1 168 17 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 168 15 discriminator 1
	lbu	a4,0(a5)
	.loc 1 168 12 discriminator 1
	li	a5,44
	bne	a4,a5,.L52
.L51:
	.loc 1 170 9
	lw	a5,-20(s0)
	.loc 1 171 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15:
	.size	comma, .-comma
	.section	.text.xdump,"ax",@progbits
	.align	1
	.globl	xdump
	.type	xdump, @function
xdump:
.LFB16:
	.loc 1 174 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 179 18
	lui	a5,%hi(datap)
	lw	a5,%lo(datap)(a5)
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 1 179 7
	sw	a5,-28(s0)
	.loc 1 180 8
	lw	a5,-28(s0)
	.loc 1 180 24
	srli	a5,a5,28
	.loc 1 180 5
	bnez	a5,.L55
	.loc 1 181 19
	lw	a4,-28(s0)
	.loc 1 181 34
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 1 181 8
	sw	a5,-28(s0)
.L55:
	.loc 1 183 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 1 183 7
	beqz	a5,.L56
	.loc 1 183 26 discriminator 1
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 1 183 23 discriminator 1
	lbu	a4,0(a5)
	.loc 1 183 20 discriminator 1
	li	a5,44
	bne	a4,a5,.L68
.L56:
	.loc 1 184 25
	lw	a5,-28(s0)
	.loc 1 184 16
	addi	a5,a5,127
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 1 184 5
	sw	a5,-32(s0)
	.loc 1 185 8
	lw	a5,-32(s0)
	.loc 1 185 22
	srli	a5,a5,28
	.loc 1 185 5
	bnez	a5,.L58
	.loc 1 186 17
	lw	a4,-32(s0)
	.loc 1 186 30
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 1 186 6
	sw	a5,-32(s0)
.L58:
	.loc 1 188 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 1 188 7
	bnez	a5,.L69
	.loc 1 189 9
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 1 189 2
	j	.L60
.L67:
	.loc 1 190 9
	call	consts
	mv	a5,a0
	.loc 1 190 8
	beqz	a5,.L61
	.loc 1 190 21 discriminator 1
	call	getcon
	.loc 1 190 31 discriminator 1
	j	.L54
.L61:
	.loc 1 191 3
	call	putcrlf
	.loc 1 192 3
	lw	a5,-20(s0)
	mv	a0,a5
	call	puthxww
	.loc 1 193 3
	li	a0,58
	call	putch
	.loc 1 194 3
	li	a0,32
	call	putch
	.loc 1 195 5
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 195 13
	li	a5,16
	sw	a5,-36(s0)
.L62:
	.loc 1 197 13 discriminator 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 197 11 discriminator 1
	lbu	a5,0(a5)
	.loc 1 197 4 discriminator 1
	mv	a0,a5
	call	puthxb
	.loc 1 198 4 discriminator 1
	li	a0,32
	call	putch
	.loc 1 199 3 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L62
	.loc 1 200 3
	li	a0,32
	call	putch
	.loc 1 201 3
	li	a0,32
	call	putch
	.loc 1 202 5
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 1 202 13
	li	a5,16
	sw	a5,-36(s0)
.L65:
	.loc 1 204 18
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 204 4
	li	a5,31
	bleu	a4,a5,.L63
	.loc 1 204 24 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 204 21 discriminator 1
	li	a5,126
	bgtu	a4,a5,.L63
	.loc 1 204 4 discriminator 3
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	j	.L64
.L63:
	.loc 1 204 4 is_stmt 0 discriminator 4
	li	a5,46
.L64:
	.loc 1 204 4 discriminator 6
	mv	a0,a5
	call	putch
	.loc 1 205 5 is_stmt 1 discriminator 6
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 206 3 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L65
	.loc 1 189 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L60:
	.loc 1 189 2 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L66
	.loc 1 189 27 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L67
.L66:
	.loc 1 208 8
	lui	a5,%hi(datap)
	lw	a4,-20(s0)
	sw	a4,%lo(datap)(a5)
	j	.L54
.L68:
	.loc 1 183 37
	nop
	j	.L54
.L69:
	.loc 1 188 21
	nop
.L54:
	.loc 1 209 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE16:
	.size	xdump, .-xdump
	.section	.text.xsubst,"ax",@progbits
	.align	1
	.globl	xsubst
	.type	xsubst, @function
xsubst:
.LFB17:
	.loc 1 212 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 215 15
	lui	a5,%hi(datap)
	lw	a5,%lo(datap)(a5)
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 1 215 4
	sw	a5,-20(s0)
	.loc 1 216 8
	lw	a5,-20(s0)
	.loc 1 216 21
	srli	a5,a5,28
	.loc 1 216 5
	bnez	a5,.L71
	.loc 1 217 19
	lw	a4,-20(s0)
	.loc 1 217 31
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 1 217 5
	sw	a5,-20(s0)
.L71:
	.loc 1 220 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 1 220 7
	bnez	a5,.L80
.L72:
	.loc 1 223 3
	call	putcrlf
	.loc 1 224 3
	lw	a5,-20(s0)
	mv	a0,a5
	call	puthxww
	.loc 1 225 3
	li	a0,32
	call	putch
	.loc 1 226 3
	li	a0,32
	call	putch
	.loc 1 227 10
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 227 3
	mv	a0,a5
	call	puthxb
	.loc 1 228 3
	li	a0,32
	call	putch
	.loc 1 229 3
	call	getline
	.loc 1 230 15
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	li	a4,46
	beq	a5,a4,.L81
	li	a4,94
	beq	a5,a4,.L75
	beqz	a5,.L76
	j	.L79
.L75:
	.loc 1 234 5
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 1 235 4
	j	.L78
.L76:
	.loc 1 237 5
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 1 238 4
	j	.L78
.L79:
	.loc 1 240 11
	call	getdata
	mv	a3,a0
	.loc 1 240 6
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 240 9
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 241 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 1 241 9
	bnez	a5,.L82
.L78:
	.loc 1 223 3
	j	.L72
.L80:
	.loc 1 220 21
	nop
	j	.L70
.L81:
	.loc 1 232 4
	nop
	j	.L70
.L82:
	.loc 1 241 23
	nop
.L70:
	.loc 1 244 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE17:
	.size	xsubst, .-xsubst
	.section	.text.xfill,"ax",@progbits
	.align	1
	.globl	xfill
	.type	xfill, @function
xfill:
.LFB18:
	.loc 1 248 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 252 18
	call	getdata
	mv	a5,a0
	.loc 1 252 7
	sw	a5,-20(s0)
	.loc 1 253 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 1 253 7
	lbu	a4,0(a5)
	.loc 1 253 6
	li	a5,44
	bne	a4,a5,.L90
	.loc 1 254 16
	call	getdata
	mv	a5,a0
	.loc 1 254 5
	sw	a5,-28(s0)
	.loc 1 255 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 1 255 7
	lbu	a4,0(a5)
	.loc 1 255 6
	li	a5,44
	bne	a4,a5,.L91
	.loc 1 256 8
	call	getdata
	mv	a5,a0
	.loc 1 256 6
	sb	a5,-29(s0)
	.loc 1 257 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 1 257 7
	bnez	a5,.L92
	.loc 1 259 15
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 1 259 22
	addi	a5,a5,1
	.loc 1 259 10
	sw	a5,-24(s0)
	.loc 1 259 2
	j	.L88
.L89:
	.loc 1 260 8 discriminator 3
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 260 11 discriminator 3
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 1 259 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L88:
	.loc 1 259 2 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L89
	j	.L83
.L90:
	.loc 1 253 21
	nop
	j	.L83
.L91:
	.loc 1 255 21
	nop
	j	.L83
.L92:
	.loc 1 257 21
	nop
.L83:
	.loc 1 261 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE18:
	.size	xfill, .-xfill
	.comm	Sum,1,1
	.section	.text.hx1,"ax",@progbits
	.align	1
	.globl	hx1
	.type	hx1, @function
hx1:
.LFB19:
	.loc 1 265 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 267 11
	call	getcon
	mv	a5,a0
	mv	a0,a5
	call	inhex
	mv	a5,a0
	.loc 1 267 9
	sb	a5,-17(s0)
	.loc 1 267 5
	lbu	a4,-17(s0)
	li	a5,15
	bleu	a4,a5,.L94
	.loc 1 268 10
	li	a5,0
	j	.L95
.L94:
	.loc 1 269 9
	lbu	a5,-17(s0)
.L95:
	.loc 1 270 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE19:
	.size	hx1, .-hx1
	.section	.text.hxbyte,"ax",@progbits
	.align	1
	.globl	hxbyte
	.type	hxbyte, @function
hxbyte:
.LFB20:
	.loc 1 273 1
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
	.loc 1 275 6
	call	hx1
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 276 13
	lbu	a5,-17(s0)
	slli	a5,a5,4
	andi	s1,a5,0xff
	.loc 1 276 15
	call	hx1
	mv	a5,a0
	.loc 1 276 4
	add	a5,s1,a5
	sb	a5,-17(s0)
	.loc 1 277 6
	lui	a5,%hi(Sum)
	lbu	a4,%lo(Sum)(a5)
	lbu	a5,-17(s0)
	add	a5,a4,a5
	andi	a4,a5,0xff
	lui	a5,%hi(Sum)
	sb	a4,%lo(Sum)(a5)
	.loc 1 278 9
	lbu	a5,-17(s0)
	.loc 1 279 1
	mv	a0,a5
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
.LFE20:
	.size	hxbyte, .-hxbyte
	.section	.text.hxword,"ax",@progbits
	.align	1
	.globl	hxword
	.type	hxword, @function
hxword:
.LFB21:
	.loc 1 282 1
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
	.loc 1 284 6
	call	hxbyte
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 285 11
	lbu	a5,-17(s0)
	.loc 1 285 23
	slli	s1,a5,8
	.loc 1 285 31
	call	hxbyte
	mv	a5,a0
	.loc 1 285 29
	or	a5,s1,a5
	.loc 1 286 1
	mv	a0,a5
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
.LFE21:
	.size	hxword, .-hxword
	.globl	STARTADDR
	.section	.sdata,"aw"
	.align	2
	.type	STARTADDR, @object
	.size	STARTADDR, 4
STARTADDR:
	.word	1075838976
	.section	.rodata
	.align	2
.LC0:
	.string	"Entry Found : %08X\r\n"
	.section	.text.xread,"ax",@progbits
	.align	1
	.globl	xread
	.type	xread, @function
xread:
.LFB22:
	.loc 1 291 1
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
	.loc 1 293 11
	li	a5,-2147483648
	sw	a5,-20(s0)
.L108:
	.loc 1 298 9 discriminator 1
	nop
.L101:
	.loc 1 298 10 discriminator 1
	call	getcon
	mv	a5,a0
	mv	a4,a5
	.loc 1 298 9 discriminator 1
	li	a5,58
	bne	a4,a5,.L101
	.loc 1 300 7
	lui	a5,%hi(Sum)
	sb	zero,%lo(Sum)(a5)
	.loc 1 301 9
	call	hxbyte
	mv	a5,a0
	.loc 1 301 7
	sw	a5,-24(s0)
	.loc 1 302 6
	lw	a5,-24(s0)
	beqz	a5,.L109
	.loc 1 304 16
	call	hxword
	mv	a5,a0
	.loc 1 304 5
	sw	a5,-28(s0)
	.loc 1 305 11
	call	hxbyte
	mv	a5,a0
	.loc 1 305 9
	sw	a5,-32(s0)
	.loc 1 306 6
	lw	a5,-32(s0)
	beqz	a5,.L104
	.loc 1 307 7
	lw	a4,-32(s0)
	li	a5,4
	bne	a4,a5,.L105
	.loc 1 308 11
	call	hxword
	mv	a5,a0
	.loc 1 308 9
	slli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 309 5
	call	hxbyte
	.loc 1 310 5
	j	.L106
.L105:
	.loc 1 311 14
	lw	a4,-32(s0)
	li	a5,5
	bne	a4,a5,.L110
	.loc 1 312 11
	call	hxword
	mv	a5,a0
	.loc 1 312 9
	slli	a5,a5,16
	sw	a5,-20(s0)
	.loc 1 313 12
	call	hxword
	mv	a4,a0
	.loc 1 313 9
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 314 5
	call	hxbyte
	.loc 1 315 15
	lui	a5,%hi(STARTADDR)
	lw	a4,-20(s0)
	sw	a4,%lo(STARTADDR)(a5)
	.loc 1 316 5
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	xprintf
	.loc 1 317 5
	j	.L106
.L104:
	.loc 1 323 9 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	s1,a4,a5
	.loc 1 323 15 discriminator 1
	call	hxbyte
	mv	a5,a0
	.loc 1 323 13 discriminator 1
	sb	a5,0(s1)
	.loc 1 324 5 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 1 325 3 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L104
	.loc 1 326 3
	call	hxbyte
	.loc 1 327 11
	lui	a5,%hi(Sum)
	lbu	a5,%lo(Sum)(a5)
	.loc 1 327 6
	beqz	a5,.L108
	.loc 1 328 6
	call	putcrlf
	.loc 1 328 17
	li	a0,63
	call	putch
	.loc 1 328 29
	j	.L100
.L106:
	.loc 1 298 9
	j	.L108
.L109:
	.loc 1 303 4
	nop
	j	.L100
.L110:
	.loc 1 319 5
	nop
.L100:
	.loc 1 330 1
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
.LFE22:
	.size	xread, .-xread
	.section	.text.hx1lp,"ax",@progbits
	.align	1
	.globl	hx1lp
	.type	hx1lp, @function
hx1lp:
.LFB23:
	.loc 1 333 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 336 20
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 1 336 11
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	mv	a5,a0
	.loc 1 336 9
	sb	a5,-17(s0)
	.loc 1 336 5
	lbu	a4,-17(s0)
	li	a5,15
	bleu	a4,a5,.L112
	.loc 1 337 5
	sb	zero,-17(s0)
.L112:
	.loc 1 338 9
	lbu	a5,-17(s0)
	.loc 1 339 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE23:
	.size	hx1lp, .-hx1lp
	.section	.text.hxbytelp,"ax",@progbits
	.align	1
	.globl	hxbytelp
	.type	hxbytelp, @function
hxbytelp:
.LFB24:
	.loc 1 342 1
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
	.loc 1 345 6
	call	hx1lp
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 346 13
	lbu	a5,-17(s0)
	slli	a5,a5,4
	andi	s1,a5,0xff
	.loc 1 346 15
	call	hx1lp
	mv	a5,a0
	.loc 1 346 4
	add	a5,s1,a5
	sb	a5,-17(s0)
	.loc 1 347 6
	lui	a5,%hi(Sum)
	lbu	a4,%lo(Sum)(a5)
	lbu	a5,-17(s0)
	add	a5,a4,a5
	andi	a4,a5,0xff
	lui	a5,%hi(Sum)
	sb	a4,%lo(Sum)(a5)
	.loc 1 348 9
	lbu	a5,-17(s0)
	.loc 1 349 1
	mv	a0,a5
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
.LFE24:
	.size	hxbytelp, .-hxbytelp
	.section	.text.hxwordlp,"ax",@progbits
	.align	1
	.globl	hxwordlp
	.type	hxwordlp, @function
hxwordlp:
.LFB25:
	.loc 1 352 1
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
	.loc 1 355 6
	call	hxbytelp
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 356 11
	lbu	a5,-17(s0)
	.loc 1 356 23
	slli	s1,a5,8
	.loc 1 356 31
	call	hxbytelp
	mv	a5,a0
	.loc 1 356 29
	or	a5,s1,a5
	.loc 1 357 1
	mv	a0,a5
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
.LFE25:
	.size	hxwordlp, .-hxwordlp
	.comm	FatFs,552,4
	.section	.rodata
	.align	2
.LC1:
	.string	""
	.align	2
.LC2:
	.string	"*"
	.align	2
.LC3:
	.string	"<DIR>  %s\n"
	.align	2
.LC4:
	.string	"<FILE> %s\n"
	.section	.text.xdir,"ax",@progbits
	.align	1
	.globl	xdir
	.type	xdir, @function
xdir:
.LFB26:
	.loc 1 362 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 1 367 2
	call	putcrlf
	.loc 1 368 2
	li	a2,0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(FatFs)
	addi	a0,a5,%lo(FatFs)
	call	f_mount
	.loc 1 369 7
	addi	a1,s0,-92
	addi	a4,s0,-68
	lui	a5,%hi(.LC2)
	addi	a3,a5,%lo(.LC2)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	mv	a0,a4
	call	f_findfirst
	sw	a0,-20(s0)
	.loc 1 370 8
	j	.L119
.L123:
	.loc 1 371 10
	lbu	a5,-84(s0)
	.loc 1 371 19
	andi	a5,a5,16
	.loc 1 371 6
	beqz	a5,.L120
	.loc 1 372 4
	addi	a5,s0,-92
	addi	a5,a5,9
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	xprintf
	j	.L121
.L120:
	.loc 1 374 4
	addi	a5,s0,-92
	addi	a5,a5,9
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	xprintf
.L121:
	.loc 1 376 8
	addi	a4,s0,-92
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	f_findnext
	sw	a0,-20(s0)
.L119:
	.loc 1 370 8
	lw	a5,-20(s0)
	bnez	a5,.L122
	.loc 1 370 33 discriminator 1
	lbu	a5,-83(s0)
	.loc 1 370 21 discriminator 1
	bnez	a5,.L123
.L122:
	.loc 1 378 2
	addi	a5,s0,-68
	mv	a0,a5
	call	f_closedir
	.loc 1 379 1
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE26:
	.size	xdir, .-xdir
	.section	.rodata
	.align	2
.LC5:
	.string	"%s : Not Found \n"
	.align	2
.LC6:
	.string	"Entry Found : %08X\n"
	.align	2
.LC7:
	.string	"Sum Invalid.\n"
	.align	2
.LC8:
	.string	"%d Bytes read.\n"
	.align	2
.LC9:
	.string	"SUM=%08X\n"
	.section	.text.xsdread,"ax",@progbits
	.align	1
	.globl	xsdread
	.type	xsdread, @function
xsdread:
.LFB27:
	.loc 1 382 1
	.cfi_startproc
	addi	sp,sp,-608
	.cfi_def_cfa_offset 608
	sw	ra,604(sp)
	sw	s0,600(sp)
	sw	s1,596(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,608
	.cfi_def_cfa 8, 0
	.loc 1 386 11
	li	a5,-2147483648
	sw	a5,-24(s0)
	.loc 1 393 2
	call	putcrlf
	.loc 1 394 2
	li	a2,0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(FatFs)
	addi	a0,a5,%lo(FatFs)
	call	f_mount
	.loc 1 395 7
	addi	a4,s0,-600
	li	a2,1
	lui	a5,%hi(line+1)
	addi	a1,a5,%lo(line+1)
	mv	a0,a4
	call	f_open
	sw	a0,-44(s0)
	.loc 1 396 5
	lw	a5,-44(s0)
	beqz	a5,.L125
	.loc 1 397 3
	lui	a5,%hi(line+1)
	addi	a1,a5,%lo(line+1)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	xprintf
	j	.L124
.L125:
	.loc 1 401 12
	sw	zero,-32(s0)
.L142:
	.loc 1 403 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 1 403 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
.L132:
	.loc 1 405 4
	addi	a4,s0,-604
	addi	a5,s0,-600
	mv	a3,a4
	li	a2,1
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 1 406 11
	lw	a4,-604(s0)
	.loc 1 406 7
	li	a5,1
	bne	a4,a5,.L145
	.loc 1 407 8
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 407 7
	li	a5,58
	beq	a4,a5,.L146
	.loc 1 408 8
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 1 408 7
	li	a5,32
	bgtu	a4,a5,.L147
	.loc 1 405 4 discriminator 1
	j	.L132
.L146:
	.loc 1 407 4
	nop
	j	.L130
.L147:
	.loc 1 409 4
	nop
.L130:
	.loc 1 412 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 1 412 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
	.loc 1 413 3
	addi	a4,s0,-604
	addi	a5,s0,-600
	mv	a3,a4
	li	a2,2
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 1 414 10
	lw	a4,-604(s0)
	.loc 1 414 6
	li	a5,2
	bne	a4,a5,.L148
	.loc 1 415 7
	lui	a5,%hi(Sum)
	sb	zero,%lo(Sum)(a5)
	.loc 1 416 9
	call	hxbytelp
	mv	a5,a0
	.loc 1 416 7
	sw	a5,-20(s0)
	.loc 1 417 6
	lw	a5,-20(s0)
	beqz	a5,.L149
	.loc 1 417 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,40
	bgtu	a4,a5,.L149
	.loc 1 419 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 1 419 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
	.loc 1 420 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 1 420 29
	slli	a4,a5,1
	.loc 1 420 3
	addi	a3,s0,-604
	addi	a5,s0,-600
	mv	a2,a4
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 1 421 23
	lw	a5,-20(s0)
	addi	a5,a5,4
	slli	a4,a5,1
	.loc 1 421 10
	lw	a5,-604(s0)
	.loc 1 421 6
	bne	a4,a5,.L150
	.loc 1 423 18
	call	hxwordlp
	mv	a5,a0
	.loc 1 423 7
	sw	a5,-28(s0)
	.loc 1 424 11
	call	hxbytelp
	mv	a5,a0
	.loc 1 424 9
	sw	a5,-52(s0)
	.loc 1 425 6
	lw	a5,-52(s0)
	beqz	a5,.L137
	.loc 1 426 7
	lw	a4,-52(s0)
	li	a5,4
	bne	a4,a5,.L138
	.loc 1 427 11
	call	hxwordlp
	mv	a5,a0
	.loc 1 427 9
	slli	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 428 5
	call	hxbytelp
	.loc 1 429 5
	j	.L139
.L138:
	.loc 1 430 14
	lw	a4,-52(s0)
	li	a5,5
	bne	a4,a5,.L151
	.loc 1 431 11
	call	hxwordlp
	mv	a5,a0
	.loc 1 431 9
	slli	a5,a5,16
	sw	a5,-24(s0)
	.loc 1 432 12
	call	hxwordlp
	mv	a4,a0
	.loc 1 432 9
	lw	a5,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 1 433 5
	call	hxbytelp
	.loc 1 434 15
	lui	a5,%hi(STARTADDR)
	lw	a4,-24(s0)
	sw	a4,%lo(STARTADDR)(a5)
	.loc 1 435 5
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	xprintf
	.loc 1 436 5
	j	.L139
.L137:
	.loc 1 441 12
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
.L141:
	.loc 1 443 11 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 443 7 discriminator 1
	lw	a4,-24(s0)
	add	s1,a5,a4
	.loc 1 443 17 discriminator 1
	call	hxbytelp
	mv	a5,a0
	.loc 1 443 15 discriminator 1
	sb	a5,0(s1)
	.loc 1 444 3 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L141
	.loc 1 445 3
	call	hxbytelp
	.loc 1 446 11
	lui	a5,%hi(Sum)
	lbu	a5,%lo(Sum)(a5)
	.loc 1 446 6
	beqz	a5,.L142
	.loc 1 447 4
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	xprintf
	.loc 1 448 4
	j	.L128
.L139:
	.loc 1 403 4
	j	.L142
.L145:
	.loc 1 406 17
	nop
	j	.L128
.L148:
	.loc 1 414 16
	nop
	j	.L128
.L149:
	.loc 1 418 4
	nop
	j	.L128
.L150:
	.loc 1 421 28
	nop
	j	.L128
.L151:
	.loc 1 438 5
	nop
.L128:
	.loc 1 452 2
	addi	a5,s0,-600
	mv	a0,a5
	call	f_close
	.loc 1 453 2
	lw	a1,-32(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	xprintf
.LBB3:
	.loc 1 457 12
	sw	zero,-40(s0)
	.loc 1 458 16
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	.loc 1 458 12
	sw	a5,-56(s0)
	.loc 1 459 8
	sw	zero,-36(s0)
	.loc 1 459 3
	j	.L143
.L144:
	.loc 1 460 12 discriminator 3
	lw	a5,-36(s0)
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 460 8 discriminator 3
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 1 459 24 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L143:
	.loc 1 459 12 discriminator 1
	lw	a5,-36(s0)
	.loc 1 459 3 discriminator 1
	lw	a4,-32(s0)
	bgtu	a4,a5,.L144
	.loc 1 462 3
	lw	a1,-40(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	xprintf
.L124:
.LBE3:
	.loc 1 464 1
	lw	ra,604(sp)
	.cfi_restore 1
	lw	s0,600(sp)
	.cfi_restore 8
	lw	s1,596(sp)
	.cfi_restore 9
	addi	sp,sp,608
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE27:
	.size	xsdread, .-xsdread
	.section	.rodata
	.align	2
.LC10:
	.string	"\nTP TEST\n"
	.globl	__floatunsidf
	.globl	__muldf3
	.globl	__divdf3
	.globl	__fixunsdfsi
	.align	2
.LC15:
	.string	"(%d,%d)  : %04X,%04X,%04X\n"
	.section	.text.xtptest,"ax",@progbits
	.align	1
	.globl	xtptest
	.type	xtptest, @function
xtptest:
.LFB28:
	.loc 1 468 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 1 479 2
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	xprintf
.L160:
	.loc 1 481 9
	call	consts
	mv	a5,a0
	.loc 1 481 8
	beqz	a5,.L153
	.loc 1 481 21 discriminator 1
	call	getcon
	.loc 1 481 31 discriminator 1
	j	.L161
.L153:
	.loc 1 482 15
	li	a5,-268107776
	addi	a5,a5,172
	.loc 1 482 12
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 483 14
	li	a5,-268107776
	addi	a5,a5,164
	.loc 1 483 11
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 484 14
	li	a5,-268107776
	addi	a5,a5,168
	.loc 1 484 11
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 1 485 6
	lw	a4,-20(s0)
	li	a5,120
	bleu	a4,a5,.L160
	.loc 1 486 7
	lw	a4,-24(s0)
	li	a5,175
	bleu	a4,a5,.L162
	.loc 1 486 26 discriminator 1
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-192
	bgtu	a4,a5,.L162
	.loc 1 489 7
	lw	a4,-28(s0)
	li	a5,335
	bleu	a4,a5,.L163
	.loc 1 489 26 discriminator 1
	lw	a4,-28(s0)
	li	a5,4096
	addi	a5,a5,-156
	bgtu	a4,a5,.L163
	.loc 1 492 19
	lw	a5,-24(s0)
	addi	a5,a5,-176
	.loc 1 492 28
	mv	a0,a5
	call	__floatunsidf
.LVL0:
	lui	a5,%hi(.LC11)
	lw	a2,%lo(.LC11)(a5)
	lw	a3,%lo(.LC11+4)(a5)
	call	__muldf3
.LVL1:
	mv	a5,a0
	mv	a6,a1
	mv	a0,a5
	mv	a1,a6
	.loc 1 492 36
	lui	a5,%hi(.LC12)
	lw	a2,%lo(.LC12)(a5)
	lw	a3,%lo(.LC12+4)(a5)
	call	__divdf3
.LVL2:
	mv	a5,a0
	mv	a6,a1
	.loc 1 492 8
	mv	a0,a5
	mv	a1,a6
	call	__fixunsdfsi
.LVL3:
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 1 493 19
	lw	a5,-28(s0)
	addi	a5,a5,-336
	.loc 1 493 28
	mv	a0,a5
	call	__floatunsidf
.LVL4:
	lui	a5,%hi(.LC13)
	lw	a2,%lo(.LC13)(a5)
	lw	a3,%lo(.LC13+4)(a5)
	call	__muldf3
.LVL5:
	mv	a5,a0
	mv	a6,a1
	mv	a0,a5
	mv	a1,a6
	.loc 1 493 36
	lui	a5,%hi(.LC14)
	lw	a2,%lo(.LC14)(a5)
	lw	a3,%lo(.LC14+4)(a5)
	call	__divdf3
.LVL6:
	mv	a5,a0
	mv	a6,a1
	.loc 1 493 8
	mv	a0,a5
	mv	a1,a6
	call	__fixunsdfsi
.LVL7:
	mv	a5,a0
	sw	a5,-36(s0)
	.loc 1 494 4
	lw	a5,-20(s0)
	lw	a4,-28(s0)
	lw	a3,-24(s0)
	lw	a2,-36(s0)
	lw	a1,-32(s0)
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	xprintf
	j	.L160
.L162:
	.loc 1 487 5
	nop
	j	.L160
.L163:
	.loc 1 490 5
	nop
	.loc 1 481 8
	j	.L160
.L161:
	.loc 1 497 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE28:
	.size	xtptest, .-xtptest
	.globl	HelpMsg
	.section	.rodata
	.align	2
.LC16:
	.string	"D:Dump     - D(Begin),(End)\nF:Fill     - F(Begin),(End),(Val)\nG:Go       - G<STARTENTRY:fromihex>\nR:Read Intel Hex\nS:Set      - S(Addr)\n=:SD DIR   - =\n!:SD IHEX  - !(Filename)\nT:TP TEST\n"
	.section	.sdata
	.align	2
	.type	HelpMsg, @object
	.size	HelpMsg, 4
HelpMsg:
	.word	.LC16
	.section	.text.xhelp,"ax",@progbits
	.align	1
	.globl	xhelp
	.type	xhelp, @function
xhelp:
.LFB29:
	.loc 1 512 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 513 2
	lui	a5,%hi(HelpMsg)
	lw	a5,%lo(HelpMsg)(a5)
	mv	a0,a5
	call	xprintf
	.loc 1 514 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE29:
	.size	xhelp, .-xhelp
	.section	.text.xgo,"ax",@progbits
	.align	1
	.globl	xgo
	.type	xgo, @function
xgo:
.LFB30:
	.loc 1 517 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 519 3
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	jalr	a5
.LVL8:
	.loc 1 520 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE30:
	.size	xgo, .-xgo
	.globl	comtbl
	.data
	.align	2
	.type	comtbl, @object
	.size	comtbl, 80
comtbl:
	.byte	68
	.zero	3
	.word	xdump
	.byte	70
	.zero	3
	.word	xfill
	.byte	71
	.zero	3
	.word	xgo
	.byte	82
	.zero	3
	.word	xread
	.byte	83
	.zero	3
	.word	xsubst
	.byte	61
	.zero	3
	.word	xdir
	.byte	33
	.zero	3
	.word	xsdread
	.byte	63
	.zero	3
	.word	xhelp
	.byte	84
	.zero	3
	.word	xtptest
	.byte	0
	.zero	3
	.word	_error
	.section	.rodata
	.align	2
.LC17:
	.string	"*** VexRiscv Monitor ***"
	.align	2
.LC18:
	.string	"\n%d(ms)>"
	.section	.text._main,"ax",@progbits
	.align	1
	.globl	_main
	.type	_main, @function
_main:
.LFB31:
	.loc 1 545 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 548 11
	lui	a5,%hi(irqCount)
	lw	a5,%lo(irqCount)(a5)
	sw	a5,-24(s0)
	.loc 1 550 2
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	xprintf
.L173:
	.loc 1 553 3
	lui	a5,%hi(irqCount)
	lw	a4,%lo(irqCount)(a5)
	lw	a5,-24(s0)
	sub	a5,a4,a5
	mv	a1,a5
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	xprintf
	.loc 1 554 3
	call	getline
	.loc 1 555 11
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	.loc 1 555 6
	bnez	a5,.L167
	.loc 1 556 17
	lui	a5,%hi(irqCount)
	lw	a5,%lo(irqCount)(a5)
	sw	a5,-24(s0)
	.loc 1 557 4
	j	.L168
.L167:
	.loc 1 559 6
	lui	a5,%hi(lp)
	lui	a4,%hi(line+1)
	addi	a4,a4,%lo(line+1)
	sw	a4,%lo(lp)(a5)
	.loc 1 560 10
	lui	a5,%hi(comtbl)
	addi	a5,a5,%lo(comtbl)
	sw	a5,-20(s0)
	.loc 1 560 3
	j	.L169
.L172:
	.loc 1 561 17
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	.loc 1 561 7
	lbu	a4,-25(s0)
	beq	a4,a5,.L174
	.loc 1 560 40 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L169:
	.loc 1 560 22 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 560 3 discriminator 1
	lbu	a5,-25(s0)
	bnez	a5,.L172
	j	.L171
.L174:
	.loc 1 562 5
	nop
.L171:
	.loc 1 563 16
	lui	a5,%hi(irqCount)
	lw	a5,%lo(irqCount)(a5)
	sw	a5,-24(s0)
	.loc 1 564 4
	lw	a5,-20(s0)
	lw	a5,4(a5)
	jalr	a5
.LVL9:
.L168:
	.loc 1 553 3
	j	.L173
	.cfi_endproc
.LFE31:
	.size	_main, .-_main
	.section	.rodata
	.align	3
.LC11:
	.word	0
	.word	1082720256
	.align	3
.LC12:
	.word	0
	.word	1085087744
	.align	3
.LC13:
	.word	0
	.word	1081999360
	.align	3
.LC14:
	.word	0
	.word	1085024256
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "murax.h"
	.file 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h"
	.file 6 "xprintf.h"
	.file 7 "ff.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd79
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF12
	.byte	0x5
	.4byte	0xad
	.4byte	0xa1
	.byte	0x6
	.byte	0
	.byte	0x7
	.4byte	0x96
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	0xa6
	.byte	0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0xa5
	.byte	0x13
	.4byte	0xa1
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x9
	.4byte	0xd6
	.byte	0xa
	.byte	0x10
	.byte	0x4
	.byte	0x2e
	.byte	0x9
	.4byte	0x125
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x30
	.byte	0x15
	.4byte	0xe2
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x31
	.byte	0x15
	.4byte	0xe2
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x32
	.byte	0x15
	.4byte	0xe2
	.byte	0x8
	.byte	0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x33
	.byte	0x15
	.4byte	0xe2
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x34
	.byte	0x3
	.4byte	0xe7
	.byte	0xa
	.byte	0x20
	.byte	0x4
	.byte	0x52
	.byte	0x9
	.4byte	0x1a3
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x53
	.byte	0xb
	.4byte	0xd6
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x53
	.byte	0x17
	.4byte	0xd6
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x54
	.byte	0xb
	.4byte	0xd6
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0xd6
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x4
	.byte	0x56
	.byte	0xb
	.4byte	0xd6
	.byte	0x10
	.byte	0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x56
	.byte	0x17
	.4byte	0xd6
	.byte	0x14
	.byte	0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x57
	.byte	0xb
	.4byte	0xd6
	.byte	0x18
	.byte	0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x57
	.byte	0x17
	.4byte	0xd6
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x58
	.byte	0x2
	.4byte	0x131
	.byte	0x7
	.4byte	0x1a3
	.byte	0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x5a
	.byte	0x19
	.4byte	0x1af
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x65
	.byte	0x19
	.4byte	0x1af
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x70
	.byte	0x19
	.4byte	0x1af
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0xc
	.4byte	.LASF34
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.4byte	0x1af
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0x8
	.4byte	.LASF36
	.byte	0x4
	.byte	0xbc
	.byte	0x1a
	.4byte	0xe2
	.byte	0xd
	.4byte	0x213
	.byte	0xe
	.4byte	0x38
	.byte	0
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x13
	.byte	0xf
	.4byte	0x21f
	.byte	0xf
	.byte	0x4
	.4byte	0x208
	.byte	0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2d
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x38
	.byte	0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.4byte	0xca
	.byte	0x3
	.4byte	.LASF41
	.byte	0x7
	.byte	0x30
	.byte	0x12
	.4byte	0xd6
	.byte	0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x63
	.byte	0xe
	.4byte	0xa6
	.byte	0x7
	.4byte	0x255
	.byte	0x3
	.4byte	.LASF43
	.byte	0x7
	.byte	0x7c
	.byte	0xf
	.4byte	0x249
	.byte	0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x7d
	.byte	0xf
	.4byte	0x249
	.byte	0x10
	.2byte	0x228
	.byte	0x7
	.byte	0x84
	.byte	0x9
	.4byte	0x358
	.byte	0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x85
	.byte	0x7
	.4byte	0x231
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x86
	.byte	0x7
	.4byte	0x231
	.byte	0x1
	.byte	0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x87
	.byte	0x7
	.4byte	0x231
	.byte	0x2
	.byte	0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x88
	.byte	0x7
	.4byte	0x231
	.byte	0x3
	.byte	0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x89
	.byte	0x7
	.4byte	0x231
	.byte	0x4
	.byte	0x11
	.string	"id"
	.byte	0x7
	.byte	0x8a
	.byte	0x7
	.4byte	0x23d
	.byte	0x6
	.byte	0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x8b
	.byte	0x7
	.4byte	0x23d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x8c
	.byte	0x7
	.4byte	0x23d
	.byte	0xa
	.byte	0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0xa5
	.byte	0x8
	.4byte	0x249
	.byte	0xc
	.byte	0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0xa6
	.byte	0x8
	.4byte	0x249
	.byte	0x10
	.byte	0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0xa7
	.byte	0x8
	.4byte	0x272
	.byte	0x14
	.byte	0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0xa8
	.byte	0x8
	.4byte	0x272
	.byte	0x18
	.byte	0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0xa9
	.byte	0x8
	.4byte	0x272
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0xaa
	.byte	0x8
	.4byte	0x272
	.byte	0x20
	.byte	0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0xae
	.byte	0x8
	.4byte	0x272
	.byte	0x24
	.byte	0x11
	.string	"win"
	.byte	0x7
	.byte	0xaf
	.byte	0x7
	.4byte	0x358
	.byte	0x28
	.byte	0
	.byte	0x5
	.4byte	0x231
	.4byte	0x369
	.byte	0x12
	.4byte	0x88
	.2byte	0x1ff
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x7
	.byte	0xb0
	.byte	0x3
	.4byte	0x27e
	.byte	0xa
	.byte	0x10
	.byte	0x7
	.byte	0xb6
	.byte	0x9
	.4byte	0x3cb
	.byte	0x11
	.string	"fs"
	.byte	0x7
	.byte	0xb7
	.byte	0x9
	.4byte	0x3cb
	.byte	0
	.byte	0x11
	.string	"id"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x23d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0xb9
	.byte	0x7
	.4byte	0x231
	.byte	0x6
	.byte	0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0xba
	.byte	0x7
	.4byte	0x231
	.byte	0x7
	.byte	0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xbb
	.byte	0x8
	.4byte	0x249
	.byte	0x8
	.byte	0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0xbc
	.byte	0xa
	.4byte	0x266
	.byte	0xc
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x369
	.byte	0x3
	.4byte	.LASF64
	.byte	0x7
	.byte	0xc7
	.byte	0x3
	.4byte	0x375
	.byte	0x10
	.2byte	0x220
	.byte	0x7
	.byte	0xcd
	.byte	0x9
	.4byte	0x443
	.byte	0x11
	.string	"obj"
	.byte	0x7
	.byte	0xce
	.byte	0xa
	.4byte	0x3d1
	.byte	0
	.byte	0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0xcf
	.byte	0x7
	.4byte	0x231
	.byte	0x10
	.byte	0x11
	.string	"err"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x231
	.byte	0x11
	.byte	0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0xd1
	.byte	0xa
	.4byte	0x266
	.byte	0x14
	.byte	0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd2
	.byte	0x8
	.4byte	0x249
	.byte	0x18
	.byte	0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0x272
	.byte	0x1c
	.byte	0x11
	.string	"buf"
	.byte	0x7
	.byte	0xdc
	.byte	0x7
	.4byte	0x358
	.byte	0x20
	.byte	0
	.byte	0x13
	.string	"FIL"
	.byte	0x7
	.byte	0xde
	.byte	0x3
	.4byte	0x3dd
	.byte	0xa
	.byte	0x30
	.byte	0x7
	.byte	0xe4
	.byte	0x9
	.4byte	0x4b3
	.byte	0x11
	.string	"obj"
	.byte	0x7
	.byte	0xe5
	.byte	0xa
	.4byte	0x3d1
	.byte	0
	.byte	0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0xe6
	.byte	0x8
	.4byte	0x249
	.byte	0x10
	.byte	0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0xe7
	.byte	0x8
	.4byte	0x249
	.byte	0x14
	.byte	0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0xe8
	.byte	0x8
	.4byte	0x272
	.byte	0x18
	.byte	0x11
	.string	"dir"
	.byte	0x7
	.byte	0xe9
	.byte	0x8
	.4byte	0x4b3
	.byte	0x1c
	.byte	0x11
	.string	"fn"
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x4b9
	.byte	0x20
	.byte	0x11
	.string	"pat"
	.byte	0x7
	.byte	0xef
	.byte	0xf
	.4byte	0x4c9
	.byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x231
	.byte	0x5
	.4byte	0x231
	.4byte	0x4c9
	.byte	0x14
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x261
	.byte	0x13
	.string	"DIR"
	.byte	0x7
	.byte	0xf1
	.byte	0x3
	.4byte	0x44f
	.byte	0xa
	.byte	0x18
	.byte	0x7
	.byte	0xf7
	.byte	0x9
	.4byte	0x527
	.byte	0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0xf8
	.byte	0xa
	.4byte	0x266
	.byte	0
	.byte	0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0xf9
	.byte	0x7
	.4byte	0x23d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF71
	.byte	0x7
	.byte	0xfa
	.byte	0x7
	.4byte	0x23d
	.byte	0x6
	.byte	0xb
	.4byte	.LASF72
	.byte	0x7
	.byte	0xfb
	.byte	0x7
	.4byte	0x231
	.byte	0x8
	.byte	0x15
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x100
	.byte	0x8
	.4byte	0x527
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0x255
	.4byte	0x537
	.byte	0x14
	.4byte	0x88
	.byte	0xc
	.byte	0
	.byte	0x16
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x102
	.byte	0x3
	.4byte	0x4db
	.byte	0x17
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x7
	.2byte	0x114
	.byte	0xe
	.4byte	0x5cc
	.byte	0x18
	.4byte	.LASF75
	.byte	0
	.byte	0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x18
	.4byte	.LASF77
	.byte	0x2
	.byte	0x18
	.4byte	.LASF78
	.byte	0x3
	.byte	0x18
	.4byte	.LASF79
	.byte	0x4
	.byte	0x18
	.4byte	.LASF80
	.byte	0x5
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.byte	0x18
	.4byte	.LASF82
	.byte	0x7
	.byte	0x18
	.4byte	.LASF83
	.byte	0x8
	.byte	0x18
	.4byte	.LASF84
	.byte	0x9
	.byte	0x18
	.4byte	.LASF85
	.byte	0xa
	.byte	0x18
	.4byte	.LASF86
	.byte	0xb
	.byte	0x18
	.4byte	.LASF87
	.byte	0xc
	.byte	0x18
	.4byte	.LASF88
	.byte	0xd
	.byte	0x18
	.4byte	.LASF89
	.byte	0xe
	.byte	0x18
	.4byte	.LASF90
	.byte	0xf
	.byte	0x18
	.4byte	.LASF91
	.byte	0x10
	.byte	0x18
	.4byte	.LASF92
	.byte	0x11
	.byte	0x18
	.4byte	.LASF93
	.byte	0x12
	.byte	0x18
	.4byte	.LASF94
	.byte	0x13
	.byte	0
	.byte	0x16
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x129
	.byte	0x3
	.4byte	0x544
	.byte	0x19
	.string	"col"
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0xd6
	.byte	0x5
	.byte	0x3
	.4byte	col
	.byte	0x5
	.4byte	0xa6
	.4byte	0x5fb
	.byte	0x14
	.4byte	0x88
	.byte	0x4f
	.byte	0
	.byte	0x1a
	.4byte	.LASF96
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	0x5eb
	.byte	0x5
	.byte	0x3
	.4byte	line
	.byte	0x19
	.string	"lp"
	.byte	0x1
	.byte	0x1b
	.byte	0x11
	.4byte	0x61e
	.byte	0x5
	.byte	0x3
	.4byte	lp
	.byte	0xf
	.byte	0x4
	.4byte	0xa6
	.byte	0x1a
	.4byte	.LASF97
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x4b3
	.byte	0x5
	.byte	0x3
	.4byte	datap
	.byte	0x1a
	.4byte	.LASF98
	.byte	0x1
	.byte	0x1c
	.byte	0xf
	.4byte	0x4b3
	.byte	0x5
	.byte	0x3
	.4byte	codep
	.byte	0x1b
	.string	"Sum"
	.byte	0x1
	.2byte	0x107
	.byte	0x9
	.4byte	0xbe
	.byte	0x5
	.byte	0x3
	.4byte	Sum
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x120
	.byte	0xa
	.4byte	0xd6
	.byte	0x5
	.byte	0x3
	.4byte	STARTADDR
	.byte	0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x168
	.byte	0x7
	.4byte	0x369
	.byte	0x5
	.byte	0x3
	.4byte	FatFs
	.byte	0x1c
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1f4
	.byte	0xd
	.4byte	0x694
	.byte	0x5
	.byte	0x3
	.4byte	HelpMsg
	.byte	0xf
	.byte	0x4
	.4byte	0xad
	.byte	0x1d
	.byte	0x8
	.byte	0x1
	.2byte	0x20a
	.byte	0x9
	.4byte	0x6c1
	.byte	0x15
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x20b
	.byte	0x7
	.4byte	0xa6
	.byte	0
	.byte	0x15
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x20c
	.byte	0x9
	.4byte	0x6c8
	.byte	0x4
	.byte	0
	.byte	0x1e
	.4byte	0x6c8
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6c1
	.byte	0x16
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x20d
	.byte	0x3
	.4byte	0x69a
	.byte	0x5
	.4byte	0x6ce
	.4byte	0x6eb
	.byte	0x14
	.4byte	0x88
	.byte	0x9
	.byte	0
	.byte	0x1c
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x20f
	.byte	0x9
	.4byte	0x6db
	.byte	0x5
	.byte	0x3
	.4byte	comtbl
	.byte	0x20
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x220
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x742
	.byte	0x21
	.string	"p"
	.byte	0x1
	.2byte	0x222
	.byte	0xb
	.4byte	0x742
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"c"
	.byte	0x1
	.2byte	0x223
	.byte	0x7
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x22
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x224
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6ce
	.byte	0x23
	.string	"xgo"
	.byte	0x1
	.2byte	0x204
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x24
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1ff
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.byte	0x20
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1d3
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d6
	.byte	0x21
	.string	"tpx"
	.byte	0x1
	.2byte	0x1d5
	.byte	0x7
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.string	"tpy"
	.byte	0x1
	.2byte	0x1d5
	.byte	0xb
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x22
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1d6
	.byte	0x7
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x22
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1d7
	.byte	0x7
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x22
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1d8
	.byte	0x7
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x20
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x17d
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x8cc
	.byte	0x21
	.string	"len"
	.byte	0x1
	.2byte	0x17f
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x22
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x180
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x25
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x181
	.byte	0xb
	.4byte	0xd6
	.byte	0x21
	.string	"seg"
	.byte	0x1
	.2byte	0x182
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.string	"p"
	.byte	0x1
	.2byte	0x183
	.byte	0x8
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x21
	.string	"adr"
	.byte	0x1
	.2byte	0x183
	.byte	0xb
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x21
	.string	"fr"
	.byte	0x1
	.2byte	0x184
	.byte	0xa
	.4byte	0x5cc
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x21
	.string	"fil"
	.byte	0x1
	.2byte	0x185
	.byte	0x6
	.4byte	0x443
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7b
	.byte	0x21
	.string	"rc"
	.byte	0x1
	.2byte	0x186
	.byte	0x7
	.4byte	0x225
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7b
	.byte	0x22
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x187
	.byte	0x7
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x26
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1c3
	.byte	0x1
	.4byte	.L128
	.byte	0x27
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x21
	.string	"i"
	.byte	0x1
	.2byte	0x1c8
	.byte	0x7
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x21
	.string	"sum"
	.byte	0x1
	.2byte	0x1c9
	.byte	0xc
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x21
	.string	"p"
	.byte	0x1
	.2byte	0x1ca
	.byte	0xc
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xbe
	.byte	0x20
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x169
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x91a
	.byte	0x21
	.string	"fr"
	.byte	0x1
	.2byte	0x16b
	.byte	0xa
	.4byte	0x5cc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"dj"
	.byte	0x1
	.2byte	0x16c
	.byte	0x6
	.4byte	0x4cf
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x21
	.string	"fno"
	.byte	0x1
	.2byte	0x16d
	.byte	0xa
	.4byte	0x537
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x28
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x15f
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x944
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x161
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x155
	.byte	0x9
	.4byte	0xbe
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x96e
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x157
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x14c
	.byte	0x9
	.4byte	0xbe
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x998
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x14e
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x20
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x122
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ee
	.byte	0x22
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x124
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.string	"seg"
	.byte	0x1
	.2byte	0x125
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"len"
	.byte	0x1
	.2byte	0x126
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.string	"p"
	.byte	0x1
	.2byte	0x127
	.byte	0x8
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x28
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x119
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xa18
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x11b
	.byte	0x7
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x110
	.byte	0x9
	.4byte	0xbe
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xa42
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x112
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x29
	.string	"hx1"
	.byte	0x1
	.2byte	0x108
	.byte	0x9
	.4byte	0xbe
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xa6c
	.byte	0x21
	.string	"x"
	.byte	0x1
	.2byte	0x10a
	.byte	0xa
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2a
	.4byte	.LASF123
	.byte	0x1
	.byte	0xf7
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xabd
	.byte	0xc
	.4byte	.LASF124
	.byte	0x1
	.byte	0xf9
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"to"
	.byte	0x1
	.byte	0xf9
	.byte	0x12
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2b
	.string	"dat"
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x63
	.byte	0x2b
	.string	"ct"
	.byte	0x1
	.byte	0xfa
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2a
	.4byte	.LASF125
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xae1
	.byte	0x2b
	.string	"p"
	.byte	0x1
	.byte	0xd5
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2a
	.4byte	.LASF126
	.byte	0x1
	.byte	0xad
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3d
	.byte	0x2b
	.string	"p"
	.byte	0x1
	.byte	0xaf
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"q"
	.byte	0x1
	.byte	0xaf
	.byte	0xf
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xc
	.4byte	.LASF124
	.byte	0x1
	.byte	0xb0
	.byte	0xb
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2b
	.string	"to"
	.byte	0x1
	.byte	0xb0
	.byte	0x12
	.4byte	0x8cc
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2b
	.string	"ct"
	.byte	0x1
	.byte	0xb1
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x2c
	.4byte	.LASF131
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.4byte	0x61e
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xb65
	.byte	0x2d
	.string	"p"
	.byte	0x1
	.byte	0xa6
	.byte	0x13
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2e
	.4byte	.LASF127
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xb89
	.byte	0x2d
	.string	"n"
	.byte	0x1
	.byte	0x9e
	.byte	0x17
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2e
	.4byte	.LASF128
	.byte	0x1
	.byte	0x98
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xbad
	.byte	0x2d
	.string	"n"
	.byte	0x1
	.byte	0x98
	.byte	0x16
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2e
	.4byte	.LASF129
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd1
	.byte	0x2d
	.string	"n"
	.byte	0x1
	.byte	0x92
	.byte	0x16
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2e
	.4byte	.LASF130
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xbf5
	.byte	0x2d
	.string	"n"
	.byte	0x1
	.byte	0x8d
	.byte	0x16
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x7a
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1d
	.byte	0x2d
	.string	"p"
	.byte	0x1
	.byte	0x7a
	.byte	0x1c
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x30
	.4byte	.LASF140
	.byte	0x1
	.byte	0x71
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.byte	0x31
	.4byte	.LASF133
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc68
	.byte	0x2b
	.string	"c"
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2b
	.string	"v"
	.byte	0x1
	.byte	0x67
	.byte	0xb
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2c
	.4byte	.LASF134
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xc90
	.byte	0x2d
	.string	"c"
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2a
	.4byte	.LASF135
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xce8
	.byte	0x2b
	.string	"c"
	.byte	0x1
	.byte	0x3a
	.byte	0x7
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x2b
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"ct"
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x2b
	.string	"__x"
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF136
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF137
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF138
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0x2e
	.4byte	.LASF139
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xd42
	.byte	0x2d
	.string	"c"
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.4byte	0xa6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x30
	.4byte	.LASF141
	.byte	0x1
	.byte	0x15
	.byte	0xa
	.4byte	0xd6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x33
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0xa6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2b
	.string	"c"
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0x81
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x13
	.byte	0x1
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x24
	.byte	0x2e
	.byte	0
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
	.byte	0x25
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
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
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
	.byte	0x5
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
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x114
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"Uart_Reg"
.LASF93:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF45:
	.string	"fs_type"
.LASF101:
	.string	"HelpMsg"
.LASF141:
	.string	"consts"
.LASF3:
	.string	"__uint8_t"
.LASF132:
	.string	"ogetdata"
.LASF134:
	.string	"inhex"
.LASF123:
	.string	"xfill"
.LASF50:
	.string	"n_rootdir"
.LASF119:
	.string	"hx1lp"
.LASF10:
	.string	"long long unsigned int"
.LASF143:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF34:
	.string	"vga_simRes_h160_v120"
.LASF68:
	.string	"sect"
.LASF99:
	.string	"STARTADDR"
.LASF56:
	.string	"dirbase"
.LASF23:
	.string	"hSyncEnd"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF102:
	.string	"mnemo"
.LASF94:
	.string	"FR_INVALID_PARAMETER"
.LASF53:
	.string	"fsize"
.LASF111:
	.string	"TPREADX"
.LASF112:
	.string	"TPREADY"
.LASF52:
	.string	"n_fatent"
.LASF32:
	.string	"vga_h640_v480_r60"
.LASF84:
	.string	"FR_INVALID_OBJECT"
.LASF6:
	.string	"long int"
.LASF26:
	.string	"vSyncStart"
.LASF121:
	.string	"hxword"
.LASF47:
	.string	"n_fats"
.LASF139:
	.string	"putch"
.LASF100:
	.string	"FatFs"
.LASF88:
	.string	"FR_NO_FILESYSTEM"
.LASF15:
	.string	"uint16_t"
.LASF92:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF83:
	.string	"FR_EXIST"
.LASF55:
	.string	"fatbase"
.LASF41:
	.string	"DWORD"
.LASF43:
	.string	"FSIZE_t"
.LASF125:
	.string	"xsubst"
.LASF122:
	.string	"hxbyte"
.LASF96:
	.string	"line"
.LASF7:
	.string	"__uint32_t"
.LASF131:
	.string	"comma"
.LASF51:
	.string	"csize"
.LASF46:
	.string	"pdrv"
.LASF39:
	.string	"BYTE"
.LASF60:
	.string	"attr"
.LASF128:
	.string	"puthxw"
.LASF11:
	.string	"unsigned int"
.LASF120:
	.string	"xread"
.LASF38:
	.string	"UINT"
.LASF71:
	.string	"ftime"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF57:
	.string	"database"
.LASF17:
	.string	"DATA"
.LASF28:
	.string	"vColorStart"
.LASF77:
	.string	"FR_INT_ERR"
.LASF76:
	.string	"FR_DISK_ERR"
.LASF58:
	.string	"winsect"
.LASF105:
	.string	"comtbl"
.LASF135:
	.string	"getline"
.LASF75:
	.string	"FR_OK"
.LASF140:
	.string	"getdata"
.LASF73:
	.string	"fname"
.LASF124:
	.string	"from"
.LASF85:
	.string	"FR_WRITE_PROTECTED"
.LASF118:
	.string	"hxbytelp"
.LASF59:
	.string	"FATFS"
.LASF70:
	.string	"fdate"
.LASF66:
	.string	"fptr"
.LASF104:
	.string	"TBENTRY"
.LASF27:
	.string	"vSyncEnd"
.LASF12:
	.string	"long double"
.LASF36:
	.string	"irqCount"
.LASF90:
	.string	"FR_TIMEOUT"
.LASF116:
	.string	"xdir"
.LASF40:
	.string	"WORD"
.LASF62:
	.string	"sclust"
.LASF110:
	.string	"TPREADZ1"
.LASF79:
	.string	"FR_NO_FILE"
.LASF42:
	.string	"TCHAR"
.LASF87:
	.string	"FR_NOT_ENABLED"
.LASF126:
	.string	"xdump"
.LASF129:
	.string	"puthxb"
.LASF114:
	.string	"dtype"
.LASF113:
	.string	"xsdread"
.LASF107:
	.string	"xhelp"
.LASF117:
	.string	"hxwordlp"
.LASF63:
	.string	"objsize"
.LASF37:
	.string	"xfunc_out"
.LASF97:
	.string	"datap"
.LASF1:
	.string	"unsigned char"
.LASF108:
	.string	"_main"
.LASF130:
	.string	"puthex"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"hColorEnd"
.LASF65:
	.string	"flag"
.LASF127:
	.string	"puthxww"
.LASF86:
	.string	"FR_INVALID_DRIVE"
.LASF82:
	.string	"FR_DENIED"
.LASF69:
	.string	"dptr"
.LASF89:
	.string	"FR_MKFS_ABORTED"
.LASF144:
	.string	"deb.c"
.LASF91:
	.string	"FR_LOCKED"
.LASF48:
	.string	"wflag"
.LASF16:
	.string	"uint32_t"
.LASF22:
	.string	"hSyncStart"
.LASF20:
	.string	"FRAME_CONFIG"
.LASF133:
	.string	"gethex"
.LASF13:
	.string	"char"
.LASF103:
	.string	"func"
.LASF29:
	.string	"vColorEnd"
.LASF4:
	.string	"__uint16_t"
.LASF35:
	.string	"_ctype_"
.LASF146:
	.string	"allsum"
.LASF147:
	.string	"L_EOF"
.LASF54:
	.string	"volbase"
.LASF31:
	.string	"vga_h800_v480_r60"
.LASF115:
	.string	"bytecount"
.LASF81:
	.string	"FR_INVALID_NAME"
.LASF19:
	.string	"CLOCK_DIVIDER"
.LASF138:
	.string	"putcrlf"
.LASF49:
	.string	"fsi_flag"
.LASF137:
	.string	"putback"
.LASF30:
	.string	"Vga_Timing"
.LASF18:
	.string	"STATUS"
.LASF145:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF33:
	.string	"vga_simRes"
.LASF98:
	.string	"codep"
.LASF106:
	.string	"lastirqcount"
.LASF74:
	.string	"FILINFO"
.LASF109:
	.string	"xtptest"
.LASF136:
	.string	"_error"
.LASF14:
	.string	"uint8_t"
.LASF44:
	.string	"LBA_t"
.LASF61:
	.string	"stat"
.LASF95:
	.string	"FRESULT"
.LASF24:
	.string	"hColorStart"
.LASF80:
	.string	"FR_NO_PATH"
.LASF142:
	.string	"getcon"
.LASF78:
	.string	"FR_NOT_READY"
.LASF72:
	.string	"fattrib"
.LASF64:
	.string	"FFOBJID"
.LASF67:
	.string	"clust"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
