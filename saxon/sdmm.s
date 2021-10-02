	.file	"sdmm.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
	.type	vga_h800_v480_r60, @object
	.size	vga_h800_v480_r60, 32
vga_h800_v480_r60:
	.word	61
	.word	937
	.word	119
	.word	919
	.word	5
	.word	525
	.word	35
	.word	515
	.align	2
	.type	vga_h640_v480_r60, @object
	.size	vga_h640_v480_r60, 32
vga_h640_v480_r60:
	.word	96
	.word	800
	.word	112
	.word	752
	.word	2
	.word	525
	.word	12
	.word	492
	.align	2
	.type	vga_simRes, @object
	.size	vga_simRes, 32
vga_simRes:
	.word	8
	.word	70
	.word	16
	.word	64
	.word	2
	.word	48
	.word	8
	.word	40
	.align	2
	.type	vga_simRes_h160_v120, @object
	.size	vga_simRes_h160_v120, 32
vga_simRes_h160_v120:
	.word	8
	.word	184
	.word	16
	.word	176
	.word	2
	.word	130
	.word	6
	.word	126
	.section	.text.dly_us,"ax",@progbits
	.align	1
	.type	dly_us, @function
dly_us:
.LFB0:
	.file 1 "sdmm.c"
	.loc 1 60 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
.L2:
	.loc 1 62 4 discriminator 1
	li	a5,-268107776
	addi	a5,a5,72
	lw	a5,0(a5)
	.loc 1 81 2 discriminator 1
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	bnez	a5,.L2
	.loc 1 82 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	dly_us, .-dly_us
	.section	.sdata,"aw"
	.type	Stat, @object
	.size	Stat, 1
Stat:
	.byte	1
	.local	CardType
	.comm	CardType,1,1
	.section	.text.xmit_mmc,"ax",@progbits
	.align	1
	.type	xmit_mmc, @function
xmit_mmc:
.LFB1:
	.loc 1 133 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 136 37
	li	a5,-268107776
	addi	a5,a5,64
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,64
	andi	a4,a4,253
	sw	a4,0(a5)
.L8:
	.loc 1 139 6
	lw	a4,-40(s0)
	li	a5,3
	bleu	a4,a5,.L4
	.loc 1 140 11
	lw	a5,-36(s0)
	lbu	a5,3(a5)
	sb	a5,-24(s0)
	.loc 1 141 11
	lw	a5,-36(s0)
	lbu	a5,2(a5)
	sb	a5,-23(s0)
	.loc 1 142 11
	lw	a5,-36(s0)
	lbu	a5,1(a5)
	sb	a5,-22(s0)
	.loc 1 143 17
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	.loc 1 143 11
	sb	a5,-21(s0)
	.loc 1 144 54
	addi	a4,s0,-24
	.loc 1 144 5
	li	a5,-268107776
	addi	a5,a5,76
	.loc 1 144 41
	lw	a4,0(a4)
	.loc 1 144 39
	sw	a4,0(a5)
	.loc 1 145 5
	li	a5,-268107776
	addi	a5,a5,80
	.loc 1 145 39
	li	a4,32
	sw	a4,0(a5)
	.loc 1 146 9
	nop
.L5:
	.loc 1 146 11 discriminator 1
	li	a5,-268107776
	addi	a5,a5,80
	lw	a5,0(a5)
	.loc 1 146 9 discriminator 1
	bnez	a5,.L5
	.loc 1 147 8
	lw	a5,-36(s0)
	addi	a5,a5,4
	sw	a5,-36(s0)
	.loc 1 148 6
	lw	a5,-40(s0)
	addi	a5,a5,-4
	sw	a5,-40(s0)
	j	.L6
.L4:
	.loc 1 150 13
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 150 6
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 151 5
	li	a5,-268107776
	addi	a5,a5,76
	.loc 1 151 39
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 1 152 5
	li	a5,-268107776
	addi	a5,a5,80
	.loc 1 152 39
	li	a4,8
	sw	a4,0(a5)
	.loc 1 153 9
	nop
.L7:
	.loc 1 153 11 discriminator 1
	li	a5,-268107776
	addi	a5,a5,80
	lw	a5,0(a5)
	.loc 1 153 9 discriminator 1
	bnez	a5,.L7
	.loc 1 154 6
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
.L6:
	.loc 1 156 2
	lw	a5,-40(s0)
	bnez	a5,.L8
	.loc 1 157 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	xmit_mmc, .-xmit_mmc
	.section	.text.rcvr_mmc,"ax",@progbits
	.align	1
	.type	rcvr_mmc, @function
rcvr_mmc:
.LFB2:
	.loc 1 170 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 172 3
	li	a5,-268107776
	addi	a5,a5,76
	.loc 1 172 37
	li	a4,255
	sw	a4,0(a5)
.L14:
	.loc 1 175 6
	lw	a4,-40(s0)
	li	a5,3
	bleu	a4,a5,.L10
	.loc 1 176 5
	li	a5,-268107776
	addi	a5,a5,80
	.loc 1 176 39
	li	a4,32
	sw	a4,0(a5)
	.loc 1 177 9
	nop
