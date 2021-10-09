# 1 "deb.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "deb.c"





# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 1 3



# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 1 3
# 10 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\newlib.h" 1 3
# 14 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\newlib.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_newlib_version.h" 1 3
# 15 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\newlib.h" 2 3
# 11 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\config.h" 1 3



# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\config.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\features.h" 1 3
# 6 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\config.h" 2 3
# 12 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 2 3
# 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 1 3
# 43 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h" 1 3
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
# 44 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 2 3

# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 328 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 426 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 437 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
} max_align_t;
# 46 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 2 3
# 6 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 2 3


# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\xlocale.h" 1 3
# 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\xlocale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 2 3




int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);





extern int isalnum_l (int __c, locale_t __l);
extern int isalpha_l (int __c, locale_t __l);
extern int isblank_l (int __c, locale_t __l);
extern int iscntrl_l (int __c, locale_t __l);
extern int isdigit_l (int __c, locale_t __l);
extern int isgraph_l (int __c, locale_t __l);
extern int islower_l (int __c, locale_t __l);
extern int isprint_l (int __c, locale_t __l);
extern int ispunct_l (int __c, locale_t __l);
extern int isspace_l (int __c, locale_t __l);
extern int isupper_l (int __c, locale_t __l);
extern int isxdigit_l(int __c, locale_t __l);
extern int tolower_l (int __c, locale_t __l);
extern int toupper_l (int __c, locale_t __l);



extern int isascii_l (int __c, locale_t __l);
extern int toascii_l (int __c, locale_t __l);
# 69 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 3
const char *__locale_ctype_ptr (void);
# 103 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 3
const char *__locale_ctype_ptr_l (locale_t);
# 165 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\ctype.h" 3
extern const char _ctype_[];


# 7 "deb.c" 2
# 1 "ff.h" 1
# 29 "ff.h"
# 1 "ffconf.h" 1
# 30 "ff.h" 2
# 44 "ff.h"
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 1 3
# 13 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\stdint.h" 3
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
# 45 "ff.h" 2

# 45 "ff.h"
typedef unsigned int UINT;
typedef unsigned char BYTE;
typedef uint16_t WORD;
typedef uint32_t DWORD;
typedef uint64_t QWORD;
typedef WORD WCHAR;
# 99 "ff.h"
typedef char TCHAR;
# 124 "ff.h"
typedef DWORD FSIZE_t;
typedef DWORD LBA_t;






typedef struct {
 BYTE fs_type;
 BYTE pdrv;
 BYTE n_fats;
 BYTE wflag;
 BYTE fsi_flag;
 WORD id;
 WORD n_rootdir;
 WORD csize;
# 165 "ff.h"
 DWORD n_fatent;
 DWORD fsize;
 LBA_t volbase;
 LBA_t fatbase;
 LBA_t dirbase;
 LBA_t database;



 LBA_t winsect;
 BYTE win[512];
} FATFS;





typedef struct {
 FATFS* fs;
 WORD id;
 BYTE attr;
 BYTE stat;
 DWORD sclust;
 FSIZE_t objsize;
# 199 "ff.h"
} FFOBJID;





typedef struct {
 FFOBJID obj;
 BYTE flag;
 BYTE err;
 FSIZE_t fptr;
 DWORD clust;
 LBA_t sect;
# 220 "ff.h"
 BYTE buf[512];

} FIL;





typedef struct {
 FFOBJID obj;
 DWORD dptr;
 DWORD clust;
 LBA_t sect;
 BYTE* dir;
 BYTE fn[12];




 const TCHAR* pat;

} DIR;





typedef struct {
 FSIZE_t fsize;
 WORD fdate;
 WORD ftime;
 BYTE fattrib;




 TCHAR fname[12 + 1];

} FILINFO;





typedef struct {
 BYTE fmt;
 BYTE n_fat;
 UINT align;
 UINT n_root;
 DWORD au_size;
} MKFS_PARM;





