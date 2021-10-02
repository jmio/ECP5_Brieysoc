# 1 "xprintf.c"
# 1 "C:\\Users\\mio\\Desktop\\github\\ECP5_Brieysoc\\saxon//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "xprintf.c"
# 21 "xprintf.c"
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
# 22 "xprintf.c" 2



# 1 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stdarg.h" 1 3 4
# 40 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stdarg.h" 3 4

# 40 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "c:\\gccriscv\\8.2.0\\lib\\gcc\\riscv-none-embed\\8.2.0\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 26 "xprintf.c" 2

# 26 "xprintf.c"
void (*xfunc_out)(unsigned char);
static char *outptr;





void xputc (char c)
{
 if (1 && c == '\n') xputc('\r');

 if (outptr) {
  *outptr++ = (unsigned char)c;
  return;
 }
 if (xfunc_out) {
  xfunc_out((unsigned char)c);
 }
}


void xfputc (
 void(*func)(unsigned char),
 char chr
)
{
 void (*pf)(unsigned char);


 pf = xfunc_out;
 xfunc_out = func;
 xputc(chr);
 xfunc_out = pf;
}







void xputs (
 const char* str
)
{
 while (*str) {
  xputc(*str++);
 }
}


void xfputs (
 void(*func)(unsigned char),
 const char* str
)
{
 void (*pf)(unsigned char);


 pf = xfunc_out;
 xfunc_out = func;
 while (*str) {
  xputc(*str++);
 }
 xfunc_out = pf;
}
# 114 "xprintf.c"
static
void xvprintf (
 const char* fmt,
 va_list arp
)
{
 unsigned int r, i, j, w, f;
 int n;
 char s[32], c, d, *p;




 long v;
 unsigned long vs;



 for (;;) {
  c = *fmt++;
  if (!c) break;
  if (c != '%') {
   xputc(c); continue;
  }
  f = w = 0;
  c = *fmt++;
  if (c == '0') {
   f = 1; c = *fmt++;
  } else {
   if (c == '-') {
    f = 2; c = *fmt++;
   }
  }
  if (c == '*') {
   n = 
# 148 "xprintf.c" 3 4
      __builtin_va_arg(
# 148 "xprintf.c"
      arp
# 148 "xprintf.c" 3 4
      ,
# 148 "xprintf.c"
      int
# 148 "xprintf.c" 3 4
      )
# 148 "xprintf.c"
                      ;
   if (n < 0) {
    n = 0 - n;
    f = 2;
   }
   w = n; c = *fmt++;
  } else {
   while (c >= '0' && c <= '9') {
    w = w * 10 + c - '0';
    c = *fmt++;
   }
  }
  if (c == 'l' || c == 'L') {
   f |= 4; c = *fmt++;





  }
  if (!c) break;
  d = c;
  if (d >= 'a') d -= 0x20;
  switch (d) {
  case 'S' :
   p = 
# 173 "xprintf.c" 3 4
      __builtin_va_arg(
# 173 "xprintf.c"
      arp
# 173 "xprintf.c" 3 4
      ,
# 173 "xprintf.c"
      char*
# 173 "xprintf.c" 3 4
      )
# 173 "xprintf.c"
                        ;
   for (j = 0; p[j]; j++) ;
   while (!(f & 2) && j++ < w) xputc(' ');
   xputs(p);
   while (j++ < w) xputc(' ');
   continue;
  case 'C' :
   xputc((char)
# 180 "xprintf.c" 3 4
              __builtin_va_arg(
# 180 "xprintf.c"
              arp
# 180 "xprintf.c" 3 4
              ,
# 180 "xprintf.c"
              int
# 180 "xprintf.c" 3 4
              )
# 180 "xprintf.c"
                              ); continue;
  case 'B' :
   r = 2; break;
  case 'O' :
   r = 8; break;
  case 'D' :
  case 'U' :
   r = 10; break;
  case 'X' :
   r = 16; break;
  default:
   xputc(c); continue;
  }
# 206 "xprintf.c"
  if (f & 4) {
   v = 
# 207 "xprintf.c" 3 4
      __builtin_va_arg(
# 207 "xprintf.c"
      arp
# 207 "xprintf.c" 3 4
      ,
# 207 "xprintf.c"
      long
# 207 "xprintf.c" 3 4
      )
# 207 "xprintf.c"
                       ;
  } else {
   v = (d == 'D') ? (long)
# 209 "xprintf.c" 3 4
                         __builtin_va_arg(
# 209 "xprintf.c"
                         arp
# 209 "xprintf.c" 3 4
                         ,
# 209 "xprintf.c"
                         int
# 209 "xprintf.c" 3 4
                         ) 
# 209 "xprintf.c"
                                          : (long)
# 209 "xprintf.c" 3 4
                                                  __builtin_va_arg(
# 209 "xprintf.c"
                                                  arp
# 209 "xprintf.c" 3 4
                                                  ,
# 209 "xprintf.c"
                                                  unsigned int
# 209 "xprintf.c" 3 4
                                                  )
# 209 "xprintf.c"
                                                                           ;
  }

  if (d == 'D' && v < 0) {
   v = 0 - v; f |= 16;
  }
  i = 0; vs = v;
  do {
   d = (char)(vs % r); vs /= r;
   if (d > 9) d += (c == 'x') ? 0x27 : 0x07;
   s[i++] = d + '0';
  } while (vs != 0 && i < sizeof s);
  if (f & 16) s[i++] = '-';
  j = i; d = (f & 1) ? '0' : ' ';
  while (!(f & 2) && j++ < w) xputc(d);
  do xputc(s[--i]); while (i != 0);
  while (j++ < w) xputc(' ');
 }
}


