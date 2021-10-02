#ifndef SYMTABLE_H

#define SYMNAMELEN   (12)
#define SYMTABLESIZ (128)

typedef struct _SYMTABLE
{
	unsigned char name[SYMNAMELEN] ;
	unsigned int  address;
} SYMTABLE ;

extern SYMTABLE *SYMTABLETOP ;

void symt_init(SYMTABLE *s);
void symt_clear();
SYMTABLE* symt_get(char *n);
SYMTABLE* symt_put(char *n,unsigned int a);

#endif /* of SYMTABLE_H */