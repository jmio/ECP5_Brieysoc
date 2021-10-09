/*
	ROM programming example	-	simple debugger
	from LSIC80 Sample Program
*/

#include <ctype.h>
#include "ff.h"

#include "bsp/bsp.h"
#include "bsp/gpio.h"
#include "bsp/uart.h"

#include "xprintf.h"

extern volatile uint32_t irqCount;

#define	NULL ((void *)0)

char	getcon() {
	int c;
	while ((c = uart_read(BSP_UART_TERMINAL)) < 0) {
	}
	return c;
}

uint32_t	consts() 
{ 
	return (uart_readOccupancy(BSP_UART_TERMINAL));
}

uint32_t	col;
char	line[80], *lp;
BYTE	*datap, *codep;

void	putch(char c)
{
	if (c == '\r')
		col = 0;
	if (c >= ' ')
		col++;
	uart_putc(c);
}

#define	getch()		getcon()

void	putcrlf()
{
	putch('\r');
	putch('\n');
}

void	putback()
{
	putch('\b'); putch(' '); putch('\b');
}

#define	sensebrk() { if (consts()) { getch(); return; }}
#define	error() { putcrlf(); putch('?'); return; }
void _error() { error(); }

void	getline()
{
	char	c, *p;
	int	ct;

	p = lp = line;
	ct = 0;
	for (;;) {
		switch (c = getch()) {
		case '\b':
			if (ct != 0) {
				p--;
				ct--;
				putback();
			}
			break;
		case '\r': case '\n':
			*p = '\0';
			/* putch('\r'); */
			return;
		case '\030':
			p = line;
			for (;  ct != 0;  ct--)
				putback();
			break;
		default:
			if (c >= ' ') {
				*p++ = toupper(c);
				ct++;
				putch(c);
			}
		}
	}
}

int	inhex(char c)
{
	c -= '0';
	if (c <= 9) return (c);
	c -= 'A'-'0'-10;
	if ((c >= 10) && (c <= 15)) return (c);
	return (-1);
}

uint32_t	gethex()
{
	int	c;
	uint32_t	v;

	v = 0;
	for (;  (c = inhex(*lp)) != -1;  lp++)
		v = v * 16 + c;
	return (v);
}



uint32_t	getdata()
{
	if (inhex(*lp) == -1)
		return 0;
	return (gethex());
}
	


uint32_t	ogetdata(uint32_t p)
{
	switch(*lp) {
	case ',':
	case '\0':
		return (p);
	default:
		return (getdata());
	}
}


#define	getaddr()	((BYTE *)getdata())
#define	ogetaddr(p)	((BYTE *)ogetdata((uint32_t)p))

#define chkcomma() {if (*lp++ != ',') return; }
#define	chkecomma() { if (*lp != '\0' && *lp++ != ',') return ;}
#define	chkend() { if (*lp != '\0') return; }

void	puthex(uint32_t n)
{
	putch(n < 10 ? n + '0' : n + 'A' - 10);
}

void	puthxb(uint32_t n)
{
	puthex((n >> 4) & 0x0f);
	puthex((n >> 0) & 0x0f);
}

void	puthxw(uint32_t n)
{
	puthxb((n >> 8) & 0xff);
	puthxb((n >> 0) & 0xff);
}

void	puthxww(uint32_t n)
{
	puthxb((n >> 24) & 0xff);
	puthxb((n >> 16) & 0xff);
	puthxb((n >> 8) & 0xff);
	puthxb((n >> 0) & 0xff);
}

char	*comma(char *p)
{
	while (*p && *p++ != ',')
		;
	return (p);
}

