	.file	"doit_light_Ambilight.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_led_effect_disenable,"ax",@progbits
	.align	1
	.globl	set_led_effect_disenable
	.type	set_led_effect_disenable, @function
set_led_effect_disenable:
.LFB5:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_Ambilight.c"
	.loc 1 45 1
	.cfi_startproc
.LVL0:
	.loc 1 46 2
	.loc 1 45 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 45 1
	mv	s0,a0
	.loc 1 46 35
	call	product_get_status
.LVL1:
	.loc 1 47 2 is_stmt 1
	.loc 1 47 18 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	s0,%lo(.LANCHOR0)(a5)
	.loc 1 48 2 is_stmt 1
	.loc 1 48 5 is_stmt 0
	lbu	a5,12(a0)
	beq	a5,s0,.L1
	.loc 1 49 3 is_stmt 1
	.loc 1 49 34 is_stmt 0
	sb	s0,12(a0)
	.loc 1 50 3 is_stmt 1
	.loc 1 52 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 50 3
	tail	product_save_status
.LVL2:
.L1:
	.cfi_restore_state
	.loc 1 52 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	set_led_effect_disenable, .-set_led_effect_disenable
	.section	.text.get_led_effect_disenable,"ax",@progbits
	.align	1
	.globl	get_led_effect_disenable
	.type	get_led_effect_disenable, @function
get_led_effect_disenable:
.LFB6:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
	.loc 1 57 2
	.loc 1 58 1 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a0,%lo(.LANCHOR0)(a5)
	ret
	.cfi_endproc
.LFE6:
	.size	get_led_effect_disenable, .-get_led_effect_disenable
	.section	.text.set_all_led_effect,"ax",@progbits
	.align	1
	.globl	set_all_led_effect
	.type	set_all_led_effect, @function
set_all_led_effect:
.LFB7:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 83 2
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 82 1
	mv	s0,a0
	.loc 1 83 35
	call	product_get_status
.LVL4:
	.loc 1 84 2 is_stmt 1
	.loc 1 84 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sb	s0,%lo(.LANCHOR1)(a5)
	.loc 1 85 2 is_stmt 1
	.loc 1 85 5 is_stmt 0
	lbu	a5,13(a0)
	beq	a5,s0,.L5
	.loc 1 86 3 is_stmt 1
	.loc 1 86 35 is_stmt 0
	sb	s0,13(a0)
	.loc 1 87 3 is_stmt 1
	.loc 1 89 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 87 3
	tail	product_save_status
.LVL5:
.L5:
	.cfi_restore_state
	.loc 1 89 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	set_all_led_effect, .-set_all_led_effect
	.section	.text.rgb_color_flash,"ax",@progbits
	.align	1
	.globl	rgb_color_flash
	.type	rgb_color_flash, @function
rgb_color_flash:
.LFB8:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 97 2
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	lui	a5,%hi(.LANCHOR2)
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 97 14
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	sb	zero,30(sp)
	.loc 1 99 2 is_stmt 1
	.loc 1 101 2
	.loc 1 101 5 is_stmt 0
	li	a4,23
	addi	a5,a5,%lo(.LANCHOR2)
	bne	a0,a4,.L9
	.loc 1 102 3 is_stmt 1
	.loc 1 102 12 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 103 6
	li	a3,6
	.loc 1 102 12
	addi	a4,a4,1
	andi	a4,a4,0xff
	sb	a4,0(a5)
	.loc 1 103 3 is_stmt 1
	.loc 1 103 6 is_stmt 0
	bleu	a4,a3,.L10
.L15:
	.loc 1 104 4 is_stmt 1
	.loc 1 104 14 is_stmt 0
	sb	zero,0(a5)
	.loc 1 162 2 is_stmt 1
.L37:
	.loc 1 180 12 is_stmt 0
	li	a5,255
	sh	a5,24(sp)
	.loc 1 180 54 is_stmt 1
	.loc 1 180 70
.L36:
	.loc 1 195 52
	.loc 1 195 68
	.loc 1 195 76 is_stmt 0
	li	a5,1
	sb	a5,30(sp)
	.loc 1 196 3 is_stmt 1
.L25:
	.loc 1 202 2
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
.LVL7:
	call	memcpy
.LVL8:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL9:
	.loc 1 203 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L9:
	.cfi_restore_state
	.loc 1 108 7 is_stmt 1
	.loc 1 108 10 is_stmt 0
	li	a4,27
	bne	a0,a4,.L12
	.loc 1 109 3 is_stmt 1
	.loc 1 109 17 is_stmt 0
	lbu	a4,0(a5)
	.loc 1 109 6
	bne	a4,zero,.L13
.L18:
	.loc 1 110 4 is_stmt 1
	.loc 1 110 14 is_stmt 0
	li	a4,1
	sb	a4,0(a5)
	.loc 1 162 2 is_stmt 1
.L14:
	.loc 1 170 3
	.loc 1 170 17
	.loc 1 170 28 is_stmt 0
	li	a5,255
.L39:
	.loc 1 190 19 is_stmt 1
	.loc 1 190 30 is_stmt 0
	sh	a5,22(sp)
	.loc 1 190 37 is_stmt 1
	.loc 1 190 52
	.loc 1 190 68
	j	.L36
.L13:
	.loc 1 112 8
	.loc 1 112 11 is_stmt 0
	li	a3,1
	bne	a4,a3,.L15
.L20:
	.loc 1 113 4 is_stmt 1
	.loc 1 113 14 is_stmt 0
	li	a4,2
	sb	a4,0(a5)
	.loc 1 162 2 is_stmt 1
.L16:
	.loc 1 175 3
	.loc 1 175 17
	.loc 1 175 33
	.loc 1 175 43 is_stmt 0
	li	a5,255
.L38:
	.loc 1 185 19 is_stmt 1
	.loc 1 185 35
	.loc 1 185 45 is_stmt 0
	sh	a5,20(sp)
	.loc 1 185 52 is_stmt 1
	.loc 1 185 68
	j	.L36
.L12:
	.loc 1 119 7
	.loc 1 119 10 is_stmt 0
	li	a4,19
	bne	a0,a4,.L17
	.loc 1 120 3 is_stmt 1
	.loc 1 120 6 is_stmt 0
	lbu	a4,0(a5)
	beq	a4,zero,.L18
	j	.L15
.L17:
	.loc 1 127 7 is_stmt 1
	.loc 1 127 10 is_stmt 0
	li	a4,20
	bne	a0,a4,.L19
	.loc 1 128 3 is_stmt 1
	.loc 1 128 6 is_stmt 0
	lbu	a4,0(a5)
	beq	a4,zero,.L20
	j	.L15
.L19:
	.loc 1 135 7 is_stmt 1
	.loc 1 135 10 is_stmt 0
	li	a4,21
	bne	a0,a4,.L21
	.loc 1 136 3 is_stmt 1
	.loc 1 136 6 is_stmt 0
	lbu	a3,0(a5)
	li	a4,1
	bne	a3,a4,.L18
	j	.L20
.L21:
	.loc 1 143 7 is_stmt 1
	.loc 1 143 10 is_stmt 0
	li	a4,9
	beq	a0,a4,.L15
	.loc 1 147 7 is_stmt 1
	.loc 1 147 10 is_stmt 0
	li	a4,10
	beq	a0,a4,.L18
	.loc 1 151 7 is_stmt 1
	.loc 1 151 10 is_stmt 0
	li	a4,11
	beq	a0,a4,.L20
	.loc 1 155 7 is_stmt 1
	.loc 1 155 10 is_stmt 0
	li	a4,24
	bne	a0,a4,.L22
	.loc 1 156 3 is_stmt 1
	.loc 1 156 13 is_stmt 0
	li	a4,3
	sb	a4,0(a5)
	.loc 1 162 2 is_stmt 1
.L23:
	.loc 1 180 3
	.loc 1 180 19
	.loc 1 180 37
	.loc 1 180 47 is_stmt 0
	li	a5,16711680
	addi	a5,a5,255
	sw	a5,20(sp)
	j	.L37
.L22:
	.loc 1 159 7 is_stmt 1
	.loc 1 159 10 is_stmt 0
	li	a4,12
	bne	a0,a4,.L10
	.loc 1 160 3 is_stmt 1
	.loc 1 160 13 is_stmt 0
	li	a4,5
	sb	a4,0(a5)
	.loc 1 162 2 is_stmt 1
.L24:
	.loc 1 190 3
	.loc 1 190 12 is_stmt 0
	li	a5,255
	sh	a5,24(sp)
	j	.L39
.L10:
	.loc 1 162 2 is_stmt 1
	lbu	a5,0(a5)
	li	a4,6
	bgtu	a5,a4,.L25
	lui	a4,%hi(.L27)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L27)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.rgb_color_flash,"a",@progbits
	.align	2
	.align	2
.L27:
	.word	.L37
	.word	.L14
	.word	.L16
	.word	.L23
	.word	.L28
	.word	.L24
	.word	.L26
	.section	.text.rgb_color_flash
.L28:
	.loc 1 185 3
	.loc 1 185 12 is_stmt 0
	li	a5,255
	sh	a5,24(sp)
	j	.L38
.L26:
	.loc 1 195 3 is_stmt 1
	.loc 1 195 17
	.loc 1 195 35
	.loc 1 195 45 is_stmt 0
	li	a5,16711680
	addi	a5,a5,255
	sw	a5,20(sp)
	j	.L36
	.cfi_endproc
.LFE8:
	.size	rgb_color_flash, .-rgb_color_flash
	.section	.text.singel_color_gradient_effect,"ax",@progbits
	.align	1
	.globl	singel_color_gradient_effect
	.type	singel_color_gradient_effect, @function
singel_color_gradient_effect:
.LFB9:
	.loc 1 210 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 211 2
	.loc 1 212 2
	.loc 1 213 2
	.loc 1 214 2
	.loc 1 210 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 214 6
	lui	a4,%hi(.LANCHOR4)
	.loc 1 210 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 214 6
	addi	a4,a4,%lo(.LANCHOR4)
	.loc 1 214 5
	lbu	a3,0(a4)
	lui	a2,%hi(.LANCHOR3)
	lw	a5,%lo(.LANCHOR3)(a2)
	addi	a2,a2,%lo(.LANCHOR3)
	beq	a3,zero,.L41
	.loc 1 215 3 is_stmt 1
	.loc 1 215 14 is_stmt 0
	addi	a5,a5,1
	.loc 1 216 3 is_stmt 1
	.loc 1 216 6 is_stmt 0
	li	a3,99
	bgt	a5,a3,.L42
.L56:
	.loc 1 221 14
	sw	a5,0(a2)
	j	.L43
.L42:
	.loc 1 217 4 is_stmt 1
	.loc 1 217 15 is_stmt 0
	li	a5,100
	sw	a5,0(a2)
	.loc 1 218 4 is_stmt 1
	.loc 1 218 18 is_stmt 0
	sb	zero,0(a4)
.L43:
	.loc 1 228 2 is_stmt 1
	addi	a0,a0,-2
.LVL12:
	lui	a3,%hi(.LANCHOR5)
	lui	a4,%hi(.LANCHOR6)
	lui	a5,%hi(.LANCHOR7)
	andi	a0,a0,0xff
	li	a1,6
	addi	a3,a3,%lo(.LANCHOR5)
	addi	a4,a4,%lo(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR7)
	bgtu	a0,a1,.L46
	lui	a1,%hi(.L48)
	addi	a1,a1,%lo(.L48)
	slli	a0,a0,2
	add	a0,a0,a1
	lw	a1,0(a0)
	jr	a1
	.section	.rodata.singel_color_gradient_effect,"a",@progbits
	.align	2
	.align	2