typedef enum {
 FR_OK = 0,
 FR_DISK_ERR,
 FR_INT_ERR,
 FR_NOT_READY,
 FR_NO_FILE,
 FR_NO_PATH,
 FR_INVALID_NAME,
 FR_DENIED,
 FR_EXIST,
 FR_INVALID_OBJECT,
 FR_WRITE_PROTECTED,
 FR_INVALID_DRIVE,
 FR_NOT_ENABLED,
 FR_NO_FILESYSTEM,
 FR_MKFS_ABORTED,
 FR_TIMEOUT,
 FR_LOCKED,
 FR_NOT_ENOUGH_CORE,
 FR_TOO_MANY_OPEN_FILES,
 FR_INVALID_PARAMETER
} FRESULT;






FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);
FRESULT f_close (FIL* fp);
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);
FRESULT f_truncate (FIL* fp);
FRESULT f_sync (FIL* fp);
FRESULT f_opendir (DIR* dp, const TCHAR* path);
FRESULT f_closedir (DIR* dp);
FRESULT f_readdir (DIR* dp, FILINFO* fno);
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);
FRESULT f_findnext (DIR* dp, FILINFO* fno);
FRESULT f_mkdir (const TCHAR* path);
FRESULT f_unlink (const TCHAR* path);
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);
FRESULT f_stat (const TCHAR* path, FILINFO* fno);
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);
FRESULT f_chdir (const TCHAR* path);
FRESULT f_chdrive (const TCHAR* path);
FRESULT f_getcwd (TCHAR* buff, UINT len);
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);
FRESULT f_setlabel (const TCHAR* label);
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);
FRESULT f_expand (FIL* fp, FSIZE_t fsz, BYTE opt);
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);
FRESULT f_mkfs (const TCHAR* path, const MKFS_PARM* opt, void* work, UINT len);
FRESULT f_fdisk (BYTE pdrv, const LBA_t ptbl[], void* work);
FRESULT f_setcp (WORD cp);
int f_putc (TCHAR c, FIL* fp);
int f_puts (const TCHAR* str, FIL* cp);
int f_printf (FIL* fp, const TCHAR* str, ...);
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);
# 8 "deb.c" 2

# 1 "bsp/bsp.h" 1
       

# 1 "bsp/soc.h" 1
# 4 "bsp/bsp.h" 2
# 1 "bsp/uart.h" 1
       

# 1 "bsp/type.h" 1





typedef uint64_t u64;
typedef int64_t s64;

typedef uint32_t u32;
typedef int32_t s32;

typedef uint16_t u16;
typedef int16_t s16;

typedef uint8_t u8;
typedef int8_t s8;
# 4 "bsp/uart.h" 2
# 1 "bsp/io.h" 1
       




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
# 5 "bsp/uart.h" 2






enum UartDataLength {BITS_8 = 8};
enum UartParity {NONE = 0,EVEN = 1,ODD = 2};
enum UartStop {ONE = 0,TWO = 1};

typedef struct {
    enum UartDataLength dataLength;
    enum UartParity parity;
    enum UartStop stop;
    u32 clockDivider;
} Uart_Config;

static u32 uart_writeAvailability(u32 reg){
    return (read_u32(reg + 0x04) >> 16) & 0xFF;
}
static u32 uart_readOccupancy(u32 reg){
    return read_u32(reg + 0x04) >> 24;
}

static void uart_write(u32 reg, char data){
    while(uart_writeAvailability(reg) == 0);
    write_u32(data, reg + 0x00);
}

static void uart_writeStr(u32 reg, const char* str){
    while(*str) uart_write(reg, *str++);
}

static void uart_writeHex(u32 reg, int value){
    for(int i = 7; i >= 0; i--){
        int hex = (value >> i*4) & 0xF;
        uart_write(reg, hex > 9 ? 'A' + hex - 10 : '0' + hex);
    }
}

static char uart_read(u32 reg){
    while(uart_readOccupancy(reg) == 0);
    return read_u32(reg + 0x00);
}

static void uart_applyConfig(u32 reg, Uart_Config *config){
    write_u32(config->clockDivider, reg + 0x08);
    write_u32(((config->dataLength-1) << 0) | (config->parity << 8) | (config->stop << 16), reg + 0x0C);
}
# 5 "bsp/bsp.h" 2
# 1 "bsp/clint.h" 1
       
# 10 "bsp/clint.h"
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
# 6 "bsp/bsp.h" 2
# 10 "deb.c" 2
# 1 "bsp/gpio.h" 1
       
