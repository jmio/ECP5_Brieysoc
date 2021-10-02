/* UART Driver */

#include "murax.h"

uint32_t uart_writeAvailability(Uart_Reg *reg){
	return (reg->STATUS >> 16) & 0xFF;
}

uint32_t uart_readOccupancy(Uart_Reg *reg){
	return reg->STATUS >> 24;
}

void uart_write(Uart_Reg *reg, uint32_t data){
	while(uart_writeAvailability(reg) == 0);
	reg->DATA = data;
}

int uart_read(Uart_Reg *reg)
{
	if (uart_readOccupancy(reg)) {
		int i = (reg->DATA) & 0xFF;
		return i;
	} else {
		return -1 ;
	}
}

void uart_applyConfig(Uart_Reg *reg, Uart_Config *config){
	reg->CLOCK_DIVIDER = config->clockDivider;
	reg->FRAME_CONFIG = ((config->dataLength-1) << 0) | (config->parity << 8) | (config->stop << 16);
}

void uart_init()
{
	// UART SETTING
	Uart_Config uartConfig;
	uartConfig.dataLength = 8;
	uartConfig.parity = NONE;
	uartConfig.stop = ONE;
	uartConfig.clockDivider = 50000000/8/115200-1;
	uart_applyConfig(UART,&uartConfig);
}

void uart_pollrx() 
{ 
}

void uart_polltx() 
{ 
}

int uart_getc()
{
	return uart_read(UART);
}

int uart_putc(char c)
{
	while(uart_writeAvailability(UART) == 0);
	UART->DATA = c;
	return 0;
}

/* put strings to send buffer */
char uart_puts(unsigned char *s)
{
  unsigned char t;

  while((t = *s) != 0) {
    if (uart_putc(t) != 0) {
      return -1 ; /* Buffer Full */
    }
    s++ ;
  }
  return 0 ; /* Normal End */
}

void _uart_wait()
{
	while(uart_writeAvailability(UART) == 0);
}

