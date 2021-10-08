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
	.comm	_SYMTABLE,2048,4
	.section	.text.putcon,"ax",@progbits
	.align	1
	.globl	putcon
	.type	putcon, @function
putcon:
.LFB28:
	.file 5 "main.c"
	.loc 5 26 1
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
	.loc 5 27 2
	lbu	a5,-17(s0)
	mv	a1,a5
	li	a0,-268369920
	call	uart_write
	.loc 5 28 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE28:
	.size	putcon, .-putcon
	.section	.rodata
	.align	2
.LC0:
	.string	"*** SaxonSoc Booted...\n"
	.section	.text.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB29:
	.loc 5 31 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 5 42 5
	li	a1,1
	li	a0,-268435456
	call	gpio_setOutputEnable
	.loc 5 43 5
	li	a1,0
	li	a0,-268435456
	call	gpio_setOutput
	.loc 5 45 2
	lui	a5,%hi(.LC0)
	addi	a1,a5,%lo(.LC0)
	li	a0,-268369920
	call	uart_writeStr
	.loc 5 65 12
	lui	a5,%hi(xfunc_out)
	lui	a4,%hi(putcon)
	addi	a4,a4,%lo(putcon)
	sw	a4,%lo(xfunc_out)(a5)
	.loc 5 97 2
	call	_main
	li	a5,0
	.loc 5 159 1
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
	.size	main, .-main
	.text