# 15 "bsp/gpio.h"
static inline u32 gpio_getInput(u32 reg){ return read_u32(reg + 0x00); }
static inline u32 gpio_getOutput(u32 reg){ return read_u32(reg + 0x04); }
static inline void gpio_setOutput(u32 reg, u32 value){ write_u32(value, reg + 0x04); }
static inline u32 gpio_getOutputEnable(u32 reg){ return read_u32(reg + 0x08); }
static inline void gpio_setOutputEnable(u32 reg, u32 value){ write_u32(value, reg + 0x08); }

static inline void gpio_setInterruptRiseEnable(u32 reg, u32 value){ write_u32(value, reg + 0x20); }
static inline void gpio_setInterruptFallEnable(u32 reg, u32 value){ write_u32(value, reg + 0x24); }
static inline void gpio_setInterruptHighEnable(u32 reg, u32 value){ write_u32(value, reg + 0x28); }
static inline void gpio_setInterruptLowEnable(u32 reg, u32 value){ write_u32(value, reg + 0x2c); }
# 11 "deb.c" 2


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
# 14 "deb.c" 2

extern volatile uint32_t irqCount;



char getcon() {
 int c;
 while ((c = uart_read(0xf0010000)) < 0) {
 }
 return c;
}

uint32_t consts()
{
 return (uart_readOccupancy(0xf0010000));
}

uint32_t col;
char line[80], *lp;
BYTE *datap, *codep;

void putch(char c)
{
 if (c == '\r')
  col = 0;
 if (c >= ' ')
  col++;
 uart_putc(c);
}



void putcrlf()
{
 putch('\r');
 putch('\n');
}

void putback()
{
 putch('\b'); putch(' '); putch('\b');
}



void _error() { { putcrlf(); putch('?'); return; }; }

void getline()
{
 char c, *p;
 int ct;

 p = lp = line;
 ct = 0;
 for (;;) {
  switch (c = getcon()) {
  case '\b':
   if (ct != 0) {
    p--;
    ct--;
    putback();
   }
   break;
  case '\r': case '\n':
   *p = '\0';

   return;
  case '\030':
   p = line;
   for (; ct != 0; ct--)
    putback();
   break;
  default:
   if (c >= ' ') {
    *p++ = 
# 88 "deb.c" 3
          __extension__ ({ __typeof__ (
# 88 "deb.c"
          c
# 88 "deb.c" 3
          ) __x = (
# 88 "deb.c"
          c
# 88 "deb.c" 3
          ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==02) ? (int) __x - 'a' + 'A' : (int) __x;})
# 88 "deb.c"
                    ;
    ct++;
    putch(c);
   }
  }
 }
}

int inhex(char c)
{
 c -= '0';
 if (c <= 9) return (c);
 c -= 'A'-'0'-10;
 if ((c >= 10) && (c <= 15)) return (c);
 return (-1);
}

uint32_t gethex()
{
 int c;
 uint32_t v;

 v = 0;
 for (; (c = inhex(*lp)) != -1; lp++)
  v = v * 16 + c;
 return (v);
}



uint32_t getdata()
{
 if (inhex(*lp) == -1)
  return 0;
 return (gethex());
}



uint32_t ogetdata(uint32_t p)
{
 switch(*lp) {
 case ',':
 case '\0':
  return (p);
 default:
  return (getdata());
 }
}
# 146 "deb.c"
void puthex(uint32_t n)
{
 putch(n < 10 ? n + '0' : n + 'A' - 10);
}

void puthxb(uint32_t n)
{
 puthex((n >> 4) & 0x0f);
 puthex((n >> 0) & 0x0f);
}

void puthxw(uint32_t n)
{
 puthxb((n >> 8) & 0xff);
 puthxb((n >> 0) & 0xff);
}

void puthxww(uint32_t n)
{
 puthxb((n >> 24) & 0xff);
 puthxb((n >> 16) & 0xff);
 puthxb((n >> 8) & 0xff);
 puthxb((n >> 0) & 0xff);
}

char *comma(char *p)
{
 while (*p && *p++ != ',')
  ;
 return (p);
}