void	xdump()
{
	uint8_t	*p, *q;
	uint8_t	*from, *to;
	uint32_t	ct;

	from = ogetaddr(datap);
	if ((((uint32_t)from) >> 28) == 0) {
		from = (BYTE *)((uint32_t)from + 0x80000000);
	}
	chkecomma();
	to = ogetaddr(from + 16*8 - 1);
	if ((((uint32_t)to) >> 28) == 0) {
		to = (BYTE *)((uint32_t)to + 0x80000000);
	}
	chkend();
	for (p = from;  from <= p && p <= to;  p += 16) {
		sensebrk();
		putcrlf();
		puthxww((uint32_t)p);
		putch(':');
		putch(' ');
		q = p;  ct = 16;
		do {
			puthxb(*q++);
			putch(' ');
		} while (--ct != 0);
		putch(' ');
		putch(' ');
		q = p;  ct = 16;
		do {
			putch(0x20 <= *q && *q <= 0x7e ? *q : '.');
			q++;
		} while (--ct != 0);
	}
	datap = p;
}	

void	xsubst()
{
	uint8_t	*p;

	p = ogetaddr(datap);
	if ((((uint32_t)p) >> 28) == 0) {
		p = (uint8_t *)((uint32_t)p + 0x80000000);
	}

	chkend();

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
			chkend();
		}
	}
}


void	xfill()
{
	uint8_t	*from, *to, dat;
	uint32_t ct;

	from = getaddr();
	chkcomma();
	to = getaddr();
	chkcomma();
	dat = getdata();
	chkend();

	for (ct = to - from + 1;  ct != 0;  --ct)
		*from++ = dat;
}

uint8_t	Sum;
uint8_t	hx1()
{
	uint8_t	x;
	if ((x = inhex(getch())) >= 16)
		return 0;
	return (x);
}

uint8_t	hxbyte()
{
	uint8_t	x;
	x = hx1();
	x = x * 16 + hx1();
	Sum += x;
	return (x);	
}

uint32_t	hxword()
{
	BYTE	x;
	x = hxbyte();
	return (((uint32_t)x << 8) | hxbyte());
}

uint32_t STARTADDR = 0x40200000;