.Letext0:
	.file 6 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 7 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 8 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\lock.h"
	.file 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h"
	.file 10 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h"
	.file 11 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h"
	.file 12 "bsp/type.h"
	.file 13 "xprintf.h"
	.file 14 "symtable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeeb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF178
	.byte	0xc
	.4byte	.LASF179
	.4byte	.LASF180
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x6
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x6
	.byte	0x69
	.byte	0x20
	.4byte	0x7a
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF13
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x7
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.byte	0x2
	.byte	0x10
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.4byte	.LASF16
	.byte	0x8
	.byte	0x22
	.byte	0x19
	.4byte	0xc6
	.byte	0x5
	.byte	0x4
	.4byte	0xcc
	.byte	0x6
	.4byte	.LASF124
	.byte	0x3
	.4byte	.LASF17
	.byte	0x9
	.byte	0x2c
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF18
	.byte	0x9
	.byte	0x72
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF19
	.byte	0x9
	.byte	0x91
	.byte	0x14
	.4byte	0x81
	.byte	0x7
	.4byte	.LASF20
	.byte	0xa
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x8
	.byte	0x4
	.byte	0x9
	.byte	0xa6
	.byte	0x3
	.4byte	0x124
	.byte	0x9
	.4byte	.LASF21
	.byte	0x9
	.byte	0xa8
	.byte	0xc
	.4byte	0xf5
	.byte	0x9
	.4byte	.LASF22
	.byte	0x9
	.byte	0xa9
	.byte	0x13
	.4byte	0x124
	.byte	0
	.byte	0xa
	.4byte	0x2c
	.4byte	0x134
	.byte	0xb
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.byte	0xa3
	.byte	0x9
	.4byte	0x158
	.byte	0xd
	.4byte	.LASF23
	.byte	0x9
	.byte	0xa5
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xd
	.4byte	.LASF24
	.byte	0x9
	.byte	0xaa
	.byte	0x5
	.4byte	0x102
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x9
	.byte	0xab
	.byte	0x3
	.4byte	0x134
	.byte	0x3
	.4byte	.LASF26
	.byte	0x9
	.byte	0xaf
	.byte	0x11
	.4byte	0xba
	.byte	0xe
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.4byte	0x178
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.byte	0xf
	.4byte	0x178
	.byte	0x3
	.4byte	.LASF28
	.byte	0xb
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.byte	0x10
	.4byte	.LASF33
	.byte	0x18
	.byte	0xb
	.byte	0x2f
	.byte	0x8
	.4byte	0x1ea
	.byte	0xd
	.4byte	.LASF29
	.byte	0xb
	.byte	0x31
	.byte	0x13
	.4byte	0x1ea
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0xb
	.byte	0x32
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xd
	.4byte	.LASF30
	.byte	0xb
	.byte	0x32
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xd
	.4byte	.LASF31
	.byte	0xb
	.byte	0x32
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xd
	.4byte	.LASF32
	.byte	0xb
	.byte	0x32
	.byte	0x1b
	.4byte	0x81
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0xb
	.byte	0x33
	.byte	0xb
	.4byte	0x1f0
	.byte	0x14
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x190
	.byte	0xa
	.4byte	0x184
	.4byte	0x200
	.byte	0xb
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF34
	.byte	0x24
	.byte	0xb
	.byte	0x37
	.byte	0x8
	.4byte	0x283
	.byte	0xd
	.4byte	.LASF35
	.byte	0xb
	.byte	0x39
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xd
	.4byte	.LASF36
	.byte	0xb
	.byte	0x3a
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xd
	.4byte	.LASF37
	.byte	0xb
	.byte	0x3b
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xd
	.4byte	.LASF38
	.byte	0xb
	.byte	0x3c
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xd
	.4byte	.LASF39
	.byte	0xb
	.byte	0x3d
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xd
	.4byte	.LASF40
	.byte	0xb
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xd
	.4byte	.LASF41
	.byte	0xb
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xd
	.4byte	.LASF42
	.byte	0xb
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF43
	.byte	0xb
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF44
	.2byte	0x108
	.byte	0xb
	.byte	0x4a
	.byte	0x8
	.4byte	0x2c8
	.byte	0xd
	.4byte	.LASF45
	.byte	0xb
	.byte	0x4b
	.byte	0x9
	.4byte	0x2c8
	.byte	0
	.byte	0xd
	.4byte	.LASF46
	.byte	0xb
	.byte	0x4c
	.byte	0x9
	.4byte	0x2c8
	.byte	0x80
	.byte	0x13
	.4byte	.LASF47
	.byte	0xb
	.byte	0x4e
	.byte	0xa
	.4byte	0x184
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF48
	.byte	0xb
	.byte	0x51
	.byte	0xa
	.4byte	0x184
	.2byte	0x104
	.byte	0
	.byte	0xa
	.4byte	0x170
	.4byte	0x2d8
	.byte	0xb
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF49
	.2byte	0x190
	.byte	0xb
	.byte	0x5d
	.byte	0x8
	.4byte	0x31b
	.byte	0xd
	.4byte	.LASF29
	.byte	0xb
	.byte	0x5e
	.byte	0x12
	.4byte	0x31b
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5f
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xd
	.4byte	.LASF51
	.byte	0xb
	.byte	0x61
	.byte	0x9
	.4byte	0x321
	.byte	0x8
	.byte	0xd
	.4byte	.LASF44
	.byte	0xb
	.byte	0x62
	.byte	0x1e
	.4byte	0x283
	.byte	0x88
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x2d8
	.byte	0xa
	.4byte	0x331
	.4byte	0x331
	.byte	0xb
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x337
	.byte	0x14
	.byte	0x10
	.4byte	.LASF52
	.byte	0x8
	.byte	0xb
	.byte	0x75
	.byte	0x8
	.4byte	0x360
	.byte	0xd
	.4byte	.LASF53
	.byte	0xb
	.byte	0x76
	.byte	0x11
	.4byte	0x360
	.byte	0
	.byte	0xd
	.4byte	.LASF54
	.byte	0xb
	.byte	0x77
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x2c
	.byte	0x10
	.4byte	.LASF55
	.byte	0x68
	.byte	0xb
	.byte	0xb5
	.byte	0x8
	.4byte	0x4a9
	.byte	0x11
	.string	"_p"
	.byte	0xb
	.byte	0xb6
	.byte	0x12
	.4byte	0x360
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0xb
	.byte	0xb7
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0xb
	.byte	0xb8
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xd
	.4byte	.LASF56
	.byte	0xb
	.byte	0xb9
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xd
	.4byte	.LASF57
	.byte	0xb
	.byte	0xba
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0xb
	.byte	0xbb
	.byte	0x11
	.4byte	0x338
	.byte	0x10
	.byte	0xd
	.4byte	.LASF58
	.byte	0xb
	.byte	0xbc
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xd
	.4byte	.LASF59
	.byte	0xb
	.byte	0xc3
	.byte	0xa
	.4byte	0x170
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF60
	.byte	0xb
	.byte	0xc5
	.byte	0xe
	.4byte	0x61b
	.byte	0x20
	.byte	0xd
	.4byte	.LASF61
	.byte	0xb
	.byte	0xc7
	.byte	0xe
	.4byte	0x645
	.byte	0x24
	.byte	0xd
	.4byte	.LASF62
	.byte	0xb
	.byte	0xca
	.byte	0xd
	.4byte	0x669
	.byte	0x28
	.byte	0xd
	.4byte	.LASF63
	.byte	0xb
	.byte	0xcb
	.byte	0x9
	.4byte	0x683
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0xb
	.byte	0xce
	.byte	0x11
	.4byte	0x338
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0xb
	.byte	0xcf
	.byte	0x12
	.4byte	0x360
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0xb
	.byte	0xd0
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF64
	.byte	0xb
	.byte	0xd3
	.byte	0x11
	.4byte	0x689
	.byte	0x40
	.byte	0xd
	.4byte	.LASF65
	.byte	0xb
	.byte	0xd4
	.byte	0x11
	.4byte	0x699
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0xb
	.byte	0xd7
	.byte	0x11
	.4byte	0x338
	.byte	0x44
	.byte	0xd
	.4byte	.LASF66
	.byte	0xb
	.byte	0xda
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xd
	.4byte	.LASF67
	.byte	0xb
	.byte	0xdb
	.byte	0xa
	.4byte	0xd1
	.byte	0x50
	.byte	0xd
	.4byte	.LASF68
	.byte	0xb
	.byte	0xde
	.byte	0x12
	.4byte	0x4c7
	.byte	0x54
	.byte	0xd
	.4byte	.LASF69
	.byte	0xb
	.byte	0xe2
	.byte	0xc
	.4byte	0x164
	.byte	0x58
	.byte	0xd
	.4byte	.LASF70
	.byte	0xb
	.byte	0xe4
	.byte	0xe
	.4byte	0x158
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF71
	.byte	0xb
	.byte	0xe5
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xe9
	.4byte	0x4c7
	.byte	0x16
	.4byte	0x4c7
	.byte	0x16
	.4byte	0x170
	.byte	0x16
	.4byte	0x172
	.byte	0x16
	.4byte	0x81
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x4d2
	.byte	0xf
	.4byte	0x4c7
	.byte	0x17
	.4byte	.LASF72
	.2byte	0x428
	.byte	0xb
	.2byte	0x239
	.byte	0x8
	.4byte	0x61b
	.byte	0x18
	.4byte	.LASF73
	.byte	0xb
	.2byte	0x23b
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x18
	.4byte	.LASF74
	.byte	0xb
	.2byte	0x240
	.byte	0xb
	.4byte	0x6f5
	.byte	0x4
	.byte	0x18
	.4byte	.LASF75
	.byte	0xb
	.2byte	0x240
	.byte	0x14
	.4byte	0x6f5
	.byte	0x8
	.byte	0x18
	.4byte	.LASF76
	.byte	0xb
	.2byte	0x240
	.byte	0x1e
	.4byte	0x6f5
	.byte	0xc
	.byte	0x18
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x242
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x18
	.4byte	.LASF78
	.byte	0xb
	.2byte	0x243
	.byte	0x8
	.4byte	0x8f5
	.byte	0x14
	.byte	0x18
	.4byte	.LASF79
	.byte	0xb
	.2byte	0x246
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x18
	.4byte	.LASF80
	.byte	0xb
	.2byte	0x247
	.byte	0x16
	.4byte	0x90a
	.byte	0x34
	.byte	0x18
	.4byte	.LASF81
	.byte	0xb
	.2byte	0x249
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x18
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x24b
	.byte	0xa
	.4byte	0x91b
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x24e
	.byte	0x13
	.4byte	0x1ea
	.byte	0x40
	.byte	0x18
	.4byte	.LASF84
	.byte	0xb
	.2byte	0x24f
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x18
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x250
	.byte	0x13
	.4byte	0x1ea
	.byte	0x48
	.byte	0x18
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x251
	.byte	0x14
	.4byte	0x921
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x254
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x18
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x255
	.byte	0x9
	.4byte	0x172
	.byte	0x54
	.byte	0x18
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x278
	.byte	0x7
	.4byte	0x8d0
	.byte	0x58
	.byte	0x19
	.4byte	.LASF49
	.byte	0xb
	.2byte	0x27c
	.byte	0x13
	.4byte	0x31b
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x27d
	.byte	0x12
	.4byte	0x2d8
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x281
	.byte	0xc
	.4byte	0x932
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x286
	.byte	0x10
	.4byte	0x6b6
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x288
	.byte	0xa
	.4byte	0x93e
	.2byte	0x2ec
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x4a9
	.byte	0x15
	.4byte	0xe9
	.4byte	0x63f
	.byte	0x16
	.4byte	0x4c7
	.byte	0x16
	.4byte	0x170
	.byte	0x16
	.4byte	0x63f
	.byte	0x16
	.4byte	0x81
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x17f
	.byte	0x5
	.byte	0x4
	.4byte	0x621
	.byte	0x15
	.4byte	0xdd
	.4byte	0x669
	.byte	0x16
	.4byte	0x4c7
	.byte	0x16
	.4byte	0x170
	.byte	0x16
	.4byte	0xdd
	.byte	0x16
	.4byte	0x81
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x64b
	.byte	0x15
	.4byte	0x81
	.4byte	0x683
	.byte	0x16
	.4byte	0x4c7
	.byte	0x16
	.4byte	0x170
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x66f
	.byte	0xa
	.4byte	0x2c
	.4byte	0x699
	.byte	0xb
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	0x2c
	.4byte	0x6a9
	.byte	0xb
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x7
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x11f
	.byte	0x18
	.4byte	0x366
	.byte	0x1a
	.4byte	.LASF95
	.byte	0xc
	.byte	0xb
	.2byte	0x123
	.byte	0x8
	.4byte	0x6ef
	.byte	0x18
	.4byte	.LASF29
	.byte	0xb
	.2byte	0x125
	.byte	0x11
	.4byte	0x6ef
	.byte	0
	.byte	0x18
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x126
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x18
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x127
	.byte	0xb
	.4byte	0x6f5
	.byte	0x8
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x6b6
	.byte	0x5
	.byte	0x4
	.4byte	0x6a9
	.byte	0x1a
	.4byte	.LASF98
	.byte	0xe
	.byte	0xb
	.2byte	0x13f
	.byte	0x8
	.4byte	0x734
	.byte	0x18
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x140
	.byte	0x12
	.4byte	0x734
	.byte	0
	.byte	0x18
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x141
	.byte	0x12
	.4byte	0x734
	.byte	0x6
	.byte	0x18
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x142
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	0x3a
	.4byte	0x744
	.byte	0xb
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0xb
	.2byte	0x259
	.byte	0x7
	.4byte	0x859
	.byte	0x18
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x25b
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x18
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x25c
	.byte	0x12
	.4byte	0x172
	.byte	0x4
	.byte	0x18
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x25d
	.byte	0x10
	.4byte	0x859
	.byte	0x8
	.byte	0x18
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x25e
	.byte	0x17
	.4byte	0x200
	.byte	0x24
	.byte	0x18
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x25f
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x18
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x260
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x18
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x261
	.byte	0x1a
	.4byte	0x6fb
	.byte	0x58
	.byte	0x18
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x262
	.byte	0x16
	.4byte	0x158
	.byte	0x68
	.byte	0x18
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x263
	.byte	0x16
	.4byte	0x158
	.byte	0x70
	.byte	0x18
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x264
	.byte	0x16
	.4byte	0x158
	.byte	0x78
	.byte	0x18
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x265
	.byte	0x10
	.4byte	0x869
	.byte	0x80
	.byte	0x18
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x266
	.byte	0x10
	.4byte	0x879
	.byte	0x88
	.byte	0x18
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x267
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x268
	.byte	0x16
	.4byte	0x158
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x269
	.byte	0x16
	.4byte	0x158
	.byte	0xac
	.byte	0x18
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x26a
	.byte	0x16
	.4byte	0x158
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x26b
	.byte	0x16
	.4byte	0x158
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x26c
	.byte	0x16
	.4byte	0x158
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x26d
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0xa
	.4byte	0x178
	.4byte	0x869
	.byte	0xb
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0xa
	.4byte	0x178
	.4byte	0x879
	.byte	0xb
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0x178
	.4byte	0x889
	.byte	0xb
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0xb
	.2byte	0x272
	.byte	0x7
	.4byte	0x8b0
	.byte	0x18
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x275
	.byte	0x1b
	.4byte	0x8b0
	.byte	0
	.byte	0x18
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x276
	.byte	0x18
	.4byte	0x8c0
	.byte	0x78
	.byte	0
	.byte	0xa
	.4byte	0x360
	.4byte	0x8c0
	.byte	0xb
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0xa
	.4byte	0x88
	.4byte	0x8d0
	.byte	0xb
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0xb
	.2byte	0x257
	.byte	0x3
	.4byte	0x8f5
	.byte	0x1d
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x26e
	.byte	0xb
	.4byte	0x744
	.byte	0x1d
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x277
	.byte	0xb
	.4byte	0x889
	.byte	0
	.byte	0xa
	.4byte	0x178
	.4byte	0x905
	.byte	0xb
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x6
	.4byte	.LASF125
	.byte	0x5
	.byte	0x4
	.4byte	0x905
	.byte	0x1e
	.4byte	0x91b
	.byte	0x16
	.4byte	0x4c7
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x910
	.byte	0x5
	.byte	0x4
	.4byte	0x1ea
	.byte	0x1e
	.4byte	0x932
	.byte	0x16
	.4byte	0x81
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x938
	.byte	0x5
	.byte	0x4
	.4byte	0x927
	.byte	0xa
	.4byte	0x6a9
	.4byte	0x94e
	.byte	0xb
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x307
	.byte	0x17
	.4byte	0x4c7
	.byte	0x1f
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x308
	.byte	0x1d
	.4byte	0x4cd
	.byte	0x20
	.string	"u64"
	.byte	0xc
	.byte	0x6
	.byte	0x12
	.4byte	0xa7
	.byte	0x20
	.string	"u32"
	.byte	0xc
	.byte	0x9
	.byte	0x12
	.4byte	0x9b
	.byte	0x21
	.4byte	.LASF128
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x2
	.byte	0xb
	.byte	0x6
	.4byte	0x999
	.byte	0x22
	.4byte	.LASF130
	.byte	0x8
	.byte	0
	.byte	0x21
	.4byte	.LASF129
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x2
	.byte	0xc
	.byte	0x6
	.4byte	0x9be
	.byte	0x22
	.4byte	.LASF131
	.byte	0
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x23
	.string	"ODD"
	.byte	0x2
	.byte	0
	.byte	0x21
	.4byte	.LASF133
	.byte	0x7
	.byte	0x4
	.4byte	0x88
	.byte	0x2
	.byte	0xd
	.byte	0x6
	.4byte	0x9dd
	.byte	0x23
	.string	"ONE"
	.byte	0
	.byte	0x23
	.string	"TWO"
	.byte	0x1
	.byte	0
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0xf
	.byte	0x9
	.4byte	0xa1b
	.byte	0xd
	.4byte	.LASF134
	.byte	0x2
	.byte	0x10
	.byte	0x19
	.4byte	0x980
	.byte	0
	.byte	0xd
	.4byte	.LASF135
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x999
	.byte	0x4
	.byte	0xd
	.4byte	.LASF136
	.byte	0x2
	.byte	0x12
	.byte	0x13
	.4byte	0x9be
	.byte	0x8
	.byte	0xd
	.4byte	.LASF137
	.byte	0x2
	.byte	0x13
	.byte	0x9
	.4byte	0x974
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF138
	.byte	0x2
	.byte	0x14
	.byte	0x3
	.4byte	0x9dd
	.byte	0x1e
	.4byte	0xa32
	.byte	0x16
	.4byte	0x2c
	.byte	0
	.byte	0x24
	.4byte	.LASF139
	.byte	0xd
	.byte	0x13
	.byte	0xf
	.4byte	0xa3e
	.byte	0x5
	.byte	0x4
	.4byte	0xa27
	.byte	0x10
	.4byte	.LASF140
	.byte	0x10
	.byte	0xe
	.byte	0x6
	.byte	0x10
	.4byte	0xa6c
	.byte	0xd
	.4byte	.LASF141
	.byte	0xe
	.byte	0x8
	.byte	0x10
	.4byte	0xa6c
	.byte	0
	.byte	0xd
	.4byte	.LASF142
	.byte	0xe
	.byte	0x9
	.byte	0xf
	.4byte	0x88
	.byte	0xc
	.byte	0
	.byte	0xa
	.4byte	0x2c
	.4byte	0xa7c
	.byte	0xb
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF143
	.byte	0xe
	.byte	0xa
	.byte	0x3
	.4byte	0xa44
	.byte	0x24
	.4byte	.LASF144
	.byte	0xe
	.byte	0xc
	.byte	0x12
	.4byte	0xa94
	.byte	0x5
	.byte	0x4
	.4byte	0xa7c
	.byte	0xa
	.4byte	0xa7c
	.4byte	0xaaa
	.byte	0xb
	.4byte	0x88
	.byte	0x7f
	.byte	0
	.byte	0x25
	.4byte	.LASF140
	.byte	0x5
	.byte	0xe
	.byte	0xa
	.4byte	0xa9a
	.byte	0x5
	.byte	0x3
	.4byte	_SYMTABLE
	.byte	0x24
	.4byte	.LASF145
	.byte	0x5
	.byte	0x11
	.byte	0x11
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF146
	.byte	0x5
	.byte	0x11
	.byte	0x1a
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF147
	.byte	0x5
	.byte	0x12
	.byte	0x11
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF148
	.byte	0x5
	.byte	0x12
	.byte	0x1c
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF149
	.byte	0x5
	.byte	0x13
	.byte	0x11
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF150
	.byte	0x5
	.byte	0x13
	.byte	0x1c
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF151
	.byte	0x5
	.byte	0x14
	.byte	0x11
	.4byte	0x9b
	.byte	0x24
	.4byte	.LASF152
	.byte	0x5
	.byte	0x14
	.byte	0x1e
	.4byte	0x9b
	.byte	0x26
	.4byte	.LASF153
	.byte	0x5
	.byte	0x1e
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xb41
	.byte	0x27
	.string	"i"
	.byte	0x5
	.byte	0x20
	.byte	0x6
	.4byte	0x81
	.byte	0
	.byte	0x28
	.4byte	.LASF154
	.byte	0x5
	.byte	0x19
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xb65
	.byte	0x29
	.string	"i"
	.byte	0x5
	.byte	0x19
	.byte	0x12
	.4byte	0x178
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x2a
	.4byte	.LASF156
	.byte	0x4
	.byte	0x13
	.byte	0x14
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xb9a
	.byte	0x29
	.string	"reg"
	.byte	0x4
	.byte	0x13
	.byte	0x2d
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF155
	.byte	0x4
	.byte	0x13
	.byte	0x36
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2a
	.4byte	.LASF157
	.byte	0x4
	.byte	0x11
	.byte	0x14
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xbcf
	.byte	0x29
	.string	"reg"
	.byte	0x4
	.byte	0x11
	.byte	0x27
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF155
	.byte	0x4
	.byte	0x11
	.byte	0x30
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2a
	.4byte	.LASF158
	.byte	0x3
	.byte	0x22
	.byte	0xd
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xc30
	.byte	0x2b
	.4byte	.LASF159
	.byte	0x3
	.byte	0x22
	.byte	0x1e
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x29
	.string	"hz"
	.byte	0x3
	.byte	0x22
	.byte	0x28
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x29
	.string	"reg"
	.byte	0x3
	.byte	0x22
	.byte	0x30
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2c
	.4byte	.LASF160
	.byte	0x3
	.byte	0x23
	.byte	0x9
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2c
	.4byte	.LASF161
	.byte	0x3
	.byte	0x24
	.byte	0x9
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2d
	.4byte	.LASF164
	.byte	0x3
	.byte	0x15
	.byte	0xc
	.4byte	0x968
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xc75
	.byte	0x29
	.string	"p"
	.byte	0x3
	.byte	0x15
	.byte	0x1e
	.4byte	0x974
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x2e
	.string	"lo"
	.byte	0x3
	.byte	0x16
	.byte	0x9
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2e
	.string	"hi"
	.byte	0x3
	.byte	0x16
	.byte	0xd
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2a
	.4byte	.LASF162
	.byte	0x3
	.byte	0xe
	.byte	0xd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb7
	.byte	0x29
	.string	"p"
	.byte	0x3
	.byte	0xe
	.byte	0x1e
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x29
	.string	"cmp"
	.byte	0x3
	.byte	0xe
	.byte	0x25
	.4byte	0x968
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2b
	.4byte	.LASF163
	.byte	0x3
	.byte	0xe
	.byte	0x2e
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2d
	.4byte	.LASF165
	.byte	0x3
	.byte	0xb
	.byte	0x13
	.4byte	0x974
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xce1
	.byte	0x29
	.string	"reg"
	.byte	0x3
	.byte	0xb
	.byte	0x29
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2d
	.4byte	.LASF166
	.byte	0x3
	.byte	0xa
	.byte	0x13
	.4byte	0x974
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xd0b
	.byte	0x29
	.string	"reg"
	.byte	0x3
	.byte	0xa
	.byte	0x28
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2a
	.4byte	.LASF167
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xd40
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x32
	.byte	0x22
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF168
	.byte	0x2
	.byte	0x32
	.byte	0x34
	.4byte	0xd40
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xa1b
	.byte	0x2d
	.4byte	.LASF169
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.4byte	0x178
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xd70
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2a
	.4byte	.LASF170
	.byte	0x2
	.byte	0x26
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd5
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x26
	.byte	0x1f
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x2b
	.4byte	.LASF155
	.byte	0x2
	.byte	0x26
	.byte	0x28
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2f
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x2e
	.string	"i"
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2f
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x2e
	.string	"hex"
	.byte	0x2
	.byte	0x28
	.byte	0xd
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF171
	.byte	0x2
	.byte	0x22
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xe0a
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x22
	.byte	0x1f
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x29
	.string	"str"
	.byte	0x2
	.byte	0x22
	.byte	0x30
	.4byte	0x63f
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x2a
	.4byte	.LASF172
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xe3f
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x1d
	.byte	0x1c
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF173
	.byte	0x2
	.byte	0x1d
	.byte	0x26
	.4byte	0x178
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x2d
	.4byte	.LASF174
	.byte	0x2
	.byte	0x19
	.byte	0xc
	.4byte	0x974
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xe69
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x19
	.byte	0x23
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2d
	.4byte	.LASF175
	.byte	0x2
	.byte	0x16
	.byte	0xc
	.4byte	0x974
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xe93
	.byte	0x29
	.string	"reg"
	.byte	0x2
	.byte	0x16
	.byte	0x27
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x30
	.4byte	.LASF176
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xec8
	.byte	0x2b
	.4byte	.LASF173
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0xa
	.byte	0x2c
	.4byte	0x974
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x31
	.4byte	.LASF177
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0x974
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.4byte	0x974
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.4byte	0xa4
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"_dso_handle"
.LASF155:
	.string	"value"
