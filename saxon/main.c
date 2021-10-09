#include <stdint.h>
#include <malloc.h>

#include "bsp/riscv.h"
#include "bsp/bsp.h"
#include "bsp/gpio.h"
#include "bsp/uart.h"
#include "bsp/machineTimer.h"

#include "xprintf.h"
#include "symtable.h"
#include "bsp/sdram.h"

// System Call Entry
#define MY_SYSCALL_GETSYMPTR (4000) // Only Supported

#define LOOP_UDELAY 100000

/*__attribute__ ((section (".ram2"))) __attribute__ ((aligned (4*8))) */
SYMTABLE _SYMTABLE[SYMTABLESIZ] ;

// defined in _sbrk 
extern uint32_t heap_ptr,_heap_start;
extern uint32_t sys_mcause,sys_mepc;
extern uint32_t sys_ucause,sys_uepc;
extern uint32_t sys_irqcause,sys_irqpc;

extern void _main();

int uart_getc()
{
	return uart_read(BSP_UART_TERMINAL);
}

int uart_putc(char c)
{
	while(uart_writeAvailability(BSP_UART_TERMINAL) == 0);
	uart_write(BSP_UART_TERMINAL,c);
	return 0;
}

/* put strings to send buffer */
char uart_puts(unsigned char *s)
{
  unsigned char t;
  while((t = *s) != 0) {
    uart_putc(t);
    s++ ;
  }
  return 0 ; /* Normal End */
}

void _uart_wait()
{
	while(uart_writeAvailability(BSP_UART_TERMINAL) == 0);
}


int getcon_nowait(void)
{
	if (uart_readOccupancy(BSP_UART_TERMINAL)) {
		int i = uart_read(BSP_UART_TERMINAL) & 0xFF;
		return i;
	} else {
		return -1 ;
	}
}	


void dummy() 
{ 
}

int returnerr(void)
{
	return -1;
}

void initTimer();

int main() 
{
	int i;

    bsp_init();

	initTimer();
    csr_set(mie, MIE_MTIE); //Enable machine timer
    csr_write(mstatus, MSTATUS_MPP | MSTATUS_MIE);

    gpio_setOutputEnable(BSP_LED_GPIO, BSP_LED_MASK);
    gpio_setOutput(BSP_LED_GPIO, 0x00000000);

	// xprintf setup
	xdev_out(uart_putc);

	xprintf("*** SaxonSoc Booted...\n");
	
	xprintf("sys_mepc = %08X\n",sys_mepc);
	xprintf("sys_mcause = %08X\n",sys_mcause);
	xprintf("sys_uepc = %08X\n",sys_uepc);
	xprintf("sys_ucause = %08X\n",sys_ucause);

	// symtable setup
	symt_init(_SYMTABLE);
	symt_clear();

	symt_put("malloc",(uint32_t)&malloc);
	symt_put("xprintf",(uint32_t)&xprintf);		
	symt_put("console_clear",(uint32_t)&dummy);
	symt_put("console_scroll",(uint32_t)&dummy);
	symt_put("console_putc",(uint32_t)&dummy);
	symt_put("console_puts",(uint32_t)&dummy);
	symt_put("pollkey",(uint32_t)&dummy); // dummy
	symt_put("key_getc",(uint32_t)&returnerr); // dummy
	symt_put("pollrx",(uint32_t)&dummy);
	symt_put("polltx",(uint32_t)&dummy);
	symt_put("uart_init",(uint32_t)&dummy);
	symt_put("uart_getc",(uint32_t)&getcon_nowait);
	symt_put("uart_putc",(uint32_t)&uart_putc);
	symt_put("uart_puts",(uint32_t)&uart_puts);
	symt_put("_uart_wait",(uint32_t)&_uart_wait);

	// SYSCALL TEST
	int res = syscall0(MY_SYSCALL_GETSYMPTR);
	xprintf("SYSCALL(%d) = %08X\n",MY_SYSCALL_GETSYMPTR,res);

#define SDRAM_CTRL SYSTEM_SDRAM_A_CTRL
#define SDRAM_PHY  SDRAM_DOMAIN_PHY_A_CTRL
#define SDRAM_BASE SYSTEM_SDRAM_A0_BMB
#define RL 3
#define WL 0
#define CTRL_BURST_LENGHT 1
#define PHY_CLK_RATIO 2
#define SDRAM_TIMING MT48LC16M16A2_6A_ps

    sdram_init(
        SDRAM_CTRL,
        RL,
        WL,
        SDRAM_TIMING,
        CTRL_BURST_LENGHT,
        PHY_CLK_RATIO,
        20000
    );

    sdram_sdr_init(
        SDRAM_CTRL,
        RL,
        CTRL_BURST_LENGHT,
        PHY_CLK_RATIO
    );


    // while(1){
    //     gpio_setOutput(BSP_LED_GPIO, gpio_getOutput(BSP_LED_GPIO) ^ BSP_LED_MASK);

    //     while(uart_readOccupancy(BSP_UART_TERMINAL)){
    //         uart_write(BSP_UART_TERMINAL, uart_read(BSP_UART_TERMINAL));
    //     }

	// 	i++;
    //     bsp_uDelay(LOOP_UDELAY);
    // }
	
	// VGA SETTING
	//vga_init();
	//vga_clear();

	// CLEAR TEXT SCREEN
	//console_clear();

	// // JUMP TO DEBUG MONITOR
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