.L48:
	.word	.L54
	.word	.L53
	.word	.L52
	.word	.L51
	.word	.L50
	.word	.L49
	.word	.L47
	.section	.text.singel_color_gradient_effect
.LVL13:
.L41:
	.loc 1 221 3
	.loc 1 221 14 is_stmt 0
	addi	a5,a5,-1
	.loc 1 222 3 is_stmt 1
	.loc 1 222 6 is_stmt 0
	li	a3,5
	bgt	a5,a3,.L56
	.loc 1 223 4 is_stmt 1
	.loc 1 224 18 is_stmt 0
	li	a5,1
	.loc 1 223 15
	sw	a3,0(a2)
	.loc 1 224 4 is_stmt 1
	.loc 1 224 18 is_stmt 0
	sb	a5,0(a4)
	j	.L43
.LVL14:
.L54:
	.loc 1 231 3 is_stmt 1
	.loc 1 231 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 232 3 is_stmt 1
	.loc 1 232 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 233 3 is_stmt 1
.L57:
	.loc 1 240 3
	.loc 1 240 14 is_stmt 0
	sb	zero,0(a5)
	.loc 1 241 3 is_stmt 1
.L46:
	.loc 1 282 2
	.loc 1 284 10 is_stmt 0
	li	a1,1
	sb	a1,30(sp)
	.loc 1 285 25
	lbu	a3,0(a3)
	lw	a1,0(a2)
	.loc 1 286 27
	lbu	a4,0(a4)
	.loc 1 287 26
	lbu	a5,0(a5)
	.loc 1 285 25
	mul	a3,a3,a1
	.loc 1 285 39
	li	a2,100
	.loc 1 288 2
	mv	a0,sp
	.loc 1 282 14
	sh	zero,26(sp)
	sh	zero,28(sp)
	.loc 1 284 2 is_stmt 1
	.loc 1 285 2
	.loc 1 286 27 is_stmt 0
	mul	a4,a4,a1
	.loc 1 287 26
	mul	a5,a5,a1
	.loc 1 288 2
	addi	a1,sp,20
	.loc 1 285 39
	div	a3,a3,a2
	.loc 1 286 41
	div	a4,a4,a2
	.loc 1 285 11
	sh	a3,24(sp)
	.loc 1 286 2 is_stmt 1
	.loc 1 287 40 is_stmt 0
	div	a5,a5,a2
	.loc 1 288 2
	li	a2,12
	.loc 1 286 13
	sh	a4,22(sp)
	.loc 1 287 2 is_stmt 1
	.loc 1 287 12 is_stmt 0
	sh	a5,20(sp)
	.loc 1 288 2 is_stmt 1
	call	memcpy
.LVL15:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL16:
	.loc 1 289 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L53:
	.cfi_restore_state
	.loc 1 238 3 is_stmt 1
	.loc 1 238 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 239 3 is_stmt 1
	.loc 1 239 14 is_stmt 0
	li	a1,-1
.L60:
	sb	a1,0(a4)
	j	.L57
.L52:
	.loc 1 245 3 is_stmt 1
	.loc 1 245 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 246 3 is_stmt 1
	.loc 1 246 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 247 3 is_stmt 1
	.loc 1 247 14 is_stmt 0
	li	a1,-1
.L58:
	.loc 1 275 3 is_stmt 1
	.loc 1 275 14 is_stmt 0
	sb	a1,0(a5)
	.loc 1 276 3 is_stmt 1
	j	.L46
.L51:
	.loc 1 252 3
	.loc 1 252 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 253 3 is_stmt 1
	j	.L60
.L50:
	.loc 1 259 3
	.loc 1 259 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 260 3 is_stmt 1
	.loc 1 260 14 is_stmt 0
	li	a1,-1
.L59:
	.loc 1 274 3 is_stmt 1
	.loc 1 274 14 is_stmt 0
	sb	a1,0(a4)
	j	.L58
.L49:
	.loc 1 266 3 is_stmt 1
	.loc 1 266 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 267 3 is_stmt 1
	.loc 1 267 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 268 3 is_stmt 1
	j	.L58
.L47:
	.loc 1 273 3
	.loc 1 273 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	j	.L59
	.cfi_endproc
.LFE9:
	.size	singel_color_gradient_effect, .-singel_color_gradient_effect
	.section	.text.double_color_gradient_effect,"ax",@progbits
	.align	1
	.globl	double_color_gradient_effect
	.type	double_color_gradient_effect, @function
double_color_gradient_effect:
.LFB10:
	.loc 1 295 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 296 2
	.loc 1 297 2
	.loc 1 299 2
	.loc 1 295 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 299 20
	lui	a5,%hi(.LANCHOR8)
	.loc 1 295 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 299 20
	addi	a5,a5,%lo(.LANCHOR8)
	lbu	a4,0(a5)
	.loc 1 299 5
	bne	a4,zero,.L62
	.loc 1 300 3 is_stmt 1
	.loc 1 300 19 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a4,a4,%lo(.LANCHOR9)
	lw	a3,0(a4)
	.loc 1 301 19
	lui	a2,%hi(.LANCHOR10)
	sw	zero,%lo(.LANCHOR10)(a2)
	.loc 1 300 19
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 301 3 is_stmt 1
	.loc 1 303 3
	.loc 1 303 6 is_stmt 0
	li	a2,254
	ble	a3,a2,.L64
	.loc 1 304 4 is_stmt 1
	.loc 1 304 20 is_stmt 0
	li	a3,255
	sw	a3,0(a4)
	.loc 1 305 4 is_stmt 1
	.loc 1 306 4
	.loc 1 306 18 is_stmt 0
	li	a4,1
.L74:
	.loc 1 325 18
	sb	a4,0(a5)
.L64:
	.loc 1 337 2 is_stmt 1
	.loc 1 339 2
	.loc 1 340 2
	.loc 1 340 10 is_stmt 0
	li	a5,1
	sb	a5,30(sp)
	.loc 1 342 2 is_stmt 1
	.loc 1 339 14 is_stmt 0
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	.loc 1 342 5
	li	a5,13
	bne	a0,a5,.L70
	.loc 1 343 3 is_stmt 1
	.loc 1 343 12 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	lw	a5,%lo(.LANCHOR9)(a5)
	sh	a5,24(sp)
	.loc 1 344 3 is_stmt 1
	.loc 1 344 14 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	lw	a5,%lo(.LANCHOR10)(a5)
	sh	a5,22(sp)
	.loc 1 345 3 is_stmt 1
.L71:
	.loc 1 359 2
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
.LVL18:
	call	memcpy
.LVL19:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL20:
	.loc 1 360 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL21:
.L62:
	.cfi_restore_state
	.loc 1 309 7 is_stmt 1
	.loc 1 309 10 is_stmt 0
	li	a3,1
	bne	a4,a3,.L65
	.loc 1 311 3 is_stmt 1
	.loc 1 311 19 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	addi	a4,a4,%lo(.LANCHOR9)
	lw	a3,0(a4)
	.loc 1 312 19
	lui	a2,%hi(.LANCHOR10)
	sw	zero,%lo(.LANCHOR10)(a2)
	.loc 1 311 19
	addi	a3,a3,-1
	sw	a3,0(a4)
	.loc 1 312 3 is_stmt 1
	.loc 1 313 3
	.loc 1 313 6 is_stmt 0
	bgt	a3,zero,.L64
	.loc 1 314 4 is_stmt 1
	.loc 1 314 20 is_stmt 0
	sw	zero,0(a4)
	.loc 1 315 4 is_stmt 1
	.loc 1 316 4
	.loc 1 316 18 is_stmt 0
	li	a4,2
	j	.L74
.L65:
	.loc 1 319 7 is_stmt 1
	.loc 1 319 10 is_stmt 0
	li	a3,2
	bne	a4,a3,.L67
	.loc 1 320 3 is_stmt 1
	.loc 1 320 19 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	sw	zero,%lo(.LANCHOR9)(a4)
	.loc 1 321 3 is_stmt 1
	.loc 1 321 19 is_stmt 0
	lui	a4,%hi(.LANCHOR10)
	addi	a4,a4,%lo(.LANCHOR10)
	lw	a3,0(a4)
	.loc 1 322 6
	li	a2,254
	.loc 1 321 19
	addi	a3,a3,1
	.loc 1 322 3 is_stmt 1
	.loc 1 322 6 is_stmt 0
	bgt	a3,a2,.L68
.L75:
	.loc 1 330 19
	sw	a3,0(a4)
	j	.L64
.L68:
	.loc 1 323 4 is_stmt 1
	.loc 1 324 4
	.loc 1 324 20 is_stmt 0
	li	a3,255
	sw	a3,0(a4)
	.loc 1 325 4 is_stmt 1
	.loc 1 325 18 is_stmt 0
	li	a4,3
	j	.L74
.L67:
	.loc 1 328 7 is_stmt 1
	.loc 1 328 10 is_stmt 0
	li	a3,3
	bne	a4,a3,.L64
	.loc 1 329 3 is_stmt 1
	.loc 1 329 19 is_stmt 0
	lui	a4,%hi(.LANCHOR9)
	sw	zero,%lo(.LANCHOR9)(a4)
	.loc 1 330 3 is_stmt 1
	.loc 1 330 19 is_stmt 0
	lui	a4,%hi(.LANCHOR10)
	addi	a4,a4,%lo(.LANCHOR10)
	lw	a3,0(a4)
	.loc 1 331 6
	li	a2,5
	.loc 1 330 19
	addi	a3,a3,-1
	.loc 1 331 3 is_stmt 1
	.loc 1 331 6 is_stmt 0
	bgt	a3,a2,.L75
	.loc 1 332 4 is_stmt 1
	.loc 1 333 4
	.loc 1 333 20 is_stmt 0
	sw	zero,0(a4)
	.loc 1 334 4 is_stmt 1
	.loc 1 334 18 is_stmt 0
	sb	zero,0(a5)
	j	.L64
.L70:
	.loc 1 348 7 is_stmt 1
	.loc 1 348 10 is_stmt 0
	li	a5,14
	bne	a0,a5,.L72
	.loc 1 349 3 is_stmt 1
	.loc 1 349 12 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	lw	a5,%lo(.LANCHOR9)(a5)
	sh	a5,24(sp)
	.loc 1 350 3 is_stmt 1
	.loc 1 351 3
.L76:
	.loc 1 357 3
	.loc 1 357 13 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	lw	a5,%lo(.LANCHOR10)(a5)
	sh	a5,20(sp)
	j	.L71
.L72:
	.loc 1 354 7 is_stmt 1
	.loc 1 354 10 is_stmt 0
	li	a5,15
	bne	a0,a5,.L71
	.loc 1 355 3 is_stmt 1
	.loc 1 356 3
	.loc 1 356 14 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	lw	a5,%lo(.LANCHOR9)(a5)
	sh	a5,22(sp)
	j	.L76
	.cfi_endproc
.LFE10:
	.size	double_color_gradient_effect, .-double_color_gradient_effect
	.section	.text.mult_color_gradient_effect,"ax",@progbits
	.align	1
	.globl	mult_color_gradient_effect
	.type	mult_color_gradient_effect, @function
mult_color_gradient_effect:
.LFB11:
	.loc 1 364 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 365 2
	.loc 1 366 2
	.loc 1 367 2
	.loc 1 368 2
	.loc 1 369 2
	.loc 1 371 2
	.loc 1 371 5 is_stmt 0
	li	a5,1
	beq	a0,a5,.L78
	.loc 1 371 53 discriminator 1
	li	a5,25
	bne	a0,a5,.L98