.L11:
	.loc 1 177 11 discriminator 1
	li	a5,-268107776
	addi	a5,a5,80
	lw	a5,0(a5)
	.loc 1 177 9 discriminator 1
	bnez	a5,.L11
	.loc 1 178 26
	li	a5,-268107776
	addi	a4,a5,76
	.loc 1 178 18
	addi	a5,s0,-20
	.loc 1 178 26
	lw	a4,0(a4)
	.loc 1 178 23
	sw	a4,0(a5)
	.loc 1 179 9
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 179 17
	lbu	a4,-17(s0)
	.loc 1 179 12
	sb	a4,0(a5)
	.loc 1 180 9
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 180 17
	lbu	a4,-18(s0)
	.loc 1 180 12
	sb	a4,0(a5)
	.loc 1 181 9
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 181 17
	lbu	a4,-19(s0)
	.loc 1 181 12
	sb	a4,0(a5)
	.loc 1 182 9
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 182 17
	lbu	a4,-20(s0)
	.loc 1 182 12
	sb	a4,0(a5)
	.loc 1 183 6
	lw	a5,-40(s0)
	addi	a5,a5,-4
	sw	a5,-40(s0)
	j	.L12
.L10:
	.loc 1 185 5
	li	a5,-268107776
	addi	a5,a5,80
	.loc 1 185 39
	li	a4,8
	sw	a4,0(a5)
	.loc 1 186 9
	nop
.L13:
	.loc 1 186 11 discriminator 1
	li	a5,-268107776
	addi	a5,a5,80
	lw	a5,0(a5)
	.loc 1 186 9 discriminator 1
	bnez	a5,.L13
	.loc 1 187 15
	li	a5,-268107776
	addi	a5,a5,76
	lw	a3,0(a5)
	.loc 1 187 9
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 187 12
	andi	a4,a3,0xff
	sb	a4,0(a5)
	.loc 1 188 6
	lw	a5,-40(s0)
	addi	a5,a5,-1
	sw	a5,-40(s0)
.L12:
	.loc 1 190 2
	lw	a5,-40(s0)
	bnez	a5,.L14
	.loc 1 191 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	rcvr_mmc, .-rcvr_mmc
	.section	.text.wait_ready,"ax",@progbits
	.align	1
	.type	wait_ready, @function
wait_ready:
.LFB3:
	.loc 1 201 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 206 11
	li	a5,49152
	addi	a5,a5,848
	sw	a5,-20(s0)
	.loc 1 206 2
	j	.L16
.L19:
	.loc 1 207 3
	addi	a5,s0,-21
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 208 9
	lbu	a4,-21(s0)
	.loc 1 208 6
	li	a5,255
	beq	a4,a5,.L21
	.loc 1 209 3 discriminator 2
	li	a0,10
	call	dly_us
	.loc 1 206 28 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L16:
	.loc 1 206 2 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L19
	j	.L18
.L21:
	.loc 1 208 3
	nop
.L18:
	.loc 1 212 17
	lw	a5,-20(s0)
	snez	a5,a5
	andi	a5,a5,0xff
	.loc 1 213 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	wait_ready, .-wait_ready
	.section	.text.deselect,"ax",@progbits
	.align	1
	.type	deselect, @function
deselect:
.LFB4:
	.loc 1 223 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 226 37
	li	a5,-268107776
	addi	a5,a5,64
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,64
	ori	a4,a4,8
	sw	a4,0(a5)
	.loc 1 227 2
	addi	a5,s0,-17
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 228 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	deselect, .-deselect
	.section	.text.select,"ax",@progbits
	.align	1
	.type	select, @function
select:
.LFB5:
	.loc 1 238 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 241 37
	li	a5,-268107776
	addi	a5,a5,64
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,64
	andi	a4,a4,247
	sw	a4,0(a5)
	.loc 1 242 2
	addi	a5,s0,-17
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 243 6
	call	wait_ready
	mv	a5,a0
	.loc 1 243 5
	beqz	a5,.L24
	.loc 1 243 27 discriminator 1
	li	a5,1
	j	.L26
.L24:
	.loc 1 245 2
	call	deselect
	.loc 1 246 9
	li	a5,0
.L26:
	.loc 1 247 1 discriminator 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	select, .-select
	.section	.text.rcvr_datablock,"ax",@progbits
	.align	1
	.type	rcvr_datablock, @function
rcvr_datablock:
.LFB6:
	.loc 1 260 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 1 265 11
	li	a5,98304
	addi	a5,a5,1696
	sw	a5,-20(s0)
	.loc 1 265 2
	j	.L28
.L31:
	.loc 1 266 3
	addi	a5,s0,-24
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 267 8
	lbu	a4,-24(s0)
	.loc 1 267 6
	li	a5,255
	bne	a4,a5,.L35
	.loc 1 269 3 discriminator 2
	li	a0,1
	call	dly_us
	.loc 1 265 29 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L28:
	.loc 1 265 2 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L31
	j	.L30
.L35:
	.loc 1 267 3
	nop
.L30:
	.loc 1 271 7
	lbu	a4,-24(s0)
	.loc 1 271 5
	li	a5,254
	beq	a4,a5,.L32
	.loc 1 271 27 discriminator 1
	li	a5,0
	j	.L34
.L32:
	.loc 1 273 2
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	rcvr_mmc
	.loc 1 274 2
	addi	a5,s0,-24
	li	a1,2
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 276 9
	li	a5,1
.L34:
	.loc 1 277 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	rcvr_datablock, .-rcvr_datablock
	.section	.text.xmit_datablock,"ax",@progbits
	.align	1
	.type	xmit_datablock, @function
xmit_datablock:
.LFB7:
	.loc 1 290 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	mv	a5,a1
	sb	a5,-37(s0)
	.loc 1 294 7
	call	wait_ready
	mv	a5,a0
	.loc 1 294 5
	bnez	a5,.L37
	.loc 1 294 28 discriminator 1
	li	a5,0
	j	.L40
