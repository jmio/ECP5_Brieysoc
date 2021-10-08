	.file	"main.c"
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
	.section	.text.write_u32_ad,"ax",@progbits
	.align	1
	.type	write_u32_ad, @function
write_u32_ad:
.LFB6:
	.loc 1 30 55
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 31 7
	lw	a5,-20(s0)
	.loc 1 31 32
	lw	a4,-24(s0)
	sw	a4,0(a5)
	.loc 1 32 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	write_u32_ad, .-write_u32_ad
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
.L10:
	.loc 2 30 11 discriminator 1
	lw	a0,-20(s0)
	call	uart_writeAvailability
	mv	a5,a0
	.loc 2 30 10 discriminator 1
	beqz	a5,.L10
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
	j	.L12
.L13:
	.loc 2 35 37 discriminator 2
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 2 35 17 discriminator 2
	lbu	a5,0(a5)
	mv	a1,a5
	lw	a0,-20(s0)
	call	uart_write
.L12:
	.loc 2 35 11 discriminator 1
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	.loc 2 35 10 discriminator 1
	bnez	a5,.L13
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
	j	.L15
.L18:
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
	ble	a4,a5,.L16
	.loc 2 41 45 discriminator 1
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 2 41 9 discriminator 1
	addi	a5,a5,55
	andi	a5,a5,0xff
	j	.L17
.L16:
	.loc 2 41 56 discriminator 2
	lw	a5,-24(s0)
	andi	a5,a5,0xff
	.loc 2 41 9 discriminator 2
	addi	a5,a5,48
	andi	a5,a5,0xff
.L17:
	.loc 2 41 9 is_stmt 0 discriminator 4
	mv	a1,a5
	lw	a0,-36(s0)
	call	uart_write
.LBE3:
	.loc 2 39 29 is_stmt 1 discriminator 4
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L15:
	.loc 2 39 5 discriminator 2
	lw	a5,-20(s0)
	bgez	a5,.L18
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
.L20:
	.loc 2 46 11 discriminator 1
	lw	a0,-20(s0)
	call	uart_readOccupancy
	mv	a5,a0
	.loc 2 46 10 discriminator 1
	beqz	a5,.L20
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
.L29:
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
	bne	a5,a4,.L29
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
.L32:
	.loc 3 37 28 discriminator 1
	lw	a0,-44(s0)
	call	clint_getTimeLow
	mv	a4,a0
	.loc 3 37 26 discriminator 1
	lw	a5,-24(s0)
	sub	a5,a5,a4
	.loc 3 37 10 discriminator 1
	bgez	a5,.L32
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
	.section	.text.gpio_setOutput,"ax",@progbits
	.align	1
	.type	gpio_setOutput, @function
gpio_setOutput:
.LFB21:
	.file 4 "bsp/gpio.h"
	.loc 4 17 54
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
	.loc 4 17 56
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a1,a5
	lw	a0,-24(s0)
	call	write_u32
	.loc 4 17 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE21:
	.size	gpio_setOutput, .-gpio_setOutput
	.section	.text.gpio_setOutputEnable,"ax",@progbits
	.align	1
	.type	gpio_setOutputEnable, @function
gpio_setOutputEnable:
.LFB23:
	.loc 4 19 60
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
	.loc 4 19 62
	lw	a5,-20(s0)
	addi	a5,a5,8
	mv	a1,a5
	lw	a0,-24(s0)
	call	write_u32
	.loc 4 19 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE23:
	.size	gpio_setOutputEnable, .-gpio_setOutputEnable
	.globl	__divsi3
	.section	.text.t2c,"ax",@progbits
	.align	1
	.type	t2c, @function
t2c:
.LFB28:
	.file 5 "bsp/sdram.h"
	.loc 5 82 95
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 5 83 36
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 5 83 50
	addi	a5,a5,-1
	.loc 5 83 54
	lw	a1,-32(s0)
	mv	a0,a5
	call	__divsi3
.LVL2:
	mv	a5,a0
	mv	a4,a5
	.loc 5 83 24
	lw	a5,-20(s0)
	add	a4,a4,a5
	.loc 5 83 67
	lw	a5,-24(s0)
	sub	a4,a4,a5
	.loc 5 83 79
	lw	a5,-36(s0)
	add	a5,a4,a5
	.loc 5 83 93
	addi	a5,a5,-1
	.loc 5 83 98
	lw	a1,-36(s0)
	mv	a0,a5
	call	__divsi3
.LVL3:
	mv	a5,a0
	.loc 5 84 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE28:
	.size	t2c, .-t2c
	.section	.text.sat,"ax",@progbits
	.align	1
	.type	sat, @function
sat:
.LFB29:
	.loc 5 86 23
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 5 87 31
	lw	a5,-20(s0)
	bgez	a5,.L38
	li	a5,0
.L38:
	.loc 5 88 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE29:
	.size	sat, .-sat
	.section	.rodata
	.align	2
	.type	MT41K128M16JT_125_ps, @object
	.size	MT41K128M16JT_125_ps, 44
MT41K128M16JT_125_ps:
	.word	3
	.word	160000
	.word	35000
	.word	13750
	.word	13750
	.word	7500
	.word	15000
	.word	7500
	.word	7500
	.word	7800000
	.word	40000
	.align	2
	.type	MT47H64M16HR_25_ps, @object
	.size	MT47H64M16HR_25_ps, 44
MT47H64M16HR_25_ps:
	.word	2
	.word	127500
	.word	40000
	.word	15000
	.word	15000
	.word	7500
	.word	15000
	.word	7500
	.word	10000
	.word	7800000
	.word	45000
	.align	2
	.type	MT48LC16M16A2_6A_ps, @object
	.size	MT48LC16M16A2_6A_ps, 44
MT48LC16M16A2_6A_ps:
	.word	0
	.word	60000
	.word	42000
	.word	18000
	.word	18000
	.word	0
	.word	6000
	.word	0
	.word	12000
	.word	7812500
	.word	0
	.align	2
	.type	AS4C32M16SB_7TCN_ps, @object
	.size	AS4C32M16SB_7TCN_ps, 44
AS4C32M16SB_7TCN_ps:
	.word	0
	.word	63000
	.word	42000
	.word	21000
	.word	21000
	.word	0
	.word	7000
	.word	0
	.word	14000
	.word	7800000
	.word	0
	.section	.text.sdram_udelay,"ax",@progbits
	.align	1
	.type	sdram_udelay, @function
sdram_udelay:
.LFB30:
	.loc 5 146 33
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
	.loc 5 148 5
	li	a2,-256901120
	li	a5,49999872
	addi	a1,a5,128
	lw	a0,-20(s0)
	call	clint_uDelay
	.loc 5 153 1
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
	.size	sdram_udelay, .-sdram_udelay
	.section	.text.sdram_command,"ax",@progbits
	.align	1
	.type	sdram_command, @function
sdram_command:
.LFB31:
	.loc 5 155 68
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
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	.loc 5 156 5
	lw	a5,-20(s0)
	addi	a5,a5,268
	lw	a1,-28(s0)
	mv	a0,a5
	call	write_u32_ad
	.loc 5 157 5
	lw	a5,-20(s0)
	addi	a5,a5,264
	lw	a1,-32(s0)
	mv	a0,a5
	call	write_u32_ad
	.loc 5 158 5
	lw	a5,-20(s0)
	addi	a5,a5,260
	lw	a1,-24(s0)
	mv	a0,a5
	call	write_u32_ad
	.loc 5 159 5
	lw	a5,-20(s0)
	addi	a5,a5,256
	li	a1,0
	mv	a0,a5
	call	write_u32_ad
	.loc 5 160 5
	li	a0,1
	call	sdram_udelay
	.loc 5 161 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE31:
	.size	sdram_command, .-sdram_command
	.globl	__umodsi3
	.section	.text.sdram_init,"ax",@progbits
	.align	1
	.type	sdram_init, @function
