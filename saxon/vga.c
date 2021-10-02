/*
 * vga.h - vga.c
 *
 *  Created on: Jul 8, 2017
 *      Author: spinalvm
 */
#include "murax.h"

void vga_init()
{
    vga_stop(VGA_BASE);
    VGA_BASE->TIMING = vga_h800_v480_r60;  // vga_simRes   vga_h640_v480_r60 vga_simRes_h160_v120
    VGA_BASE->FRAME_SIZE = VGA_RES_X*VGA_RES_Y*2-1;
    VGA_BASE->FRAME_BASE = (uint32_t)VGA_SDRAMADDR;
    vga_run(VGA_BASE);
}

void vga_clear()
{
	// CLEAR FRAMEBUFFER
	uint32_t *ptr = (uint32_t *)VGA_SDRAMADDR;
	for(uint32_t y = 0;y < VGA_RES_Y;y++){
		for(uint32_t x = 0;x < VGA_RES_X/2;x++){
			*ptr++ = 0;
		}
	}
}


uint32_t vga_isBusy(Vga_Reg *reg){
	return (reg->STATUS & 2) != 0;
}

void vga_run(Vga_Reg *reg){
	reg->STATUS  = 1;
}

void vga_stop(Vga_Reg *reg){
	reg->STATUS  = 0;
	while(vga_isBusy(reg));
}