.L37:
	.loc 1 296 7
	lbu	a5,-37(s0)
	sb	a5,-20(s0)
	.loc 1 297 2
	addi	a5,s0,-20
	li	a1,1
	mv	a0,a5
	call	xmit_mmc
	.loc 1 298 5
	lbu	a4,-37(s0)
	li	a5,253
	beq	a4,a5,.L39
	.loc 1 299 3
	li	a1,512
	lw	a0,-36(s0)
	call	xmit_mmc
	.loc 1 300 3
	addi	a5,s0,-20
	li	a1,2
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 301 3
	addi	a5,s0,-20
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 302 9
	lbu	a5,-20(s0)
	.loc 1 302 13
	andi	a4,a5,31
	.loc 1 302 6
	li	a5,5
	beq	a4,a5,.L39
	.loc 1 303 11
	li	a5,0
	j	.L40
.L39:
	.loc 1 306 9
	li	a5,1
.L40:
	.loc 1 307 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	xmit_datablock, .-xmit_datablock
	.section	.text.send_cmd,"ax",@progbits
	.align	1
	.type	send_cmd, @function
send_cmd:
.LFB8:
	.loc 1 320 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sb	a5,-33(s0)
	.loc 1 324 6
	lb	a5,-33(s0)
	.loc 1 324 5
	bgez	a5,.L42
	.loc 1 325 7
	lbu	a5,-33(s0)
	andi	a5,a5,127
	sb	a5,-33(s0)
	.loc 1 326 7
	li	a1,0
	li	a0,55
	call	send_cmd
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 327 6
	lbu	a4,-17(s0)
	li	a5,1
	bleu	a4,a5,.L42
	.loc 1 327 21 discriminator 1
	lbu	a5,-17(s0)
	j	.L50
.L42:
	.loc 1 331 5
	lbu	a4,-33(s0)
	li	a5,12
	beq	a4,a5,.L44
	.loc 1 332 3
	call	deselect
	.loc 1 333 8
	call	select
	mv	a5,a0
	.loc 1 333 6
	bnez	a5,.L44
	.loc 1 333 25 discriminator 1
	li	a5,255
	j	.L50
.L44:
	.loc 1 337 9
	lbu	a5,-33(s0)
	ori	a5,a5,64
	andi	a5,a5,0xff
	sb	a5,-24(s0)
	.loc 1 338 22
	lw	a5,-40(s0)
	srli	a5,a5,24
	.loc 1 338 11
	andi	a5,a5,0xff
	.loc 1 338 9
	sb	a5,-23(s0)
	.loc 1 339 22
	lw	a5,-40(s0)
	srli	a5,a5,16
	.loc 1 339 11
	andi	a5,a5,0xff
	.loc 1 339 9
	sb	a5,-22(s0)
	.loc 1 340 22
	lw	a5,-40(s0)
	srli	a5,a5,8
	.loc 1 340 11
	andi	a5,a5,0xff
	.loc 1 340 9
	sb	a5,-21(s0)
	.loc 1 341 11
	lw	a5,-40(s0)
	andi	a5,a5,0xff
	.loc 1 341 9
	sb	a5,-20(s0)
	.loc 1 342 4
	li	a5,1
	sb	a5,-17(s0)
	.loc 1 343 5
	lbu	a5,-33(s0)
	bnez	a5,.L45
	.loc 1 343 20 discriminator 1
	li	a5,-107
	sb	a5,-17(s0)
.L45:
	.loc 1 344 5
	lbu	a4,-33(s0)
	li	a5,8
	bne	a4,a5,.L46
	.loc 1 344 20 discriminator 1
	li	a5,-121
	sb	a5,-17(s0)
.L46:
	.loc 1 345 9
	lbu	a5,-17(s0)
	sb	a5,-19(s0)
	.loc 1 346 2
	addi	a5,s0,-24
	li	a1,6
	mv	a0,a5
	call	xmit_mmc
	.loc 1 349 5
	lbu	a4,-33(s0)
	li	a5,12
	bne	a4,a5,.L47
	.loc 1 349 19 discriminator 1
	addi	a5,s0,-18
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
.L47:
	.loc 1 350 4
	li	a5,10
	sb	a5,-17(s0)
.L49:
	.loc 1 352 3 discriminator 2
	addi	a5,s0,-18
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 353 9 discriminator 2
	lbu	a5,-18(s0)
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 353 2 discriminator 2
	bgez	a5,.L48
	.loc 1 353 20 discriminator 1
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	sb	a5,-17(s0)
	lbu	a5,-17(s0)
	bnez	a5,.L49
.L48:
	.loc 1 355 9
	lbu	a5,-18(s0)
.L50:
	.loc 1 356 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE8:
	.size	send_cmd, .-send_cmd
	.section	.text.disk_status,"ax",@progbits
	.align	1
	.globl	disk_status
	.type	disk_status, @function
disk_status:
.LFB9:
	.loc 1 374 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 375 5
	lbu	a5,-17(s0)
	beqz	a5,.L52
	.loc 1 375 18 discriminator 1
	li	a5,1
	j	.L53
.L52:
	.loc 1 377 9
	lui	a5,%hi(Stat)
	lbu	a5,%lo(Stat)(a5)
.L53:
	.loc 1 378 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	disk_status, .-disk_status
	.section	.text.disk_initialize,"ax",@progbits
	.align	1
	.globl	disk_initialize
	.type	disk_initialize, @function
disk_initialize:
.LFB10:
	.loc 1 389 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-33(s0)
	.loc 1 395 5
	lbu	a5,-33(s0)
	beqz	a5,.L55
	.loc 1 395 18 discriminator 1
	li	a5,3
	j	.L75