.L78:
	.loc 1 374 2 is_stmt 1
	.loc 1 364 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 374 6
	lui	a3,%hi(.LANCHOR13)
	.loc 1 364 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 374 6
	addi	a3,a3,%lo(.LANCHOR13)
	.loc 1 374 5
	lbu	a1,0(a3)
	lui	a2,%hi(.LANCHOR11)
	lui	a6,%hi(.LANCHOR12)
	lw	a5,%lo(.LANCHOR11)(a2)
	lbu	a4,%lo(.LANCHOR12)(a6)
	addi	a2,a2,%lo(.LANCHOR11)
	addi	a6,a6,%lo(.LANCHOR12)
	beq	a1,zero,.L80
	.loc 1 375 3 is_stmt 1
	.loc 1 375 14 is_stmt 0
	addi	a5,a5,1
	.loc 1 376 3 is_stmt 1
	.loc 1 376 6 is_stmt 0
	li	a1,99
	bgt	a5,a1,.L81
.L100:
	.loc 1 382 14
	sw	a5,0(a2)
.L82:
.LVL23:
.LBB4:
.LBB5:
	.loc 1 390 2 is_stmt 1
	.loc 1 390 5 is_stmt 0
	lbu	t1,0(a6)
	lui	a7,%hi(.LANCHOR14)
	lui	a3,%hi(.LANCHOR15)
	lui	a4,%hi(.LANCHOR16)
	lui	a5,%hi(.LANCHOR17)
	li	a1,2
	addi	a7,a7,%lo(.LANCHOR14)
	addi	a3,a3,%lo(.LANCHOR15)
	addi	a4,a4,%lo(.LANCHOR16)
	addi	a5,a5,%lo(.LANCHOR17)
	bne	t1,a1,.L85
	lbu	a1,0(a7)
	.loc 1 391 3 is_stmt 1
	.loc 1 391 12 is_stmt 0
	sb	zero,0(a6)
	.loc 1 392 3 is_stmt 1
	.loc 1 394 6 is_stmt 0
	li	a6,25
	.loc 1 392 11
	addi	a1,a1,1
	andi	a1,a1,0xff
	sb	a1,0(a7)
	.loc 1 394 3 is_stmt 1
	.loc 1 394 6 is_stmt 0
	bne	a0,a6,.L86
	.loc 1 395 4 is_stmt 1
	.loc 1 395 7 is_stmt 0
	bleu	a1,t1,.L85
.LVL24:
.L88:
	.loc 1 396 5 is_stmt 1
	.loc 1 396 14 is_stmt 0
	sb	zero,0(a7)
	.loc 1 406 2 is_stmt 1
.L87:
	.loc 1 409 3
	.loc 1 409 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 410 3 is_stmt 1
	.loc 1 410 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 411 3 is_stmt 1
.L102:
	.loc 1 418 3
	.loc 1 418 14 is_stmt 0
	sb	zero,0(a5)
	.loc 1 419 3 is_stmt 1
.L89:
	.loc 1 461 2
	.loc 1 462 10 is_stmt 0
	li	a1,1
	sb	a1,30(sp)
	.loc 1 463 25
	lbu	a3,0(a3)
	lw	a1,0(a2)
	.loc 1 464 27
	lbu	a4,0(a4)
	.loc 1 465 26
	lbu	a5,0(a5)
	.loc 1 463 25
	mul	a3,a3,a1
	.loc 1 463 39
	li	a2,100
	.loc 1 466 2
	mv	a0,sp
	.loc 1 461 14
	sh	zero,26(sp)
	sh	zero,28(sp)
	.loc 1 462 2 is_stmt 1
	.loc 1 463 2
	.loc 1 464 27 is_stmt 0
	mul	a4,a4,a1
	.loc 1 465 26
	mul	a5,a5,a1
	.loc 1 466 2
	addi	a1,sp,20
	.loc 1 463 39
	div	a3,a3,a2
	.loc 1 464 41
	div	a4,a4,a2
	.loc 1 463 11
	sh	a3,24(sp)
	.loc 1 464 2 is_stmt 1
	.loc 1 465 40 is_stmt 0
	div	a5,a5,a2
	.loc 1 466 2
	li	a2,12
	.loc 1 464 13
	sh	a4,22(sp)
	.loc 1 465 2 is_stmt 1
	.loc 1 465 12 is_stmt 0
	sh	a5,20(sp)
	.loc 1 466 2 is_stmt 1
	call	memcpy
.LVL25:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL26:
.LBE5:
.LBE4:
	.loc 1 467 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L81:
	.cfi_restore_state
	.loc 1 377 4 is_stmt 1
	.loc 1 377 15 is_stmt 0
	li	a5,100
	sw	a5,0(a2)
	.loc 1 378 4 is_stmt 1
	.loc 1 378 18 is_stmt 0
	sb	zero,0(a3)
	.loc 1 379 4 is_stmt 1
.L101:
	.loc 1 386 4
	.loc 1 386 12 is_stmt 0
	addi	a4,a4,1
	sb	a4,0(a6)
	j	.L82
.L80:
	.loc 1 382 3 is_stmt 1
	.loc 1 382 14 is_stmt 0
	addi	a5,a5,-1
	.loc 1 383 3 is_stmt 1
	.loc 1 383 6 is_stmt 0
	li	a1,5
	bgt	a5,a1,.L100
	.loc 1 384 4 is_stmt 1
	.loc 1 385 18 is_stmt 0
	li	a5,1
	.loc 1 384 15
	sw	a1,0(a2)
	.loc 1 385 4 is_stmt 1
	.loc 1 385 18 is_stmt 0
	sb	a5,0(a3)
	j	.L101
.LVL28:
.L86:
.LBB7:
.LBB6:
	.loc 1 400 8 is_stmt 1
	.loc 1 400 11 is_stmt 0
	li	a6,1
	bne	a0,a6,.L85
	.loc 1 401 4 is_stmt 1
	.loc 1 401 7 is_stmt 0
	li	a0,6
.LVL29:
	bgtu	a1,a0,.L88
.L85:
	.loc 1 406 2 is_stmt 1
	lbu	a1,0(a7)
	li	a0,6
	bgtu	a1,a0,.L89
	lui	a0,%hi(.L91)
	slli	a1,a1,2
	addi	a0,a0,%lo(.L91)
	add	a1,a1,a0
	lw	a1,0(a1)
	jr	a1
	.section	.rodata.mult_color_gradient_effect,"a",@progbits
	.align	2
	.align	2
.L91:
	.word	.L87
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L90
	.section	.text.mult_color_gradient_effect
.L96:
	.loc 1 416 3
	.loc 1 416 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 417 3 is_stmt 1
	.loc 1 417 14 is_stmt 0
	li	a1,-1
.L105:
	sb	a1,0(a4)
	j	.L102
.L95:
	.loc 1 423 3 is_stmt 1
	.loc 1 423 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 424 3 is_stmt 1
	.loc 1 424 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 425 3 is_stmt 1
	.loc 1 425 14 is_stmt 0
	li	a1,-1
.L103:
	.loc 1 453 3 is_stmt 1
	.loc 1 453 14 is_stmt 0
	sb	a1,0(a5)
	.loc 1 454 3 is_stmt 1
	j	.L89
.L94:
	.loc 1 430 3
	.loc 1 430 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 431 3 is_stmt 1
	j	.L105
.L93:
	.loc 1 437 3
	.loc 1 437 14 is_stmt 0
	sb	zero,0(a3)
	.loc 1 438 3 is_stmt 1
	.loc 1 438 14 is_stmt 0
	li	a1,-1
.L104:
	.loc 1 452 3 is_stmt 1
	.loc 1 452 14 is_stmt 0
	sb	a1,0(a4)
	j	.L103
.L92:
	.loc 1 444 3 is_stmt 1
	.loc 1 444 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	.loc 1 445 3 is_stmt 1
	.loc 1 445 14 is_stmt 0
	sb	zero,0(a4)
	.loc 1 446 3 is_stmt 1
	j	.L103
.L90:
	.loc 1 451 3
	.loc 1 451 14 is_stmt 0
	li	a1,-1
	sb	a1,0(a3)
	j	.L104
.LVL30:
.L98:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	ret
.LBE6:
.LBE7:
	.cfi_endproc
.LFE11:
	.size	mult_color_gradient_effect, .-mult_color_gradient_effect
	.section	.text.rgb_color_jump_effect,"ax",@progbits
	.align	1
	.globl	rgb_color_jump_effect
	.type	rgb_color_jump_effect, @function
rgb_color_jump_effect:
.LFB12:
	.loc 1 474 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 475 2
	.loc 1 476 2
	.loc 1 479 2
	.loc 1 474 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 479 20
	lui	a5,%hi(.LANCHOR18)
	.loc 1 474 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 479 20
	addi	a5,a5,%lo(.LANCHOR18)
	lbu	a4,0(a5)
	.loc 1 479 5
	bne	a4,zero,.L107
	.loc 1 480 3 is_stmt 1
	.loc 1 480 19 is_stmt 0
	lui	a4,%hi(.LANCHOR19)
	li	a3,255
	sw	a3,%lo(.LANCHOR19)(a4)
	.loc 1 481 3 is_stmt 1
	.loc 1 481 19 is_stmt 0
	lui	a4,%hi(.LANCHOR20)
	sw	zero,%lo(.LANCHOR20)(a4)
	.loc 1 482 3 is_stmt 1
	.loc 1 482 19 is_stmt 0
	lui	a4,%hi(.LANCHOR21)
	sw	zero,%lo(.LANCHOR21)(a4)
	.loc 1 483 3 is_stmt 1
	.loc 1 483 16 is_stmt 0
	li	a4,1
.L115:
	.loc 1 503 16
	sb	a4,0(a5)
.L108:
	.loc 1 532 2 is_stmt 1
	.loc 1 533 2
	.loc 1 533 10 is_stmt 0
	li	a5,1
	sb	a5,30(sp)
	.loc 1 535 2 is_stmt 1
	.loc 1 532 14 is_stmt 0
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	.loc 1 535 5
	li	a5,26
	bne	a0,a5,.L110
	.loc 1 536 3 is_stmt 1
	.loc 1 536 12 is_stmt 0
	lui	a5,%hi(.LANCHOR19)
	lw	a5,%lo(.LANCHOR19)(a5)
	sh	a5,24(sp)
	.loc 1 537 3 is_stmt 1
.L116:
	.loc 1 554 3
	.loc 1 555 3
	.loc 1 555 14 is_stmt 0
	lui	a5,%hi(.LANCHOR20)
	lw	a5,%lo(.LANCHOR20)(a5)
	sh	a5,22(sp)
	j	.L117
.L107:
	.loc 1 498 7 is_stmt 1
	.loc 1 498 10 is_stmt 0
	li	a3,1
	bne	a4,a3,.L109
	.loc 1 500 3 is_stmt 1
	.loc 1 500 19 is_stmt 0
	lui	a4,%hi(.LANCHOR19)
	sw	zero,%lo(.LANCHOR19)(a4)
	.loc 1 501 3 is_stmt 1
	.loc 1 501 19 is_stmt 0
	li	a3,255
	lui	a4,%hi(.LANCHOR20)
	sw	a3,%lo(.LANCHOR20)(a4)
	.loc 1 502 3 is_stmt 1
	.loc 1 502 19 is_stmt 0
	lui	a4,%hi(.LANCHOR21)
	sw	zero,%lo(.LANCHOR21)(a4)
	.loc 1 503 3 is_stmt 1
	.loc 1 503 16 is_stmt 0
	li	a4,2
	j	.L115