.LASF54:
	.string	"_size"
.LASF154:
	.string	"putcon"
.LASF98:
	.string	"_rand48"
.LASF144:
	.string	"SYMTABLETOP"
.LASF78:
	.string	"_emergency"
.LASF14:
	.string	"uint64_t"
.LASF151:
	.string	"sys_irqcause"
.LASF174:
	.string	"uart_readOccupancy"
.LASF68:
	.string	"_data"
.LASF163:
	.string	"hart_id"
.LASF118:
	.string	"_wcrtomb_state"
.LASF156:
	.string	"gpio_setOutputEnable"
.LASF119:
	.string	"_wcsrtombs_state"
.LASF10:
	.string	"long long unsigned int"
.LASF178:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF58:
	.string	"_lbfsize"
.LASF125:
	.string	"__locale_t"
.LASF161:
	.string	"limit"
.LASF175:
	.string	"uart_writeAvailability"
.LASF116:
	.string	"_mbrtowc_state"
.LASF35:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF64:
	.string	"_ubuf"
.LASF53:
	.string	"_base"
.LASF37:
	.string	"__tm_hour"
.LASF93:
	.string	"__sf"
.LASF44:
	.string	"_on_exit_args"
.LASF59:
	.string	"_cookie"
.LASF92:
	.string	"__sglue"
