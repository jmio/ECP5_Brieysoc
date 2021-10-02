	.file	"ff.c"
	.option nopic
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.local	FatFs
	.comm	FatFs,4,4
	.local	Fsid
	.comm	Fsid,2,2
	.section	.rodata
	.align	2
	.type	DbcTbl, @object
	.size	DbcTbl, 10
DbcTbl:
	.byte	-127
	.byte	-97
	.byte	-32
	.byte	-4
	.byte	64
	.byte	126
	.byte	-128
	.byte	-4
	.byte	0
	.byte	0
	.section	.text.ld_word,"ax",@progbits
	.align	1
	.type	ld_word, @function
ld_word:
.LFB0:
	.file 1 "ff.c"
	.loc 1 610 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 613 10
	lw	a5,-36(s0)
	addi	a5,a5,1
	lbu	a5,0(a5)
	.loc 1 613 5
	sh	a5,-18(s0)
	.loc 1 614 10
	lhu	a5,-18(s0)
	slli	a5,a5,8
	.loc 1 614 15
	slli	a4,a5,16
	srai	a4,a4,16
	.loc 1 614 20
	lw	a5,-36(s0)
	lbu	a5,0(a5)
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 614 15
	or	a5,a4,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 614 5
	sh	a5,-18(s0)
	.loc 1 615 9
	lhu	a5,-18(s0)
	.loc 1 616 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE0:
	.size	ld_word, .-ld_word
	.section	.text.ld_dword,"ax",@progbits
	.align	1
	.type	ld_dword, @function
ld_dword:
.LFB1:
	.loc 1 619 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	.loc 1 622 10
	lw	a5,-36(s0)
	addi	a5,a5,3
	lbu	a5,0(a5)
	.loc 1 622 5
	sw	a5,-20(s0)
	.loc 1 623 10
	lw	a5,-20(s0)
	slli	a5,a5,8
	.loc 1 623 20
	lw	a4,-36(s0)
	addi	a4,a4,2
	lbu	a4,0(a4)
	.loc 1 623 5
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 624 10
	lw	a5,-20(s0)
	slli	a5,a5,8
	.loc 1 624 20
	lw	a4,-36(s0)
	addi	a4,a4,1
	lbu	a4,0(a4)
	.loc 1 624 5
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 625 10
	lw	a5,-20(s0)
	slli	a5,a5,8
	.loc 1 625 20
	lw	a4,-36(s0)
	lbu	a4,0(a4)
	.loc 1 625 5
	or	a5,a5,a4
	sw	a5,-20(s0)
	.loc 1 626 9
	lw	a5,-20(s0)
	.loc 1 627 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE1:
	.size	ld_dword, .-ld_dword
	.section	.text.mem_cpy,"ax",@progbits
	.align	1
	.type	mem_cpy, @function
mem_cpy:
.LFB2:
	.loc 1 684 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 685 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 686 14
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 688 5
	lw	a5,-44(s0)
	beqz	a5,.L8
.L7:
	.loc 1 690 13 discriminator 1
	lw	a4,-24(s0)
	addi	a5,a4,1
	sw	a5,-24(s0)
	.loc 1 690 6 discriminator 1
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 690 11 discriminator 1
	lbu	a4,0(a4)
	.loc 1 690 9 discriminator 1
	sb	a4,0(a5)
	.loc 1 691 3 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L7
.L8:
	.loc 1 693 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE2:
	.size	mem_cpy, .-mem_cpy
	.section	.text.mem_set,"ax",@progbits
	.align	1
	.type	mem_set, @function
mem_set:
.LFB3:
	.loc 1 698 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 699 8
	lw	a5,-36(s0)
	sw	a5,-20(s0)
.L10:
	.loc 1 702 5 discriminator 1
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 702 10 discriminator 1
	lw	a4,-40(s0)
	andi	a4,a4,0xff
	.loc 1 702 8 discriminator 1
	sb	a4,0(a5)
	.loc 1 703 2 discriminator 1
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	bnez	a5,.L10
	.loc 1 704 1
	nop
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE3:
	.size	mem_set, .-mem_set
	.section	.text.mem_cmp,"ax",@progbits
	.align	1
	.type	mem_cmp, @function
mem_cmp:
.LFB4:
	.loc 1 709 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	sw	a2,-44(s0)
	.loc 1 710 14
	lw	a5,-36(s0)
	sw	a5,-20(s0)
	.loc 1 710 38
	lw	a5,-40(s0)
	sw	a5,-24(s0)
	.loc 1 711 6
	sw	zero,-28(s0)
.L13:
	.loc 1 714 9 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 714 7 discriminator 2
	lbu	a5,0(a5)
	mv	a3,a5
	.loc 1 714 16 discriminator 2
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 714 14 discriminator 2
	lbu	a5,0(a5)
	.loc 1 714 5 discriminator 2
	sub	a5,a3,a5
	sw	a5,-28(s0)
	.loc 1 715 2 discriminator 2
	lw	a5,-44(s0)
	addi	a5,a5,-1
	sw	a5,-44(s0)
	lw	a5,-44(s0)
	beqz	a5,.L12
	.loc 1 715 17 discriminator 1
	lw	a5,-28(s0)
	beqz	a5,.L13
.L12:
	.loc 1 717 9
	lw	a5,-28(s0)
	.loc 1 718 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE4:
	.size	mem_cmp, .-mem_cmp
	.section	.text.chk_chr,"ax",@progbits
	.align	1
	.type	chk_chr, @function
chk_chr:
.LFB5:
	.loc 1 723 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 724 8
	j	.L16
.L18:
	.loc 1 724 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L16:
	.loc 1 724 9 discriminator 1
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 724 8 discriminator 1
	beqz	a5,.L17
	.loc 1 724 17 discriminator 2
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	.loc 1 724 14 discriminator 2
	lw	a5,-24(s0)
	bne	a5,a4,.L18
.L17:
	.loc 1 725 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	.loc 1 726 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE5:
	.size	chk_chr, .-chk_chr
	.section	.text.dbc_1st,"ax",@progbits
	.align	1
	.type	dbc_1st, @function
dbc_1st:
.LFB6:
	.loc 1 731 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 738 17
	li	a5,129
	.loc 1 738 5
	lbu	a4,-17(s0)
	bltu	a4,a5,.L21
	.loc 1 739 18
	li	a5,159
	.loc 1 739 6
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L22
	.loc 1 739 30 discriminator 1
	li	a5,1
	j	.L23
.L22:
	.loc 1 740 18
	li	a5,224
	.loc 1 740 6
	lbu	a4,-17(s0)
	bltu	a4,a5,.L21
	.loc 1 740 36 discriminator 1
	li	a5,252
	.loc 1 740 22 discriminator 1
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L21
	.loc 1 740 48 discriminator 2
	li	a5,1
	j	.L23
.L21:
	.loc 1 745 9
	li	a5,0
.L23:
	.loc 1 746 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE6:
	.size	dbc_1st, .-dbc_1st
	.section	.text.dbc_2nd,"ax",@progbits
	.align	1
	.type	dbc_2nd, @function
dbc_2nd:
.LFB7:
	.loc 1 751 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 1 759 17
	li	a5,64
	.loc 1 759 5
	lbu	a4,-17(s0)
	bltu	a4,a5,.L25
	.loc 1 760 18
	li	a5,126
	.loc 1 760 6
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L26
	.loc 1 760 30 discriminator 1
	li	a5,1
	j	.L27
.L26:
	.loc 1 761 18
	li	a5,128
	.loc 1 761 6
	lbu	a4,-17(s0)
	bltu	a4,a5,.L28
	.loc 1 761 36 discriminator 1
	li	a5,252
	.loc 1 761 22 discriminator 1
	lbu	a4,-17(s0)
	bgtu	a4,a5,.L28
	.loc 1 761 48 discriminator 2
	li	a5,1
	j	.L27
.L28:
	.loc 1 762 18
	li	a4,0
	.loc 1 762 6
	lbu	a5,-17(s0)
	bltu	a5,a4,.L25
	.loc 1 762 36 discriminator 1
	li	a4,0
	.loc 1 762 22 discriminator 1
	lbu	a5,-17(s0)
	bgtu	a5,a4,.L25
	.loc 1 762 48 discriminator 2
	li	a5,1
	j	.L27
.L25:
	.loc 1 767 9
	li	a5,0
.L27:
	.loc 1 768 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE7:
	.size	dbc_2nd, .-dbc_2nd
	.section	.text.move_window,"ax",@progbits
	.align	1
	.type	move_window, @function
move_window:
.LFB8:
	.loc 1 1097 1
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
	.loc 1 1098 10
	sw	zero,-20(s0)
	.loc 1 1101 16
	lw	a5,-36(s0)
	lw	a5,36(a5)
	.loc 1 1101 5
	lw	a4,-40(s0)
	beq	a4,a5,.L30
	.loc 1 1105 6
	lw	a5,-20(s0)
	bnez	a5,.L30
	.loc 1 1106 8
	lw	a5,-36(s0)
	lbu	a4,1(a5)
	.loc 1 1106 30
	lw	a5,-36(s0)
	addi	a5,a5,40
	.loc 1 1106 8
	li	a3,1
	lw	a2,-40(s0)
	mv	a1,a5
	mv	a0,a4
	call	disk_read
	mv	a5,a0
	.loc 1 1106 7
	beqz	a5,.L31
	.loc 1 1107 10
	li	a5,-1
	sw	a5,-40(s0)
	.loc 1 1108 9
	li	a5,1
	sw	a5,-20(s0)
.L31:
	.loc 1 1110 16
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,36(a5)
.L30:
	.loc 1 1113 9
	lw	a5,-20(s0)
	.loc 1 1114 1
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
	.size	move_window, .-move_window
	.globl	__mulsi3
	.section	.text.clst2sect,"ax",@progbits
	.align	1
	.type	clst2sect, @function
clst2sect:
.LFB9:
	.loc 1 1165 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 1166 7
	lw	a5,-24(s0)
	addi	a5,a5,-2
	sw	a5,-24(s0)
	.loc 1 1167 16
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1167 27
	addi	a5,a5,-2
	.loc 1 1167 5
	lw	a4,-24(s0)
	bltu	a4,a5,.L34
	.loc 1 1167 39 discriminator 1
	li	a5,0
	j	.L35
.L34:
	.loc 1 1168 11
	lw	a5,-20(s0)
	lw	s1,32(a5)
	.loc 1 1168 33
	lw	a5,-20(s0)
	lhu	a5,10(a5)
	.loc 1 1168 41
	lw	a1,-24(s0)
	mv	a0,a5
	call	__mulsi3
.LVL0:
	mv	a5,a0
	.loc 1 1168 22
	add	a5,s1,a5
.L35:
	.loc 1 1169 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE9:
	.size	clst2sect, .-clst2sect
	.section	.text.get_fat,"ax",@progbits
	.align	1
	.type	get_fat, @function
get_fat:
.LFB10:
	.loc 1 1182 1
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
	.loc 1 1185 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1188 5
	lw	a4,-40(s0)
	li	a5,1
	bleu	a4,a5,.L37
	.loc 1 1188 28 discriminator 1
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 1188 15 discriminator 1
	lw	a4,-40(s0)
	bltu	a4,a5,.L38
.L37:
	.loc 1 1189 7
	li	a5,1
	sw	a5,-20(s0)
	j	.L39
.L38:
	.loc 1 1192 7
	li	a5,-1
	sw	a5,-20(s0)
	.loc 1 1194 13
	lw	a5,-24(s0)
	lbu	a5,0(a5)
	li	a4,2
	beq	a5,a4,.L40
	li	a4,3
	beq	a5,a4,.L41
	li	a4,1
	bne	a5,a4,.L42
	.loc 1 1196 7
	lw	a5,-40(s0)
	sw	a5,-28(s0)
	.loc 1 1196 30
	lw	a5,-28(s0)
	srli	a5,a5,1
	.loc 1 1196 24
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 1197 26
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 1 1197 42
	lw	a5,-28(s0)
	srli	a5,a5,9
	.loc 1 1197 8
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	mv	a5,a0
	.loc 1 1197 7
	bnez	a5,.L50
	.loc 1 1198 19
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 1198 22
	andi	a5,a5,511
	.loc 1 1198 16
	lw	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,40(a5)
	.loc 1 1198 7
	sw	a5,-32(s0)
	.loc 1 1199 26
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 1 1199 42
	lw	a5,-28(s0)
	srli	a5,a5,9
	.loc 1 1199 8
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	mv	a5,a0
	.loc 1 1199 7
	bnez	a5,.L51
	.loc 1 1200 21
	lw	a5,-28(s0)
	andi	a5,a5,511
	.loc 1 1200 17
	lw	a4,-24(s0)
	add	a5,a4,a5
	lbu	a5,40(a5)
	.loc 1 1200 36
	slli	a5,a5,8
	mv	a4,a5
	.loc 1 1200 7
	lw	a5,-32(s0)
	or	a5,a5,a4
	sw	a5,-32(s0)
	.loc 1 1201 16
	lw	a5,-40(s0)
	andi	a5,a5,1
	.loc 1 1201 33
	beqz	a5,.L45
	.loc 1 1201 33 is_stmt 0 discriminator 1
	lw	a5,-32(s0)
	srli	a5,a5,4
	j	.L46
.L45:
	.loc 1 1201 33 discriminator 2
	lw	a4,-32(s0)
	li	a5,4096
	addi	a5,a5,-1
	and	a5,a4,a5
.L46:
	.loc 1 1201 8 is_stmt 1 discriminator 4
	sw	a5,-20(s0)
	.loc 1 1202 4 discriminator 4
	j	.L39
.L40:
	.loc 1 1205 26
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 1 1205 44
	lw	a5,-40(s0)
	srli	a5,a5,8
	.loc 1 1205 8
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	mv	a5,a0
	.loc 1 1205 7
	bnez	a5,.L52
	.loc 1 1206 18
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 1 1206 33
	lw	a5,-40(s0)
	slli	a5,a5,1
	.loc 1 1206 37
	andi	a5,a5,510
	.loc 1 1206 10
	add	a5,a4,a5
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 1206 8
	sw	a5,-20(s0)
	.loc 1 1207 4
	j	.L39
.L41:
	.loc 1 1210 26
	lw	a5,-24(s0)
	lw	a4,24(a5)
	.loc 1 1210 44
	lw	a5,-40(s0)
	srli	a5,a5,7
	.loc 1 1210 8
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	mv	a5,a0
	.loc 1 1210 7
	bnez	a5,.L53
	.loc 1 1211 19
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 1 1211 34
	lw	a5,-40(s0)
	slli	a5,a5,2
	.loc 1 1211 38
	andi	a5,a5,508
	.loc 1 1211 10
	add	a5,a4,a5
	mv	a0,a5
	call	ld_dword
	mv	a4,a0
	.loc 1 1211 8
	li	a5,268435456
	addi	a5,a5,-1
	and	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 1212 4
	j	.L39
.L42:
	.loc 1 1240 8
	li	a5,1
	sw	a5,-20(s0)
	j	.L39
.L50:
	.loc 1 1197 4
	nop
	j	.L39
.L51:
	.loc 1 1199 4
	nop
	j	.L39
.L52:
	.loc 1 1205 4
	nop
	j	.L39
.L53:
	.loc 1 1210 4
	nop
.L39:
	.loc 1 1244 9
	lw	a5,-20(s0)
	.loc 1 1245 1
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
	.size	get_fat, .-get_fat
	.section	.text.dir_sdi,"ax",@progbits
	.align	1
	.type	dir_sdi, @function
dir_sdi:
.LFB11:
	.loc 1 1716 1
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
	.loc 1 1718 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 1721 5
	lw	a4,-40(s0)
	li	a5,2097152
	bgeu	a4,a5,.L55
	.loc 1 1721 77 discriminator 1
	lw	a5,-40(s0)
	andi	a5,a5,31
	.loc 1 1721 70 discriminator 1
	beqz	a5,.L56
.L55:
	.loc 1 1722 10
	li	a5,2
	j	.L57
.L56:
	.loc 1 1724 11
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	sw	a4,16(a5)
	.loc 1 1725 7
	lw	a5,-36(s0)
	lw	a5,8(a5)
	sw	a5,-20(s0)
	.loc 1 1726 5
	lw	a5,-20(s0)
	bnez	a5,.L58
	.loc 1 1726 21 discriminator 1
	lw	a5,-24(s0)
	lbu	a4,0(a5)
	.loc 1 1726 16 discriminator 1
	li	a5,2
	bleu	a4,a5,.L58
	.loc 1 1727 8
	lw	a5,-24(s0)
	lw	a5,28(a5)
	sw	a5,-20(s0)
.L58:
	.loc 1 1731 5
	lw	a5,-20(s0)
	bnez	a5,.L59
	.loc 1 1732 11
	lw	a5,-40(s0)
	srli	a5,a5,5
	.loc 1 1732 21
	lw	a4,-24(s0)
	lhu	a4,8(a4)
	.loc 1 1732 6
	bltu	a5,a4,.L60
	.loc 1 1732 41 discriminator 1
	li	a5,2
	j	.L57
