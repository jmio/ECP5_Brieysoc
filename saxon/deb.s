	.file	"deb.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.read_u32,"ax",@progbits
	.align	1
	.type	read_u32, @function
read_u32:
.LFB0:
	.file 1 "bsp/io.h"
	.loc 1 6 40
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 1 7 14
	lw	a5,-20(s0)
	.loc 1 7 12
	lw	a5,0(a5)
	.loc 1 8 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	read_u32, .-read_u32
	.section	.text.write_u32,"ax",@progbits
	.align	1
	.type	write_u32, @function
write_u32:
.LFB1:
	.loc 1 10 52
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 11 7
	lw	a5,-24(s0)
	.loc 1 11 32
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 1 12 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	write_u32, .-write_u32
	.section	.text.uart_writeAvailability,"ax",@progbits
	.align	1
	.type	uart_writeAvailability, @function
uart_writeAvailability:
.LFB7:
	.file 2 "bsp/uart.h"
	.loc 2 22 43
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
	.loc 2 23 13
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 2 23 34
	srli	a5,a5,16
	.loc 2 23 41
	andi	a5,a5,255
	.loc 2 24 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	uart_writeAvailability, .-uart_writeAvailability
	.section	.text.uart_readOccupancy,"ax",@progbits
	.align	1
	.type	uart_readOccupancy, @function
uart_readOccupancy:
.LFB8:
	.loc 2 25 39
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
	.loc 2 26 12
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 2 26 33
	srli	a5,a5,24
	.loc 2 27 1
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
	.size	uart_readOccupancy, .-uart_readOccupancy
	.section	.text.uart_write,"ax",@progbits
	.align	1
	.type	uart_write, @function
uart_write:
.LFB9:
	.loc 2 29 43
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
	mv	a5,a1
	sb	a5,-21(s0)
	.loc 2 30 10
	nop