void xprintf (
 const char* fmt,
 ...
)
{
 va_list arp;


 
# 238 "xprintf.c" 3 4
__builtin_va_start(
# 238 "xprintf.c"
arp
# 238 "xprintf.c" 3 4
,
# 238 "xprintf.c"
fmt
# 238 "xprintf.c" 3 4
)
# 238 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 240 "xprintf.c" 3 4
__builtin_va_end(
# 240 "xprintf.c"
arp
# 240 "xprintf.c" 3 4
)
# 240 "xprintf.c"
           ;
}


void xsprintf (
 char* buff,
 const char* fmt,
 ...
)
{
 va_list arp;


 outptr = buff;

 
# 255 "xprintf.c" 3 4
__builtin_va_start(
# 255 "xprintf.c"
arp
# 255 "xprintf.c" 3 4
,
# 255 "xprintf.c"
fmt
# 255 "xprintf.c" 3 4
)
# 255 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 257 "xprintf.c" 3 4
__builtin_va_end(
# 257 "xprintf.c"
arp
# 257 "xprintf.c" 3 4
)
# 257 "xprintf.c"
           ;

 *outptr = 0;
 outptr = 0;
}


void xfprintf (
 void(*func)(unsigned char),
 const char* fmt,
 ...
)
{
 va_list arp;
 void (*pf)(unsigned char);


 pf = xfunc_out;
 xfunc_out = func;

 
# 277 "xprintf.c" 3 4
__builtin_va_start(
# 277 "xprintf.c"
arp
# 277 "xprintf.c" 3 4
,
# 277 "xprintf.c"
fmt
# 277 "xprintf.c" 3 4
)
# 277 "xprintf.c"
                  ;
 xvprintf(fmt, arp);
 
# 279 "xprintf.c" 3 4
__builtin_va_end(
# 279 "xprintf.c"
arp
# 279 "xprintf.c" 3 4
)
# 279 "xprintf.c"
           ;

 xfunc_out = pf;
}







void put_dump (
 const void* buff,
 unsigned long addr,
 int len,
 int width
)
{
 int i;
 const unsigned char *bp;
 const unsigned short *sp;
 const unsigned long *lp;


 xprintf("%08lX ", addr);

 switch (width) {
 case sizeof(char):
  bp = buff;
  for (i = 0; i < len; i++)
   xprintf(" %02X", bp[i]);
  xputc(' ');
  for (i = 0; i < len; i++)
   xputc((unsigned char)((bp[i] >= ' ' && bp[i] <= '~') ? bp[i] : '.'));
  break;
 case sizeof(short):
  sp = buff;
  do
   xprintf(" %04X", *sp++);
  while (--len);
  break;
 case sizeof(long):
  lp = buff;
  do
   xprintf(" %08LX", *lp++);
  while (--len);
  break;
 }

 xputc('\n');
}
