/*
   traphandler.c
*/

#include <stdint.h>
#include "bsp/riscv.h"
#include "bsp/clint.h"

// System Call Entry
#define MY_SYSCALL_GETSYMPTR (4000) // Only Supported

#include "symtable.h"
#include "xprintf.h"

extern uint32_t sys_irqcause,sys_irqpc;
extern uint32_t sys_mcause,sys_mepc;

volatile uint32_t irqCount = 0;
volatile uint32_t syscallCount = 0;
volatile uint32_t timerPending ;

volatile uint32_t traparg1,traparg2,traparg3;
volatile uint32_t trapcause;
volatile uint32_t trappc;
volatile uint32_t irqcause;
volatile uint32_t irqpc;

uint64_t timerCmp; //Store the next interrupt time

void initTimer(){
    timerCmp = clint_getTime(SYSTEM_CLINT_CTRL);
    scheduleTimer();
}

void scheduleTimer(){
    timerCmp += 50000; // 1ms
    clint_setCmp(SYSTEM_CLINT_CTRL, timerCmp, 0);
}

/* Irq Handler */
void irqCallback(){
	//
	irqcause  = sys_irqcause;
	irqpc     = sys_irqpc;
	//
    int32_t cause     = irqcause & 0xF;	
	{
        switch(cause){
        case CAUSE_MACHINE_TIMER:
			// Timer Int Count
			irqCount++ ;
			scheduleTimer();
			break;
        case CAUSE_MACHINE_EXTERNAL:
			break;
        default:
			break;
        }
	}
}

/* System Call Handler */
uint32_t sysCallback(uint32_t arg1,uint32_t arg2,uint32_t arg3)
{
	int result = 0;
	//
	traparg1   = arg1;
	traparg2   = arg2;
	traparg3   = arg3;
	trapcause  = sys_mcause;
	trappc     = sys_mepc;
	//
	syscallCount++ ;
	//
	switch(arg1)
	{
		case MY_SYSCALL_GETSYMPTR:
			result = (uint32_t)SYMTABLETOP;
			break;
		default:
			xprintf("ecall @ %08X\n",trappc);
			result = 0xDEADBEEF;
			break;
	}
	return result;
}

