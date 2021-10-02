#ifndef __MURAX_H__
#define __MURAX_H__

#include <stdint.h>

// SDRAM HEAP
#define SDRAM_HEAP_TOP  (0x40100000)

// Timer / Prescaler
#define TIMER_PRESCALER ((Prescaler_Reg*)0xF0020000)
#define TIMER_INTERRUPT ((InterruptCtrl_Reg*)0xF0020010)
#define TIMER_A ((Timer_Reg*)0xF0020040)
#define TIMER_B ((Timer_Reg*)0xF0020050)
typedef struct
{
  volatile uint32_t CLEARS_TICKS;
  volatile uint32_t LIMIT;
  volatile uint32_t VALUE;
} Timer_Reg;
typedef struct
{
  volatile uint32_t LIMIT;
} Prescaler_Reg;

// Interrupt
typedef struct
{
  volatile uint32_t PENDINGS;
  volatile uint32_t MASKS;
} InterruptCtrl_Reg;

// GPIO
#define GPIO_A    ((Gpio_Reg*)(0xF0000000))
typedef struct
{
  volatile uint32_t INPUT;
  volatile uint32_t OUTPUT;
  volatile uint32_t OUTPUT_ENABLE;
} Gpio_Reg;

// UART
#define UART      ((Uart_Reg*)(0xF0010000))
enum UartParity {NONE = 0,EVEN = 1,ODD = 2};
enum UartStop {ONE = 0,TWO = 1};

typedef struct
{
  volatile uint32_t DATA;
  volatile uint32_t STATUS;
  volatile uint32_t CLOCK_DIVIDER;
  volatile uint32_t FRAME_CONFIG;
} Uart_Reg;

typedef struct {
	uint32_t dataLength;
	enum UartParity parity;
	enum UartStop stop;
	uint32_t clockDivider;
} Uart_Config;

uint32_t uart_writeAvailability(Uart_Reg *reg);
uint32_t uart_readOccupancy(Uart_Reg *reg);
void uart_write(Uart_Reg *reg, uint32_t data);
int uart_read(Uart_Reg *reg);
void uart_applyConfig(Uart_Reg *reg, Uart_Config *config);

// PicoRv32 System Compatible call
void uart_init();
void uart_pollrx();
void uart_polltx();
int uart_getc();
int uart_putc(char c);
char uart_puts(unsigned char *s);
void _uart_wait();

// VGA / TEXT
#define VGA_SDRAMADDR  ((uint16_t *)(0x40000000))
#define VGA_RES_X (800)
#define VGA_RES_Y (480)

#define VGA_BASE       ((Vga_Reg*)(0xF0030000))
typedef struct {
	uint32_t hSyncStart ,hSyncEnd;
	uint32_t hColorStart,hColorEnd;

	uint32_t vSyncStart ,vSyncEnd;
	uint32_t vColorStart,vColorEnd;
}Vga_Timing;

static const Vga_Timing vga_h800_v480_r60 = {
    .hSyncStart  = 61,
    .hSyncEnd    = 857 + 80,
    .hColorStart = 119,
    .hColorEnd   = 839 + 80,
    .vSyncStart  = 5,
    .vSyncEnd 	 = 525,
    .vColorStart = 35,
    .vColorEnd 	 = 515
};

static const Vga_Timing vga_h640_v480_r60 = {
    .hSyncStart  = 96,
    .hSyncEnd    = 800,
    .hColorStart = 96 + 16,
    .hColorEnd   = 800 - 48,
    .vSyncStart  = 2,
    .vSyncEnd 	 = 525,
    .vColorStart = 2 + 10,
    .vColorEnd 	 = 525 - 33
};

static const Vga_Timing vga_simRes = {
    .hSyncStart  = 8,
    .hSyncEnd    = 70,
    .hColorStart = 16,
    .hColorEnd   = 64,
    .vSyncStart  = 2,
    .vSyncEnd 	 = 48,
    .vColorStart = 8,
    .vColorEnd 	 = 40
};

static const Vga_Timing vga_simRes_h160_v120 = {
	.hSyncStart  = 8,
	.hSyncEnd    = 24+160,
	.hColorStart = 16,
	.hColorEnd   = 16+160,
	.vSyncStart  = 2,
	.vSyncEnd 	 = 10+120,
	.vColorStart = 6,
	.vColorEnd 	 = 6+120
};

typedef struct
{
  volatile uint32_t  STATUS;
  volatile uint32_t  FRAME_SIZE;
  volatile uint32_t  FRAME_BASE;
  volatile uint32_t  DUMMY0[13];
  volatile Vga_Timing TIMING;
} Vga_Reg;

uint32_t vga_isBusy(Vga_Reg *reg);
void vga_run(Vga_Reg *reg);
void vga_stop(Vga_Reg *reg);
void vga_init();
void vga_clear();

// CONSOLE
#define TEXTWIDTH  (800/8)
#define TEXTHEIGHT (480/32)
#define TVRAM_STRIDE (1024/8)

#define TVRAM       ((volatile uint32_t *)0xF0040000)
#define CHARV(x,y)  (*(TVRAM+((y)*TVRAM_STRIDE)+(x)))

#define cursorX (*(volatile uint32_t *)0xF0050080)
#define cursorY (*(volatile uint32_t *)0xF0050084)

void console_clear();
void console_scroll();
void console_putc(unsigned char c) ;
void console_puts(unsigned char *c) ;

// TP(I2C)
#define NS2009_STATE   (*(volatile uint32_t *)0xF00500A0)
#define NS2009_DATAX   (*(volatile uint32_t *)0xF00500A4)
#define NS2009_DATAY   (*(volatile uint32_t *)0xF00500A8)
#define NS2009_DATAZ1  (*(volatile uint32_t *)0xF00500AC)

// TP CURSOR
#define TPX  (*(volatile uint32_t *)0xF0050010)
#define TPY  (*(volatile uint32_t *)0xF0050018)
#define TPEN (*(volatile uint32_t *)0xF0050020)


// System Call Entry
#define MY_SYSCALL_GETSYMPTR (4000) // Only Supported

extern int syscall0(int callno);

// Flash DataCache Call
extern void flushDataCache(uint32_t dummy);

// in main
void	putcon(char c) ;

extern volatile uint32_t irqCount;

#endif /* __MURAX_H__ */