.L55:
	.loc 1 397 2
	li	a5,8192
	addi	a0,a5,1808
	call	dly_us
	.loc 1 398 37
	li	a5,-268107776
	addi	a5,a5,68
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,68
	ori	a4,a4,8
	sw	a4,0(a5)
	.loc 1 398 81
	li	a5,-268107776
	addi	a5,a5,64
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,64
	ori	a4,a4,8
	sw	a4,0(a5)
	.loc 1 399 37
	li	a5,-268107776
	addi	a5,a5,68
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,68
	ori	a4,a4,4
	sw	a4,0(a5)
	.loc 1 399 81
	li	a5,-268107776
	addi	a5,a5,64
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,64
	andi	a4,a4,251
	sw	a4,0(a5)
	.loc 1 400 37
	li	a5,-268107776
	addi	a5,a5,68
	lw	a4,0(a5)
	li	a5,-268107776
	addi	a5,a5,68
	ori	a4,a4,2
	sw	a4,0(a5)
	.loc 1 403 9
	li	a5,10
	sb	a5,-17(s0)
	.loc 1 403 2
	j	.L57
.L58:
	.loc 1 403 23 discriminator 3
	addi	a5,s0,-32
	li	a1,1
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 403 19 discriminator 3
	lbu	a5,-17(s0)
	addi	a5,a5,-1
	sb	a5,-17(s0)
.L57:
	.loc 1 403 2 discriminator 1
	lbu	a5,-17(s0)
	bnez	a5,.L58
	.loc 1 405 5
	sb	zero,-18(s0)
	.loc 1 406 6
	li	a1,0
	li	a0,0
	call	send_cmd
	mv	a5,a0
	mv	a4,a5
	.loc 1 406 5
	li	a5,1
	bne	a4,a5,.L59
	.loc 1 407 7
	li	a1,426
	li	a0,8
	call	send_cmd
	mv	a5,a0
	mv	a4,a5
	.loc 1 407 6
	li	a5,1
	bne	a4,a5,.L60
	.loc 1 408 4
	addi	a5,s0,-32
	li	a1,4
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 409 11
	lbu	a4,-30(s0)
	.loc 1 409 7
	li	a5,1
	bne	a4,a5,.L59
	.loc 1 409 29 discriminator 1
	lbu	a4,-29(s0)
	.loc 1 409 23 discriminator 1
	li	a5,170
	bne	a4,a5,.L59
	.loc 1 410 14
	li	a5,1000
	sw	a5,-24(s0)
	.loc 1 410 5
	j	.L62
.L65:
	.loc 1 411 10
	li	a1,1073741824
	li	a0,169
	call	send_cmd
	mv	a5,a0
	.loc 1 411 9
	beqz	a5,.L76
	.loc 1 412 6 discriminator 2
	li	a0,1000
	call	dly_us
	.loc 1 410 30 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L62:
	.loc 1 410 5 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L65
	j	.L64
.L76:
	.loc 1 411 6
	nop
.L64:
	.loc 1 414 8
	lw	a5,-24(s0)
	beqz	a5,.L59
	.loc 1 414 16 discriminator 1
	li	a1,0
	li	a0,58
	call	send_cmd
	mv	a5,a0
	.loc 1 414 13 discriminator 1
	bnez	a5,.L59
	.loc 1 415 6
	addi	a5,s0,-32
	li	a1,4
	mv	a0,a5
	call	rcvr_mmc
	.loc 1 416 15
	lbu	a5,-32(s0)
	.loc 1 416 19
	andi	a5,a5,64
	.loc 1 416 9
	beqz	a5,.L66
	.loc 1 416 9 is_stmt 0 discriminator 1
	li	a5,12
	j	.L67
.L66:
	.loc 1 416 9 discriminator 2
	li	a5,4
.L67:
	.loc 1 416 9 discriminator 4
	sb	a5,-18(s0)
	j	.L59
.L60:
	.loc 1 420 8 is_stmt 1
	li	a1,0
	li	a0,169
	call	send_cmd
	mv	a5,a0
	mv	a4,a5
	.loc 1 420 7
	li	a5,1
	bgtu	a4,a5,.L68
	.loc 1 421 8
	li	a5,2
	sb	a5,-18(s0)
	.loc 1 421 20
	li	a5,-87
	sb	a5,-19(s0)
	j	.L69
.L68:
	.loc 1 423 8
	li	a5,1
	sb	a5,-18(s0)
	.loc 1 423 20
	li	a5,1
	sb	a5,-19(s0)
.L69:
	.loc 1 425 13
	li	a5,1000
	sw	a5,-24(s0)
	.loc 1 425 4
	j	.L70
.L73:
	.loc 1 426 9
	lbu	a5,-19(s0)
	li	a1,0
	mv	a0,a5
	call	send_cmd
	mv	a5,a0
	.loc 1 426 8
	beqz	a5,.L77
	.loc 1 427 5 discriminator 2
	li	a0,1000
	call	dly_us
	.loc 1 425 29 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	sw	a5,-24(s0)
.L70:
	.loc 1 425 4 discriminator 1
	lw	a5,-24(s0)
	bnez	a5,.L73
	j	.L72
.L77:
	.loc 1 426 5
	nop
.L72:
	.loc 1 429 7
	lw	a5,-24(s0)
	beqz	a5,.L74
	.loc 1 429 16 discriminator 1
	li	a1,512
	li	a0,16
	call	send_cmd
	mv	a5,a0
	.loc 1 429 13 discriminator 1
	beqz	a5,.L59
