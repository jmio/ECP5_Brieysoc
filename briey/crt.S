.global crtStart
.global main
.global irqCallback
.global sysCallback
.global sys_mcause
.global sys_mepc
.global sys_ucause
.global sys_uepc
.global sys_irqcause
.global sys_irqpc

    .section	.start_jump,"ax",@progbits
crtStart:
  //long jump to allow crtInit to be anywhere
  //do it always in 12 bytes
  lui x2,       %hi(crtInit)
  addi x2, x2,  %lo(crtInit)
  jalr x1,x2
  nop

.section .text

.global  trap_entry
.align 5
trap_entry:
  sw x1,  - 1*4(sp)
  sw x5,  - 2*4(sp)
  sw x6,  - 3*4(sp)
  sw x7,  - 4*4(sp)
  sw x10, - 5*4(sp)
  sw x11, - 6*4(sp)
  sw x12, - 7*4(sp)
  sw x13, - 8*4(sp)
  sw x14, - 9*4(sp)
  sw x15, -10*4(sp)
  sw x16, -11*4(sp)
  sw x17, -12*4(sp)
  sw x28, -13*4(sp)
  sw x29, -14*4(sp)
  sw x30, -15*4(sp)
  sw x31, -16*4(sp)
  addi sp,sp,-16*4
  //
 	csrr x30, mcause
  // System Call
  li  x31,0x0000000b
  beq x30, x31, is_syscall
  // Ebreak
  li  x31,0x00000003
  beq x30, x31, is_unhandled
  // Buserr
  li  x31,0x00000007
  bleu x30, x31, is_buserr
  // Interrupt
  li x31, 0x80000000
  bgtu x30, x31, is_irq
  // Unhandled
is_unhandled:
  lui x31, %hi(sys_ucause)
  addi x31, x31,  %lo(sys_ucause)
  sw x30, 0(x31)
  // 
  csrr	x30,mepc
  lui x31, %hi(sys_uepc)
  addi x31, x31,  %lo(sys_uepc)
  sw x30, 0(x31)
  //
  j   retirq

is_irq:
  lui x31, %hi(sys_irqcause)
  addi x31, x31,  %lo(sys_irqcause)
  sw x30, 0(x31)
  // 
  csrr	x30,mepc
  lui x31, %hi(sys_irqpc)
  addi x31, x31,  %lo(sys_irqpc)
  sw x30, 0(x31)
  // 
  call irqCallback
  j   retirq

is_syscall:
  lui x31, %hi(sys_mcause)
  addi x31, x31,  %lo(sys_mcause)
  sw x30, 0(x31)
  // 
  csrr	x30,mepc
  lui x31, %hi(sys_mepc)
  addi x31, x31,  %lo(sys_mepc)
  sw x30, 0(x31)
  //
  call sysCallback
  // return code replace a0
  sw x10, 11*4(sp)
  // skip ecall inst if syscall
  csrr	x30,mepc
  addi x30, x30, 4
  csrw  mepc,x30
  j   retirq

is_buserr:
  lui x31, %hi(sys_mcause)
  addi x31, x31,  %lo(sys_mcause)
  sw x30, 0(x31)
  // 
  csrr	x30,mepc
  lui x31, %hi(sys_mepc)
  addi x31, x31,  %lo(sys_mepc)
  sw x30, 0(x31)
  //
#define _UART      0xF0010000
  lui x30,       %hi(_UART)
  addi x30, x30,  %lo(_UART)
  li  x31, '*'
  sw  x31, 0(x30)
  li  x31, 'B'
  sw  x31, 0(x30)  
  // show buserr and return worm boot
  lui x30,       %hi(crtInit)
  addi x30, x30,  %lo(crtInit)
  csrw  mepc,x30
  j   retirq

retirq:
  //
  lw x1 , 15*4(sp)
  lw x5,  14*4(sp)
  lw x6,  13*4(sp)
  lw x7,  12*4(sp)
  lw x10, 11*4(sp)
  lw x11, 10*4(sp)
  lw x12,  9*4(sp)
  lw x13,  8*4(sp)
  lw x14,  7*4(sp)
  lw x15,  6*4(sp)
  lw x16,  5*4(sp)
  lw x17,  4*4(sp)
  lw x28,  3*4(sp)
  lw x29,  2*4(sp)
  lw x30,  1*4(sp)
  lw x31,  0*4(sp)
  addi sp,sp,16*4
  mret
  .text

#define regnum_zero 0
#define regnum_ra   1
#define regnum_sp   2
#define regnum_gp   3
#define regnum_tp   4
#define regnum_t0   5
#define regnum_t1   6
#define regnum_t2   7
#define regnum_s0   8
#define regnum_s1   9
#define regnum_a0  10
#define regnum_a1  11
#define regnum_a2  12
#define regnum_a3  13
#define regnum_a4  14
#define regnum_a5  15
#define regnum_a6  16
#define regnum_a7  17
#define regnum_s2  18
#define regnum_s3  19
#define regnum_s4  20
#define regnum_s5  21
#define regnum_s6  22
#define regnum_s7  23
#define regnum_s8  24
#define regnum_s9  25
#define regnum_s10 26
#define regnum_s11 27
#define regnum_t3  28
#define regnum_t4  29
#define regnum_t5  30
#define regnum_t6  31

#define r_type_insn(_f7, _rs2, _rs1, _f3, _rd, _opc) \
.word (((_f7) << 25) | ((_rs2) << 20) | ((_rs1) << 15) | ((_f3) << 12) | ((_rd) << 7) | ((_opc) << 0))

#define dataFlush(_data) \
r_type_insn(0b0111000, 0, regnum_ ## _data, 0b101, 0, 0b0001111)


.section .text
.globl flushDataCache
.type flushDataCache, @function
flushDataCache:
  li a0, 4096
flushDataCacheLoop:
  ADDI a0,a0,-32
  dataFlush(a0)
  bnez a0, flushDataCacheLoop
  ret

// int r = syscall0(int num);
.globl syscall0
syscall0:
	addi	sp,sp,-16
	sw	ra,12(sp)
	sw	s0,8(sp)
	//mv	a7,a0
	ecall
	lw	ra,12(sp)
	lw	s0,8(sp)
	addi	sp,sp,16
	ret

crtInit:
  .option push
  .option norelax
  //la gp, __global_pointer$
  .option pop
  la sp, _stack_start


bss_init:
  la a0, _bss_start
  la a1, _bss_end
bss_loop:
  beq a0,a1,bss_done
  sw zero,0(a0)
  add a0,a0,4
  j bss_loop
bss_done:

ctors_init:
  la a0, _ctors_start
  addi sp,sp,-4
ctors_loop:
  la a1, _ctors_end
  beq a0,a1,ctors_done
  lw a3,0(a0)
  add a0,a0,4
  sw a0,0(sp)
  jalr  a3
  lw a0,0(sp)
  j ctors_loop
ctors_done:
  addi sp,sp,4


  li a0, 0x880     //880 enable timer + external interrupts
  csrw mie,a0
  li a0, 0x1808     //1808 enable interrupts
  csrw mstatus,a0

  call main
infinitLoop:
  j infinitLoop

.section .data
.align 4
// the MSB of the mcause register is used to indicate whether an exception
// is the result of an interrupt(1) or an exception/fault(0). 
sys_mcause: .int  0
sys_mepc:   .int  0
sys_ucause: .int  0
sys_uepc:   .int  0
sys_irqcause: .int  0
sys_irqpc:   .int  0