.L60:
	.loc 1 1733 16
	lw	a5,-24(s0)
	lw	a4,28(a5)
	.loc 1 1733 12
	lw	a5,-36(s0)
	sw	a4,24(a5)
	j	.L61
.L59:
	.loc 1 1736 18
	lw	a5,-24(s0)
	lhu	a5,10(a5)
	.loc 1 1736 7
	slli	a5,a5,9
	sw	a5,-28(s0)
	.loc 1 1737 9
	j	.L62
.L66:
	.loc 1 1738 11
	lw	a5,-36(s0)
	lw	a1,-20(s0)
	mv	a0,a5
	call	get_fat
	sw	a0,-20(s0)
	.loc 1 1739 7
	lw	a4,-20(s0)
	li	a5,-1
	bne	a4,a5,.L63
	.loc 1 1739 35 discriminator 1
	li	a5,1
	j	.L57
.L63:
	.loc 1 1740 7
	lw	a4,-20(s0)
	li	a5,1
	bleu	a4,a5,.L64
	.loc 1 1740 30 discriminator 2
	lw	a5,-24(s0)
	lw	a5,12(a5)
	.loc 1 1740 17 discriminator 2
	lw	a4,-20(s0)
	bltu	a4,a5,.L65
.L64:
	.loc 1 1740 49 discriminator 3
	li	a5,2
	j	.L57
.L65:
	.loc 1 1741 8
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-40(s0)
.L62:
	.loc 1 1737 9
	lw	a4,-40(s0)
	lw	a5,-28(s0)
	bgeu	a4,a5,.L66
	.loc 1 1743 14
	lw	a1,-20(s0)
	lw	a0,-24(s0)
	call	clst2sect
	mv	a4,a0
	.loc 1 1743 12
	lw	a5,-36(s0)
	sw	a4,24(a5)
.L61:
	.loc 1 1745 12
	lw	a5,-36(s0)
	lw	a4,-20(s0)
	sw	a4,20(a5)
	.loc 1 1746 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1746 5
	bnez	a5,.L67
	.loc 1 1746 28 discriminator 1
	li	a5,2
	j	.L57
.L67:
	.loc 1 1747 11
	lw	a5,-36(s0)
	lw	a4,24(a5)
	.loc 1 1747 18
	lw	a5,-40(s0)
	srli	a5,a5,9
	.loc 1 1747 11
	add	a4,a4,a5
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 1748 12
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 1 1748 27
	lw	a5,-40(s0)
	andi	a5,a5,511
	.loc 1 1748 20
	add	a4,a4,a5
	.loc 1 1748 10
	lw	a5,-36(s0)
	sw	a4,28(a5)
	.loc 1 1750 9
	li	a5,0
.L57:
	.loc 1 1751 1
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
	.size	dir_sdi, .-dir_sdi
	.section	.text.dir_next,"ax",@progbits
	.align	1
	.type	dir_next, @function
dir_next:
.LFB12:
	.loc 1 1764 1
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
	.loc 1 1766 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-20(s0)
	.loc 1 1769 10
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 1769 6
	addi	a5,a5,32
	sw	a5,-24(s0)
	.loc 1 1770 5
	lw	a4,-24(s0)
	li	a5,2097152
	bltu	a4,a5,.L69
	.loc 1 1770 80 discriminator 1
	lw	a5,-36(s0)
	sw	zero,24(a5)
.L69:
	.loc 1 1771 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1771 5
	bnez	a5,.L70
	.loc 1 1771 28 discriminator 1
	li	a5,4
	j	.L71
.L70:
	.loc 1 1773 10
	lw	a5,-24(s0)
	andi	a5,a5,511
	.loc 1 1773 5
	bnez	a5,.L72
	.loc 1 1774 5
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 1774 11
	addi	a4,a5,1
	lw	a5,-36(s0)
	sw	a4,24(a5)
	.loc 1 1776 9
	lw	a5,-36(s0)
	lw	a5,20(a5)
	.loc 1 1776 6
	bnez	a5,.L73
	.loc 1 1777 12
	lw	a5,-24(s0)
	srli	a5,a5,5
	.loc 1 1777 22
	lw	a4,-20(s0)
	lhu	a4,8(a4)
	.loc 1 1777 7
	bltu	a5,a4,.L72
	.loc 1 1778 14
	lw	a5,-36(s0)
	sw	zero,24(a5)
	.loc 1 1778 26
	li	a5,4
	j	.L71
.L73:
	.loc 1 1782 13
	lw	a5,-24(s0)
	srli	a5,a5,9
	.loc 1 1782 32
	lw	a4,-20(s0)
	lhu	a4,10(a4)
	.loc 1 1782 40
	addi	a4,a4,-1
	.loc 1 1782 27
	and	a5,a5,a4
	.loc 1 1782 7
	bnez	a5,.L72
	.loc 1 1783 12
	lw	a4,-36(s0)
	lw	a5,-36(s0)
	lw	a5,20(a5)
	mv	a1,a5
	mv	a0,a4
	call	get_fat
	sw	a0,-28(s0)
	.loc 1 1784 8
	lw	a4,-28(s0)
	li	a5,1
	bgtu	a4,a5,.L74
	.loc 1 1784 27 discriminator 1
	li	a5,2
	j	.L71
.L74:
	.loc 1 1785 8
	lw	a4,-28(s0)
	li	a5,-1
	bne	a4,a5,.L75
	.loc 1 1785 36 discriminator 1
	li	a5,1
	j	.L71
.L75:
	.loc 1 1786 19
	lw	a5,-20(s0)
	lw	a5,12(a5)
	.loc 1 1786 8
	lw	a4,-28(s0)
	bltu	a4,a5,.L76
	.loc 1 1798 9
	lw	a5,-40(s0)
	bnez	a5,.L77
	.loc 1 1798 29 discriminator 1
	lw	a5,-36(s0)
	sw	zero,24(a5)
.L77:
	.loc 1 1799 15
	lw	a5,-36(s0)
	sw	zero,24(a5)
	.loc 1 1799 27
	li	a5,4
	j	.L71
.L76:
	.loc 1 1802 15
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 1 1803 16
	lw	a1,-28(s0)
	lw	a0,-20(s0)
	call	clst2sect
	mv	a4,a0
	.loc 1 1803 14
	lw	a5,-36(s0)
	sw	a4,24(a5)
