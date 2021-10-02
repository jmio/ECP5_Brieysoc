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
# 1 "murax.h" 1



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
# 8 "deb.c" 2
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
# 9 "deb.c" 2
# 1 "ff.h" 1
# 29 "ff.h"
# 1 "ffconf.h" 1
# 30 "ff.h" 2
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
# 10 "deb.c" 2




char getcon() {
 int c;
 while ((c = uart_read(((Uart_Reg*)(0xF0010000)))) < 0) {
 }
 return c;
}

uint32_t consts()
{
 return (uart_readOccupancy(((Uart_Reg*)(0xF0010000))));
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
 putcon(c);
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
# 83 "deb.c" 3
          __extension__ ({ __typeof__ (
# 83 "deb.c"
          c
# 83 "deb.c" 3
          ) __x = (
# 83 "deb.c"
          c
# 83 "deb.c" 3
          ); (((((__locale_ctype_ptr ())+sizeof(""[__x]))[(int)(__x)])&(01|02))==02) ? (int) __x - 'a' + 'A' : (int) __x;})
# 83 "deb.c"
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
# 141 "deb.c"
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


void xtptest()
{
 UINT tpx,tpy;
 UINT TPREADZ1;
 UINT TPREADX;
 UINT TPREADY;






 xprintf("\nTP TEST\n");
 for (;;) {
  { if (consts()) { getcon(); return; }};
  TPREADZ1 = (*(volatile uint32_t *)0xF00500AC);
  TPREADX = (*(volatile uint32_t *)0xF00500A4);
  TPREADY = (*(volatile uint32_t *)0xF00500A8);
  if (TPREADZ1 > (120)) {
   if ((TPREADX < (176)) || (TPREADX > (3904))) {
    continue;
   }
   if ((TPREADY < (336)) || (TPREADY > (3940))) {
    continue;
   }
   tpx = (TPREADX - (176)) * 800.0 / ((3904) - (176));
   tpy = (TPREADY - (336)) * 480.0 / ((3940) - (336));
   xprintf("(%d,%d)  : %04X,%04X,%04X\n",tpx,tpy,TPREADX,TPREADY,TPREADZ1);
  }
 }
}


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
 {'T', xtptest},
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
