# 1 "traphandler.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "traphandler.c"




# 1 "murax.h" 1



# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 1 3
# 12 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 1 3







# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\features.h" 1 3
# 28 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\features.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_newlib_version.h" 1 3
# 29 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\features.h" 2 3
# 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 2 3
# 41 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3

# 41 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_intsup.h" 1 3
# 35 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_intsup.h" 3
       
       
       
       
       
       
       
# 187 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_intsup.h" 3
       
       
       
       
       
       
       
# 14 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h" 1 3
# 20 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 2 3






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 5 "murax.h" 2
# 14 "murax.h"

# 14 "murax.h"
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


typedef struct
{
  volatile uint32_t PENDINGS;
  volatile uint32_t MASKS;
} InterruptCtrl_Reg;



typedef struct
{
  volatile uint32_t INPUT;
  volatile uint32_t OUTPUT;
  volatile uint32_t OUTPUT_ENABLE;
} Gpio_Reg;



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


void uart_init();
void uart_pollrx();
void uart_polltx();
int uart_getc();
int uart_putc(char c);
char uart_puts(unsigned char *s);
void _uart_wait();







typedef struct {
 uint32_t hSyncStart ,hSyncEnd;
 uint32_t hColorStart,hColorEnd;

 uint32_t vSyncStart ,vSyncEnd;
 uint32_t vColorStart,vColorEnd;
}Vga_Timing;

static const Vga_Timing vga_h800_v480_r60 = {
    .hSyncStart = 61,
    .hSyncEnd = 857 + 80,
    .hColorStart = 119,
    .hColorEnd = 839 + 80,
    .vSyncStart = 5,
    .vSyncEnd = 525,
    .vColorStart = 35,
    .vColorEnd = 515
};

static const Vga_Timing vga_h640_v480_r60 = {
    .hSyncStart = 96,
    .hSyncEnd = 800,
    .hColorStart = 96 + 16,
    .hColorEnd = 800 - 48,
    .vSyncStart = 2,
    .vSyncEnd = 525,
    .vColorStart = 2 + 10,
    .vColorEnd = 525 - 33
};

static const Vga_Timing vga_simRes = {
    .hSyncStart = 8,
    .hSyncEnd = 70,
    .hColorStart = 16,
    .hColorEnd = 64,
    .vSyncStart = 2,
    .vSyncEnd = 48,
    .vColorStart = 8,
    .vColorEnd = 40
};

static const Vga_Timing vga_simRes_h160_v120 = {
 .hSyncStart = 8,
 .hSyncEnd = 24+160,
 .hColorStart = 16,
 .hColorEnd = 16+160,
 .vSyncStart = 2,
 .vSyncEnd = 10+120,
 .vColorStart = 6,
 .vColorEnd = 6+120
};

typedef struct
{
  volatile uint32_t STATUS;
  volatile uint32_t FRAME_SIZE;
  volatile uint32_t FRAME_BASE;
  volatile uint32_t DUMMY0[13];
  volatile Vga_Timing TIMING;
} Vga_Reg;

uint32_t vga_isBusy(Vga_Reg *reg);
void vga_run(Vga_Reg *reg);
void vga_stop(Vga_Reg *reg);
void vga_init();
void vga_clear();
# 160 "murax.h"
void console_clear();
void console_scroll();
void console_putc(unsigned char c) ;
void console_puts(unsigned char *c) ;
# 180 "murax.h"
extern int syscall0(int callno);


extern void flushDataCache(uint32_t dummy);


void putcon(char c) ;

extern volatile uint32_t irqCount;
# 6 "traphandler.c" 2
# 1 "symtable.h" 1





typedef struct _SYMTABLE
{
 unsigned char name[(12)] ;
 unsigned int address;
} SYMTABLE ;

extern SYMTABLE *SYMTABLETOP ;

void symt_init(SYMTABLE *s);
void symt_clear();
SYMTABLE* symt_get(char *n);
SYMTABLE* symt_put(char *n,unsigned int a);
# 7 "traphandler.c" 2
# 1 "xprintf.h" 1
# 19 "xprintf.h"
extern void (*xfunc_out)(unsigned char);
void xputc (char c);
void xfputc (void (*func)(unsigned char), char c);
void xputs (const char* str);
void xfputs (void (*func)(unsigned char), const char* str);
void xprintf (const char* fmt, ...);
void xsprintf (char* buff, const char* fmt, ...);
void xfprintf (void (*func)(unsigned char), const char* fmt, ...);
void put_dump (const void* buff, unsigned long addr, int len, int width);
# 8 "traphandler.c" 2

extern uint32_t sys_mcause,sys_mepc;

volatile uint32_t irqCount = 0;
volatile uint32_t syscallCount = 0;
volatile uint32_t timerPending ;

volatile uint32_t traparg1,traparg2,traparg3;
volatile uint32_t trapcause;
volatile uint32_t trappc;
volatile uint32_t irqcause;
volatile uint32_t irqpc;


void irqCallback(){

 irqcause = sys_mcause;
 irqpc = sys_mepc;


 {

  uint32_t TPREADZ1;
  uint32_t TPREADX;
  uint32_t TPREADY;
  uint32_t TPOK ;







  TPREADZ1 = (*(volatile uint32_t *)0xF00500AC);
  TPREADX = (*(volatile uint32_t *)0xF00500A4);
  TPREADY = (*(volatile uint32_t *)0xF00500A8);
  TPOK = 0;
  if (TPREADZ1 > (120)) {
   if ((TPREADX > (176)) && (TPREADX < (3904))) {
    if ((TPREADY > (336)) && (TPREADY < (3940))) {
     (*(volatile uint32_t *)0xF0050010) = (TPREADX - (176)) * 800.0 / ((3904) - (176));
     (*(volatile uint32_t *)0xF0050018) = (TPREADY - (336)) * 480.0 / ((3940) - (336));
     TPOK = 1;
    }
   }
  }
  (*(volatile uint32_t *)0xF0050020) = TPOK;

  (*(volatile uint32_t *)0xF00500A0) = 0;


  irqCount++ ;


  timerPending = ((InterruptCtrl_Reg*)0xF0020010)->PENDINGS;
  ((InterruptCtrl_Reg*)0xF0020010)->PENDINGS = timerPending;
 }
}


uint32_t sysCallback(uint32_t arg1,uint32_t arg2,uint32_t arg3)
{
 int result = 0;

 traparg1 = arg1;
 traparg2 = arg2;
 traparg3 = arg3;
 trapcause = sys_mcause;
 trappc = sys_mepc;

 syscallCount++ ;

 switch(arg1)
 {
  case (4000):
   result = (uint32_t)SYMTABLETOP;
   break;
  default:
   xprintf("ecall @ %08X\n",trappc);
   result = 0xDEADBEEF;
   break;
 }
 return result;
}