.L109:
	.loc 1 516 7 is_stmt 1
	.loc 1 516 10 is_stmt 0
	li	a3,2
	bne	a4,a3,.L108
	.loc 1 517 3 is_stmt 1
	.loc 1 517 19 is_stmt 0
	lui	a4,%hi(.LANCHOR19)
	sw	zero,%lo(.LANCHOR19)(a4)
	.loc 1 518 3 is_stmt 1
	.loc 1 518 19 is_stmt 0
	lui	a4,%hi(.LANCHOR20)
	sw	zero,%lo(.LANCHOR20)(a4)
	.loc 1 519 3 is_stmt 1
	.loc 1 519 19 is_stmt 0
	li	a3,255
	lui	a4,%hi(.LANCHOR21)
	sw	a3,%lo(.LANCHOR21)(a4)
	.loc 1 520 3 is_stmt 1
	.loc 1 520 17 is_stmt 0
	sb	zero,0(a5)
	j	.L108
.L110:
	.loc 1 541 7 is_stmt 1
	.loc 1 541 10 is_stmt 0
	li	a5,16
	bne	a0,a5,.L112
	.loc 1 542 3 is_stmt 1
	.loc 1 542 12 is_stmt 0
	lui	a5,%hi(.LANCHOR19)
	lw	a5,%lo(.LANCHOR19)(a5)
	sh	a5,24(sp)
	.loc 1 543 3 is_stmt 1
	.loc 1 543 14 is_stmt 0
	lui	a5,%hi(.LANCHOR20)
	lw	a5,%lo(.LANCHOR20)(a5)
	sh	a5,22(sp)
	.loc 1 544 3 is_stmt 1
.L111:
	.loc 1 558 2
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
.LVL32:
	call	memcpy
.LVL33:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL34:
	.loc 1 559 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L112:
	.cfi_restore_state
	.loc 1 547 7 is_stmt 1
	.loc 1 547 10 is_stmt 0
	li	a5,17
	bne	a0,a5,.L113
	.loc 1 548 3 is_stmt 1
	.loc 1 548 12 is_stmt 0
	lui	a5,%hi(.LANCHOR19)
	lw	a5,%lo(.LANCHOR19)(a5)
	sh	a5,24(sp)
	.loc 1 549 3 is_stmt 1
	.loc 1 550 3
.L117:
	.loc 1 556 3
	.loc 1 556 13 is_stmt 0
	lui	a5,%hi(.LANCHOR21)
	lw	a5,%lo(.LANCHOR21)(a5)
	sh	a5,20(sp)
	j	.L111
.L113:
	.loc 1 553 7 is_stmt 1
	.loc 1 553 10 is_stmt 0
	li	a5,18
	bne	a0,a5,.L111
	j	.L116
	.cfi_endproc
.LFE12:
	.size	rgb_color_jump_effect, .-rgb_color_jump_effect
	.section	.text.seven_color_jump_effect,"ax",@progbits
	.align	1
	.globl	seven_color_jump_effect
	.type	seven_color_jump_effect, @function
seven_color_jump_effect:
.LFB13:
	.loc 1 563 1 is_stmt 1
	.cfi_startproc
	.loc 1 564 2
	.loc 1 565 2
	.loc 1 567 2
	lui	a2,%hi(.LANCHOR22)
	lbu	a1,%lo(.LANCHOR22)(a2)
	.loc 1 563 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	lui	a3,%hi(.LANCHOR23)
	lui	a4,%hi(.LANCHOR24)
	lui	a5,%hi(.LANCHOR25)
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 567 2
	li	a0,6
	addi	a3,a3,%lo(.LANCHOR23)
	addi	a4,a4,%lo(.LANCHOR24)
	addi	a5,a5,%lo(.LANCHOR25)
	bgtu	a1,a0,.L119
	lui	a0,%hi(.L121)
	slli	a1,a1,2
	addi	a0,a0,%lo(.L121)
	add	a1,a1,a0
	lw	a1,0(a1)
	addi	a2,a2,%lo(.LANCHOR22)
	jr	a1
	.section	.rodata.seven_color_jump_effect,"a",@progbits
	.align	2
	.align	2
.L121:
	.word	.L127
	.word	.L126
	.word	.L125
	.word	.L124
	.word	.L123
	.word	.L122
	.word	.L120
	.section	.text.seven_color_jump_effect
.L127:
	.loc 1 569 3 is_stmt 1
	.loc 1 569 19 is_stmt 0
	li	a1,255
	sw	a1,0(a3)
	.loc 1 570 3 is_stmt 1
	.loc 1 570 19 is_stmt 0
	sw	zero,0(a4)
	.loc 1 571 3 is_stmt 1
	.loc 1 571 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 572 3 is_stmt 1
	.loc 1 572 16 is_stmt 0
	li	a1,1
.L129:
	.loc 1 578 16
	sb	a1,0(a2)
	.loc 1 579 3 is_stmt 1
.L119:
	.loc 1 611 2
	.loc 1 613 11 is_stmt 0
	lw	a3,0(a3)
	.loc 1 614 13
	lw	a4,0(a4)
	.loc 1 615 12
	lw	a5,0(a5)
	.loc 1 612 10
	li	a2,1
	sb	a2,30(sp)
	.loc 1 616 2
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	.loc 1 613 11
	sh	a3,24(sp)
	.loc 1 614 13
	sh	a4,22(sp)
	.loc 1 615 12
	sh	a5,20(sp)
	.loc 1 611 14
	sh	zero,26(sp)
	sh	zero,28(sp)
	.loc 1 612 2 is_stmt 1
	.loc 1 613 2
	.loc 1 614 2
	.loc 1 615 2
	.loc 1 616 2
	call	memcpy
.LVL36:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL37:
	.loc 1 617 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L126:
	.cfi_restore_state
	.loc 1 575 3 is_stmt 1
	.loc 1 575 19 is_stmt 0
	li	a1,255
	sw	a1,0(a3)
	.loc 1 576 3 is_stmt 1
	.loc 1 576 19 is_stmt 0
	li	a1,127
	sw	a1,0(a4)
	.loc 1 577 3 is_stmt 1
	.loc 1 577 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 578 3 is_stmt 1
	.loc 1 578 16 is_stmt 0
	li	a1,2
	j	.L129
.L125:
	.loc 1 581 3 is_stmt 1
	.loc 1 581 19 is_stmt 0
	li	a1,255
	sw	a1,0(a3)
	.loc 1 582 3 is_stmt 1
	.loc 1 582 19 is_stmt 0
	sw	a1,0(a4)
	.loc 1 583 3 is_stmt 1
	.loc 1 583 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 584 3 is_stmt 1
	.loc 1 584 16 is_stmt 0
	li	a1,3
	j	.L129
.L124:
	.loc 1 587 3 is_stmt 1
	.loc 1 588 19 is_stmt 0
	li	a1,255
	sw	a1,0(a4)
	.loc 1 587 19
	sw	zero,0(a3)
	.loc 1 588 3 is_stmt 1
	.loc 1 589 3
	.loc 1 589 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 590 3 is_stmt 1
	.loc 1 590 16 is_stmt 0
	li	a1,4
	j	.L129
.L123:
	.loc 1 593 3 is_stmt 1
	.loc 1 594 19 is_stmt 0
	li	a1,255
	sw	a1,0(a4)
	.loc 1 595 19
	sw	a1,0(a5)
	.loc 1 593 19
	sw	zero,0(a3)
	.loc 1 594 3 is_stmt 1
	.loc 1 595 3
	.loc 1 596 3
	.loc 1 596 16 is_stmt 0
	li	a1,5
	j	.L129
.L122:
	.loc 1 599 3 is_stmt 1
	.loc 1 601 19 is_stmt 0
	li	a1,255
	sw	a1,0(a5)
	.loc 1 599 19
	sw	zero,0(a3)
	.loc 1 600 3 is_stmt 1
	.loc 1 600 19 is_stmt 0
	sw	zero,0(a4)
	.loc 1 601 3 is_stmt 1
	.loc 1 602 3
	.loc 1 602 16 is_stmt 0
	li	a1,6
	j	.L129
.L120:
	.loc 1 605 3 is_stmt 1
	.loc 1 605 19 is_stmt 0
	li	a1,139
	sw	a1,0(a3)
	.loc 1 606 3 is_stmt 1
	.loc 1 607 19 is_stmt 0
	li	a1,255
	.loc 1 606 19
	sw	zero,0(a4)
	.loc 1 607 3 is_stmt 1
	.loc 1 607 19 is_stmt 0
	sw	a1,0(a5)
	.loc 1 608 3 is_stmt 1
	.loc 1 608 17 is_stmt 0
	sb	zero,0(a2)
	.loc 1 609 3 is_stmt 1
	j	.L119
	.cfi_endproc
.LFE13:
	.size	seven_color_jump_effect, .-seven_color_jump_effect
	.section	.text.ambilight_task,"ax",@progbits
	.align	1
	.globl	ambilight_task
	.type	ambilight_task, @function
ambilight_task:
.LFB14:
	.loc 1 621 1
	.cfi_startproc
	.loc 1 623 2
	.loc 1 623 22 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	.loc 1 621 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 623 5
	li	a4,1
	bne	a5,a4,.L131
.LBB8:
	.loc 1 624 3 is_stmt 1
	.loc 1 625 3
	.loc 1 625 7 is_stmt 0
	lui	s0,%hi(.LANCHOR26)
	addi	s0,s0,%lo(.LANCHOR26)
	.loc 1 625 6
	lbu	a4,0(s0)
	beq	a4,zero,.L132
	.loc 1 626 4 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	call	rgb_color_flash
.LVL38:
	.loc 1 627 4
	.loc 1 627 12 is_stmt 0
	sb	zero,0(s0)
	.loc 1 628 4 is_stmt 1
.L140:
.LBB9:
	.loc 1 633 4
	li	a0,500
.L139:
.LBE9:
.LBE8:
	.loc 1 664 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 662 3
	tail	vTaskDelay
.LVL39:
.L132:
	.cfi_restore_state
.LBB11:
.LBB10:
	.loc 1 630 4 is_stmt 1
	.loc 1 632 4 is_stmt 0
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	.loc 1 630 12
	sb	a5,0(s0)
	.loc 1 631 4 is_stmt 1
	.loc 1 631 16 is_stmt 0
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	sb	zero,30(sp)
	.loc 1 632 4 is_stmt 1
	call	memcpy
.LVL40:
	li	a1,0
	mv	a0,sp
	call	send_light_data_pwm_map
.LVL41:
	j	.L140
.L131:
.LBE10:
.LBE11:
	.loc 1 637 7
	.loc 1 637 10 is_stmt 0
	li	a4,2
	bne	a5,a4,.L133
	.loc 1 638 3 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	call	singel_color_gradient_effect
.LVL42:
	.loc 1 639 3
.L142:
	.loc 1 659 3
	li	a0,20
	j	.L139
.L133:
	.loc 1 642 7
	.loc 1 642 10 is_stmt 0
	li	a4,3
	bne	a5,a4,.L134
	.loc 1 643 3 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	call	mult_color_gradient_effect
.LVL43:
	.loc 1 644 3
	j	.L142
.L134:
	.loc 1 647 7
	.loc 1 647 10 is_stmt 0
	li	a4,4
	bne	a5,a4,.L135
	.loc 1 648 3 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	call	rgb_color_jump_effect
.LVL44:
	.loc 1 649 3
.L141:
	.loc 1 654 3
	li	a0,800
	j	.L139
