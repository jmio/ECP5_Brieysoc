//#include "stddefs.h"
#include <stdint.h>
#include <malloc.h>

#include "murax.h"
#include "xprintf.h"
#include "symtable.h"

/*__attribute__ ((section (".ram2"))) __attribute__ ((aligned (4*8))) */
SYMTABLE _SYMTABLE[SYMTABLESIZ] ;

// defined in _sbrk 
extern uint32_t heap_ptr,_heap_start;
extern uint32_t sys_mcause,sys_mepc;
extern uint32_t sys_ucause,sys_uepc;
extern uint32_t sys_irqcause,sys_irqpc;

extern void _main();

void putcon(char c)
{
	uart_write(UART,c);
	console_putc(c);
}

int returnerr()
{
	return -1;
}

int main() 
{
	// UART SETTING
	uart_init();

	// GPIO SETTING
    GPIO_A->OUTPUT_ENABLE = 0x0000000F;
	GPIO_A->OUTPUT = 0x0000000F;

	// TIMER SETTING
	// https://github.com/SpinalHDL/SpinalHDL/blob/dev/lib/src/main/scala/spinal/lib/soc/pinsec/PinsecTimerCtrl.scala
	TIMER_PRESCALER->LIMIT = 16;
	TIMER_A->CLEARS_TICKS = 0x00010001; // [...clearsource 1=FULL],[...ticksource 1=50Mhz,2=50MHz/TIMER_PRESCALER]
	TIMER_A->LIMIT = 50000; // 1(ms)
	TIMER_INTERRUPT->MASKS = 0x00000001; // D,C,B,A
	//TIMER_INTERRUPT->MASKS = 0x00000000; // TIMERINT DISABLE
	
	// VGA SETTING
	vga_init();
	vga_clear();

	// CLEAR TEXT SCREEN
	console_clear();

	// xprintf setup
	xdev_out(putcon);

	// symtable setup
	symt_init(_SYMTABLE);
	symt_clear();

	symt_put("malloc",(uint32_t)&malloc);
	symt_put("xprintf",(uint32_t)&xprintf);		
	symt_put("console_clear",(uint32_t)&console_clear);
	symt_put("console_scroll",(uint32_t)&console_scroll);
	symt_put("console_putc",(uint32_t)&console_putc);
	symt_put("console_puts",(uint32_t)&console_puts);
	symt_put("pollkey",(uint32_t)&uart_pollrx); // dummy
	symt_put("key_getc",(uint32_t)&returnerr); // dummy
	symt_put("pollrx",(uint32_t)&uart_pollrx);
	symt_put("polltx",(uint32_t)&uart_polltx);
	symt_put("uart_init",(uint32_t)&uart_init);
	symt_put("uart_getc",(uint32_t)&uart_getc);
	symt_put("uart_putc",(uint32_t)&uart_putc);
	symt_put("uart_puts",(uint32_t)&uart_puts);
	symt_put("_uart_wait",(uint32_t)&_uart_wait);

	xprintf("sys_mepc = %08X\n",sys_mepc);
	xprintf("sys_mcause = %08X\n",sys_mcause);
	xprintf("sys_uepc = %08X\n",sys_uepc);
	xprintf("sys_ucause = %08X\n",sys_ucause);

	// SYSCALL TEST
	int res = syscall0(MY_SYSCALL_GETSYMPTR);
	xprintf("SYSCALL(%d) = %08X\n",MY_SYSCALL_GETSYMPTR,res);

	// JUMP TO DEBUG MONITOR
	_main();

#if 0
	unsigned char itoh[] = "0123456789ABCDEF";
    uint16_t offset = 0;
	uint32_t frame  = 0 ;

    while(1){
    	uint16_t *ptr = &vgaFramebuffer[0][0][0];
    	for(uint32_t y = 0;y < RES_Y;y++){
    		uint16_t c = (((y + offset) & 0x1F) << 6);
        	for(uint32_t x = 0;x < RES_X;x++){
        		*ptr = ((uint16_t)(x & 0x1F)) + c;
        		ptr++;
        	}
    	}
	    //VGA_BASE->FRAME_BASE = (uint32_t)&vgaFramebuffer[frame&1];
		frame++;
    	offset+=4;
    	GPIO_A->OUTPUT = 1 << ((offset >> 2) & 0x03);
    	flushDataCache(0);
		for (uint32_t cx = 0;cx < 128;cx++) {
			for (uint32_t cy =0; cy < 15;cy++) {
				//*(TEXT_BASE + cy*128 + cx) = frame & 0xFF ;
				textvram[cy][cx] = frame & 0xFF ;
			}
		}
    	uart_write(UART, '*'); 
		c = TIMER_A->VALUE;
		
		c = syscall0(0x4000,0xDEAD,frame);
		uart_write(UART,itoh[((c & 0xF000) >> 12)]);
		uart_write(UART,itoh[((c & 0x0F00) >> 8)]);
		uart_write(UART,itoh[((c & 0x00F0) >> 4)]);
		uart_write(UART,itoh[((c & 0x000F) >> 0)]);
		uart_write(UART,toupper(c & 0xFF));
    }


    GPIO_A->OUTPUT_ENABLE = 0x0000000F;
	GPIO_A->OUTPUT = 0x00000001;
    println("hello world arty a7 v1");
    const uint32_t nleds = 4;
	const uint32_t nloops = 2000000;
    while(1){
    	for(uint32_t i=0;i<nleds-1;i++){
    		GPIO_A->OUTPUT = 1<<i;
    		delay(nloops);
    		uart_write(UART,'A');
    	}
    	for(uint32_t i=0;i<nleds-1;i++){
			GPIO_A->OUTPUT = (1<<(nleds-1))>>i;
			delay(nloops);
    		uart_write(UART,'B');
		}
		c = uart_read(UART);
		if (c > 0) 
		{
    		uart_write(UART,c & 0xFF);			
		}
    }
#endif
}

