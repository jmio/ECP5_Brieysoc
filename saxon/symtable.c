//
// Symbol Table
//

#include "murax.h"
#include "symtable.h"
#include <string.h>

SYMTABLE *SYMTABLETOP ; // Pointer (not entity)

void symt_init(SYMTABLE *s)
{
	SYMTABLETOP = s;
}

void symt_clear()
{
	int i;
	for (i=0;i<SYMTABLESIZ;i++)
	{
		SYMTABLETOP[i].name[0] = 0x00 ;
	}
	SYMTABLETOP[i].address = 0 ;
}

SYMTABLE* symt_get(char *n)
{
	int i;
	for (i=0;i<SYMTABLESIZ;i++)
	{
		if (SYMTABLETOP[i].name[0] == 0x00) continue ;
		if (strncmp((char *)SYMTABLETOP[i].name,n,SYMNAMELEN) == 0) {
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
		if (l > SYMNAMELEN) l= SYMNAMELEN;
		for (i=0;i<SYMTABLESIZ;i++)
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


