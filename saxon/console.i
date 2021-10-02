# 1 "console.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "console.c"





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
# 7 "console.c" 2



void console_clear()
{
 uint32_t x ;
 for (x=0;x<((480/32)*(1024/8));x++) {
  ((volatile uint32_t *)0xF0040000)[x] = 0;
 }
 (*(volatile uint32_t *)0xF0050080) = (*(volatile uint32_t *)0xF0050084) = 0;
}

void console_scroll()
{
 int x,y ;
 for (y=0;y<(480/32)-1;y++) {
  for (x=0;x<(800/8);x++) {
   (*(((volatile uint32_t *)0xF0040000)+((y)*(1024/8))+(x))) = (*(((volatile uint32_t *)0xF0040000)+(((y+1))*(1024/8))+(x)));
  }
 }

 y = (480/32)-1;
 for (x=0;x<(800/8);x++) {
  (*(((volatile uint32_t *)0xF0040000)+((y)*(1024/8))+(x))) = 0x00;
 }
}

enum { ESEQ_NONE=0, ESEQ_ESC, ESEQ_ESC_BRACKET, ESEQ_ESC_BRACKET_DIGIT, ESEQ_ESC_O };
int escape_seq = ESEQ_NONE ;
uint32_t escape_digit = 0;


static
void debugout(unsigned char c)
{
 (*(((volatile uint32_t *)0xF0040000)+(((*(volatile uint32_t *)0xF0050084))*(1024/8))+((*(volatile uint32_t *)0xF0050080)++))) = c;
 if ((*(volatile uint32_t *)0xF0050080) >= (800/8)) {
  (*(volatile uint32_t *)0xF0050084) += 1;
  (*(volatile uint32_t *)0xF0050080) = 0;
 }
}

char HEXA[] = "0123456789ABCDEF";

static
void debugouthex2(unsigned char c)
{
 debugout('[');
 debugout(HEXA[(c & 0xF0) >> 4]);
 debugout(HEXA[(c & 0x0F)]);
 debugout(']');
}


void console_putc(unsigned char c)
{
 switch(escape_seq)
 {
 case ESEQ_ESC:
        switch (c) {
            case '[':
                escape_seq = ESEQ_ESC_BRACKET;
                break;
            case 'O':
                escape_seq = ESEQ_ESC_O;
                break;
            default:
                escape_seq = ESEQ_NONE;
                break;
        }
  break;
 case ESEQ_ESC_BRACKET:
        escape_seq = ESEQ_NONE;
        if ('0' <= c && c <= '9') {
         escape_digit = (escape_digit*10) + (c - 0x30);
            escape_seq = ESEQ_ESC_BRACKET;
        } else {
            if (c == 'A') {

            } else if (c == 'B') {

            } else if (c == 'C') {

            } else if (c == 'D') {

             if (escape_digit == 0) {
     (*(volatile uint32_t *)0xF0050080) = (*(volatile uint32_t *)0xF0050080) - 1;
             } else {
     if ((*(volatile uint32_t *)0xF0050080) > escape_digit) {
      (*(volatile uint32_t *)0xF0050080) = (*(volatile uint32_t *)0xF0050080) - escape_digit;
     } else {
               (*(volatile uint32_t *)0xF0050080) = 0;
     }
             }
            } else if (c == 'H') {

            } else if (c == 'F') {

            } else if (c == 'K') {

             int i;
    for (i=(*(volatile uint32_t *)0xF0050080);i<(800/8);i++) {
     (*(((volatile uint32_t *)0xF0040000)+(((*(volatile uint32_t *)0xF0050084))*(1024/8))+(i))) = 0x00;
    }
            } else {

          debugout('*');
          debugout('E');
          debugout('[');
    debugouthex2(c);
            }
        }
  break;
 case ESEQ_NONE:
 default:
  if (c == 10) {
   (*(volatile uint32_t *)0xF0050084) += 1;
  } else if (c == 13) {
   (*(volatile uint32_t *)0xF0050080) = 0;
  } else if (c == 8) {
   if ((*(volatile uint32_t *)0xF0050080)) (*(volatile uint32_t *)0xF0050080)--;
  } else if (c == 27) {
   escape_digit = 0;
   escape_seq = ESEQ_ESC;
  } else if (c < 0x20) {
   debugouthex2(c);
  } else {
   (*(((volatile uint32_t *)0xF0040000)+(((*(volatile uint32_t *)0xF0050084))*(1024/8))+((*(volatile uint32_t *)0xF0050080)))) = c;
   (*(volatile uint32_t *)0xF0050080)++ ;
   if ((*(volatile uint32_t *)0xF0050080) >= (800/8)) {
    (*(volatile uint32_t *)0xF0050084) += 1;
    (*(volatile uint32_t *)0xF0050080) = 0;
   }
  }
  break;
 }

 if ((*(volatile uint32_t *)0xF0050084) >= (480/32)) {
  console_scroll();
  (*(volatile uint32_t *)0xF0050084)-- ;
 }
}


void console_puts(unsigned char *c)
{
 int i;
 for (i=0;i<(256);i++,c++) {
  if (*c == 0x00) return ;
  console_putc(*c) ;
 }
}