.L135:
	.loc 1 652 7
	.loc 1 652 10 is_stmt 0
	li	a4,5
	bne	a5,a4,.L136
	.loc 1 653 3 is_stmt 1
	call	seven_color_jump_effect
.LVL45:
	j	.L141
.L136:
	.loc 1 657 7
	.loc 1 657 10 is_stmt 0
	li	a4,6
	.loc 1 662 3
	li	a0,10
	.loc 1 657 10
	bne	a5,a4,.L139
	.loc 1 658 3 is_stmt 1
	lui	a5,%hi(.LANCHOR1)
	lbu	a0,%lo(.LANCHOR1)(a5)
	call	double_color_gradient_effect
.LVL46:
	j	.L142
	.cfi_endproc
.LFE14:
	.size	ambilight_task, .-ambilight_task
	.section	.text.ambilight_init,"ax",@progbits
	.align	1
	.globl	ambilight_init
	.type	ambilight_init, @function
ambilight_init:
.LFB15:
	.loc 1 667 1
	.cfi_startproc
	.loc 1 668 2
	.loc 1 672 2
	.loc 1 667 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 672 2
	li	a0,0
	.loc 1 667 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 672 2
	call	set_led_effect_disenable
.LVL47:
	.loc 1 674 2 is_stmt 1
	.loc 1 687 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 674 2
	li	a0,0
	.loc 1 687 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 674 2
	tail	set_all_led_effect
.LVL48:
	.cfi_endproc
.LFE15:
	.size	ambilight_init, .-ambilight_init
	.section	.text.set_ambilight_mode,"ax",@progbits
	.align	1
	.globl	set_ambilight_mode
	.type	set_ambilight_mode, @function
set_ambilight_mode:
.LFB16:
	.loc 1 689 36 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 690 2
	.loc 1 689 36 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 690 2
	li	a0,0
.LVL50:
	.loc 1 689 36
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 690 2
	call	set_led_effect_disenable
.LVL51:
	.loc 1 691 2 is_stmt 1
	addi	a0,s0,-1
	andi	a0,a0,0xff
	li	a5,26
	bgtu	a0,a5,.L145
	lui	a5,%hi(.L148)
	addi	a5,a5,%lo(.L148)
	slli	a0,a0,2
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.set_ambilight_mode,"a",@progbits
	.align	2
	.align	2
.L148:
	.word	.L174
	.word	.L173
	.word	.L172
	.word	.L171
	.word	.L170
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L166
	.word	.L165
	.word	.L164
	.word	.L163
	.word	.L162
	.word	.L161
	.word	.L160
	.word	.L159
	.word	.L158
	.word	.L157
	.word	.L156
	.word	.L155
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L147
	.section	.text.set_ambilight_mode
.L174:
	.loc 1 698 3
	li	a0,3
	call	set_led_effect_disenable
.LVL52:
	.loc 1 699 3
	li	a0,1
.L176:
	.loc 1 865 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 855 3
	tail	set_all_led_effect
.LVL53:
.L173:
	.cfi_restore_state
	.loc 1 704 3 is_stmt 1
	li	a0,2
	call	set_led_effect_disenable
.LVL54:
	.loc 1 705 3
	li	a0,2
	j	.L176
.L172:
	.loc 1 710 3
	li	a0,2
	call	set_led_effect_disenable
.LVL55:
	.loc 1 711 3
	li	a0,3
	j	.L176
.L171:
	.loc 1 716 3
	li	a0,2
	call	set_led_effect_disenable
.LVL56:
	.loc 1 717 3
	li	a0,4
	j	.L176
.L170:
	.loc 1 722 3
	li	a0,2
	call	set_led_effect_disenable
.LVL57:
	.loc 1 723 3
	li	a0,5
	j	.L176
.L169:
	.loc 1 728 3
	li	a0,2
	call	set_led_effect_disenable
.LVL58:
	.loc 1 729 3
	li	a0,6
	j	.L176
.L168:
	.loc 1 734 3
	li	a0,2
	call	set_led_effect_disenable
.LVL59:
	.loc 1 735 3
	li	a0,7
	j	.L176
.L167:
	.loc 1 740 3
	li	a0,2
	call	set_led_effect_disenable
.LVL60:
	.loc 1 741 3
	li	a0,8
	j	.L176
.L166:
	.loc 1 746 3
	li	a0,1
	call	set_led_effect_disenable
.LVL61:
	.loc 1 747 3
	li	a0,9
	j	.L176
.L165:
	.loc 1 752 3
	li	a0,1
	call	set_led_effect_disenable
.LVL62:
	.loc 1 753 3
	li	a0,10
	j	.L176
.L164:
	.loc 1 758 3
	li	a0,1
	call	set_led_effect_disenable
.LVL63:
	.loc 1 759 3
	li	a0,11
	j	.L176
.L163:
	.loc 1 764 3
	li	a0,1
	call	set_led_effect_disenable
.LVL64:
	.loc 1 765 3
	li	a0,12
	j	.L176
.L162:
	.loc 1 770 3
	li	a0,6
	call	set_led_effect_disenable
.LVL65:
	.loc 1 771 3
	li	a0,13
	j	.L176
.L161:
	.loc 1 776 3
	li	a0,6
	call	set_led_effect_disenable
.LVL66:
	.loc 1 777 3
	li	a0,14
	j	.L176
.L160:
	.loc 1 782 3
	li	a0,6
	call	set_led_effect_disenable
.LVL67:
	.loc 1 783 3
	li	a0,15
	j	.L176
.L159:
	.loc 1 788 3
	li	a0,4
	call	set_led_effect_disenable
.LVL68:
	.loc 1 789 3
	li	a0,16
.L177:
	.loc 1 865 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 801 3
	tail	rgb_color_jump_effect
.LVL69:
.L158:
	.cfi_restore_state
	.loc 1 794 3 is_stmt 1
	li	a0,4
	call	set_led_effect_disenable
.LVL70:
	.loc 1 795 3
	li	a0,17
	j	.L177
.L157:
	.loc 1 800 3
	li	a0,4
	call	set_led_effect_disenable
.LVL71:
	.loc 1 801 3
	li	a0,18
	j	.L177
.L156:
	.loc 1 806 3
	li	a0,1
	call	set_led_effect_disenable
.LVL72:
	.loc 1 807 3
	li	a0,19
	j	.L176
.L155:
	.loc 1 812 3
	li	a0,1
	call	set_led_effect_disenable
.LVL73:
	.loc 1 813 3
	li	a0,20
	j	.L176
.L154:
	.loc 1 818 3
	li	a0,1
	call	set_led_effect_disenable
.LVL74:
	.loc 1 819 3
	li	a0,21
	j	.L176
.L153:
	.loc 1 824 3
	li	a0,5
	call	set_led_effect_disenable
.LVL75:
	.loc 1 825 3
	li	a0,22
	j	.L176
.L152:
	.loc 1 830 3
	li	a0,1
	call	set_led_effect_disenable
.LVL76:
	.loc 1 831 3
	li	a0,23
	j	.L176
.L151:
	.loc 1 836 3
	li	a0,1
	call	set_led_effect_disenable
.LVL77:
	.loc 1 837 3
	li	a0,24
	j	.L176
.L150:
	.loc 1 842 3
	li	a0,3
	call	set_led_effect_disenable
.LVL78:
	.loc 1 843 3
	li	a0,25
	j	.L176
.L149:
	.loc 1 848 3
	li	a0,4
	call	set_led_effect_disenable
.LVL79:
	.loc 1 849 3
	li	a0,26
	j	.L176
.L147:
	.loc 1 854 3
	li	a0,1
	call	set_led_effect_disenable
.LVL80:
	.loc 1 855 3
	li	a0,27
	j	.L176
.L145:
	.loc 1 865 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	set_ambilight_mode, .-set_ambilight_mode
	.globl	led_type_flag
	.globl	pre_led_effect_stat
	.globl	led_effect_flag
	.section	.sbss.color_cnt.2923,"aw",@nobits
	.set	.LANCHOR2,. + 0
	.type	color_cnt.2923, @object
	.size	color_cnt.2923, 1
color_cnt.2923:
	.zero	1
	.section	.sbss.curr_gradient_1.2954,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	curr_gradient_1.2954, @object
	.size	curr_gradient_1.2954, 4
curr_gradient_1.2954:
	.zero	4
	.section	.sbss.curr_gradient_2.2955,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	curr_gradient_2.2955, @object
	.size	curr_gradient_2.2955, 4
curr_gradient_2.2955:
	.zero	4
	.section	.sbss.curr_rgb_b.2938,"aw",@nobits
	.set	.LANCHOR7,. + 0
	.type	curr_rgb_b.2938, @object
	.size	curr_rgb_b.2938, 1
curr_rgb_b.2938:
	.zero	1
	.section	.sbss.curr_rgb_b.2963,"aw",@nobits
	.set	.LANCHOR17,. + 0
	.type	curr_rgb_b.2963, @object
	.size	curr_rgb_b.2963, 1
curr_rgb_b.2963:
	.zero	1
	.section	.sbss.curr_rgb_g.2937,"aw",@nobits
	.set	.LANCHOR6,. + 0
	.type	curr_rgb_g.2937, @object
	.size	curr_rgb_g.2937, 1
curr_rgb_g.2937:
	.zero	1
	.section	.sbss.curr_rgb_g.2962,"aw",@nobits
	.set	.LANCHOR16,. + 0
	.type	curr_rgb_g.2962, @object
	.size	curr_rgb_g.2962, 1
curr_rgb_g.2962:
	.zero	1
	.section	.sbss.curr_rgb_mode.2939,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	curr_rgb_mode.2939, @object
	.size	curr_rgb_mode.2939, 1
curr_rgb_mode.2939:
	.zero	1
	.section	.sbss.curr_rgb_mode.2956,"aw",@nobits
	.set	.LANCHOR8,. + 0
	.type	curr_rgb_mode.2956, @object
	.size	curr_rgb_mode.2956, 1
curr_rgb_mode.2956:
	.zero	1
	.section	.sbss.curr_rgb_mode.2984,"aw",@nobits
	.set	.LANCHOR18,. + 0
	.type	curr_rgb_mode.2984, @object
	.size	curr_rgb_mode.2984, 1
curr_rgb_mode.2984:
	.zero	1
	.section	.sbss.curr_rgb_mode.2991,"aw",@nobits
	.set	.LANCHOR22,. + 0
	.type	curr_rgb_mode.2991, @object
	.size	curr_rgb_mode.2991, 1
curr_rgb_mode.2991:
	.zero	1
	.section	.sbss.curr_rgb_r.2936,"aw",@nobits
	.set	.LANCHOR5,. + 0
	.type	curr_rgb_r.2936, @object
	.size	curr_rgb_r.2936, 1
curr_rgb_r.2936:
	.zero	1
	.section	.sbss.curr_rgb_r.2961,"aw",@nobits
	.set	.LANCHOR15,. + 0
	.type	curr_rgb_r.2961, @object
	.size	curr_rgb_r.2961, 1
curr_rgb_r.2961:
	.zero	1
	.section	.sbss.dirFlag.3003,"aw",@nobits
	.set	.LANCHOR26,. + 0
	.type	dirFlag.3003, @object
	.size	dirFlag.3003, 1
dirFlag.3003:
	.zero	1
	.section	.sbss.led_effect_flag,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	led_effect_flag, @object
	.size	led_effect_flag, 1
led_effect_flag:
	.zero	1
	.section	.sbss.led_type_flag,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	led_type_flag, @object
	.size	led_type_flag, 1
led_type_flag:
	.zero	1
	.section	.sbss.pre_led_effect_stat,"aw",@nobits
	.type	pre_led_effect_stat, @object
	.size	pre_led_effect_stat, 1