void xdump()
{
 uint8_t *p, *q;
 uint8_t *from, *to;
 uint32_t ct;

 from = ((BYTE *)ogetdata((uint32_t)datap));
 if ((((uint32_t)from) >> 28) == 0) {
  from = (BYTE *)((uint32_t)from + 0x80000000);
 }
 { if (*lp != '\0' && *lp++ != ',') return ;};
 to = ((BYTE *)ogetdata((uint32_t)from + 16*8 - 1));
 if ((((uint32_t)to) >> 28) == 0) {
  to = (BYTE *)((uint32_t)to + 0x80000000);
 }
 { if (*lp != '\0') return; };
 for (p = from; from <= p && p <= to; p += 16) {
  { if (consts()) { getcon(); return; }};
  putcrlf();
  puthxww((uint32_t)p);
  putch(':');
  putch(' ');
  q = p; ct = 16;
  do {
   puthxb(*q++);
   putch(' ');
  } while (--ct != 0);
  putch(' ');
  putch(' ');
  q = p; ct = 16;
  do {
   putch(0x20 <= *q && *q <= 0x7e ? *q : '.');
   q++;
  } while (--ct != 0);
 }
 datap = p;
}

void xsubst()
{
 uint8_t *p;

 p = ((BYTE *)ogetdata((uint32_t)datap));
 if ((((uint32_t)p) >> 28) == 0) {
  p = (uint8_t *)((uint32_t)p + 0x80000000);
 }

 { if (*lp != '\0') return; };

 for (;;) {
  putcrlf();
  puthxww((uint32_t)p);
  putch(' ');
  putch(' ');
  puthxb(*p);
  putch(' ');
  getline();
  switch (line[0]) {
  case '.':
   return;
  case '^':
   p--;
   break;
  case '\0':
   p++;
   break;
  default:
   *p++ = getdata();
   { if (*lp != '\0') return; };
  }
 }
}


void xfill()
{
 uint8_t *from, *to, dat;
 uint32_t ct;

 from = ((BYTE *)getdata());
 {if (*lp++ != ',') return; };
 to = ((BYTE *)getdata());
 {if (*lp++ != ',') return; };
 dat = getdata();
 { if (*lp != '\0') return; };

 for (ct = to - from + 1; ct != 0; --ct)
  *from++ = dat;
}

uint8_t Sum;
uint8_t hx1()
{
 uint8_t x;
 if ((x = inhex(getcon())) >= 16)
  return 0;
 return (x);
}

uint8_t hxbyte()
{
 uint8_t x;
 x = hx1();
 x = x * 16 + hx1();
 Sum += x;
 return (x);
}

uint32_t hxword()
{
 BYTE x;
 x = hxbyte();
 return (((uint32_t)x << 8) | hxbyte());
}

uint32_t STARTADDR = 0x40200000;

void xread()
{
 uint32_t dtype;
 uint32_t seg = 0x80000000;
 uint32_t len;
 char *p;

 for (;;) {
  while (getcon() != ':')
   ;
  Sum = 0;
  len = hxbyte();
  if (len == 0)
   return;
  p = (char *)(hxword());
  dtype = hxbyte();
  if (dtype != 0) {
   if (dtype == 0x04) {
    seg = hxword() << 16;
    hxbyte();
    continue;
   } else if (dtype == 0x05) {
    seg = hxword() << 16;
    seg |= hxword() ;
    hxbyte();
    STARTADDR = seg;
    xprintf("Entry Found : %08X\r\n",STARTADDR);
    continue;
   } else {
    return;
   }
  }
  do {
   *(seg+p) = hxbyte();
   p++;
  } while (--len != 0);
  hxbyte();
  if (Sum != 0)
   { putcrlf(); putch('?'); return; };
 }
}

uint8_t hx1lp()
{
 uint8_t x;

 if ((x = inhex(*lp++)) >= 16)
  x = 0;
 return (x);
}

uint8_t hxbytelp()
{
 uint8_t x;

 x = hx1lp();
 x = x * 16 + hx1lp();
 Sum += x;
 return (x);
}

uint32_t hxwordlp()
{
 uint8_t x;

 x = hxbytelp();
 return (((uint32_t)x << 8) | hxbytelp());
}