.LASF149:
	.string	"sys_ucause"
.LASF148:
	.string	"sys_mepc"
.LASF4:
	.string	"long int"
.LASF157:
	.string	"gpio_setOutput"
.LASF56:
	.string	"_flags"
.LASF48:
	.string	"_is_cxa"
.LASF74:
	.string	"_stdin"
.LASF158:
	.string	"clint_uDelay"
.LASF66:
	.string	"_blksize"
.LASF133:
	.string	"UartStop"
.LASF139:
	.string	"xfunc_out"
.LASF88:
	.string	"_cvtbuf"
.LASF67:
	.string	"_offset"
.LASF134:
	.string	"dataLength"
.LASF117:
	.string	"_mbsrtowcs_state"
.LASF115:
	.string	"_mbrlen_state"
.LASF45:
	.string	"_fnargs"
.LASF146:
	.string	"_heap_start"
.LASF176:
	.string	"write_u32"
.LASF172:
	.string	"uart_write"
.LASF51:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF31:
	.string	"_sign"
.LASF26:
	.string	"_flock_t"
.LASF76:
	.string	"_stderr"
.LASF33:
	.string	"_Bigint"
.LASF106:
	.string	"_gamma_signgam"
.LASF160:
	.string	"mTimePerUsec"
.LASF60:
	.string	"_read"