pre_led_effect_stat:
	.zero	1
	.section	.sbss.rgb_type.2966,"aw",@nobits
	.set	.LANCHOR14,. + 0
	.type	rgb_type.2966, @object
	.size	rgb_type.2966, 1
rgb_type.2966:
	.zero	1
	.section	.sbss.turn_cnt.2965,"aw",@nobits
	.set	.LANCHOR12,. + 0
	.type	turn_cnt.2965, @object
	.size	turn_cnt.2965, 1
turn_cnt.2965:
	.zero	1
	.section	.sdata.brightness.2940,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	brightness.2940, @object
	.size	brightness.2940, 4
brightness.2940:
	.word	100
	.section	.sdata.brightness.2967,"aw"
	.align	2
	.set	.LANCHOR11,. + 0
	.type	brightness.2967, @object
	.size	brightness.2967, 4
brightness.2967:
	.word	100
	.section	.sdata.curr_gradient_1.2981,"aw"
	.align	2
	.set	.LANCHOR19,. + 0
	.type	curr_gradient_1.2981, @object
	.size	curr_gradient_1.2981, 4
curr_gradient_1.2981:
	.word	255
	.section	.sdata.curr_gradient_2.2982,"aw"
	.align	2
	.set	.LANCHOR20,. + 0
	.type	curr_gradient_2.2982, @object
	.size	curr_gradient_2.2982, 4
curr_gradient_2.2982:
	.word	1
	.section	.sdata.curr_gradient_3.2983,"aw"
	.align	2
	.set	.LANCHOR21,. + 0
	.type	curr_gradient_3.2983, @object
	.size	curr_gradient_3.2983, 4
curr_gradient_3.2983:
	.word	1
	.section	.sdata.curr_gradient_b.2990,"aw"
	.align	2
	.set	.LANCHOR25,. + 0
	.type	curr_gradient_b.2990, @object
	.size	curr_gradient_b.2990, 4
curr_gradient_b.2990:
	.word	1
	.section	.sdata.curr_gradient_g.2989,"aw"
	.align	2
	.set	.LANCHOR24,. + 0
	.type	curr_gradient_g.2989, @object
	.size	curr_gradient_g.2989, 4
curr_gradient_g.2989:
	.word	1
	.section	.sdata.curr_gradient_r.2988,"aw"
	.align	2
	.set	.LANCHOR23,. + 0
	.type	curr_gradient_r.2988, @object
	.size	curr_gradient_r.2988, 4
curr_gradient_r.2988:
	.word	255
	.section	.sdata.curr_rgb_mode.2964,"aw"
	.set	.LANCHOR13,. + 0
	.type	curr_rgb_mode.2964, @object
	.size	curr_rgb_mode.2964, 1
