/*
   traphandler.c
*/

#include "murax.h"
#include "symtable.h"
#include "xprintf.h"

extern uint32_t sys_mcause,sys_mepc;

volatile uint32_t irqCount = 0;
volatile uint32_t syscallCount = 0;
volatile uint32_t timerPending ;

volatile uint32_t traparg1,traparg2,traparg3;
volatile uint32_t trapcause;
volatile uint32_t trappc;
volatile uint32_t irqcause;
volatile uint32_t irqpc;

/* Irq Handler */
void irqCallback(){
	//
	irqcause  = sys_mcause;
	irqpc     = sys_mepc;
	//
	// Timer IRQ
	{
		// TP SHOW
		uint32_t TPREADZ1;
		uint32_t TPREADX;
		uint32_t TPREADY;
		uint32_t TPOK ;

#define TPXS (176)
#define TPXE (3904)
#define TPYS (336)
#define TPYE (3940)
#define SENSE (120)

		TPREADZ1 = NS2009_DATAZ1;
		TPREADX  = NS2009_DATAX;
		TPREADY  = NS2009_DATAY;
		TPOK     = 0;
		if (TPREADZ1 > SENSE) {
			if ((TPREADX > TPXS) && (TPREADX < TPXE)) {
				if ((TPREADY > TPYS) && (TPREADY < TPYE)) {
					TPX      = (TPREADX - TPXS) * 800.0 / (TPXE - TPXS);
					TPY      = (TPREADY - TPYS) * 480.0 / (TPYE - TPYS);
					TPOK     = 1;
				}
			}
		}
		TPEN = TPOK;
		// TP NEXT TRIGGER
		NS2009_STATE = 0;

		// Timer Int Count
		irqCount++ ;
		
		// END Timer Int
		timerPending = TIMER_INTERRUPT->PENDINGS;
		TIMER_INTERRUPT->PENDINGS = timerPending;
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