.L72:
	.loc 1 1807 11
	lw	a5,-36(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
	.loc 1 1808 12
	lw	a5,-20(s0)
	addi	a4,a5,40
	.loc 1 1808 26
	lw	a5,-24(s0)
	andi	a5,a5,511
	.loc 1 1808 20
	add	a4,a4,a5
	.loc 1 1808 10
	lw	a5,-36(s0)
	sw	a4,28(a5)
	.loc 1 1810 9
	li	a5,0
.L71:
	.loc 1 1811 1
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
	.size	dir_next, .-dir_next
	.section	.text.ld_clust,"ax",@progbits
	.align	1
	.type	ld_clust, @function
ld_clust:
.LFB13:
	.loc 1 1867 1
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
	.loc 1 1870 7
	lw	a5,-40(s0)
	addi	a5,a5,26
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 1870 5
	sw	a5,-20(s0)
	.loc 1 1871 8
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 1871 5
	li	a5,3
	bne	a4,a5,.L79
	.loc 1 1872 16
	lw	a5,-40(s0)
	addi	a5,a5,20
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 1872 34
	slli	a5,a5,16
	.loc 1 1872 6
	lw	a4,-20(s0)
	or	a5,a4,a5
	sw	a5,-20(s0)
.L79:
	.loc 1 1875 9
	lw	a5,-20(s0)
	.loc 1 1876 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE13:
	.size	ld_clust, .-ld_clust
	.section	.text.dir_read,"ax",@progbits
	.align	1
	.type	dir_read, @function
dir_read:
.LFB14:
	.loc 1 2367 1
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
	.loc 1 2368 10
	li	a5,4
	sw	a5,-20(s0)
	.loc 1 2369 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2375 8
	j	.L82
.L87:
	.loc 1 2376 9
	lw	a5,-36(s0)
	lw	a5,24(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	sw	a0,-20(s0)
	.loc 1 2377 6
	lw	a5,-20(s0)
	bnez	a5,.L90
	.loc 1 2378 9
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2378 5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 2379 6
	lbu	a5,-25(s0)
	bnez	a5,.L85
	.loc 1 2380 8
	li	a5,4
	sw	a5,-20(s0)
	.loc 1 2380 4
	j	.L84
.L85:
	.loc 1 2399 28
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2399 33
	addi	a5,a5,11
	lbu	a5,0(a5)
	.loc 1 2399 24
	andi	a5,a5,63
	sb	a5,-26(s0)
	.loc 1 2399 17
	lw	a5,-36(s0)
	lbu	a4,-26(s0)
	sb	a4,6(a5)
	.loc 1 2420 7
	lbu	a4,-25(s0)
	li	a5,229
	beq	a4,a5,.L86
	.loc 1 2420 18 discriminator 1
	lbu	a4,-25(s0)
	li	a5,46
	beq	a4,a5,.L86
	.loc 1 2420 30 discriminator 2
	lbu	a4,-26(s0)
	li	a5,15
	beq	a4,a5,.L86
	.loc 1 2420 61 discriminator 3
	lbu	a5,-26(s0)
	andi	a5,a5,-33
	.loc 1 2420 49 discriminator 3
	addi	a5,a5,-8
	seqz	a5,a5
	andi	a5,a5,0xff
	mv	a4,a5
	.loc 1 2420 46 discriminator 3
	lw	a5,-40(s0)
	beq	a5,a4,.L91
.L86:
	.loc 1 2425 9
	li	a1,0
	lw	a0,-36(s0)
	call	dir_next
	sw	a0,-20(s0)
	.loc 1 2426 6
	lw	a5,-20(s0)
	bnez	a5,.L92
.L82:
	.loc 1 2375 11
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 2375 8
	bnez	a5,.L87
	j	.L84
.L90:
	.loc 1 2377 3
	nop
	j	.L84
.L91:
	.loc 1 2421 5
	nop
	j	.L84
.L92:
	.loc 1 2426 3
	nop
.L84:
	.loc 1 2429 5
	lw	a5,-20(s0)
	beqz	a5,.L88
	.loc 1 2429 29 discriminator 1
	lw	a5,-36(s0)
	sw	zero,24(a5)
.L88:
	.loc 1 2430 9
	lw	a5,-20(s0)
	.loc 1 2431 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE14:
	.size	dir_read, .-dir_read
	.section	.text.dir_find,"ax",@progbits
	.align	1
	.type	dir_find, @function
dir_find:
.LFB15:
	.loc 1 2444 1
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
	.loc 1 2446 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 2452 8
	li	a1,0
	lw	a0,-36(s0)
	call	dir_sdi
	sw	a0,-20(s0)
	.loc 1 2453 5
	lw	a5,-20(s0)
	beqz	a5,.L94
	.loc 1 2453 27 discriminator 1
	lw	a5,-20(s0)
	j	.L95
.L94:
	.loc 1 2479 9
	lw	a5,-36(s0)
	lw	a5,24(a5)
	mv	a1,a5
	lw	a0,-24(s0)
	call	move_window
	sw	a0,-20(s0)
	.loc 1 2480 6
	lw	a5,-20(s0)
	bnez	a5,.L100
	.loc 1 2481 9
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2481 5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 2482 6
	lbu	a5,-25(s0)
	bnez	a5,.L98
	.loc 1 2482 21 discriminator 1
	li	a5,4
	sw	a5,-20(s0)
	.loc 1 2482 3 discriminator 1
	j	.L97
.L98:
	.loc 1 2505 20
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2505 25
	addi	a5,a5,11
	lbu	a5,0(a5)
	.loc 1 2505 30
	andi	a5,a5,63
	andi	a4,a5,0xff
	.loc 1 2505 16
	lw	a5,-36(s0)
	sb	a4,6(a5)
	.loc 1 2506 11
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2506 16
	addi	a5,a5,11
	lbu	a5,0(a5)
	.loc 1 2506 21
	andi	a5,a5,8
	.loc 1 2506 6
	bnez	a5,.L99
	.loc 1 2506 43 discriminator 1
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 2506 52 discriminator 1
	lw	a5,-36(s0)
	addi	a5,a5,32
	.loc 1 2506 33 discriminator 1
	li	a2,11
	mv	a1,a5
	mv	a0,a4
	call	mem_cmp
	mv	a5,a0
	.loc 1 2506 29 discriminator 1
	beqz	a5,.L101
.L99:
	.loc 1 2508 9
	li	a1,0
	lw	a0,-36(s0)
	call	dir_next
	sw	a0,-20(s0)
	.loc 1 2509 2
	lw	a5,-20(s0)
	beqz	a5,.L94
	j	.L97
.L100:
	.loc 1 2480 3
	nop
	j	.L97
.L101:
	.loc 1 2506 3
	nop
.L97:
	.loc 1 2511 9
	lw	a5,-20(s0)
.L95:
	.loc 1 2512 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE15:
	.size	dir_find, .-dir_find
	.section	.text.get_fileinfo,"ax",@progbits
	.align	1
	.type	get_fileinfo, @function
get_fileinfo:
.LFB16:
	.loc 1 2678 1
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
	.loc 1 2689 16
	lw	a5,-40(s0)
	sb	zero,9(a5)
	.loc 1 2690 8
	lw	a5,-36(s0)
	lw	a5,24(a5)
	.loc 1 2690 5
	beqz	a5,.L110
	.loc 1 2754 10
	sw	zero,-24(s0)
	.loc 1 2754 5
	lw	a5,-24(s0)
	sw	a5,-20(s0)
	.loc 1 2755 8
	j	.L105
.L109:
	.loc 1 2756 16
	lw	a5,-36(s0)
	lw	a4,28(a5)
	.loc 1 2756 24
	lw	a5,-20(s0)
	addi	a3,a5,1
	sw	a3,-20(s0)
	.loc 1 2756 21
	add	a5,a4,a5
	.loc 1 2756 5
	lbu	a5,0(a5)
	sb	a5,-25(s0)
	.loc 1 2757 6
	lbu	a4,-25(s0)
	li	a5,32
	bne	a4,a5,.L106
	.loc 1 2757 3 discriminator 1
	j	.L105
.L106:
	.loc 1 2758 6
	lbu	a4,-25(s0)
	li	a5,5
	bne	a4,a5,.L107
	.loc 1 2758 20 discriminator 1
	li	a5,-27
	sb	a5,-25(s0)
.L107:
	.loc 1 2759 6
	lw	a4,-20(s0)
	li	a5,9
	bne	a4,a5,.L108
	.loc 1 2759 29 discriminator 1
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 2759 33 discriminator 1
	lw	a4,-40(s0)
	add	a5,a4,a5
	li	a4,46
	sb	a4,9(a5)
.L108:
	.loc 1 2760 16
	lw	a5,-24(s0)
	addi	a4,a5,1
	sw	a4,-24(s0)
	.loc 1 2760 20
	lw	a4,-40(s0)
	add	a5,a4,a5
	lbu	a4,-25(s0)
	sb	a4,9(a5)
.L105:
	.loc 1 2755 8
	lw	a4,-20(s0)
	li	a5,10
	bleu	a4,a5,.L109
	.loc 1 2762 17
	lw	a4,-40(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	sb	zero,9(a5)
	.loc 1 2765 19
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2765 15
	lbu	a4,11(a5)
	lw	a5,-40(s0)
	sb	a4,8(a5)
	.loc 1 2766 26
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2766 32
	addi	a5,a5,28
	.loc 1 2766 15
	mv	a0,a5
	call	ld_dword
	mv	a4,a0
	.loc 1 2766 13
	lw	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 2767 25
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2767 36
	addi	a5,a5,22
	.loc 1 2767 15
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	mv	a4,a5
	.loc 1 2767 13
	lw	a5,-40(s0)
	sh	a4,6(a5)
	.loc 1 2768 25
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 2768 36
	addi	a5,a5,24
	.loc 1 2768 15
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	mv	a4,a5
	.loc 1 2768 13
	lw	a5,-40(s0)
	sh	a4,4(a5)
	j	.L102
.L110:
	.loc 1 2690 21
	nop
.L102:
	.loc 1 2769 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE16:
	.size	get_fileinfo, .-get_fileinfo
	.section	.text.get_achar,"ax",@progbits
	.align	1
	.type	get_achar, @function
get_achar:
.LFB17:
	.loc 1 2783 1
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
	.loc 1 2793 16
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2793 21
	addi	a3,a5,1
	lw	a4,-36(s0)
	sw	a3,0(a4)
	.loc 1 2793 14
	lbu	a5,0(a5)
	.loc 1 2793 6
	sw	a5,-20(s0)
	.loc 1 2794 5
	lw	a4,-20(s0)
	li	a5,96
	bleu	a4,a5,.L112
	.loc 1 2794 20 discriminator 1
	lw	a4,-20(s0)
	li	a5,122
	bgtu	a4,a5,.L112
	.loc 1 2794 42 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,-32
	sw	a5,-20(s0)
.L112:
	.loc 1 2801 6
	lw	a5,-20(s0)
	andi	a5,a5,0xff
	mv	a0,a5
	call	dbc_1st
	mv	a5,a0
	.loc 1 2801 5
	beqz	a5,.L113
	.loc 1 2802 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2802 9
	lbu	a5,0(a5)
	mv	a0,a5
	call	dbc_2nd
	mv	a5,a0
	.loc 1 2802 59
	beqz	a5,.L114
	.loc 1 2802 36 discriminator 1
	lw	a5,-20(s0)
	slli	a4,a5,8
	.loc 1 2802 51 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 2802 56 discriminator 1
	addi	a2,a5,1
	lw	a3,-36(s0)
	sw	a2,0(a3)
	.loc 1 2802 49 discriminator 1
	lbu	a5,0(a5)
	.loc 1 2802 59 discriminator 1
	or	a5,a4,a5
	j	.L115
.L114:
	.loc 1 2802 59 is_stmt 0 discriminator 2
	li	a5,0
.L115:
	.loc 1 2802 7 is_stmt 1 discriminator 4
	sw	a5,-20(s0)
.L113:
	.loc 1 2807 9
	lw	a5,-20(s0)
	.loc 1 2808 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE17:
	.size	get_achar, .-get_achar
	.section	.text.pattern_matching,"ax",@progbits
	.align	1
	.type	pattern_matching, @function
pattern_matching:
.LFB18:
	.loc 1 2817 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	sw	a2,-60(s0)
	sw	a3,-64(s0)
	.loc 1 2823 8
	j	.L118
.L120:
	.loc 1 2824 8
	addi	a5,s0,-56
	mv	a0,a5
	call	get_achar
	mv	a5,a0
	.loc 1 2824 6
	bnez	a5,.L118
	.loc 1 2824 32 discriminator 1
	li	a5,0
	j	.L134
.L118:
	.loc 1 2823 13
	lw	a5,-60(s0)
	addi	a4,a5,-1
	sw	a4,-60(s0)
	.loc 1 2823 8
	bnez	a5,.L120
	.loc 1 2826 6
	lw	a5,-52(s0)
	lbu	a5,0(a5)
	.loc 1 2826 5
	bnez	a5,.L133
	.loc 1 2826 16 discriminator 1
	lw	a5,-64(s0)
	beqz	a5,.L133
	.loc 1 2826 31 discriminator 2
	li	a5,1
	j	.L134
.L133:
	.loc 1 2829 6
	lw	a5,-52(s0)
	sw	a5,-36(s0)
	.loc 1 2829 16
	lw	a5,-56(s0)
	sw	a5,-40(s0)
.L131:
	.loc 1 2831 8
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 2831 7
	li	a5,63
	beq	a4,a5,.L122
	.loc 1 2831 22 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 2831 19 discriminator 1
	li	a5,42
	bne	a4,a5,.L123
.L122:
	.loc 1 2832 13
	sw	zero,-28(s0)
	.loc 1 2832 8
	lw	a5,-28(s0)
	sw	a5,-24(s0)
.L126:
	.loc 1 2834 13
	lw	a5,-36(s0)
	addi	a4,a5,1
	sw	a4,-36(s0)
	.loc 1 2834 10
	lbu	a4,0(a5)
	.loc 1 2834 9
	li	a5,63
	bne	a4,a5,.L124
	.loc 1 2834 26 discriminator 1
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
	j	.L125
.L124:
	.loc 1 2834 38 discriminator 2
	li	a5,1
	sw	a5,-28(s0)
.L125:
	.loc 1 2835 14
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 2835 5
	li	a5,63
	beq	a4,a5,.L126
	.loc 1 2835 28 discriminator 1
	lw	a5,-36(s0)
	lbu	a4,0(a5)
	.loc 1 2835 25 discriminator 1
	li	a5,42
	beq	a4,a5,.L126
	.loc 1 2836 9
	lw	a5,-36(s0)
	lw	a4,-40(s0)
	lw	a3,-28(s0)
	lw	a2,-24(s0)
	mv	a1,a4
	mv	a0,a5
	call	pattern_matching
	mv	a5,a0
	.loc 1 2836 8
	beqz	a5,.L127
	.loc 1 2836 50 discriminator 1
	li	a5,1
	j	.L134
.L127:
	.loc 1 2837 10
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 2837 8
	sw	a5,-20(s0)
	.loc 1 2837 5
	j	.L128
.L123:
	.loc 1 2839 9
	addi	a5,s0,-36
	mv	a0,a5
	call	get_achar
	sw	a0,-32(s0)
	.loc 1 2840 9
	addi	a5,s0,-40
	mv	a0,a5
	call	get_achar
	sw	a0,-20(s0)
	.loc 1 2841 7
	lw	a4,-32(s0)
	lw	a5,-20(s0)
	bne	a4,a5,.L135
	.loc 1 2842 7
	lw	a5,-32(s0)
	bnez	a5,.L131
	.loc 1 2842 24 discriminator 1
	li	a5,1
	j	.L134
.L135:
	.loc 1 2841 4
	nop
.L128:
	.loc 1 2844 3
	addi	a5,s0,-56
	mv	a0,a5
	call	get_achar
	.loc 1 2845 2
	lw	a5,-64(s0)
	beqz	a5,.L132
	.loc 1 2845 15 discriminator 1
	lw	a5,-20(s0)
	bnez	a5,.L133
.L132:
	.loc 1 2847 9
	li	a5,0
.L134:
	.loc 1 2848 1 discriminator 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE18:
	.size	pattern_matching, .-pattern_matching
	.section	.rodata
	.align	2
.LC0:
	.string	"\"*+,:;<=>?[]|\177"
	.section	.text.create_name,"ax",@progbits
	.align	1
	.type	create_name, @function
create_name:
.LFB19:
	.loc 1 2862 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 2994 4
	lw	a5,-56(s0)
	lw	a5,0(a5)
	sw	a5,-36(s0)
	.loc 1 2994 17
	lw	a5,-52(s0)
	addi	a5,a5,32
	sw	a5,-40(s0)
	.loc 1 2995 2
	li	a2,11
	li	a1,32
	lw	a0,-40(s0)
	call	mem_set
	.loc 1 2996 9
	sw	zero,-32(s0)
	.loc 1 2996 5
	lw	a5,-32(s0)
	sw	a5,-28(s0)
	.loc 1 2996 17
	li	a5,8
	sw	a5,-24(s0)
.L154:
	.loc 1 3011 17
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 3011 14
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 3011 5
	lbu	a5,0(a5)
	sb	a5,-17(s0)
	.loc 1 3012 6
	lbu	a4,-17(s0)
	li	a5,32
	bleu	a4,a5,.L159
	.loc 1 3013 6
	lbu	a4,-17(s0)
	li	a5,47
	beq	a4,a5,.L141
	.loc 1 3013 16 discriminator 1
	lbu	a4,-17(s0)
	li	a5,92
	bne	a4,a5,.L140
	.loc 1 3014 10
	j	.L141
.L142:
	.loc 1 3014 44 discriminator 4
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L141:
	.loc 1 3014 12 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 3014 10 discriminator 1
	li	a5,47
	beq	a4,a5,.L142
	.loc 1 3014 28 discriminator 3
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	lbu	a4,0(a5)
	.loc 1 3014 24 discriminator 3
	li	a5,92
	beq	a4,a5,.L142
	.loc 1 3015 4
	j	.L138
.L140:
	.loc 1 3017 6
	lbu	a4,-17(s0)
	li	a5,46
	beq	a4,a5,.L143
	.loc 1 3017 16 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-24(s0)
	bltu	a4,a5,.L144
.L143:
	.loc 1 3018 7
	lw	a4,-24(s0)
	li	a5,11
	beq	a4,a5,.L145
	.loc 1 3018 17 discriminator 2
	lbu	a4,-17(s0)
	li	a5,46
	beq	a4,a5,.L146
.L145:
	.loc 1 3018 37 discriminator 3
	li	a5,6
	j	.L147
.L146:
	.loc 1 3019 6
	li	a5,8
	sw	a5,-32(s0)
	.loc 1 3019 14
	li	a5,11
	sw	a5,-24(s0)
	.loc 1 3020 4
	j	.L148
.L144:
	.loc 1 3031 7
	lbu	a5,-17(s0)
	mv	a0,a5
	call	dbc_1st
	mv	a5,a0
	.loc 1 3031 6
	beqz	a5,.L149
	.loc 1 3032 18
	lw	a5,-28(s0)
	addi	a4,a5,1
	sw	a4,-28(s0)
	.loc 1 3032 15
	lw	a4,-36(s0)
	add	a5,a4,a5
	.loc 1 3032 6
	lbu	a5,0(a5)
	sb	a5,-41(s0)
	.loc 1 3033 9
	lbu	a5,-41(s0)
	mv	a0,a5
	call	dbc_2nd
	mv	a5,a0
	.loc 1 3033 7
	beqz	a5,.L150
	.loc 1 3033 31 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,-1
	.loc 1 3033 20 discriminator 2
	lw	a4,-32(s0)
	bltu	a4,a5,.L151
.L150:
	.loc 1 3033 43 discriminator 3
	li	a5,6
	j	.L147
.L151:
	.loc 1 3034 9
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 3034 7
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 3034 13
	lbu	a4,-17(s0)
	sb	a4,0(a5)
	.loc 1 3035 9
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 3035 7
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 3035 13
	lbu	a4,-41(s0)
	sb	a4,0(a5)
	j	.L154
.L149:
	.loc 1 3037 8
	lbu	a5,-17(s0)
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	chk_chr
	mv	a5,a0
	.loc 1 3037 7
	beqz	a5,.L152
	.loc 1 3037 50 discriminator 1
	li	a5,6
	j	.L147
.L152:
	.loc 1 3038 7
	lbu	a4,-17(s0)
	li	a5,96
	bleu	a4,a5,.L153
	.loc 1 3038 20 discriminator 1
	lbu	a4,-17(s0)
	li	a5,122
	bgtu	a4,a5,.L153
	.loc 1 3038 38 discriminator 2
	lbu	a5,-17(s0)
	addi	a5,a5,-32
	sb	a5,-17(s0)
.L153:
	.loc 1 3039 9
	lw	a5,-32(s0)
	addi	a4,a5,1
	sw	a4,-32(s0)
	.loc 1 3039 7
	lw	a4,-40(s0)
	add	a5,a4,a5
	.loc 1 3039 13
	lbu	a4,-17(s0)
	sb	a4,0(a5)
.L148:
	.loc 1 3011 5
	j	.L154
.L159:
	.loc 1 3012 3
	nop
.L138:
	.loc 1 3042 12
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a4,a4,a5
	.loc 1 3042 8
	lw	a5,-56(s0)
	sw	a4,0(a5)
	.loc 1 3043 5
	lw	a5,-32(s0)
	bnez	a5,.L155
	.loc 1 3043 21 discriminator 1
	li	a5,6
	j	.L147
.L155:
	.loc 1 3045 9
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 1 3045 5
	li	a5,229
	bne	a4,a5,.L156
	.loc 1 3045 29 discriminator 1
	lw	a5,-40(s0)
	li	a4,5
	sb	a4,0(a5)
.L156:
	.loc 1 3046 10
	lbu	a4,-17(s0)
	li	a5,32
	bgtu	a4,a5,.L157
	.loc 1 3046 10 is_stmt 0 discriminator 1
	li	a5,4
	j	.L158
.L157:
	.loc 1 3046 10 discriminator 2
	li	a5,0
.L158:
	.loc 1 3046 5 is_stmt 1 discriminator 4
	lw	a4,-40(s0)
	addi	a4,a4,11
	.loc 1 3046 10 discriminator 4
	sb	a5,0(a4)
	.loc 1 3048 9 discriminator 4
	li	a5,0
.L147:
	.loc 1 3050 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE19:
	.size	create_name, .-create_name
	.section	.text.follow_path,"ax",@progbits
	.align	1
	.type	follow_path, @function
follow_path:
.LFB20:
	.loc 1 3063 1
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
	.loc 1 3066 9
	lw	a5,-36(s0)
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3075 9
	j	.L161
.L162:
	.loc 1 3075 45 discriminator 4
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L161:
	.loc 1 3075 10 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 1 3075 9 discriminator 1
	li	a5,47
	beq	a4,a5,.L162
	.loc 1 3075 26 discriminator 3
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 1 3075 23 discriminator 3
	li	a5,92
	beq	a4,a5,.L162
	.loc 1 3076 18
	lw	a5,-36(s0)
	sw	zero,8(a5)
	.loc 1 3095 12
	lw	a5,-40(s0)
	lbu	a4,0(a5)
	.loc 1 3095 5
	li	a5,31
	bgtu	a4,a5,.L163
	.loc 1 3096 14
	lw	a5,-36(s0)
	li	a4,-128
	sb	a4,43(a5)
	.loc 1 3097 9
	li	a1,0
	lw	a0,-36(s0)
	call	dir_sdi
	sw	a0,-20(s0)
	j	.L164
.L163:
	.loc 1 3101 10
	addi	a5,s0,-40
	mv	a1,a5
	lw	a0,-36(s0)
	call	create_name
	sw	a0,-20(s0)
	.loc 1 3102 7
	lw	a5,-20(s0)
	bnez	a5,.L171
	.loc 1 3103 10
	lw	a0,-36(s0)
	call	dir_find
	sw	a0,-20(s0)
	.loc 1 3104 7
	lw	a5,-36(s0)
	lbu	a5,43(a5)
	sb	a5,-25(s0)
	.loc 1 3105 7
	lw	a5,-20(s0)
	beqz	a5,.L166
	.loc 1 3106 8
	lw	a4,-20(s0)
	li	a5,4
	bne	a4,a5,.L172
	.loc 1 3112 16
	lbu	a5,-25(s0)
	andi	a5,a5,4
	.loc 1 3112 10
	bnez	a5,.L172
	.loc 1 3112 29 discriminator 1
	li	a5,5
	sw	a5,-20(s0)
	.loc 1 3115 5 discriminator 1
	j	.L172
.L166:
	.loc 1 3117 11
	lbu	a5,-25(s0)
	andi	a5,a5,4
	.loc 1 3117 7
	bnez	a5,.L173
	.loc 1 3119 17
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 1 3119 23
	andi	a5,a5,16
	.loc 1 3119 7
	bnez	a5,.L169
	.loc 1 3120 9
	li	a5,5
	sw	a5,-20(s0)
	.loc 1 3120 5
	j	.L164
.L169:
	.loc 1 3131 35
	lw	a5,-24(s0)
	addi	a4,a5,40
	.loc 1 3131 47
	lw	a5,-36(s0)
	lw	a5,16(a5)
	.loc 1 3131 54
	andi	a5,a5,511
	.loc 1 3131 22
	add	a5,a4,a5
	mv	a1,a5
	lw	a0,-24(s0)
	call	ld_clust
	mv	a4,a0
	.loc 1 3131 20
	lw	a5,-36(s0)
	sw	a4,8(a5)
	.loc 1 3101 8
	j	.L163
.L171:
	.loc 1 3102 4
	nop
	j	.L164
.L172:
	.loc 1 3115 5
	nop
	j	.L164
.L173:
	.loc 1 3117 4
	nop
.L164:
	.loc 1 3136 9
	lw	a5,-20(s0)
	.loc 1 3137 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE20:
	.size	follow_path, .-follow_path
	.section	.text.get_ldnumber,"ax",@progbits
	.align	1
	.type	get_ldnumber, @function
get_ldnumber:
.LFB21:
	.loc 1 3149 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,60(sp)
	.cfi_offset 8, -4
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	.loc 1 3152 9
	li	a5,-1
	sw	a5,-28(s0)
	.loc 1 3158 10
	lw	a5,-52(s0)
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 1 3158 5
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	.loc 1 3159 5
	lw	a5,-32(s0)
	bnez	a5,.L175
	.loc 1 3159 18 discriminator 1
	lw	a5,-28(s0)
	j	.L176
.L175:
	.loc 1 3160 13 discriminator 2
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 1 3160 8 discriminator 2
	lbu	a5,0(a5)
	sb	a5,-33(s0)
	.loc 1 3160 2 discriminator 2
	lbu	a4,-33(s0)
	li	a5,32
	bleu	a4,a5,.L177
	.loc 1 3160 52 discriminator 1
	lbu	a4,-33(s0)
	li	a5,58
	bne	a4,a5,.L175
.L177:
	.loc 1 3162 5
	lbu	a4,-33(s0)
	li	a5,58
	bne	a4,a5,.L178
	.loc 1 3163 5
	li	a5,1
	sw	a5,-24(s0)
	.loc 1 3164 9
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	.loc 1 3164 6
	li	a5,47
	bleu	a4,a5,.L179
	.loc 1 3164 25 discriminator 1
	lw	a5,-32(s0)
	lbu	a4,0(a5)
	.loc 1 3164 21 discriminator 1
	li	a5,57
	bgtu	a4,a5,.L179
	.loc 1 3164 44 discriminator 2
	lw	a5,-32(s0)
	addi	a5,a5,2
	.loc 1 3164 38 discriminator 2
	lw	a4,-20(s0)
	bne	a4,a5,.L179
	.loc 1 3165 13
	lw	a5,-32(s0)
	lbu	a5,0(a5)
	.loc 1 3165 6
	addi	a5,a5,-48
	sw	a5,-24(s0)
.L179:
	.loc 1 3180 6
	lw	a5,-24(s0)
	bgtz	a5,.L180
	.loc 1 3181 8
	lw	a5,-24(s0)
	sw	a5,-28(s0)
	.loc 1 3182 10
	lw	a5,-52(s0)
	lw	a4,-20(s0)
	sw	a4,0(a5)
.L180:
	.loc 1 3184 10
	lw	a5,-28(s0)
	j	.L176
.L178:
	.loc 1 3208 6
	sw	zero,-28(s0)
	.loc 1 3210 9
	lw	a5,-28(s0)
.L176:
	.loc 1 3211 1
	mv	a0,a5
	lw	s0,60(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE21:
	.size	get_ldnumber, .-get_ldnumber
	.section	.rodata
	.align	2
.LC1:
	.string	"FAT"
	.align	2
.LC2:
	.string	"FAT32"
	.section	.text.check_fs,"ax",@progbits
	.align	1
	.type	check_fs, @function
check_fs:
.LFB22:
	.loc 1 3296 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 1 3297 12
	lw	a5,-20(s0)
	sb	zero,3(a5)
	.loc 1 3297 29
	lw	a5,-20(s0)
	li	a4,-1
	sw	a4,36(a5)
	.loc 1 3298 6
	lw	a1,-24(s0)
	lw	a0,-20(s0)
	call	move_window
	mv	a5,a0
	.loc 1 3298 5
	beqz	a5,.L182
	.loc 1 3298 45 discriminator 1
	li	a5,4
	j	.L183
.L182:
	.loc 1 3300 14
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 3300 6
	addi	a5,a5,510
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	mv	a4,a5
	.loc 1 3300 5
	li	a5,45056
	addi	a5,a5,-1451
	beq	a4,a5,.L184
	.loc 1 3300 47 discriminator 1
	li	a5,3
	j	.L183
.L184:
	.loc 1 3304 13
	lw	a5,-20(s0)
	lbu	a4,40(a5)
	.loc 1 3304 5
	li	a5,233
	beq	a4,a5,.L185
	.loc 1 3304 35 discriminator 1
	lw	a5,-20(s0)
	lbu	a4,40(a5)
	.loc 1 3304 25 discriminator 1
	li	a5,235
	beq	a4,a5,.L185
	.loc 1 3304 57 discriminator 2
	lw	a5,-20(s0)
	lbu	a4,40(a5)
	.loc 1 3304 47 discriminator 2
	li	a5,232
	bne	a4,a5,.L186
.L185:
	.loc 1 3305 16
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 3305 8
	addi	a4,a5,54
	li	a2,3
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	mv	a0,a4
	call	mem_cmp
	mv	a5,a0
	.loc 1 3305 6
	bnez	a5,.L187
	.loc 1 3305 48 discriminator 1
	li	a5,0
	j	.L183
.L187:
	.loc 1 3306 16
	lw	a5,-20(s0)
	addi	a5,a5,40
	.loc 1 3306 8
	addi	a4,a5,82
	li	a2,5
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	mv	a0,a4
	call	mem_cmp
	mv	a5,a0
	.loc 1 3306 6
	bnez	a5,.L186
	.loc 1 3306 50 discriminator 1
	li	a5,0
	j	.L183
.L186:
	.loc 1 3308 9
	li	a5,2
.L183:
	.loc 1 3309 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE22:
	.size	check_fs, .-check_fs
	.section	.text.find_volume,"ax",@progbits
	.align	1
	.type	find_volume, @function
find_volume:
.LFB23:
	.loc 1 3319 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 3324 8
	li	a1,0
	lw	a0,-52(s0)
	call	check_fs
	sw	a0,-24(s0)
	.loc 1 3325 5
	lw	a4,-24(s0)
	li	a5,2
	beq	a4,a5,.L189
	.loc 1 3325 15 discriminator 1
	lw	a4,-24(s0)
	li	a5,2
	bgtu	a4,a5,.L190
	.loc 1 3325 28 discriminator 3
	lw	a5,-56(s0)
	bnez	a5,.L189
.L190:
	.loc 1 3325 50 discriminator 4
	lw	a5,-24(s0)
	j	.L200
.L189:
	.loc 1 3352 9
	sw	zero,-20(s0)
	.loc 1 3352 2
	j	.L192
.L193:
	.loc 1 3353 24 discriminator 3
	lw	a5,-52(s0)
	addi	a4,a5,40
	.loc 1 3353 42 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,4
	.loc 1 3353 47 discriminator 3
	addi	a5,a5,454
	.loc 1 3353 15 discriminator 3
	add	a5,a4,a5
	mv	a0,a5
	call	ld_dword
	mv	a4,a0
	.loc 1 3353 13 discriminator 3
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	sw	a4,-24(a5)
	.loc 1 3352 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L192:
	.loc 1 3352 2 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L193
	.loc 1 3355 22
	lw	a5,-56(s0)
	beqz	a5,.L194
	.loc 1 3355 22 is_stmt 0 discriminator 1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	j	.L195
.L194:
	.loc 1 3355 22 discriminator 2
	li	a5,0
.L195:
	.loc 1 3355 4 is_stmt 1 discriminator 4
	sw	a5,-20(s0)
.L199:
	.loc 1 3357 15
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-24(a5)
	.loc 1 3357 45
	beqz	a5,.L196
	.loc 1 3357 21 discriminator 1
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-24(a5)
	mv	a1,a5
	lw	a0,-52(s0)
	call	check_fs
	mv	a5,a0
	j	.L197
.L196:
	.loc 1 3357 45 discriminator 2
	li	a5,3
.L197:
	.loc 1 3357 7 discriminator 4
	sw	a5,-24(s0)
	.loc 1 3358 2 discriminator 4
	lw	a5,-56(s0)
	bnez	a5,.L198
	.loc 1 3358 21 discriminator 1
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L198
	.loc 1 3358 33 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	lw	a4,-20(s0)
	li	a5,3
	bleu	a4,a5,.L199
.L198:
	.loc 1 3359 9
	lw	a5,-24(s0)
.L200:
	.loc 1 3360 1 discriminator 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE23:
	.size	find_volume, .-find_volume
	.globl	__udivsi3
	.section	.text.mount_volume,"ax",@progbits
	.align	1
	.type	mount_volume, @function
mount_volume:
.LFB24:
	.loc 1 3374 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	mv	a5,a2
	sb	a5,-73(s0)
	.loc 1 3385 7
	lw	a5,-72(s0)
	sw	zero,0(a5)
	.loc 1 3386 8
	lw	a0,-68(s0)
	call	get_ldnumber
	sw	a0,-36(s0)
	.loc 1 3387 5
	lw	a5,-36(s0)
	bgez	a5,.L202
	.loc 1 3387 22 discriminator 1
	li	a5,11
	j	.L203
.L202:
	.loc 1 3390 5
	lui	a5,%hi(FatFs)
	lw	a4,-36(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(FatFs)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-40(s0)
	.loc 1 3391 5
	lw	a5,-40(s0)
	bnez	a5,.L204
	.loc 1 3391 18 discriminator 1
	li	a5,12
	j	.L203
.L204:
	.loc 1 3395 7
	lw	a5,-72(s0)
	lw	a4,-40(s0)
	sw	a4,0(a5)
	.loc 1 3397 7
	lbu	a5,-73(s0)
	andi	a5,a5,-2
	sb	a5,-73(s0)
	.loc 1 3398 8
	lw	a5,-40(s0)
	lbu	a5,0(a5)
	.loc 1 3398 5
	beqz	a5,.L205
	.loc 1 3399 10
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	disk_status
	mv	a5,a0
	sb	a5,-41(s0)
	.loc 1 3400 14
	lbu	a5,-41(s0)
	andi	a5,a5,1
	.loc 1 3400 6
	bnez	a5,.L205
	.loc 1 3404 11
	li	a5,0
	j	.L203
.L205:
	.loc 1 3411 14
	lw	a5,-40(s0)
	sb	zero,0(a5)
	.loc 1 3412 13
	lw	a5,-36(s0)
	andi	a4,a5,0xff
	.loc 1 3412 11
	lw	a5,-40(s0)
	sb	a4,1(a5)
	.loc 1 3413 9
	lw	a5,-40(s0)
	lbu	a5,1(a5)
	mv	a0,a5
	call	disk_initialize
	mv	a5,a0
	sb	a5,-41(s0)
	.loc 1 3414 11
	lbu	a5,-41(s0)
	andi	a5,a5,1
	.loc 1 3414 5
	beqz	a5,.L206
	.loc 1 3415 10
	li	a5,3
	j	.L203
.L206:
	.loc 1 3426 8
	li	a1,0
	lw	a0,-40(s0)
	call	find_volume
	sw	a0,-32(s0)
	.loc 1 3427 5
	lw	a4,-32(s0)
	li	a5,4
	bne	a4,a5,.L207
	.loc 1 3427 23 discriminator 1
	li	a5,1
	j	.L203
.L207:
	.loc 1 3428 5
	lw	a4,-32(s0)
	li	a5,1
	bleu	a4,a5,.L208
	.loc 1 3428 23 discriminator 1
	li	a5,13
	j	.L203
.L208:
	.loc 1 3429 8
	lw	a5,-40(s0)
	lw	a5,36(a5)
	sw	a5,-48(s0)
	.loc 1 3497 15
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3497 7
	addi	a5,a5,11
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	mv	a4,a5
	.loc 1 3497 6
	li	a5,512
	beq	a4,a5,.L209
	.loc 1 3497 52 discriminator 1
	li	a5,13
	j	.L203
.L209:
	.loc 1 3499 20
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3499 12
	addi	a5,a5,22
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 3499 10
	sw	a5,-24(s0)
	.loc 1 3500 6
	lw	a5,-24(s0)
	bnez	a5,.L210
	.loc 1 3500 38 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3500 29 discriminator 1
	addi	a5,a5,36
	mv	a0,a5
	call	ld_dword
	sw	a0,-24(s0)
.L210:
	.loc 1 3501 13
	lw	a5,-40(s0)
	lw	a4,-24(s0)
	sw	a4,16(a5)
	.loc 1 3503 23
	lw	a5,-40(s0)
	lbu	a4,56(a5)
	.loc 1 3503 14
	lw	a5,-40(s0)
	sb	a4,2(a5)
	.loc 1 3504 9
	lw	a5,-40(s0)
	lbu	a4,2(a5)
	.loc 1 3504 6
	li	a5,1
	beq	a4,a5,.L211
	.loc 1 3504 28 discriminator 1
	lw	a5,-40(s0)
	lbu	a4,2(a5)
	.loc 1 3504 23 discriminator 1
	li	a5,2
	beq	a4,a5,.L211
	.loc 1 3504 50 discriminator 2
	li	a5,13
	j	.L203
.L211:
	.loc 1 3505 15
	lw	a5,-40(s0)
	lbu	a5,2(a5)
	.loc 1 3505 10
	mv	a1,a5
	lw	a0,-24(s0)
	call	__mulsi3
.LVL1:
	mv	a5,a0
	sw	a5,-24(s0)
	.loc 1 3507 22
	lw	a5,-40(s0)
	lbu	a5,53(a5)
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 3507 13
	lw	a5,-40(s0)
	sh	a4,10(a5)
	.loc 1 3508 9
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	.loc 1 3508 6
	beqz	a5,.L212
	.loc 1 3508 28 discriminator 2
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 3508 41 discriminator 2
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	.loc 1 3508 49 discriminator 2
	addi	a5,a5,-1
	.loc 1 3508 36 discriminator 2
	and	a5,a4,a5
	.loc 1 3508 22 discriminator 2
	beqz	a5,.L213
.L212:
	.loc 1 3508 63 discriminator 3
	li	a5,13
	j	.L203
.L213:
	.loc 1 3510 27
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3510 19
	addi	a5,a5,17
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	mv	a4,a5
	.loc 1 3510 17
	lw	a5,-40(s0)
	sh	a4,8(a5)
	.loc 1 3511 9
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 3511 7
	andi	a5,a5,15
	slli	a5,a5,16
	srli	a5,a5,16
	.loc 1 3511 6
	beqz	a5,.L214
	.loc 1 3511 50 discriminator 1
	li	a5,13
	j	.L203
.L214:
	.loc 1 3513 19
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3513 11
	addi	a5,a5,19
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 3513 9
	sw	a5,-20(s0)
	.loc 1 3514 6
	lw	a5,-20(s0)
	bnez	a5,.L215
	.loc 1 3514 36 discriminator 1
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3514 27 discriminator 1
	addi	a5,a5,32
	mv	a0,a5
	call	ld_dword
	sw	a0,-20(s0)
.L215:
	.loc 1 3516 18
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3516 10
	addi	a5,a5,14
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	sh	a5,-50(s0)
	.loc 1 3517 6
	lhu	a5,-50(s0)
	bnez	a5,.L216
	.loc 1 3517 25 discriminator 1
	li	a5,13
	j	.L203
.L216:
	.loc 1 3520 17
	lhu	a4,-50(s0)
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 1 3520 30
	lw	a4,-40(s0)
	lhu	a4,8(a4)
	.loc 1 3520 42
	srli	a4,a4,4
	slli	a4,a4,16
	srli	a4,a4,16
	.loc 1 3520 10
	add	a5,a5,a4
	sw	a5,-56(s0)
	.loc 1 3521 6
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	bgeu	a4,a5,.L217
	.loc 1 3521 30 discriminator 1
	li	a5,13
	j	.L203
.L217:
	.loc 1 3522 18
	lw	a4,-20(s0)
	lw	a5,-56(s0)
	sub	a4,a4,a5
	.loc 1 3522 32
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	.loc 1 3522 9
	mv	a1,a5
	mv	a0,a4
	call	__udivsi3
.LVL2:
	mv	a5,a0
	sw	a5,-60(s0)
	.loc 1 3523 6
	lw	a5,-60(s0)
	bnez	a5,.L218
	.loc 1 3523 26 discriminator 1
	li	a5,13
	j	.L203
.L218:
	.loc 1 3524 7
	sw	zero,-32(s0)
	.loc 1 3525 6
	lw	a4,-60(s0)
	li	a5,268435456
	addi	a5,a5,-11
	bgtu	a4,a5,.L219
	.loc 1 3525 32 discriminator 1
	li	a5,3
	sw	a5,-32(s0)
.L219:
	.loc 1 3526 6
	lw	a4,-60(s0)
	li	a5,65536
	addi	a5,a5,-11
	bgtu	a4,a5,.L220
	.loc 1 3526 28 discriminator 1
	li	a5,2
	sw	a5,-32(s0)
.L220:
	.loc 1 3527 6
	lw	a4,-60(s0)
	li	a5,4096
	addi	a5,a5,-11
	bgtu	a4,a5,.L221
	.loc 1 3527 27 discriminator 1
	li	a5,1
	sw	a5,-32(s0)
.L221:
	.loc 1 3528 6
	lw	a5,-32(s0)
	bnez	a5,.L222
	.loc 1 3528 24 discriminator 1
	li	a5,13
	j	.L203
.L222:
	.loc 1 3531 24
	lw	a5,-60(s0)
	addi	a4,a5,2
	.loc 1 3531 16
	lw	a5,-40(s0)
	sw	a4,12(a5)
	.loc 1 3532 15
	lw	a5,-40(s0)
	lw	a4,-48(s0)
	sw	a4,20(a5)
	.loc 1 3533 23
	lhu	a4,-50(s0)
	lw	a5,-48(s0)
	add	a4,a4,a5
	.loc 1 3533 15
	lw	a5,-40(s0)
	sw	a4,24(a5)
	.loc 1 3534 24
	lw	a4,-48(s0)
	lw	a5,-56(s0)
	add	a4,a4,a5
	.loc 1 3534 16
	lw	a5,-40(s0)
	sw	a4,32(a5)
	.loc 1 3535 6
	lw	a4,-32(s0)
	li	a5,3
	bne	a4,a5,.L223
	.loc 1 3536 16
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3536 8
	addi	a5,a5,42
	mv	a0,a5
	call	ld_word
	mv	a5,a0
	.loc 1 3536 7
	beqz	a5,.L224
	.loc 1 3536 43 discriminator 1
	li	a5,13
	j	.L203
.L224:
	.loc 1 3537 10
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 3537 7
	beqz	a5,.L225
	.loc 1 3537 35 discriminator 1
	li	a5,13
	j	.L203
.L225:
	.loc 1 3538 27
	lw	a5,-40(s0)
	addi	a5,a5,40
	.loc 1 3538 18
	addi	a5,a5,44
	mv	a0,a5
	call	ld_dword
	mv	a4,a0
	.loc 1 3538 16
	lw	a5,-40(s0)
	sw	a4,28(a5)
	.loc 1 3539 15
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 1 3539 11
	slli	a5,a5,2
	sw	a5,-28(s0)
	j	.L226
.L223:
	.loc 1 3541 10
	lw	a5,-40(s0)
	lhu	a5,8(a5)
	.loc 1 3541 7
	bnez	a5,.L227
	.loc 1 3541 35 discriminator 1
	li	a5,13
	j	.L203
.L227:
	.loc 1 3542 20
	lw	a5,-40(s0)
	lw	a4,24(a5)
	.loc 1 3542 30
	lw	a5,-24(s0)
	add	a4,a4,a5
	.loc 1 3542 16
	lw	a5,-40(s0)
	sw	a4,28(a5)
	.loc 1 3544 22
	lw	a4,-32(s0)
	li	a5,2
	bne	a4,a5,.L228
	.loc 1 3544 7 discriminator 1
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 1 3544 22 discriminator 1
	slli	a5,a5,1
	j	.L229
.L228:
	.loc 1 3544 26 discriminator 2
	lw	a5,-40(s0)
	lw	a4,12(a5)
	.loc 1 3544 37 discriminator 2
	mv	a5,a4
	slli	a5,a5,1
	add	a5,a5,a4
	.loc 1 3544 41 discriminator 2
	srli	a4,a5,1
	.loc 1 3544 50 discriminator 2
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 1 3544 61 discriminator 2
	andi	a5,a5,1
	.loc 1 3544 22 discriminator 2
	add	a5,a4,a5
.L229:
	.loc 1 3543 11
	sw	a5,-28(s0)
.L226:
	.loc 1 3546 9
	lw	a5,-40(s0)
	lw	a4,16(a5)
	.loc 1 3546 27
	lw	a5,-28(s0)
	addi	a5,a5,511
	.loc 1 3546 48
	srli	a5,a5,9
	.loc 1 3546 6
	bgeu	a4,a5,.L230
	.loc 1 3546 70 discriminator 1
	li	a5,13
	j	.L203
.L230:
	.loc 1 3574 16
	lw	a5,-32(s0)
	andi	a4,a5,0xff
	.loc 1 3574 14
	lw	a5,-40(s0)
	sb	a4,0(a5)
	.loc 1 3575 11
	lui	a5,%hi(Fsid)
	lhu	a5,%lo(Fsid)(a5)
	addi	a5,a5,1
	slli	a4,a5,16
	srli	a4,a4,16
	.loc 1 3575 9
	lui	a5,%hi(Fsid)
	sh	a4,%lo(Fsid)(a5)
	lui	a5,%hi(Fsid)
	lhu	a4,%lo(Fsid)(a5)
	lw	a5,-40(s0)
	sh	a4,6(a5)
	.loc 1 3588 9
	li	a5,0
.L203:
	.loc 1 3589 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE24:
	.size	mount_volume, .-mount_volume
	.section	.text.validate,"ax",@progbits
	.align	1
	.type	validate, @function
validate:
.LFB25:
	.loc 1 3602 1
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
	.loc 1 3603 10
	li	a5,9
	sw	a5,-20(s0)
	.loc 1 3606 5
	lw	a5,-36(s0)
	beqz	a5,.L232
	.loc 1 3606 16 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 3606 10 discriminator 1
	beqz	a5,.L232
	.loc 1 3606 27 discriminator 2
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 3606 31 discriminator 2
	lbu	a5,0(a5)
	.loc 1 3606 21 discriminator 2
	beqz	a5,.L232
	.loc 1 3606 47 discriminator 3
	lw	a5,-36(s0)
	lhu	a4,4(a5)
	.loc 1 3606 58 discriminator 3
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 3606 62 discriminator 3
	lhu	a5,6(a5)
	.loc 1 3606 41 discriminator 3
	bne	a4,a5,.L232
	.loc 1 3618 24
	lw	a5,-36(s0)
	lw	a5,0(a5)
	.loc 1 3618 9
	lbu	a5,1(a5)
	mv	a0,a5
	call	disk_status
	mv	a5,a0
	.loc 1 3618 36
	andi	a5,a5,1
	.loc 1 3618 6
	bnez	a5,.L232
	.loc 1 3619 8
	sw	zero,-20(s0)
.L232:
	.loc 1 3623 34
	lw	a5,-20(s0)
	bnez	a5,.L233
	.loc 1 3623 34 is_stmt 0 discriminator 1
	lw	a5,-36(s0)
	lw	a5,0(a5)
	j	.L234
.L233:
	.loc 1 3623 34 discriminator 2
	li	a5,0
.L234:
	.loc 1 3623 7 is_stmt 1 discriminator 4
	lw	a4,-40(s0)
	sw	a5,0(a4)
	.loc 1 3624 9 discriminator 4
	lw	a5,-20(s0)
	.loc 1 3625 1 discriminator 4
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE25:
	.size	validate, .-validate
	.section	.text.f_mount,"ax",@progbits
	.align	1
	.globl	f_mount
	.type	f_mount, @function
f_mount:
.LFB26:
	.loc 1 3647 1
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
	mv	a5,a2
	sb	a5,-41(s0)
	.loc 1 3651 15
	lw	a5,-40(s0)
	sw	a5,-32(s0)
	.loc 1 3655 8
	addi	a5,s0,-32
	mv	a0,a5
	call	get_ldnumber
	sw	a0,-20(s0)
	.loc 1 3656 5
	lw	a5,-20(s0)
	bgez	a5,.L237
	.loc 1 3656 22 discriminator 1
	li	a5,11
	j	.L242
.L237:
	.loc 1 3657 6
	lui	a5,%hi(FatFs)
	lw	a4,-20(s0)
	slli	a4,a4,2
	addi	a5,a5,%lo(FatFs)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-24(s0)
	.loc 1 3659 5
	lw	a5,-24(s0)
	beqz	a5,.L239
	.loc 1 3666 16
	lw	a5,-24(s0)
	sb	zero,0(a5)
.L239:
	.loc 1 3669 6
	lw	a5,-36(s0)
	.loc 1 3669 5
	beqz	a5,.L240
	.loc 1 3670 5
	lw	a5,-36(s0)
	.loc 1 3670 15
	sb	zero,0(a5)
.L240:
	.loc 1 3675 13
	lw	a4,-36(s0)
	lui	a5,%hi(FatFs)
	lw	a3,-20(s0)
	slli	a3,a3,2
	addi	a5,a5,%lo(FatFs)
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 3677 5
	lbu	a5,-41(s0)
	bnez	a5,.L241
	.loc 1 3677 23 discriminator 1
	li	a5,0
	j	.L242
.L241:
	.loc 1 3679 8
	addi	a4,s0,-36
	addi	a5,s0,-40
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mount_volume
	sw	a0,-28(s0)
	.loc 1 3680 9
	lw	a5,-28(s0)
.L242:
	.loc 1 3681 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE26:
	.size	f_mount, .-f_mount
	.section	.text.f_open,"ax",@progbits
	.align	1
	.globl	f_open
	.type	f_open, @function
f_open:
.LFB27:
	.loc 1 3695 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	mv	a5,a2
	sb	a5,-89(s0)
	.loc 1 3707 5
	lw	a5,-84(s0)
	bnez	a5,.L244
	.loc 1 3707 18 discriminator 1
	li	a5,9
	j	.L250
.L244:
	.loc 1 3710 7
	lbu	a5,-89(s0)
	andi	a5,a5,1
	sb	a5,-89(s0)
	.loc 1 3711 8
	lbu	a3,-89(s0)
	addi	a4,s0,-72
	addi	a5,s0,-88
	mv	a2,a3
	mv	a1,a4
	mv	a0,a5
	call	mount_volume
	sw	a0,-20(s0)
	.loc 1 3712 5
	lw	a5,-20(s0)
	bnez	a5,.L246
	.loc 1 3713 13
	lw	a5,-72(s0)
	sw	a5,-68(s0)
	.loc 1 3715 9
	lw	a4,-88(s0)
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	follow_path
	sw	a0,-20(s0)
	.loc 1 3805 6
	lw	a5,-20(s0)
	bnez	a5,.L247
	.loc 1 3806 13
	lbu	a5,-25(s0)
	.loc 1 3806 8
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 3806 7
	bgez	a5,.L248
	.loc 1 3807 9
	li	a5,6
	sw	a5,-20(s0)
	j	.L247
.L248:
	.loc 1 3809 15
	lbu	a5,-62(s0)
	.loc 1 3809 21
	andi	a5,a5,16
	.loc 1 3809 8
	beqz	a5,.L247
	.loc 1 3810 10
	li	a5,4
	sw	a5,-20(s0)
.L247:
	.loc 1 3816 6
	lw	a5,-20(s0)
	bnez	a5,.L246
	.loc 1 3826 22
	lw	a5,-72(s0)
	.loc 1 3826 37
	lw	a4,-40(s0)
	.loc 1 3826 22
	mv	a1,a4
	mv	a0,a5
	call	ld_clust
	mv	a4,a0
	.loc 1 3826 20
	lw	a5,-84(s0)
	sw	a4,8(a5)
	.loc 1 3827 34
	lw	a5,-40(s0)
	.loc 1 3827 39
	addi	a5,a5,28
	.loc 1 3827 23
	mv	a0,a5
	call	ld_dword
	mv	a4,a0
	.loc 1 3827 21
	lw	a5,-84(s0)
	sw	a4,12(a5)
	.loc 1 3832 15
	lw	a4,-72(s0)
	lw	a5,-84(s0)
	sw	a4,0(a5)
	.loc 1 3833 19
	lw	a5,-72(s0)
	lhu	a4,6(a5)
	.loc 1 3833 15
	lw	a5,-84(s0)
	sh	a4,4(a5)
	.loc 1 3834 13
	lw	a5,-84(s0)
	lbu	a4,-89(s0)
	sb	a4,16(a5)
	.loc 1 3835 12
	lw	a5,-84(s0)
	sb	zero,17(a5)
	.loc 1 3836 13
	lw	a5,-84(s0)
	sw	zero,28(a5)
	.loc 1 3837 13
	lw	a5,-84(s0)
	sw	zero,20(a5)
.L246:
	.loc 1 3870 5
	lw	a5,-20(s0)
	beqz	a5,.L249
	.loc 1 3870 31 discriminator 1
	lw	a5,-84(s0)
	sw	zero,0(a5)
.L249:
	.loc 1 3872 9
	lw	a5,-20(s0)
.L250:
	.loc 1 3873 1 discriminator 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE27:
	.size	f_open, .-f_open
	.section	.text.f_read,"ax",@progbits
	.align	1
	.globl	f_read
	.type	f_read, @function
f_read:
.LFB28:
	.loc 1 3888 1
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	.loc 1 3895 8
	lw	a5,-72(s0)
	sw	a5,-36(s0)
	.loc 1 3898 6
	lw	a5,-80(s0)
	sw	zero,0(a5)
	.loc 1 3899 8
	lw	a5,-68(s0)
	addi	a4,s0,-52
	mv	a1,a4
	mv	a0,a5
	call	validate
	sw	a0,-20(s0)
	.loc 1 3900 5
	lw	a5,-20(s0)
	bnez	a5,.L252
	.loc 1 3900 40 discriminator 2
	lw	a5,-68(s0)
	lbu	a5,17(a5)
	.loc 1 3900 27 discriminator 2
	sw	a5,-20(s0)
	.loc 1 3900 19 discriminator 2
	lw	a5,-20(s0)
	beqz	a5,.L253
.L252:
	.loc 1 3900 64 discriminator 3
	lw	a5,-20(s0)
	j	.L272
.L253:
	.loc 1 3901 10
	lw	a5,-68(s0)
	lbu	a5,16(a5)
	.loc 1 3901 17
	andi	a5,a5,1
	.loc 1 3901 5
	bnez	a5,.L255
	.loc 1 3901 33 discriminator 1
	li	a5,7
	j	.L272
.L255:
	.loc 1 3902 18
	lw	a5,-68(s0)
	lw	a4,12(a5)
	.loc 1 3902 31
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3902 9
	sub	a5,a4,a5
	sw	a5,-40(s0)
	.loc 1 3903 5
	lw	a4,-76(s0)
	lw	a5,-40(s0)
	bleu	a4,a5,.L257
	.loc 1 3903 24 discriminator 1
	lw	a5,-40(s0)
	sw	a5,-76(s0)
	.loc 1 3905 2 discriminator 1
	j	.L257
.L271:
	.loc 1 3907 9
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3907 16
	andi	a5,a5,511
	.loc 1 3907 6
	bnez	a5,.L258
	.loc 1 3908 21
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3908 28
	srli	a5,a5,9
	.loc 1 3908 47
	lw	a4,-52(s0)
	lhu	a4,10(a4)
	.loc 1 3908 55
	addi	a4,a4,-1
	.loc 1 3908 10
	and	a5,a5,a4
	sw	a5,-44(s0)
	.loc 1 3909 7
	lw	a5,-44(s0)
	bnez	a5,.L259
	.loc 1 3910 11
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3910 8
	bnez	a5,.L260
	.loc 1 3911 11
	lw	a5,-68(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	j	.L261
.L260:
	.loc 1 3919 14
	lw	a4,-68(s0)
	lw	a5,-68(s0)
	lw	a5,24(a5)
	mv	a1,a5
	mv	a0,a4
	call	get_fat
	sw	a0,-24(s0)
.L261:
	.loc 1 3922 8
	lw	a4,-24(s0)
	li	a5,1
	bgtu	a4,a5,.L262
	.loc 1 3922 29 discriminator 1
	lw	a5,-68(s0)
	li	a4,2
	sb	a4,17(a5)
	.loc 1 3922 58 discriminator 1
	li	a5,2
	j	.L272
.L262:
	.loc 1 3923 8
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L263
	.loc 1 3923 39 discriminator 1
	lw	a5,-68(s0)
	li	a4,1
	sb	a4,17(a5)
	.loc 1 3923 69 discriminator 1
	li	a5,1
	j	.L272
.L263:
	.loc 1 3924 15
	lw	a5,-68(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
.L259:
	.loc 1 3926 11
	lw	a4,-52(s0)
	lw	a5,-68(s0)
	lw	a5,24(a5)
	mv	a1,a5
	mv	a0,a4
	call	clst2sect
	sw	a0,-48(s0)
	.loc 1 3927 7
	lw	a5,-48(s0)
	bnez	a5,.L264
	.loc 1 3927 29 discriminator 1
	lw	a5,-68(s0)
	li	a4,2
	sb	a4,17(a5)
	.loc 1 3927 58 discriminator 1
	li	a5,2
	j	.L272
.L264:
	.loc 1 3928 9
	lw	a4,-48(s0)
	lw	a5,-44(s0)
	add	a5,a4,a5
	sw	a5,-48(s0)
	.loc 1 3929 7
	lw	a5,-76(s0)
	srli	a5,a5,9
	sw	a5,-32(s0)
	.loc 1 3930 7
	lw	a5,-32(s0)
	beqz	a5,.L265
	.loc 1 3931 15
	lw	a4,-44(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	.loc 1 3931 24
	lw	a4,-52(s0)
	lhu	a4,10(a4)
	.loc 1 3931 8
	bleu	a5,a4,.L266
	.loc 1 3932 13
	lw	a5,-52(s0)
	lhu	a5,10(a5)
	mv	a4,a5
	.loc 1 3932 9
	lw	a5,-44(s0)
	sub	a5,a4,a5
	sw	a5,-32(s0)
.L266:
	.loc 1 3934 21
	lw	a5,-52(s0)
	.loc 1 3934 9
	lbu	a5,1(a5)
	lw	a3,-32(s0)
	lw	a2,-48(s0)
	lw	a1,-36(s0)
	mv	a0,a5
	call	disk_read
	mv	a5,a0
	.loc 1 3934 8
	beqz	a5,.L267
	.loc 1 3934 67 discriminator 1
	lw	a5,-68(s0)
	li	a4,1
	sb	a4,17(a5)
	.loc 1 3934 97 discriminator 1
	li	a5,1
	j	.L272
.L267:
	.loc 1 3946 10
	lw	a5,-32(s0)
	slli	a5,a5,9
	sw	a5,-28(s0)
	.loc 1 3947 5
	j	.L268
.L265:
	.loc 1 3950 10
	lw	a5,-68(s0)
	lw	a5,28(a5)
	.loc 1 3950 7
	lw	a4,-48(s0)
	beq	a4,a5,.L269
	.loc 1 3957 21
	lw	a5,-52(s0)
	.loc 1 3957 9
	lbu	a4,1(a5)
	.loc 1 3957 31
	lw	a5,-68(s0)
	addi	a5,a5,32
	.loc 1 3957 9
	li	a3,1
	lw	a2,-48(s0)
	mv	a1,a5
	mv	a0,a4
	call	disk_read
	mv	a5,a0
	.loc 1 3957 8
	beqz	a5,.L269
	.loc 1 3957 68 discriminator 1
	lw	a5,-68(s0)
	li	a4,1
	sb	a4,17(a5)
	.loc 1 3957 98 discriminator 1
	li	a5,1
	j	.L272
.L269:
	.loc 1 3960 13
	lw	a5,-68(s0)
	lw	a4,-48(s0)
	sw	a4,28(a5)
.L258:
	.loc 1 3962 32
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3962 39
	andi	a5,a5,511
	.loc 1 3962 8
	li	a4,512
	sub	a5,a4,a5
	sw	a5,-28(s0)
	.loc 1 3963 6
	lw	a4,-28(s0)
	lw	a5,-76(s0)
	bleu	a4,a5,.L270
	.loc 1 3963 24 discriminator 1
	lw	a5,-76(s0)
	sw	a5,-28(s0)
.L270:
	.loc 1 3968 18
	lw	a5,-68(s0)
	addi	a4,a5,32
	.loc 1 3968 30
	lw	a5,-68(s0)
	lw	a5,20(a5)
	.loc 1 3968 37
	andi	a5,a5,511
	.loc 1 3968 3
	add	a5,a4,a5
	lw	a2,-28(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	mem_cpy
.L268:
	.loc 1 3906 7
	lw	a4,-76(s0)
	lw	a5,-28(s0)
	sub	a5,a4,a5
	sw	a5,-76(s0)
	.loc 1 3906 20
	lw	a5,-80(s0)
	lw	a4,0(a5)
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-80(s0)
	sw	a4,0(a5)
	.loc 1 3906 35
	lw	a4,-36(s0)
	lw	a5,-28(s0)
	add	a5,a4,a5
	sw	a5,-36(s0)
	.loc 1 3906 53
	lw	a5,-68(s0)
	lw	a4,20(a5)
	lw	a5,-28(s0)
	add	a4,a4,a5
	lw	a5,-68(s0)
	sw	a4,20(a5)
.L257:
	.loc 1 3905 2
	lw	a5,-76(s0)
	bnez	a5,.L271
	.loc 1 3972 9
	li	a5,0
.L272:
	.loc 1 3973 1 discriminator 1
	mv	a0,a5
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	addi	sp,sp,80
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE28:
	.size	f_read, .-f_read
	.section	.text.f_close,"ax",@progbits
	.align	1
	.globl	f_close
	.type	f_close, @function
f_close:
.LFB29:
	.loc 1 4189 1
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
	.loc 1 4198 9
	lw	a5,-36(s0)
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	validate
	sw	a0,-20(s0)
	.loc 1 4199 6
	lw	a5,-20(s0)
	bnez	a5,.L274
	.loc 1 4204 15
	lw	a5,-36(s0)
	sw	zero,0(a5)
.L274:
	.loc 1 4211 9
	lw	a5,-20(s0)
	.loc 1 4212 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE29:
	.size	f_close, .-f_close
	.section	.text.f_lseek,"ax",@progbits
	.align	1
	.globl	f_lseek
	.type	f_lseek, @function
f_lseek:
.LFB30:
	.loc 1 4405 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,64
	.cfi_def_cfa 8, 0
	sw	a0,-52(s0)
	sw	a1,-56(s0)
	.loc 1 4416 8
	lw	a5,-52(s0)
	addi	a4,s0,-40
	mv	a1,a4
	mv	a0,a5
	call	validate
	sw	a0,-20(s0)
	.loc 1 4417 5
	lw	a5,-20(s0)
	bnez	a5,.L277
	.loc 1 4417 37 discriminator 1
	lw	a5,-52(s0)
	lbu	a5,17(a5)
	.loc 1 4417 24 discriminator 1
	sw	a5,-20(s0)
.L277:
	.loc 1 4423 5
	lw	a5,-20(s0)
	beqz	a5,.L278
	.loc 1 4423 27 discriminator 1
	lw	a5,-20(s0)
	j	.L292
.L278:
	.loc 1 4482 20
	lw	a5,-52(s0)
	lw	a5,12(a5)
	.loc 1 4482 6
	lw	a4,-56(s0)
	bleu	a4,a5,.L280
	.loc 1 4483 8
	lw	a5,-52(s0)
	lw	a5,12(a5)
	sw	a5,-56(s0)
.L280:
	.loc 1 4485 9
	lw	a5,-52(s0)
	lw	a5,20(a5)
	sw	a5,-32(s0)
	.loc 1 4486 20
	sw	zero,-28(s0)
	.loc 1 4486 12
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	sw	a4,20(a5)
	.loc 1 4487 6
	lw	a5,-56(s0)
	beqz	a5,.L293
	.loc 1 4488 19
	lw	a5,-40(s0)
	lhu	a5,10(a5)
	.loc 1 4488 8
	slli	a5,a5,9
	sw	a5,-36(s0)
	.loc 1 4489 7
	lw	a5,-32(s0)
	beqz	a5,.L282
	.loc 1 4490 10 discriminator 1
	lw	a5,-56(s0)
	addi	a5,a5,-1
	.loc 1 4490 15 discriminator 1
	lw	a1,-36(s0)
	mv	a0,a5
	call	__udivsi3
.LVL3:
	mv	a5,a0
	mv	s1,a5
	.loc 1 4490 31 discriminator 1
	lw	a5,-32(s0)
	addi	a5,a5,-1
	.loc 1 4490 36 discriminator 1
	lw	a1,-36(s0)
	mv	a0,a5
	call	__udivsi3
.LVL4:
	mv	a5,a0
	.loc 1 4489 18 discriminator 1
	bltu	s1,a5,.L282
	.loc 1 4491 23
	lw	a5,-32(s0)
	addi	a4,a5,-1
	.loc 1 4491 30
	lw	a5,-36(s0)
	neg	a5,a5
	.loc 1 4491 28
	and	a4,a4,a5
	.loc 1 4491 14
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 1 4492 14
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 1 4492 9
	lw	a4,-56(s0)
	sub	a5,a4,a5
	sw	a5,-56(s0)
	.loc 1 4493 10
	lw	a5,-52(s0)
	lw	a5,24(a5)
	sw	a5,-24(s0)
	j	.L283
.L282:
	.loc 1 4495 10
	lw	a5,-52(s0)
	lw	a5,8(a5)
	sw	a5,-24(s0)
	.loc 1 4504 15
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
.L283:
	.loc 1 4506 7
	lw	a5,-24(s0)
	beqz	a5,.L293
	.loc 1 4507 11
	j	.L284
.L288:
	.loc 1 4508 10
	lw	a4,-56(s0)
	lw	a5,-36(s0)
	sub	a5,a4,a5
	sw	a5,-56(s0)
	.loc 1 4508 27
	lw	a5,-52(s0)
	lw	a4,20(a5)
	lw	a5,-36(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 1 4522 14
	lw	a5,-52(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	get_fat
	sw	a0,-24(s0)
	.loc 1 4524 9
	lw	a4,-24(s0)
	li	a5,-1
	bne	a4,a5,.L285
	.loc 1 4524 40 discriminator 1
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,17(a5)
	.loc 1 4524 70 discriminator 1
	li	a5,1
	j	.L292
.L285:
	.loc 1 4525 9
	lw	a4,-24(s0)
	li	a5,1
	bleu	a4,a5,.L286
	.loc 1 4525 33 discriminator 2
	lw	a5,-40(s0)
	lw	a5,12(a5)
	.loc 1 4525 20 discriminator 2
	lw	a4,-24(s0)
	bltu	a4,a5,.L287
.L286:
	.loc 1 4525 55 discriminator 3
	lw	a5,-52(s0)
	li	a4,2
	sb	a4,17(a5)
	.loc 1 4525 84 discriminator 3
	li	a5,2
	j	.L292
.L287:
	.loc 1 4526 16
	lw	a5,-52(s0)
	lw	a4,-24(s0)
	sw	a4,24(a5)
.L284:
	.loc 1 4507 11
	lw	a4,-56(s0)
	lw	a5,-36(s0)
	bgtu	a4,a5,.L288
	.loc 1 4528 14
	lw	a5,-52(s0)
	lw	a4,20(a5)
	lw	a5,-56(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	sw	a4,20(a5)
	.loc 1 4529 13
	lw	a5,-56(s0)
	andi	a5,a5,511
	.loc 1 4529 8
	beqz	a5,.L293
	.loc 1 4530 14
	lw	a5,-40(s0)
	lw	a1,-24(s0)
	mv	a0,a5
	call	clst2sect
	sw	a0,-28(s0)
	.loc 1 4531 9
	lw	a5,-28(s0)
	bnez	a5,.L289
	.loc 1 4531 32 discriminator 1
	lw	a5,-52(s0)
	li	a4,2
	sb	a4,17(a5)
	.loc 1 4531 61 discriminator 1
	li	a5,2
	j	.L292
.L289:
	.loc 1 4532 15
	lw	a5,-56(s0)
	srli	a5,a5,9
	.loc 1 4532 12
	lw	a4,-28(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
.L293:
	.loc 1 4540 9
	lw	a5,-52(s0)
	lw	a5,20(a5)
	.loc 1 4540 16
	andi	a5,a5,511
	.loc 1 4540 6
	beqz	a5,.L290
	.loc 1 4540 44 discriminator 1
	lw	a5,-52(s0)
	lw	a5,28(a5)
	.loc 1 4540 30 discriminator 1
	lw	a4,-28(s0)
	beq	a4,a5,.L290
	.loc 1 4548 20
	lw	a5,-40(s0)
	.loc 1 4548 8
	lbu	a4,1(a5)
	.loc 1 4548 30
	lw	a5,-52(s0)
	addi	a5,a5,32
	.loc 1 4548 8
	li	a3,1
	lw	a2,-28(s0)
	mv	a1,a5
	mv	a0,a4
	call	disk_read
	mv	a5,a0
	.loc 1 4548 7
	beqz	a5,.L291
	.loc 1 4548 68 discriminator 1
	lw	a5,-52(s0)
	li	a4,1
	sb	a4,17(a5)
	.loc 1 4548 98 discriminator 1
	li	a5,1
	j	.L292
.L291:
	.loc 1 4550 13
	lw	a5,-52(s0)
	lw	a4,-28(s0)
	sw	a4,28(a5)
.L290:
	.loc 1 4554 9
	lw	a5,-20(s0)
.L292:
	.loc 1 4555 1 discriminator 1
	mv	a0,a5
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE30:
	.size	f_lseek, .-f_lseek
	.section	.text.f_opendir,"ax",@progbits
	.align	1
	.globl	f_opendir
	.type	f_opendir, @function
f_opendir:
.LFB31:
	.loc 1 4568 1
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
	.loc 1 4574 5
	lw	a5,-36(s0)
	bnez	a5,.L295
	.loc 1 4574 18 discriminator 1
	li	a5,9
	j	.L302
.L295:
	.loc 1 4577 8
	addi	a4,s0,-24
	addi	a5,s0,-40
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mount_volume
	sw	a0,-20(s0)
	.loc 1 4578 5
	lw	a5,-20(s0)
	bnez	a5,.L297
	.loc 1 4579 14
	lw	a4,-24(s0)
	lw	a5,-36(s0)
	sw	a4,0(a5)
	.loc 1 4581 9
	lw	a5,-40(s0)
	mv	a1,a5
	lw	a0,-36(s0)
	call	follow_path
	sw	a0,-20(s0)
	.loc 1 4582 6
	lw	a5,-20(s0)
	bnez	a5,.L298
	.loc 1 4583 16
	lw	a5,-36(s0)
	lbu	a5,43(a5)
	.loc 1 4583 8
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 4583 7
	bltz	a5,.L299
	.loc 1 4584 16
	lw	a5,-36(s0)
	lbu	a5,6(a5)
	.loc 1 4584 22
	andi	a5,a5,16
	.loc 1 4584 8
	beqz	a5,.L300
	.loc 1 4594 24
	lw	a4,-24(s0)
	.loc 1 4594 39
	lw	a5,-36(s0)
	lw	a5,28(a5)
	.loc 1 4594 24
	mv	a1,a5
	mv	a0,a4
	call	ld_clust
	mv	a4,a0
	.loc 1 4594 22
	lw	a5,-36(s0)
	sw	a4,8(a5)
	j	.L299
.L300:
	.loc 1 4597 10
	li	a5,5
	sw	a5,-20(s0)
.L299:
	.loc 1 4600 7
	lw	a5,-20(s0)
	bnez	a5,.L298
	.loc 1 4601 20
	lw	a5,-24(s0)
	lhu	a4,6(a5)
	.loc 1 4601 16
	lw	a5,-36(s0)
	sh	a4,4(a5)
	.loc 1 4602 11
	li	a1,0
	lw	a0,-36(s0)
	call	dir_sdi
	sw	a0,-20(s0)
.L298:
	.loc 1 4616 6
	lw	a4,-20(s0)
	li	a5,4
	bne	a4,a5,.L297
	.loc 1 4616 30 discriminator 1
	li	a5,5
	sw	a5,-20(s0)
.L297:
	.loc 1 4618 5
	lw	a5,-20(s0)
	beqz	a5,.L301
	.loc 1 4618 31 discriminator 1
	lw	a5,-36(s0)
	sw	zero,0(a5)
.L301:
	.loc 1 4620 9
	lw	a5,-20(s0)
.L302:
	.loc 1 4621 1 discriminator 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE31:
	.size	f_opendir, .-f_opendir
	.section	.text.f_closedir,"ax",@progbits
	.align	1
	.globl	f_closedir
	.type	f_closedir, @function
f_closedir:
.LFB32:
	.loc 1 4633 1
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
	.loc 1 4638 8
	lw	a5,-36(s0)
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	validate
	sw	a0,-20(s0)
	.loc 1 4639 5
	lw	a5,-20(s0)
	bnez	a5,.L304
	.loc 1 4644 14
	lw	a5,-36(s0)
	sw	zero,0(a5)
.L304:
	.loc 1 4650 9
	lw	a5,-20(s0)
	.loc 1 4651 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE32:
	.size	f_closedir, .-f_closedir
	.section	.text.f_readdir,"ax",@progbits
	.align	1
	.globl	f_readdir
	.type	f_readdir, @function
f_readdir:
.LFB33:
	.loc 1 4664 1
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
	.loc 1 4670 8
	lw	a5,-36(s0)
	addi	a4,s0,-24
	mv	a1,a4
	mv	a0,a5
	call	validate
	sw	a0,-20(s0)
	.loc 1 4671 5
	lw	a5,-20(s0)
	bnez	a5,.L307
	.loc 1 4672 6
	lw	a5,-40(s0)
	bnez	a5,.L308
	.loc 1 4673 10
	li	a1,0
	lw	a0,-36(s0)
	call	dir_sdi
	sw	a0,-20(s0)
	j	.L307
.L308:
	.loc 1 4676 10
	li	a1,0
	lw	a0,-36(s0)
	call	dir_read
	sw	a0,-20(s0)
	.loc 1 4677 7
	lw	a4,-20(s0)
	li	a5,4
	bne	a4,a5,.L309
	.loc 1 4677 31 discriminator 1
	sw	zero,-20(s0)
.L309:
	.loc 1 4678 7
	lw	a5,-20(s0)
	bnez	a5,.L307
	.loc 1 4679 5
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	get_fileinfo
	.loc 1 4680 11
	li	a1,0
	lw	a0,-36(s0)
	call	dir_next
	sw	a0,-20(s0)
	.loc 1 4681 8
	lw	a4,-20(s0)
	li	a5,4
	bne	a4,a5,.L307
	.loc 1 4681 32 discriminator 1
	sw	zero,-20(s0)
.L307:
	.loc 1 4686 9
	lw	a5,-20(s0)
	.loc 1 4687 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE33:
	.size	f_readdir, .-f_readdir
	.section	.text.f_findnext,"ax",@progbits
	.align	1
	.globl	f_findnext
	.type	f_findnext, @function
f_findnext:
.LFB34:
	.loc 1 4700 1
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
.L314:
	.loc 1 4705 9
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	f_readdir
	sw	a0,-20(s0)
	.loc 1 4706 6
	lw	a5,-20(s0)
	bnez	a5,.L312
	.loc 1 4706 20 discriminator 1
	lw	a5,-40(s0)
	beqz	a5,.L312
	.loc 1 4706 42 discriminator 2
	lw	a5,-40(s0)
	lbu	a5,9(a5)
	.loc 1 4706 28 discriminator 2
	beqz	a5,.L312
	.loc 1 4707 7
	lw	a5,-36(s0)
	lw	a4,44(a5)
	.loc 1 4707 36
	lw	a5,-40(s0)
	addi	a5,a5,9
	.loc 1 4707 7
	li	a3,0
	li	a2,0
	mv	a1,a5
	mv	a0,a4
	call	pattern_matching
	mv	a5,a0
	.loc 1 4707 6
	bnez	a5,.L316
	.loc 1 4705 7
	j	.L314
.L316:
	.loc 1 4707 3
	nop
.L312:
	.loc 1 4712 9
	lw	a5,-20(s0)
	.loc 1 4713 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE34:
	.size	f_findnext, .-f_findnext
	.section	.text.f_findfirst,"ax",@progbits
	.align	1
	.globl	f_findfirst
	.type	f_findfirst, @function
f_findfirst:
.LFB35:
	.loc 1 4727 1
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
	sw	a2,-44(s0)
	sw	a3,-48(s0)
	.loc 1 4731 10
	lw	a5,-36(s0)
	lw	a4,-48(s0)
	sw	a4,44(a5)
	.loc 1 4732 8
	lw	a1,-44(s0)
	lw	a0,-36(s0)
	call	f_opendir
	sw	a0,-20(s0)
	.loc 1 4733 5
	lw	a5,-20(s0)
	bnez	a5,.L318
	.loc 1 4734 9
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	f_findnext
	sw	a0,-20(s0)
.L318:
	.loc 1 4736 9
	lw	a5,-20(s0)
	.loc 1 4737 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE35:
	.size	f_findfirst, .-f_findfirst
	.section	.text.f_stat,"ax",@progbits
	.align	1
	.globl	f_stat
	.type	f_stat, @function
f_stat:
.LFB36:
	.loc 1 4752 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	ra,92(sp)
	sw	s0,88(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,96
	.cfi_def_cfa 8, 0
	sw	a0,-84(s0)
	sw	a1,-88(s0)
	.loc 1 4759 8
	addi	a4,s0,-68
	addi	a5,s0,-84
	li	a2,0
	mv	a1,a4
	mv	a0,a5
	call	mount_volume
	sw	a0,-20(s0)
	.loc 1 4760 5
	lw	a5,-20(s0)
	bnez	a5,.L321
	.loc 1 4762 9
	lw	a4,-84(s0)
	addi	a5,s0,-68
	mv	a1,a4
	mv	a0,a5
	call	follow_path
	sw	a0,-20(s0)
	.loc 1 4763 6
	lw	a5,-20(s0)
	bnez	a5,.L321
	.loc 1 4764 13
	lbu	a5,-25(s0)
	.loc 1 4764 8
	slli	a5,a5,24
	srai	a5,a5,24
	.loc 1 4764 7
	bgez	a5,.L322
	.loc 1 4765 9
	li	a5,6
	sw	a5,-20(s0)
	j	.L321
.L322:
	.loc 1 4767 8
	lw	a5,-88(s0)
	beqz	a5,.L321
	.loc 1 4767 14 discriminator 1
	addi	a5,s0,-68
	lw	a1,-88(s0)
	mv	a0,a5
	call	get_fileinfo
.L321:
	.loc 1 4773 9
	lw	a5,-20(s0)
	.loc 1 4774 1
	mv	a0,a5
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	addi	sp,sp,96
	.cfi_def_cfa_register 2
	jr	ra
	.cfi_endproc
.LFE36:
	.size	f_stat, .-f_stat
	.text
.Letext0:
	.file 2 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\machine\\_default_types.h"
	.file 3 "c:\\gccriscv\\8.2.0\\riscv-none-embed\\include\\sys\\_stdint.h"
	.file 4 "ff.h"
	.file 5 "diskio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1410
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF140
	.byte	0xc
	.4byte	.LASF141
	.4byte	.LASF142
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
	.byte	0x5
	.4byte	0xa7
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
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x63
	.byte	0xe
	.4byte	0xe1
	.byte	0x5
	.4byte	0xd0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.4byte	0xe1
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7c
	.byte	0xf
	.4byte	0xc4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7d
	.byte	0xf
	.4byte	0xc4
	.byte	0x6
	.2byte	0x228
	.byte	0x4
	.byte	0x84
	.byte	0x9
	.4byte	0x1df
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x85
	.byte	0x7
	.4byte	0xa7
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x86
	.byte	0x7
	.4byte	0xa7
	.byte	0x1
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x87
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x88
	.byte	0x7
	.4byte	0xa7
	.byte	0x3
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x89
	.byte	0x7
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.string	"id"
	.byte	0x4
	.byte	0x8a
	.byte	0x7
	.4byte	0xb8
	.byte	0x6
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x8b
	.byte	0x7
	.4byte	0xb8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x8c
	.byte	0x7
	.4byte	0xb8
	.byte	0xa
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0xa5
	.byte	0x8
	.4byte	0xc4
	.byte	0xc
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0xa6
	.byte	0x8
	.4byte	0xc4
	.byte	0x10
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0xa7
	.byte	0x8
	.4byte	0xf9
	.byte	0x14
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0xa8
	.byte	0x8
	.4byte	0xf9
	.byte	0x18
	.byte	0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0xa9
	.byte	0x8
	.4byte	0xf9
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0xaa
	.byte	0x8
	.4byte	0xf9
	.byte	0x20
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0xae
	.byte	0x8
	.4byte	0xf9
	.byte	0x24
	.byte	0x8
	.string	"win"
	.byte	0x4
	.byte	0xaf
	.byte	0x7
	.4byte	0x1df
	.byte	0x28
	.byte	0
	.byte	0x9
	.4byte	0xa7
	.4byte	0x1f0
	.byte	0xa
	.4byte	0x7c
	.2byte	0x1ff
	.byte	0
	.byte	0x3
	.4byte	.LASF35
	.byte	0x4
	.byte	0xb0
	.byte	0x3
	.4byte	0x105
	.byte	0xb
	.byte	0x10
	.byte	0x4
	.byte	0xb6
	.byte	0x9
	.4byte	0x252
	.byte	0x8
	.string	"fs"
	.byte	0x4
	.byte	0xb7
	.byte	0x9
	.4byte	0x252
	.byte	0
	.byte	0x8
	.string	"id"
	.byte	0x4
	.byte	0xb8
	.byte	0x7
	.4byte	0xb8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0xb9
	.byte	0x7
	.4byte	0xa7
	.byte	0x6
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0xba
	.byte	0x7
	.4byte	0xa7
	.byte	0x7
	.byte	0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0xbb
	.byte	0x8
	.4byte	0xc4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0xbc
	.byte	0xa
	.4byte	0xed
	.byte	0xc
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1f0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0xc7
	.byte	0x3
	.4byte	0x1fc
	.byte	0x6
	.2byte	0x220
	.byte	0x4
	.byte	0xcd
	.byte	0x9
	.4byte	0x2ca
	.byte	0x8
	.string	"obj"
	.byte	0x4
	.byte	0xce
	.byte	0xa
	.4byte	0x258
	.byte	0
	.byte	0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0xcf
	.byte	0x7
	.4byte	0xa7
	.byte	0x10
	.byte	0x8
	.string	"err"
	.byte	0x4
	.byte	0xd0
	.byte	0x7
	.4byte	0xa7
	.byte	0x11
	.byte	0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0xd1
	.byte	0xa
	.4byte	0xed
	.byte	0x14
	.byte	0x7
	.4byte	.LASF43
	.byte	0x4
	.byte	0xd2
	.byte	0x8
	.4byte	0xc4
	.byte	0x18
	.byte	0x7
	.4byte	.LASF44
	.byte	0x4
	.byte	0xd3
	.byte	0x8
	.4byte	0xf9
	.byte	0x1c
	.byte	0x8
	.string	"buf"
	.byte	0x4
	.byte	0xdc
	.byte	0x7
	.4byte	0x1df
	.byte	0x20
	.byte	0
	.byte	0xd
	.string	"FIL"
	.byte	0x4
	.byte	0xde
	.byte	0x3
	.4byte	0x264
	.byte	0xb
	.byte	0x30
	.byte	0x4
	.byte	0xe4
	.byte	0x9
	.4byte	0x33a
	.byte	0x8
	.string	"obj"
	.byte	0x4
	.byte	0xe5
	.byte	0xa
	.4byte	0x258
	.byte	0
	.byte	0x7
	.4byte	.LASF45
	.byte	0x4
	.byte	0xe6
	.byte	0x8
	.4byte	0xc4
	.byte	0x10
	.byte	0x7
	.4byte	.LASF43
	.byte	0x4
	.byte	0xe7
	.byte	0x8
	.4byte	0xc4
	.byte	0x14
	.byte	0x7
	.4byte	.LASF44
	.byte	0x4
	.byte	0xe8
	.byte	0x8
	.4byte	0xf9
	.byte	0x18
	.byte	0x8
	.string	"dir"
	.byte	0x4
	.byte	0xe9
	.byte	0x8
	.4byte	0x33a
	.byte	0x1c
	.byte	0x8
	.string	"fn"
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x340
	.byte	0x20
	.byte	0x8
	.string	"pat"
	.byte	0x4
	.byte	0xef
	.byte	0xf
	.4byte	0x350
	.byte	0x2c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xa7
	.byte	0x9
	.4byte	0xa7
	.4byte	0x350
	.byte	0xe
	.4byte	0x7c
	.byte	0xb
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xdc
	.byte	0xd
	.string	"DIR"
	.byte	0x4
	.byte	0xf1
	.byte	0x3
	.4byte	0x2d6
	.byte	0xb
	.byte	0x18
	.byte	0x4
	.byte	0xf7
	.byte	0x9
	.4byte	0x3ae
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0xf8
	.byte	0xa
	.4byte	0xed
	.byte	0
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0xf9
	.byte	0x7
	.4byte	0xb8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0xfa
	.byte	0x7
	.4byte	0xb8
	.byte	0x6
	.byte	0x7
	.4byte	.LASF48
	.byte	0x4
	.byte	0xfb
	.byte	0x7
	.4byte	0xa7
	.byte	0x8
	.byte	0xf
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x100
	.byte	0x8
	.4byte	0x3ae
	.byte	0x9
	.byte	0
	.byte	0x9
	.4byte	0xd0
	.4byte	0x3be
	.byte	0xe
	.4byte	0x7c
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x102
	.byte	0x3
	.4byte	0x362
	.byte	0x11
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.2byte	0x114
	.byte	0xe
	.4byte	0x453
	.byte	0x12
	.4byte	.LASF51
	.byte	0
	.byte	0x12
	.4byte	.LASF52
	.byte	0x1
	.byte	0x12
	.4byte	.LASF53
	.byte	0x2
	.byte	0x12
	.4byte	.LASF54
	.byte	0x3
	.byte	0x12
	.4byte	.LASF55
	.byte	0x4
	.byte	0x12
	.4byte	.LASF56
	.byte	0x5
	.byte	0x12
	.4byte	.LASF57
	.byte	0x6
	.byte	0x12
	.4byte	.LASF58
	.byte	0x7
	.byte	0x12
	.4byte	.LASF59
	.byte	0x8
	.byte	0x12
	.4byte	.LASF60
	.byte	0x9
	.byte	0x12
	.4byte	.LASF61
	.byte	0xa
	.byte	0x12
	.4byte	.LASF62
	.byte	0xb
	.byte	0x12
	.4byte	.LASF63
	.byte	0xc
	.byte	0x12
	.4byte	.LASF64
	.byte	0xd
	.byte	0x12
	.4byte	.LASF65
	.byte	0xe
	.byte	0x12
	.4byte	.LASF66
	.byte	0xf
	.byte	0x12
	.4byte	.LASF67
	.byte	0x10
	.byte	0x12
	.4byte	.LASF68
	.byte	0x11
	.byte	0x12
	.4byte	.LASF69
	.byte	0x12
	.byte	0x12
	.4byte	.LASF70
	.byte	0x13
	.byte	0
	.byte	0x10
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x129
	.byte	0x3
	.4byte	0x3cb
	.byte	0x3
	.4byte	.LASF72
	.byte	0x5
	.byte	0xe
	.byte	0xe
	.4byte	0xa7
	.byte	0x13
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x11
	.byte	0xe
	.4byte	0x499
	.byte	0x12
	.4byte	.LASF73
	.byte	0
	.byte	0x12
	.4byte	.LASF74
	.byte	0x1
	.byte	0x12
	.4byte	.LASF75
	.byte	0x2
	.byte	0x12
	.4byte	.LASF76
	.byte	0x3
	.byte	0x12
	.4byte	.LASF77
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	0x252
	.4byte	0x4a9
	.byte	0xe
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1cb
	.byte	0xf
	.4byte	0x499
	.byte	0x5
	.byte	0x3
	.4byte	FatFs
	.byte	0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1cc
	.byte	0xd
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	Fsid
	.byte	0x9
	.4byte	0xb3
	.4byte	0x4df
	.byte	0xe
	.4byte	0x7c
	.byte	0x9
	.byte	0
	.byte	0x5
	.4byte	0x4cf
	.byte	0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x24f
	.byte	0x13
	.4byte	0x4df
	.byte	0x5
	.byte	0x3
	.4byte	DbcTbl
	.byte	0x15
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x128c
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x555
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x128d
	.byte	0xf
	.4byte	0x350
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x17
	.string	"fno"
	.byte	0x1
	.2byte	0x128e
	.byte	0xb
	.4byte	0x555
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x1291
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"dj"
	.byte	0x1
	.2byte	0x1292
	.byte	0x6
	.4byte	0x356
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x3be
	.byte	0x15
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1271
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c6
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x1272
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"fno"
	.byte	0x1
	.2byte	0x1273
	.byte	0xb
	.4byte	0x555
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1274
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x16
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1275
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x1278
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x356
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1258
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x617
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x1259
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"fno"
	.byte	0x1
	.2byte	0x125a
	.byte	0xb
	.4byte	0x555
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x125d
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1234
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x671
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x1235
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"fno"
	.byte	0x1
	.2byte	0x1236
	.byte	0xb
	.4byte	0x555
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x1239
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x123a
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1216
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x6bb
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x1217
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x121a
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x121b
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x11d4
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x715
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x11d5
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x11d6
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x11d9
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x11da
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1131
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x7af
	.byte	0x17
	.string	"fp"
	.byte	0x1
	.2byte	0x1132
	.byte	0x7
	.4byte	0x7af
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.string	"ofs"
	.byte	0x1
	.2byte	0x1133
	.byte	0xa
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x1136
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x1137
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1138
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"bcs"
	.byte	0x1
	.2byte	0x1138
	.byte	0xe
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1139
	.byte	0x8
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x113a
	.byte	0xa
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x2ca
	.byte	0x15
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x105a
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x7ff
	.byte	0x17
	.string	"fp"
	.byte	0x1
	.2byte	0x105b
	.byte	0x7
	.4byte	0x7af
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x105e
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x105f
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x15
	.4byte	.LASF94
	.byte	0x1
	.2byte	0xf2a
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x8eb
	.byte	0x17
	.string	"fp"
	.byte	0x1
	.2byte	0xf2b
	.byte	0x7
	.4byte	0x7af
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x16
	.4byte	.LASF95
	.byte	0x1
	.2byte	0xf2c
	.byte	0x8
	.4byte	0x8eb
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x17
	.string	"btr"
	.byte	0x1
	.2byte	0xf2d
	.byte	0x7
	.4byte	0x9b
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x17
	.string	"br"
	.byte	0x1
	.2byte	0xf2e
	.byte	0x8
	.4byte	0x8ed
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0xf31
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0xf32
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0xf33
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.2byte	0xf34
	.byte	0x8
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.4byte	.LASF96
	.byte	0x1
	.2byte	0xf35
	.byte	0xa
	.4byte	0xed
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x14
	.4byte	.LASF97
	.byte	0x1
	.2byte	0xf36
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x18
	.string	"cc"
	.byte	0x1
	.2byte	0xf36
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x14
	.4byte	.LASF98
	.byte	0x1
	.2byte	0xf36
	.byte	0x11
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x14
	.4byte	.LASF99
	.byte	0x1
	.2byte	0xf37
	.byte	0x8
	.4byte	0x33a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x19
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.4byte	0x9b
	.byte	0x15
	.4byte	.LASF100
	.byte	0x1
	.2byte	0xe6a
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x971
	.byte	0x17
	.string	"fp"
	.byte	0x1
	.2byte	0xe6b
	.byte	0x7
	.4byte	0x7af
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xe6c
	.byte	0xf
	.4byte	0x350
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x16
	.4byte	.LASF101
	.byte	0x1
	.2byte	0xe6d
	.byte	0x7
	.4byte	0xa7
	.byte	0x3
	.byte	0x91
	.byte	0xa7,0x7f
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0xe70
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"dj"
	.byte	0x1
	.2byte	0xe71
	.byte	0x6
	.4byte	0x356
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0xe72
	.byte	0x9
	.4byte	0x252
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x15
	.4byte	.LASF102
	.byte	0x1
	.2byte	0xe3a
	.byte	0x9
	.4byte	0x453
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x9fb
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0xe3b
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xe3c
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.string	"opt"
	.byte	0x1
	.2byte	0xe3d
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x57
	.byte	0x18
	.string	"cfs"
	.byte	0x1
	.2byte	0xe40
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"vol"
	.byte	0x1
	.2byte	0xe41
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0xe42
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x18
	.string	"rp"
	.byte	0x1
	.2byte	0xe43
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x1a
	.4byte	.LASF103
	.byte	0x1
	.2byte	0xe0e
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xa47
	.byte	0x17
	.string	"obj"
	.byte	0x1
	.2byte	0xe0f
	.byte	0xb
	.4byte	0xa47
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"rfs"
	.byte	0x1
	.2byte	0xe10
	.byte	0xa
	.4byte	0xa4d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0xe13
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x258
	.byte	0xc
	.byte	0x4
	.4byte	0x252
	.byte	0x1a
	.4byte	.LASF104
	.byte	0x1
	.2byte	0xd29
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xb51
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xd2a
	.byte	0x10
	.4byte	0xb51
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x17
	.string	"rfs"
	.byte	0x1
	.2byte	0xd2b
	.byte	0xa
	.4byte	0xa4d
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x16
	.4byte	.LASF101
	.byte	0x1
	.2byte	0xd2c
	.byte	0x7
	.4byte	0xa7
	.byte	0x3
	.byte	0x91
	.byte	0xb7,0x7f
	.byte	0x18
	.string	"vol"
	.byte	0x1
	.2byte	0xd2f
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.2byte	0xd30
	.byte	0xa
	.4byte	0x460
	.byte	0x2
	.byte	0x91
	.byte	0x57
	.byte	0x14
	.4byte	.LASF105
	.byte	0x1
	.2byte	0xd31
	.byte	0x8
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x14
	.4byte	.LASF106
	.byte	0x1
	.2byte	0xd32
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LASF107
	.byte	0x1
	.2byte	0xd32
	.byte	0xf
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x14
	.4byte	.LASF108
	.byte	0x1
	.2byte	0xd32
	.byte	0x17
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LASF109
	.byte	0x1
	.2byte	0xd32
	.byte	0x1f
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x14
	.4byte	.LASF110
	.byte	0x1
	.2byte	0xd32
	.byte	0x26
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LASF111
	.byte	0x1
	.2byte	0xd33
	.byte	0x7
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.byte	0x4e
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0xd34
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"fmt"
	.byte	0x1
	.2byte	0xd35
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x350
	.byte	0x1a
	.4byte	.LASF112
	.byte	0x1
	.2byte	0xcf3
	.byte	0xd
	.4byte	0x9b
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xbc0
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0xcf4
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x16
	.4byte	.LASF113
	.byte	0x1
	.2byte	0xcf5
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x18
	.string	"fmt"
	.byte	0x1
	.2byte	0xcf8
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0xcf8
	.byte	0xc
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0xcf9
	.byte	0x8
	.4byte	0xbc0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x9
	.4byte	0xc4
	.4byte	0xbd0
	.byte	0xe
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0x1a
	.4byte	.LASF115
	.byte	0x1
	.2byte	0xcdc
	.byte	0xd
	.4byte	0x9b
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0b
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0xcdd
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0xcde
	.byte	0x8
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF116
	.byte	0x1
	.2byte	0xc4a
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xc82
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xc4b
	.byte	0x10
	.4byte	0xb51
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x18
	.string	"tp"
	.byte	0x1
	.2byte	0xc4e
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.string	"tt"
	.byte	0x1
	.2byte	0xc4e
	.byte	0x14
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"tc"
	.byte	0x1
	.2byte	0xc4f
	.byte	0x8
	.4byte	0xd0
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0xc50
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"vol"
	.byte	0x1
	.2byte	0xc50
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1a
	.4byte	.LASF117
	.byte	0x1
	.2byte	0xbf3
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xceb
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0xbf4
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xbf5
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0xbf8
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"ns"
	.byte	0x1
	.2byte	0xbf9
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0xbfa
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF118
	.byte	0x1
	.2byte	0xb2a
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xd8c
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0xb2b
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0xb2c
	.byte	0x10
	.4byte	0xb51
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x18
	.string	"c"
	.byte	0x1
	.2byte	0xbad
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x18
	.string	"d"
	.byte	0x1
	.2byte	0xbad
	.byte	0xa
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x57
	.byte	0x18
	.string	"sfn"
	.byte	0x1
	.2byte	0xbad
	.byte	0xe
	.4byte	0x33a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"ni"
	.byte	0x1
	.2byte	0xbae
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"si"
	.byte	0x1
	.2byte	0xbae
	.byte	0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0xbae
	.byte	0xf
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.string	"p"
	.byte	0x1
	.2byte	0xbaf
	.byte	0xe
	.4byte	0xd8c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xe8
	.byte	0x1a
	.4byte	.LASF119
	.byte	0x1
	.2byte	0xafb
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xe48
	.byte	0x17
	.string	"pat"
	.byte	0x1
	.2byte	0xafc
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.string	"nam"
	.byte	0x1
	.2byte	0xafd
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x16
	.4byte	.LASF120
	.byte	0x1
	.2byte	0xafe
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x17
	.string	"inf"
	.byte	0x1
	.2byte	0xaff
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x18
	.string	"pp"
	.byte	0x1
	.2byte	0xb02
	.byte	0xf
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"np"
	.byte	0x1
	.2byte	0xb02
	.byte	0x14
	.4byte	0x350
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"pc"
	.byte	0x1
	.2byte	0xb03
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.string	"nc"
	.byte	0x1
	.2byte	0xb03
	.byte	0xc
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"nm"
	.byte	0x1
	.2byte	0xb04
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"nx"
	.byte	0x1
	.2byte	0xb04
	.byte	0xa
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1a
	.4byte	.LASF121
	.byte	0x1
	.2byte	0xadc
	.byte	0xe
	.4byte	0xc4
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xe84
	.byte	0x17
	.string	"ptr"
	.byte	0x1
	.2byte	0xadd
	.byte	0x10
	.4byte	0xb51
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"chr"
	.byte	0x1
	.2byte	0xae0
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1c
	.4byte	.LASF135
	.byte	0x1
	.2byte	0xa72
	.byte	0xd
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xee7
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0xa73
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"fno"
	.byte	0x1
	.2byte	0xa74
	.byte	0xb
	.4byte	0x555
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"si"
	.byte	0x1
	.2byte	0xa77
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"di"
	.byte	0x1
	.2byte	0xa77
	.byte	0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"c"
	.byte	0x1
	.2byte	0xa7d
	.byte	0x8
	.4byte	0xd0
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0x1a
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x989
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xf3f
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x98a
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x98d
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x98e
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"c"
	.byte	0x1
	.2byte	0x98f
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0x1a
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x93b
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xfb7
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x93c
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"vol"
	.byte	0x1
	.2byte	0x93d
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x940
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x941
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x942
	.byte	0x7
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0x18
	.string	"b"
	.byte	0x1
	.2byte	0x942
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0x1a
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x747
	.byte	0xe
	.4byte	0xc4
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x1001
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0x748
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"dir"
	.byte	0x1
	.2byte	0x749
	.byte	0xe
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"cl"
	.byte	0x1
	.2byte	0x74c
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0xb3
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x6e0
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x1071
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x6e1
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x6e2
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"ofs"
	.byte	0x1
	.2byte	0x6e5
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x6e5
	.byte	0xd
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x6e6
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x6b0
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x10db
	.byte	0x17
	.string	"dp"
	.byte	0x1
	.2byte	0x6b1
	.byte	0x7
	.4byte	0x5c6
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"ofs"
	.byte	0x1
	.2byte	0x6b2
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"csz"
	.byte	0x1
	.2byte	0x6b5
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x6b5
	.byte	0xd
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x6b6
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x49a
	.byte	0xe
	.4byte	0xc4
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1154
	.byte	0x17
	.string	"obj"
	.byte	0x1
	.2byte	0x49b
	.byte	0xb
	.4byte	0xa47
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x49c
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"wc"
	.byte	0x1
	.2byte	0x49f
	.byte	0x7
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.string	"bc"
	.byte	0x1
	.2byte	0x49f
	.byte	0xb
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x18
	.string	"val"
	.byte	0x1
	.2byte	0x4a0
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"fs"
	.byte	0x1
	.2byte	0x4a1
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x489
	.byte	0xe
	.4byte	0xf9
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x118f
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0x48a
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x16
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x48b
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1a
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x445
	.byte	0x10
	.4byte	0x453
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x11da
	.byte	0x17
	.string	"fs"
	.byte	0x1
	.2byte	0x446
	.byte	0x9
	.4byte	0x252
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x447
	.byte	0x8
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x18
	.string	"res"
	.byte	0x1
	.2byte	0x44a
	.byte	0xa
	.4byte	0x453
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1b
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x2ee
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1204
	.byte	0x17
	.string	"c"
	.byte	0x1
	.2byte	0x2ee
	.byte	0x1a
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1b
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x2da
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x122e
	.byte	0x17
	.string	"c"
	.byte	0x1
	.2byte	0x2da
	.byte	0x1a
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1b
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x2d2
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x126a
	.byte	0x17
	.string	"str"
	.byte	0x1
	.2byte	0x2d2
	.byte	0x21
	.4byte	0xd8c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"chr"
	.byte	0x1
	.2byte	0x2d2
	.byte	0x2a
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x2c4
	.byte	0xc
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e0
	.byte	0x17
	.string	"dst"
	.byte	0x1
	.2byte	0x2c4
	.byte	0x21
	.4byte	0x12e0
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"src"
	.byte	0x1
	.2byte	0x2c4
	.byte	0x32
	.4byte	0x12e0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.2byte	0x2c4
	.byte	0x3c
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.string	"d"
	.byte	0x1
	.2byte	0x2c6
	.byte	0xe
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"s"
	.byte	0x1
	.2byte	0x2c6
	.byte	0x26
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.string	"r"
	.byte	0x1
	.2byte	0x2c7
	.byte	0x6
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x12e6
	.byte	0x1d
	.byte	0x1e
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x2b9
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x133d
	.byte	0x17
	.string	"dst"
	.byte	0x1
	.2byte	0x2b9
	.byte	0x1c
	.4byte	0x8eb
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"val"
	.byte	0x1
	.2byte	0x2b9
	.byte	0x25
	.4byte	0x75
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.2byte	0x2b9
	.byte	0x2f
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.string	"d"
	.byte	0x1
	.2byte	0x2bb
	.byte	0x8
	.4byte	0x33a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1e
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x2ab
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x13a1
	.byte	0x17
	.string	"dst"
	.byte	0x1
	.2byte	0x2ab
	.byte	0x1c
	.4byte	0x8eb
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"src"
	.byte	0x1
	.2byte	0x2ab
	.byte	0x2d
	.4byte	0x12e0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.2byte	0x2ab
	.byte	0x37
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.string	"d"
	.byte	0x1
	.2byte	0x2ad
	.byte	0x8
	.4byte	0x33a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.string	"s"
	.byte	0x1
	.2byte	0x2ae
	.byte	0xe
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1b
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x26a
	.byte	0xe
	.4byte	0xc4
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x13dc
	.byte	0x17
	.string	"ptr"
	.byte	0x1
	.2byte	0x26a
	.byte	0x24
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"rv"
	.byte	0x1
	.2byte	0x26c
	.byte	0x8
	.4byte	0xc4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x261
	.byte	0xd
	.4byte	0xb8
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x17
	.string	"ptr"
	.byte	0x1
	.2byte	0x261
	.byte	0x22
	.4byte	0x1001
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x18
	.string	"rv"
	.byte	0x1
	.2byte	0x263
	.byte	0x7
	.4byte	0xb8
	.byte	0x2
	.byte	0x91
	.byte	0x6e
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
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
	.byte	0x7
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
	.byte	0x8
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x1b
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x26
	.byte	0
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
	.byte	0x5
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
	.byte	0x1f
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x13c
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF75:
	.string	"RES_WRPRT"
.LASF69:
	.string	"FR_TOO_MANY_OPEN_FILES"
.LASF21:
	.string	"fs_type"
.LASF98:
	.string	"csect"
.LASF133:
	.string	"chk_chr"
.LASF141:
	.string	"ff.c"
.LASF94:
	.string	"f_read"
.LASF76:
	.string	"RES_NOTRDY"
.LASF26:
	.string	"n_rootdir"
.LASF81:
	.string	"path"
.LASF99:
	.string	"rbuff"
.LASF9:
	.string	"long long unsigned int"
.LASF140:
	.string	"GNU C17 8.2.0 -march=rv32ic -mno-div -mabi=ilp32 -g -ggdb -O0 -ffunction-sections"
.LASF44:
	.string	"sect"
.LASF108:
	.string	"fasize"
.LASF111:
	.string	"nrsv"
.LASF136:
	.string	"mem_set"
.LASF32:
	.string	"dirbase"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF95:
	.string	"buff"
.LASF70:
	.string	"FR_INVALID_PARAMETER"
.LASF29:
	.string	"fsize"
.LASF28:
	.string	"n_fatent"
.LASF60:
	.string	"FR_INVALID_OBJECT"
.LASF4:
	.string	"long int"
.LASF132:
	.string	"dbc_1st"
.LASF77:
	.string	"RES_PARERR"
.LASF23:
	.string	"n_fats"
.LASF78:
	.string	"FatFs"
.LASF64:
	.string	"FR_NO_FILESYSTEM"
.LASF11:
	.string	"uint16_t"
.LASF68:
	.string	"FR_NOT_ENOUGH_CORE"
.LASF59:
	.string	"FR_EXIST"
.LASF31:
	.string	"fatbase"
.LASF16:
	.string	"DWORD"
.LASF19:
	.string	"FSIZE_t"
.LASF121:
	.string	"get_achar"
.LASF119:
	.string	"pattern_matching"
.LASF82:
	.string	"f_stat"
.LASF6:
	.string	"__uint32_t"
.LASF126:
	.string	"stretch"
.LASF27:
	.string	"csize"
.LASF83:
	.string	"f_findfirst"
.LASF22:
	.string	"pdrv"
.LASF14:
	.string	"BYTE"
.LASF36:
	.string	"attr"
.LASF129:
	.string	"clst2sect"
.LASF127:
	.string	"dir_sdi"
.LASF10:
	.string	"unsigned int"
.LASF13:
	.string	"UINT"
.LASF47:
	.string	"ftime"
.LASF7:
	.string	"long unsigned int"
.LASF93:
	.string	"f_close"
.LASF105:
	.string	"bsect"
.LASF107:
	.string	"sysect"
.LASF3:
	.string	"short unsigned int"
.LASF33:
	.string	"database"
.LASF90:
	.string	"clst"
.LASF53:
	.string	"FR_INT_ERR"
.LASF52:
	.string	"FR_DISK_ERR"
.LASF34:
	.string	"winsect"
.LASF134:
	.string	"mem_cmp"
.LASF110:
	.string	"szbfat"
.LASF125:
	.string	"dir_next"
.LASF51:
	.string	"FR_OK"
.LASF80:
	.string	"DbcTbl"
.LASF49:
	.string	"fname"
.LASF92:
	.string	"ifptr"
.LASF61:
	.string	"FR_WRITE_PROTECTED"
.LASF35:
	.string	"FATFS"
.LASF46:
	.string	"fdate"
.LASF42:
	.string	"fptr"
.LASF114:
	.string	"mbr_pt"
.LASF124:
	.string	"ld_clust"
.LASF135:
	.string	"get_fileinfo"
.LASF109:
	.string	"nclst"
.LASF66:
	.string	"FR_TIMEOUT"
.LASF15:
	.string	"WORD"
.LASF38:
	.string	"sclust"
.LASF73:
	.string	"RES_OK"
.LASF55:
	.string	"FR_NO_FILE"
.LASF17:
	.string	"TCHAR"
.LASF84:
	.string	"pattern"
.LASF63:
	.string	"FR_NOT_ENABLED"
.LASF116:
	.string	"get_ldnumber"
.LASF130:
	.string	"move_window"
.LASF39:
	.string	"objsize"
.LASF102:
	.string	"f_mount"
.LASF128:
	.string	"get_fat"
.LASF89:
	.string	"f_lseek"
.LASF104:
	.string	"mount_volume"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF112:
	.string	"find_volume"
.LASF41:
	.string	"flag"
.LASF117:
	.string	"follow_path"
.LASF115:
	.string	"check_fs"
.LASF62:
	.string	"FR_INVALID_DRIVE"
.LASF58:
	.string	"FR_DENIED"
.LASF103:
	.string	"validate"
.LASF45:
	.string	"dptr"
.LASF65:
	.string	"FR_MKFS_ABORTED"
.LASF86:
	.string	"f_readdir"
.LASF67:
	.string	"FR_LOCKED"
.LASF24:
	.string	"wflag"
.LASF12:
	.string	"uint32_t"
.LASF18:
	.string	"char"
.LASF85:
	.string	"f_findnext"
.LASF101:
	.string	"mode"
.LASF118:
	.string	"create_name"
.LASF5:
	.string	"__uint16_t"
.LASF72:
	.string	"DSTATUS"
.LASF120:
	.string	"skip"
.LASF131:
	.string	"dbc_2nd"
.LASF30:
	.string	"volbase"
.LASF139:
	.string	"ld_word"
.LASF88:
	.string	"f_opendir"
.LASF57:
	.string	"FR_INVALID_NAME"
.LASF113:
	.string	"part"
.LASF138:
	.string	"ld_dword"
.LASF25:
	.string	"fsi_flag"
.LASF137:
	.string	"mem_cpy"
.LASF96:
	.string	"remain"
.LASF48:
	.string	"fattrib"
.LASF142:
	.string	"C:\\\\Users\\\\mio\\\\Desktop\\\\github\\\\ECP5_Brieysoc\\\\saxon"
.LASF50:
	.string	"FILINFO"
.LASF97:
	.string	"rcnt"
.LASF20:
	.string	"LBA_t"
.LASF91:
	.string	"nsect"
.LASF37:
	.string	"stat"
.LASF71:
	.string	"FRESULT"
.LASF74:
	.string	"RES_ERROR"
.LASF122:
	.string	"dir_find"
.LASF123:
	.string	"dir_read"
.LASF100:
	.string	"f_open"
.LASF56:
	.string	"FR_NO_PATH"
.LASF87:
	.string	"f_closedir"
.LASF54:
	.string	"FR_NOT_READY"
.LASF40:
	.string	"FFOBJID"
.LASF79:
	.string	"Fsid"
.LASF43:
	.string	"clust"
.LASF106:
	.string	"tsect"
	.ident	"GCC: (GNU MCU Eclipse RISC-V Embedded GCC, 64-bit) 8.2.0"