.LASF84:
	.string	"_result_k"
.LASF150:
	.string	"sys_uepc"
.LASF34:
	.string	"__tm"
.LASF11:
	.string	"unsigned int"
.LASF22:
	.string	"__wchb"
.LASF75:
	.string	"_stdout"
.LASF87:
	.string	"_cvtlen"
.LASF7:
	.string	"long unsigned int"
.LASF57:
	.string	"_file"
.LASF141:
	.string	"name"
.LASF128:
	.string	"UartDataLength"
.LASF145:
	.string	"heap_ptr"
.LASF96:
	.string	"_niobs"
.LASF173:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF90:
	.string	"_atexit0"
.LASF113:
	.string	"_signal_buf"
.LASF104:
	.string	"_asctime_buf"
.LASF131:
	.string	"NONE"
.LASF147:
	.string	"sys_mcause"
.LASF83:
	.string	"_result"
.LASF21:
	.string	"__wch"
.LASF16:
	.string	"_LOCK_T"
.LASF179:
	.string	"main.c"
.LASF20:
	.string	"wint_t"
.LASF164:
	.string	"clint_getTime"
.LASF69:
	.string	"_lock"
.LASF71:
	.string	"_flags2"
.LASF61:
	.string	"_write"
.LASF40:
	.string	"__tm_year"