void	xread()	/* read an Intel format object into a memory */
{
	uint32_t    dtype;
	uint32_t    seg = 0x80000000;
	uint32_t	len;
	char	*p;

	for (;;) {
		while (getch() != ':')
			;
		Sum = 0;
		len = hxbyte();
		if (len == 0)
			return;
		p = (char *)(hxword());
		dtype = hxbyte();
		if (dtype != 0) {// 00 = DATA
			if (dtype == 0x04) {// 04 = LINEAR SEGMENT
				seg = hxword() << 16; // OFFSET ADDRESS FIELD
				hxbyte(); // checksum
				continue;
			} else if (dtype == 0x05) { //:040000054020000097
				seg = hxword() << 16; // OFFSET UPPER
				seg |= hxword() ; // OFFSET UPPER
				hxbyte(); // checksum
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
			error();
	}
}

uint8_t	hx1lp()
{
	uint8_t	x;

	if ((x = inhex(*lp++)) >= 16)
		x = 0;
	return (x);
}

uint8_t	hxbytelp()
{
	uint8_t	x;

	x = hx1lp();
	x = x * 16 + hx1lp();
	Sum += x;
	return (x);	
}

uint32_t	hxwordlp()
{
	uint8_t	x;

	x = hxbytelp();
	return (((uint32_t)x << 8) | hxbytelp());
}


FATFS FatFs;		/* FatFs work area needed for each volume */
void	xdir()	/* read an SD DIR ENTRY */
{
	FRESULT fr;
	DIR dj;			/* Directory object */
	FILINFO fno;	/* File information */

	putcrlf();
	f_mount(&FatFs, "", 0);		/* Give a work area to the default drive */
	fr = f_findfirst(&dj, &fno, "", "*");  /* Start to search for photo files */
	while (fr == FR_OK && fno.fname[0]) {         /* Repeat while an item is found */
		if (fno.fattrib & AM_DIR) {
			xprintf("<DIR>  %s\n",fno.fname);
		} else {
			xprintf("<FILE> %s\n",fno.fname);
		}
		fr = f_findnext(&dj, &fno);               /* Search for next item */
	}
	f_closedir(&dj);
}

void	xsdread()	/* read an Intel format object into a memory */
{
	uint32_t	len;
	uint32_t    dtype;
	uint32_t    allsum;
	uint32_t    seg = 0x80000000;
	char	*p,*adr;
	FRESULT fr;
	FIL fil;		/* File object needed for each open file */
	UINT rc;
	UINT bytecount;

	putcrlf();
	f_mount(&FatFs, "", 0);		/* Give a work area to the default drive */
	fr = f_open(&fil,&line[1],FA_READ);
	if (fr) {
		xprintf("%s : Not Found \n",&line[1]);
		return;
	}

	bytecount = 0;
	while(1) {
		p=lp=line;
		while(1) {
			f_read(&fil, p, 1, &rc); /* GETC */
			if (rc != 1) goto L_EOF; /* EOF? */
			if (*p == ':') break;    /* COLON */
			if (*p <= ' ') continue; /* IGNORE */
			break;
		}
		//:04000005 40200000 97
		p=lp=line;
		f_read(&fil, p, 2 , &rc); /* GETLEN */
		if (rc != 2) goto L_EOF; /* EOF? */
		Sum = 0;
		len = hxbytelp(); // TOP 2 CHAR
		if ((len == 0) || (len > 40))
			goto L_EOF;
		p=lp=line;
		f_read(&fil, p, 6 + len*2 + 2, &rc); /* GETADDR,TYPE,DATA,CHS */
		if (rc != 6 + len*2 + 2) goto L_EOF; /* EOF? */
		/* PARSE IHEX */
		adr = (char *)(hxwordlp()); // OFFSET ADDRESS FIELD
		dtype = hxbytelp();
		if (dtype != 0) {// 00 = DATA
			if (dtype == 0x04) {// 04 = LINEAR SEGMENT
				seg = hxwordlp() << 16; // OFFSET ADDRESS FIELD
				hxbytelp(); // checksum
				continue;
			} else if (dtype == 0x05) { //:040000054020000097
				seg = hxwordlp() << 16; // OFFSET UPPER
				seg |= hxwordlp() ; // OFFSET UPPER
				hxbytelp(); // checksum
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
		hxbytelp(); // SUM
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


// void	xtptest()
// {
// 	UINT tpx,tpy; // DUMMY
// 	UINT TPREADZ1;
// 	UINT TPREADX;
// 	UINT TPREADY;

// #define TPXS (176)
// #define TPXE (3904)
// #define TPYS (336)
// #define TPYE (3940)
// #define SENSE (120)
// 	xprintf("\nTP TEST\n");
// 	for (;;) {
// 		sensebrk();
// 		TPREADZ1 = NS2009_DATAZ1;
// 		TPREADX  = NS2009_DATAX;
// 		TPREADY  = NS2009_DATAY;
// 		if (TPREADZ1 > SENSE) {
// 			if ((TPREADX < TPXS) || (TPREADX > TPXE)) {
// 				continue;
// 			}			
// 			if ((TPREADY < TPYS) || (TPREADY > TPYE)) {
// 				continue;
// 			}			
// 			tpx      = (TPREADX - TPXS) * 800.0 / (TPXE - TPXS);
// 			tpy      = (TPREADY - TPYS) * 480.0 / (TPYE - TPYS);
// 			xprintf("(%d,%d)  : %04X,%04X,%04X\n",tpx,tpy,TPREADX,TPREADY,TPREADZ1);
// 		}
// 	}
// }


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
	/* JUMP TO USER PROGRAM */
	((void(*)())STARTADDR)();
}

typedef	struct	{
	char	mnemo;
	void	(*func)();
}	TBENTRY;

TBENTRY	comtbl[] = {
	{'D', xdump},
	{'F', xfill},
	{'G', xgo},
	{'R', xread},
	{'S', xsubst},
	{'=', xdir},
	{'!', xsdread},
	{'?', xhelp},
//	{'T', xtptest},
	{'\0', _error}
};





void	_main()
{
	TBENTRY	*p;
	char	c;
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
		for (p = comtbl;(c = p->mnemo) > 0;  p++)
			if (c == line[0])
				break;
		lastirqcount = irqCount;
		(*p->func)();
	}
}
