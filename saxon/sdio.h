#ifndef SDIO_H
#define SDIO_H

#include "murax.h"

#define GPIOA_PIN    (*(volatile uint32_t *)0xF0050048)
#define GPIOA_DIR    (*(volatile uint32_t *)0xF0050044)
#define GPIOA_OUT    (*(volatile uint32_t *)0xF0050040)
#define GPIOA_SPIDAT (*(volatile uint32_t *)0xF005004C)
#define GPIOA_SPICNT (*(volatile uint32_t *)0xF0050050)
#define GPIOA_SPISTA (*(volatile uint32_t *)0xF0050054)

#endif /* of GPIO_H */
