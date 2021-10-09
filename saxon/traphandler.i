# 1 "traphandler.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "traphandler.c"




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
# 6 "traphandler.c" 2
# 1 "bsp/riscv.h" 1
       
# 136 "bsp/riscv.h"

# 136 "bsp/riscv.h"
asm(".set regnum_x0  ,  0");
asm(".set regnum_x1  ,  1");
asm(".set regnum_x2  ,  2");
asm(".set regnum_x3  ,  3");
asm(".set regnum_x4  ,  4");
asm(".set regnum_x5  ,  5");
asm(".set regnum_x6  ,  6");
asm(".set regnum_x7  ,  7");
asm(".set regnum_x8  ,  8");
asm(".set regnum_x9  ,  9");
asm(".set regnum_x10 , 10");
asm(".set regnum_x11 , 11");
asm(".set regnum_x12 , 12");
asm(".set regnum_x13 , 13");
asm(".set regnum_x14 , 14");
asm(".set regnum_x15 , 15");
asm(".set regnum_x16 , 16");
asm(".set regnum_x17 , 17");
asm(".set regnum_x18 , 18");
asm(".set regnum_x19 , 19");
asm(".set regnum_x20 , 20");
asm(".set regnum_x21 , 21");
asm(".set regnum_x22 , 22");
asm(".set regnum_x23 , 23");
asm(".set regnum_x24 , 24");
asm(".set regnum_x25 , 25");
asm(".set regnum_x26 , 26");
asm(".set regnum_x27 , 27");
asm(".set regnum_x28 , 28");
asm(".set regnum_x29 , 29");
asm(".set regnum_x30 , 30");
asm(".set regnum_x31 , 31");

asm(".set regnum_zero,  0");
asm(".set regnum_ra  ,  1");
asm(".set regnum_sp  ,  2");
asm(".set regnum_gp  ,  3");
asm(".set regnum_tp  ,  4");
asm(".set regnum_t0  ,  5");
asm(".set regnum_t1  ,  6");
asm(".set regnum_t2  ,  7");
asm(".set regnum_s0  ,  8");
asm(".set regnum_s1  ,  9");
asm(".set regnum_a0  , 10");
asm(".set regnum_a1  , 11");
asm(".set regnum_a2  , 12");
asm(".set regnum_a3  , 13");
asm(".set regnum_a4  , 14");
asm(".set regnum_a5  , 15");
asm(".set regnum_a6  , 16");
asm(".set regnum_a7  , 17");
asm(".set regnum_s2  , 18");
asm(".set regnum_s3  , 19");
asm(".set regnum_s4  , 20");
asm(".set regnum_s5  , 21");
asm(".set regnum_s6  , 22");
asm(".set regnum_s7  , 23");
asm(".set regnum_s8  , 24");
asm(".set regnum_s9  , 25");
asm(".set regnum_s10 , 26");
asm(".set regnum_s11 , 27");
asm(".set regnum_t3  , 28");
asm(".set regnum_t4  , 29");
asm(".set regnum_t5  , 30");
asm(".set regnum_t6  , 31");

asm(".set CUSTOM0  , 0x0B");
asm(".set CUSTOM1  , 0x2B");
# 7 "traphandler.c" 2
# 1 "bsp/clint.h" 1
       

# 1 "bsp/type.h" 1





typedef uint64_t u64;
typedef int64_t s64;

typedef uint32_t u32;
typedef int32_t s32;

typedef uint16_t u16;
typedef int16_t s16;

typedef uint8_t u8;
typedef int8_t s8;
# 4 "bsp/clint.h" 2
# 1 "bsp/io.h" 1
       


# 1 "bsp/soc.h" 1
# 5 "bsp/io.h" 2

static inline u32 read_u32(u32 address){
    return *((volatile u32*) address);
}

static inline void write_u32(u32 data, u32 address){
    *((volatile u32*) address) = data;
}

static inline u16 read_u16(u32 address){
    return *((volatile u16*) address);
}

static inline void write_u16(u16 data, u32 address){
    *((volatile u16*) address) = data;
}

static inline u8 read_u8(u32 address){
    return *((volatile u8*) address);
}

static inline void write_u8(u8 data, u32 address){
    *((volatile u8*) address) = data;
}

static inline void write_u32_ad(u32 address, u32 data){
    *((volatile u32*) address) = data;
}
# 5 "bsp/clint.h" 2





static inline u32 clint_getTimeLow(u32 reg){ return read_u32(reg + 0xBFF8); }
static inline u32 clint_getTimeHigh(u32 reg){ return read_u32(reg + 0xBFF8 +4); }


static void clint_setCmp(u32 p, u64 cmp, u32 hart_id){
    p += 0x4000 + hart_id*8;
    write_u32(0xFFFFFFFF, p + 4);
    write_u32(cmp, p + 0);
    write_u32(cmp >> 32, p + 4);
}

static u64 clint_getTime(u32 p){
    u32 lo, hi;


    do {
        hi = clint_getTimeHigh(p);
        lo = clint_getTimeLow(p);
    } while (clint_getTimeHigh(p) != hi);

    return (((u64)hi) << 32) | lo;
}


static void clint_uDelay(u32 usec, u32 hz, u32 reg){
    u32 mTimePerUsec = hz/1000000;
    u32 limit = clint_getTimeLow(reg) + usec*mTimePerUsec;
    while((int32_t)(limit-(clint_getTimeLow(reg))) >= 0);
}
# 8 "traphandler.c" 2




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
# 13 "traphandler.c" 2
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
# 14 "traphandler.c" 2

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

uint64_t timerCmp;

void initTimer(){
    timerCmp = clint_getTime(0xf0b00000);
    scheduleTimer();
}

void scheduleTimer(){
    timerCmp += 50000;
    clint_setCmp(0xf0b00000, timerCmp, 0);
}


void irqCallback(){

 irqcause = sys_irqcause;
 irqpc = sys_irqpc;

    int32_t cause = irqcause & 0xF;
 {
        switch(cause){
        case 7:

   irqCount++ ;
   scheduleTimer();
   break;
        case 11:
   break;
        default:
   break;
        }
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