sdram_init:
.LFB32:
	.loc 5 164 124
	.cfi_startproc
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	sw	s2,144(sp)
	sw	s3,140(sp)
	sw	s4,136(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	s0,sp,160
	.cfi_def_cfa 8, 0
	sw	a0,-132(s0)
	sw	a1,-136(s0)
	sw	a2,-140(s0)
	mv	s1,a3
	sw	a4,-144(s0)
	sw	a5,-148(s0)
	sw	a6,-152(s0)
	.loc 5 165 30
	lw	a4,-136(s0)
	lw	a5,-148(s0)
	add	a5,a4,a5
	.loc 5 165 42
	addi	a5,a5,-1
	.loc 5 165 9
	lw	a1,-148(s0)
	mv	a0,a5
	call	__udivsi3
.LVL4:
	mv	a5,a0
	sw	a5,-48(s0)
	.loc 5 166 36
	lw	a1,-148(s0)
	lw	a0,-48(s0)
	call	__mulsi3
.LVL5:
	mv	a5,a0
	mv	a4,a5
	.loc 5 166 9
	lw	a5,-136(s0)
	sub	a5,a4,a5
	sw	a5,-52(s0)
	.loc 5 167 31
	lw	a4,-140(s0)
	lw	a5,-148(s0)
	add	a5,a4,a5
	.loc 5 167 43
	addi	a5,a5,-1
	.loc 5 167 9
	lw	a1,-148(s0)
	mv	a0,a5
	call	__udivsi3
.LVL6:
	mv	a5,a0
	sw	a5,-56(s0)
	.loc 5 168 38
	lw	a1,-148(s0)
	lw	a0,-56(s0)
	call	__mulsi3
.LVL7:
	mv	a5,a0
	mv	a4,a5
	.loc 5 168 9
	lw	a5,-140(s0)
	sub	a5,a4,a5
	sw	a5,-60(s0)
	.loc 5 169 9
	sw	zero,-64(s0)
	.loc 5 170 9
	sw	zero,-68(s0)
	.loc 5 171 9
	lw	a1,-148(s0)
	lw	a0,-144(s0)
	call	__mulsi3
.LVL8:
	mv	a5,a0
	sw	a5,-72(s0)
	.loc 5 175 9
	sw	zero,-36(s0)
	.loc 5 176 9
	sw	zero,-40(s0)
	.loc 5 177 9
	li	a5,1
	sw	a5,-76(s0)
	.loc 5 178 18
	lw	a5,0(s1)
	li	a4,2
	bgtu	a5,a4,.L43
	bnez	a5,.L44
	j	.L53
.L43:
	li	a4,3
	beq	a5,a4,.L46
	j	.L47
.L53:
	.loc 5 180 19
	li	a5,1
	sw	a5,-40(s0)
	.loc 5 181 9
	j	.L47
.L44:
	.loc 5 184 19
	li	a5,2
	sw	a5,-40(s0)
	.loc 5 185 9
	j	.L47
.L46:
	.loc 5 187 18
	li	a5,4
	sw	a5,-36(s0)
	.loc 5 188 19
	li	a5,2
	sw	a5,-40(s0)
	.loc 5 189 9
	nop
.L47:
	.loc 5 192 33
	lw	a1,-148(s0)
	lw	a0,-152(s0)
	call	__mulsi3
.LVL9:
	mv	a5,a0
	.loc 5 192 9
	sw	a5,-80(s0)
	.loc 5 193 32
	lw	a5,36(s1)
	.loc 5 193 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	li	a1,0
	li	a0,0
	call	t2c
	sw	a0,-84(s0)
	.loc 5 194 16
	lw	a5,-64(s0)
	lw	a1,-68(s0)
	.loc 5 194 57
	lw	a4,8(s1)
	.loc 5 194 16
	mv	a2,a4
	lw	a3,-152(s0)
	lw	a4,-148(s0)
	mv	a0,a5
	call	t2c
	sw	a0,-88(s0)
	.loc 5 195 15
	lw	a5,-68(s0)
	lw	a1,-64(s0)
	.loc 5 195 56
	lw	a4,12(s1)
	.loc 5 195 15
	mv	a2,a4
	lw	a3,-152(s0)
	lw	a4,-148(s0)
	mv	a0,a5
	call	t2c
	sw	a0,-92(s0)
	.loc 5 196 16
	lw	a5,-64(s0)
	lw	a1,-64(s0)
	.loc 5 196 54
	lw	a4,4(s1)
	.loc 5 196 16
	mv	a2,a4
	lw	a3,-152(s0)
	lw	a4,-148(s0)
	mv	a0,a5
	call	t2c
	sw	a0,-96(s0)
	.loc 5 197 16
	lw	s2,-64(s0)
	lw	s3,-64(s0)
	.loc 5 197 74
	lw	a1,-152(s0)
	lw	a0,-36(s0)
	call	__mulsi3
.LVL10:
	mv	a5,a0
	.loc 5 197 57
	lw	a4,32(s1)
	.loc 5 197 104
	bgeu	a5,a4,.L48
	mv	a5,a4
.L48:
	.loc 5 197 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	mv	a1,s3
	mv	a0,s2
	call	t2c
	sw	a0,-100(s0)
	.loc 5 198 16
	lw	a0,-64(s0)
	.loc 5 198 79
	lw	a4,-60(s0)
	lw	a5,-52(s0)
	bleu	a5,a4,.L49
	mv	a5,a4
.L49:
	.loc 5 198 16
	mv	a1,a5
	.loc 5 198 101
	lw	a5,16(s1)
	.loc 5 198 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	call	t2c
	sw	a0,-104(s0)
	.loc 5 199 16
	lw	s2,-52(s0)
	lw	s3,-60(s0)
	.loc 5 199 48
	lw	a4,-136(s0)
	lw	a5,-72(s0)
	add	a4,a4,a5
	.loc 5 199 51
	lw	a5,-40(s0)
	add	a4,a4,a5
	.loc 5 199 61
	lw	a5,-140(s0)
	sub	a5,a4,a5
	.loc 5 199 65
	lw	a1,-152(s0)
	mv	a0,a5
	call	__mulsi3
.LVL11:
	mv	a5,a0
	.loc 5 199 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	mv	a1,s3
	mv	a0,s2
	call	t2c
	sw	a0,-108(s0)
	.loc 5 200 16
	lw	s2,-52(s0)
	lw	s3,-68(s0)
	.loc 5 200 69
	lw	a1,-152(s0)
	lw	a0,-72(s0)
	call	__mulsi3
.LVL12:
	mv	a5,a0
	.loc 5 200 58
	lw	a4,28(s1)
	.loc 5 200 99
	bgeu	a5,a4,.L50
	mv	a5,a4
.L50:
	.loc 5 200 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	mv	a1,s3
	mv	a0,s2
	call	t2c
	sw	a0,-112(s0)
	.loc 5 201 16
	lw	s3,-60(s0)
	lw	s4,-52(s0)
	.loc 5 201 65
	lw	a1,-152(s0)
	lw	a0,-72(s0)
	call	__mulsi3
.LVL13:
	mv	a5,a0
	mv	a4,a5
	.loc 5 201 54
	lw	a5,20(s1)
	.loc 5 201 95
	mv	s2,a4
	bgeu	s2,a5,.L51
	mv	s2,a5
.L51:
	.loc 5 201 120
	lw	a4,-140(s0)
	lw	a5,-72(s0)
	add	a5,a4,a5
	.loc 5 201 124
	lw	a1,-152(s0)
	mv	a0,a5
	call	__mulsi3
.LVL14:
	mv	a5,a0
	.loc 5 201 115
	add	a5,s2,a5
	.loc 5 201 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	mv	a1,s4
	mv	a0,s3
	call	t2c
	sw	a0,-116(s0)
	.loc 5 202 16
	lw	s3,-60(s0)
	lw	s4,-68(s0)
	.loc 5 202 56
	lw	s2,24(s1)
	.loc 5 202 66
	lw	a4,-140(s0)
	lw	a5,-72(s0)
	add	a4,a4,a5
	.loc 5 202 69
	lw	a5,-76(s0)
	add	a5,a4,a5
	.loc 5 202 78
	addi	a5,a5,-1
	.loc 5 202 81
	lw	a1,-152(s0)
	mv	a0,a5
	call	__mulsi3
.LVL15:
	mv	a5,a0
	.loc 5 202 61
	add	a5,s2,a5
	.loc 5 202 16
	mv	a2,a5
	lw	a5,-152(s0)
	lw	a4,-148(s0)
	mv	a3,a5
	mv	a1,s4
	mv	a0,s3
	call	t2c
	sw	a0,-120(s0)
	.loc 5 203 16
	lw	a5,-64(s0)
	lw	a1,-64(s0)
	.loc 5 203 54
	lw	a4,40(s1)
	.loc 5 203 16
	mv	a2,a4
	lw	a3,-152(s0)
	lw	a4,-148(s0)
	mv	a0,a5
	call	t2c
	sw	a0,-124(s0)
	.loc 5 205 32
	lw	a5,-68(s0)
	slli	a4,a5,24
	.loc 5 205 54
	lw	a5,-64(s0)
	slli	a5,a5,16
	.loc 5 205 39
	or	a4,a4,a5
	.loc 5 205 74
	lw	a5,-52(s0)
	slli	a5,a5,8
	.loc 5 205 61
	or	a4,a4,a5
	.loc 5 205 5
	lw	a5,-60(s0)
	or	a4,a4,a5
	lw	a5,-132(s0)
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 206 5
	lw	a5,-132(s0)
	addi	a5,a5,8
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 207 5
	lw	a1,-132(s0)
	li	a0,2
	call	write_u32
	.loc 5 209 19
	lw	a5,-84(s0)
	addi	a5,a5,-1
	.loc 5 209 5
	mv	a4,a5
	lw	a5,-132(s0)
	addi	a5,a5,16
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 210 16
	lw	a5,-100(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 210 28
	slli	s1,a5,24
	.loc 5 210 38
	lw	a5,-96(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 210 50
	slli	a5,a5,16
	.loc 5 210 35
	or	s1,s1,a5
	.loc 5 210 60
	lw	a5,-92(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 210 71
	slli	a5,a5,8
	.loc 5 210 57
	or	s1,s1,a5
	.loc 5 210 92
	lw	a5,-88(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 210 5
	or	a4,s1,a5
	lw	a5,-132(s0)
	addi	a5,a5,32
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 211 5
	lw	a5,-104(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a4,a0
	lw	a5,-132(s0)
	addi	a5,a5,36
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 212 16
	lw	a5,-120(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 212 28
	slli	s1,a5,24
	.loc 5 212 38
	lw	a5,-116(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 212 50
	slli	a5,a5,16
	.loc 5 212 35
	or	s1,s1,a5
	.loc 5 212 60
	lw	a5,-112(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 212 72
	slli	a5,a5,8
	.loc 5 212 57
	or	s1,s1,a5
	.loc 5 212 93
	lw	a5,-108(s0)
	addi	a5,a5,-2
	mv	a0,a5
	call	sat
	mv	a5,a0
	.loc 5 212 5
	or	a4,s1,a5
	lw	a5,-132(s0)
	addi	a5,a5,40
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 213 5
	lw	a5,-124(s0)
	addi	a5,a5,-1
	mv	a0,a5
	call	sat
	mv	a4,a0
	lw	a5,-132(s0)
	addi	a5,a5,48
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 215 36
	lw	a5,-60(s0)
	addi	a5,a5,6
	.loc 5 215 40
	lw	a1,-148(s0)
	mv	a0,a5
	call	__umodsi3
.LVL16:
	mv	a5,a0
	mv	a4,a5
	.loc 5 215 21
	li	a5,1
	sll	a5,a5,a4
	.loc 5 215 9
	addi	a5,a5,-1
	sw	a5,-44(s0)
	.loc 5 216 7
	lw	a5,-44(s0)
	bnez	a5,.L52
	.loc 5 216 33 discriminator 1
	lw	a5,-148(s0)
	li	a4,1
	sll	a5,a4,a5
	.loc 5 216 28 discriminator 1
	addi	a5,a5,-1
	sw	a5,-44(s0)
.L52:
	.loc 5 217 28
	lw	a4,-60(s0)
	lw	a5,-148(s0)
	add	a5,a4,a5
	.loc 5 217 40
	addi	a5,a5,5
	.loc 5 217 43
	lw	a1,-148(s0)
	mv	a0,a5
	call	__udivsi3
.LVL17:
	mv	a5,a0
	.loc 5 217 55
	addi	a5,a5,-1
	.loc 5 217 9
	sw	a5,-128(s0)
	.loc 5 218 36
	lw	a5,-44(s0)
	slli	a4,a5,8
	.loc 5 218 26
	lw	a5,-128(s0)
	or	a5,a4,a5
	.loc 5 218 5
	mv	a4,a5
	lw	a5,-132(s0)
	addi	a5,a5,52
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 219 1
	nop
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	lw	s1,148(sp)
	.cfi_restore 9
	lw	s2,144(sp)
	.cfi_restore 18
	lw	s3,140(sp)
	.cfi_restore 19
	lw	s4,136(sp)
	.cfi_restore 20
	addi	sp,sp,160
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE32:
	.size	sdram_init, .-sdram_init
	.section	.text.sdram_sdr_init,"ax",@progbits
	.align	1
	.type	sdram_sdr_init, @function
sdram_sdr_init:
.LFB33:
	.loc 5 221 83
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
	.loc 5 223 9
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	__mulsi3
.LVL18:
	mv	a5,a0
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	li	a5,2
	beq	a4,a5,.L55
	lw	a4,-24(s0)
	li	a5,2
	bgtu	a4,a5,.L56
	lw	a4,-24(s0)
	li	a5,1
	beq	a4,a5,.L57
	j	.L58
.L56:
	lw	a4,-24(s0)
	li	a5,4
	beq	a4,a5,.L59
	lw	a4,-24(s0)
	li	a5,8
	beq	a4,a5,.L60
	j	.L58
.L57:
	.loc 5 225 19
	sw	zero,-20(s0)
	.loc 5 225 5
	j	.L58
.L55:
	.loc 5 226 19
	li	a5,1
	sw	a5,-20(s0)
	.loc 5 226 5
	j	.L58
.L59:
	.loc 5 227 19
	li	a5,2
	sw	a5,-20(s0)
	.loc 5 227 5
	j	.L58
.L60:
	.loc 5 228 19
	li	a5,3
	sw	a5,-20(s0)
	.loc 5 228 5
	nop
.L58:
	.loc 5 231 5
	lw	a5,-40(s0)
	addi	a4,a5,-1
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 5 233 5
	lw	a5,-36(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 233 33
	li	a0,100
	call	sdram_udelay
	.loc 5 234 5
	lw	a5,-36(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,2
	call	write_u32
	.loc 5 234 33
	li	a0,100
	call	sdram_udelay
	.loc 5 235 5
	li	a3,1024
	li	a2,0
	li	a1,8
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 236 5
	li	a3,0
	li	a2,0
	li	a1,16
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 237 5
	li	a3,0
	li	a2,0
	li	a1,16
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 238 35
	lw	a5,-40(s0)
	slli	a4,a5,4
	.loc 5 238 5
	lw	a5,-20(s0)
	or	a5,a4,a5
	mv	a3,a5
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 239 5
	lw	a1,-36(s0)
	li	a0,1
	call	write_u32
	.loc 5 240 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE33:
	.size	sdram_sdr_init, .-sdram_sdr_init
	.section	.text.sdram_ddr2_init,"ax",@progbits
	.align	1
	.type	sdram_ddr2_init, @function
sdram_ddr2_init:
.LFB34:
	.loc 5 242 121
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	mv	s1,a2
	sw	a3,-44(s0)
	sw	a4,-48(s0)
	sw	a5,-52(s0)
	.loc 5 243 9
	sw	zero,-20(s0)
	.loc 5 244 9
	lw	a1,-48(s0)
	lw	a0,-44(s0)
	call	__mulsi3
.LVL19:
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 5 246 5
	lw	a5,-36(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 247 5
	li	a0,200
	call	sdram_udelay
	.loc 5 248 5
	lw	a5,-36(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,2
	call	write_u32
	.loc 5 249 5
	li	a0,10
	call	sdram_udelay
	.loc 5 251 26
	lw	a5,-20(s0)
	slli	a5,a5,3
	andi	a5,a5,56
	.loc 5 251 9
	ori	a5,a5,68
	sw	a5,-28(s0)
	.loc 5 252 21
	lw	a4,24(s1)
	.loc 5 252 25
	lw	a5,-52(s0)
	add	a5,a4,a5
	.loc 5 252 37
	addi	a5,a5,-1
	.loc 5 252 9
	lw	a1,-52(s0)
	mv	a0,a5
	call	__udivsi3
.LVL20:
	mv	a5,a0
	sw	a5,-32(s0)
	.loc 5 253 5
	li	a3,1024
	li	a2,0
	li	a1,8
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 254 5
	li	a3,0
	li	a2,2
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 255 5
	li	a3,0
	li	a2,3
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 256 5
	lw	a3,-28(s0)
	li	a2,1
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 257 5
	li	a3,256
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 257 41
	li	a0,20
	call	sdram_udelay
	.loc 5 258 5
	li	a3,1024
	li	a2,0
	li	a1,8
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 259 5
	li	a3,0
	li	a2,0
	li	a1,16
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 260 5
	li	a3,0
	li	a2,0
	li	a1,16
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 261 39
	lw	a5,-32(s0)
	addi	a5,a5,-1
	.loc 5 261 49
	slli	a4,a5,9
	li	a5,4096
	addi	a5,a5,-512
	and	a4,a4,a5
	.loc 5 261 67
	lw	a5,-40(s0)
	slli	a5,a5,4
	andi	a5,a5,112
	.loc 5 261 55
	or	a4,a4,a5
	.loc 5 261 86
	lw	a5,-24(s0)
	srli	a5,a5,3
	andi	a5,a5,1
	.loc 5 261 73
	or	a5,a4,a5
	.loc 5 261 5
	ori	a5,a5,2
	mv	a3,a5
	li	a2,0
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 261 98
	li	a0,20
	call	sdram_udelay
	.loc 5 262 5
	lw	a5,-28(s0)
	ori	a5,a5,896
	mv	a3,a5
	li	a2,1
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 263 5
	lw	a3,-28(s0)
	li	a2,1
	li	a1,0
	lw	a0,-36(s0)
	call	sdram_command
	.loc 5 264 5
	li	a0,10
	call	sdram_udelay
	.loc 5 266 5
	lw	a1,-36(s0)
	li	a0,1
	call	write_u32
	.loc 5 267 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE34:
	.size	sdram_ddr2_init, .-sdram_ddr2_init
	.section	.text.sdram_ddr3_init,"ax",@progbits
	.align	1
	.type	sdram_ddr3_init, @function
sdram_ddr3_init:
.LFB35:
	.loc 5 269 92
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	sw	a2,-28(s0)
	sw	a3,-32(s0)
	sw	a4,-36(s0)
	.loc 5 273 5
	lw	a5,-20(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 274 5
	li	a0,200
	call	sdram_udelay
	.loc 5 275 5
	lw	a5,-20(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,1
	call	write_u32
	.loc 5 276 5
	li	a0,500
	call	sdram_udelay
	.loc 5 277 5
	lw	a5,-20(s0)
	addi	a5,a5,272
	mv	a1,a5
	li	a0,3
	call	write_u32
	.loc 5 279 46
	lw	a5,-28(s0)
	addi	a5,a5,-5
	.loc 5 279 5
	slli	a5,a5,3
	mv	a3,a5
	li	a2,2
	li	a1,0
	lw	a0,-20(s0)
	call	sdram_command
	.loc 5 280 5
	li	a3,0
	li	a2,3
	li	a1,0
	lw	a0,-20(s0)
	call	sdram_command
	.loc 5 281 5
	li	a3,68
	li	a2,1
	li	a1,0
	lw	a0,-20(s0)
	call	sdram_command
	.loc 5 282 44
	lw	a5,-28(s0)
	addi	a4,a5,-5
	.loc 5 282 40
	lui	a5,%hi(wrToMr.2150)
	addi	a5,a5,%lo(wrToMr.2150)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 5 282 49
	slli	a5,a5,9
	.loc 5 282 55
	ori	a4,a5,256
	.loc 5 282 76
	lw	a5,-24(s0)
	addi	a3,a5,-5
	.loc 5 282 73
	lui	a5,%hi(rlToMr.2151)
	addi	a5,a5,%lo(rlToMr.2151)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 5 282 85
	slli	a5,a5,2
	andi	a5,a5,4
	.loc 5 282 63
	or	a4,a4,a5
	.loc 5 282 104
	lw	a5,-24(s0)
	addi	a3,a5,-5
	.loc 5 282 101
	lui	a5,%hi(rlToMr.2151)
	addi	a5,a5,%lo(rlToMr.2151)
	add	a5,a3,a5
	lbu	a5,0(a5)
	.loc 5 282 115
	slli	a5,a5,3
	andi	a5,a5,112
	.loc 5 282 91
	or	a5,a4,a5
	.loc 5 282 5
	mv	a3,a5
	li	a2,0
	li	a1,0
	lw	a0,-20(s0)
	call	sdram_command
	.loc 5 283 5
	li	a0,100
	call	sdram_udelay
	.loc 5 284 5
	li	a3,1024
	li	a2,0
	li	a1,12
	lw	a0,-20(s0)
	call	sdram_command
	.loc 5 285 5
	li	a0,100
	call	sdram_udelay
	.loc 5 286 5
	lw	a1,-20(s0)
	li	a0,1
	call	write_u32
	.loc 5 287 5
	li	a0,100
	call	sdram_udelay
	.loc 5 288 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE35:
	.size	sdram_ddr3_init, .-sdram_ddr3_init
	.local	lfsr
	.comm	lfsr,2,2
	.section	.text.lfsrReset,"ax",@progbits
	.align	1
	.globl	lfsrReset
	.type	lfsrReset, @function
lfsrReset:
.LFB36:
	.loc 5 291 17
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 5 292 10
	lui	a5,%hi(lfsr)
	li	a4,-20480
	addi	a4,a4,-799
	sh	a4,%lo(lfsr)(a5)
	.loc 5 293 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE36:
	.size	lfsrReset, .-lfsrReset
	.section	.text.lfsr16,"ax",@progbits
	.align	1
	.type	lfsr16, @function
lfsr16:
.LFB37:
	.loc 5 296 24
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 5 300 24
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	srli	a5,a5,2
	slli	a4,a5,16
	srli	a4,a4,16
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	xor	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 5 300 38
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	srli	a5,a5,3
	slli	a5,a5,16
	srli	a5,a5,16
	xor	a5,a4,a5
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 5 300 52
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	srli	a5,a5,5
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 5 300 9
	xor	a5,a4,a5
	sh	a5,-18(s0)
	.loc 5 301 24
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	srli	a5,a5,1
	slli	a5,a5,16
	srli	a5,a5,16
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 5 301 31
	lhu	a5,-18(s0)
	slli	a5,a5,15
	.loc 5 301 24
	slli	a5,a5,16
	srai	a5,a5,16
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 5 301 10
	lui	a5,%hi(lfsr)
	sh	a4,%lo(lfsr)(a5)
	.loc 5 303 12
	lui	a5,%hi(lfsr)
	lhu	a5,%lo(lfsr)(a5)
	.loc 5 304 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE37:
	.size	lfsr16, .-lfsr16
	.section	.text.lfsr32,"ax",@progbits
	.align	1
	.type	lfsr32, @function
lfsr32:
.LFB38:
	.loc 5 306 24
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 5 307 12
	call	lfsr16
	mv	a5,a0
	mv	s1,a5
	.loc 5 307 30
	call	lfsr16
	mv	a5,a0
	.loc 5 307 40
	slli	a5,a5,16
	.loc 5 307 21
	add	a5,s1,a5
	.loc 5 308 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE38:
	.size	lfsr32, .-lfsr32
	.section	.text.sdram_mem_init,"ax",@progbits
	.align	1
	.type	sdram_mem_init, @function
sdram_mem_init:
.LFB39:
	.loc 5 310 51
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
	.loc 5 311 5
	call	lfsrReset
.LBB4:
	.loc 5 312 13
	sw	zero,-20(s0)
	.loc 5 312 5
	j	.L69
.L70:
	.loc 5 313 9 discriminator 3
	call	lfsr32
	mv	a3,a0
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a1,a5
	mv	a0,a3
	call	write_u32
	.loc 5 312 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L69:
	.loc 5 312 5 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L70
.LBE4:
	.loc 5 315 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE39:
	.size	sdram_mem_init, .-sdram_mem_init
	.section	.text.sdram_mem_test,"ax",@progbits
	.align	1
	.type	sdram_mem_test, @function
sdram_mem_test:
.LFB40:
	.loc 5 317 50
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
	.loc 5 318 9
	sw	zero,-24(s0)
	.loc 5 319 5
 #APP
# 319 "bsp/sdram.h" 1
	.word(0x500F)
# 0 "" 2
	.loc 5 320 5
 #NO_APP
	call	lfsrReset
.LBB5:
	.loc 5 321 13
	sw	zero,-20(s0)
	.loc 5 321 5
	j	.L72
.L75:
	.loc 5 322 12
	lw	a4,-36(s0)
	lw	a5,-20(s0)
	add	a5,a4,a5
	mv	a0,a5
	call	read_u32
	mv	s1,a0
	.loc 5 322 37
	call	lfsr32
	mv	a5,a0
	.loc 5 322 11
	beq	s1,a5,.L73
	.loc 5 322 54 discriminator 1
	li	a5,1
	j	.L74
.L73:
	.loc 5 321 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,4
	sw	a5,-20(s0)
.L72:
	.loc 5 321 5 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-40(s0)
	bltu	a4,a5,.L75
.LBE5:
	.loc 5 324 12
	li	a5,0
.L74:
	.loc 5 338 1
	mv	a0,a5
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
.LFE40:
	.size	sdram_mem_test, .-sdram_mem_test
	.section	.text.sdram_phy_s7_scan,"ax",@progbits
	.align	1
	.type	sdram_phy_s7_scan, @function
sdram_phy_s7_scan:
.LFB41:
	.loc 5 342 57
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
.LBB6:
	.loc 5 343 13
	sw	zero,-20(s0)
	.loc 5 343 5
	j	.L77
.L82:
	.loc 5 344 9
	lw	a4,-20(s0)
	lw	a5,-36(s0)
	addi	a5,a5,12
	mv	a1,a5
	mv	a0,a4
	call	write_u32
.LBB7:
	.loc 5 346 17
	sw	zero,-24(s0)
	.loc 5 346 9
	j	.L78
.L81:
	.loc 5 347 13
	lw	a5,-40(s0)
	addi	a5,a5,64
	mv	a1,a5
	li	a0,-1
	call	write_u32
	.loc 5 348 17
	li	a1,4096
	lw	a0,-44(s0)
	call	sdram_mem_test
	mv	a5,a0
	.loc 5 348 15
	bnez	a5,.L79
	.loc 5 348 53 discriminator 1
	li	a5,0
	j	.L80
.L79:
	.loc 5 346 52 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L78:
	.loc 5 346 9 discriminator 1
	lw	a4,-24(s0)
	li	a5,7
	ble	a4,a5,.L81
.LBE7:
	.loc 5 343 56 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L77:
	.loc 5 343 5 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L82
.LBE6:
	.loc 5 351 12
	li	a5,1
.L80:
	.loc 5 352 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE41:
	.size	sdram_phy_s7_scan, .-sdram_phy_s7_scan
	.section	.rodata
	.align	2
.LC0:
	.string	"\nS7 phy calibration\n"
	.align	2
.LC1:
	.string	"  DQ eye : "
	.align	2
.LC2:
	.string	"^\n"
	.section	.text.sdram_phy_s7,"ax",@progbits
	.align	1
	.type	sdram_phy_s7, @function
sdram_phy_s7:
.LFB42:
	.loc 5 354 53
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	.loc 5 355 5
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	li	a0,-268369920
	call	uart_writeStr
	.loc 5 357 5
	li	a1,4096
	lw	a0,-60(s0)
	call	sdram_mem_init
.L93:
.LBB8:
	.loc 5 360 9
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	li	a0,-268369920
	call	uart_writeStr
	.loc 5 362 13
	sw	zero,-20(s0)
	.loc 5 363 13
	sw	zero,-24(s0)
	.loc 5 364 13
	sw	zero,-28(s0)
.LBB9:
	.loc 5 365 17
	sw	zero,-32(s0)
	.loc 5 365 9
	j	.L84
.L88:
	.loc 5 366 13
	lw	a1,-56(s0)
	lw	a0,-32(s0)
	call	write_u32
	.loc 5 367 13
	lw	a5,-56(s0)
	addi	a5,a5,32
	mv	a1,a5
	li	a0,-1
	call	write_u32
	.loc 5 368 13
	lw	a5,-56(s0)
	addi	a5,a5,32
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 369 17
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	sdram_phy_s7_scan
	mv	a5,a0
	.loc 5 369 15
	bnez	a5,.L85
	.loc 5 370 17
	li	a1,88
	li	a0,-268369920
	call	uart_write
	.loc 5 371 29
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	sub	a4,a4,a5
	.loc 5 371 57
	lw	a3,-28(s0)
	lw	a5,-24(s0)
	sub	a5,a3,a5
	.loc 5 371 19
	bleu	a4,a5,.L87
	.loc 5 372 36
	lw	a5,-20(s0)
	sw	a5,-24(s0)
	.loc 5 373 35
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	j	.L87
.L85:
	.loc 5 376 17
	li	a1,46
	li	a0,-268369920
	call	uart_write
	.loc 5 377 27
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L87:
	.loc 5 365 54 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L84:
	.loc 5 365 9 discriminator 1
	lw	a4,-32(s0)
	li	a5,63
	bleu	a4,a5,.L88
.LBE9:
	.loc 5 381 9
	li	a1,10
	li	a0,-268369920
	call	uart_write
	.loc 5 383 38
	lw	a4,-24(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 5 383 13
	srli	a5,a5,1
	sw	a5,-40(s0)
.LBB10:
	.loc 5 384 17
	sw	zero,-36(s0)
	.loc 5 384 9
	j	.L89
.L90:
	.loc 5 384 44 discriminator 3
	li	a1,32
	li	a0,-268369920
	call	uart_write
	.loc 5 384 40 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L89:
	.loc 5 384 30 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,11
	.loc 5 384 9 discriminator 1
	lw	a4,-36(s0)
	bltu	a4,a5,.L90
.LBE10:
	.loc 5 385 9
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	li	a0,-268369920
	call	uart_writeStr
	.loc 5 387 9
	lw	a1,-56(s0)
	lw	a0,-40(s0)
	call	write_u32
	.loc 5 388 9
	lw	a5,-56(s0)
	addi	a5,a5,32
	mv	a1,a5
	li	a0,-1
	call	write_u32
	.loc 5 389 9
	lw	a5,-56(s0)
	addi	a5,a5,32
	mv	a1,a5
	li	a0,0
	call	write_u32
	.loc 5 390 13
	lw	a2,-60(s0)
	lw	a1,-56(s0)
	lw	a0,-52(s0)
	call	sdram_phy_s7_scan
	mv	a5,a0
	.loc 5 390 11
	beqz	a5,.L95
.LBE8:
	.loc 5 359 13
	j	.L93
.L95:
.LBB11:
	.loc 5 390 9
	nop
.LBE11:
	.loc 5 392 1
	nop
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE42:
	.size	sdram_phy_s7, .-sdram_phy_s7
	.comm	_SYMTABLE,2048,4
	.section	.text.putcon,"ax",@progbits
	.align	1
	.globl	putcon
	.type	putcon, @function
putcon:
.LFB43:
	.file 6 "main.c"
	.loc 6 27 1
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
	.loc 6 28 2
	lbu	a5,-17(s0)
	mv	a1,a5
	li	a0,-268369920
	call	uart_write
	.loc 6 29 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE43:
	.size	putcon, .-putcon
	.section	.rodata
	.align	2
.LC3:
	.string	"*** SaxonSoc Booted...\n"
	.section	.text.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB44:
	.loc 6 32 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	.loc 6 43 5
	li	a1,1
	li	a0,-268435456
	call	gpio_setOutputEnable
	.loc 6 44 5
	li	a1,0
	li	a0,-268435456
	call	gpio_setOutput
	.loc 6 46 2
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	li	a0,-268369920
	call	uart_writeStr
	.loc 6 57 5
	lui	a5,%hi(MT48LC16M16A2_6A_ps)
	lw	t4,%lo(MT48LC16M16A2_6A_ps)(a5)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	t3,4(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	t1,8(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a7,12(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a6,16(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a0,20(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a1,24(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a2,28(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a3,32(a4)
	addi	a4,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a4,36(a4)
	addi	a5,a5,%lo(MT48LC16M16A2_6A_ps)
	lw	a5,40(a5)
	sw	t4,-64(s0)
	sw	t3,-60(s0)
	sw	t1,-56(s0)
	sw	a7,-52(s0)
	sw	a6,-48(s0)
	sw	a0,-44(s0)
	sw	a1,-40(s0)
	sw	a2,-36(s0)
	sw	a3,-32(s0)
	sw	a4,-28(s0)
	sw	a5,-24(s0)
	addi	a3,s0,-64
	li	a5,20480
	addi	a6,a5,-480
	li	a5,2
	li	a4,1
	li	a2,0
	li	a1,3
	li	a0,-267386880
	call	sdram_init
	.loc 6 67 5
	li	a3,2
	li	a2,1
	li	a1,3
	li	a0,-267386880
	call	sdram_sdr_init
	.loc 6 94 12
	lui	a5,%hi(xfunc_out)
	lui	a4,%hi(putcon)
	addi	a4,a4,%lo(putcon)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 6 126 2
	call	_main
	li	a5,0
	.loc 6 188 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.rodata
	.align	2
	.type	wrToMr.2150, @object
	.size	wrToMr.2150, 12
wrToMr.2150:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	-1
	.byte	5
	.byte	-1
	.byte	6
	.byte	-1
	.byte	7
	.byte	-1
	.byte	0
	.align	2
	.type	rlToMr.2151, @object
	.size	rlToMr.2151, 10
rlToMr.2151:
	.byte	2
	.byte	4
	.byte	6
	.byte	8
	.byte	10
	.byte	12
	.byte	14
	.byte	1
	.byte	3
	.byte	5
	.text
.Letext0:
	.file 7 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 8 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\lock.h"
	.file 10 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h"
	.file 11 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h"
	.file 12 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h"
	.file 13 "bsp/type.h"
	.file 14 "xprintf.h"
	.file 15 "symtable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x178e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF244
	.byte	0xc
	.4byte	.LASF245
	.4byte	.LASF246
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x7
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
	.byte	0x7
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x7
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x7
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
	.byte	0x7
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
	.byte	0x3
	.4byte	.LASF14
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x8
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF16
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF17
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF18
	.byte	0x8
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.4byte	.LASF20
	.byte	0x9
	.byte	0x22
	.byte	0x19
	.4byte	0xfb
	.byte	0x6
	.byte	0x4
	.4byte	0x101
	.byte	0x7
	.4byte	.LASF128
	.byte	0x3
	.4byte	.LASF21
	.byte	0xa
	.byte	0x2c
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF22
	.byte	0xa
	.byte	0x72
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF23
	.byte	0xa
	.byte	0x91
	.byte	0x14
	.4byte	0x99
	.byte	0x8
	.4byte	.LASF24
	.byte	0xb
	.2byte	0x165
	.byte	0x16
	.4byte	0xa0
	.byte	0x9
	.byte	0x4
	.byte	0xa
	.byte	0xa6
	.byte	0x3
	.4byte	0x159
	.byte	0xa
	.4byte	.LASF25
	.byte	0xa
	.byte	0xa8
	.byte	0xc
	.4byte	0x12a
	.byte	0xa
	.4byte	.LASF26
	.byte	0xa
	.byte	0xa9
	.byte	0x13
	.4byte	0x159
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0x169
	.byte	0xc
	.4byte	0xa0
	.byte	0x3
	.byte	0
	.byte	0xd
	.byte	0x8
	.byte	0xa
	.byte	0xa3
	.byte	0x9
	.4byte	0x18d
	.byte	0xe
	.4byte	.LASF27
	.byte	0xa
	.byte	0xa5
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0xa
	.byte	0xaa
	.byte	0x5
	.4byte	0x137
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0xa
	.byte	0xab
	.byte	0x3
	.4byte	0x169
	.byte	0x3
	.4byte	.LASF30
	.byte	0xa
	.byte	0xaf
	.byte	0x11
	.4byte	0xef
	.byte	0xf
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x1ad
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.byte	0x5
	.4byte	0x1ad
	.byte	0x3
	.4byte	.LASF32
	.byte	0xc
	.byte	0x16
	.byte	0x17
	.4byte	0x78
	.byte	0x10
	.4byte	.LASF37
	.byte	0x18
	.byte	0xc
	.byte	0x2f
	.byte	0x8
	.4byte	0x21f
	.byte	0xe
	.4byte	.LASF33
	.byte	0xc
	.byte	0x31
	.byte	0x13
	.4byte	0x21f
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0xc
	.byte	0x32
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xe
	.4byte	.LASF34
	.byte	0xc
	.byte	0x32
	.byte	0xb
	.4byte	0x99
	.byte	0x8
	.byte	0xe
	.4byte	.LASF35
	.byte	0xc
	.byte	0x32
	.byte	0x14
	.4byte	0x99
	.byte	0xc
	.byte	0xe
	.4byte	.LASF36
	.byte	0xc
	.byte	0x32
	.byte	0x1b
	.4byte	0x99
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0xc
	.byte	0x33
	.byte	0xb
	.4byte	0x225
	.byte	0x14
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1c5
	.byte	0xb
	.4byte	0x1b9
	.4byte	0x235
	.byte	0xc
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.byte	0x24
	.byte	0xc
	.byte	0x37
	.byte	0x8
	.4byte	0x2b8
	.byte	0xe
	.4byte	.LASF39
	.byte	0xc
	.byte	0x39
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xe
	.4byte	.LASF40
	.byte	0xc
	.byte	0x3a
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xe
	.4byte	.LASF41
	.byte	0xc
	.byte	0x3b
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xe
	.4byte	.LASF42
	.byte	0xc
	.byte	0x3c
	.byte	0x7
	.4byte	0x99
	.byte	0xc
	.byte	0xe
	.4byte	.LASF43
	.byte	0xc
	.byte	0x3d
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0xe
	.4byte	.LASF44
	.byte	0xc
	.byte	0x3e
	.byte	0x7
	.4byte	0x99
	.byte	0x14
	.byte	0xe
	.4byte	.LASF45
	.byte	0xc
	.byte	0x3f
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xe
	.4byte	.LASF46
	.byte	0xc
	.byte	0x40
	.byte	0x7
	.4byte	0x99
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF47
	.byte	0xc
	.byte	0x41
	.byte	0x7
	.4byte	0x99
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF48
	.2byte	0x108
	.byte	0xc
	.byte	0x4a
	.byte	0x8
	.4byte	0x2fd
	.byte	0xe
	.4byte	.LASF49
	.byte	0xc
	.byte	0x4b
	.byte	0x9
	.4byte	0x2fd
	.byte	0
	.byte	0xe
	.4byte	.LASF50
	.byte	0xc
	.byte	0x4c
	.byte	0x9
	.4byte	0x2fd
	.byte	0x80
	.byte	0x13
	.4byte	.LASF51
	.byte	0xc
	.byte	0x4e
	.byte	0xa
	.4byte	0x1b9
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF52
	.byte	0xc
	.byte	0x51
	.byte	0xa
	.4byte	0x1b9
	.2byte	0x104
	.byte	0
	.byte	0xb
	.4byte	0x1a5
	.4byte	0x30d
	.byte	0xc
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF53
	.2byte	0x190
	.byte	0xc
	.byte	0x5d
	.byte	0x8
	.4byte	0x350
	.byte	0xe
	.4byte	.LASF33
	.byte	0xc
	.byte	0x5e
	.byte	0x12
	.4byte	0x350
	.byte	0
	.byte	0xe
	.4byte	.LASF54
	.byte	0xc
	.byte	0x5f
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0xe
	.4byte	.LASF55
	.byte	0xc
	.byte	0x61
	.byte	0x9
	.4byte	0x356
	.byte	0x8
	.byte	0xe
	.4byte	.LASF48
	.byte	0xc
	.byte	0x62
	.byte	0x1e
	.4byte	0x2b8
	.byte	0x88
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x30d
	.byte	0xb
	.4byte	0x366
	.4byte	0x366
	.byte	0xc
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x36c
	.byte	0x14
	.byte	0x10
	.4byte	.LASF56
	.byte	0x8
	.byte	0xc
	.byte	0x75
	.byte	0x8
	.4byte	0x395
	.byte	0xe
	.4byte	.LASF57
	.byte	0xc
	.byte	0x76
	.byte	0x11
	.4byte	0x395
	.byte	0
	.byte	0xe
	.4byte	.LASF58
	.byte	0xc
	.byte	0x77
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x38
	.byte	0x10
	.4byte	.LASF59
	.byte	0x68
	.byte	0xc
	.byte	0xb5
	.byte	0x8
	.4byte	0x4de
	.byte	0x11
	.string	"_p"
	.byte	0xc
	.byte	0xb6
	.byte	0x12
	.4byte	0x395
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0xc
	.byte	0xb7
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0xc
	.byte	0xb8
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xe
	.4byte	.LASF60
	.byte	0xc
	.byte	0xb9
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xe
	.4byte	.LASF61
	.byte	0xc
	.byte	0xba
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0xc
	.byte	0xbb
	.byte	0x11
	.4byte	0x36d
	.byte	0x10
	.byte	0xe
	.4byte	.LASF62
	.byte	0xc
	.byte	0xbc
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xe
	.4byte	.LASF63
	.byte	0xc
	.byte	0xc3
	.byte	0xa
	.4byte	0x1a5
	.byte	0x1c
	.byte	0xe
	.4byte	.LASF64
	.byte	0xc
	.byte	0xc5
	.byte	0xe
	.4byte	0x650
	.byte	0x20
	.byte	0xe
	.4byte	.LASF65
	.byte	0xc
	.byte	0xc7
	.byte	0xe
	.4byte	0x67a
	.byte	0x24
	.byte	0xe
	.4byte	.LASF66
	.byte	0xc
	.byte	0xca
	.byte	0xd
	.4byte	0x69e
	.byte	0x28
	.byte	0xe
	.4byte	.LASF67
	.byte	0xc
	.byte	0xcb
	.byte	0x9
	.4byte	0x6b8
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0xc
	.byte	0xce
	.byte	0x11
	.4byte	0x36d
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0xc
	.byte	0xcf
	.byte	0x12
	.4byte	0x395
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0xc
	.byte	0xd0
	.byte	0x7
	.4byte	0x99
	.byte	0x3c
	.byte	0xe
	.4byte	.LASF68
	.byte	0xc
	.byte	0xd3
	.byte	0x11
	.4byte	0x6be
	.byte	0x40
	.byte	0xe
	.4byte	.LASF69
	.byte	0xc
	.byte	0xd4
	.byte	0x11
	.4byte	0x6ce
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0xc
	.byte	0xd7
	.byte	0x11
	.4byte	0x36d
	.byte	0x44
	.byte	0xe
	.4byte	.LASF70
	.byte	0xc
	.byte	0xda
	.byte	0x7
	.4byte	0x99
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF71
	.byte	0xc
	.byte	0xdb
	.byte	0xa
	.4byte	0x106
	.byte	0x50
	.byte	0xe
	.4byte	.LASF72
	.byte	0xc
	.byte	0xde
	.byte	0x12
	.4byte	0x4fc
	.byte	0x54
	.byte	0xe
	.4byte	.LASF73
	.byte	0xc
	.byte	0xe2
	.byte	0xc
	.4byte	0x199
	.byte	0x58
	.byte	0xe
	.4byte	.LASF74
	.byte	0xc
	.byte	0xe4
	.byte	0xe
	.4byte	0x18d
	.byte	0x5c
	.byte	0xe
	.4byte	.LASF75
	.byte	0xc
	.byte	0xe5
	.byte	0x7
	.4byte	0x99
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0x11e
	.4byte	0x4fc
	.byte	0x16
	.4byte	0x4fc
	.byte	0x16
	.4byte	0x1a5
	.byte	0x16
	.4byte	0x1a7
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x507
	.byte	0x5
	.4byte	0x4fc
	.byte	0x17
	.4byte	.LASF76
	.2byte	0x428
	.byte	0xc
	.2byte	0x239
	.byte	0x8
	.4byte	0x650
	.byte	0x18
	.4byte	.LASF77
	.byte	0xc
	.2byte	0x23b
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0x18
	.4byte	.LASF78
	.byte	0xc
	.2byte	0x240
	.byte	0xb
	.4byte	0x72a
	.byte	0x4
	.byte	0x18
	.4byte	.LASF79
	.byte	0xc
	.2byte	0x240
	.byte	0x14
	.4byte	0x72a
	.byte	0x8
	.byte	0x18
	.4byte	.LASF80
	.byte	0xc
	.2byte	0x240
	.byte	0x1e
	.4byte	0x72a
	.byte	0xc
	.byte	0x18
	.4byte	.LASF81
	.byte	0xc
	.2byte	0x242
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0x18
	.4byte	.LASF82
	.byte	0xc
	.2byte	0x243
	.byte	0x8
	.4byte	0x92a
	.byte	0x14
	.byte	0x18
	.4byte	.LASF83
	.byte	0xc
	.2byte	0x246
	.byte	0x7
	.4byte	0x99
	.byte	0x30
	.byte	0x18
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x247
	.byte	0x16
	.4byte	0x93f
	.byte	0x34
	.byte	0x18
	.4byte	.LASF85
	.byte	0xc
	.2byte	0x249
	.byte	0x7
	.4byte	0x99
	.byte	0x38
	.byte	0x18
	.4byte	.LASF86
	.byte	0xc
	.2byte	0x24b
	.byte	0xa
	.4byte	0x950
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF87
	.byte	0xc
	.2byte	0x24e
	.byte	0x13
	.4byte	0x21f
	.byte	0x40
	.byte	0x18
	.4byte	.LASF88
	.byte	0xc
	.2byte	0x24f
	.byte	0x7
	.4byte	0x99
	.byte	0x44
	.byte	0x18
	.4byte	.LASF89
	.byte	0xc
	.2byte	0x250
	.byte	0x13
	.4byte	0x21f
	.byte	0x48
	.byte	0x18
	.4byte	.LASF90
	.byte	0xc
	.2byte	0x251
	.byte	0x14
	.4byte	0x956
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF91
	.byte	0xc
	.2byte	0x254
	.byte	0x7
	.4byte	0x99
	.byte	0x50
	.byte	0x18
	.4byte	.LASF92
	.byte	0xc
	.2byte	0x255
	.byte	0x9
	.4byte	0x1a7
	.byte	0x54
	.byte	0x18
	.4byte	.LASF93
	.byte	0xc
	.2byte	0x278
	.byte	0x7
	.4byte	0x905
	.byte	0x58
	.byte	0x19
	.4byte	.LASF53
	.byte	0xc
	.2byte	0x27c
	.byte	0x13
	.4byte	0x350
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF94
	.byte	0xc
	.2byte	0x27d
	.byte	0x12
	.4byte	0x30d
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF95
	.byte	0xc
	.2byte	0x281
	.byte	0xc
	.4byte	0x967
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF96
	.byte	0xc
	.2byte	0x286
	.byte	0x10
	.4byte	0x6eb
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF97
	.byte	0xc
	.2byte	0x288
	.byte	0xa
	.4byte	0x973
	.2byte	0x2ec
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4de
	.byte	0x15
	.4byte	0x11e
	.4byte	0x674
	.byte	0x16
	.4byte	0x4fc
	.byte	0x16
	.4byte	0x1a5
	.byte	0x16
	.4byte	0x674
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1b4
	.byte	0x6
	.byte	0x4
	.4byte	0x656
	.byte	0x15
	.4byte	0x112
	.4byte	0x69e
	.byte	0x16
	.4byte	0x4fc
	.byte	0x16
	.4byte	0x1a5
	.byte	0x16
	.4byte	0x112
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x680
	.byte	0x15
	.4byte	0x99
	.4byte	0x6b8
	.byte	0x16
	.4byte	0x4fc
	.byte	0x16
	.4byte	0x1a5
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6a4
	.byte	0xb
	.4byte	0x38
	.4byte	0x6ce
	.byte	0xc
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0x6de
	.byte	0xc
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF98
	.byte	0xc
	.2byte	0x11f
	.byte	0x18
	.4byte	0x39b
	.byte	0x1a
	.4byte	.LASF99
	.byte	0xc
	.byte	0xc
	.2byte	0x123
	.byte	0x8
	.4byte	0x724
	.byte	0x18
	.4byte	.LASF33
	.byte	0xc
	.2byte	0x125
	.byte	0x11
	.4byte	0x724
	.byte	0
	.byte	0x18
	.4byte	.LASF100
	.byte	0xc
	.2byte	0x126
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0x18
	.4byte	.LASF101
	.byte	0xc
	.2byte	0x127
	.byte	0xb
	.4byte	0x72a
	.byte	0x8
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6eb
	.byte	0x6
	.byte	0x4
	.4byte	0x6de
	.byte	0x1a
	.4byte	.LASF102
	.byte	0xe
	.byte	0xc
	.2byte	0x13f
	.byte	0x8
	.4byte	0x769
	.byte	0x18
	.4byte	.LASF103
	.byte	0xc
	.2byte	0x140
	.byte	0x12
	.4byte	0x769
	.byte	0
	.byte	0x18
	.4byte	.LASF104
	.byte	0xc
	.2byte	0x141
	.byte	0x12
	.4byte	0x769
	.byte	0x6
	.byte	0x18
	.4byte	.LASF105
	.byte	0xc
	.2byte	0x142
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0x52
	.4byte	0x779
	.byte	0xc
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0xc
	.2byte	0x259
	.byte	0x7
	.4byte	0x88e
	.byte	0x18
	.4byte	.LASF106
	.byte	0xc
	.2byte	0x25b
	.byte	0x18
	.4byte	0xa0
	.byte	0
	.byte	0x18
	.4byte	.LASF107
	.byte	0xc
	.2byte	0x25c
	.byte	0x12
	.4byte	0x1a7
	.byte	0x4
	.byte	0x18
	.4byte	.LASF108
	.byte	0xc
	.2byte	0x25d
	.byte	0x10
	.4byte	0x88e
	.byte	0x8
	.byte	0x18
	.4byte	.LASF109
	.byte	0xc
	.2byte	0x25e
	.byte	0x17
	.4byte	0x235
	.byte	0x24
	.byte	0x18
	.4byte	.LASF110
	.byte	0xc
	.2byte	0x25f
	.byte	0xf
	.4byte	0x99
	.byte	0x48
	.byte	0x18
	.4byte	.LASF111
	.byte	0xc
	.2byte	0x260
	.byte	0x2c
	.4byte	0x92
	.byte	0x50
	.byte	0x18
	.4byte	.LASF112
	.byte	0xc
	.2byte	0x261
	.byte	0x1a
	.4byte	0x730
	.byte	0x58
	.byte	0x18
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x262
	.byte	0x16
	.4byte	0x18d
	.byte	0x68
	.byte	0x18
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x263
	.byte	0x16
	.4byte	0x18d
	.byte	0x70
	.byte	0x18
	.4byte	.LASF115
	.byte	0xc
	.2byte	0x264
	.byte	0x16
	.4byte	0x18d
	.byte	0x78
	.byte	0x18
	.4byte	.LASF116
	.byte	0xc
	.2byte	0x265
	.byte	0x10
	.4byte	0x89e
	.byte	0x80
	.byte	0x18
	.4byte	.LASF117
	.byte	0xc
	.2byte	0x266
	.byte	0x10
	.4byte	0x8ae
	.byte	0x88
	.byte	0x18
	.4byte	.LASF118
	.byte	0xc
	.2byte	0x267
	.byte	0xf
	.4byte	0x99
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF119
	.byte	0xc
	.2byte	0x268
	.byte	0x16
	.4byte	0x18d
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF120
	.byte	0xc
	.2byte	0x269
	.byte	0x16
	.4byte	0x18d
	.byte	0xac
	.byte	0x18
	.4byte	.LASF121
	.byte	0xc
	.2byte	0x26a
	.byte	0x16
	.4byte	0x18d
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF122
	.byte	0xc
	.2byte	0x26b
	.byte	0x16
	.4byte	0x18d
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x26c
	.byte	0x16
	.4byte	0x18d
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF124
	.byte	0xc
	.2byte	0x26d
	.byte	0x8
	.4byte	0x99
	.byte	0xcc
	.byte	0
	.byte	0xb
	.4byte	0x1ad
	.4byte	0x89e
	.byte	0xc
	.4byte	0xa0
	.byte	0x19
	.byte	0
	.byte	0xb
	.4byte	0x1ad
	.4byte	0x8ae
	.byte	0xc
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	0x1ad
	.4byte	0x8be
	.byte	0xc
	.4byte	0xa0
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0xc
	.2byte	0x272
	.byte	0x7
	.4byte	0x8e5
	.byte	0x18
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x275
	.byte	0x1b
	.4byte	0x8e5
	.byte	0
	.byte	0x18
	.4byte	.LASF126
	.byte	0xc
	.2byte	0x276
	.byte	0x18
	.4byte	0x8f5
	.byte	0x78
	.byte	0
	.byte	0xb
	.4byte	0x395
	.4byte	0x8f5
	.byte	0xc
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0xb
	.4byte	0xa0
	.4byte	0x905
	.byte	0xc
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0xc
	.2byte	0x257
	.byte	0x3
	.4byte	0x92a
	.byte	0x1d
	.4byte	.LASF76
	.byte	0xc
	.2byte	0x26e
	.byte	0xb
	.4byte	0x779
	.byte	0x1d
	.4byte	.LASF127
	.byte	0xc
	.2byte	0x277
	.byte	0xb
	.4byte	0x8be
	.byte	0
	.byte	0xb
	.4byte	0x1ad
	.4byte	0x93a
	.byte	0xc
	.4byte	0xa0
	.byte	0x18
	.byte	0
	.byte	0x7
	.4byte	.LASF129
	.byte	0x6
	.byte	0x4
	.4byte	0x93a
	.byte	0x1e
	.4byte	0x950
	.byte	0x16
	.4byte	0x4fc
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x945
	.byte	0x6
	.byte	0x4
	.4byte	0x21f
	.byte	0x1e
	.4byte	0x967
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x96d
	.byte	0x6
	.byte	0x4
	.4byte	0x95c
	.byte	0xb
	.4byte	0x6de
	.4byte	0x983
	.byte	0xc
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF130
	.byte	0xc
	.2byte	0x307
	.byte	0x17
	.4byte	0x4fc
	.byte	0x1f
	.4byte	.LASF131
	.byte	0xc
	.2byte	0x308
	.byte	0x1d
	.4byte	0x502
	.byte	0x20
	.string	"u64"
	.byte	0xd
	.byte	0x6
	.byte	0x12
	.4byte	0xdc
	.byte	0x20
	.string	"u32"
	.byte	0xd
	.byte	0x9
	.byte	0x12
	.4byte	0xd0
	.byte	0x20
	.string	"s32"
	.byte	0xd
	.byte	0xa
	.byte	0x11
	.4byte	0xc4
	.byte	0x20
	.string	"u16"
	.byte	0xd
	.byte	0xc
	.byte	0x12
	.4byte	0xb8
	.byte	0x21
	.4byte	.LASF132
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xb
	.byte	0x6
	.4byte	0x9e6
	.byte	0x22
	.4byte	.LASF134
	.byte	0x8
	.byte	0
	.byte	0x21
	.4byte	.LASF133
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xc
	.byte	0x6
	.4byte	0xa0b
	.byte	0x22
	.4byte	.LASF135
	.byte	0
	.byte	0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0x23
	.string	"ODD"
	.byte	0x2
	.byte	0
	.byte	0x21
	.4byte	.LASF137
	.byte	0x7
	.byte	0x4
	.4byte	0xa0
	.byte	0x2
	.byte	0xd
	.byte	0x6
	.4byte	0xa2a
	.byte	0x23
	.string	"ONE"
	.byte	0
	.byte	0x23
	.string	"TWO"
	.byte	0x1
	.byte	0
	.byte	0xd
	.byte	0x10
	.byte	0x2
	.byte	0xf
	.byte	0x9
	.4byte	0xa68
	.byte	0xe
	.4byte	.LASF138
	.byte	0x2
	.byte	0x10
	.byte	0x19
	.4byte	0x9cd
	.byte	0
	.byte	0xe
	.4byte	.LASF139
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x9e6
	.byte	0x4
	.byte	0xe
	.4byte	.LASF140
	.byte	0x2
	.byte	0x12
	.byte	0x13
	.4byte	0xa0b
	.byte	0x8
	.byte	0xe
	.4byte	.LASF141
	.byte	0x2
	.byte	0x13
	.byte	0x9
	.4byte	0x9a9
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF142
	.byte	0x2
	.byte	0x14
	.byte	0x3
	.4byte	0xa2a
	.byte	0x1e
	.4byte	0xa7f
	.byte	0x16
	.4byte	0x38
	.byte	0
	.byte	0x24
	.4byte	.LASF143
	.byte	0xe
	.byte	0x13
	.byte	0xf
	.4byte	0xa8b
	.byte	0x6
	.byte	0x4
	.4byte	0xa74
	.byte	0x10
	.4byte	.LASF144
	.byte	0x10
	.byte	0xf
	.byte	0x6
	.byte	0x10
	.4byte	0xab9
	.byte	0xe
	.4byte	.LASF145
	.byte	0xf
	.byte	0x8
	.byte	0x10
	.4byte	0xab9
	.byte	0
	.byte	0xe
	.4byte	.LASF146
	.byte	0xf
	.byte	0x9
	.byte	0xf
	.4byte	0xa0
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0x38
	.4byte	0xac9
	.byte	0xc
	.4byte	0xa0
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF147
	.byte	0xf
	.byte	0xa
	.byte	0x3
	.4byte	0xa91
	.byte	0x24
	.4byte	.LASF148
	.byte	0xf
	.byte	0xc
	.byte	0x12
	.4byte	0xae1
	.byte	0x6
	.byte	0x4
	.4byte	0xac9
	.byte	0xd
	.byte	0x2c
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.4byte	0xb7f
	.byte	0xe
	.4byte	.LASF149
	.byte	0x5
	.byte	0x43
	.byte	0x9
	.4byte	0x9a9
	.byte	0
	.byte	0x11
	.string	"RFC"
	.byte	0x5
	.byte	0x44
	.byte	0x9
	.4byte	0x9a9
	.byte	0x4
	.byte	0x11
	.string	"RAS"
	.byte	0x5
	.byte	0x45
	.byte	0x9
	.4byte	0x9a9
	.byte	0x8
	.byte	0x11
	.string	"RP"
	.byte	0x5
	.byte	0x46
	.byte	0x9
	.4byte	0x9a9
	.byte	0xc
	.byte	0x11
	.string	"RCD"
	.byte	0x5
	.byte	0x47
	.byte	0x9
	.4byte	0x9a9
	.byte	0x10
	.byte	0x11
	.string	"WTR"
	.byte	0x5
	.byte	0x48
	.byte	0x9
	.4byte	0x9a9
	.byte	0x14
	.byte	0x11
	.string	"WTP"
	.byte	0x5
	.byte	0x49
	.byte	0x9
	.4byte	0x9a9
	.byte	0x18
	.byte	0x11
	.string	"RTP"
	.byte	0x5
	.byte	0x4a
	.byte	0x9
	.4byte	0x9a9
	.byte	0x1c
	.byte	0x11
	.string	"RRD"
	.byte	0x5
	.byte	0x4b
	.byte	0x9
	.4byte	0x9a9
	.byte	0x20
	.byte	0x11
	.string	"REF"
	.byte	0x5
	.byte	0x4c
	.byte	0x9
	.4byte	0x9a9
	.byte	0x24
	.byte	0x11
	.string	"FAW"
	.byte	0x5
	.byte	0x4d
	.byte	0x9
	.4byte	0x9a9
	.byte	0x28
	.byte	0
	.byte	0x3
	.4byte	.LASF150
	.byte	0x5
	.byte	0x4f
	.byte	0x3
	.4byte	0xae7
	.byte	0x5
	.4byte	0xb7f
	.byte	0x25
	.4byte	.LASF151
	.byte	0x5
	.byte	0x5a
	.byte	0x1a
	.4byte	0xb8b
	.byte	0x5
	.byte	0x3
	.4byte	MT41K128M16JT_125_ps
	.byte	0x25
	.4byte	.LASF152
	.byte	0x5
	.byte	0x68
	.byte	0x1a
	.4byte	0xb8b
	.byte	0x5
	.byte	0x3
	.4byte	MT47H64M16HR_25_ps
	.byte	0x25
	.4byte	.LASF153
	.byte	0x5
	.byte	0x76
	.byte	0x1a
	.4byte	0xb8b
	.byte	0x5
	.byte	0x3
	.4byte	MT48LC16M16A2_6A_ps
	.byte	0x25
	.4byte	.LASF154
	.byte	0x5
	.byte	0x84
	.byte	0x1a
	.4byte	0xb8b
	.byte	0x5
	.byte	0x3
	.4byte	AS4C32M16SB_7TCN_ps
	.byte	0x26
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x122
	.byte	0xc
	.4byte	0x9c1
	.byte	0x5
	.byte	0x3
	.4byte	lfsr
	.byte	0xb
	.4byte	0xac9
	.4byte	0xbfb
	.byte	0xc
	.4byte	0xa0
	.byte	0x7f
	.byte	0
	.byte	0x27
	.4byte	.LASF144
	.byte	0x6
	.byte	0xf
	.byte	0xa
	.4byte	0xbeb
	.byte	0x5
	.byte	0x3
	.4byte	_SYMTABLE
	.byte	0x24
	.4byte	.LASF156
	.byte	0x6
	.byte	0x12
	.byte	0x11
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF157
	.byte	0x6
	.byte	0x12
	.byte	0x1a
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF158
	.byte	0x6
	.byte	0x13
	.byte	0x11
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF159
	.byte	0x6
	.byte	0x13
	.byte	0x1c
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF160
	.byte	0x6
	.byte	0x14
	.byte	0x11
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF161
	.byte	0x6
	.byte	0x14
	.byte	0x1c
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF162
	.byte	0x6
	.byte	0x15
	.byte	0x11
	.4byte	0xd0
	.byte	0x24
	.4byte	.LASF163
	.byte	0x6
	.byte	0x15
	.byte	0x1e
	.4byte	0xd0
	.byte	0x28
	.4byte	.LASF164
	.byte	0x6
	.byte	0x1f
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0xc92
	.byte	0x29
	.string	"i"
	.byte	0x6
	.byte	0x21
	.byte	0x6
	.4byte	0x99
	.byte	0
	.byte	0x2a
	.4byte	.LASF165
	.byte	0x6
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb6
	.byte	0x2b
	.string	"i"
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.4byte	0x1ad
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2c
	.4byte	.LASF178
	.byte	0x5
	.2byte	0x162
	.byte	0xd
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0xd7a
	.byte	0x2d
	.4byte	.LASF166
	.byte	0x5
	.2byte	0x162
	.byte	0x1e
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x2e
	.string	"phy"
	.byte	0x5
	.2byte	0x162
	.byte	0x28
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2e
	.string	"mem"
	.byte	0x5
	.2byte	0x162
	.byte	0x31
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x2f
	.4byte	.Ldebug_ranges0+0
	.byte	0x26
	.4byte	.LASF167
	.byte	0x5
	.2byte	0x16a
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x26
	.4byte	.LASF168
	.byte	0x5
	.2byte	0x16b
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x26
	.4byte	.LASF169
	.byte	0x5
	.2byte	0x16c
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LASF170
	.byte	0x5
	.2byte	0x17f
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x30
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xd60
	.byte	0x26
	.4byte	.LASF171
	.byte	0x5
	.2byte	0x16d
	.byte	0x11
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x31
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x32
	.string	"i"
	.byte	0x5
	.2byte	0x180
	.byte	0x11
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF174
	.byte	0x5
	.2byte	0x156
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.4byte	0xdfa
	.byte	0x2d
	.4byte	.LASF166
	.byte	0x5
	.2byte	0x156
	.byte	0x22
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2e
	.string	"phy"
	.byte	0x5
	.2byte	0x156
	.byte	0x2c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2e
	.string	"mem"
	.byte	0x5
	.2byte	0x156
	.byte	0x35
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x31
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x26
	.4byte	.LASF172
	.byte	0x5
	.2byte	0x157
	.byte	0xd
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x26
	.4byte	.LASF173
	.byte	0x5
	.2byte	0x15a
	.byte	0x11
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF175
	.byte	0x5
	.2byte	0x13d
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xe5e
	.byte	0x2d
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x13d
	.byte	0x1f
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2d
	.4byte	.LASF176
	.byte	0x5
	.2byte	0x13d
	.byte	0x2c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x26
	.4byte	.LASF177
	.byte	0x5
	.2byte	0x13e
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x31
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x32
	.string	"i"
	.byte	0x5
	.2byte	0x141
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF179
	.byte	0x5
	.2byte	0x136
	.byte	0xd
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0xeae
	.byte	0x2d
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x136
	.byte	0x20
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2d
	.4byte	.LASF176
	.byte	0x5
	.2byte	0x136
	.byte	0x2d
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x32
	.string	"i"
	.byte	0x5
	.2byte	0x138
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF247
	.byte	0x5
	.2byte	0x132
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.byte	0x35
	.4byte	.LASF180
	.byte	0x5
	.2byte	0x128
	.byte	0xc
	.4byte	0x9c1
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xef1
	.byte	0x32
	.string	"bit"
	.byte	0x5
	.2byte	0x129
	.byte	0x9
	.4byte	0x9c1
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0
	.byte	0x36
	.4byte	.LASF248
	.byte	0x5
	.2byte	0x123
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.4byte	.LASF181
	.byte	0x5
	.2byte	0x10d
	.byte	0xd
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0xf90
	.byte	0x2d
	.4byte	.LASF166
	.byte	0x5
	.2byte	0x10d
	.byte	0x21
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2e
	.string	"rl"
	.byte	0x5
	.2byte	0x10d
	.byte	0x2b
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2e
	.string	"wl"
	.byte	0x5
	.2byte	0x10d
	.byte	0x33
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2d
	.4byte	.LASF182
	.byte	0x5
	.2byte	0x10d
	.byte	0x3b
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2d
	.4byte	.LASF183
	.byte	0x5
	.2byte	0x10d
	.byte	0x50
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x26
	.4byte	.LASF184
	.byte	0x5
	.2byte	0x10e
	.byte	0x1a
	.4byte	0xfa0
	.byte	0x5
	.byte	0x3
	.4byte	wrToMr.2150
	.byte	0x26
	.4byte	.LASF185
	.byte	0x5
	.2byte	0x10f
	.byte	0x1a
	.4byte	0xfb5
	.byte	0x5
	.byte	0x3
	.4byte	rlToMr.2151
	.byte	0
	.byte	0xb
	.4byte	0xb3
	.4byte	0xfa0
	.byte	0xc
	.4byte	0xa0
	.byte	0xb
	.byte	0
	.byte	0x5
	.4byte	0xf90
	.byte	0xb
	.4byte	0xb3
	.4byte	0xfb5
	.byte	0xc
	.4byte	0xa0
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0xfa5
	.byte	0x37
	.4byte	.LASF186
	.byte	0x5
	.byte	0xf2
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x1063
	.byte	0x38
	.4byte	.LASF166
	.byte	0x5
	.byte	0xf2
	.byte	0x21
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2b
	.string	"rl"
	.byte	0x5
	.byte	0xf2
	.byte	0x2b
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x38
	.4byte	.LASF187
	.byte	0x5
	.byte	0xf2
	.byte	0x3b
	.4byte	0xb7f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x38
	.4byte	.LASF182
	.byte	0x5
	.byte	0xf2
	.byte	0x47
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x38
	.4byte	.LASF183
	.byte	0x5
	.byte	0xf2
	.byte	0x5c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x38
	.4byte	.LASF188
	.byte	0x5
	.byte	0xf2
	.byte	0x6d
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x39
	.string	"al"
	.byte	0x5
	.byte	0xf3
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x39
	.string	"bl"
	.byte	0x5
	.byte	0xf4
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x25
	.4byte	.LASF189
	.byte	0x5
	.byte	0xfb
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x39
	.string	"wr"
	.byte	0x5
	.byte	0xfc
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x37
	.4byte	.LASF190
	.byte	0x5
	.byte	0xdd
	.byte	0xd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x10d2
	.byte	0x38
	.4byte	.LASF166
	.byte	0x5
	.byte	0xdd
	.byte	0x20
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2b
	.string	"rl"
	.byte	0x5
	.byte	0xdd
	.byte	0x2a
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x38
	.4byte	.LASF182
	.byte	0x5
	.byte	0xdd
	.byte	0x32
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x38
	.4byte	.LASF183
	.byte	0x5
	.byte	0xdd
	.byte	0x47
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x25
	.4byte	.LASF191
	.byte	0x5
	.byte	0xde
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x39
	.string	"bl"
	.byte	0x5
	.byte	0xdf
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF192
	.byte	0x5
	.byte	0xa4
	.byte	0xd
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x12cd
	.byte	0x38
	.4byte	.LASF166
	.byte	0x5
	.byte	0xa4
	.byte	0x1c
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x2b
	.string	"rl"
	.byte	0x5
	.byte	0xa4
	.byte	0x26
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0x2b
	.string	"wl"
	.byte	0x5
	.byte	0xa4
	.byte	0x2e
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x38
	.4byte	.LASF187
	.byte	0x5
	.byte	0xa4
	.byte	0x3e
	.4byte	0xb7f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x38
	.4byte	.LASF182
	.byte	0x5
	.byte	0xa4
	.byte	0x4a
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x38
	.4byte	.LASF183
	.byte	0x5
	.byte	0xa4
	.byte	0x5f
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x38
	.4byte	.LASF188
	.byte	0x5
	.byte	0xa4
	.byte	0x70
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x25
	.4byte	.LASF193
	.byte	0x5
	.byte	0xa5
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x25
	.4byte	.LASF194
	.byte	0x5
	.byte	0xa6
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x25
	.4byte	.LASF195
	.byte	0x5
	.byte	0xa7
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x25
	.4byte	.LASF196
	.byte	0x5
	.byte	0xa8
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x25
	.4byte	.LASF197
	.byte	0x5
	.byte	0xa9
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x25
	.4byte	.LASF198
	.byte	0x5
	.byte	0xaa
	.byte	0x9
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x39
	.string	"bl"
	.byte	0x5
	.byte	0xab
	.byte	0x9
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x25
	.4byte	.LASF199
	.byte	0x5
	.byte	0xaf
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x25
	.4byte	.LASF200
	.byte	0x5
	.byte	0xb0
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x25
	.4byte	.LASF201
	.byte	0x5
	.byte	0xb1
	.byte	0x9
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x25
	.4byte	.LASF202
	.byte	0x5
	.byte	0xc0
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x25
	.4byte	.LASF203
	.byte	0x5
	.byte	0xc1
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x25
	.4byte	.LASF204
	.byte	0x5
	.byte	0xc2
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x39
	.string	"cRP"
	.byte	0x5
	.byte	0xc3
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0x25
	.4byte	.LASF205
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x25
	.4byte	.LASF206
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x25
	.4byte	.LASF207
	.byte	0x5
	.byte	0xc6
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0x25
	.4byte	.LASF208
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x25
	.4byte	.LASF209
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x25
	.4byte	.LASF210
	.byte	0x5
	.byte	0xc9
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x25
	.4byte	.LASF211
	.byte	0x5
	.byte	0xca
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0x25
	.4byte	.LASF212
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x25
	.4byte	.LASF213
	.byte	0x5
	.byte	0xd7
	.byte	0x9
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x39
	.string	"ODT"
	.byte	0x5
	.byte	0xd9
	.byte	0x9
	.4byte	0x9b5
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0
	.byte	0x37
	.4byte	.LASF214
	.byte	0x5
	.byte	0x9b
	.byte	0xd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1320
	.byte	0x38
	.4byte	.LASF166
	.byte	0x5
	.byte	0x9b
	.byte	0x1f
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"cmd"
	.byte	0x5
	.byte	0x9b
	.byte	0x29
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x38
	.4byte	.LASF215
	.byte	0x5
	.byte	0x9b
	.byte	0x32
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x38
	.4byte	.LASF146
	.byte	0x5
	.byte	0x9b
	.byte	0x3c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x37
	.4byte	.LASF216
	.byte	0x5
	.byte	0x92
	.byte	0xd
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x1345
	.byte	0x2b
	.string	"us"
	.byte	0x5
	.byte	0x92
	.byte	0x1e
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x3a
	.string	"sat"
	.byte	0x5
	.byte	0x56
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x136d
	.byte	0x2b
	.string	"v"
	.byte	0x5
	.byte	0x56
	.byte	0x14
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x3b
	.string	"t2c"
	.byte	0x5
	.byte	0x52
	.byte	0xc
	.4byte	0x9b5
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x13d3
	.byte	0x38
	.4byte	.LASF217
	.byte	0x5
	.byte	0x52
	.byte	0x14
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF218
	.byte	0x5
	.byte	0x52
	.byte	0x24
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x38
	.4byte	.LASF219
	.byte	0x5
	.byte	0x52
	.byte	0x33
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x38
	.4byte	.LASF188
	.byte	0x5
	.byte	0x52
	.byte	0x41
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x38
	.4byte	.LASF183
	.byte	0x5
	.byte	0x52
	.byte	0x52
	.4byte	0x9b5
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x37
	.4byte	.LASF220
	.byte	0x4
	.byte	0x13
	.byte	0x14
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x1408
	.byte	0x2b
	.string	"reg"
	.byte	0x4
	.byte	0x13
	.byte	0x2d
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF221
	.byte	0x4
	.byte	0x13
	.byte	0x36
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF222
	.byte	0x4
	.byte	0x11
	.byte	0x14
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x143d
	.byte	0x2b
	.string	"reg"
	.byte	0x4
	.byte	0x11
	.byte	0x27
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF221
	.byte	0x4
	.byte	0x11
	.byte	0x30
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF223
	.byte	0x3
	.byte	0x22
	.byte	0xd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x149e
	.byte	0x38
	.4byte	.LASF224
	.byte	0x3
	.byte	0x22
	.byte	0x1e
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2b
	.string	"hz"
	.byte	0x3
	.byte	0x22
	.byte	0x28
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2b
	.string	"reg"
	.byte	0x3
	.byte	0x22
	.byte	0x30
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x25
	.4byte	.LASF225
	.byte	0x3
	.byte	0x23
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x25
	.4byte	.LASF226
	.byte	0x3
	.byte	0x24
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x3c
	.4byte	.LASF227
	.byte	0x3
	.byte	0x15
	.byte	0xc
	.4byte	0x99d
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x14e3
	.byte	0x2b
	.string	"p"
	.byte	0x3
	.byte	0x15
	.byte	0x1e
	.4byte	0x9a9
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x39
	.string	"lo"
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x39
	.string	"hi"
	.byte	0x3
	.byte	0x16
	.byte	0xd
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x37
	.4byte	.LASF228
	.byte	0x3
	.byte	0xe
	.byte	0xd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x1525
	.byte	0x2b
	.string	"p"
	.byte	0x3
	.byte	0xe
	.byte	0x1e
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"cmp"
	.byte	0x3
	.byte	0xe
	.byte	0x25
	.4byte	0x99d
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x38
	.4byte	.LASF229
	.byte	0x3
	.byte	0xe
	.byte	0x2e
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x3c
	.4byte	.LASF230
	.byte	0x3
	.byte	0xb
	.byte	0x13
	.4byte	0x9a9
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x154f
	.byte	0x2b
	.string	"reg"
	.byte	0x3
	.byte	0xb
	.byte	0x29
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x3c
	.4byte	.LASF231
	.byte	0x3
	.byte	0xa
	.byte	0x13
	.4byte	0x9a9
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1579
	.byte	0x2b
	.string	"reg"
	.byte	0x3
	.byte	0xa
	.byte	0x28
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x37
	.4byte	.LASF232
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x15ae
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x32
	.byte	0x22
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF233
	.byte	0x2
	.byte	0x32
	.byte	0x34
	.4byte	0x15ae
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xa68
	.byte	0x3c
	.4byte	.LASF234
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.4byte	0x1ad
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x15de
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x37
	.4byte	.LASF235
	.byte	0x2
	.byte	0x26
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1643
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x26
	.byte	0x1f
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x38
	.4byte	.LASF221
	.byte	0x2
	.byte	0x26
	.byte	0x28
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x31
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x39
	.string	"i"
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x31
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x39
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
	.byte	0x37
	.4byte	.LASF236
	.byte	0x2
	.byte	0x22
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1678
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x22
	.byte	0x1f
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.string	"str"
	.byte	0x2
	.byte	0x22
	.byte	0x30
	.4byte	0x674
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x37
	.4byte	.LASF237
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x16ad
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x1d
	.byte	0x1c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF238
	.byte	0x2
	.byte	0x1d
	.byte	0x26
	.4byte	0x1ad
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x3c
	.4byte	.LASF239
	.byte	0x2
	.byte	0x19
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x16d7
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x19
	.byte	0x23
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x3c
	.4byte	.LASF240
	.byte	0x2
	.byte	0x16
	.byte	0xc
	.4byte	0x9a9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1701
	.byte	0x2b
	.string	"reg"
	.byte	0x2
	.byte	0x16
	.byte	0x27
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x3d
	.4byte	.LASF241
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1736
	.byte	0x38
	.4byte	.LASF146
	.byte	0x1
	.byte	0x1e
	.byte	0x25
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF238
	.byte	0x1
	.byte	0x1e
	.byte	0x32
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x3d
	.4byte	.LASF242
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x176b
	.byte	0x38
	.4byte	.LASF238
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x38
	.4byte	.LASF146
	.byte	0x1
	.byte	0xa
	.byte	0x2c
	.4byte	0x9a9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x3e
	.4byte	.LASF243
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0x9a9
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x38
	.4byte	.LASF146
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.4byte	0x9a9
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x2e
	.byte	0x1
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
	.byte	0x2e
	.byte	0x1
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
	.byte	0x34
	.byte	0x2e
	.byte	0
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
	.byte	0x35
	.byte	0x2e
	.byte	0x1
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
	.byte	0x36
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
	.byte	0x97,0x42
	.byte	0x19
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
	.byte	0x39
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
	.byte	0x3a
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x3b
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.4byte	0x124
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF150:
	.string	"SdramTiming"
.LASF139:
	.string	"parity"
.LASF151:
	.string	"MT41K128M16JT_125_ps"
.LASF187:
	.string	"timing"
.LASF245:
	.string	"main.c"
.LASF201:
	.string	"cWTP_ADD"
.LASF163:
	.string	"sys_irqpc"
.LASF191:
	.string	"blMod"
.LASF149:
	.string	"generation"
.LASF48:
	.string	"_on_exit_args"
.LASF229:
	.string	"hart_id"
.LASF179:
	.string	"sdram_mem_init"
.LASF115:
	.string	"_wctomb_state"
.LASF243:
	.string	"read_u32"
.LASF241:
	.string	"write_u32_ad"
.LASF112:
	.string	"_r48"
.LASF168:
	.string	"eye_best_start"
.LASF117:
	.string	"_signal_buf"
.LASF133:
	.string	"UartParity"
.LASF13:
	.string	"unsigned int"
.LASF180:
	.string	"lfsr16"
.LASF230:
	.string	"clint_getTimeHigh"
.LASF135:
	.string	"NONE"
.LASF62:
	.string	"_lbfsize"
.LASF60:
	.string	"_flags"
.LASF136:
	.string	"EVEN"
.LASF217:
	.string	"startPhase"
.LASF6:
	.string	"__int32_t"
.LASF77:
	.string	"_errno"
.LASF225:
	.string	"mTimePerUsec"
.LASF141:
	.string	"clockDivider"
.LASF165:
	.string	"putcon"
.LASF157:
	.string	"_heap_start"
.LASF226:
	.string	"limit"
.LASF74:
	.string	"_mbstate"
.LASF197:
	.string	"activePhase"
.LASF64:
	.string	"_read"
.LASF216:
	.string	"sdram_udelay"
.LASF119:
	.string	"_mbrlen_state"
.LASF156:
	.string	"heap_ptr"
.LASF171:
	.string	"dq_delay"
.LASF79:
	.string	"_stdout"
.LASF144:
	.string	"_SYMTABLE"
.LASF22:
	.string	"_fpos_t"
.LASF228:
	.string	"clint_setCmp"
.LASF55:
	.string	"_fns"
.LASF63:
	.string	"_cookie"
.LASF131:
	.string	"_global_impure_ptr"
.LASF37:
	.string	"_Bigint"
.LASF161:
	.string	"sys_uepc"
.LASF45:
	.string	"__tm_wday"
.LASF232:
	.string	"uart_applyConfig"
.LASF87:
	.string	"_result"
.LASF17:
	.string	"uint32_t"
.LASF41:
	.string	"__tm_hour"
.LASF27:
	.string	"__count"
.LASF212:
	.string	"cFAW"
.LASF231:
	.string	"clint_getTimeLow"
.LASF40:
	.string	"__tm_min"
.LASF130:
	.string	"_impure_ptr"
.LASF125:
	.string	"_nextf"
.LASF219:
	.string	"duration"
.LASF102:
	.string	"_rand48"
.LASF88:
	.string	"_result_k"
.LASF12:
	.string	"long long unsigned int"
.LASF169:
	.string	"eye_best_last"
.LASF108:
	.string	"_asctime_buf"
.LASF59:
	.string	"__sFILE"
.LASF36:
	.string	"_wds"
.LASF160:
	.string	"sys_ucause"
.LASF178:
	.string	"sdram_phy_s7"
.LASF4:
	.string	"__uint16_t"
.LASF98:
	.string	"__FILE"
.LASF247:
	.string	"lfsr32"
.LASF71:
	.string	"_offset"
.LASF194:
	.string	"readPhase"
.LASF145:
	.string	"name"
.LASF166:
	.string	"core"
.LASF148:
	.string	"SYMTABLETOP"
.LASF82:
	.string	"_emergency"
.LASF224:
	.string	"usec"
.LASF199:
	.string	"cRRD_MIN"
.LASF248:
	.string	"lfsrReset"
.LASF177:
	.string	"counter"
.LASF147:
	.string	"SYMTABLE"
.LASF188:
	.string	"sdramPeriod"
.LASF206:
	.string	"cRRD"
.LASF39:
	.string	"__tm_sec"
.LASF46:
	.string	"__tm_yday"
.LASF81:
	.string	"_inc"
.LASF54:
	.string	"_ind"
.LASF137:
	.string	"UartStop"
.LASF172:
	.string	"readLatency"
.LASF33:
	.string	"_next"
.LASF214:
	.string	"sdram_command"
.LASF207:
	.string	"cRCD"
.LASF121:
	.string	"_mbsrtowcs_state"
.LASF11:
	.string	"__uint64_t"
.LASF246:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF239:
	.string	"uart_readOccupancy"
.LASF155:
	.string	"lfsr"
.LASF28:
	.string	"__value"
.LASF89:
	.string	"_p5s"
.LASF235:
	.string	"uart_writeHex"
.LASF196:
	.string	"writePhase"
.LASF123:
	.string	"_wcsrtombs_state"
.LASF113:
	.string	"_mblen_state"
.LASF31:
	.string	"char"
.LASF42:
	.string	"__tm_mday"
.LASF95:
	.string	"_sig_func"
.LASF120:
	.string	"_mbrtowc_state"
.LASF94:
	.string	"_atexit0"
.LASF30:
	.string	"_flock_t"
.LASF213:
	.string	"ODTend"
.LASF25:
	.string	"__wch"
.LASF101:
	.string	"_iobs"
.LASF14:
	.string	"uint8_t"
.LASF174:
	.string	"sdram_phy_s7_scan"
.LASF186:
	.string	"sdram_ddr2_init"
.LASF67:
	.string	"_close"
.LASF158:
	.string	"sys_mcause"
.LASF85:
	.string	"__sdidinit"
.LASF195:
	.string	"writeToDataCycle"
.LASF223:
	.string	"clint_uDelay"
.LASF175:
	.string	"sdram_mem_test"
.LASF78:
	.string	"_stdin"
.LASF110:
	.string	"_gamma_signgam"
.LASF227:
	.string	"clint_getTime"
.LASF184:
	.string	"wrToMr"
.LASF10:
	.string	"long long int"
.LASF185:
	.string	"rlToMr"
.LASF57:
	.string	"_base"
.LASF90:
	.string	"_freelist"
.LASF222:
	.string	"gpio_setOutput"
.LASF104:
	.string	"_mult"
.LASF32:
	.string	"__ULong"
.LASF143:
	.string	"xfunc_out"
.LASF146:
	.string	"address"
.LASF122:
	.string	"_wcrtomb_state"
.LASF61:
	.string	"_file"
.LASF86:
	.string	"__cleanup"
.LASF29:
	.string	"_mbstate_t"
.LASF204:
	.string	"cRAS"
.LASF49:
	.string	"_fnargs"
.LASF176:
	.string	"range"
.LASF159:
	.string	"sys_mepc"
.LASF47:
	.string	"__tm_isdst"
.LASF183:
	.string	"phyClkRatio"
.LASF124:
	.string	"_h_errno"
.LASF189:
	.string	"emr1"
.LASF237:
	.string	"uart_write"
.LASF140:
	.string	"stop"
.LASF238:
	.string	"data"
.LASF43:
	.string	"__tm_mon"
.LASF19:
	.string	"long double"
.LASF20:
	.string	"_LOCK_T"
.LASF15:
	.string	"uint16_t"
.LASF164:
	.string	"main"
.LASF65:
	.string	"_write"
.LASF198:
	.string	"prechargePhase"
.LASF132:
	.string	"UartDataLength"
.LASF182:
	.string	"ctrlBurstLength"
.LASF134:
	.string	"BITS_8"
.LASF53:
	.string	"_atexit"
.LASF233:
	.string	"config"
.LASF202:
	.string	"ctrlPeriod"
.LASF240:
	.string	"uart_writeAvailability"
.LASF154:
	.string	"AS4C32M16SB_7TCN_ps"
.LASF2:
	.string	"short int"
.LASF167:
	.string	"eye_start"
.LASF7:
	.string	"long int"
.LASF218:
	.string	"nextPhase"
.LASF220:
	.string	"gpio_setOutputEnable"
.LASF142:
	.string	"Uart_Config"
.LASF97:
	.string	"__sf"
.LASF35:
	.string	"_sign"
.LASF190:
	.string	"sdram_sdr_init"
.LASF72:
	.string	"_data"
.LASF26:
	.string	"__wchb"
.LASF18:
	.string	"uint64_t"
.LASF44:
	.string	"__tm_year"
.LASF162:
	.string	"sys_irqcause"
.LASF109:
	.string	"_localtime_buf"
.LASF127:
	.string	"_unused"
.LASF3:
	.string	"__uint8_t"
.LASF93:
	.string	"_new"
.LASF91:
	.string	"_cvtlen"
.LASF34:
	.string	"_maxwds"
.LASF116:
	.string	"_l64a_buf"
.LASF242:
	.string	"write_u32"
.LASF234:
	.string	"uart_read"
.LASF193:
	.string	"readToDataCycle"
.LASF70:
	.string	"_blksize"
.LASF38:
	.string	"__tm"
.LASF73:
	.string	"_lock"
.LASF211:
	.string	"cWTP"
.LASF210:
	.string	"cWTR"
.LASF192:
	.string	"sdram_init"
.LASF9:
	.string	"long unsigned int"
.LASF244:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF170:
	.string	"idelay"
.LASF100:
	.string	"_niobs"
.LASF24:
	.string	"wint_t"
.LASF209:
	.string	"cRTP"
.LASF16:
	.string	"int32_t"
.LASF203:
	.string	"cREF"
.LASF208:
	.string	"cRTW"
.LASF50:
	.string	"_dso_handle"
.LASF128:
	.string	"__lock"
.LASF92:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"__uint32_t"
.LASF118:
	.string	"_getdate_err"
.LASF105:
	.string	"_add"
.LASF205:
	.string	"cRFC"
.LASF138:
	.string	"dataLength"
.LASF56:
	.string	"__sbuf"
.LASF99:
	.string	"_glue"
.LASF96:
	.string	"__sglue"
.LASF107:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbtowc_state"
.LASF152:
	.string	"MT47H64M16HR_25_ps"
.LASF215:
	.string	"bank"
.LASF84:
	.string	"_locale"
.LASF173:
	.string	"bitsleep"
.LASF23:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF76:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF181:
	.string	"sdram_ddr3_init"
.LASF153:
	.string	"MT48LC16M16A2_6A_ps"
.LASF51:
	.string	"_fntypes"
.LASF58:
	.string	"_size"
.LASF236:
	.string	"uart_writeStr"
.LASF21:
	.string	"_off_t"
.LASF69:
	.string	"_nbuf"
.LASF106:
	.string	"_unused_rand"
.LASF83:
	.string	"_unspecified_locale_info"
.LASF200:
	.string	"cRTW_IDLE"
.LASF75:
	.string	"_flags2"
.LASF52:
	.string	"_is_cxa"
.LASF103:
	.string	"_seed"
.LASF111:
	.string	"_rand_next"
.LASF129:
	.string	"__locale_t"
.LASF221:
	.string	"value"
.LASF66:
	.string	"_seek"
.LASF80:
	.string	"_stderr"
.LASF126:
	.string	"_nmalloc"
.LASF68:
	.string	"_ubuf"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