.L74:
	.loc 1 430 8
	sb	zero,-18(s0)
.L59:
	.loc 1 433 11
	lui	a5,%hi(CardType)
	lbu	a4,-18(s0)
	sb	a4,%lo(CardType)(a5)
	.loc 1 434 13
	lbu	a5,-18(s0)
	seqz	a5,a5
	andi	a5,a5,0xff
	.loc 1 434 4
	sb	a5,-25(s0)
	.loc 1 435 7
	lui	a5,%hi(Stat)
	lbu	a4,-25(s0)
	sb	a4,%lo(Stat)(a5)
	.loc 1 437 2
	call	deselect
	.loc 1 439 9
	lbu	a5,-25(s0)
.L75:
	.loc 1 440 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE10:
	.size	disk_initialize, .-disk_initialize
	.section	.text.disk_read,"ax",@progbits
	.align	1
	.globl	disk_read
	.type	disk_read, @function
disk_read:
.LFB11:
	.loc 1 454 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	.loc 1 456 8
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 459 6
	lbu	a5,-33(s0)
	mv	a0,a5
	call	disk_status
	mv	a5,a0
	.loc 1 459 23
	andi	a5,a5,1
	.loc 1 459 5
	beqz	a5,.L79
	.loc 1 459 38 discriminator 1
	li	a5,3
	j	.L80
.L79:
	.loc 1 460 17
	lui	a5,%hi(CardType)
	lbu	a5,%lo(CardType)(a5)
	andi	a5,a5,8
	.loc 1 460 5
	bnez	a5,.L81
	.loc 1 460 31 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,9
	sw	a5,-20(s0)
.L81:
	.loc 1 462 6
	lw	a4,-48(s0)
	li	a5,1
	bleu	a4,a5,.L82
	.loc 1 462 6 is_stmt 0 discriminator 1
	li	a5,18
	j	.L83
.L82:
	.loc 1 462 6 discriminator 2
	li	a5,17
