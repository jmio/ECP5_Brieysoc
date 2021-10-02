# 1 "symtable.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "symtable.c"




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
# 6 "symtable.c" 2
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
# 7 "symtable.c" 2
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 1 3
# 10 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 1 3
# 10 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\newlib.h" 1 3
# 11 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\config.h" 1 3



# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\config.h" 2 3
# 12 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 2 3
# 11 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 1 3
# 13 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\_ansi.h" 1 3
# 14 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 1 3 4
# 149 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4

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
# 15 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 1 3
# 24 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_types.h" 1 3
# 25 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\lock.h" 1 3
# 33 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\lock.h" 3
struct __lock;
typedef struct __lock * _LOCK_T;






extern void __retarget_lock_init(_LOCK_T *lock);

extern void __retarget_lock_init_recursive(_LOCK_T *lock);

extern void __retarget_lock_close(_LOCK_T lock);

extern void __retarget_lock_close_recursive(_LOCK_T lock);

extern void __retarget_lock_acquire(_LOCK_T lock);

extern void __retarget_lock_acquire_recursive(_LOCK_T lock);

extern int __retarget_lock_try_acquire(_LOCK_T lock);

extern int __retarget_lock_try_acquire_recursive(_LOCK_T lock);


extern void __retarget_lock_release(_LOCK_T lock);

extern void __retarget_lock_release_recursive(_LOCK_T lock);
# 26 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 3
typedef unsigned int __size_t;
# 145 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 3
typedef signed int _ssize_t;
# 156 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 1 3 4
# 357 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 38 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 775 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 1 3
# 45 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 3
# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 1 3 4
# 46 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\cdefs.h" 2 3
# 13 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3




# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stddef.h" 1 3 4
# 18 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3


# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\xlocale.h" 1 3
# 9 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\xlocale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3



# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\strings.h" 1 3
# 44 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);
# 76 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 3
char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);






char *strdup (const char *);

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t);

char *_strndup_r (struct _reent *, const char *, size_t);
# 100 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 175 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 3
# 1 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\string.h" 1 3
# 15 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\string.h" 2 3


# 8 "symtable.c" 2


# 9 "symtable.c"
SYMTABLE *SYMTABLETOP ;

void symt_init(SYMTABLE *s)
{
 SYMTABLETOP = s;
}

void symt_clear()
{
 int i;
 for (i=0;i<(128);i++)
 {
  SYMTABLETOP[i].name[0] = 0x00 ;
 }
 SYMTABLETOP[i].address = 0 ;
}

SYMTABLE* symt_get(char *n)
{
 int i;
 for (i=0;i<(128);i++)
 {
  if (SYMTABLETOP[i].name[0] == 0x00) continue ;
  if (strncmp((char *)SYMTABLETOP[i].name,n,(12)) == 0) {
   return &(SYMTABLETOP[i]);
  }
 }
 return (void *)0;
}

SYMTABLE* symt_put(char *n,unsigned int a)
{
 SYMTABLE *s = symt_get(n);
 if (s == 0) {
  int i,l;
  l = strlen(n);
  if (l > (12)) l= (12);
  for (i=0;i<(128);i++)
  {
   if (SYMTABLETOP[i].name[0] == 0x00) {
    strncpy((char *)SYMTABLETOP[i].name,n,l);
    SYMTABLETOP[i].address = a;
    return &(SYMTABLETOP[i]);
   }
  }
 } else {
  s->address = a;
 }
 return (void *)0;
}
