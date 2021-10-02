/*
 console.c
 (Partially support ESC-Secuence)
*/

#include "murax.h"

//__attribute__ ((section (".tvram"))) __attribute__ ((aligned (4*8))) uint32_t textvram[16][128];

void console_clear()
{
	uint32_t x ;
	for (x=0;x<(TEXTHEIGHT*TVRAM_STRIDE);x++) { // !! TVRAM is 4byte step !!
		TVRAM[x] = 0;
	}
	cursorX = cursorY = 0;
}

void console_scroll()
{
	int x,y ;
	for (y=0;y<TEXTHEIGHT-1;y++) {
		for (x=0;x<TEXTWIDTH;x++) {
			CHARV(x,y) = CHARV(x,(y+1));
		}
	}

	y = TEXTHEIGHT-1;
	for (x=0;x<TEXTWIDTH;x++) {
		CHARV(x,y) = 0x00;
	}
}

enum { ESEQ_NONE=0, ESEQ_ESC, ESEQ_ESC_BRACKET, ESEQ_ESC_BRACKET_DIGIT, ESEQ_ESC_O };
int escape_seq = ESEQ_NONE ;
uint32_t escape_digit = 0;


static
void debugout(unsigned char c)
{
	CHARV(cursorX++,cursorY) = c;
	if (cursorX >= TEXTWIDTH) {
		cursorY += 1;
		cursorX = 0;
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
                // up arrow
            } else if (c == 'B') {
                // down arrow
            } else if (c == 'C') {
                // right arrow
            } else if (c == 'D') {
                // left arrow
            	if (escape_digit == 0) {
					cursorX = cursorX - 1;
            	} else {
					if (cursorX > escape_digit) {
						cursorX = cursorX - escape_digit;
					} else {
            			cursorX = 0;
					}
            	}
            } else if (c == 'H') {
                // home
            } else if (c == 'F') {
                // end
            } else if (c == 'K') {
            	// CLEAR TO LINEEND
            	int i;
				for (i=cursorX;i<TEXTWIDTH;i++) {
					CHARV(i,cursorY) = 0x00;
				}                
            } else {
               // DEBUG_printf("(ESC [ %d)", c);
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
			cursorY += 1;
		} else if (c == 13) {
			cursorX = 0;
		} else if (c == 8) {
			if (cursorX) cursorX--;
		} else if (c == 27) {
			escape_digit = 0;
			escape_seq = ESEQ_ESC;
		} else if (c < 0x20) {
			debugouthex2(c);
		} else {
			CHARV(cursorX,cursorY) = c;
			cursorX++ ;
			if (cursorX >= TEXTWIDTH) {
				cursorY += 1;
				cursorX = 0;
			}
		}
		break;
	}

	if (cursorY >= TEXTHEIGHT) {
		console_scroll();
		cursorY-- ;
	}
}

#define PUTS_LIMIT (256)
void console_puts(unsigned char *c)
{
	int i;
	for (i=0;i<PUTS_LIMIT;i++,c++) {
		if (*c == 0x00) return ;
		console_putc(*c) ;		
	}
}