.L83:
	.loc 1 462 6 discriminator 4
	sb	a5,-21(s0)
	.loc 1 463 6 is_stmt 1 discriminator 4
	lbu	a5,-21(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	send_cmd
	mv	a5,a0
	.loc 1 463 5 discriminator 4
	bnez	a5,.L84
.L87:
	.loc 1 465 9
	li	a1,512
	lw	a0,-40(s0)
	call	rcvr_datablock
	mv	a5,a0
	.loc 1 465 7
	beqz	a5,.L88
	.loc 1 466 9
	lw	a5,-40(s0)
	addi	a5,a5,512
	sw	a5,-40(s0)
	.loc 1 467 3
	lw	a5,-48(s0)
	addi	a5,a5,-1
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	bnez	a5,.L87
	j	.L86
.L88:
	.loc 1 465 4
	nop
.L86:
	.loc 1 468 6
	lbu	a4,-21(s0)
	li	a5,18
	bne	a4,a5,.L84
	.loc 1 468 20 discriminator 1
	li	a1,0
	li	a0,12
	call	send_cmd
.L84:
	.loc 1 470 2
	call	deselect
	.loc 1 472 27
	lw	a5,-48(s0)
	snez	a5,a5
	andi	a5,a5,0xff
.L80:
	.loc 1 473 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE11:
	.size	disk_read, .-disk_read
	.section	.text.disk_write,"ax",@progbits
	.align	1
	.globl	disk_write
	.type	disk_write, @function
disk_write:
.LFB12:
	.loc 1 487 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	sb	a5,-33(s0)
	.loc 1 488 8
	lw	a5,-44(s0)
	sw	a5,-20(s0)
	.loc 1 491 6
	lbu	a5,-33(s0)
	mv	a0,a5
	call	disk_status
	mv	a5,a0
	.loc 1 491 23
	andi	a5,a5,1
	.loc 1 491 5
	beqz	a5,.L90
	.loc 1 491 38 discriminator 1
	li	a5,3
	j	.L91
.L90:
	.loc 1 492 17
	lui	a5,%hi(CardType)
	lbu	a5,%lo(CardType)(a5)
	andi	a5,a5,8
	.loc 1 492 5
	bnez	a5,.L92
	.loc 1 492 31 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,9
	sw	a5,-20(s0)
.L92:
	.loc 1 494 5
	lw	a4,-48(s0)
	li	a5,1
	bne	a4,a5,.L93
	.loc 1 495 8
	lw	a1,-20(s0)
	li	a0,24
	call	send_cmd
	mv	a5,a0
	.loc 1 495 6
	bnez	a5,.L95
	.loc 1 496 7
	li	a1,254
	lw	a0,-40(s0)
	call	xmit_datablock
	mv	a5,a0
	.loc 1 496 4
	beqz	a5,.L95
	.loc 1 497 10
	sw	zero,-48(s0)
	j	.L95
.L93:
	.loc 1 500 16
	lui	a5,%hi(CardType)
	lbu	a5,%lo(CardType)(a5)
	andi	a5,a5,6
	.loc 1 500 6
	beqz	a5,.L96
	.loc 1 500 31 discriminator 1
	lw	a1,-48(s0)
	li	a0,151
	call	send_cmd
.L96:
	.loc 1 501 7
	lw	a1,-20(s0)
	li	a0,25
	call	send_cmd
	mv	a5,a0
	.loc 1 501 6
	bnez	a5,.L95
.L99:
	.loc 1 503 10
	li	a1,252
	lw	a0,-40(s0)
	call	xmit_datablock
	mv	a5,a0
	.loc 1 503 8
	beqz	a5,.L100
	.loc 1 504 10
	lw	a5,-40(s0)
	addi	a5,a5,512
	sw	a5,-40(s0)
	.loc 1 505 4
	lw	a5,-48(s0)
	addi	a5,a5,-1
	sw	a5,-48(s0)
	lw	a5,-48(s0)
	bnez	a5,.L99
	j	.L98
.L100:
	.loc 1 503 5
	nop
.L98:
	.loc 1 506 9
	li	a1,253
	li	a0,0
	call	xmit_datablock
	mv	a5,a0
	.loc 1 506 7
	bnez	a5,.L95
	.loc 1 507 11
	li	a5,1
	sw	a5,-48(s0)
.L95:
	.loc 1 510 2
	call	deselect
	.loc 1 512 27
	lw	a5,-48(s0)
	snez	a5,a5
	andi	a5,a5,0xff
.L91:
	.loc 1 513 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE12:
	.size	disk_write, .-disk_write
	.section	.text.disk_ioctl,"ax",@progbits
	.align	1
	.globl	disk_ioctl
	.type	disk_ioctl, @function
disk_ioctl:
.LFB13:
	.loc 1 525 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	mv	a5,a0
	mv	a4,a1
	sw	a2,-56(s0)
	sb	a5,-49(s0)
	mv	a5,a4
	sb	a5,-50(s0)
	.loc 1 531 6
	lbu	a5,-49(s0)
	mv	a0,a5
	call	disk_status
	mv	a5,a0
	.loc 1 531 23
	andi	a5,a5,1
	.loc 1 531 5
	beqz	a5,.L102
	.loc 1 531 38 discriminator 1
	li	a5,3
	j	.L112
.L102:
	.loc 1 533 6
	li	a5,1
	sw	a5,-20(s0)
	.loc 1 534 2
	lbu	a5,-50(s0)
	li	a4,1
	beq	a5,a4,.L104
	li	a4,3
	beq	a5,a4,.L105
	bnez	a5,.L106
	.loc 1 536 8
	call	select
	mv	a5,a0
	.loc 1 536 7
	beqz	a5,.L113
	.loc 1 536 22 discriminator 1
	sw	zero,-20(s0)
	.loc 1 537 4 discriminator 1
	j	.L113
.L104:
	.loc 1 540 9
	li	a1,0
	li	a0,9
	call	send_cmd
	mv	a5,a0
	.loc 1 540 7
	bnez	a5,.L114
	.loc 1 540 35 discriminator 1
	addi	a5,s0,-44
	li	a1,16
	mv	a0,a5
	call	rcvr_datablock
	mv	a5,a0
	.loc 1 540 32 discriminator 1
	beqz	a5,.L114
	.loc 1 541 13
	lbu	a5,-44(s0)
	.loc 1 541 23
	srli	a5,a5,6
	andi	a4,a5,0xff
	.loc 1 541 8
	li	a5,1
	bne	a4,a5,.L110
	.loc 1 542 14
	lbu	a5,-35(s0)
	mv	a4,a5
	.loc 1 542 30
	lbu	a5,-36(s0)
	.loc 1 542 34
	slli	a5,a5,8
	.loc 1 542 18
	add	a5,a4,a5
	mv	a3,a5
	.loc 1 542 54
	lbu	a5,-37(s0)
	.loc 1 542 64
	slli	a4,a5,16
	li	a5,4128768
	and	a5,a4,a5
	.loc 1 542 40
	add	a5,a3,a5
	.loc 1 542 9
	addi	a5,a5,1
	sw	a5,-24(s0)
	.loc 1 543 25
	lw	a5,-24(s0)
	slli	a4,a5,10
	.loc 1 543 20
	lw	a5,-56(s0)
	sw	a4,0(a5)
	j	.L111
.L110:
	.loc 1 545 14
	lbu	a5,-39(s0)
	.loc 1 545 18
	andi	a5,a5,15
	andi	a4,a5,0xff
	.loc 1 545 31
	lbu	a5,-34(s0)
	.loc 1 545 43
	srli	a5,a5,7
	andi	a5,a5,0xff
	.loc 1 545 24
	add	a5,a4,a5
	andi	a4,a5,0xff
	.loc 1 545 56
	lbu	a5,-35(s0)
	.loc 1 545 65
	slli	a5,a5,1
	andi	a5,a5,0xff
	andi	a5,a5,6
	andi	a5,a5,0xff
	.loc 1 545 49
	add	a5,a4,a5
	andi	a5,a5,0xff
	.loc 1 545 8
	addi	a5,a5,2
	sb	a5,-25(s0)
	.loc 1 546 15
	lbu	a5,-36(s0)
	.loc 1 546 19
	srli	a5,a5,6
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 546 37
	lbu	a5,-37(s0)
	.loc 1 546 41
	slli	a5,a5,2
	.loc 1 546 25
	add	a4,a4,a5
	.loc 1 546 60
	lbu	a5,-38(s0)
	.loc 1 546 69
	slli	a3,a5,10
	li	a5,4096
	addi	a5,a5,-1024
	and	a5,a3,a5
	.loc 1 546 47
	add	a5,a4,a5
	.loc 1 546 76
	addi	a5,a5,1
	.loc 1 546 9
	sw	a5,-24(s0)
	.loc 1 547 31
	lbu	a5,-25(s0)
	addi	a5,a5,-9
	.loc 1 547 25
	lw	a4,-24(s0)
	sll	a4,a4,a5
	.loc 1 547 20
	lw	a5,-56(s0)
	sw	a4,0(a5)
.L111:
	.loc 1 549 9
	sw	zero,-20(s0)
	.loc 1 551 4
	j	.L114
.L105:
	.loc 1 554 18
	lw	a5,-56(s0)
	li	a4,128
	sw	a4,0(a5)
	.loc 1 555 8
	sw	zero,-20(s0)
	.loc 1 556 4
	j	.L108
.L106:
	.loc 1 559 8
	li	a5,4
	sw	a5,-20(s0)
	j	.L108
.L113:
	.loc 1 537 4
	nop
	j	.L108
.L114:
	.loc 1 551 4
	nop
.L108:
	.loc 1 562 2
	call	deselect
	.loc 1 564 9
	lw	a5,-20(s0)
.L112:
	.loc 1 565 1 discriminator 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE13:
	.size	disk_ioctl, .-disk_ioctl
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "ff.h"
	.file 5 "diskio.h"
	.file 6 "murax.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6d9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x46
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x2c
	.byte	0x6
	.4byte	0xac
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2f
	.byte	0x12
	.4byte	0x83
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x12
	.4byte	0x8f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7d
	.byte	0xf
	.4byte	0xc9
	.byte	0x7
	.byte	0x4
	.4byte	0xac
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xe
	.byte	0xe
	.4byte	0xac
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x11
	.byte	0xe
	.4byte	0x127
	.byte	0x9
	.4byte	.LASF20
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0x9
	.4byte	.LASF23
	.byte	0x3
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x17
	.byte	0x3
	.4byte	0xfa
	.byte	0xa
	.byte	0x20
	.byte	0x6
	.byte	0x52
	.byte	0x9
	.4byte	0x1a5
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x53
	.byte	0xb
	.4byte	0x8f
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x53
	.byte	0x17
	.4byte	0x8f
	.byte	0x4
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x54
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x54
	.byte	0x17
	.4byte	0x8f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x56
	.byte	0xb
	.4byte	0x8f
	.byte	0x10
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x56
	.byte	0x17
	.4byte	0x8f
	.byte	0x14
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x57
	.byte	0xb
	.4byte	0x8f
	.byte	0x18
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x57
	.byte	0x17
	.4byte	0x8f
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x58
	.byte	0x2
	.4byte	0x133
	.byte	0x6
	.4byte	0x1a5
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x5a
	.byte	0x19
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	vga_h800_v480_r60
	.byte	0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x65
	.byte	0x19
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	vga_h640_v480_r60
	.byte	0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x70
	.byte	0x19
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x7b
	.byte	0x19
	.4byte	0x1b1
	.byte	0x5
	.byte	0x3
	.4byte	vga_simRes_h160_v120
	.byte	0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0xbc
	.byte	0x1a
	.4byte	0x9b
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0x75
	.byte	0x9
	.4byte	0xee
	.byte	0x5
	.byte	0x3
	.4byte	Stat
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	CardType
	.byte	0xe
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x208
	.byte	0x9
	.4byte	0x127
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b7
	.byte	0xf
	.string	"drv"
	.byte	0x1
	.2byte	0x209
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x4f
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x20a
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x20b
	.byte	0x8
	.4byte	0x2b7
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x11
	.string	"res"
	.byte	0x1
	.2byte	0x20e
	.byte	0xa
	.4byte	0x127
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.string	"n"
	.byte	0x1
	.2byte	0x20f
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x11
	.string	"csd"
	.byte	0x1
	.2byte	0x20f
	.byte	0xa
	.4byte	0x2b9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.string	"cs"
	.byte	0x1
	.2byte	0x210
	.byte	0x8
	.4byte	0xc9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x12
	.byte	0x4
	.byte	0x13
	.4byte	0xac
	.4byte	0x2c9
	.byte	0x14
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1e1
	.byte	0x9
	.4byte	0x127
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x335
	.byte	0xf
	.string	"drv"
	.byte	0x1
	.2byte	0x1e2
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1e3
	.byte	0xe
	.4byte	0x335
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1e4
	.byte	0x8
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1e5
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1e8
	.byte	0x8
	.4byte	0xc9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb8
	.byte	0xe
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1c0
	.byte	0x9
	.4byte	0x127
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b7
	.byte	0xf
	.string	"drv"
	.byte	0x1
	.2byte	0x1c1
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1c2
	.byte	0x8
	.4byte	0xe8
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1c3
	.byte	0x8
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1c4
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x11
	.string	"cmd"
	.byte	0x1
	.2byte	0x1c7
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1c8
	.byte	0x8
	.4byte	0xc9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xe
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x182
	.byte	0x9
	.4byte	0xee
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x43e
	.byte	0xf
	.string	"drv"
	.byte	0x1
	.2byte	0x183
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x11
	.string	"n"
	.byte	0x1
	.2byte	0x186
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x11
	.string	"ty"
	.byte	0x1
	.2byte	0x186
	.byte	0xa
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x11
	.string	"cmd"
	.byte	0x1
	.2byte	0x186
	.byte	0xe
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6d
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.2byte	0x186
	.byte	0x13
	.4byte	0x43e
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x11
	.string	"tmr"
	.byte	0x1
	.2byte	0x187
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.string	"s"
	.byte	0x1
	.2byte	0x188
	.byte	0xa
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0x13
	.4byte	0xac
	.4byte	0x44e
	.byte	0x14
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x173
	.byte	0x9
	.4byte	0xee
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x47a
	.byte	0xf
	.string	"drv"
	.byte	0x1
	.2byte	0x174
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x17
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x13c
	.byte	0x6
	.4byte	0xac
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e2
	.byte	0xf
	.string	"cmd"
	.byte	0x1
	.2byte	0x13d
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0xf
	.string	"arg"
	.byte	0x1
	.2byte	0x13e
	.byte	0x8
	.4byte	0xc9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x11
	.string	"n"
	.byte	0x1
	.2byte	0x141
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x11
	.string	"d"
	.byte	0x1
	.2byte	0x141
	.byte	0xa
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6e
	.byte	0x11
	.string	"buf"
	.byte	0x1
	.2byte	0x141
	.byte	0xd
	.4byte	0x4e2
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x13
	.4byte	0xac
	.4byte	0x4f2
	.byte	0x14
	.4byte	0x7c
	.byte	0x5
	.byte	0
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x53c
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x11f
	.byte	0xe
	.4byte	0x335
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x10
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x120
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x11
	.string	"d"
	.byte	0x1
	.2byte	0x123
	.byte	0x7
	.4byte	0x53c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x13
	.4byte	0xac
	.4byte	0x54c
	.byte	0x14
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x17
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x100
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a6
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x101
	.byte	0x8
	.4byte	0xe8
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0xf
	.string	"btr"
	.byte	0x1
	.2byte	0x102
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x11
	.string	"d"
	.byte	0x1
	.2byte	0x105
	.byte	0x7
	.4byte	0x53c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x11
	.string	"tmr"
	.byte	0x1
	.2byte	0x106
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x18
	.4byte	.LASF55
	.byte	0x1
	.byte	0xed
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ce
	.byte	0x19
	.string	"d"
	.byte	0x1
	.byte	0xef
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xde
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f2
	.byte	0x19
	.string	"d"
	.byte	0x1
	.byte	0xe0
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc8
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x629
	.byte	0x19
	.string	"d"
	.byte	0x1
	.byte	0xca
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0x19
	.string	"tmr"
	.byte	0x1
	.byte	0xcb
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa6
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x66c
	.byte	0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa7
	.byte	0x8
	.4byte	0xe8
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1d
	.string	"bc"
	.byte	0x1
	.byte	0xa8
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x19
	.string	"tmp"
	.byte	0x1
	.byte	0xab
	.byte	0x7
	.4byte	0x43e
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF59
	.byte	0x1
	.byte	0x81
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x6bc
	.byte	0x1c
	.4byte	.LASF42
	.byte	0x1
	.byte	0x82
	.byte	0xe
	.4byte	0x335
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1d
	.string	"bc"
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x19
	.string	"d"
	.byte	0x1
	.byte	0x86
	.byte	0x7
	.4byte	0xac
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x19
	.string	"tmp"
	.byte	0x1
	.byte	0x87
	.byte	0x7
	.4byte	0x43e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1e
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x1d
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.byte	0x13
	.4byte	0xa0
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"count"
.LASF22:
	.string	"RES_WRPRT"
.LASF51:
	.string	"send_cmd"
.LASF23:
	.string	"RES_NOTRDY"
.LASF54:
	.string	"rcvr_datablock"
.LASF9:
	.string	"long long unsigned int"
.LASF60:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF40:
	.string	"CardType"
.LASF38:
	.string	"vga_simRes_h160_v120"
.LASF47:
	.string	"sect"
.LASF27:
	.string	"hSyncEnd"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"buff"
.LASF36:
	.string	"vga_h640_v480_r60"
.LASF4:
	.string	"long int"
.LASF30:
	.string	"vSyncStart"
.LASF24:
	.string	"RES_PARERR"
.LASF11:
	.string	"uint16_t"
.LASF16:
	.string	"DWORD"
.LASF6:
	.string	"__uint32_t"
.LASF49:
	.string	"disk_initialize"
.LASF14:
	.string	"BYTE"
.LASF10:
	.string	"unsigned int"
.LASF13:
	.string	"UINT"
.LASF7:
	.string	"long unsigned int"
.LASF39:
	.string	"Stat"
.LASF50:
	.string	"disk_status"
.LASF61:
	.string	"sdmm.c"
.LASF3:
	.string	"short unsigned int"
.LASF32:
	.string	"vColorStart"
.LASF56:
	.string	"wait_ready"
.LASF45:
	.string	"sector"
.LASF43:
	.string	"disk_ioctl"
.LASF48:
	.string	"disk_read"
.LASF31:
	.string	"vSyncEnd"
.LASF63:
	.string	"irqCount"
.LASF15:
	.string	"WORD"
.LASF20:
	.string	"RES_OK"
.LASF55:
	.string	"select"
.LASF52:
	.string	"xmit_datablock"
.LASF53:
	.string	"token"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"dly_us"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"hColorEnd"
.LASF57:
	.string	"deselect"
.LASF12:
	.string	"uint32_t"
.LASF26:
	.string	"hSyncStart"
.LASF17:
	.string	"char"
.LASF33:
	.string	"vColorEnd"
.LASF5:
	.string	"__uint16_t"
.LASF19:
	.string	"DSTATUS"
.LASF59:
	.string	"xmit_mmc"
.LASF41:
	.string	"ctrl"
.LASF35:
	.string	"vga_h800_v480_r60"
.LASF44:
	.string	"disk_write"
.LASF34:
	.string	"Vga_Timing"
.LASF62:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF37:
	.string	"vga_simRes"
.LASF58:
	.string	"rcvr_mmc"
.LASF25:
	.string	"DRESULT"
.LASF18:
	.string	"LBA_t"
.LASF21:
	.string	"RES_ERROR"
.LASF28:
	.string	"hColorStart"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
