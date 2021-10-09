	.file	"traphandler.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
 #APP
	.set regnum_x0  ,  0
	.set regnum_x1  ,  1
	.set regnum_x2  ,  2
	.set regnum_x3  ,  3
	.set regnum_x4  ,  4
	.set regnum_x5  ,  5
	.set regnum_x6  ,  6
	.set regnum_x7  ,  7
	.set regnum_x8  ,  8
	.set regnum_x9  ,  9
	.set regnum_x10 , 10
	.set regnum_x11 , 11
	.set regnum_x12 , 12
	.set regnum_x13 , 13
	.set regnum_x14 , 14
	.set regnum_x15 , 15
	.set regnum_x16 , 16
	.set regnum_x17 , 17
	.set regnum_x18 , 18
	.set regnum_x19 , 19
	.set regnum_x20 , 20
	.set regnum_x21 , 21
	.set regnum_x22 , 22
	.set regnum_x23 , 23
	.set regnum_x24 , 24
	.set regnum_x25 , 25
	.set regnum_x26 , 26
	.set regnum_x27 , 27
	.set regnum_x28 , 28
	.set regnum_x29 , 29
	.set regnum_x30 , 30
	.set regnum_x31 , 31
	.set regnum_zero,  0
	.set regnum_ra  ,  1
	.set regnum_sp  ,  2
	.set regnum_gp  ,  3
	.set regnum_tp  ,  4
	.set regnum_t0  ,  5
	.set regnum_t1  ,  6
	.set regnum_t2  ,  7
	.set regnum_s0  ,  8
	.set regnum_s1  ,  9
	.set regnum_a0  , 10
	.set regnum_a1  , 11
	.set regnum_a2  , 12
	.set regnum_a3  , 13
	.set regnum_a4  , 14
	.set regnum_a5  , 15
	.set regnum_a6  , 16
	.set regnum_a7  , 17
	.set regnum_s2  , 18
	.set regnum_s3  , 19
	.set regnum_s4  , 20
	.set regnum_s5  , 21
	.set regnum_s6  , 22
	.set regnum_s7  , 23
	.set regnum_s8  , 24
	.set regnum_s9  , 25
	.set regnum_s10 , 26
	.set regnum_s11 , 27
	.set regnum_t3  , 28
	.set regnum_t4  , 29
	.set regnum_t5  , 30
	.set regnum_t6  , 31
	.set CUSTOM0  , 0x0B
	.set CUSTOM1  , 0x2B
 #NO_APP
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
	.section	.text.clint_getTimeLow,"ax",@progbits
	.align	1
	.type	clint_getTimeLow, @function
clint_getTimeLow:
.LFB7:
	.file 2 "bsp/clint.h"
	.loc 2 10 44
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
	.loc 2 10 53
	lw	a4,-20(s0)
	li	a5,49152
	addi	a5,a5,-8
	add	a5,a4,a5
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 2 10 1
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
	.size	clint_getTimeLow, .-clint_getTimeLow
	.section	.text.clint_getTimeHigh,"ax",@progbits
	.align	1
	.type	clint_getTimeHigh, @function
clint_getTimeHigh:
.LFB8:
	.loc 2 11 45
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
	.loc 2 11 54
	lw	a4,-20(s0)
	li	a5,49152
	addi	a5,a5,-4
	add	a5,a4,a5
	mv	a0,a5
	call	read_u32
	mv	a5,a0
	.loc 2 11 1
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
	.size	clint_getTimeHigh, .-clint_getTimeHigh
	.section	.text.clint_setCmp,"ax",@progbits
	.align	1
	.type	clint_setCmp, @function