.L9:
	.loc 2 30 11 discriminator 1
	lw	a0,-20(s0)
	call	uart_writeAvailability
	mv	a5,a0
	.loc 2 30 10 discriminator 1
	beqz	a5,.L9
	.loc 2 31 5
	lbu	a5,-21(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	write_u32
	.loc 2 32 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	uart_write, .-uart_write
	.section	.text.uart_writeStr,"ax",@progbits
	.align	1
	.type	uart_writeStr, @function
uart_writeStr:
.LFB10:
	.loc 2 34 52
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
	.loc 2 35 10
	j	.L11
.L12:
	.loc 2 35 37 discriminator 2
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 2 35 17 discriminator 2
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-20(s0)
	call	uart_write
.L11:
	.loc 2 35 11 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 2 35 10 discriminator 1
	bnez	a5,.L12
	.loc 2 36 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE10:
	.size	uart_writeStr, .-uart_writeStr
	.section	.text.uart_writeHex,"ax",@progbits
	.align	1
	.type	uart_writeHex, @function
uart_writeHex:
.LFB11:
	.loc 2 38 46
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
.LBB2:
	.loc 2 39 13
	li	a5,7
	sw	a5,-20(s0)
	.loc 2 39 5
	j	.L14
.L17:
.LBB3:
	.loc 2 40 30
	lw	a5,-20(s0)
	slli	a5,a5,2
	.loc 2 40 26
	lw	a4,-40(s0)
	sra	a5,a4,a5
	.loc 2 40 13
	andi	a5,a5,15
	sw	a5,-24(s0)
	.loc 2 41 9
	lw	a4,-24(s0)
	li	a5,9
	ble	a4,a5,.L15
	.loc 2 41 45 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 2 41 9 discriminator 1
	addi	a5,a5,55
	andi	a5,a5,0xff
	j	.L16
.L15:
	.loc 2 41 56 discriminator 2
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 2 41 9 discriminator 2
	addi	a5,a5,48
	andi	a5,a5,0xff
.L16:
	.loc 2 41 9 is_stmt 0 discriminator 4
	mv	a1,a5
	lw	a0,-36(s0)
	call	uart_write
.LBE3:
	.loc 2 39 29 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L14:
	.loc 2 39 5 discriminator 2
	lw	a5,-20(s0)
	bgez	a5,.L17
.LBE2:
	.loc 2 43 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE11:
	.size	uart_writeHex, .-uart_writeHex
	.section	.text.uart_read,"ax",@progbits
	.align	1
	.type	uart_read, @function
uart_read:
.LFB12:
	.loc 2 45 31
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
	.loc 2 46 10
	nop
.L19:
	.loc 2 46 11 discriminator 1
	lw	a0,-20(s0)
	call	uart_readOccupancy
	mv	a5,a0
	.loc 2 46 10 discriminator 1
	beqz	a5,.L19
	.loc 2 47 12
	lw	a0,-20(s0)
	call	read_u32
	mv	a5,a0
	andi	a5,a5,0xff
	.loc 2 48 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE12:
	.size	uart_read, .-uart_read
	.section	.text.uart_applyConfig,"ax",@progbits
	.align	1
	.type	uart_applyConfig, @function
uart_applyConfig:
.LFB13:
	.loc 2 50 59
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
	.loc 2 51 5
	lw	a5,-24(s0)
	lw	a4,12(a5)
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 2 52 23
	lw	a5,-24(s0)
	lw	a5,0(a5)
	.loc 2 52 39
	addi	a4,a5,-1
	.loc 2 52 54
	lw	a5,-24(s0)
	lw	a5,4(a5)
	.loc 2 52 63
	slli	a5,a5,8
	.loc 2 52 45
	or	a4,a4,a5
	.loc 2 52 78
	lw	a5,-24(s0)
	lw	a5,8(a5)
	.loc 2 52 85
	slli	a5,a5,16
	.loc 2 52 69
	or	a4,a4,a5
	.loc 2 52 5
	lw	a5,-20(s0)
	addi	a5,a5,12
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 2 53 1
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
	.size	uart_applyConfig, .-uart_applyConfig
	.section	.text.clint_getTimeLow,"ax",@progbits
	.align	1
	.type	clint_getTimeLow, @function
clint_getTimeLow:
.LFB14:
	.file 3 "bsp/clint.h"
	.loc 3 10 44
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
	.loc 3 10 53
	lw	a4,-20(s0)
	li	a5,49152
	addi	a5,a5,-8
	add	a5,a4,a5
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 3 10 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE14:
	.size	clint_getTimeLow, .-clint_getTimeLow
	.section	.text.clint_getTimeHigh,"ax",@progbits
	.align	1
	.type	clint_getTimeHigh, @function
clint_getTimeHigh:
.LFB15:
	.loc 3 11 45
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
	.loc 3 11 54
	lw	a4,-20(s0)
	li	a5,49152
	addi	a5,a5,-4
	add	a5,a4,a5
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 3 11 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15:
	.size	clint_getTimeHigh, .-clint_getTimeHigh
	.section	.text.clint_setCmp,"ax",@progbits
	.align	1
	.type	clint_setCmp, @function
clint_setCmp:
.LFB16:
	.loc 3 14 54
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-32(s0)
	sw	a2,-28(s0)
	sw	a3,-24(s0)
	.loc 3 15 17
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-2048
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 3 15 7
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 3 16 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a1,a5
	li	a0,-1
	call	write_u32
	.loc 3 17 5
	lw	a5,-32(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	write_u32
	.loc 3 18 19
	lw	a5,-28(s0)
	srli	s2,a5,0
	li	s3,0
	.loc 3 18 5
	mv	a4,s2
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 3 19 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,20(sp)
	.cfi_restore 18
	lw	s3,16(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE16:
	.size	clint_setCmp, .-clint_setCmp
	.section	.text.clint_getTime,"ax",@progbits
	.align	1
	.type	clint_getTime, @function
clint_getTime:
.LFB17:
	.loc 3 21 32
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,68(sp)
	sw	s3,64(sp)
	sw	s4,60(sp)
	sw	s5,56(sp)
	sw	s6,52(sp)
	sw	s7,48(sp)
	sw	s8,44(sp)
	sw	s9,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
.L28:
	.loc 3 26 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeHigh
	sw	a0,-52(s0)
	.loc 3 27 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeLow
	sw	a0,-56(s0)
	.loc 3 28 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeHigh
	mv	a4,a0
	.loc 3 28 5 discriminator 1
	lw	a5,-52(s0)
	bne	a5,a4,.L28
	.loc 3 30 14
	lw	a5,-52(s0)
	mv	s8,a5
	li	s9,0
	.loc 3 30 23
	slli	s3,s8,0
	li	s2,0
	.loc 3 30 30
	lw	a5,-56(s0)
	mv	s4,a5
	li	s5,0
	or	s6,s2,s4
	or	s7,s3,s5
	mv	a5,s6
	mv	a6,s7
	.loc 3 31 1
	mv	a0,a5
	mv	a1,a6
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s2,68(sp)
	.cfi_restore 18
	lw	s3,64(sp)
	.cfi_restore 19
	lw	s4,60(sp)
	.cfi_restore 20
	lw	s5,56(sp)
	.cfi_restore 21
	lw	s6,52(sp)
	.cfi_restore 22
	lw	s7,48(sp)
	.cfi_restore 23
	lw	s8,44(sp)
	.cfi_restore 24
	lw	s9,40(sp)
	.cfi_restore 25
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE17:
	.size	clint_getTime, .-clint_getTime
	.globl	__udivsi3
	.globl	__mulsi3
	.section	.text.clint_uDelay,"ax",@progbits
	.align	1
	.type	clint_uDelay, @function
clint_uDelay:
.LFB18:
	.loc 3 34 52
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 3 35 9
	lw	a4,-40(s0)
	li	a5,999424
	addi	a1,a5,576
	mv	a0,a4
	call	__udivsi3
.LVL0:
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 3 36 17
	lw	a0,-44(s0)
	call	clint_getTimeLow
	mv	s1,a0
	.loc 3 36 45
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	__mulsi3
.LVL1:
	mv	a5,a0
	.loc 3 36 9
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 3 37 10
	nop
.L31:
	.loc 3 37 28 discriminator 1
	lw	a0,-44(s0)
	call	clint_getTimeLow
	mv	a4,a0
	.loc 3 37 26 discriminator 1
	lw	a5,-24(s0)
	sub	a5,a5,a4
	.loc 3 37 10 discriminator 1
	bgez	a5,.L31
	.loc 3 38 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE18:
	.size	clint_uDelay, .-clint_uDelay
	.section	.text.getcon,"ax",@progbits
	.align	1
	.globl	getcon
	.type	getcon, @function
getcon:
.LFB28:
	.file 4 "deb.c"
	.loc 4 19 15
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 21 8
	nop
	.loc 4 21 14
	li	a0,-268369920
	call	uart_read
	mv	a5,a0
	.loc 4 21 12
	sw	a5,-20(s0)
	.loc 4 23 9
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 4 24 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE28:
	.size	getcon, .-getcon
	.section	.text.consts,"ax",@progbits
	.align	1
	.globl	consts
	.type	consts, @function
consts:
.LFB29:
	.loc 4 27 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 28 10
	li	a0,-268369920
	call	uart_readOccupancy
	mv	a5,a0
	.loc 4 29 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE29:
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
.LFB30:
	.loc 4 36 1
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
	.loc 4 37 5
	lbu	a4,-17(s0)
	li	a5,13
	bne	a4,a5,.L37
	.loc 4 38 7
	lui	a5,%hi(col)
	sw	zero,%lo(col)(a5)
.L37:
	.loc 4 39 5
	lbu	a4,-17(s0)
	li	a5,31
	bleu	a4,a5,.L38
	.loc 4 40 6
	lui	a5,%hi(col)
	lw	a5,%lo(col)(a5)
	addi	a4,a5,1
	lui	a5,%hi(col)
	sw	a4,%lo(col)(a5)
.L38:
	.loc 4 41 2
	lbu	a5,-17(s0)
	mv	a0,a5
	call	putcon
	.loc 4 42 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE30:
	.size	putch, .-putch
	.section	.text.putcrlf,"ax",@progbits
	.align	1
	.globl	putcrlf
	.type	putcrlf, @function
putcrlf:
.LFB31:
	.loc 4 47 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 48 2
	li	a0,13
	call	putch
	.loc 4 49 2
	li	a0,10
	call	putch
	.loc 4 50 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE31:
	.size	putcrlf, .-putcrlf
	.section	.text.putback,"ax",@progbits
	.align	1
	.globl	putback
	.type	putback, @function
putback:
.LFB32:
	.loc 4 53 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 54 2
	li	a0,8
	call	putch
	.loc 4 54 15
	li	a0,32
	call	putch
	.loc 4 54 27
	li	a0,8
	call	putch
	.loc 4 55 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE32:
	.size	putback, .-putback
	.section	.text._error,"ax",@progbits
	.align	1
	.globl	_error
	.type	_error, @function
_error:
.LFB33:
	.loc 4 59 15
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 59 19
	call	putcrlf
	.loc 4 59 30
	li	a0,63
	call	putch
	.loc 4 59 42
	nop
	.loc 4 59 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE33:
	.size	_error, .-_error
	.section	.text.getline,"ax",@progbits
	.align	1
	.globl	getline
	.type	getline, @function
getline:
.LFB34:
	.loc 4 62 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 66 9
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 4 66 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-20(s0)
	.loc 4 67 5
	sw	zero,-24(s0)
.L56:
	.loc 4 69 15
	call	getcon
	mv	a5,a0
	sb	a5,-25(s0)
	.loc 4 69 13
	lbu	a5,-25(s0)
	li	a4,10
	beq	a5,a4,.L44
	li	a4,10
	bgt	a5,a4,.L45
	li	a4,8
	beq	a5,a4,.L46
	j	.L47
.L45:
	li	a4,13
	beq	a5,a4,.L44
	li	a4,24
	beq	a5,a4,.L48
	j	.L47
.L46:
	.loc 4 71 7
	lw	a5,-24(s0)
	beqz	a5,.L58
	.loc 4 72 6
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 4 73 7
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	.loc 4 74 5
	call	putback
	.loc 4 76 4
	j	.L58
.L44:
	.loc 4 78 7
	lw	a5,-20(s0)
	sb	zero,0(a5)
	.loc 4 80 4
	j	.L57
.L48:
	.loc 4 82 6
	lui	a5,%hi(line)
	addi	a5,a5,%lo(line)
	sw	a5,-20(s0)
	.loc 4 83 4
	j	.L52
.L53:
	.loc 4 84 5 discriminator 2
	call	putback
	.loc 4 83 22 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L52:
	.loc 4 83 4 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L53
	.loc 4 85 4
	j	.L50
.L47:
	.loc 4 87 7
	lbu	a4,-25(s0)
	li	a5,31
	bleu	a4,a5,.L56
.LBB4:
	.loc 4 88 13
	lbu	a5,-25(s0)
	sb	a5,-26(s0)
	.loc 4 88 19
	call	__locale_ctype_ptr
	mv	a4,a0
	.loc 4 88 59
	lbu	a5,-26(s0)
	.loc 4 88 58
	addi	a5,a5,1
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 4 88 71
	andi	a4,a5,3
	.loc 4 88 110
	li	a5,2
	bne	a4,a5,.L54
	.loc 4 88 88 discriminator 1
	lbu	a5,-26(s0)
	.loc 4 88 110 discriminator 1
	addi	a4,a5,-32
	j	.L55
.L54:
	.loc 4 88 110 is_stmt 0 discriminator 2
	lbu	a4,-26(s0)
.L55:
.LBE4:
	.loc 4 88 7 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 4 88 10 discriminator 4
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 4 89 7 discriminator 4
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 4 90 5 discriminator 4
	lbu	a5,-25(s0)
	mv	a0,a5
	call	putch
	j	.L56
.L58:
	.loc 4 76 4
	nop
.L50:
	.loc 4 69 3 discriminator 1
	j	.L56
.L57:
	.loc 4 94 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE34:
	.size	getline, .-getline
	.section	.text.inhex,"ax",@progbits
	.align	1
	.globl	inhex
	.type	inhex, @function
inhex:
.LFB35:
	.loc 4 97 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 98 4
	lbu	a5,-17(s0)
	addi	a5,a5,-48
	sb	a5,-17(s0)
	.loc 4 99 5
	lbu	a4,-17(s0)
	li	a5,9
	bgtu	a4,a5,.L60
	.loc 4 99 21 discriminator 1
	lbu	a5,-17(s0)
	j	.L61
.L60:
	.loc 4 100 4
	lbu	a5,-17(s0)
	addi	a5,a5,-7
	sb	a5,-17(s0)
	.loc 4 101 5
	lbu	a4,-17(s0)
	li	a5,9
	bleu	a4,a5,.L62
	.loc 4 101 16 discriminator 1
	lbu	a4,-17(s0)
	li	a5,15
	bgtu	a4,a5,.L62
	.loc 4 101 37 discriminator 2
	lbu	a5,-17(s0)
	j	.L61
.L62:
	.loc 4 102 9
	li	a5,-1
.L61:
	.loc 4 103 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE35:
	.size	inhex, .-inhex
	.section	.text.gethex,"ax",@progbits
	.align	1
	.globl	gethex
	.type	gethex, @function
gethex:
.LFB36:
	.loc 4 106 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 110 4
	sw	zero,-20(s0)
	.loc 4 111 2
	j	.L64
.L65:
	.loc 4 112 9 discriminator 2
	lw	a5,-20(s0)
	slli	a4,a5,4
	.loc 4 112 14 discriminator 2
	lw	a5,-24(s0)
	.loc 4 112 5 discriminator 2
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 4 111 35 discriminator 2
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a4,a5,1
	lui	a5,%hi(lp)
	sw	a4,%lo(lp)(a5)
.L64:
	.loc 4 111 14 discriminator 1
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	sw	a0,-24(s0)
	.loc 4 111 2 discriminator 1
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L65
	.loc 4 113 9
	lw	a5,-20(s0)
	.loc 4 114 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE36:
	.size	gethex, .-gethex
	.section	.text.getdata,"ax",@progbits
	.align	1
	.globl	getdata
	.type	getdata, @function
getdata:
.LFB37:
	.loc 4 119 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 120 6
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	mv	a4,a0
	.loc 4 120 5
	li	a5,-1
	bne	a4,a5,.L68
	.loc 4 121 10
	li	a5,0
	j	.L69
.L68:
	.loc 4 122 10
	call	gethex
	mv	a5,a0
.L69:
	.loc 4 123 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE37:
	.size	getdata, .-getdata
	.section	.text.ogetdata,"ax",@progbits
	.align	1
	.globl	ogetdata
	.type	ogetdata, @function
ogetdata:
.LFB38:
	.loc 4 128 1
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
	.loc 4 129 9
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	beqz	a5,.L71
	li	a4,44
	bne	a5,a4,.L72
.L71:
	.loc 4 132 10
	lw	a5,-20(s0)
	j	.L73
.L72:
	.loc 4 134 11
	call	getdata
	mv	a5,a0
.L73:
	.loc 4 136 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE38:
	.size	ogetdata, .-ogetdata
	.section	.text.puthex,"ax",@progbits
	.align	1
	.globl	puthex
	.type	puthex, @function
puthex:
.LFB39:
	.loc 4 147 1
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
	.loc 4 148 2
	lw	a4,-20(s0)
	li	a5,9
	bgtu	a4,a5,.L75
	.loc 4 148 19 discriminator 1
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 4 148 2 discriminator 1
	addi	a5,a5,48
	andi	a5,a5,0xff
	j	.L76
.L75:
	.loc 4 148 35 discriminator 2
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	.loc 4 148 2 discriminator 2
	addi	a5,a5,55
	andi	a5,a5,0xff
.L76:
	.loc 4 148 2 is_stmt 0 discriminator 4
	mv	a0,a5
	call	putch
	.loc 4 149 1 is_stmt 1 discriminator 4
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE39:
	.size	puthex, .-puthex
	.section	.text.puthxb,"ax",@progbits
	.align	1
	.globl	puthxb
	.type	puthxb, @function
puthxb:
.LFB40:
	.loc 4 152 1
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
	.loc 4 153 12
	lw	a5,-20(s0)
	srli	a5,a5,4
	.loc 4 153 2
	andi	a5,a5,15
	mv	a0,a5
	call	puthex
	.loc 4 154 2
	lw	a5,-20(s0)
	andi	a5,a5,15
	mv	a0,a5
	call	puthex
	.loc 4 155 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE40:
	.size	puthxb, .-puthxb
	.section	.text.puthxw,"ax",@progbits
	.align	1
	.globl	puthxw
	.type	puthxw, @function
puthxw:
.LFB41:
	.loc 4 158 1
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
	.loc 4 159 12
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 4 159 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 4 160 2
	lw	a5,-20(s0)
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 4 161 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE41:
	.size	puthxw, .-puthxw
	.section	.text.puthxww,"ax",@progbits
	.align	1
	.globl	puthxww
	.type	puthxww, @function
puthxww:
.LFB42:
	.loc 4 164 1
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
	.loc 4 165 12
	lw	a5,-20(s0)
	srli	a5,a5,24
	.loc 4 165 2
	mv	a0,a5
	call	puthxb
	.loc 4 166 12
	lw	a5,-20(s0)
	srli	a5,a5,16
	.loc 4 166 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 4 167 12
	lw	a5,-20(s0)
	srli	a5,a5,8
	.loc 4 167 2
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 4 168 2
	lw	a5,-20(s0)
	andi	a5,a5,255
	mv	a0,a5
	call	puthxb
	.loc 4 169 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE42:
	.size	puthxww, .-puthxww
	.section	.text.comma,"ax",@progbits
	.align	1
	.globl	comma
	.type	comma, @function
comma:
.LFB43:
	.loc 4 172 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 4 173 8
	nop
.L82:
	.loc 4 173 9 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 4 173 8 discriminator 2
	beqz	a5,.L81
	.loc 4 173 17 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 173 15 discriminator 1
	lbu	a4,0(a5)
	.loc 4 173 12 discriminator 1
	li	a5,44
	bne	a4,a5,.L82
.L81:
	.loc 4 175 9
	lw	a5,-20(s0)
	.loc 4 176 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE43:
	.size	comma, .-comma
	.section	.text.xdump,"ax",@progbits
	.align	1
	.globl	xdump
	.type	xdump, @function
xdump:
.LFB44:
	.loc 4 179 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 4 184 18
	lui	a5,%hi(datap)
	lw	a5,%lo(datap)(a5)
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 4 184 7
	sw	a5,-28(s0)
	.loc 4 185 8
	lw	a5,-28(s0)
	.loc 4 185 24
	srli	a5,a5,28
	.loc 4 185 5
	bnez	a5,.L85
	.loc 4 186 19
	lw	a4,-28(s0)
	.loc 4 186 34
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 4 186 8
	sw	a5,-28(s0)
.L85:
	.loc 4 188 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 4 188 7
	beqz	a5,.L86
	.loc 4 188 26 discriminator 1
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 4 188 23 discriminator 1
	lbu	a4,0(a5)
	.loc 4 188 20 discriminator 1
	li	a5,44
	bne	a4,a5,.L98
.L86:
	.loc 4 189 25
	lw	a5,-28(s0)
	.loc 4 189 16
	addi	a5,a5,127
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 4 189 5
	sw	a5,-32(s0)
	.loc 4 190 8
	lw	a5,-32(s0)
	.loc 4 190 22
	srli	a5,a5,28
	.loc 4 190 5
	bnez	a5,.L88
	.loc 4 191 17
	lw	a4,-32(s0)
	.loc 4 191 30
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 4 191 6
	sw	a5,-32(s0)
.L88:
	.loc 4 193 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 4 193 7
	bnez	a5,.L99
	.loc 4 194 9
	lw	a5,-28(s0)
	sw	a5,-20(s0)
	.loc 4 194 2
	j	.L90
.L97:
	.loc 4 195 9
	call	consts
	mv	a5,a0
	.loc 4 195 8
	beqz	a5,.L91
	.loc 4 195 21 discriminator 1
	call	getcon
	.loc 4 195 31 discriminator 1
	j	.L84
.L91:
	.loc 4 196 3
	call	putcrlf
	.loc 4 197 3
	lw	a5,-20(s0)
	mv	a0,a5
	call	puthxww
	.loc 4 198 3
	li	a0,58
	call	putch
	.loc 4 199 3
	li	a0,32
	call	putch
	.loc 4 200 5
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 4 200 13
	li	a5,16
	sw	a5,-36(s0)
.L92:
	.loc 4 202 13 discriminator 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 4 202 11 discriminator 1
	lbu	a5,0(a5)
	.loc 4 202 4 discriminator 1
	mv	a0,a5
	call	puthxb
	.loc 4 203 4 discriminator 1
	li	a0,32
	call	putch
	.loc 4 204 3 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L92
	.loc 4 205 3
	li	a0,32
	call	putch
	.loc 4 206 3
	li	a0,32
	call	putch
	.loc 4 207 5
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 4 207 13
	li	a5,16
	sw	a5,-36(s0)
.L95:
	.loc 4 209 18
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 4 209 4
	li	a5,31
	bleu	a4,a5,.L93
	.loc 4 209 24 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 4 209 21 discriminator 1
	li	a5,126
	bgtu	a4,a5,.L93
	.loc 4 209 4 discriminator 3
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	j	.L94
.L93:
	.loc 4 209 4 is_stmt 0 discriminator 4
	li	a5,46
.L94:
	.loc 4 209 4 discriminator 6
	mv	a0,a5
	call	putch
	.loc 4 210 5 is_stmt 1 discriminator 6
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 4 211 3 discriminator 6
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	bnez	a5,.L95
	.loc 4 194 41 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,16
	sw	a5,-20(s0)
.L90:
	.loc 4 194 2 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	bgtu	a4,a5,.L96
	.loc 4 194 27 discriminator 3
	lw	a4,-20(s0)
	lw	a5,-32(s0)
	bleu	a4,a5,.L97
.L96:
	.loc 4 213 8
	lui	a5,%hi(datap)
	lw	a4,-20(s0)
	sw	a4,%lo(datap)(a5)
	j	.L84
.L98:
	.loc 4 188 37
	nop
	j	.L84
.L99:
	.loc 4 193 21
	nop
.L84:
	.loc 4 214 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE44:
	.size	xdump, .-xdump
	.section	.text.xsubst,"ax",@progbits
	.align	1
	.globl	xsubst
	.type	xsubst, @function
xsubst:
.LFB45:
	.loc 4 217 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 220 15
	lui	a5,%hi(datap)
	lw	a5,%lo(datap)(a5)
	mv	a0,a5
	call	ogetdata
	mv	a5,a0
	.loc 4 220 4
	sw	a5,-20(s0)
	.loc 4 221 8
	lw	a5,-20(s0)
	.loc 4 221 21
	srli	a5,a5,28
	.loc 4 221 5
	bnez	a5,.L101
	.loc 4 222 19
	lw	a4,-20(s0)
	.loc 4 222 31
	li	a5,-2147483648
	add	a5,a4,a5
	.loc 4 222 5
	sw	a5,-20(s0)
.L101:
	.loc 4 225 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 4 225 7
	bnez	a5,.L110
.L102:
	.loc 4 228 3
	call	putcrlf
	.loc 4 229 3
	lw	a5,-20(s0)
	mv	a0,a5
	call	puthxww
	.loc 4 230 3
	li	a0,32
	call	putch
	.loc 4 231 3
	li	a0,32
	call	putch
	.loc 4 232 10
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 4 232 3
	mv	a0,a5
	call	puthxb
	.loc 4 233 3
	li	a0,32
	call	putch
	.loc 4 234 3
	call	getline
	.loc 4 235 15
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	li	a4,46
	beq	a5,a4,.L111
	li	a4,94
	beq	a5,a4,.L105
	beqz	a5,.L106
	j	.L109
.L105:
	.loc 4 239 5
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 4 240 4
	j	.L108
.L106:
	.loc 4 242 5
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 4 243 4
	j	.L108
.L109:
	.loc 4 245 11
	call	getdata
	mv	a3,a0
	.loc 4 245 6
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 245 9
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 4 246 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 4 246 9
	bnez	a5,.L112
.L108:
	.loc 4 228 3
	j	.L102
.L110:
	.loc 4 225 21
	nop
	j	.L100
.L111:
	.loc 4 237 4
	nop
	j	.L100
.L112:
	.loc 4 246 23
	nop
.L100:
	.loc 4 249 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE45:
	.size	xsubst, .-xsubst
	.section	.text.xfill,"ax",@progbits
	.align	1
	.globl	xfill
	.type	xfill, @function
xfill:
.LFB46:
	.loc 4 253 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 257 18
	call	getdata
	mv	a5,a0
	.loc 4 257 7
	sw	a5,-20(s0)
	.loc 4 258 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 4 258 7
	lbu	a4,0(a5)
	.loc 4 258 6
	li	a5,44
	bne	a4,a5,.L120
	.loc 4 259 16
	call	getdata
	mv	a5,a0
	.loc 4 259 5
	sw	a5,-28(s0)
	.loc 4 260 10
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 4 260 7
	lbu	a4,0(a5)
	.loc 4 260 6
	li	a5,44
	bne	a4,a5,.L121
	.loc 4 261 8
	call	getdata
	mv	a5,a0
	.loc 4 261 6
	sb	a5,-29(s0)
	.loc 4 262 8
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	lbu	a5,0(a5)
	.loc 4 262 7
	bnez	a5,.L122
	.loc 4 264 15
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	sub	a5,a4,a5
	.loc 4 264 22
	addi	a5,a5,1
	.loc 4 264 10
	sw	a5,-24(s0)
	.loc 4 264 2
	j	.L118
.L119:
	.loc 4 265 8 discriminator 3
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 265 11 discriminator 3
	lbu	a4,-29(s0)
	sb	a4,0(a5)
	.loc 4 264 36 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L118:
	.loc 4 264 2 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L119
	j	.L113
.L120:
	.loc 4 258 21
	nop
	j	.L113
.L121:
	.loc 4 260 21
	nop
	j	.L113
.L122:
	.loc 4 262 21
	nop
.L113:
	.loc 4 266 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE46:
	.size	xfill, .-xfill
	.comm	Sum,1,1
	.section	.text.hx1,"ax",@progbits
	.align	1
	.globl	hx1
	.type	hx1, @function
hx1:
.LFB47:
	.loc 4 270 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 272 11
	call	getcon
	mv	a5,a0
	mv	a0,a5
	call	inhex
	mv	a5,a0
	.loc 4 272 9
	sb	a5,-17(s0)
	.loc 4 272 5
	lbu	a4,-17(s0)
	li	a5,15
	bleu	a4,a5,.L124
	.loc 4 273 10
	li	a5,0
	j	.L125
.L124:
	.loc 4 274 9
	lbu	a5,-17(s0)
.L125:
	.loc 4 275 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE47:
	.size	hx1, .-hx1
	.section	.text.hxbyte,"ax",@progbits
	.align	1
	.globl	hxbyte
	.type	hxbyte, @function
hxbyte:
.LFB48:
	.loc 4 278 1
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
	.loc 4 280 6
	call	hx1
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 281 13
	lbu	a5,-17(s0)
	slli	a5,a5,4
	andi	s1,a5,0xff
	.loc 4 281 15
	call	hx1
	mv	a5,a0
	.loc 4 281 4
	add	a5,s1,a5
	sb	a5,-17(s0)
	.loc 4 282 6
	lui	a5,%hi(Sum)
	lbu	a4,%lo(Sum)(a5)
	lbu	a5,-17(s0)
	add	a5,a4,a5
	andi	a4,a5,0xff
	lui	a5,%hi(Sum)
	sb	a4,%lo(Sum)(a5)
	.loc 4 283 9
	lbu	a5,-17(s0)
	.loc 4 284 1
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
.LFE48:
	.size	hxbyte, .-hxbyte
	.section	.text.hxword,"ax",@progbits
	.align	1
	.globl	hxword
	.type	hxword, @function
hxword:
.LFB49:
	.loc 4 287 1
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
	.loc 4 289 6
	call	hxbyte
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 290 11
	lbu	a5,-17(s0)
	.loc 4 290 23
	slli	s1,a5,8
	.loc 4 290 31
	call	hxbyte
	mv	a5,a0
	.loc 4 290 29
	or	a5,s1,a5
	.loc 4 291 1
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
.LFE49:
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
.LFB50:
	.loc 4 296 1
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
	.loc 4 298 11
	li	a5,-2147483648
	sw	a5,-20(s0)
.L138:
	.loc 4 303 9 discriminator 1
	nop
.L131:
	.loc 4 303 10 discriminator 1
	call	getcon
	mv	a5,a0
	mv	a4,a5
	.loc 4 303 9 discriminator 1
	li	a5,58
	bne	a4,a5,.L131
	.loc 4 305 7
	lui	a5,%hi(Sum)
	sb	zero,%lo(Sum)(a5)
	.loc 4 306 9
	call	hxbyte
	mv	a5,a0
	.loc 4 306 7
	sw	a5,-24(s0)
	.loc 4 307 6
	lw	a5,-24(s0)
	beqz	a5,.L139
	.loc 4 309 16
	call	hxword
	mv	a5,a0
	.loc 4 309 5
	sw	a5,-28(s0)
	.loc 4 310 11
	call	hxbyte
	mv	a5,a0
	.loc 4 310 9
	sw	a5,-32(s0)
	.loc 4 311 6
	lw	a5,-32(s0)
	beqz	a5,.L134
	.loc 4 312 7
	lw	a4,-32(s0)
	li	a5,4
	bne	a4,a5,.L135
	.loc 4 313 11
	call	hxword
	mv	a5,a0
	.loc 4 313 9
	slli	a5,a5,16
	sw	a5,-20(s0)
	.loc 4 314 5
	call	hxbyte
	.loc 4 315 5
	j	.L136
.L135:
	.loc 4 316 14
	lw	a4,-32(s0)
	li	a5,5
	bne	a4,a5,.L140
	.loc 4 317 11
	call	hxword
	mv	a5,a0
	.loc 4 317 9
	slli	a5,a5,16
	sw	a5,-20(s0)
	.loc 4 318 12
	call	hxword
	mv	a4,a0
	.loc 4 318 9
	lw	a5,-20(s0)
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 4 319 5
	call	hxbyte
	.loc 4 320 15
	lui	a5,%hi(STARTADDR)
	lw	a4,-20(s0)
	sw	a4,%lo(STARTADDR)(a5)
	.loc 4 321 5
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	xprintf
	.loc 4 322 5
	j	.L136
.L134:
	.loc 4 328 9 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-20(s0)
	add	s1,a4,a5
	.loc 4 328 15 discriminator 1
	call	hxbyte
	mv	a5,a0
	.loc 4 328 13 discriminator 1
	sb	a5,0(s1)
	.loc 4 329 5 discriminator 1
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
	.loc 4 330 3 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	bnez	a5,.L134
	.loc 4 331 3
	call	hxbyte
	.loc 4 332 11
	lui	a5,%hi(Sum)
	lbu	a5,%lo(Sum)(a5)
	.loc 4 332 6
	beqz	a5,.L138
	.loc 4 333 6
	call	putcrlf
	.loc 4 333 17
	li	a0,63
	call	putch
	.loc 4 333 29
	j	.L130
.L136:
	.loc 4 303 9
	j	.L138
.L139:
	.loc 4 308 4
	nop
	j	.L130
.L140:
	.loc 4 324 5
	nop
.L130:
	.loc 4 335 1
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
.LFE50:
	.size	xread, .-xread
	.section	.text.hx1lp,"ax",@progbits
	.align	1
	.globl	hx1lp
	.type	hx1lp, @function
hx1lp:
.LFB51:
	.loc 4 338 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 341 20
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	addi	a3,a5,1
	lui	a4,%hi(lp)
	sw	a3,%lo(lp)(a4)
	.loc 4 341 11
	lbu	a5,0(a5)
	mv	a0,a5
	call	inhex
	mv	a5,a0
	.loc 4 341 9
	sb	a5,-17(s0)
	.loc 4 341 5
	lbu	a4,-17(s0)
	li	a5,15
	bleu	a4,a5,.L142
	.loc 4 342 5
	sb	zero,-17(s0)
.L142:
	.loc 4 343 9
	lbu	a5,-17(s0)
	.loc 4 344 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE51:
	.size	hx1lp, .-hx1lp
	.section	.text.hxbytelp,"ax",@progbits
	.align	1
	.globl	hxbytelp
	.type	hxbytelp, @function
hxbytelp:
.LFB52:
	.loc 4 347 1
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
	.loc 4 350 6
	call	hx1lp
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 351 13
	lbu	a5,-17(s0)
	slli	a5,a5,4
	andi	s1,a5,0xff
	.loc 4 351 15
	call	hx1lp
	mv	a5,a0
	.loc 4 351 4
	add	a5,s1,a5
	sb	a5,-17(s0)
	.loc 4 352 6
	lui	a5,%hi(Sum)
	lbu	a4,%lo(Sum)(a5)
	lbu	a5,-17(s0)
	add	a5,a4,a5
	andi	a4,a5,0xff
	lui	a5,%hi(Sum)
	sb	a4,%lo(Sum)(a5)
	.loc 4 353 9
	lbu	a5,-17(s0)
	.loc 4 354 1
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
.LFE52:
	.size	hxbytelp, .-hxbytelp
	.section	.text.hxwordlp,"ax",@progbits
	.align	1
	.globl	hxwordlp
	.type	hxwordlp, @function
hxwordlp:
.LFB53:
	.loc 4 357 1
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
	.loc 4 360 6
	call	hxbytelp
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 4 361 11
	lbu	a5,-17(s0)
	.loc 4 361 23
	slli	s1,a5,8
	.loc 4 361 31
	call	hxbytelp
	mv	a5,a0
	.loc 4 361 29
	or	a5,s1,a5
	.loc 4 362 1
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
.LFE53:
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
.LFB54:
	.loc 4 367 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	.loc 4 372 2
	call	putcrlf
	.loc 4 373 2
	li	a2,0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(FatFs)
	addi	a0,a5,%lo(FatFs)
	call	f_mount
	.loc 4 374 7
	addi	a1,s0,-92
	addi	a4,s0,-68
	lui	a5,%hi(.LC2)
	addi	a3,a5,%lo(.LC2)
	lui	a5,%hi(.LC1)
	addi	a2,a5,%lo(.LC1)
	mv	a0,a4
	call	f_findfirst
	sw	a0,-20(s0)
	.loc 4 375 8
	j	.L149
.L153:
	.loc 4 376 10
	lbu	a5,-84(s0)
	.loc 4 376 19
	andi	a5,a5,16
	.loc 4 376 6
	beqz	a5,.L150
	.loc 4 377 4
	addi	a5,s0,-92
	addi	a5,a5,9
	mv	a1,a5
	lui	a5,%hi(.LC3)
	addi	a0,a5,%lo(.LC3)
	call	xprintf
	j	.L151
.L150:
	.loc 4 379 4
	addi	a5,s0,-92
	addi	a5,a5,9
	mv	a1,a5
	lui	a5,%hi(.LC4)
	addi	a0,a5,%lo(.LC4)
	call	xprintf
.L151:
	.loc 4 381 8
	addi	a4,s0,-92
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	f_findnext
	sw	a0,-20(s0)
.L149:
	.loc 4 375 8
	lw	a5,-20(s0)
	bnez	a5,.L152
	.loc 4 375 33 discriminator 1
	lbu	a5,-83(s0)
	.loc 4 375 21 discriminator 1
	bnez	a5,.L153
.L152:
	.loc 4 383 2
	addi	a5,s0,-68
	mv	a0,a5
	call	f_closedir
	.loc 4 384 1
	nop
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE54:
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
.LFB55:
	.loc 4 387 1
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
	.loc 4 391 11
	li	a5,-2147483648
	sw	a5,-24(s0)
	.loc 4 398 2
	call	putcrlf
	.loc 4 399 2
	li	a2,0
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(FatFs)
	addi	a0,a5,%lo(FatFs)
	call	f_mount
	.loc 4 400 7
	addi	a4,s0,-600
	li	a2,1
	lui	a5,%hi(line+1)
	addi	a1,a5,%lo(line+1)
	mv	a0,a4
	call	f_open
	sw	a0,-44(s0)
	.loc 4 401 5
	lw	a5,-44(s0)
	beqz	a5,.L155
	.loc 4 402 3
	lui	a5,%hi(line+1)
	addi	a1,a5,%lo(line+1)
	lui	a5,%hi(.LC5)
	addi	a0,a5,%lo(.LC5)
	call	xprintf
	j	.L154
.L155:
	.loc 4 406 12
	sw	zero,-32(s0)
.L172:
	.loc 4 408 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 4 408 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
.L162:
	.loc 4 410 4
	addi	a4,s0,-604
	addi	a5,s0,-600
	mv	a3,a4
	li	a2,1
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 4 411 11
	lw	a4,-604(s0)
	.loc 4 411 7
	li	a5,1
	bne	a4,a5,.L175
	.loc 4 412 8
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 4 412 7
	li	a5,58
	beq	a4,a5,.L176
	.loc 4 413 8
	lw	a5,-48(s0)
	lbu	a4,0(a5)
	.loc 4 413 7
	li	a5,32
	bgtu	a4,a5,.L177
	.loc 4 410 4 discriminator 1
	j	.L162
.L176:
	.loc 4 412 4
	nop
	j	.L160
.L177:
	.loc 4 414 4
	nop
.L160:
	.loc 4 417 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 4 417 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
	.loc 4 418 3
	addi	a4,s0,-604
	addi	a5,s0,-600
	mv	a3,a4
	li	a2,2
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 4 419 10
	lw	a4,-604(s0)
	.loc 4 419 6
	li	a5,2
	bne	a4,a5,.L178
	.loc 4 420 7
	lui	a5,%hi(Sum)
	sb	zero,%lo(Sum)(a5)
	.loc 4 421 9
	call	hxbytelp
	mv	a5,a0
	.loc 4 421 7
	sw	a5,-20(s0)
	.loc 4 422 6
	lw	a5,-20(s0)
	beqz	a5,.L179
	.loc 4 422 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,40
	bgtu	a4,a5,.L179
	.loc 4 424 7
	lui	a5,%hi(lp)
	lui	a4,%hi(line)
	addi	a4,a4,%lo(line)
	sw	a4,%lo(lp)(a5)
	.loc 4 424 4
	lui	a5,%hi(lp)
	lw	a5,%lo(lp)(a5)
	sw	a5,-48(s0)
	.loc 4 425 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	.loc 4 425 29
	slli	a4,a5,1
	.loc 4 425 3
	addi	a3,s0,-604
	addi	a5,s0,-600
	mv	a2,a4
	lw	a1,-48(s0)
	mv	a0,a5
	call	f_read
	.loc 4 426 23
	lw	a5,-20(s0)
	addi	a5,a5,4
	slli	a4,a5,1
	.loc 4 426 10
	lw	a5,-604(s0)
	.loc 4 426 6
	bne	a4,a5,.L180
	.loc 4 428 18
	call	hxwordlp
	mv	a5,a0
	.loc 4 428 7
	sw	a5,-28(s0)
	.loc 4 429 11
	call	hxbytelp
	mv	a5,a0
	.loc 4 429 9
	sw	a5,-52(s0)
	.loc 4 430 6
	lw	a5,-52(s0)
	beqz	a5,.L167
	.loc 4 431 7
	lw	a4,-52(s0)
	li	a5,4
	bne	a4,a5,.L168
	.loc 4 432 11
	call	hxwordlp
	mv	a5,a0
	.loc 4 432 9
	slli	a5,a5,16
	sw	a5,-24(s0)
	.loc 4 433 5
	call	hxbytelp
	.loc 4 434 5
	j	.L169
.L168:
	.loc 4 435 14
	lw	a4,-52(s0)
	li	a5,5
	bne	a4,a5,.L181
	.loc 4 436 11
	call	hxwordlp
	mv	a5,a0
	.loc 4 436 9
	slli	a5,a5,16
	sw	a5,-24(s0)
	.loc 4 437 12
	call	hxwordlp
	mv	a4,a0
	.loc 4 437 9
	lw	a5,-24(s0)
	or	a5,a5,a4
	sw	a5,-24(s0)
	.loc 4 438 5
	call	hxbytelp
	.loc 4 439 15
	lui	a5,%hi(STARTADDR)
	lw	a4,-24(s0)
	sw	a4,%lo(STARTADDR)(a5)
	.loc 4 440 5
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC6)
	addi	a0,a5,%lo(.LC6)
	call	xprintf
	.loc 4 441 5
	j	.L169
.L167:
	.loc 4 446 12
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	sw	a5,-32(s0)
.L171:
	.loc 4 448 11 discriminator 1
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 4 448 7 discriminator 1
	lw	a4,-24(s0)
	add	s1,a5,a4
	.loc 4 448 17 discriminator 1
	call	hxbytelp
	mv	a5,a0
	.loc 4 448 15 discriminator 1
	sb	a5,0(s1)
	.loc 4 449 3 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L171
	.loc 4 450 3
	call	hxbytelp
	.loc 4 451 11
	lui	a5,%hi(Sum)
	lbu	a5,%lo(Sum)(a5)
	.loc 4 451 6
	beqz	a5,.L172
	.loc 4 452 4
	lui	a5,%hi(.LC7)
	addi	a0,a5,%lo(.LC7)
	call	xprintf
	.loc 4 453 4
	j	.L158
.L169:
	.loc 4 408 4
	j	.L172
.L175:
	.loc 4 411 17
	nop
	j	.L158
.L178:
	.loc 4 419 16
	nop
	j	.L158
.L179:
	.loc 4 423 4
	nop
	j	.L158
.L180:
	.loc 4 426 28
	nop
	j	.L158
.L181:
	.loc 4 443 5
	nop
.L158:
	.loc 4 457 2
	addi	a5,s0,-600
	mv	a0,a5
	call	f_close
	.loc 4 458 2
	lw	a1,-32(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	xprintf
.LBB5:
	.loc 4 462 12
	sw	zero,-40(s0)
	.loc 4 463 16
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	.loc 4 463 12
	sw	a5,-56(s0)
	.loc 4 464 8
	sw	zero,-36(s0)
	.loc 4 464 3
	j	.L173
.L174:
	.loc 4 465 12 discriminator 3
	lw	a5,-36(s0)
	lw	a4,-56(s0)
	add	a5,a4,a5
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 4 465 8 discriminator 3
	lw	a5,-40(s0)
	add	a5,a5,a4
	sw	a5,-40(s0)
	.loc 4 464 24 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L173:
	.loc 4 464 12 discriminator 1
	lw	a5,-36(s0)
	.loc 4 464 3 discriminator 1
	lw	a4,-32(s0)
	bgtu	a4,a5,.L174
	.loc 4 467 3
	lw	a1,-40(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	xprintf
.L154:
.LBE5:
	.loc 4 469 1
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
.LFE55:
	.size	xsdread, .-xsdread
	.globl	HelpMsg
	.section	.rodata
	.align	2
.LC10:
	.string	"D:Dump     - D(Begin),(End)\nF:Fill     - F(Begin),(End),(Val)\nG:Go       - G<STARTENTRY:fromihex>\nR:Read Intel Hex\nS:Set      - S(Addr)\n=:SD DIR   - =\n!:SD IHEX  - !(Filename)\nT:TP TEST\n"
	.section	.sdata
	.align	2
	.type	HelpMsg, @object
	.size	HelpMsg, 4
HelpMsg:
	.word	.LC10
	.section	.text.xhelp,"ax",@progbits
	.align	1
	.globl	xhelp
	.type	xhelp, @function
xhelp:
.LFB56:
	.loc 4 517 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 518 2
	lui	a5,%hi(HelpMsg)
	lw	a5,%lo(HelpMsg)(a5)
	mv	a0,a5
	call	xprintf
	.loc 4 519 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE56:
	.size	xhelp, .-xhelp
	.section	.text.xgo,"ax",@progbits
	.align	1
	.globl	xgo
	.type	xgo, @function
xgo:
.LFB57:
	.loc 4 522 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 4 524 3
	lui	a5,%hi(STARTADDR)
	lw	a5,%lo(STARTADDR)(a5)
	jalr	a5
.LVL2:
	.loc 4 525 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE57:
	.size	xgo, .-xgo
	.globl	comtbl
	.data
	.align	2
	.type	comtbl, @object
	.size	comtbl, 72
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
	.byte	0
	.zero	3
	.word	_error
	.section	.rodata
	.align	2
.LC11:
	.string	"*** VexRiscv Monitor ***"
	.align	2
.LC12:
	.string	"\n>>>"
	.section	.text._main,"ax",@progbits
	.align	1
	.globl	_main
	.type	_main, @function
_main:
.LFB58:
	.loc 4 550 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 4 555 2
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	xprintf
.L191:
	.loc 4 559 3
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	xprintf
	.loc 4 560 3
	call	getline
	.loc 4 561 11
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	.loc 4 561 6
	beqz	a5,.L192
	.loc 4 565 6
	lui	a5,%hi(lp)
	lui	a4,%hi(line+1)
	addi	a4,a4,%lo(line+1)
	sw	a4,%lo(lp)(a5)
	.loc 4 566 10
	lui	a5,%hi(comtbl)
	addi	a5,a5,%lo(comtbl)
	sw	a5,-20(s0)
	.loc 4 566 3
	j	.L187
.L190:
	.loc 4 567 17
	lui	a5,%hi(line)
	lbu	a5,%lo(line)(a5)
	.loc 4 567 7
	lbu	a4,-21(s0)
	beq	a4,a5,.L193
	.loc 4 566 40 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,8
	sw	a5,-20(s0)
.L187:
	.loc 4 566 22 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	sb	a5,-21(s0)
	.loc 4 566 3 discriminator 1
	lbu	a5,-21(s0)
	bnez	a5,.L190
	j	.L189
.L193:
	.loc 4 568 5
	nop
.L189:
	.loc 4 570 4
	lw	a5,-20(s0)
	lw	a5,4(a5)
	jalr	a5
.LVL3:
	j	.L191
.L192:
	.loc 4 563 4
	nop
	.loc 4 559 3
	j	.L191
	.cfi_endproc
.LFE58:
	.size	_main, .-_main
	.text
.Letext0:
	.file 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 6 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 7 "ff.h"
	.file 8 "bsp/type.h"
	.file 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h"
	.file 10 "xprintf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xffb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF156
	.byte	0xc
	.4byte	.LASF157
	.4byte	.LASF158
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x69
	.byte	0x20
	.4byte	0x92
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF14
	.byte	0x5
	.4byte	0xc5
	.4byte	0xb9
	.byte	0x6
	.byte	0
	.byte	0x7
	.4byte	0xae
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x7
	.4byte	0xbe
	.byte	0x8
	.4byte	.LASF90
	.byte	0x9
	.byte	0xa5
	.byte	0x13
	.4byte	0xb9
	.byte	0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2d
	.byte	0x16
	.4byte	0xa0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x38
	.byte	0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.4byte	0xe2
	.byte	0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x30
	.byte	0x12
	.4byte	0xfa
	.byte	0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x63
	.byte	0xe
	.4byte	0xbe
	.byte	0x7
	.4byte	0x142
	.byte	0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x7c
	.byte	0xf
	.4byte	0x136
	.byte	0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x7d
	.byte	0xf
	.4byte	0x136
	.byte	0x9
	.2byte	0x228
	.byte	0x7
	.byte	0x84
	.byte	0x9
	.4byte	0x245
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x85
	.byte	0x7
	.4byte	0x11e
	.byte	0
	.byte	0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x86
	.byte	0x7
	.4byte	0x11e
	.byte	0x1
	.byte	0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x87
	.byte	0x7
	.4byte	0x11e
	.byte	0x2
	.byte	0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x88
	.byte	0x7
	.4byte	0x11e
	.byte	0x3
	.byte	0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x89
	.byte	0x7
	.4byte	0x11e
	.byte	0x4
	.byte	0xb
	.string	"id"
	.byte	0x7
	.byte	0x8a
	.byte	0x7
	.4byte	0x12a
	.byte	0x6
	.byte	0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x8b
	.byte	0x7
	.4byte	0x12a
	.byte	0x8
	.byte	0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x8c
	.byte	0x7
	.4byte	0x12a
	.byte	0xa
	.byte	0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0xa5
	.byte	0x8
	.4byte	0x136
	.byte	0xc
	.byte	0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0xa6
	.byte	0x8
	.4byte	0x136
	.byte	0x10
	.byte	0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0xa7
	.byte	0x8
	.4byte	0x15f
	.byte	0x14
	.byte	0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0xa8
	.byte	0x8
	.4byte	0x15f
	.byte	0x18
	.byte	0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0xa9
	.byte	0x8
	.4byte	0x15f
	.byte	0x1c
	.byte	0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0xaa
	.byte	0x8
	.4byte	0x15f
	.byte	0x20
	.byte	0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0xae
	.byte	0x8
	.4byte	0x15f
	.byte	0x24
	.byte	0xb
	.string	"win"
	.byte	0x7
	.byte	0xaf
	.byte	0x7
	.4byte	0x245
	.byte	0x28
	.byte	0
	.byte	0x5
	.4byte	0x11e
	.4byte	0x256
	.byte	0xc
	.4byte	0xa0
	.2byte	0x1ff
	.byte	0
	.byte	0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0xb0
	.byte	0x3
	.4byte	0x16b
	.byte	0xd
	.byte	0x10
	.byte	0x7
	.byte	0xb6
	.byte	0x9
	.4byte	0x2b8
	.byte	0xb
	.string	"fs"
	.byte	0x7
	.byte	0xb7
	.byte	0x9
	.4byte	0x2b8
	.byte	0
	.byte	0xb
	.string	"id"
	.byte	0x7
	.byte	0xb8
	.byte	0x7
	.4byte	0x12a
	.byte	0x4
	.byte	0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0xb9
	.byte	0x7
	.4byte	0x11e
	.byte	0x6
	.byte	0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0xba
	.byte	0x7
	.4byte	0x11e
	.byte	0x7
	.byte	0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0xbb
	.byte	0x8
	.4byte	0x136
	.byte	0x8
	.byte	0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0xbc
	.byte	0xa
	.4byte	0x153
	.byte	0xc
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x256
	.byte	0x3
	.4byte	.LASF47
	.byte	0x7
	.byte	0xc7
	.byte	0x3
	.4byte	0x262
	.byte	0x9
	.2byte	0x220
	.byte	0x7
	.byte	0xcd
	.byte	0x9
	.4byte	0x330
	.byte	0xb
	.string	"obj"
	.byte	0x7
	.byte	0xce
	.byte	0xa
	.4byte	0x2be
	.byte	0
	.byte	0xa
	.4byte	.LASF48
	.byte	0x7
	.byte	0xcf
	.byte	0x7
	.4byte	0x11e
	.byte	0x10
	.byte	0xb
	.string	"err"
	.byte	0x7
	.byte	0xd0
	.byte	0x7
	.4byte	0x11e
	.byte	0x11
	.byte	0xa
	.4byte	.LASF49
	.byte	0x7
	.byte	0xd1
	.byte	0xa
	.4byte	0x153
	.byte	0x14
	.byte	0xa
	.4byte	.LASF50
	.byte	0x7
	.byte	0xd2
	.byte	0x8
	.4byte	0x136
	.byte	0x18
	.byte	0xa
	.4byte	.LASF51
	.byte	0x7
	.byte	0xd3
	.byte	0x8
	.4byte	0x15f
	.byte	0x1c
	.byte	0xb
	.string	"buf"
	.byte	0x7
	.byte	0xdc
	.byte	0x7
	.4byte	0x245
	.byte	0x20
	.byte	0
	.byte	0xf
	.string	"FIL"
	.byte	0x7
	.byte	0xde
	.byte	0x3
	.4byte	0x2ca
	.byte	0xd
	.byte	0x30
	.byte	0x7
	.byte	0xe4
	.byte	0x9
	.4byte	0x3a0
	.byte	0xb
	.string	"obj"
	.byte	0x7
	.byte	0xe5
	.byte	0xa
	.4byte	0x2be
	.byte	0
	.byte	0xa
	.4byte	.LASF52
	.byte	0x7
	.byte	0xe6
	.byte	0x8
	.4byte	0x136
	.byte	0x10
	.byte	0xa
	.4byte	.LASF50
	.byte	0x7
	.byte	0xe7
	.byte	0x8
	.4byte	0x136
	.byte	0x14
	.byte	0xa
	.4byte	.LASF51
	.byte	0x7
	.byte	0xe8
	.byte	0x8
	.4byte	0x15f
	.byte	0x18
	.byte	0xb
	.string	"dir"
	.byte	0x7
	.byte	0xe9
	.byte	0x8
	.4byte	0x3a0
	.byte	0x1c
	.byte	0xb
	.string	"fn"
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x3a6
	.byte	0x20
	.byte	0xb
	.string	"pat"
	.byte	0x7
	.byte	0xef
	.byte	0xf
	.4byte	0x3b6
	.byte	0x2c
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x11e
	.byte	0x5
	.4byte	0x11e
	.4byte	0x3b6
	.byte	0x10
	.4byte	0xa0
	.byte	0xb
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x14e
	.byte	0xf
	.string	"DIR"
	.byte	0x7
	.byte	0xf1
	.byte	0x3
	.4byte	0x33c
	.byte	0xd
	.byte	0x18
	.byte	0x7
	.byte	0xf7
	.byte	0x9
	.4byte	0x414
	.byte	0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0xf8
	.byte	0xa
	.4byte	0x153
	.byte	0
	.byte	0xa
	.4byte	.LASF53
	.byte	0x7
	.byte	0xf9
	.byte	0x7
	.4byte	0x12a
	.byte	0x4
	.byte	0xa
	.4byte	.LASF54
	.byte	0x7
	.byte	0xfa
	.byte	0x7
	.4byte	0x12a
	.byte	0x6
	.byte	0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0xfb
	.byte	0x7
	.4byte	0x11e
	.byte	0x8
	.byte	0x11
	.4byte	.LASF56
	.byte	0x7
	.2byte	0x100
	.byte	0x8
	.4byte	0x414
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0x142
	.4byte	0x424
	.byte	0x10
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0x12
	.4byte	.LASF57
	.byte	0x7
	.2byte	0x102
	.byte	0x3
	.4byte	0x3c8
	.byte	0x13
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x7
	.2byte	0x114
	.byte	0xe
	.4byte	0x4b9
	.byte	0x14
	.4byte	.LASF58
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x14
	.4byte	.LASF60
	.byte	0x2
	.byte	0x14
	.4byte	.LASF61
	.byte	0x3
	.byte	0x14
	.4byte	.LASF62
	.byte	0x4
	.byte	0x14
	.4byte	.LASF63
	.byte	0x5
	.byte	0x14
	.4byte	.LASF64
	.byte	0x6
	.byte	0x14
	.4byte	.LASF65
	.byte	0x7
	.byte	0x14
	.4byte	.LASF66
	.byte	0x8
	.byte	0x14
	.4byte	.LASF67
	.byte	0x9
	.byte	0x14
	.4byte	.LASF68
	.byte	0xa
	.byte	0x14
	.4byte	.LASF69
	.byte	0xb
	.byte	0x14
	.4byte	.LASF70
	.byte	0xc
	.byte	0x14
	.4byte	.LASF71
	.byte	0xd
	.byte	0x14
	.4byte	.LASF72
	.byte	0xe
	.byte	0x14
	.4byte	.LASF73
	.byte	0xf
	.byte	0x14
	.4byte	.LASF74
	.byte	0x10
	.byte	0x14
	.4byte	.LASF75
	.byte	0x11
	.byte	0x14
	.4byte	.LASF76
	.byte	0x12
	.byte	0x14
	.4byte	.LASF77
	.byte	0x13
	.byte	0
	.byte	0x12
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x129
	.byte	0x3
	.4byte	0x431
	.byte	0xf
	.string	"u64"
	.byte	0x8
	.byte	0x6
	.byte	0x12
	.4byte	0x106
	.byte	0xf
	.string	"u32"
	.byte	0x8
	.byte	0x9
	.byte	0x12
	.4byte	0xfa
	.byte	0x15
	.4byte	.LASF80
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xb
	.byte	0x6
	.4byte	0x4f7
	.byte	0x14
	.4byte	.LASF79
	.byte	0x8
	.byte	0
	.byte	0x15
	.4byte	.LASF81
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xc
	.byte	0x6
	.4byte	0x51c
	.byte	0x14
	.4byte	.LASF82
	.byte	0
	.byte	0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x16
	.string	"ODD"
	.byte	0x2
	.byte	0
	.byte	0x15
	.4byte	.LASF84
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xd
	.byte	0x6
	.4byte	0x53b
	.byte	0x16
	.string	"ONE"
	.byte	0
	.byte	0x16
	.string	"TWO"
	.byte	0x1
	.byte	0
	.byte	0xd
	.byte	0x10
	.byte	0x2
	.byte	0xf
	.byte	0x9
	.4byte	0x579
	.byte	0xa
	.4byte	.LASF85
	.byte	0x2
	.byte	0x10
	.byte	0x19
	.4byte	0x4de
	.byte	0
	.byte	0xa
	.4byte	.LASF86
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x4f7
	.byte	0x4
	.byte	0xa
	.4byte	.LASF87
	.byte	0x2
	.byte	0x12
	.byte	0x13
	.4byte	0x51c
	.byte	0x8
	.byte	0xa
	.4byte	.LASF88
	.byte	0x2
	.byte	0x13
	.byte	0x9
	.4byte	0x4d2
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF89
	.byte	0x2
	.byte	0x14
	.byte	0x3
	.4byte	0x53b
	.byte	0x17
	.4byte	0x590
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0x8
	.4byte	.LASF91
	.byte	0xa
	.byte	0x13
	.byte	0xf
	.4byte	0x59c
	.byte	0xe
	.byte	0x4
	.4byte	0x585
	.byte	0x19
	.string	"col"
	.byte	0x4
	.byte	0x1f
	.byte	0xa
	.4byte	0xfa
	.byte	0x5
	.byte	0x3
	.4byte	col
	.byte	0x5
	.4byte	0xbe
	.4byte	0x5c4
	.byte	0x10
	.4byte	0xa0
	.byte	0x4f
	.byte	0
	.byte	0x1a
	.4byte	.LASF92
	.byte	0x4
	.byte	0x20
	.byte	0x6
	.4byte	0x5b4
	.byte	0x5
	.byte	0x3
	.4byte	line
	.byte	0x19
	.string	"lp"
	.byte	0x4
	.byte	0x20
	.byte	0x11
	.4byte	0x5e7
	.byte	0x5
	.byte	0x3
	.4byte	lp
	.byte	0xe
	.byte	0x4
	.4byte	0xbe
	.byte	0x1a
	.4byte	.LASF93
	.byte	0x4
	.byte	0x21
	.byte	0x7
	.4byte	0x3a0
	.byte	0x5
	.byte	0x3
	.4byte	datap
	.byte	0x1a
	.4byte	.LASF94
	.byte	0x4
	.byte	0x21
	.byte	0xf
	.4byte	0x3a0
	.byte	0x5
	.byte	0x3
	.4byte	codep
	.byte	0x1b
	.string	"Sum"
	.byte	0x4
	.2byte	0x10c
	.byte	0x9
	.4byte	0xd6
	.byte	0x5
	.byte	0x3
	.4byte	Sum
	.byte	0x1c
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x125
	.byte	0xa
	.4byte	0xfa
	.byte	0x5
	.byte	0x3
	.4byte	STARTADDR
	.byte	0x1c
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x16d
	.byte	0x7
	.4byte	0x256
	.byte	0x5
	.byte	0x3
	.4byte	FatFs
	.byte	0x1c
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x1f9
	.byte	0xd
	.4byte	0x65d
	.byte	0x5
	.byte	0x3
	.4byte	HelpMsg
	.byte	0xe
	.byte	0x4
	.4byte	0xc5
	.byte	0x1d
	.byte	0x8
	.byte	0x4
	.2byte	0x20f
	.byte	0x9
	.4byte	0x68a
	.byte	0x11
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x210
	.byte	0x7
	.4byte	0xbe
	.byte	0
	.byte	0x11
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x211
	.byte	0x9
	.4byte	0x691
	.byte	0x4
	.byte	0
	.byte	0x1e
	.4byte	0x691
	.byte	0x1f
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x68a
	.byte	0x12
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x212
	.byte	0x3
	.4byte	0x663
	.byte	0x5
	.4byte	0x697
	.4byte	0x6b4
	.byte	0x10
	.4byte	0xa0
	.byte	0x8
	.byte	0
	.byte	0x1c
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x214
	.byte	0x9
	.4byte	0x6a4
	.byte	0x5
	.byte	0x3
	.4byte	comtbl
	.byte	0x20
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x225
	.byte	0x6
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fb
	.byte	0x21
	.string	"p"
	.byte	0x4
	.2byte	0x227
	.byte	0xb
	.4byte	0x6fb
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"c"
	.byte	0x4
	.2byte	0x228
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x697
	.byte	0x22
	.string	"xgo"
	.byte	0x4
	.2byte	0x209
	.byte	0x6
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x204
	.byte	0x6
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x1
	.byte	0x9c
	.byte	0x20
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x182
	.byte	0x6
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x1
	.byte	0x9c
	.4byte	0x81d
	.byte	0x21
	.string	"len"
	.byte	0x4
	.2byte	0x184
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x24
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x185
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x25
	.4byte	.LASF159
	.byte	0x4
	.2byte	0x186
	.byte	0xb
	.4byte	0xfa
	.byte	0x21
	.string	"seg"
	.byte	0x4
	.2byte	0x187
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.string	"p"
	.byte	0x4
	.2byte	0x188
	.byte	0x8
	.4byte	0x5e7
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x21
	.string	"adr"
	.byte	0x4
	.2byte	0x188
	.byte	0xb
	.4byte	0x5e7
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x21
	.string	"fr"
	.byte	0x4
	.2byte	0x189
	.byte	0xa
	.4byte	0x4b9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x21
	.string	"fil"
	.byte	0x4
	.2byte	0x18a
	.byte	0x6
	.4byte	0x330
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7b
	.byte	0x21
	.string	"rc"
	.byte	0x4
	.2byte	0x18b
	.byte	0x7
	.4byte	0x112
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7b
	.byte	0x24
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x18c
	.byte	0x7
	.4byte	0x112
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x26
	.4byte	.LASF160
	.byte	0x4
	.2byte	0x1c8
	.byte	0x1
	.4byte	.L158
	.byte	0x27
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x21
	.string	"i"
	.byte	0x4
	.2byte	0x1cd
	.byte	0x7
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x21
	.string	"sum"
	.byte	0x4
	.2byte	0x1ce
	.byte	0xc
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x21
	.string	"p"
	.byte	0x4
	.2byte	0x1cf
	.byte	0xc
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0xd6
	.byte	0x20
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x16e
	.byte	0x6
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x1
	.byte	0x9c
	.4byte	0x86b
	.byte	0x21
	.string	"fr"
	.byte	0x4
	.2byte	0x170
	.byte	0xa
	.4byte	0x4b9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"dj"
	.byte	0x4
	.2byte	0x171
	.byte	0x6
	.4byte	0x3bc
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x21
	.string	"fno"
	.byte	0x4
	.2byte	0x172
	.byte	0xa
	.4byte	0x424
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x28
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x164
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x1
	.byte	0x9c
	.4byte	0x895
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x166
	.byte	0xa
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x15a
	.byte	0x9
	.4byte	0xd6
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x1
	.byte	0x9c
	.4byte	0x8bf
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x15c
	.byte	0xa
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x151
	.byte	0x9
	.4byte	0xd6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0x8e9
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x153
	.byte	0xa
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x20
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x127
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0x93f
	.byte	0x24
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x129
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x21
	.string	"seg"
	.byte	0x4
	.2byte	0x12a
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x21
	.string	"len"
	.byte	0x4
	.2byte	0x12b
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x21
	.string	"p"
	.byte	0x4
	.2byte	0x12c
	.byte	0x8
	.4byte	0x5e7
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x28
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x11e
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0x969
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x120
	.byte	0x7
	.4byte	0x11e
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x28
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x115
	.byte	0x9
	.4byte	0xd6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0x993
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x117
	.byte	0xa
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x29
	.string	"hx1"
	.byte	0x4
	.2byte	0x10d
	.byte	0x9
	.4byte	0xd6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0x9bd
	.byte	0x21
	.string	"x"
	.byte	0x4
	.2byte	0x10f
	.byte	0xa
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2a
	.4byte	.LASF114
	.byte	0x4
	.byte	0xfc
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0xa0e
	.byte	0x2b
	.4byte	.LASF115
	.byte	0x4
	.byte	0xfe
	.byte	0xb
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2c
	.string	"to"
	.byte	0x4
	.byte	0xfe
	.byte	0x12
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2c
	.string	"dat"
	.byte	0x4
	.byte	0xfe
	.byte	0x16
	.4byte	0xd6
	.byte	0x2
	.byte	0x91
	.byte	0x63
	.byte	0x2c
	.string	"ct"
	.byte	0x4
	.byte	0xff
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2a
	.4byte	.LASF116
	.byte	0x4
	.byte	0xd8
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0xa32
	.byte	0x2c
	.string	"p"
	.byte	0x4
	.byte	0xda
	.byte	0xb
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2a
	.4byte	.LASF117
	.byte	0x4
	.byte	0xb2
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8e
	.byte	0x2c
	.string	"p"
	.byte	0x4
	.byte	0xb4
	.byte	0xb
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2c
	.string	"q"
	.byte	0x4
	.byte	0xb4
	.byte	0xf
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2b
	.4byte	.LASF115
	.byte	0x4
	.byte	0xb5
	.byte	0xb
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2c
	.string	"to"
	.byte	0x4
	.byte	0xb5
	.byte	0x12
	.4byte	0x81d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2c
	.string	"ct"
	.byte	0x4
	.byte	0xb6
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x2d
	.4byte	.LASF122
	.byte	0x4
	.byte	0xab
	.byte	0x7
	.4byte	0x5e7
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xab6
	.byte	0x2e
	.string	"p"
	.byte	0x4
	.byte	0xab
	.byte	0x13
	.4byte	0x5e7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LASF118
	.byte	0x4
	.byte	0xa3
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xada
	.byte	0x2e
	.string	"n"
	.byte	0x4
	.byte	0xa3
	.byte	0x17
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LASF119
	.byte	0x4
	.byte	0x9d
	.byte	0x6
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xafe
	.byte	0x2e
	.string	"n"
	.byte	0x4
	.byte	0x9d
	.byte	0x16
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LASF120
	.byte	0x4
	.byte	0x97
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xb22
	.byte	0x2e
	.string	"n"
	.byte	0x4
	.byte	0x97
	.byte	0x16
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LASF121
	.byte	0x4
	.byte	0x92
	.byte	0x6
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xb46
	.byte	0x2e
	.string	"n"
	.byte	0x4
	.byte	0x92
	.byte	0x16
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x30
	.4byte	.LASF123
	.byte	0x4
	.byte	0x7f
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6e
	.byte	0x2e
	.string	"p"
	.byte	0x4
	.byte	0x7f
	.byte	0x1c
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x31
	.4byte	.LASF131
	.byte	0x4
	.byte	0x76
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF124
	.byte	0x4
	.byte	0x69
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0xbb9
	.byte	0x2c
	.string	"c"
	.byte	0x4
	.byte	0x6b
	.byte	0x6
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2c
	.string	"v"
	.byte	0x4
	.byte	0x6c
	.byte	0xb
	.4byte	0xfa
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2d
	.4byte	.LASF125
	.byte	0x4
	.byte	0x60
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe1
	.byte	0x2e
	.string	"c"
	.byte	0x4
	.byte	0x60
	.byte	0x10
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2a
	.4byte	.LASF126
	.byte	0x4
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0xc39
	.byte	0x2c
	.string	"c"
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x2c
	.string	"p"
	.byte	0x4
	.byte	0x3f
	.byte	0xb
	.4byte	0x5e7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2c
	.string	"ct"
	.byte	0x4
	.byte	0x40
	.byte	0x6
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x27
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x2c
	.string	"__x"
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF127
	.byte	0x4
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.byte	0x33
	.4byte	.LASF128
	.byte	0x4
	.byte	0x34
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.byte	0x33
	.4byte	.LASF129
	.byte	0x4
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.byte	0x2f
	.4byte	.LASF130
	.byte	0x4
	.byte	0x23
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0xca1
	.byte	0x2e
	.string	"c"
	.byte	0x4
	.byte	0x23
	.byte	0x11
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x34
	.4byte	.LASF161
	.byte	0x4
	.byte	0x29
	.byte	0x2
	.4byte	0x99
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF132
	.byte	0x4
	.byte	0x1a
	.byte	0xa
	.4byte	0xfa
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF133
	.byte	0x4
	.byte	0x13
	.byte	0x6
	.4byte	0xbe
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xcdf
	.byte	0x2c
	.string	"c"
	.byte	0x4
	.byte	0x14
	.byte	0x6
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x35
	.4byte	.LASF137
	.byte	0x3
	.byte	0x22
	.byte	0xd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xd40
	.byte	0x36
	.4byte	.LASF134
	.byte	0x3
	.byte	0x22
	.byte	0x1e
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2e
	.string	"hz"
	.byte	0x3
	.byte	0x22
	.byte	0x28
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2e
	.string	"reg"
	.byte	0x3
	.byte	0x22
	.byte	0x30
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2b
	.4byte	.LASF135
	.byte	0x3
	.byte	0x23
	.byte	0x9
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF136
	.byte	0x3
	.byte	0x24
	.byte	0x9
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF140
	.byte	0x3
	.byte	0x15
	.byte	0xc
	.4byte	0x4c6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xd85
	.byte	0x2e
	.string	"p"
	.byte	0x3
	.byte	0x15
	.byte	0x1e
	.4byte	0x4d2
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x2c
	.string	"lo"
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2c
	.string	"hi"
	.byte	0x3
	.byte	0x16
	.byte	0xd
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x35
	.4byte	.LASF138
	.byte	0x3
	.byte	0xe
	.byte	0xd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xdc7
	.byte	0x2e
	.string	"p"
	.byte	0x3
	.byte	0xe
	.byte	0x1e
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2e
	.string	"cmp"
	.byte	0x3
	.byte	0xe
	.byte	0x25
	.4byte	0x4c6
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x36
	.4byte	.LASF139
	.byte	0x3
	.byte	0xe
	.byte	0x2e
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF141
	.byte	0x3
	.byte	0xb
	.byte	0x13
	.4byte	0x4d2
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xdf1
	.byte	0x2e
	.string	"reg"
	.byte	0x3
	.byte	0xb
	.byte	0x29
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x37
	.4byte	.LASF142
	.byte	0x3
	.byte	0xa
	.byte	0x13
	.4byte	0x4d2
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1b
	.byte	0x2e
	.string	"reg"
	.byte	0x3
	.byte	0xa
	.byte	0x28
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x35
	.4byte	.LASF143
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xe50
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x32
	.byte	0x22
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x36
	.4byte	.LASF144
	.byte	0x2
	.byte	0x32
	.byte	0x34
	.4byte	0xe50
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x579
	.byte	0x37
	.4byte	.LASF145
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.4byte	0xbe
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xe80
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x35
	.4byte	.LASF146
	.byte	0x2
	.byte	0x26
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xee5
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x26
	.byte	0x1f
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x36
	.4byte	.LASF147
	.byte	0x2
	.byte	0x26
	.byte	0x28
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x2c
	.string	"i"
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x27
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x2c
	.string	"hex"
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF148
	.byte	0x2
	.byte	0x22
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xf1a
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x22
	.byte	0x1f
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2e
	.string	"str"
	.byte	0x2
	.byte	0x22
	.byte	0x30
	.4byte	0x65d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x35
	.4byte	.LASF149
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xf4f
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x1d
	.byte	0x1c
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x36
	.4byte	.LASF150
	.byte	0x2
	.byte	0x1d
	.byte	0x26
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x37
	.4byte	.LASF151
	.byte	0x2
	.byte	0x19
	.byte	0xc
	.4byte	0x4d2
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xf79
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x19
	.byte	0x23
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x37
	.4byte	.LASF152
	.byte	0x2
	.byte	0x16
	.byte	0xc
	.4byte	0x4d2
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xfa3
	.byte	0x2e
	.string	"reg"
	.byte	0x2
	.byte	0x16
	.byte	0x27
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x38
	.4byte	.LASF153
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xfd8
	.byte	0x36
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x36
	.4byte	.LASF154
	.byte	0x1
	.byte	0xa
	.byte	0x2c
	.4byte	0x4d2
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x39
	.4byte	.LASF155
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0x4d2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x36
	.4byte	.LASF154
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.4byte	0x4d2
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
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.4byte	0x17c
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
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
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
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF83:
	.string	"EVEN"
.LASF76:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF161:
	.string	"putcon"
.LASF28:
	.string	"fs_type"
.LASF97:
	.string	"HelpMsg"
.LASF20:
	.string	"uint64_t"
.LASF132:
	.string	"consts"
.LASF3:
	.string	"__uint8_t"
.LASF123:
	.string	"ogetdata"
.LASF125:
	.string	"inhex"
.LASF114:
	.string	"xfill"
.LASF33:
	.string	"n_rootdir"
.LASF139:
	.string	"hart_id"
.LASF110:
	.string	"hx1lp"
.LASF151:
	.string	"uart_readOccupancy"
.LASF12:
	.string	"long long unsigned int"
.LASF156:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF148:
	.string	"uart_writeStr"
.LASF136:
	.string	"limit"
.LASF51:
	.string	"sect"
.LASF95:
	.string	"STARTADDR"
.LASF39:
	.string	"dirbase"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF98:
	.string	"mnemo"
.LASF77:
	.string	"FR_INVALID_PARAMETER"
.LASF36:
	.string	"fsize"
.LASF109:
	.string	"hxbytelp"
.LASF35:
	.string	"n_fatent"
.LASF67:
	.string	"FR_INVALID_OBJECT"
.LASF7:
	.string	"long int"
.LASF112:
	.string	"hxword"
.LASF30:
	.string	"n_fats"
.LASF84:
	.string	"UartStop"
.LASF96:
	.string	"FatFs"
.LASF71:
	.string	"FR_NO_FILESYSTEM"
.LASF17:
	.string	"uint16_t"
.LASF75:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF66:
	.string	"FR_EXIST"
.LASF38:
	.string	"fatbase"
.LASF24:
	.string	"DWORD"
.LASF85:
	.string	"dataLength"
.LASF26:
	.string	"FSIZE_t"
.LASF116:
	.string	"xsubst"
.LASF86:
	.string	"parity"
.LASF153:
	.string	"write_u32"
.LASF92:
	.string	"line"
.LASF8:
	.string	"__uint32_t"
.LASF122:
	.string	"comma"
.LASF34:
	.string	"csize"
.LASF145:
	.string	"uart_read"
.LASF100:
	.string	"TBENTRY"
.LASF29:
	.string	"pdrv"
.LASF22:
	.string	"BYTE"
.LASF135:
	.string	"mTimePerUsec"
.LASF147:
	.string	"value"
.LASF43:
	.string	"attr"
.LASF119:
	.string	"puthxw"
.LASF13:
	.string	"unsigned int"
.LASF111:
	.string	"xread"
.LASF149:
	.string	"uart_write"
.LASF126:
	.string	"getline"
.LASF21:
	.string	"UINT"
.LASF54:
	.string	"ftime"
.LASF9:
	.string	"long unsigned int"
.LASF80:
	.string	"UartDataLength"
.LASF150:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF40:
	.string	"database"
.LASF82:
	.string	"NONE"
.LASF60:
	.string	"FR_INT_ERR"
.LASF59:
	.string	"FR_DISK_ERR"
.LASF41:
	.string	"winsect"
.LASF140:
	.string	"clint_getTime"
.LASF101:
	.string	"comtbl"
.LASF58:
	.string	"FR_OK"
.LASF56:
	.string	"fname"
.LASF115:
	.string	"from"
.LASF68:
	.string	"FR_WRITE_PROTECTED"
.LASF42:
	.string	"FATFS"
.LASF53:
	.string	"fdate"
.LASF49:
	.string	"fptr"
.LASF88:
	.string	"clockDivider"
.LASF14:
	.string	"long double"
.LASF154:
	.string	"address"
.LASF73:
	.string	"FR_TIMEOUT"
.LASF107:
	.string	"xdir"
.LASF23:
	.string	"WORD"
.LASF45:
	.string	"sclust"
.LASF62:
	.string	"FR_NO_FILE"
.LASF113:
	.string	"hxbyte"
.LASF130:
	.string	"putch"
.LASF25:
	.string	"TCHAR"
.LASF134:
	.string	"usec"
.LASF70:
	.string	"FR_NOT_ENABLED"
.LASF117:
	.string	"xdump"
.LASF142:
	.string	"clint_getTimeLow"
.LASF11:
	.string	"__uint64_t"
.LASF143:
	.string	"uart_applyConfig"
.LASF120:
	.string	"puthxb"
.LASF105:
	.string	"dtype"
.LASF146:
	.string	"uart_writeHex"
.LASF104:
	.string	"xsdread"
.LASF102:
	.string	"xhelp"
.LASF108:
	.string	"hxwordlp"
.LASF138:
	.string	"clint_setCmp"
.LASF46:
	.string	"objsize"
.LASF91:
	.string	"xfunc_out"
.LASF93:
	.string	"datap"
.LASF18:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF103:
	.string	"_main"
.LASF121:
	.string	"puthex"
.LASF2:
	.string	"short int"
.LASF131:
	.string	"getdata"
.LASF48:
	.string	"flag"
.LASF118:
	.string	"puthxww"
.LASF69:
	.string	"FR_INVALID_DRIVE"
.LASF65:
	.string	"FR_DENIED"
.LASF52:
	.string	"dptr"
.LASF72:
	.string	"FR_MKFS_ABORTED"
.LASF157:
	.string	"deb.c"
.LASF74:
	.string	"FR_LOCKED"
.LASF79:
	.string	"BITS_8"
.LASF31:
	.string	"wflag"
.LASF19:
	.string	"uint32_t"
.LASF124:
	.string	"gethex"
.LASF15:
	.string	"char"
.LASF99:
	.string	"func"
.LASF144:
	.string	"config"
.LASF4:
	.string	"__uint16_t"
.LASF155:
	.string	"read_u32"
.LASF90:
	.string	"_ctype_"
.LASF6:
	.string	"__int32_t"
.LASF89:
	.string	"Uart_Config"
.LASF159:
	.string	"allsum"
.LASF160:
	.string	"L_EOF"
.LASF37:
	.string	"volbase"
.LASF152:
	.string	"uart_writeAvailability"
.LASF106:
	.string	"bytecount"
.LASF64:
	.string	"FR_INVALID_NAME"
.LASF129:
	.string	"putcrlf"
.LASF32:
	.string	"fsi_flag"
.LASF128:
	.string	"putback"
.LASF55:
	.string	"fattrib"
.LASF158:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF94:
	.string	"codep"
.LASF57:
	.string	"FILINFO"
.LASF127:
	.string	"_error"
.LASF16:
	.string	"uint8_t"
.LASF27:
	.string	"LBA_t"
.LASF44:
	.string	"stat"
.LASF137:
	.string	"clint_uDelay"
.LASF78:
	.string	"FRESULT"
.LASF63:
	.string	"FR_NO_PATH"
.LASF133:
	.string	"getcon"
.LASF141:
	.string	"clint_getTimeHigh"
.LASF61:
	.string	"FR_NOT_READY"
.LASF87:
	.string	"stop"
.LASF47:
	.string	"FFOBJID"
.LASF81:
	.string	"UartParity"
.LASF50:
	.string	"clust"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