.LASF135:
	.string	"parity"
.LASF122:
	.string	"_nmalloc"
.LASF137:
	.string	"clockDivider"
.LASF15:
	.string	"long double"
.LASF142:
	.string	"address"
.LASF121:
	.string	"_nextf"
.LASF177:
	.string	"read_u32"
.LASF39:
	.string	"__tm_mon"
.LASF49:
	.string	"_atexit"
.LASF81:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF171:
	.string	"uart_writeStr"
.LASF166:
	.string	"clint_getTimeLow"
.LASF9:
	.string	"__uint64_t"
.LASF167:
	.string	"uart_applyConfig"
.LASF159:
	.string	"usec"
.LASF86:
	.string	"_freelist"
.LASF162:
	.string	"clint_setCmp"
.LASF111:
	.string	"_wctomb_state"
.LASF169:
	.string	"uart_read"
.LASF12:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF89:
	.string	"_new"
.LASF120:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"__tm_yday"
.LASF52:
	.string	"__sbuf"
.LASF97:
	.string	"_iobs"
.LASF94:
	.string	"__FILE"
.LASF25:
	.string	"_mbstate_t"
.LASF55:
	.string	"__sFILE"
.LASF70:
	.string	"_mbstate"
.LASF107:
	.string	"_rand_next"