clint_setCmp:
.LFB9:
	.loc 2 14 54
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
	.loc 2 15 17
	lw	a4,-24(s0)
	li	a5,4096
	addi	a5,a5,-2048
	add	a5,a4,a5
	slli	a5,a5,3
	.loc 2 15 7
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	.loc 2 16 5
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a1,a5
	li	a0,-1
	call	write_u32
	.loc 2 17 5
	lw	a5,-32(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	write_u32
	.loc 2 18 19
	lw	a5,-28(s0)
	srli	s2,a5,0
	li	s3,0
	.loc 2 18 5
	mv	a4,s2
	lw	a5,-20(s0)
	addi	a5,a5,4
	mv	a1,a5
	mv	a0,a4
	call	write_u32
	.loc 2 19 1
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
.LFE9:
	.size	clint_setCmp, .-clint_setCmp
	.section	.text.clint_getTime,"ax",@progbits
	.align	1
	.type	clint_getTime, @function
clint_getTime:
.LFB10:
	.loc 2 21 32
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
.L10:
	.loc 2 26 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeHigh
	sw	a0,-52(s0)
	.loc 2 27 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeLow
	sw	a0,-56(s0)
	.loc 2 28 14 discriminator 1
	lw	a0,-68(s0)
	call	clint_getTimeHigh
	mv	a4,a0
	.loc 2 28 5 discriminator 1
	lw	a5,-52(s0)
	bne	a5,a4,.L10
	.loc 2 30 14
	lw	a5,-52(s0)
	mv	s8,a5
	li	s9,0
	.loc 2 30 23
	slli	s3,s8,0
	li	s2,0
	.loc 2 30 30
	lw	a5,-56(s0)
	mv	s4,a5
	li	s5,0
	or	s6,s2,s4
	or	s7,s3,s5
	mv	a5,s6
	mv	a6,s7
	.loc 2 31 1
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
.LFE10:
	.size	clint_getTime, .-clint_getTime
	.globl	__udivsi3
	.globl	__mulsi3
	.section	.text.clint_uDelay,"ax",@progbits
	.align	1
	.type	clint_uDelay, @function
clint_uDelay:
.LFB11:
	.loc 2 34 52
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
	.loc 2 35 9
	lw	a4,-40(s0)
	li	a5,999424
	addi	a1,a5,576
	mv	a0,a4
	call	__udivsi3
.LVL0:
	mv	a5,a0
	sw	a5,-20(s0)
	.loc 2 36 17
	lw	a0,-44(s0)
	call	clint_getTimeLow
	mv	s1,a0
	.loc 2 36 45
	lw	a1,-20(s0)
	lw	a0,-36(s0)
	call	__mulsi3
.LVL1:
	mv	a5,a0
	.loc 2 36 9
	add	a5,s1,a5
	sw	a5,-24(s0)
	.loc 2 37 10
	nop
.L13:
	.loc 2 37 28 discriminator 1
	lw	a0,-44(s0)
	call	clint_getTimeLow
	mv	a4,a0
	.loc 2 37 26 discriminator 1
	lw	a5,-24(s0)
	sub	a5,a5,a4
	.loc 2 37 10 discriminator 1
	bgez	a5,.L13
	.loc 2 38 1
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
.LFE11:
	.size	clint_uDelay, .-clint_uDelay
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
	.comm	timerCmp,8,8
	.section	.text.initTimer,"ax",@progbits
	.align	1
	.globl	initTimer
	.type	initTimer, @function
initTimer:
.LFB12:
	.file 3 "traphandler.c"
	.loc 3 30 17
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 3 31 16
	li	a0,-256901120
	call	clint_getTime
	mv	a5,a0
	mv	a6,a1
	.loc 3 31 14
	lui	a4,%hi(timerCmp)
	sw	a5,%lo(timerCmp)(a4)
	sw	a6,%lo(timerCmp+4)(a4)
	.loc 3 32 5
	call	scheduleTimer
	.loc 3 33 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE12:
	.size	initTimer, .-initTimer
	.section	.text.scheduleTimer,"ax",@progbits
	.align	1
	.globl	scheduleTimer
	.type	scheduleTimer, @function
scheduleTimer:
.LFB13:
	.loc 3 35 21
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 3 36 14
	lui	a5,%hi(timerCmp)
	lw	a6,%lo(timerCmp+4)(a5)
	lw	a5,%lo(timerCmp)(a5)
	li	a1,49152
	addi	a1,a1,848
	li	a2,0
	add	a3,a5,a1
	mv	a0,a3
	sltu	a0,a0,a5
	add	a4,a6,a2
	add	a5,a0,a4
	mv	a4,a5
	mv	a5,a3
	mv	a6,a4
	lui	a4,%hi(timerCmp)
	sw	a5,%lo(timerCmp)(a4)
	sw	a6,%lo(timerCmp+4)(a4)
	.loc 3 37 5
	lui	a5,%hi(timerCmp)
	lw	a6,%lo(timerCmp+4)(a5)
	lw	a5,%lo(timerCmp)(a5)
	li	a3,0
	mv	a1,a5
	mv	a2,a6
	li	a0,-256901120
	call	clint_setCmp
	.loc 3 38 1
	nop
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE13:
	.size	scheduleTimer, .-scheduleTimer
	.section	.text.irqCallback,"ax",@progbits
	.align	1
	.globl	irqCallback
	.type	irqCallback, @function
irqCallback:
.LFB14:
	.loc 3 41 19
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 3 43 11
	lui	a5,%hi(sys_irqcause)
	lw	a4,%lo(sys_irqcause)(a5)
	lui	a5,%hi(irqcause)
	sw	a4,%lo(irqcause)(a5)
	.loc 3 44 8
	lui	a5,%hi(sys_irqpc)
	lw	a4,%lo(sys_irqpc)(a5)
	lui	a5,%hi(irqpc)
	sw	a4,%lo(irqpc)(a5)
	.loc 3 46 30
	lui	a5,%hi(irqcause)
	lw	a5,%lo(irqcause)(a5)
	.loc 3 46 13
	andi	a5,a5,15
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,7
	bne	a4,a5,.L21
	.loc 3 51 12
	lui	a5,%hi(irqCount)
	lw	a5,%lo(irqCount)(a5)
	addi	a4,a5,1
	lui	a5,%hi(irqCount)
	sw	a4,%lo(irqCount)(a5)
	.loc 3 52 4
	call	scheduleTimer
	.loc 3 53 4
	j	.L20
.L21:
	.loc 3 55 4
	nop
.L20:
	.loc 3 60 1
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
	.size	irqCallback, .-irqCallback
	.section	.rodata
	.align	2
.LC0:
	.string	"ecall @ %08X\n"
	.section	.text.sysCallback,"ax",@progbits
	.align	1
	.globl	sysCallback
	.type	sysCallback, @function
sysCallback:
.LFB15:
	.loc 3 64 1
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
	.loc 3 65 6
	sw	zero,-20(s0)
	.loc 3 67 11
	lui	a5,%hi(traparg1)
	lw	a4,-36(s0)
	sw	a4,%lo(traparg1)(a5)
	.loc 3 68 11
	lui	a5,%hi(traparg2)
	lw	a4,-40(s0)
	sw	a4,%lo(traparg2)(a5)
	.loc 3 69 11
	lui	a5,%hi(traparg3)
	lw	a4,-44(s0)
	sw	a4,%lo(traparg3)(a5)
	.loc 3 70 12
	lui	a5,%hi(sys_mcause)
	lw	a4,%lo(sys_mcause)(a5)
	lui	a5,%hi(trapcause)
	sw	a4,%lo(trapcause)(a5)
	.loc 3 71 9
	lui	a5,%hi(sys_mepc)
	lw	a4,%lo(sys_mepc)(a5)
	lui	a5,%hi(trappc)
	sw	a4,%lo(trappc)(a5)
	.loc 3 73 14
	lui	a5,%hi(syscallCount)
	lw	a5,%lo(syscallCount)(a5)
	addi	a4,a5,1
	lui	a5,%hi(syscallCount)
	sw	a4,%lo(syscallCount)(a5)
	.loc 3 75 2
	lw	a4,-36(s0)
	li	a5,4096
	addi	a5,a5,-96
	bne	a4,a5,.L23
	.loc 3 78 13
	lui	a5,%hi(SYMTABLETOP)
	lw	a5,%lo(SYMTABLETOP)(a5)
	.loc 3 78 11
	sw	a5,-20(s0)
	.loc 3 79 4
	j	.L24
.L23:
	.loc 3 81 4
	lui	a5,%hi(trappc)
	lw	a5,%lo(trappc)(a5)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	xprintf
	.loc 3 82 11
	li	a5,-559038464
	addi	a5,a5,-273
	sw	a5,-20(s0)
	.loc 3 83 4
	nop
.L24:
	.loc 3 85 9
	lw	a5,-20(s0)
	.loc 3 86 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15:
	.size	sysCallback, .-sysCallback
	.text
.Letext0:
	.file 4 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 6 "bsp/type.h"
	.file 7 "symtable.h"
	.file 8 "xprintf.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x481
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
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
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
	.byte	0x6
	.string	"u64"
	.byte	0x6
	.byte	0x6
	.byte	0x12
	.4byte	0xac
	.byte	0x6
	.string	"u32"
	.byte	0x6
	.byte	0x9
	.byte	0x12
	.4byte	0x9b
	.byte	0x7
	.4byte	.LASF57
	.byte	0x10
	.byte	0x7
	.byte	0x6
	.byte	0x10
	.4byte	0xf8
	.byte	0x8
	.4byte	.LASF15
	.byte	0x7
	.byte	0x8
	.byte	0x10
	.4byte	0xf8
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x7
	.byte	0x9
	.byte	0xf
	.4byte	0x88
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x2c
	.4byte	0x108
	.byte	0xa
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0xa
	.byte	0x3
	.4byte	0xd0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0xc
	.byte	0x12
	.4byte	0x120
	.byte	0xc
	.byte	0x4
	.4byte	0x108
	.byte	0xd
	.4byte	0x131
	.byte	0xe
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x8
	.byte	0x13
	.byte	0xf
	.4byte	0x13d
	.byte	0xc
	.byte	0x4
	.4byte	0x126
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0xf
	.byte	0x11
	.4byte	0x9b
	.byte	0xb
	.4byte	.LASF21
	.byte	0x3
	.byte	0xf
	.byte	0x1e
	.4byte	0x9b
	.byte	0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0x10
	.byte	0x11
	.4byte	0x9b
	.byte	0xb
	.4byte	.LASF23
	.byte	0x3
	.byte	0x10
	.byte	0x1c
	.4byte	0x9b
	.byte	0xf
	.4byte	.LASF24
	.byte	0x3
	.byte	0x12
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	irqCount
	.byte	0xf
	.4byte	.LASF25
	.byte	0x3
	.byte	0x13
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	syscallCount
	.byte	0xf
	.4byte	.LASF26
	.byte	0x3
	.byte	0x14
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	timerPending
	.byte	0xf
	.4byte	.LASF27
	.byte	0x3
	.byte	0x16
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	traparg1
	.byte	0xf
	.4byte	.LASF28
	.byte	0x3
	.byte	0x16
	.byte	0x1c
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	traparg2
	.byte	0xf
	.4byte	.LASF29
	.byte	0x3
	.byte	0x16
	.byte	0x25
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	traparg3
	.byte	0xf
	.4byte	.LASF30
	.byte	0x3
	.byte	0x17
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	trapcause
	.byte	0xf
	.4byte	.LASF31
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	trappc
	.byte	0xf
	.4byte	.LASF32
	.byte	0x3
	.byte	0x19
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	irqcause
	.byte	0xf
	.4byte	.LASF33
	.byte	0x3
	.byte	0x1a
	.byte	0x13
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	irqpc
	.byte	0xf
	.4byte	.LASF34
	.byte	0x3
	.byte	0x1c
	.byte	0xa
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	timerCmp
	.byte	0x10
	.4byte	.LASF58
	.byte	0x3
	.byte	0x3f
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x290
	.byte	0x11
	.4byte	.LASF35
	.byte	0x3
	.byte	0x3f
	.byte	0x1f
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x11
	.4byte	.LASF36
	.byte	0x3
	.byte	0x3f
	.byte	0x2d
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x11
	.4byte	.LASF37
	.byte	0x3
	.byte	0x3f
	.byte	0x3b
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x12
	.4byte	.LASF38
	.byte	0x3
	.byte	0x41
	.byte	0x6
	.4byte	0x81
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.4byte	.LASF40
	.byte	0x3
	.byte	0x29
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b6
	.byte	0x12
	.4byte	.LASF39
	.byte	0x3
	.byte	0x2e
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x14
	.4byte	.LASF59
	.byte	0x3
	.byte	0x23
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.byte	0x13
	.4byte	.LASF41
	.byte	0x3
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ed
	.byte	0x15
	.4byte	.LASF59
	.byte	0x3
	.byte	0x20
	.byte	0x5
	.4byte	0x81
	.byte	0x16
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF45
	.byte	0x2
	.byte	0x22
	.byte	0xd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x34e
	.byte	0x11
	.4byte	.LASF42
	.byte	0x2
	.byte	0x22
	.byte	0x1e
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"hz"
	.byte	0x2
	.byte	0x22
	.byte	0x28
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"reg"
	.byte	0x2
	.byte	0x22
	.byte	0x30
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x12
	.4byte	.LASF43
	.byte	0x2
	.byte	0x23
	.byte	0x9
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.4byte	.LASF44
	.byte	0x2
	.byte	0x24
	.byte	0x9
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x2
	.byte	0x15
	.byte	0xc
	.4byte	0xb8
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x393
	.byte	0x18
	.string	"p"
	.byte	0x2
	.byte	0x15
	.byte	0x1e
	.4byte	0xc4
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x1a
	.string	"lo"
	.byte	0x2
	.byte	0x16
	.byte	0x9
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1a
	.string	"hi"
	.byte	0x2
	.byte	0x16
	.byte	0xd
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x17
	.4byte	.LASF46
	.byte	0x2
	.byte	0xe
	.byte	0xd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d5
	.byte	0x18
	.string	"p"
	.byte	0x2
	.byte	0xe
	.byte	0x1e
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"cmp"
	.byte	0x2
	.byte	0xe
	.byte	0x25
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x11
	.4byte	.LASF47
	.byte	0x2
	.byte	0xe
	.byte	0x2e
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x19
	.4byte	.LASF49
	.byte	0x2
	.byte	0xb
	.byte	0x13
	.4byte	0xc4
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ff
	.byte	0x18
	.string	"reg"
	.byte	0x2
	.byte	0xb
	.byte	0x29
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x19
	.4byte	.LASF50
	.byte	0x2
	.byte	0xa
	.byte	0x13
	.4byte	0xc4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x429
	.byte	0x18
	.string	"reg"
	.byte	0x2
	.byte	0xa
	.byte	0x28
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x45e
	.byte	0x11
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa
	.byte	0x22
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0x2c
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1c
	.4byte	.LASF53
	.byte	0x1
	.byte	0x6
	.byte	0x13
	.4byte	0xc4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.4byte	0xc4
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x11
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x18
	.byte	0
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.4byte	0x6c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"limit"
.LASF34:
	.string	"timerCmp"
.LASF38:
	.string	"result"
.LASF18:
	.string	"SYMTABLETOP"
.LASF58:
	.string	"sysCallback"
.LASF14:
	.string	"uint64_t"
.LASF48:
	.string	"clint_getTime"
.LASF2:
	.string	"short int"
.LASF56:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"SYMTABLE"
.LASF54:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF40:
	.string	"irqCallback"
.LASF23:
	.string	"sys_mepc"
.LASF30:
	.string	"trapcause"
.LASF46:
	.string	"clint_setCmp"
.LASF32:
	.string	"irqcause"
.LASF35:
	.string	"arg1"
.LASF36:
	.string	"arg2"
.LASF37:
	.string	"arg3"
.LASF8:
	.string	"long long int"
.LASF41:
	.string	"initTimer"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"address"
.LASF19:
	.string	"xfunc_out"
.LASF59:
	.string	"scheduleTimer"
.LASF47:
	.string	"hart_id"
.LASF15:
	.string	"name"
.LASF53:
	.string	"read_u32"
.LASF39:
	.string	"cause"
.LASF42:
	.string	"usec"
.LASF31:
	.string	"trappc"
.LASF1:
	.string	"unsigned char"
.LASF20:
	.string	"sys_irqcause"
.LASF22:
	.string	"sys_mcause"
.LASF25:
	.string	"syscallCount"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF57:
	.string	"_SYMTABLE"
.LASF11:
	.string	"unsigned int"
.LASF51:
	.string	"write_u32"
.LASF43:
	.string	"mTimePerUsec"
.LASF3:
	.string	"short unsigned int"
.LASF33:
	.string	"irqpc"
.LASF27:
	.string	"traparg1"
.LASF28:
	.string	"traparg2"
.LASF29:
	.string	"traparg3"
.LASF12:
	.string	"int32_t"
.LASF26:
	.string	"timerPending"
.LASF55:
	.string	"traphandler.c"
.LASF9:
	.string	"__uint64_t"
.LASF52:
	.string	"data"
.LASF7:
	.string	"long unsigned int"
.LASF50:
	.string	"clint_getTimeLow"
.LASF5:
	.string	"__int32_t"
.LASF45:
	.string	"clint_uDelay"
.LASF49:
	.string	"clint_getTimeHigh"
.LASF24:
	.string	"irqCount"
.LASF21:
	.string	"sys_irqpc"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