curr_rgb_mode.2964:
	.byte	1
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 7 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h"
	.file 8 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h"
	.file 10 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_Ambilight.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF203
	.byte	0xc
	.4byte	.LASF204
	.4byte	.LASF205
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x5c
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x5c
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xbe
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x33
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xbe
	.byte	0
	.byte	0x8
	.4byte	0x47
	.4byte	0xce
	.byte	0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0xf2
	.byte	0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0x9c
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xce
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x63
	.byte	0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x23
	.byte	0x1b
	.4byte	0x10c
	.byte	0xd
	.4byte	.LASF25
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x17e
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x184
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x124
	.byte	0x8
	.4byte	0x100
	.4byte	0x194
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x217
	.byte	0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF36
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x25c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x25c
	.byte	0
	.byte	0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x25c
	.byte	0x80
	.byte	0x11
	.4byte	.LASF39
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0x100
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF40
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0x100
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0xfe
	.4byte	0x26c
	.byte	0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2af
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2af
	.byte	0
	.byte	0xb
	.4byte	.LASF42
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2b5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x217
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x26c
	.byte	0x8
	.4byte	0x2c5
	.4byte	0x2c5
	.byte	0x9
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2cb
	.byte	0x12
	.byte	0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x2f4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x2f4
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x47
	.byte	0xd
	.4byte	.LASF47
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x43d
	.byte	0xe
	.string	"_p"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x2f4
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF48
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x4e
	.byte	0xc
	.byte	0xb
	.4byte	.LASF49
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x4e
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2cc
	.byte	0x10
	.byte	0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0xfe
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xca
	.byte	0xe
	.4byte	0x5c1
	.byte	0x20
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xcc
	.byte	0xe
	.4byte	0x5eb
	.byte	0x24
	.byte	0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x60f
	.byte	0x28
	.byte	0xb
	.4byte	.LASF55
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x629
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2cc
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x2f4
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x62f
	.byte	0x40
	.byte	0xb
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x63f
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2cc
	.byte	0x44
	.byte	0xb
	.4byte	.LASF58
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x78
	.byte	0x50
	.byte	0xb
	.4byte	.LASF60
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x45b
	.byte	0x54
	.byte	0xb
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x118
	.byte	0x58
	.byte	0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0xf2
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0x90
	.4byte	0x45b
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x5af
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x466
	.byte	0x15
	.4byte	0x45b
	.byte	0x16
	.4byte	.LASF64
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5af
	.byte	0x17
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x17
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x69b
	.byte	0x4
	.byte	0x17
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x69b
	.byte	0x8
	.byte	0x17
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x69b
	.byte	0xc
	.byte	0x17
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x17
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x89b
	.byte	0x14
	.byte	0x17
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x17
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8b0
	.byte	0x34
	.byte	0x17
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x17
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8c1
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x17e
	.byte	0x40
	.byte	0x17
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x17
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x17e
	.byte	0x48
	.byte	0x17
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8c7
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x17
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5af
	.byte	0x54
	.byte	0x17
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x876
	.byte	0x58
	.byte	0x18
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2af
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x26c
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8d8
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x65c
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8e4
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5b5
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.byte	0x15
	.4byte	0x5b5
	.byte	0xf
	.byte	0x4
	.4byte	0x43d
	.byte	0x13
	.4byte	0x90
	.4byte	0x5e5
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x5e5
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5bc
	.byte	0xf
	.byte	0x4
	.4byte	0x5c7
	.byte	0x13
	.4byte	0x84
	.4byte	0x60f
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x84
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5f1
	.byte	0x13
	.4byte	0x25
	.4byte	0x629
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x615
	.byte	0x8
	.4byte	0x47
	.4byte	0x63f
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x47
	.4byte	0x64f
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x124
	.byte	0x18
	.4byte	0x2fa
	.byte	0x19
	.4byte	.LASF88
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x695
	.byte	0x17
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x695
	.byte	0
	.byte	0x17
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x69b
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x65c
	.byte	0xf
	.byte	0x4
	.4byte	0x64f
	.byte	0x19
	.4byte	.LASF91
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6da
	.byte	0x17
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6da
	.byte	0
	.byte	0x17
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6da
	.byte	0x6
	.byte	0x17
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x55
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x55
	.4byte	0x6ea
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x7ff
	.byte	0x17
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5af
	.byte	0x4
	.byte	0x17
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x7ff
	.byte	0x8
	.byte	0x17
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x194
	.byte	0x24
	.byte	0x17
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x17
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x71
	.byte	0x50
	.byte	0x17
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6a1
	.byte	0x58
	.byte	0x17
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0xf2
	.byte	0x68
	.byte	0x17
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0xf2
	.byte	0x70
	.byte	0x17
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0xf2
	.byte	0x78
	.byte	0x17
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x80f
	.byte	0x80
	.byte	0x17
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x81f
	.byte	0x88
	.byte	0x17
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0xf2
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0xf2
	.byte	0xac
	.byte	0x17
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0xf2
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0xf2
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0xf2
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5b5
	.4byte	0x80f
	.byte	0x9
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5b5
	.4byte	0x81f
	.byte	0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5b5
	.4byte	0x82f
	.byte	0x9
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x856
	.byte	0x17
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x856
	.byte	0
	.byte	0x17
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x866
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x2f4
	.4byte	0x866
	.byte	0x9
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x876
	.byte	0x9
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x89b
	.byte	0x1c
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6ea
	.byte	0x1c
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x82f
	.byte	0
	.byte	0x8
	.4byte	0x5b5
	.4byte	0x8ab
	.byte	0x9
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF206
	.byte	0xf
	.byte	0x4
	.4byte	0x8ab
	.byte	0x1e
	.4byte	0x8c1
	.byte	0x14
	.4byte	0x45b
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8b6
	.byte	0xf
	.byte	0x4
	.4byte	0x17e
	.byte	0x1e
	.4byte	0x8d8
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8de
	.byte	0xf
	.byte	0x4
	.4byte	0x8cd
	.byte	0x8
	.4byte	0x64f
	.4byte	0x8f4
	.byte	0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x333
	.byte	0x17
	.4byte	0x45b
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x334
	.byte	0x1d
	.4byte	0x461
	.byte	0x5
	.4byte	.LASF119
	.byte	0x6
	.byte	0x25
	.byte	0x13
	.4byte	0x4e
	.byte	0x5
	.4byte	.LASF120
	.byte	0x6
	.byte	0x28
	.byte	0x12
	.4byte	0x5c
	.byte	0x5
	.4byte	.LASF121
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x47
	.byte	0x5
	.4byte	.LASF122
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x63
	.byte	0xa
	.byte	0xc
	.byte	0x7
	.byte	0xa
	.byte	0x9
	.4byte	0x995
	.byte	0xb
	.4byte	.LASF123
	.byte	0x7
	.byte	0xb
	.byte	0xa
	.4byte	0x90e
	.byte	0
	.byte	0xb
	.4byte	.LASF124
	.byte	0x7
	.byte	0xc
	.byte	0xa
	.4byte	0x90e
	.byte	0x2
	.byte	0xe
	.string	"red"
	.byte	0x7
	.byte	0xd
	.byte	0xa
	.4byte	0x90e
	.byte	0x4
	.byte	0xb
	.4byte	.LASF125
	.byte	0x7
	.byte	0xe
	.byte	0xa
	.4byte	0x90e
	.byte	0x6
	.byte	0xb
	.4byte	.LASF126
	.byte	0x7
	.byte	0xf
	.byte	0xa
	.4byte	0x90e
	.byte	0x8
	.byte	0xe
	.string	"on"
	.byte	0x7
	.byte	0x10
	.byte	0xa
	.4byte	0x926
	.byte	0xa
	.byte	0
	.byte	0x5
	.4byte	.LASF127
	.byte	0x7
	.byte	0x11
	.byte	0x3
	.4byte	0x93e
	.byte	0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x47
	.byte	0xb
	.byte	0x8
	.byte	0xe
	.4byte	0xa5e
	.byte	0x21
	.4byte	.LASF128
	.byte	0
	.byte	0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x21
	.4byte	.LASF130
	.byte	0x2
	.byte	0x21
	.4byte	.LASF131
	.byte	0x3
	.byte	0x21
	.4byte	.LASF132
	.byte	0x4
	.byte	0x21
	.4byte	.LASF133
	.byte	0x5
	.byte	0x21
	.4byte	.LASF134
	.byte	0x6
	.byte	0x21
	.4byte	.LASF135
	.byte	0x7
	.byte	0x21
	.4byte	.LASF136
	.byte	0x8
	.byte	0x21
	.4byte	.LASF137
	.byte	0x9
	.byte	0x21
	.4byte	.LASF138
	.byte	0xa
	.byte	0x21
	.4byte	.LASF139
	.byte	0xb
	.byte	0x21
	.4byte	.LASF140
	.byte	0xc
	.byte	0x21
	.4byte	.LASF141
	.byte	0xd
	.byte	0x21
	.4byte	.LASF142
	.byte	0xe
	.byte	0x21
	.4byte	.LASF143
	.byte	0xf
	.byte	0x21
	.4byte	.LASF144
	.byte	0x10
	.byte	0x21
	.4byte	.LASF145
	.byte	0x11
	.byte	0x21
	.4byte	.LASF146
	.byte	0x12
	.byte	0x21
	.4byte	.LASF147
	.byte	0x13
	.byte	0x21
	.4byte	.LASF148
	.byte	0x14
	.byte	0x21
	.4byte	.LASF149
	.byte	0x15
	.byte	0x21
	.4byte	.LASF150
	.byte	0x16
	.byte	0x21
	.4byte	.LASF151
	.byte	0x17
	.byte	0x21
	.4byte	.LASF152
	.byte	0x18
	.byte	0x21
	.4byte	.LASF153
	.byte	0x19
	.byte	0x21
	.4byte	.LASF154
	.byte	0x1a
	.byte	0x21
	.4byte	.LASF155
	.byte	0x1b
	.byte	0x21
	.4byte	.LASF156
	.byte	0x1c
	.byte	0
	.byte	0x5
	.4byte	.LASF157
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0x91a
	.byte	0x5
	.4byte	.LASF158
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0x932
	.byte	0x22
	.4byte	.LASF159
	.byte	0x8
	.byte	0x54
	.byte	0x13
	.4byte	0xa5e
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF160
	.byte	0xa
	.byte	0x10
	.byte	0x9
	.byte	0x18
	.byte	0x9
	.4byte	0xac7
	.byte	0xb
	.4byte	.LASF161
	.byte	0x9
	.byte	0x19
	.byte	0xe
	.4byte	0x995
	.byte	0
	.byte	0xb
	.4byte	.LASF162
	.byte	0x9
	.byte	0x1a
	.byte	0x7
	.4byte	0x5b5
	.byte	0xc
	.byte	0xb
	.4byte	.LASF163
	.byte	0x9
	.byte	0x1b
	.byte	0x7
	.4byte	0x5b5
	.byte	0xd
	.byte	0xb
	.4byte	.LASF164
	.byte	0x9
	.byte	0x1c
	.byte	0x7
	.4byte	0x5b5
	.byte	0xe
	.byte	0
	.byte	0x5
	.4byte	.LASF165
	.byte	0x9
	.byte	0x1d
	.byte	0x3
	.4byte	0xa89
	.byte	0x23
	.4byte	.LASF166
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	led_effect_flag
	.byte	0x23
	.4byte	.LASF167
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	pre_led_effect_stat
	.byte	0x23
	.4byte	.LASF168
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	led_type_flag
	.byte	0x24
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2b1
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xd54
	.byte	0x25
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x2b1
	.byte	0x1e
	.4byte	0x5b5
	.4byte	.LLST10
	.byte	0x26
	.4byte	.LVL51
	.4byte	0x12b2
	.4byte	0xb44
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL52
	.4byte	0x12b2
	.4byte	0xb57
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x28
	.4byte	.LVL53
	.4byte	0x124d
	.byte	0x26
	.4byte	.LVL54
	.4byte	0x12b2
	.4byte	0xb73
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL55
	.4byte	0x12b2
	.4byte	0xb86
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL56
	.4byte	0x12b2
	.4byte	0xb99
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL57
	.4byte	0x12b2
	.4byte	0xbac
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL58
	.4byte	0x12b2
	.4byte	0xbbf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL59
	.4byte	0x12b2
	.4byte	0xbd2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL60
	.4byte	0x12b2
	.4byte	0xbe5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL61
	.4byte	0x12b2
	.4byte	0xbf8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL62
	.4byte	0x12b2
	.4byte	0xc0b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL63
	.4byte	0x12b2
	.4byte	0xc1e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL64
	.4byte	0x12b2
	.4byte	0xc31
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL65
	.4byte	0x12b2
	.4byte	0xc44
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x26
	.4byte	.LVL66
	.4byte	0x12b2
	.4byte	0xc57
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x26
	.4byte	.LVL67
	.4byte	0x12b2
	.4byte	0xc6a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x26
	.4byte	.LVL68
	.4byte	0x12b2
	.4byte	0xc7d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x28
	.4byte	.LVL69
	.4byte	0xeff
	.byte	0x26
	.4byte	.LVL70
	.4byte	0x12b2
	.4byte	0xc99
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x26
	.4byte	.LVL71
	.4byte	0x12b2
	.4byte	0xcac
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x26
	.4byte	.LVL72
	.4byte	0x12b2
	.4byte	0xcbf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL73
	.4byte	0x12b2
	.4byte	0xcd2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL74
	.4byte	0x12b2
	.4byte	0xce5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL75
	.4byte	0x12b2
	.4byte	0xcf8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x26
	.4byte	.LVL76
	.4byte	0x12b2
	.4byte	0xd0b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL77
	.4byte	0x12b2
	.4byte	0xd1e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x26
	.4byte	.LVL78
	.4byte	0x12b2
	.4byte	0xd31
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x26
	.4byte	.LVL79
	.4byte	0x12b2
	.4byte	0xd44
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x29
	.4byte	.LVL80
	.4byte	0x12b2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x29a
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xd8e
	.byte	0x26
	.4byte	.LVL47
	.4byte	0x12b2
	.4byte	0xd7e
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2a
	.4byte	.LVL48
	.4byte	0x124d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x26c
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xe50
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe19
	.byte	0x2c
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x270
	.byte	0xe
	.4byte	0xe50
	.byte	0x5
	.byte	0x3
	.4byte	dirFlag.3003
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xe0f
	.byte	0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x277
	.byte	0x10
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL40
	.4byte	0x1379
	.4byte	0xdf9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL41
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL38
	.4byte	0x11d1
	.byte	0
	.byte	0x28
	.4byte	.LVL39
	.4byte	0x1390
	.byte	0x2d
	.4byte	.LVL42
	.4byte	0x110c
	.byte	0x2d
	.4byte	.LVL43
	.4byte	0xfb8
	.byte	0x2d
	.4byte	.LVL44
	.4byte	0xeff
	.byte	0x2d
	.4byte	.LVL45
	.4byte	0xe57
	.byte	0x2d
	.4byte	.LVL46
	.4byte	0x1066
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF174
	.byte	0x2e
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x232
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xeff
	.byte	0x2c
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x234
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_r.2988
	.byte	0x2c
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x234
	.byte	0x24
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_g.2989
	.byte	0x2c
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x234
	.byte	0x39
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_b.2990
	.byte	0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x235
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_mode.2991
	.byte	0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x263
	.byte	0xe
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL36
	.4byte	0x1379
	.4byte	0xee9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL37
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1d9
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xfb8
	.byte	0x25
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1d9
	.byte	0x21
	.4byte	0x5b5
	.4byte	.LLST9
	.byte	0x2c
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1db
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_1.2981
	.byte	0x2c
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1db
	.byte	0x24
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_2.2982
	.byte	0x2c
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1db
	.byte	0x39
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_3.2983
	.byte	0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1dc
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_mode.2984
	.byte	0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x214
	.byte	0xe
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL33
	.4byte	0x1379
	.4byte	0xfa2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL34
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x16b
	.byte	0x6
	.byte	0x1
	.4byte	0x1066
	.byte	0x30
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x16b
	.byte	0x29
	.4byte	0x926
	.byte	0x2c
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x16d
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_r.2961
	.byte	0x2c
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x16d
	.byte	0x21
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_g.2962
	.byte	0x2c
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x16d
	.byte	0x31
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_b.2963
	.byte	0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x16e
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_mode.2964
	.byte	0x2c
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x16f
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	turn_cnt.2965
	.byte	0x2c
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x170
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	rgb_type.2966
	.byte	0x2c
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x171
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	brightness.2967
	.byte	0x31
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x1cd
	.byte	0xe
	.4byte	0x995
	.byte	0
	.byte	0x24
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x110c
	.byte	0x25
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x126
	.byte	0x28
	.4byte	0x5b5
	.4byte	.LLST6
	.byte	0x2c
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x128
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_1.2954
	.byte	0x2c
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x128
	.byte	0x22
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	curr_gradient_2.2955
	.byte	0x2c
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x129
	.byte	0xe
	.4byte	0x5b5
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_mode.2956
	.byte	0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x153
	.byte	0xe
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL19
	.4byte	0x1379
	.4byte	0x10f6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL20
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF192
	.byte	0x1
	.byte	0xd1
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x11d1
	.byte	0x33
	.4byte	.LASF181
	.byte	0x1
	.byte	0xd1
	.byte	0x2b
	.4byte	0x926
	.4byte	.LLST5
	.byte	0x34
	.4byte	.LASF185
	.byte	0x1
	.byte	0xd3
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_r.2936
	.byte	0x34
	.4byte	.LASF186
	.byte	0x1
	.byte	0xd3
	.byte	0x21
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_g.2937
	.byte	0x34
	.4byte	.LASF187
	.byte	0x1
	.byte	0xd3
	.byte	0x31
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_b.2938
	.byte	0x34
	.4byte	.LASF178
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.4byte	0xe50
	.byte	0x5
	.byte	0x3
	.4byte	curr_rgb_mode.2939
	.byte	0x34
	.4byte	.LASF190
	.byte	0x1
	.byte	0xd5
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	brightness.2940
	.byte	0x2c
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x11a
	.byte	0xe
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL15
	.4byte	0x1379
	.4byte	0x11bb
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL16
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF193
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x124d
	.byte	0x33
	.4byte	.LASF181
	.byte	0x1
	.byte	0x5f
	.byte	0x1e
	.4byte	0x926
	.4byte	.LLST4
	.byte	0x34
	.4byte	.LASF173
	.byte	0x1
	.byte	0x61
	.byte	0xe
	.4byte	0x995
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x34
	.4byte	.LASF194
	.byte	0x1
	.byte	0x63
	.byte	0x11
	.4byte	0x926
	.byte	0x5
	.byte	0x3
	.4byte	color_cnt.2923
	.byte	0x26
	.4byte	.LVL8
	.4byte	0x1379
	.4byte	0x1237
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL9
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF195
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1296
	.byte	0x33
	.4byte	.LASF196
	.byte	0x1
	.byte	0x51
	.byte	0x21
	.4byte	0x926
	.4byte	.LLST2
	.byte	0x35
	.4byte	.LASF197
	.byte	0x1
	.byte	0x53
	.byte	0x12
	.4byte	0x1296
	.4byte	.LLST3
	.byte	0x2d
	.4byte	.LVL4
	.4byte	0x139d
	.byte	0x28
	.4byte	.LVL5
	.4byte	0x13a9
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xac7
	.byte	0x36
	.4byte	.LASF209
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x926
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x32
	.4byte	.LASF198
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x12fa
	.byte	0x37
	.string	"en"
	.byte	0x1
	.byte	0x2c
	.byte	0x27
	.4byte	0x926
	.4byte	.LLST0
	.byte	0x35
	.4byte	.LASF197
	.byte	0x1
	.byte	0x2e
	.byte	0x12
	.4byte	0x1296
	.4byte	.LLST1
	.byte	0x2d
	.4byte	.LVL1
	.4byte	0x139d
	.byte	0x28
	.4byte	.LVL2
	.4byte	0x13a9
	.byte	0
	.byte	0x38
	.4byte	0xfb8
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1379
	.byte	0x39
	.4byte	0xfc6
	.4byte	.LLST7
	.byte	0x3a
	.4byte	0x1058
	.byte	0x3b
	.4byte	0xfb8
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x16b
	.byte	0x6
	.byte	0x39
	.4byte	0xfc6
	.4byte	.LLST8
	.byte	0x3c
	.4byte	.Ldebug_ranges0+0
	.byte	0x3d
	.4byte	0x1058
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x26
	.4byte	.LVL25
	.4byte	0x1379
	.4byte	0x1361
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL26
	.4byte	0x1384
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	.LASF210
	.4byte	.LASF211
	.byte	0xc
	.byte	0
	.byte	0x3f
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x7
	.byte	0x32
	.byte	0x6
	.byte	0x40
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xa
	.2byte	0x2f6
	.byte	0x6
	.byte	0x3f
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x9
	.byte	0x2b
	.byte	0x11
	.byte	0x3f
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x9
	.byte	0x2c
	.byte	0x6
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
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x11
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
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
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
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
	.byte	0x1b
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
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
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x33
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x39
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF171:
	.string	"ambilight_task"