.LASF109:
	.string	"_mblen_state"
.LASF77:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF80:
	.string	"_locale"
.LASF82:
	.string	"__cleanup"
.LASF79:
	.string	"_unspecified_locale_info"
.LASF30:
	.string	"_maxwds"
.LASF72:
	.string	"_reent"
.LASF99:
	.string	"_seed"
.LASF23:
	.string	"__count"
.LASF124:
	.string	"__lock"
.LASF13:
	.string	"uint32_t"
.LASF62:
	.string	"_seek"
.LASF126:
	.string	"_impure_ptr"
.LASF18:
	.string	"_fpos_t"
.LASF73:
	.string	"_errno"
.LASF27:
	.string	"char"
.LASF36:
	.string	"__tm_min"
.LASF168:
	.string	"config"
.LASF143:
	.string	"SYMTABLE"
.LASF132:
	.string	"EVEN"
.LASF5:
	.string	"__int32_t"
.LASF138:
	.string	"Uart_Config"
.LASF100:
	.string	"_mult"
.LASF29:
	.string	"_next"
.LASF103:
	.string	"_strtok_last"
.LASF24:
	.string	"__value"
.LASF47:
	.string	"_fntypes"
.LASF130:
	.string	"BITS_8"
.LASF101:
	.string	"_add"
.LASF28:
	.string	"__ULong"
.LASF114:
	.string	"_getdate_err"
.LASF127:
	.string	"_global_impure_ptr"
.LASF140:
	.string	"_SYMTABLE"
.LASF165:
	.string	"clint_getTimeHigh"
.LASF102:
	.string	"_unused_rand"
.LASF180:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF32:
	.string	"_wds"
.LASF41:
	.string	"__tm_wday"
.LASF95:
	.string	"_glue"
.LASF19:
	.string	"_ssize_t"
.LASF112:
	.string	"_l64a_buf"
.LASF152:
	.string	"sys_irqpc"
.LASF91:
	.string	"_sig_func"
.LASF65:
	.string	"_nbuf"
.LASF123:
	.string	"_unused"
.LASF170:
	.string	"uart_writeHex"
.LASF43:
	.string	"__tm_isdst"
.LASF105:
	.string	"_localtime_buf"
.LASF63:
	.string	"_close"
.LASF108:
	.string	"_r48"
.LASF110:
	.string	"_mbtowc_state"
.LASF85:
	.string	"_p5s"
.LASF153:
	.string	"main"
.LASF136:
	.string	"stop"
.LASF38:
	.string	"__tm_mday"
.LASF129:
	.string	"UartParity"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