FATFS FatFs;
void xdir()
{
 FRESULT fr;
 DIR dj;
 FILINFO fno;

 putcrlf();
 f_mount(&FatFs, "", 0);
 fr = f_findfirst(&dj, &fno, "", "*");
 while (fr == FR_OK && fno.fname[0]) {
  if (fno.fattrib & 0x10) {
   xprintf("<DIR>  %s\n",fno.fname);
  } else {
   xprintf("<FILE> %s\n",fno.fname);
  }
  fr = f_findnext(&dj, &fno);
 }
 f_closedir(&dj);
}

void xsdread()
{
 uint32_t len;
 uint32_t dtype;
 uint32_t allsum;
 uint32_t seg = 0x80000000;
 char *p,*adr;
 FRESULT fr;
 FIL fil;
 UINT rc;
 UINT bytecount;

 putcrlf();
 f_mount(&FatFs, "", 0);
 fr = f_open(&fil,&line[1],0x01);
 if (fr) {
  xprintf("%s : Not Found \n",&line[1]);
  return;
 }

 bytecount = 0;
 while(1) {
  p=lp=line;
  while(1) {
   f_read(&fil, p, 1, &rc);
   if (rc != 1) goto L_EOF;
   if (*p == ':') break;
   if (*p <= ' ') continue;
   break;
  }

  p=lp=line;
  f_read(&fil, p, 2 , &rc);
  if (rc != 2) goto L_EOF;
  Sum = 0;
  len = hxbytelp();
  if ((len == 0) || (len > 40))
   goto L_EOF;
  p=lp=line;
  f_read(&fil, p, 6 + len*2 + 2, &rc);
  if (rc != 6 + len*2 + 2) goto L_EOF;

  adr = (char *)(hxwordlp());
  dtype = hxbytelp();
  if (dtype != 0) {
   if (dtype == 0x04) {
    seg = hxwordlp() << 16;
    hxbytelp();
    continue;
   } else if (dtype == 0x05) {
    seg = hxwordlp() << 16;
    seg |= hxwordlp() ;
    hxbytelp();
    STARTADDR = seg;
    xprintf("Entry Found : %08X\n",STARTADDR);
    continue;
   } else {
    goto L_EOF;
   }
  }
  bytecount+=len;
  do {
   seg[adr++] = hxbytelp();
  } while (--len != 0);
  hxbytelp();
  if (Sum != 0){
   xprintf("Sum Invalid.\n");
   goto L_EOF;
  }
 }
L_EOF:
 f_close(&fil);
 xprintf("%d Bytes read.\n",bytecount);

 {
  int i;
  uint32_t sum = 0;
  uint8_t *p = (uint8_t *)STARTADDR;
  for(i=0;i<bytecount;i++) {
   sum += p[i];
  }
  xprintf("SUM=%08X\n",sum);
 }
}
# 505 "deb.c"
const char* HelpMsg =
 "D:Dump     - D(Begin),(End)\n"
 "F:Fill     - F(Begin),(End),(Val)\n"
 "G:Go       - G<STARTENTRY:fromihex>\n"
 "R:Read Intel Hex\n"
 "S:Set      - S(Addr)\n"
 "=:SD DIR   - =\n"
 "!:SD IHEX  - !(Filename)\n"
 "T:TP TEST\n"
 ;

void xhelp()
{
 xprintf(HelpMsg);
}

void xgo()
{

 ((void(*)())STARTADDR)();
}

typedef struct {
 char mnemo;
 void (*func)();
} TBENTRY;

TBENTRY comtbl[] = {
 {'D', xdump},
 {'F', xfill},
 {'G', xgo},
 {'R', xread},
 {'S', xsubst},
 {'=', xdir},
 {'!', xsdread},
 {'?', xhelp},

 {'\0', _error}
};





void _main()
{
 TBENTRY *p;
 char c;
 uint32_t lastirqcount = irqCount;

 xprintf("*** VexRiscv Monitor ***");

 for (;;) {
  xprintf("\n%d(ms)>",irqCount-lastirqcount);
  getline();
  if (line[0] == '\0') {
   lastirqcount = irqCount;
   continue;
  }
  lp = &line[1];
  for (p = comtbl;(c = p->mnemo) > 0; p++)
   if (c == line[0])
    break;
  lastirqcount = irqCount;
  (*p->func)();
 }
}