.LASF208:
	.string	"mult_color_gradient_effect"
.LASF189:
	.string	"rgb_type"
.LASF146:
	.string	"STRIP_MODE_GB_JUMP"
.LASF139:
	.string	"STRIP_MODE_BLUE_STROBE"
.LASF36:
	.string	"_on_exit_args"
.LASF104:
	.string	"_wctomb_state"
.LASF101:
	.string	"_r48"
.LASF191:
	.string	"double_color_gradient_effect"
.LASF106:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF198:
	.string	"set_led_effect_disenable"
.LASF126:
	.string	"yellow"
.LASF50:
	.string	"_lbfsize"
.LASF48:
	.string	"_flags"
.LASF65:
	.string	"_errno"
.LASF123:
	.string	"blue"
.LASF143:
	.string	"STRIP_MODE_GB_GRADIENT"
.LASF144:
	.string	"STRIP_MODE_RG_JUMP"
.LASF127:
	.string	"rgb_pixel_t"
.LASF19:
	.string	"_LOCK_RECURSIVE_T"
.LASF155:
	.string	"STRIP_MODE_RGB_STROBE"
.LASF52:
	.string	"_read"
.LASF180:
	.string	"mode"
.LASF108:
	.string	"_mbrlen_state"
.LASF150:
	.string	"STRIP_MODE_SEVEN_JUMP"
.LASF211:
	.string	"__builtin_memcpy"
.LASF131:
	.string	"STRIP_MODE_GREEN_GRADIENT"
.LASF67:
	.string	"_stdout"
.LASF11:
	.string	"_fpos_t"
.LASF43:
	.string	"_fns"
.LASF135:
	.string	"STRIP_MODE_PURPLE_GRADIENT"
.LASF51:
	.string	"_cookie"
.LASF25:
	.string	"_Bigint"
.LASF204:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_Ambilight.c"
.LASF33:
	.string	"__tm_wday"
.LASF75:
	.string	"_result"
.LASF128:
	.string	"STRIP_MODE_INIT_MODE"
.LASF182:
	.string	"curr_gradient_1"
.LASF122:
	.string	"uint32_t"
.LASF184:
	.string	"curr_gradient_3"
.LASF29:
	.string	"__tm_hour"
.LASF15:
	.string	"__count"
.LASF162:
	.string	"led_effect_set"
.LASF28:
	.string	"__tm_min"
.LASF117:
	.string	"_impure_ptr"
.LASF114:
	.string	"_nextf"
.LASF151:
	.string	"STRIP_MODE_SEVEN_STROBE"
.LASF205:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/product"
.LASF91:
	.string	"_rand48"
.LASF76:
	.string	"_result_k"
.LASF177:
	.string	"curr_gradient_b"
.LASF8:
	.string	"long long unsigned int"
.LASF97:
	.string	"_asctime_buf"
.LASF176:
	.string	"curr_gradient_g"
.LASF47:
	.string	"__sFILE"
.LASF24:
	.string	"_wds"
.LASF147:
	.string	"STRIP_MODE_RG_STROBE"
.LASF175:
	.string	"curr_gradient_r"
.LASF87:
	.string	"__FILE"
.LASF59:
	.string	"_offset"
.LASF133:
	.string	"STRIP_MODE_YELLOW_GRADIENT"
.LASF70:
	.string	"_emergency"
.LASF161:
	.string	"color"
.LASF137:
	.string	"STRIP_MODE_RED_STROBE"
.LASF154:
	.string	"STRIP_MODE_RGB_JUMP"
.LASF159:
	.string	"TrapNetCounter"
.LASF27:
	.string	"__tm_sec"
.LASF34:
	.string	"__tm_yday"
.LASF69:
	.string	"_inc"
.LASF42:
	.string	"_ind"
.LASF132:
	.string	"STRIP_MODE_BLUE_GRADIENT"
.LASF170:
	.string	"ambilight_init"
.LASF21:
	.string	"_next"
.LASF110:
	.string	"_mbsrtowcs_state"
.LASF145:
	.string	"STRIP_MODE_RB_JUMP"
.LASF199:
	.string	"send_light_data_pwm_map"
.LASF200:
	.string	"vTaskDelay"
.LASF16:
	.string	"__value"
.LASF77:
	.string	"_p5s"
.LASF112:
	.string	"_wcsrtombs_state"
.LASF102:
	.string	"_mblen_state"
.LASF138:
	.string	"STRIP_MODE_GREEN_STROBE"
.LASF86:
	.string	"char"
.LASF30:
	.string	"__tm_mday"
.LASF83:
	.string	"_sig_func"
.LASF109:
	.string	"_mbrtowc_state"
.LASF82:
	.string	"_atexit0"
.LASF20:
	.string	"_flock_t"
.LASF178:
	.string	"curr_rgb_mode"
.LASF13:
	.string	"__wch"
.LASF90:
	.string	"_iobs"
.LASF121:
	.string	"uint8_t"
.LASF179:
	.string	"rgb_color_jump_effect"
.LASF55:
	.string	"_close"
.LASF73:
	.string	"__sdidinit"
.LASF129:
	.string	"STRIP_MODE_SEVEN_GRADIENT"
.LASF149:
	.string	"STRIP_MODE_GB_STROBE"
.LASF197:
	.string	"product_status"
.LASF66:
	.string	"_stdin"
.LASF99:
	.string	"_gamma_signgam"
.LASF7:
	.string	"long long int"
.LASF45:
	.string	"_base"
.LASF78:
	.string	"_freelist"
.LASF93:
	.string	"_mult"
.LASF190:
	.string	"brightness"
.LASF18:
	.string	"__ULong"
.LASF140:
	.string	"STRIP_MODE_YELLOW_STROBE"
.LASF111:
	.string	"_wcrtomb_state"
.LASF157:
	.string	"BaseType_t"
.LASF49:
	.string	"_file"
.LASF193:
	.string	"rgb_color_flash"
.LASF74:
	.string	"__cleanup"
.LASF17:
	.string	"_mbstate_t"
.LASF203:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF37:
	.string	"_fnargs"
.LASF35:
	.string	"__tm_isdst"
.LASF130:
	.string	"STRIP_MODE_RED_GRADIENT"
.LASF113:
	.string	"_h_errno"
.LASF207:
	.string	"seven_color_jump_effect"
.LASF174:
	.string	"_Bool"
.LASF158:
	.string	"TickType_t"
.LASF201:
	.string	"product_get_status"
.LASF31:
	.string	"__tm_mon"
.LASF124:
	.string	"green"
.LASF142:
	.string	"STRIP_MODE_RB_GRADIENT"
.LASF136:
	.string	"STRIP_MODE_WHITE_GRADIENT"
.LASF173:
	.string	"rgbw"
.LASF148:
	.string	"STRIP_MODE_RB_STROBE"
.LASF53:
	.string	"_write"
.LASF156:
	.string	"STRIP_MODE_UNKNOWN_CMD"
.LASF41:
	.string	"_atexit"
.LASF62:
	.string	"_mbstate"
.LASF166:
	.string	"led_effect_flag"
.LASF3:
	.string	"short int"
.LASF187:
	.string	"curr_rgb_b"
.LASF209:
	.string	"get_led_effect_disenable"
.LASF186:
	.string	"curr_rgb_g"
.LASF5:
	.string	"long int"
.LASF185:
	.string	"curr_rgb_r"
.LASF119:
	.string	"int16_t"
.LASF85:
	.string	"__sf"
.LASF23:
	.string	"_sign"
.LASF60:
	.string	"_data"
.LASF14:
	.string	"__wchb"
.LASF118:
	.string	"_global_impure_ptr"
.LASF32:
	.string	"__tm_year"
.LASF153:
	.string	"STRIP_MODE_RGB_GRADIENT"
.LASF125:
	.string	"white"
.LASF195:
	.string	"set_all_led_effect"
.LASF98:
	.string	"_localtime_buf"
.LASF116:
	.string	"_unused"
.LASF81:
	.string	"_new"
.LASF79:
	.string	"_cvtlen"
.LASF22:
	.string	"_maxwds"
.LASF105:
	.string	"_l64a_buf"
.LASF141:
	.string	"STRIP_MODE_RG_GRADIENT"
.LASF58:
	.string	"_blksize"
.LASF26:
	.string	"__tm"
.LASF61:
	.string	"_lock"
.LASF172:
	.string	"dirFlag"
.LASF6:
	.string	"long unsigned int"
.LASF196:
	.string	"led_type"
.LASF89:
	.string	"_niobs"
.LASF9:
	.string	"wint_t"
.LASF120:
	.string	"int32_t"
.LASF38:
	.string	"_dso_handle"
.LASF169:
	.string	"set_ambilight_mode"
.LASF183:
	.string	"curr_gradient_2"
.LASF80:
	.string	"_cvtbuf"
.LASF2:
	.string	"unsigned char"
.LASF202:
	.string	"product_save_status"
.LASF164:
	.string	"control_way"
.LASF107:
	.string	"_getdate_err"
.LASF94:
	.string	"_add"
.LASF194:
	.string	"color_cnt"
.LASF44:
	.string	"__sbuf"
.LASF88:
	.string	"_glue"
.LASF163:
	.string	"led_effect_type"
.LASF84:
	.string	"__sglue"
.LASF96:
	.string	"_strtok_last"
.LASF103:
	.string	"_mbtowc_state"
.LASF72:
	.string	"_locale"
.LASF12:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF64:
	.string	"_reent"
.LASF4:
	.string	"short unsigned int"
.LASF167:
	.string	"pre_led_effect_stat"
.LASF168:
	.string	"led_type_flag"
.LASF210:
	.string	"memcpy"
.LASF188:
	.string	"turn_cnt"
.LASF39:
	.string	"_fntypes"
.LASF46:
	.string	"_size"
.LASF160:
	.string	"double"
.LASF165:
	.string	"product_mode_t"
.LASF10:
	.string	"_off_t"
.LASF57:
	.string	"_nbuf"
.LASF95:
	.string	"_unused_rand"
.LASF192:
	.string	"singel_color_gradient_effect"
.LASF71:
	.string	"_unspecified_locale_info"
.LASF63:
	.string	"_flags2"
.LASF40:
	.string	"_is_cxa"
.LASF92:
	.string	"_seed"
.LASF100:
	.string	"_rand_next"
.LASF206:
	.string	"__locale_t"
.LASF181:
	.string	"led_effect_switch"
.LASF54:
	.string	"_seek"
.LASF134:
	.string	"STRIP_MODE_CYAN_GRADIENT"
.LASF68:
	.string	"_stderr"
.LASF115:
	.string	"_nmalloc"
.LASF56:
	.string	"_ubuf"
.LASF152:
	.string	"STRIP_MODE_WHITE_STROBE"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
