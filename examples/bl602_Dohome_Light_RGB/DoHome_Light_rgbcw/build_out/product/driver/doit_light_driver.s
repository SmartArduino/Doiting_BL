	.file	"doit_light_driver.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hw_test_timer_cb,"ax",@progbits
	.align	1
	.globl	hw_test_timer_cb
	.type	hw_test_timer_cb, @function
hw_test_timer_cb:
.LFB29:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
	.loc 1 161 1
	.cfi_startproc
.LVL0:
	.loc 1 162 2
	lui	a5,%hi(task_sem)
	lw	a0,%lo(task_sem)(a5)
.LVL1:
	li	a3,0
	li	a2,0
	li	a1,0
	tail	xQueueGenericSend
.LVL2:
	.cfi_endproc
.LFE29:
	.size	hw_test_timer_cb, .-hw_test_timer_cb
	.section	.text.hw_timer_disable,"ax",@progbits
	.align	1
	.type	hw_timer_disable, @function
hw_timer_disable:
.LFB32:
	.loc 1 190 39
	.cfi_startproc
	.loc 1 192 2
	.loc 1 192 6 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	li	a4,100
	li	a3,0
	li	a2,0
	li	a1,3
	tail	xTimerGenericCommand
.LVL3:
	.cfi_endproc
.LFE32:
	.size	hw_timer_disable, .-hw_timer_disable
	.section	.text.hw_timer_arm,"ax",@progbits
	.align	1
	.type	hw_timer_arm, @function
hw_timer_arm:
.LFB31:
	.loc 1 179 46 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 181 2
	.loc 1 181 5 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	mv	a2,a0
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL5:
	li	a4,1000
	li	a3,0
	li	a1,4
	tail	xTimerGenericCommand
.LVL6:
	.cfi_endproc
.LFE31:
	.size	hw_timer_arm, .-hw_timer_arm
	.section	.text.update_config_upload,"ax",@progbits
	.align	1
	.globl	update_config_upload
	.type	update_config_upload, @function
update_config_upload:
.LFB23:
	.loc 1 85 1 is_stmt 1
	.cfi_startproc
	.loc 1 86 2
	.loc 1 86 5 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 86 4
	beq	a5,zero,.L10
	.loc 1 87 3 is_stmt 1
	.loc 1 85 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 87 3
	jalr	a5
.LVL7:
	.loc 1 89 2 is_stmt 1
	.loc 1 90 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L10:
	.loc 1 89 2 is_stmt 1
	.loc 1 90 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE23:
	.size	update_config_upload, .-update_config_upload
	.section	.text.delay_update_config_upload,"ax",@progbits
	.align	1
	.globl	delay_update_config_upload
	.type	delay_update_config_upload, @function
delay_update_config_upload:
.LFB24:
	.loc 1 96 1 is_stmt 1
	.cfi_startproc
	.loc 1 97 2
	.loc 1 97 5 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a5)
	.loc 1 97 4
	beq	a5,zero,.L19
	.loc 1 98 3 is_stmt 1
	.loc 1 96 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 98 3
	jalr	a5
.LVL8:
	.loc 1 100 2 is_stmt 1
	.loc 1 101 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L19:
	.loc 1 100 2 is_stmt 1
	.loc 1 101 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE24:
	.size	delay_update_config_upload, .-delay_update_config_upload
	.section	.text.get_brightness,"ax",@progbits
	.align	1
	.globl	get_brightness
	.type	get_brightness, @function
get_brightness:
.LFB25:
	.loc 1 107 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 108 2
	.loc 1 109 2
	.loc 1 110 2
	.loc 1 111 2
	.loc 1 112 2
	.loc 1 113 2
	.loc 1 114 2
	.loc 1 113 25 is_stmt 0
	bge	a2,a3,.L23
	mv	a2,a3
.LVL10:
.L23:
	bge	a2,a1,.L24
	mv	a2,a1
.L24:
	bge	a2,a0,.L25
	mv	a2,a0
.L25:
	li	a0,100
.LVL11:
	mul	a2,a2,a0
	.loc 1 115 1
	li	a0,255
	div	a0,a2,a0
	ret
	.cfi_endproc
.LFE25:
	.size	get_brightness, .-get_brightness
	.section	.text.get_led_cfg_mode,"ax",@progbits
	.align	1
	.globl	get_led_cfg_mode
	.type	get_led_cfg_mode, @function
get_led_cfg_mode:
.LFB27:
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
	.loc 1 134 2
	.loc 1 135 1 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a0,%lo(.LANCHOR3)(a5)
	ret
	.cfi_endproc
.LFE27:
	.size	get_led_cfg_mode, .-get_led_cfg_mode
	.section	.text.set_light_work_mode,"ax",@progbits
	.align	1
	.globl	set_light_work_mode
	.type	set_light_work_mode, @function
set_light_work_mode:
.LFB28:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 147 2
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 147 2
	li	a0,0
.LVL13:
	.loc 1 146 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 147 2
	call	set_led_cfg_dohome_effect_cnt
.LVL14:
	.loc 1 148 2 is_stmt 1
	.loc 1 148 15 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sb	s0,%lo(.LANCHOR3)(a5)
	.loc 1 150 2 is_stmt 1
	.loc 1 151 2
	.loc 1 153 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 151 2
	lui	a5,%hi(task_sem)
	.loc 1 153 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 151 2
	lw	a0,%lo(task_sem)(a5)
	li	a3,0
	.loc 1 153 1
	.loc 1 151 2
	li	a2,0
	li	a1,0
	.loc 1 153 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 151 2
	tail	xQueueGenericSend
.LVL15:
	.cfi_endproc
.LFE28:
	.size	set_light_work_mode, .-set_light_work_mode
	.section	.text.init_led_cfg_mode,"ax",@progbits
	.align	1
	.globl	init_led_cfg_mode
	.type	init_led_cfg_mode, @function
init_led_cfg_mode:
.LFB35:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
	.loc 1 288 2
	.loc 1 285 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 288 13
	li	a2,3
	li	a1,0
	li	a0,1
	.loc 1 285 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 288 13
	call	xQueueGenericCreate
.LVL16:
	.loc 1 288 11
	lui	s2,%hi(task_sem)
	sw	a0,%lo(task_sem)(s2)
	.loc 1 289 2 is_stmt 1
	.loc 1 289 17 is_stmt 0
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
.LVL17:
	.loc 1 289 15
	lui	s1,%hi(hanler_mutex)
	sw	a0,%lo(hanler_mutex)(s1)
	.loc 1 290 2 is_stmt 1
	.loc 1 290 14 is_stmt 0
	li	a2,3
	li	a1,0
	li	a0,1
	call	xQueueGenericCreate
.LVL18:
	.loc 1 290 12
	lui	s0,%hi(pwm_mutex)
	sw	a0,%lo(pwm_mutex)(s0)
	.loc 1 292 2 is_stmt 1
	lw	a0,%lo(task_sem)(s2)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL19:
	.loc 1 293 2
	lw	a0,%lo(hanler_mutex)(s1)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL20:
	.loc 1 294 2
	lw	a0,%lo(pwm_mutex)(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL21:
	.loc 1 296 2
.LBB63:
.LBB64:
	.loc 1 170 2
	.loc 1 170 22 is_stmt 0
	lui	a4,%hi(hw_test_timer_cb)
	lui	a0,%hi(.LC1)
	addi	a4,a4,%lo(hw_test_timer_cb)
	li	a3,0
	li	a2,1
	li	a1,6
	addi	a0,a0,%lo(.LC1)
	call	xTimerCreate
.LVL22:
.LBE64:
.LBE63:
	.loc 1 299 1
	lw	s0,8(sp)
	.cfi_restore 8
.LBB67:
.LBB65:
	.loc 1 170 20
	lui	a5,%hi(.LANCHOR0)
.LBE65:
.LBE67:
	.loc 1 299 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LBB68:
.LBB66:
	.loc 1 170 20
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 171 2 is_stmt 1
	.loc 1 172 9
.LBE66:
.LBE68:
	.loc 1 298 2
	li	a2,8192
	lui	a1,%hi(.LC2)
	lui	a0,%hi(light_change_task)
	.loc 1 299 1 is_stmt 0
	.loc 1 298 2
	li	a5,0
	li	a4,3
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(light_change_task)
	.loc 1 299 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 298 2
	tail	xTaskCreate
.LVL23:
	.cfi_endproc
.LFE35:
	.size	init_led_cfg_mode, .-init_led_cfg_mode
	.section	.text.start_led_change,"ax",@progbits
	.align	1
	.globl	start_led_change
	.type	start_led_change, @function
start_led_change:
.LFB38:
	.loc 1 354 1 is_stmt 1
	.cfi_startproc
.LVL24:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s7,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.loc 1 356 16 is_stmt 0
	lui	s2,%hi(.LANCHOR4)
	.loc 1 354 1
	mv	s0,a0
	mv	s6,a1
	lh	s3,6(a0)
.LVL25:
	lh	s4,8(a0)
.LVL26:
	.loc 1 355 2 is_stmt 1
	.loc 1 355 35 is_stmt 0
	call	product_get_status
.LVL27:
	.loc 1 356 2 is_stmt 1
	.loc 1 356 16 is_stmt 0
	addi	a5,s2,%lo(.LANCHOR4)
	.loc 1 356 5
	lh	a4,4(a5)
	li	a5,8192
	addi	a5,a5,1807
	addi	s1,s2,%lo(.LANCHOR4)
	lui	s5,%hi(.LANCHOR5)
	bne	a4,a5,.L32
	.loc 1 357 14
	mv	a1,a0
	mv	s7,a0
	.loc 1 357 3 is_stmt 1
	.loc 1 357 14 is_stmt 0
	li	a2,12
	addi	a0,s5,%lo(.LANCHOR5)
.LVL28:
	call	memcpy
.LVL29:
	.loc 1 358 3 is_stmt 1
	.loc 1 358 14 is_stmt 0
	li	a2,12
	mv	a1,s7
	addi	a0,s2,%lo(.LANCHOR4)
	call	memcpy
.LVL30:
.L32:
	.loc 1 361 2 is_stmt 1
	.loc 1 362 2
	.loc 1 364 2
	.loc 1 365 2
	.loc 1 366 2
	.loc 1 369 2
	.loc 1 369 16 is_stmt 0
	addi	a5,s5,%lo(.LANCHOR5)
	.loc 1 369 5
	lh	a3,4(a5)
	lh	a4,4(s0)
	bne	a3,a4,.L33
	.loc 1 369 32 discriminator 1
	lh	a3,2(a5)
	lh	a4,2(s0)
	bne	a3,a4,.L33
	.loc 1 369 65 discriminator 2
	lh	a3,0(a5)
	lh	a4,0(s0)
	bne	a3,a4,.L33
	.loc 1 369 96 discriminator 3
	lh	a4,6(a5)
	bne	a4,s3,.L33
	.loc 1 369 129 discriminator 4
	lh	a5,8(a5)
	beq	a5,s4,.L31
.L33:
	.loc 1 378 2 is_stmt 1
	lui	s2,%hi(hanler_mutex)
	lw	a0,%lo(hanler_mutex)(s2)
	li	a1,4096
	addi	a1,a1,904
	call	xQueueSemaphoreTake
.LVL31:
	.loc 1 380 2
	.loc 1 380 18 is_stmt 0
	lui	a5,%hi(.LANCHOR6)
	.loc 1 381 13
	li	a2,12
	mv	a1,s0
	.loc 1 380 18
	li	s7,1
	.loc 1 381 13
	addi	a0,s5,%lo(.LANCHOR5)
	.loc 1 380 18
	sw	s7,%lo(.LANCHOR6)(a5)
	.loc 1 381 2 is_stmt 1
	.loc 1 381 13 is_stmt 0
	call	memcpy
.LVL32:
	.loc 1 382 2 is_stmt 1
	.loc 1 382 19 is_stmt 0
	lui	a5,%hi(.LANCHOR7)
	.loc 1 383 2
	li	a0,2
	.loc 1 382 19
	sw	zero,%lo(.LANCHOR7)(a5)
	.loc 1 383 2 is_stmt 1
	call	set_light_work_mode
.LVL33:
	.loc 1 385 2
	.loc 1 414 3 is_stmt 0
	mv	a0,s6
	.loc 1 385 5
	bne	s6,zero,.L51
.LVL34:
	.loc 1 386 3 is_stmt 1
	.loc 1 386 6 is_stmt 0
	lbu	a5,10(s0)
	bne	a5,s7,.L36
	.loc 1 387 4 is_stmt 1 discriminator 1
	.loc 1 387 22 is_stmt 0 discriminator 1
	or	a5,s4,s3
	.loc 1 388 5 discriminator 1
	li	a0,8
.LVL35:
	.loc 1 387 22 discriminator 1
	beq	a5,zero,.L51
.LBB76:
	.loc 1 391 5 is_stmt 1
.LVL36:
.LBB77:
.LBB78:
	.loc 1 122 2
	.loc 1 123 2
	.loc 1 124 2
	.loc 1 125 2
.LBE78:
.LBE77:
	.loc 1 392 5
	.loc 1 392 30 is_stmt 0
	lhu	a5,6(s1)
	lhu	a4,8(s1)
	or	a5,a5,a4
	bne	a5,zero,.L39
	.loc 1 391 15 discriminator 2
	lh	a4,2(s1)
.LBB81:
.LBB79:
	.loc 1 122 6 discriminator 2
	lh	a5,4(s1)
	bge	a5,a4,.L40
	mv	a5,a4
.L40:
.LBE79:
.LBE81:
	.loc 1 391 15 discriminator 2
	lh	a4,0(s1)
	bge	a4,zero,.L41
	li	a4,0
.L41:
.LBB82:
.LBB80:
	.loc 1 125 19 discriminator 2
	mv	a3,a5
	bge	a5,a4,.L42
	mv	a3,a4
.L42:
.LBE80:
.LBE82:
	.loc 1 392 56 discriminator 2
	beq	a3,zero,.L39
	.loc 1 393 6 is_stmt 1
.LVL37:
	.loc 1 394 6
	.loc 1 393 42 is_stmt 0
	mv	a3,s4
	bge	s4,s3,.L44
.LVL38:
	mv	a3,s3
.LVL39:
.L44:
	.loc 1 394 8
	slli	a3,a3,16
	srai	a3,a3,16
	li	a2,333
	.loc 1 395 7
	li	a0,16
	.loc 1 394 8
	bgt	a3,a2,.L51
	.loc 1 397 7 is_stmt 1
.LVL40:
.LBB83:
.LBB84:
	.loc 1 122 2
	.loc 1 123 2
	.loc 1 124 2
	.loc 1 125 2
.LBE84:
.LBE83:
	.loc 1 398 7
.LBB86:
.LBB85:
	.loc 1 124 6 is_stmt 0
	bge	a5,a4,.L46
	mv	a5,a4
.LVL41:
.L46:
.LBE85:
.LBE86:
	.loc 1 398 9
	li	a4,500
	.loc 1 401 8
	li	a0,10
	.loc 1 398 9
	ble	a5,a4,.L51
.L36:
	.loc 1 399 8 is_stmt 1
	li	a0,4
.L51:
.LBE76:
	.loc 1 414 3 is_stmt 0
	call	hw_timer_arm
.LVL42:
	.loc 1 418 2 is_stmt 1
	.loc 1 419 2
.LBB87:
.LBB88:
	.loc 1 202 2
	.loc 1 202 6 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	s0,%lo(.LANCHOR0)(a5)
	call	xTaskGetTickCount
.LVL43:
	mv	a2,a0
	li	a3,0
	li	a1,1
	mv	a0,s0
	li	a4,100
	call	xTimerGenericCommand
.LVL44:
	.loc 1 203 3 is_stmt 1
.LBE88:
.LBE87:
	.loc 1 421 2
	.loc 1 422 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 421 2
	lw	a0,%lo(hanler_mutex)(s2)
	.loc 1 422 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL45:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL46:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL47:
	lw	s7,12(sp)
	.cfi_restore 23
	.loc 1 421 2
	li	a3,0
	.loc 1 422 1
	.loc 1 421 2
	li	a2,0
	li	a1,0
	.loc 1 422 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 421 2
	tail	xQueueGenericSend
.LVL48:
.L39:
	.cfi_restore_state
.LBB89:
	.loc 1 405 6 is_stmt 1
	li	a0,18
	j	.L51
.LVL49:
.L31:
.LBE89:
	.loc 1 422 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL50:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL51:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
.LVL52:
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	start_led_change, .-start_led_change
	.section	.text.led_load_saved_color,"ax",@progbits
	.align	1
	.globl	led_load_saved_color
	.type	led_load_saved_color, @function
led_load_saved_color:
.LFB36:
	.loc 1 306 1 is_stmt 1
	.cfi_startproc
	.loc 1 307 2
	.loc 1 306 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 307 35
	call	product_get_status
.LVL53:
	.loc 1 314 18
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	.loc 1 310 27
	li	a4,1
	sb	a4,10(a0)
	.loc 1 307 35
	mv	a1,a0
.LVL54:
	.loc 1 309 2 is_stmt 1
	.loc 1 310 2
	.loc 1 312 2
	.loc 1 313 2
	.loc 1 314 2
	.loc 1 315 2
	.loc 1 316 2
	.loc 1 317 2
	.loc 1 314 18 is_stmt 0
	sw	zero,0(a5)
	.loc 1 312 17
	sw	zero,4(a5)
	.loc 1 318 2
	li	a2,12
	mv	a0,sp
.LVL55:
	.loc 1 316 20
	sh	zero,8(a5)
	.loc 1 317 16
	sb	a4,10(a5)
	.loc 1 318 2 is_stmt 1
	call	memcpy
.LVL56:
	mv	a0,sp
	li	a1,0
	call	start_led_change
.LVL57:
	.loc 1 319 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE36:
	.size	led_load_saved_color, .-led_load_saved_color
	.globl	__floatunsidf
	.globl	__floatsidf
	.globl	__divdf3
	.globl	__truncdfsf2
	.section	.text.cal_step,"ax",@progbits
	.align	1
	.globl	cal_step
	.type	cal_step, @function
cal_step:
.LFB40:
	.loc 1 438 1 is_stmt 1
	.cfi_startproc
	.loc 1 439 2
.LVL58:
	.loc 1 440 2
	.loc 1 441 2
	.loc 1 442 2
	.loc 1 443 2
	.loc 1 444 2
	.loc 1 447 2
	.loc 1 448 2
	.loc 1 449 2
	.loc 1 450 2
	.loc 1 451 2
	.loc 1 452 2
	.loc 1 453 2
	.loc 1 454 2
	.loc 1 455 2
	.loc 1 456 2
	.loc 1 458 2
	.loc 1 438 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 458 25
	lui	a4,%hi(.LANCHOR5)
	.loc 1 458 42
	lui	a5,%hi(.LANCHOR4)
	.loc 1 438 1
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s8,8(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s3,28(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s9,4(sp)
	sw	s10,0(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.loc 1 458 25
	addi	a4,a4,%lo(.LANCHOR5)
	.loc 1 458 42
	addi	a5,a5,%lo(.LANCHOR4)
	.loc 1 458 25
	lh	t1,4(a4)
	.loc 1 458 42
	lh	t3,4(a5)
	.loc 1 459 27
	lh	a6,2(a4)
	.loc 1 459 46
	lh	a7,2(a5)
	.loc 1 460 26
	lh	a1,0(a4)
	.loc 1 460 44
	lh	a0,0(a5)
	.loc 1 461 27
	lh	a3,6(a4)
	.loc 1 461 46
	lh	a2,6(a5)
	.loc 1 462 26
	lh	a4,8(a4)
	.loc 1 462 46
	lh	a5,8(a5)
	.loc 1 458 13
	sub	s2,t1,t3
.LVL59:
	.loc 1 459 2 is_stmt 1
	.loc 1 459 15 is_stmt 0
	sub	s1,a6,a7
.LVL60:
	.loc 1 460 2 is_stmt 1
	.loc 1 460 14 is_stmt 0
	sub	s5,a1,a0
.LVL61:
	.loc 1 461 2 is_stmt 1
	.loc 1 461 15 is_stmt 0
	sub	s8,a3,a2
.LVL62:
	.loc 1 462 2 is_stmt 1
	.loc 1 462 14 is_stmt 0
	sub	s4,a4,a5
.LVL63:
	.loc 1 463 2 is_stmt 1
.LBB90:
.LBB91:
	.loc 1 427 2
	.loc 1 427 5 is_stmt 0
	bge	s2,zero,.L55
	.loc 1 428 3 is_stmt 1
	.loc 1 428 12 is_stmt 0
	sub	s2,t3,t1
.LVL64:
.L55:
.LBE91:
.LBE90:
.LBB92:
.LBB93:
	.loc 1 427 2 is_stmt 1
	.loc 1 427 5 is_stmt 0
	bge	s1,zero,.L56
	.loc 1 428 3 is_stmt 1
	.loc 1 428 12 is_stmt 0
	sub	s1,a7,a6
.LVL65:
.L56:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 1 427 2 is_stmt 1
	.loc 1 427 5 is_stmt 0
	bge	s5,zero,.L57
	.loc 1 428 3 is_stmt 1
	.loc 1 428 12 is_stmt 0
	sub	s5,a0,a1
.LVL66:
.L57:
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 1 427 2 is_stmt 1
	.loc 1 427 5 is_stmt 0
	bge	s8,zero,.L58
	.loc 1 428 3 is_stmt 1
	.loc 1 428 12 is_stmt 0
	sub	s8,a2,a3
.LVL67:
.L58:
.LBE97:
.LBE96:
.LBB98:
.LBB99:
	.loc 1 427 2 is_stmt 1
	.loc 1 427 5 is_stmt 0
	bge	s4,zero,.L59
	.loc 1 428 3 is_stmt 1
	.loc 1 428 12 is_stmt 0
	sub	s4,a5,a4
.LVL68:
.L59:
.LBE99:
.LBE98:
.LBB100:
.LBB101:
	.loc 1 122 2 is_stmt 1
	.loc 1 123 2
	.loc 1 124 2
	.loc 1 124 6 is_stmt 0
	mv	s3,s2
	bge	s2,s1,.L60
	mv	s3,s1
.L60:
	bge	s3,s5,.L61
	mv	s3,s5
.L61:
	bge	s3,s8,.L62
	mv	s3,s8
.L62:
.LVL69:
	.loc 1 125 2 is_stmt 1
	.loc 1 125 19 is_stmt 0
	mv	s0,s4
	bge	s4,s3,.L63
.LVL70:
	mv	s0,s3
.LVL71:
.L63:
.LBE101:
.LBE100:
	.loc 1 464 2 is_stmt 1
	.loc 1 465 10 is_stmt 0
	li	a0,0
.LVL72:
	.loc 1 464 5
	beq	s0,zero,.L54
	.loc 1 468 2 is_stmt 1
	.loc 1 468 22 is_stmt 0
	lui	s9,%hi(.LANCHOR6)
	addi	s9,s9,%lo(.LANCHOR6)
	.loc 1 468 5
	lw	a4,0(s9)
.LVL73:
	li	a5,1
.LVL74:
	bne	a4,a5,.L65
	.loc 1 469 3 is_stmt 1
.LVL75:
	.loc 1 427 2
	.loc 1 469 35 is_stmt 0
	mv	a0,s0
	call	__floatunsidf
.LVL76:
	mv	s6,a0
	.loc 1 469 29
	mv	a0,s2
	.loc 1 469 35
	mv	s7,a1
	.loc 1 469 29
	call	__floatsidf
.LVL77:
	.loc 1 469 35
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
.LVL78:
	call	__truncdfsf2
.LVL79:
	.loc 1 469 11
	lui	s10,%hi(.LANCHOR8)
	.loc 1 469 35
	fsw	fa0,%lo(.LANCHOR8)(s10)
	.loc 1 470 3 is_stmt 1
.LVL80:
	.loc 1 427 2
	.loc 1 470 31 is_stmt 0
	mv	a0,s1
	call	__floatsidf
.LVL81:
	.loc 1 470 37
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
.LVL82:
	call	__truncdfsf2
.LVL83:
	.loc 1 470 11
	lui	s10,%hi(.LANCHOR9)
	.loc 1 470 37
	fsw	fa0,%lo(.LANCHOR9)(s10)
	.loc 1 471 3 is_stmt 1
.LVL84:
	.loc 1 427 2
	.loc 1 471 30 is_stmt 0
	mv	a0,s5
	call	__floatsidf
.LVL85:
	.loc 1 471 36
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
.LVL86:
	call	__truncdfsf2
.LVL87:
	.loc 1 471 11
	lui	s10,%hi(.LANCHOR10)
	.loc 1 471 36
	fsw	fa0,%lo(.LANCHOR10)(s10)
	.loc 1 472 3 is_stmt 1
.LVL88:
	.loc 1 427 2
	.loc 1 472 31 is_stmt 0
	mv	a0,s8
	call	__floatsidf
.LVL89:
	.loc 1 472 37
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
.LVL90:
	call	__truncdfsf2
.LVL91:
	.loc 1 472 11
	lui	s10,%hi(.LANCHOR11)
	.loc 1 472 37
	fsw	fa0,%lo(.LANCHOR11)(s10)
	.loc 1 473 3 is_stmt 1
.LVL92:
	.loc 1 427 2
	.loc 1 473 31 is_stmt 0
	mv	a0,s4
	call	__floatsidf
.LVL93:
	.loc 1 473 37
	mv	a2,s6
	mv	a3,s7
	call	__divdf3
.LVL94:
	call	__truncdfsf2
.LVL95:
	.loc 1 473 12
	lui	s10,%hi(.LANCHOR12)
	.loc 1 473 37
	fsw	fa0,%lo(.LANCHOR12)(s10)
	.loc 1 474 3 is_stmt 1
	.loc 1 474 19 is_stmt 0
	sw	zero,0(s9)
.L65:
	.loc 1 475 3 is_stmt 1
	.loc 1 477 2
.LVL96:
	.loc 1 427 2
	.loc 1 478 16 is_stmt 0
	li	a2,10
	.loc 1 477 5
	beq	s2,s0,.L66
	.loc 1 480 3 is_stmt 1
.LVL97:
	.loc 1 427 2
	.loc 1 427 2
	.loc 1 480 38 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	flw	fa3,%lo(.LANCHOR8)(a5)
	.loc 1 480 50
	fcvt.s.wu	fa4,s0
	.loc 1 480 38
	fcvt.s.w	fa5,s2
	fnmsub.s	fa5,fa4,fa3,fa5
	.loc 1 480 18
	fcvt.w.s a2,fa5,rtz
	.loc 1 480 16
	srai	a5,a2,31
	xor	a2,a5,a2
	sub	a2,a2,a5
.LVL98:
.L66:
	.loc 1 483 2 is_stmt 1
	.loc 1 427 2
	.loc 1 484 18 is_stmt 0
	li	a3,10
	.loc 1 483 5
	beq	s1,s0,.L67
	.loc 1 486 3 is_stmt 1
.LVL99:
	.loc 1 427 2
	.loc 1 427 2
	.loc 1 486 42 is_stmt 0
	lui	a5,%hi(.LANCHOR9)
	flw	fa3,%lo(.LANCHOR9)(a5)
	.loc 1 486 54
	fcvt.s.wu	fa4,s0
	.loc 1 486 42
	fcvt.s.w	fa5,s1
	fnmsub.s	fa5,fa4,fa3,fa5
	.loc 1 486 20
	fcvt.w.s a3,fa5,rtz
	.loc 1 486 18
	srai	a5,a3,31
	xor	a3,a5,a3
	sub	a3,a3,a5
.LVL100:
.L67:
	.loc 1 489 2 is_stmt 1
	.loc 1 427 2
	.loc 1 490 17 is_stmt 0
	li	a4,10
	.loc 1 489 5
	beq	s5,s0,.L68
	.loc 1 492 3 is_stmt 1
.LVL101:
	.loc 1 427 2
	.loc 1 427 2
	.loc 1 492 40 is_stmt 0
	lui	a5,%hi(.LANCHOR10)
	flw	fa3,%lo(.LANCHOR10)(a5)
	.loc 1 492 52
	fcvt.s.wu	fa5,s0
	.loc 1 492 40
	fcvt.s.w	fa4,s5
	fnmsub.s	fa5,fa5,fa3,fa4
	.loc 1 492 19
	fcvt.w.s a4,fa5,rtz
	.loc 1 492 17
	srai	a5,a4,31
	xor	a4,a5,a4
	sub	a4,a4,a5
.LVL102:
.L68:
	.loc 1 495 2 is_stmt 1
	.loc 1 427 2
	.loc 1 496 18 is_stmt 0
	li	a5,10
	.loc 1 495 5
	beq	s8,s0,.L69
	.loc 1 498 3 is_stmt 1
.LVL103:
	.loc 1 427 2
	.loc 1 427 2
	.loc 1 498 42 is_stmt 0
	lui	a5,%hi(.LANCHOR11)
	flw	fa3,%lo(.LANCHOR11)(a5)
	.loc 1 498 54
	fcvt.s.wu	fa5,s0
	.loc 1 498 42
	fcvt.s.w	fa4,s8
	fnmsub.s	fa5,fa5,fa3,fa4
	.loc 1 498 20
	fcvt.w.s a5,fa5,rtz
	.loc 1 498 18
	srai	a1,a5,31
	xor	a5,a1,a5
	sub	a5,a5,a1
.LVL104:
.L69:
	.loc 1 501 2 is_stmt 1
	.loc 1 427 2
	.loc 1 502 17 is_stmt 0
	li	a0,10
	.loc 1 501 5
	bge	s4,s3,.L70
	.loc 1 504 3 is_stmt 1
.LVL105:
	.loc 1 427 2
	.loc 1 427 2
	.loc 1 504 40 is_stmt 0
	lui	a1,%hi(.LANCHOR12)
	.loc 1 504 52
	fcvt.s.wu	fa5,s0
	.loc 1 504 40
	flw	fa3,%lo(.LANCHOR12)(a1)
	fcvt.s.w	fa4,s4
	fnmsub.s	fa5,fa5,fa3,fa4
	.loc 1 504 19
	fcvt.w.s s0,fa5,rtz
.LVL106:
	.loc 1 504 17
	srai	a1,s0,31
	xor	a0,a1,s0
	sub	a0,a0,a1
.LVL107:
.L70:
	.loc 1 508 2 is_stmt 1
	.loc 1 508 17 is_stmt 0
	lui	a1,%hi(.LANCHOR13)
	addi	a1,a1,%lo(.LANCHOR13)
	.loc 1 512 20
	sh	a0,8(a1)
	.loc 1 508 17
	sh	a2,4(a1)
	.loc 1 509 2 is_stmt 1
	.loc 1 509 19 is_stmt 0
	sh	a3,2(a1)
	.loc 1 510 2 is_stmt 1
	.loc 1 510 18 is_stmt 0
	sh	a4,0(a1)
	.loc 1 511 2 is_stmt 1
	.loc 1 511 19 is_stmt 0
	sh	a5,6(a1)
	.loc 1 512 2 is_stmt 1
	.loc 1 518 2
	.loc 1 518 9 is_stmt 0
	li	a0,1
.LVL108:
.L54:
	.loc 1 519 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	lw	s10,0(sp)
	.cfi_restore 26
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	cal_step, .-cal_step
	.section	.text.send_light_data,"ax",@progbits
	.align	1
	.globl	send_light_data
	.type	send_light_data, @function
send_light_data:
.LFB42:
	.loc 1 642 1 is_stmt 1
	.cfi_startproc
.LVL109:
	.loc 1 643 2
	.loc 1 644 2
	.loc 1 646 2
	.loc 1 646 16 is_stmt 0
	add	a6,a0,a1
	.loc 1 646 20
	add	a6,a6,a2
	.loc 1 646 24
	add	a6,a6,a3
	.loc 1 646 28
	add	a6,a6,a4
	.loc 1 646 8
	fcvt.s.w	fa5,a6
.LVL110:
	.loc 1 647 2 is_stmt 1
	.loc 1 647 5 is_stmt 0
	fmv.s.x	fa4,zero
	.loc 1 642 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	.loc 1 647 5
	fgt.s	a6,fa5,fa4
	.loc 1 642 1
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 647 5
	beq	a6,zero,.L79
	.loc 1 647 12 discriminator 1
	lui	a6,%hi(.LC3)
	flw	fa4,%lo(.LC3)(a6)
	flt.s	a6,fa5,fa4
	beq	a6,zero,.L79
	.loc 1 648 3 is_stmt 1
	.loc 1 648 13 is_stmt 0
	li	s3,0
	beq	a0,zero,.L82
	.loc 1 648 33 discriminator 1
	li	s3,20
	mul	a0,a0,s3
.LVL111:
	.loc 1 648 37 discriminator 1
	fcvt.s.w	fa4,a0
	fdiv.s	fa4,fa4,fa5
	.loc 1 648 13 discriminator 1
	fcvt.w.s s3,fa4,rtz
	slli	s3,s3,16
	srai	s3,s3,16
.L82:
.LVL112:
	.loc 1 649 3 is_stmt 1 discriminator 4
	.loc 1 649 15 is_stmt 0 discriminator 4
	li	s4,0
	beq	a1,zero,.L83
	.loc 1 649 35 discriminator 1
	li	a0,20
	mul	a1,a1,a0
.LVL113:
	.loc 1 649 39 discriminator 1
	fcvt.s.w	fa4,a1
	fdiv.s	fa4,fa4,fa5
	.loc 1 649 15 discriminator 1
	fcvt.w.s a0,fa4,rtz
	slli	s4,a0,16
	srai	s4,s4,16
.L83:
.LVL114:
	.loc 1 650 3 is_stmt 1 discriminator 4
	.loc 1 650 14 is_stmt 0 discriminator 4
	li	s2,0
	beq	a2,zero,.L84
	.loc 1 650 34 discriminator 1
	li	a1,20
	mul	a1,a2,a1
	.loc 1 650 38 discriminator 1
	fcvt.s.w	fa4,a1
	fdiv.s	fa4,fa4,fa5
	.loc 1 650 14 discriminator 1
	fcvt.w.s s2,fa4,rtz
	slli	s2,s2,16
	srai	s2,s2,16
.L84:
.LVL115:
	.loc 1 651 3 is_stmt 1 discriminator 4
	.loc 1 651 15 is_stmt 0 discriminator 4
	li	s1,0
	beq	a3,zero,.L85
	.loc 1 651 35 discriminator 1
	li	a2,20
.LVL116:
	mul	a2,a3,a2
	.loc 1 651 39 discriminator 1
	fcvt.s.w	fa4,a2
	fdiv.s	fa4,fa4,fa5
	.loc 1 651 15 discriminator 1
	fcvt.w.s s1,fa4,rtz
	slli	s1,s1,16
	srai	s1,s1,16
.L85:
.LVL117:
	.loc 1 652 3 is_stmt 1 discriminator 4
	.loc 1 652 16 is_stmt 0 discriminator 4
	li	s0,0
	beq	a4,zero,.L86
	.loc 1 652 36 discriminator 1
	li	a3,20
.LVL118:
	mul	a3,a4,a3
	.loc 1 652 40 discriminator 1
	fcvt.s.w	fa4,a3
	fdiv.s	fa5,fa4,fa5
.LVL119:
	.loc 1 652 16 discriminator 1
	fcvt.w.s s0,fa5,rtz
	slli	s0,s0,16
.L100:
	.loc 1 660 16
	srai	s0,s0,16
.LVL120:
.L86:
	.loc 1 676 2
	li	s5,1
	li	a2,12
	addi	a1,sp,36
	addi	a0,sp,16
	sw	a5,12(sp)
.LVL121:
	.loc 1 675 2 is_stmt 1
	.loc 1 676 2
	sh	s2,36(sp)
	sh	s4,38(sp)
	sh	s3,40(sp)
	sh	s1,42(sp)
	sh	s0,44(sp)
	sb	s5,46(sp)
	call	memcpy
.LVL122:
	lw	a5,12(sp)
	addi	a0,sp,16
	mv	a1,a5
	call	start_led_change
.LVL123:
	.loc 1 678 2
	.loc 1 678 35 is_stmt 0
	call	product_get_status
.LVL124:
	.loc 1 679 2 is_stmt 1
	.loc 1 679 24 is_stmt 0
	sh	s2,0(a0)
	sh	s4,2(a0)
	sh	s3,4(a0)
	sh	s1,6(a0)
	sh	s0,8(a0)
	sb	s5,10(a0)
	.loc 1 680 2 is_stmt 1
	.loc 1 681 1 is_stmt 0
	lw	s0,72(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL125:
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s1,68(sp)
	.cfi_restore 9
.LVL126:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL127:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL128:
	lw	s4,56(sp)
	.cfi_restore 20
.LVL129:
	lw	s5,52(sp)
	.cfi_restore 21
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LVL130:
	.loc 1 680 2
	tail	delay_update_config_upload
.LVL131:
.L79:
	.cfi_restore_state
	.loc 1 654 3 is_stmt 1
	.loc 1 654 13 is_stmt 0
	slli	s3,a0,16
	.loc 1 655 15
	slli	s4,a1,16
	.loc 1 656 14
	slli	s2,a2,16
	.loc 1 657 15
	slli	s1,a3,16
	.loc 1 654 13
	srai	s3,s3,16
.LVL132:
	.loc 1 655 3 is_stmt 1
	.loc 1 655 15 is_stmt 0
	srai	s4,s4,16
.LVL133:
	.loc 1 656 3 is_stmt 1
	.loc 1 656 14 is_stmt 0
	srai	s2,s2,16
.LVL134:
	.loc 1 657 3 is_stmt 1
	.loc 1 657 15 is_stmt 0
	srai	s1,s1,16
.LVL135:
	.loc 1 660 3 is_stmt 1
	.loc 1 660 16 is_stmt 0
	slli	s0,a4,16
	j	.L100
	.cfi_endproc
.LFE42:
	.size	send_light_data, .-send_light_data
	.section	.text.led_rgb_set_off,"ax",@progbits
	.align	1
	.globl	led_rgb_set_off
	.type	led_rgb_set_off, @function
led_rgb_set_off:
.LFB44:
	.loc 1 707 24 is_stmt 1
	.cfi_startproc
	.loc 1 708 2
	.loc 1 707 24 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 709 2
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	.loc 1 707 24
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 708 14
	sw	zero,20(sp)
	sw	zero,24(sp)
	sh	zero,28(sp)
	sb	zero,30(sp)
	.loc 1 709 2 is_stmt 1
	call	memcpy
.LVL136:
	mv	a0,sp
	li	a1,0
	call	start_led_change
.LVL137:
	.loc 1 710 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE44:
	.size	led_rgb_set_off, .-led_rgb_set_off
	.section	.text.send_light_onoff,"ax",@progbits
	.align	1
	.globl	send_light_onoff
	.type	send_light_onoff, @function
send_light_onoff:
.LFB43:
	.loc 1 687 1 is_stmt 1
	.cfi_startproc
.LVL138:
	.loc 1 688 2
	.loc 1 687 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 687 1
	mv	s1,a0
	.loc 1 688 35
	call	product_get_status
.LVL139:
	.loc 1 689 2 is_stmt 1
	.loc 1 689 5 is_stmt 0
	lbu	a5,10(a0)
	beq	a5,s1,.L107
	mv	s0,a0
	.loc 1 690 3 is_stmt 1
	.loc 1 690 6 is_stmt 0
	beq	s1,zero,.L105
	.loc 1 691 4 is_stmt 1
	call	led_load_saved_color
.LVL140:
	.loc 1 692 4
	.loc 1 692 29 is_stmt 0
	li	a5,1
	sb	a5,10(s0)
.L106:
	.loc 1 697 3 is_stmt 1
	call	update_config_upload
.LVL141:
	.loc 1 698 3
	.loc 1 698 10 is_stmt 0
	li	a0,1
.LVL142:
.L103:
	.loc 1 701 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL143:
.L105:
	.cfi_restore_state
	.loc 1 694 4 is_stmt 1
	call	led_rgb_set_off
.LVL144:
	.loc 1 695 4
	.loc 1 695 29 is_stmt 0
	sb	zero,10(s0)
	j	.L106
.LVL145:
.L107:
	.loc 1 700 9
	li	a0,0
.LVL146:
	j	.L103
	.cfi_endproc
.LFE43:
	.size	send_light_onoff, .-send_light_onoff
	.section	.text.light_shutdown_cb,"ax",@progbits
	.align	1
	.globl	light_shutdown_cb
	.type	light_shutdown_cb, @function
light_shutdown_cb:
.LFB46:
	.loc 1 737 29 is_stmt 1
	.cfi_startproc
	.loc 1 739 2
	li	a0,0
	tail	send_light_onoff
.LVL147:
	.cfi_endproc
.LFE46:
	.size	light_shutdown_cb, .-light_shutdown_cb
	.section	.text.light_boot_cb,"ax",@progbits
	.align	1
	.globl	light_boot_cb
	.type	light_boot_cb, @function
light_boot_cb:
.LFB47:
	.loc 1 742 25
	.cfi_startproc
	.loc 1 744 2
	li	a0,1
	tail	send_light_onoff
.LVL148:
	.cfi_endproc
.LFE47:
	.size	light_boot_cb, .-light_boot_cb
	.section	.text.send_light_data_pwm,"ax",@progbits
	.align	1
	.globl	send_light_data_pwm
	.type	send_light_data_pwm, @function
send_light_data_pwm:
.LFB48:
	.loc 1 755 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 755 1 is_stmt 0
	mv	a5,a0
	lh	s2,0(a0)
.LVL149:
	lh	s3,2(a0)
.LVL150:
	lh	a0,4(a0)
.LVL151:
	lh	s1,6(a5)
.LVL152:
	lh	s0,8(a5)
.LVL153:
	.loc 1 761 2 is_stmt 1
	.loc 1 764 2
	li	s5,0
	.loc 1 764 5 is_stmt 0
	beq	a0,zero,.L112
	.loc 1 765 8 is_stmt 1
	.loc 1 765 13 is_stmt 0
	li	a4,8192
	addi	a4,a4,1808
	li	a3,0
	li	a2,1000
	li	a1,0
	call	map
.LVL154:
	mv	s5,a0
.LVL155:
.L112:
	.loc 1 767 2 is_stmt 1
	.loc 1 767 27 is_stmt 0
	li	s4,0
	.loc 1 767 5
	beq	s3,zero,.L113
	.loc 1 768 8 is_stmt 1
	.loc 1 768 13 is_stmt 0
	li	a4,8192
	addi	a4,a4,1808
	li	a3,0
	li	a2,1000
	li	a1,0
	mv	a0,s3
	call	map
.LVL156:
	mv	s4,a0
.LVL157:
.L113:
	.loc 1 770 2 is_stmt 1
	.loc 1 770 26 is_stmt 0
	li	s3,0
.LVL158:
	.loc 1 770 5
	beq	s2,zero,.L114
	.loc 1 771 8 is_stmt 1
	.loc 1 771 13 is_stmt 0
	li	a4,8192
	addi	a4,a4,1808
	li	a3,0
	li	a2,1000
	li	a1,0
	mv	a0,s2
	call	map
.LVL159:
	mv	s3,a0
.LVL160:
.L114:
	.loc 1 773 2 is_stmt 1
	.loc 1 773 27 is_stmt 0
	li	s2,0
.LVL161:
	.loc 1 773 5
	beq	s1,zero,.L115
	.loc 1 774 8 is_stmt 1
	.loc 1 774 13 is_stmt 0
	li	a4,8192
	addi	a4,a4,1808
	li	a3,0
	li	a2,1000
	li	a1,0
	mv	a0,s1
	call	map
.LVL162:
	mv	s2,a0
.LVL163:
.L115:
	.loc 1 776 2 is_stmt 1
	.loc 1 776 28 is_stmt 0
	li	s1,0
.LVL164:
	.loc 1 776 5
	beq	s0,zero,.L116
	.loc 1 777 8 is_stmt 1
	.loc 1 777 13 is_stmt 0
	li	a4,8192
	addi	a4,a4,1808
	li	a3,0
	li	a2,1000
	li	a1,0
	mv	a0,s0
	call	map
.LVL165:
	mv	s1,a0
.LVL166:
.L116:
	.loc 1 786 2 is_stmt 1
	lui	s0,%hi(pwm_mutex)
.LVL167:
	lw	a0,%lo(pwm_mutex)(s0)
	li	a1,1000
	call	xQueueSemaphoreTake
.LVL168:
	.loc 1 789 2
	mv	a1,s5
	li	a2,0
	li	a0,0
	call	hal_pwm_duty_set
.LVL169:
	.loc 1 790 2
	mv	a1,s4
	li	a2,0
	li	a0,1
	call	hal_pwm_duty_set
.LVL170:
	.loc 1 791 2
	mv	a1,s3
	li	a2,0
	li	a0,2
	call	hal_pwm_duty_set
.LVL171:
	.loc 1 792 2
	mv	a1,s2
	li	a2,0
	li	a0,3
	call	hal_pwm_duty_set
.LVL172:
	.loc 1 793 2
	mv	a1,s1
	li	a2,0
	li	a0,4
	call	hal_pwm_duty_set
.LVL173:
	.loc 1 797 2
	lw	a0,%lo(pwm_mutex)(s0)
	.loc 1 798 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL174:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL175:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL176:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL177:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL178:
	.loc 1 797 2
	li	a3,0
	.loc 1 798 1
	.loc 1 797 2
	li	a2,0
	li	a1,0
	.loc 1 798 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 797 2
	tail	xQueueGenericSend
.LVL179:
	.cfi_endproc
.LFE48:
	.size	send_light_data_pwm, .-send_light_data_pwm
	.section	.text.light_change_task,"ax",@progbits
	.align	1
	.type	light_change_task, @function
light_change_task:
.LFB34:
	.loc 1 253 1 is_stmt 1
	.cfi_startproc
.LVL180:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
.LBB104:
.LBB105:
	.loc 1 533 16 is_stmt 0
	lui	s4,%hi(.LANCHOR5)
	.loc 1 533 34
	lui	s5,%hi(.LANCHOR4)
	lui	s2,%hi(.LANCHOR13)
.LBE105:
.LBE104:
	.loc 1 253 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	addi	s1,s4,%lo(.LANCHOR5)
	addi	s0,s5,%lo(.LANCHOR4)
	addi	s2,s2,%lo(.LANCHOR13)
.LVL181:
.L130:
	.loc 1 254 2 is_stmt 1
	.loc 1 256 3
	lui	s3,%hi(task_sem)
	lw	a0,%lo(task_sem)(s3)
	li	a1,8192
	addi	a1,a1,1808
	call	xQueueSemaphoreTake
.LVL182:
	.loc 1 258 3
	.loc 1 258 20 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lbu	a5,%lo(.LANCHOR3)(a5)
	.loc 1 258 6
	beq	a5,zero,.L130
	.loc 1 259 10 is_stmt 1
	.loc 1 259 13 is_stmt 0
	li	a4,1
	bne	a5,a4,.L132
	.loc 1 260 4 is_stmt 1
	call	led_cfg_dohome_effect
.LVL183:
	.loc 1 261 4
.L175:
	.loc 1 273 4
	li	a3,0
	li	a2,0
	li	a1,0
	lw	a0,%lo(task_sem)(s3)
	j	.L174
.L132:
	.loc 1 262 10
	.loc 1 262 13 is_stmt 0
	li	a4,4
	bne	a5,a4,.L133
	.loc 1 263 4 is_stmt 1
	call	led_cfg_dohome_effect3
.LVL184:
	.loc 1 264 4
	j	.L175
.L133:
	.loc 1 265 9
	.loc 1 265 12 is_stmt 0
	li	a4,2
	bne	a5,a4,.L134
	.loc 1 267 4 is_stmt 1
	lui	s3,%hi(hanler_mutex)
	lw	a0,%lo(hanler_mutex)(s3)
	li	a1,49152
	addi	a1,a1,848
	call	xQueueSemaphoreTake
.LVL185:
	.loc 1 268 4
.LBB108:
.LBB106:
	.loc 1 526 1
	.loc 1 527 2
	.loc 1 531 2
	call	cal_step
.LVL186:
	.loc 1 533 2
	.loc 1 533 16 is_stmt 0
	addi	a5,s4,%lo(.LANCHOR5)
	.loc 1 533 34
	addi	a2,s5,%lo(.LANCHOR4)
	.loc 1 533 16
	lh	a5,4(a5)
	.loc 1 533 34
	lh	a1,4(a2)
	.loc 1 533 5
	beq	a5,a1,.L135
	.loc 1 534 3 is_stmt 1
	slli	a4,a1,16
	srli	a4,a4,16
	lhu	a3,4(s2)
	.loc 1 534 6 is_stmt 0
	ble	a5,a1,.L136
	.loc 1 535 4 is_stmt 1
	.loc 1 535 19 is_stmt 0
	add	a4,a3,a4
	slli	a4,a4,16
	srai	a4,a4,16
	.loc 1 536 4 is_stmt 1
	.loc 1 536 7 is_stmt 0
	blt	a5,a4,.L137
.L176:
	.loc 1 535 19
	sh	a4,4(a2)
.L177:
	.loc 1 541 11
	li	a5,1
.L138:
.LVL187:
	.loc 1 546 2 is_stmt 1
	.loc 1 546 16 is_stmt 0
	lh	a4,2(s1)
	.loc 1 546 36
	lh	a2,2(s0)
	.loc 1 546 5
	beq	a4,a2,.L141
	.loc 1 547 3 is_stmt 1
	slli	a5,a2,16
.LVL188:
	srli	a5,a5,16
	lhu	a3,2(s2)
	.loc 1 547 6 is_stmt 0
	ble	a4,a2,.L142
	.loc 1 548 4 is_stmt 1
	.loc 1 548 21 is_stmt 0
	add	a5,a3,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 549 4 is_stmt 1
	.loc 1 549 7 is_stmt 0
	blt	a4,a5,.L143
.L178:
	.loc 1 548 21
	sh	a5,2(s0)
.L179:
	.loc 1 554 11
	li	a5,1
.L144:
.LVL189:
	.loc 1 559 2 is_stmt 1
	.loc 1 559 16 is_stmt 0
	lh	a4,0(s1)
	.loc 1 559 35
	lh	a2,0(s0)
	.loc 1 559 5
	beq	a4,a2,.L147
	.loc 1 560 3 is_stmt 1
	slli	a5,a2,16
.LVL190:
	srli	a5,a5,16
	lhu	a3,0(s2)
	.loc 1 560 6 is_stmt 0
	ble	a4,a2,.L148
	.loc 1 561 4 is_stmt 1
	.loc 1 561 20 is_stmt 0
	add	a5,a3,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 562 4 is_stmt 1
	.loc 1 562 7 is_stmt 0
	blt	a4,a5,.L149
.L180:
	.loc 1 561 20
	sh	a5,0(s0)
.L181:
	.loc 1 567 11
	li	a5,1
.L150:
.LVL191:
	.loc 1 572 2 is_stmt 1
	.loc 1 572 16 is_stmt 0
	lh	a4,6(s1)
	.loc 1 572 36
	lh	a2,6(s0)
	.loc 1 572 5
	beq	a4,a2,.L153
	.loc 1 573 3 is_stmt 1
	slli	a5,a2,16
.LVL192:
	srli	a5,a5,16
	lhu	a3,6(s2)
	.loc 1 573 6 is_stmt 0
	ble	a4,a2,.L154
	.loc 1 574 4 is_stmt 1
	.loc 1 574 21 is_stmt 0
	add	a5,a3,a5
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 575 4 is_stmt 1
	.loc 1 575 7 is_stmt 0
	blt	a4,a5,.L155
.L182:
	.loc 1 574 21
	sh	a5,6(s0)
.L183:
	.loc 1 580 11
	li	a5,1
.L156:
.LVL193:
	.loc 1 586 2 is_stmt 1
	.loc 1 586 16 is_stmt 0
	lh	a4,8(s1)
	.loc 1 586 37
	lh	a3,8(s0)
	.loc 1 586 5
	beq	a4,a3,.L159
	.loc 1 587 3 is_stmt 1
	slli	a5,a3,16
.LVL194:
	srli	a5,a5,16
	lhu	a2,8(s2)
	.loc 1 587 6 is_stmt 0
	ble	a4,a3,.L160
	.loc 1 588 4 is_stmt 1
	.loc 1 588 22 is_stmt 0
	add	a5,a5,a2
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 589 4 is_stmt 1
	.loc 1 589 7 is_stmt 0
	blt	a4,a5,.L163
.L184:
	.loc 1 591 22
	sh	a5,8(s0)
.L162:
	.loc 1 601 3 is_stmt 1
	li	a2,12
	mv	a1,s0
	mv	a0,sp
	call	memcpy
.LVL195:
	mv	a0,sp
	call	send_light_data_pwm
.LVL196:
	.loc 1 602 3
.L166:
	.loc 1 620 2
	.loc 1 620 18 is_stmt 0
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	lw	a4,0(a5)
	.loc 1 621 5
	li	a3,999
	.loc 1 620 18
	addi	a4,a4,1
	.loc 1 621 2 is_stmt 1
	.loc 1 621 5 is_stmt 0
	bgt	a4,a3,.L167
	.loc 1 620 18
	sw	a4,0(a5)
.L168:
	.loc 1 634 2 is_stmt 1
.LBE106:
.LBE108:
	.loc 1 269 4
	lw	a0,%lo(hanler_mutex)(s3)
	li	a3,0
	li	a2,0
	li	a1,0
.L174:
	.loc 1 273 4 is_stmt 0
	call	xQueueGenericSend
.LVL197:
	j	.L130
.LVL198:
.L136:
.LBB109:
.LBB107:
	.loc 1 538 4 is_stmt 1
	.loc 1 538 19 is_stmt 0
	sub	a4,a4,a3
	slli	a4,a4,16
	srai	a4,a4,16
	.loc 1 539 4 is_stmt 1
	.loc 1 539 7 is_stmt 0
	ble	a5,a4,.L176
.L137:
	.loc 1 536 43 is_stmt 1
	.loc 1 536 58 is_stmt 0
	sh	a5,4(a2)
	j	.L177
.L135:
	.loc 1 543 3 is_stmt 1
	.loc 1 543 18 is_stmt 0
	lui	a4,%hi(.LANCHOR14+4)
	sh	a5,%lo(.LANCHOR14+4)(a4)
	.loc 1 526 6
	li	a5,0
	j	.L138
.LVL199:
.L142:
	.loc 1 551 4 is_stmt 1
	.loc 1 551 21 is_stmt 0
	sub	a5,a5,a3
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 552 4 is_stmt 1
	.loc 1 552 7 is_stmt 0
	ble	a4,a5,.L178
.L143:
	.loc 1 549 47 is_stmt 1
	.loc 1 549 64 is_stmt 0
	sh	a4,2(s0)
	j	.L179
.LVL200:
.L141:
	.loc 1 556 3 is_stmt 1
	.loc 1 556 20 is_stmt 0
	lui	a3,%hi(.LANCHOR14+2)
	sh	a4,%lo(.LANCHOR14+2)(a3)
	j	.L144
.LVL201:
.L148:
	.loc 1 564 4 is_stmt 1
	.loc 1 564 20 is_stmt 0
	sub	a5,a5,a3
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 565 4 is_stmt 1
	.loc 1 565 7 is_stmt 0
	ble	a4,a5,.L180
.L149:
	.loc 1 562 45 is_stmt 1
	.loc 1 562 61 is_stmt 0
	sh	a4,0(s0)
	j	.L181
.LVL202:
.L147:
	.loc 1 569 3 is_stmt 1
	.loc 1 569 19 is_stmt 0
	lui	a3,%hi(.LANCHOR14)
	sh	a4,%lo(.LANCHOR14)(a3)
	j	.L150
.LVL203:
.L154:
	.loc 1 577 4 is_stmt 1
	.loc 1 577 21 is_stmt 0
	sub	a5,a5,a3
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 578 4 is_stmt 1
	.loc 1 578 7 is_stmt 0
	ble	a4,a5,.L182
.L155:
	.loc 1 575 47 is_stmt 1
	.loc 1 575 64 is_stmt 0
	sh	a4,6(s0)
	j	.L183
.LVL204:
.L153:
	.loc 1 582 3 is_stmt 1
	.loc 1 582 20 is_stmt 0
	lui	a3,%hi(.LANCHOR14+6)
	sh	a4,%lo(.LANCHOR14+6)(a3)
	j	.L156
.LVL205:
.L160:
	.loc 1 591 4 is_stmt 1
	.loc 1 591 22 is_stmt 0
	sub	a5,a5,a2
	slli	a5,a5,16
	srai	a5,a5,16
	.loc 1 592 4 is_stmt 1
	.loc 1 592 7 is_stmt 0
	ble	a4,a5,.L184
.L163:
	.loc 1 592 49 is_stmt 1
	.loc 1 592 67 is_stmt 0
	sh	a4,8(s0)
	j	.L162
.LVL206:
.L159:
	.loc 1 596 3 is_stmt 1
	.loc 1 596 21 is_stmt 0
	lui	a3,%hi(.LANCHOR14+8)
	sh	a4,%lo(.LANCHOR14+8)(a3)
	.loc 1 600 2 is_stmt 1
	.loc 1 600 5 is_stmt 0
	bne	a5,zero,.L162
	.loc 1 604 3 is_stmt 1
	.loc 1 606 3
	.loc 1 608 3
	.loc 1 609 3
	.loc 1 612 3
	.loc 1 614 3
	call	hw_timer_disable
.LVL207:
	.loc 1 616 3
	li	a0,0
	call	set_light_work_mode
.LVL208:
	j	.L166
.LVL209:
.L167:
	.loc 1 622 3
	.loc 1 623 3
	.loc 1 624 14 is_stmt 0
	lui	a0,%hi(.LANCHOR14)
	mv	a1,s1
	li	a2,12
	addi	a0,a0,%lo(.LANCHOR14)
	.loc 1 623 20
	sw	zero,0(a5)
	.loc 1 624 3 is_stmt 1
	.loc 1 624 14 is_stmt 0
	call	memcpy
.LVL210:
	.loc 1 625 3 is_stmt 1
	.loc 1 625 14 is_stmt 0
	mv	a1,s1
	li	a2,12
	mv	a0,s0
	call	memcpy
.LVL211:
	.loc 1 626 3 is_stmt 1
	li	a2,12
	mv	a1,s1
	mv	a0,sp
	call	memcpy
.LVL212:
	mv	a0,sp
	call	send_light_data_pwm
.LVL213:
	.loc 1 627 3
	.loc 1 629 3
	call	hw_timer_disable
.LVL214:
	.loc 1 631 3
	li	a0,0
	call	set_light_work_mode
.LVL215:
	j	.L168
.LVL216:
.L134:
.LBE107:
.LBE109:
	.loc 1 271 8
	.loc 1 271 11 is_stmt 0
	li	a4,3
	bne	a5,a4,.L130
	.loc 1 272 4 is_stmt 1
	call	ambilight_task
.LVL217:
	j	.L175
	.cfi_endproc
.LFE34:
	.size	light_change_task, .-light_change_task
	.section	.text.led_load_saved_color2,"ax",@progbits
	.align	1
	.globl	led_load_saved_color2
	.type	led_load_saved_color2, @function
led_load_saved_color2:
.LFB37:
	.loc 1 323 1
	.cfi_startproc
	.loc 1 324 2
	.loc 1 323 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 324 35
	call	product_get_status
.LVL218:
	mv	s1,a0
.LVL219:
	.loc 1 326 2 is_stmt 1
	.loc 1 326 22 is_stmt 0
	call	flash_get_reset_reason
.LVL220:
	.loc 1 329 2 is_stmt 1
	.loc 1 332 28 is_stmt 0
	li	a5,1
	sb	a5,10(s1)
	lui	s0,%hi(.LANCHOR4)
	.loc 1 329 4
	beq	a0,zero,.L186
	.loc 1 331 3 is_stmt 1
	.loc 1 332 3
	.loc 1 333 3
	.loc 1 333 14 is_stmt 0
	lui	a0,%hi(.LANCHOR5)
.LVL221:
	li	a2,12
	mv	a1,s1
	addi	a0,a0,%lo(.LANCHOR5)
	call	memcpy
.LVL222:
	.loc 1 334 3 is_stmt 1
	.loc 1 334 14 is_stmt 0
	li	a2,12
	mv	a1,s1
	addi	a0,s0,%lo(.LANCHOR4)
	call	memcpy
.LVL223:
	.loc 1 335 3 is_stmt 1
	li	a2,12
	mv	a1,s1
	mv	a0,sp
	call	memcpy
.LVL224:
	mv	a0,sp
	call	send_light_data_pwm
.LVL225:
.L185:
	.loc 1 348 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL226:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL227:
.L186:
	.cfi_restore_state
	.loc 1 337 3 is_stmt 1
	.loc 1 338 3
	.loc 1 340 3
	.loc 1 341 3
	.loc 1 342 3
	.loc 1 343 3
	.loc 1 344 3
	.loc 1 345 3
	.loc 1 342 19 is_stmt 0
	addi	a0,s0,%lo(.LANCHOR4)
.LVL228:
	.loc 1 345 17
	sb	a5,10(a0)
	.loc 1 346 3 is_stmt 1
	mv	a1,s1
	.loc 1 342 19 is_stmt 0
	sw	zero,0(a0)
	.loc 1 340 18
	sw	zero,4(a0)
	.loc 1 344 21
	sh	zero,8(a0)
	.loc 1 346 3
	li	a2,12
	mv	a0,sp
	call	memcpy
.LVL229:
	li	a1,0
	mv	a0,sp
	call	start_led_change
.LVL230:
	.loc 1 348 1
	j	.L185
	.cfi_endproc
.LFE37:
	.size	led_load_saved_color2, .-led_load_saved_color2
	.section	.text.send_light_data_pwm_map,"ax",@progbits
	.align	1
	.globl	send_light_data_pwm_map
	.type	send_light_data_pwm_map, @function
send_light_data_pwm_map:
.LFB45:
	.loc 1 716 1 is_stmt 1
	.cfi_startproc
.LVL231:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	lh	s4,4(a0)
	.loc 1 716 1 is_stmt 0
	mv	a1,a0
.LVL232:
	lh	s2,0(a0)
.LVL233:
	lh	s3,2(a0)
.LVL234:
	lh	s1,6(a0)
.LVL235:
	lh	s0,8(a0)
.LVL236:
	.loc 1 717 2 is_stmt 1
	.loc 1 717 14 is_stmt 0
	li	a2,12
	addi	a0,sp,20
	call	memcpy
.LVL237:
	.loc 1 719 2 is_stmt 1
	.loc 1 719 5 is_stmt 0
	bne	s4,zero,.L190
	.loc 1 719 22 is_stmt 1 discriminator 1
	.loc 1 719 32 is_stmt 0 discriminator 1
	sh	zero,24(sp)
.L191:
	.loc 1 722 2 is_stmt 1
	.loc 1 722 5 is_stmt 0
	bne	s3,zero,.L192
	.loc 1 722 24 is_stmt 1 discriminator 1
	.loc 1 722 36 is_stmt 0 discriminator 1
	sh	zero,22(sp)
.L193:
	.loc 1 725 2 is_stmt 1
	.loc 1 725 5 is_stmt 0
	bne	s2,zero,.L194
	.loc 1 725 23 is_stmt 1 discriminator 1
	.loc 1 725 34 is_stmt 0 discriminator 1
	sh	zero,20(sp)
.L195:
	.loc 1 728 2 is_stmt 1
	.loc 1 728 5 is_stmt 0
	bne	s1,zero,.L196
	.loc 1 728 24 is_stmt 1 discriminator 1
	.loc 1 728 36 is_stmt 0 discriminator 1
	sh	zero,26(sp)
.L197:
	.loc 1 731 2 is_stmt 1
	.loc 1 731 5 is_stmt 0
	bne	s0,zero,.L198
	.loc 1 731 25 is_stmt 1 discriminator 1
	.loc 1 731 38 is_stmt 0 discriminator 1
	sh	zero,28(sp)
.L199:
	.loc 1 734 2 is_stmt 1
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	call	memcpy
.LVL238:
	mv	a0,sp
	call	send_light_data_pwm
.LVL239:
	.loc 1 735 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL240:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL241:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL242:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL243:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL244:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL245:
.L190:
	.cfi_restore_state
	.loc 1 720 8 is_stmt 1
	.loc 1 720 20 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a2,255
	li	a1,0
	mv	a0,s4
	call	map
.LVL246:
	.loc 1 720 18
	sh	a0,24(sp)
	j	.L191
.L192:
	.loc 1 723 8 is_stmt 1
	.loc 1 723 22 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a2,255
	li	a1,0
	mv	a0,s3
	call	map
.LVL247:
	.loc 1 723 20
	sh	a0,22(sp)
	j	.L193
.L194:
	.loc 1 726 8 is_stmt 1
	.loc 1 726 21 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a2,255
	li	a1,0
	mv	a0,s2
	call	map
.LVL248:
	.loc 1 726 19
	sh	a0,20(sp)
	j	.L195
.L196:
	.loc 1 729 8 is_stmt 1
	.loc 1 729 22 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a2,255
	li	a1,0
	mv	a0,s1
	call	map
.LVL249:
	.loc 1 729 20
	sh	a0,26(sp)
	j	.L197
.L198:
	.loc 1 732 8 is_stmt 1
	.loc 1 732 23 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a2,255
	li	a1,0
	mv	a0,s0
	call	map
.LVL250:
	.loc 1 732 21
	sh	a0,28(sp)
	j	.L199
	.cfi_endproc
.LFE45:
	.size	send_light_data_pwm_map, .-send_light_data_pwm_map
	.section	.text.dohome_reg_delay_post_cb,"ax",@progbits
	.align	1
	.globl	dohome_reg_delay_post_cb
	.type	dohome_reg_delay_post_cb, @function
dohome_reg_delay_post_cb:
.LFB49:
	.loc 1 800 65 is_stmt 1
	.cfi_startproc
.LVL251:
	.loc 1 801 2
	.loc 1 801 17 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 802 1
	ret
	.cfi_endproc
.LFE49:
	.size	dohome_reg_delay_post_cb, .-dohome_reg_delay_post_cb
	.section	.text.dohome_reg_post_cb,"ax",@progbits
	.align	1
	.globl	dohome_reg_post_cb
	.type	dohome_reg_post_cb, @function
dohome_reg_post_cb:
.LFB50:
	.loc 1 804 53 is_stmt 1
	.cfi_startproc
.LVL252:
	.loc 1 805 2
	.loc 1 805 11 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 806 1
	ret
	.cfi_endproc
.LFE50:
	.size	dohome_reg_post_cb, .-dohome_reg_post_cb
	.section	.text.light_init,"ax",@progbits
	.align	1
	.globl	light_init
	.type	light_init, @function
light_init:
.LFB51:
	.loc 1 813 1 is_stmt 1
	.cfi_startproc
	.loc 1 814 5
	.loc 1 815 2
	.loc 1 816 2
	.loc 1 816 7 is_stmt 0
	li	a5,50462720
	.loc 1 813 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 816 7
	addi	a5,a5,261
	.loc 1 813 1
	sw	s2,48(sp)
	.loc 1 816 7
	sw	a5,8(sp)
	.cfi_offset 18, -16
	.loc 1 823 3
	li	s2,4096
	.loc 1 816 7
	li	a5,4
	.loc 1 813 1
	sw	s1,52(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s3,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.loc 1 816 7
	sb	a5,12(sp)
	.loc 1 818 2 is_stmt 1
.LVL253:
	.loc 1 818 9 is_stmt 0
	li	s1,0
	.loc 1 820 12
	li	s4,5
.LBB110:
.LBB111:
	.file 2 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 31
	lui	s8,%hi(TrapNetCounter)
.LBE111:
.LBE110:
	.loc 1 821 16
	lui	s7,%hi(.LC4)
	lui	s6,%hi(.LC5)
	lui	s5,%hi(.LC6)
	.loc 1 823 3
	addi	s2,s2,904
.LVL254:
.L206:
	.loc 1 819 9 is_stmt 1
	.loc 1 819 13 is_stmt 0
	addi	a5,sp,8
	add	a5,a5,s1
	lbu	s3,0(a5)
.LVL255:
	.loc 1 820 9 is_stmt 1
	.loc 1 821 16 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s8)
	.loc 1 820 12
	remu	s0,s3,s4
.LVL256:
	.loc 1 821 9 is_stmt 1
	.loc 1 821 14
	.loc 1 821 16
.LBB113:
.LBB112:
	.loc 2 151 5
.LBE112:
.LBE113:
	.loc 1 821 16 is_stmt 0
	beq	a5,zero,.L204
	.loc 1 821 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL257:
.L205:
	.loc 1 821 16 discriminator 4
	mv	a6,s3
	mv	a5,s0
	li	a4,821
	addi	a3,s7,%lo(.LC4)
	addi	a2,s6,%lo(.LC5)
	mv	a1,a0
	addi	a0,s5,%lo(.LC6)
	call	bl_printk
.LVL258:
	.loc 1 821 224 is_stmt 1 discriminator 4
	.loc 1 822 9 discriminator 4
	mv	a1,s3
	mv	a0,s0
	call	hal_pwm_init
.LVL259:
	.loc 1 823 3 discriminator 4
	mv	a1,s2
	mv	a0,s0
	call	hal_pwm_freq_update
.LVL260:
	.loc 1 824 3 discriminator 4
	li	a2,0
	li	a1,0
	mv	a0,s0
	call	hal_pwm_duty_set
.LVL261:
	.loc 1 825 3 discriminator 4
	mv	a0,s0
	.loc 1 818 35 is_stmt 0 discriminator 4
	addi	s1,s1,1
.LVL262:
	.loc 1 825 3 discriminator 4
	call	hal_pwm_start
.LVL263:
	.loc 1 818 2 discriminator 4
	bne	s1,s4,.L206
	.loc 1 831 2 is_stmt 1
	call	init_led_cfg_mode
.LVL264:
	.loc 1 832 2
	call	ambilight_init
.LVL265:
	.loc 1 834 2
	lui	a0,%hi(light_shutdown_cb)
	addi	a0,a0,%lo(light_shutdown_cb)
	call	reg_shutdown_callback
.LVL266:
	.loc 1 835 2
	.loc 1 836 1 is_stmt 0
	lw	s0,56(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL267:
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s1,52(sp)
	.cfi_restore 9
.LVL268:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL269:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	.loc 1 835 2
	lui	a0,%hi(light_boot_cb)
	.loc 1 836 1
	.loc 1 835 2
	addi	a0,a0,%lo(light_boot_cb)
	.loc 1 836 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	.loc 1 835 2
	tail	reg_boot_callback
.LVL270:
.L204:
	.cfi_restore_state
	.loc 1 821 139 discriminator 2
	call	xTaskGetTickCount
.LVL271:
	j	.L205
	.cfi_endproc
.LFE51:
	.size	light_init, .-light_init
	.globl	_post_cb
	.globl	_delay_post_cb
	.comm	pwm_mutex,4,4
	.comm	hanler_mutex,4,4
	.comm	task_sem,4,4
	.globl	step_color
	.globl	curr_color
	.globl	next_color
	.globl	prev_color
	.section	.bss.next_color,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	next_color, @object
	.size	next_color, 12
next_color:
	.zero	12
	.section	.bss.prev_color,"aw",@nobits
	.align	2
	.set	.LANCHOR14,. + 0
	.type	prev_color, @object
	.size	prev_color, 12
prev_color:
	.zero	12
	.section	.bss.step_color,"aw",@nobits
	.align	2
	.set	.LANCHOR13,. + 0
	.type	step_color, @object
	.size	step_color, 12
step_color:
	.zero	12
	.section	.data.curr_color,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	curr_color, @object
	.size	curr_color, 12
curr_color:
	.half	0
	.half	0
	.half	9999
	.half	0
	.half	0
	.zero	2
	.section	.rodata.init_led_cfg_mode.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"light_timer_task"
	.zero	3
.LC2:
	.string	"light_change_task"
	.section	.rodata.light_init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"doit_light_driver.c"
.LC5:
	.string	"\033[32mINFO  \033[0m"
.LC6:
	.string	"[%10u][%s: %s:%4d] pwm init ch = %d, pin = %d\r\n"
	.section	.rodata.send_light_data.cst4,"aM",@progbits,4
	.align	2
.LC3:
	.word	1101004800
	.section	.sbss.LightTimer_Handle,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	LightTimer_Handle, @object
	.size	LightTimer_Handle, 4
LightTimer_Handle:
	.zero	4
	.section	.sbss._delay_post_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_delay_post_cb, @object
	.size	_delay_post_cb, 4
_delay_post_cb:
	.zero	4
	.section	.sbss._post_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_post_cb, @object
	.size	_post_cb, 4
_post_cb:
	.zero	4
	.section	.sbss.b_scale.3496,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	b_scale.3496, @object
	.size	b_scale.3496, 4
b_scale.3496:
	.zero	4
	.section	.sbss.g_scale.3495,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	g_scale.3495, @object
	.size	g_scale.3495, 4
g_scale.3495:
	.zero	4
	.section	.sbss.led_cfg_mode,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	led_cfg_mode, @object
	.size	led_cfg_mode, 1
led_cfg_mode:
	.zero	1
	.section	.sbss.led_smooth_count,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	led_smooth_count, @object
	.size	led_smooth_count, 4
led_smooth_count:
	.zero	4
	.section	.sbss.r_scale.3494,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	r_scale.3494, @object
	.size	r_scale.3494, 4
r_scale.3494:
	.zero	4
	.section	.sbss.step_color_flag,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	step_color_flag, @object
	.size	step_color_flag, 4
step_color_flag:
	.zero	4
	.section	.sbss.w_scale.3497,"aw",@nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	w_scale.3497, @object
	.size	w_scale.3497, 4
w_scale.3497:
	.zero	4
	.section	.sbss.ww_scale.3498,"aw",@nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	ww_scale.3498, @object
	.size	ww_scale.3498, 4
ww_scale.3498:
	.zero	4
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 9 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/timers.h"
	.file 10 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/queue.h"
	.file 11 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/semphr.h"
	.file 12 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h"
	.file 13 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 15 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_pwm.h"
	.file 16 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_Ambilight.h"
	.file 17 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_timer.h"
	.file 18 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_flash.h"
	.file 19 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_effect.h"
	.file 20 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_utils.h"
	.file 21 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1e8d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF235
	.byte	0xc
	.4byte	.LASF236
	.4byte	.LASF237
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x25
	.byte	0x13
	.4byte	0x46
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x59
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x73
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x8d
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0xc
	.byte	0x4
	.byte	0xa
	.byte	0x9
	.4byte	0xf9
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0xb
	.byte	0xa
	.4byte	0x3a
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0xc
	.byte	0xa
	.4byte	0x3a
	.byte	0x2
	.byte	0x7
	.string	"red"
	.byte	0x4
	.byte	0xd
	.byte	0xa
	.4byte	0x3a
	.byte	0x4
	.byte	0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0xe
	.byte	0xa
	.4byte	0x3a
	.byte	0x6
	.byte	0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0xf
	.byte	0xa
	.4byte	0x3a
	.byte	0x8
	.byte	0x7
	.string	"on"
	.byte	0x4
	.byte	0x10
	.byte	0xa
	.4byte	0x67
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x11
	.byte	0x3
	.4byte	0xa2
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x13
	.byte	0x10
	.4byte	0x111
	.byte	0x8
	.byte	0x4
	.4byte	0x117
	.byte	0x9
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x9b
	.byte	0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x4
	.4byte	.LASF22
	.byte	0x6
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xb
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.4byte	0x16b
	.byte	0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.4byte	0x118
	.byte	0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa8
	.byte	0x13
	.4byte	0x16b
	.byte	0
	.byte	0xd
	.4byte	0x73
	.4byte	0x17b
	.byte	0xe
	.4byte	0x9b
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x19f
	.byte	0x6
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.4byte	0x149
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0xaa
	.byte	0x3
	.4byte	0x17b
	.byte	0xf
	.byte	0x4
	.byte	0x4
	.4byte	.LASF29
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x8d
	.byte	0x4
	.4byte	.LASF30
	.byte	0x8
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF31
	.byte	0x7
	.byte	0x23
	.byte	0x1b
	.4byte	0x1b9
	.byte	0x10
	.4byte	.LASF36
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.byte	0x8
	.4byte	0x22b
	.byte	0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x22b
	.byte	0
	.byte	0x7
	.string	"_k"
	.byte	0x7
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x6
	.4byte	.LASF33
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0x6
	.4byte	.LASF35
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x7
	.string	"_x"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x231
	.byte	0x14
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1d1
	.byte	0xd
	.4byte	0x1ad
	.4byte	0x241
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF37
	.byte	0x24
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x2c4
	.byte	0x6
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x6
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x6
	.4byte	.LASF43
	.byte	0x7
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0x6
	.4byte	.LASF44
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x6
	.4byte	.LASF45
	.byte	0x7
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF47
	.2byte	0x108
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.4byte	0x309
	.byte	0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x309
	.byte	0
	.byte	0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x309
	.byte	0x80
	.byte	0x12
	.4byte	.LASF50
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x1ad
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF51
	.byte	0x7
	.byte	0x56
	.byte	0xa
	.4byte	0x1ad
	.2byte	0x104
	.byte	0
	.byte	0xd
	.4byte	0x1ab
	.4byte	0x319
	.byte	0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF52
	.2byte	0x190
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.4byte	0x35c
	.byte	0x6
	.4byte	.LASF32
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x35c
	.byte	0
	.byte	0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0x6
	.4byte	.LASF54
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x362
	.byte	0x8
	.byte	0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0x67
	.byte	0x1e
	.4byte	0x2c4
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x319
	.byte	0xd
	.4byte	0x111
	.4byte	0x372
	.byte	0xe
	.4byte	0x9b
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.byte	0x8
	.4byte	0x39a
	.byte	0x6
	.4byte	.LASF56
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x39a
	.byte	0
	.byte	0x6
	.4byte	.LASF57
	.byte	0x7
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x73
	.byte	0x10
	.4byte	.LASF58
	.byte	0x68
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x4e3
	.byte	0x7
	.string	"_p"
	.byte	0x7
	.byte	0xbb
	.byte	0x12
	.4byte	0x39a
	.byte	0
	.byte	0x7
	.string	"_r"
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x7
	.string	"_w"
	.byte	0x7
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbe
	.byte	0x9
	.4byte	0x46
	.byte	0xc
	.byte	0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x46
	.byte	0xe
	.byte	0x7
	.string	"_bf"
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x372
	.byte	0x10
	.byte	0x6
	.4byte	.LASF61
	.byte	0x7
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x6
	.4byte	.LASF62
	.byte	0x7
	.byte	0xc8
	.byte	0xa
	.4byte	0x1ab
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF63
	.byte	0x7
	.byte	0xca
	.byte	0xe
	.4byte	0x667
	.byte	0x20
	.byte	0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0xcc
	.byte	0xe
	.4byte	0x691
	.byte	0x24
	.byte	0x6
	.4byte	.LASF65
	.byte	0x7
	.byte	0xcf
	.byte	0xd
	.4byte	0x6b5
	.byte	0x28
	.byte	0x6
	.4byte	.LASF66
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0x6cf
	.byte	0x2c
	.byte	0x7
	.string	"_ub"
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x372
	.byte	0x30
	.byte	0x7
	.string	"_up"
	.byte	0x7
	.byte	0xd4
	.byte	0x12
	.4byte	0x39a
	.byte	0x38
	.byte	0x7
	.string	"_ur"
	.byte	0x7
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd8
	.byte	0x11
	.4byte	0x6d5
	.byte	0x40
	.byte	0x6
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd9
	.byte	0x11
	.4byte	0x6e5
	.byte	0x43
	.byte	0x7
	.string	"_lb"
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x372
	.byte	0x44
	.byte	0x6
	.4byte	.LASF69
	.byte	0x7
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF70
	.byte	0x7
	.byte	0xe0
	.byte	0xa
	.4byte	0x125
	.byte	0x50
	.byte	0x6
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe3
	.byte	0x12
	.4byte	0x501
	.byte	0x54
	.byte	0x6
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe7
	.byte	0xc
	.4byte	0x1c5
	.byte	0x58
	.byte	0x6
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe9
	.byte	0xe
	.4byte	0x19f
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF74
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0x13d
	.4byte	0x501
	.byte	0x14
	.4byte	0x501
	.byte	0x14
	.4byte	0x1ab
	.byte	0x14
	.4byte	0x655
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x50c
	.byte	0x15
	.4byte	0x501
	.byte	0x16
	.4byte	.LASF75
	.2byte	0x428
	.byte	0x7
	.2byte	0x265
	.byte	0x8
	.4byte	0x655
	.byte	0x17
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x17
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x26c
	.byte	0xb
	.4byte	0x741
	.byte	0x4
	.byte	0x17
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x26c
	.byte	0x14
	.4byte	0x741
	.byte	0x8
	.byte	0x17
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x741
	.byte	0xc
	.byte	0x17
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x17
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x26f
	.byte	0x8
	.4byte	0x941
	.byte	0x14
	.byte	0x17
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x17
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x273
	.byte	0x16
	.4byte	0x956
	.byte	0x34
	.byte	0x17
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x17
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x277
	.byte	0xa
	.4byte	0x967
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x27a
	.byte	0x13
	.4byte	0x22b
	.byte	0x40
	.byte	0x17
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x17
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x22b
	.byte	0x48
	.byte	0x17
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x27d
	.byte	0x14
	.4byte	0x96d
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x17
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x281
	.byte	0x9
	.4byte	0x655
	.byte	0x54
	.byte	0x17
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x91c
	.byte	0x58
	.byte	0x18
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x35c
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x319
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x97e
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x702
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x98a
	.2byte	0x2ec
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x65b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF97
	.byte	0x15
	.4byte	0x65b
	.byte	0x8
	.byte	0x4
	.4byte	0x4e3
	.byte	0x13
	.4byte	0x13d
	.4byte	0x68b
	.byte	0x14
	.4byte	0x501
	.byte	0x14
	.4byte	0x1ab
	.byte	0x14
	.4byte	0x68b
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x662
	.byte	0x8
	.byte	0x4
	.4byte	0x66d
	.byte	0x13
	.4byte	0x131
	.4byte	0x6b5
	.byte	0x14
	.4byte	0x501
	.byte	0x14
	.4byte	0x1ab
	.byte	0x14
	.4byte	0x131
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x697
	.byte	0x13
	.4byte	0x25
	.4byte	0x6cf
	.byte	0x14
	.4byte	0x501
	.byte	0x14
	.4byte	0x1ab
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6bb
	.byte	0xd
	.4byte	0x73
	.4byte	0x6e5
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0x73
	.4byte	0x6f5
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x124
	.byte	0x18
	.4byte	0x3a0
	.byte	0x19
	.4byte	.LASF99
	.byte	0xc
	.byte	0x7
	.2byte	0x128
	.byte	0x8
	.4byte	0x73b
	.byte	0x17
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x12a
	.byte	0x11
	.4byte	0x73b
	.byte	0
	.byte	0x17
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x12c
	.byte	0xb
	.4byte	0x741
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x702
	.byte	0x8
	.byte	0x4
	.4byte	0x6f5
	.byte	0x19
	.4byte	.LASF102
	.byte	0xe
	.byte	0x7
	.2byte	0x144
	.byte	0x8
	.4byte	0x780
	.byte	0x17
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x145
	.byte	0x12
	.4byte	0x780
	.byte	0
	.byte	0x17
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x146
	.byte	0x12
	.4byte	0x780
	.byte	0x6
	.byte	0x17
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x147
	.byte	0x12
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.byte	0xd
	.4byte	0x7a
	.4byte	0x790
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x7
	.2byte	0x285
	.byte	0x7
	.4byte	0x8a5
	.byte	0x17
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x287
	.byte	0x18
	.4byte	0x9b
	.byte	0
	.byte	0x17
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x288
	.byte	0x12
	.4byte	0x655
	.byte	0x4
	.byte	0x17
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x289
	.byte	0x10
	.4byte	0x8a5
	.byte	0x8
	.byte	0x17
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x28a
	.byte	0x17
	.4byte	0x241
	.byte	0x24
	.byte	0x17
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x17
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x94
	.byte	0x50
	.byte	0x17
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x747
	.byte	0x58
	.byte	0x17
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x28e
	.byte	0x16
	.4byte	0x19f
	.byte	0x68
	.byte	0x17
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x28f
	.byte	0x16
	.4byte	0x19f
	.byte	0x70
	.byte	0x17
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x290
	.byte	0x16
	.4byte	0x19f
	.byte	0x78
	.byte	0x17
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x291
	.byte	0x10
	.4byte	0x8b5
	.byte	0x80
	.byte	0x17
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x292
	.byte	0x10
	.4byte	0x8c5
	.byte	0x88
	.byte	0x17
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x294
	.byte	0x16
	.4byte	0x19f
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x295
	.byte	0x16
	.4byte	0x19f
	.byte	0xac
	.byte	0x17
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x296
	.byte	0x16
	.4byte	0x19f
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x297
	.byte	0x16
	.4byte	0x19f
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x298
	.byte	0x16
	.4byte	0x19f
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xd
	.4byte	0x65b
	.4byte	0x8b5
	.byte	0xe
	.4byte	0x9b
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	0x65b
	.4byte	0x8c5
	.byte	0xe
	.4byte	0x9b
	.byte	0x7
	.byte	0
	.byte	0xd
	.4byte	0x65b
	.4byte	0x8d5
	.byte	0xe
	.4byte	0x9b
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x7
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8fc
	.byte	0x17
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8fc
	.byte	0
	.byte	0x17
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x90c
	.byte	0x78
	.byte	0
	.byte	0xd
	.4byte	0x39a
	.4byte	0x90c
	.byte	0xe
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.byte	0xd
	.4byte	0x9b
	.4byte	0x91c
	.byte	0xe
	.4byte	0x9b
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x283
	.byte	0x3
	.4byte	0x941
	.byte	0x1c
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x29a
	.byte	0xb
	.4byte	0x790
	.byte	0x1c
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x8d5
	.byte	0
	.byte	0xd
	.4byte	0x65b
	.4byte	0x951
	.byte	0xe
	.4byte	0x9b
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF135
	.byte	0x8
	.byte	0x4
	.4byte	0x951
	.byte	0x1e
	.4byte	0x967
	.byte	0x14
	.4byte	0x501
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x95c
	.byte	0x8
	.byte	0x4
	.4byte	0x22b
	.byte	0x1e
	.4byte	0x97e
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x984
	.byte	0x8
	.byte	0x4
	.4byte	0x973
	.byte	0xd
	.4byte	0x6f5
	.4byte	0x99a
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x333
	.byte	0x17
	.4byte	0x501
	.byte	0x1f
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x334
	.byte	0x1d
	.4byte	0x507
	.byte	0x4
	.4byte	.LASF130
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF131
	.byte	0x2
	.byte	0x40
	.byte	0x12
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF132
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x81
	.byte	0x20
	.4byte	.LASF133
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x9b4
	.byte	0x4
	.4byte	.LASF134
	.byte	0x9
	.byte	0x4d
	.byte	0x22
	.4byte	0x9f0
	.byte	0x8
	.byte	0x4
	.4byte	0x9f6
	.byte	0x1d
	.4byte	.LASF136
	.byte	0x4
	.4byte	.LASF137
	.byte	0xa
	.byte	0x30
	.byte	0x22
	.4byte	0xa07
	.byte	0x8
	.byte	0x4
	.4byte	0xa0d
	.byte	0x1d
	.4byte	.LASF138
	.byte	0x4
	.4byte	.LASF139
	.byte	0xb
	.byte	0x25
	.byte	0x17
	.4byte	0x9fb
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF140
	.byte	0x5
	.byte	0x10
	.byte	0xc
	.byte	0x18
	.byte	0x9
	.4byte	0xa63
	.byte	0x6
	.4byte	.LASF141
	.byte	0xc
	.byte	0x19
	.byte	0xe
	.4byte	0xf9
	.byte	0
	.byte	0x6
	.4byte	.LASF142
	.byte	0xc
	.byte	0x1a
	.byte	0x7
	.4byte	0x65b
	.byte	0xc
	.byte	0x6
	.4byte	.LASF143
	.byte	0xc
	.byte	0x1b
	.byte	0x7
	.4byte	0x65b
	.byte	0xd
	.byte	0x6
	.4byte	.LASF144
	.byte	0xc
	.byte	0x1c
	.byte	0x7
	.4byte	0x65b
	.byte	0xe
	.byte	0
	.byte	0x4
	.4byte	.LASF145
	.byte	0xc
	.byte	0x1d
	.byte	0x3
	.4byte	0xa25
	.byte	0x21
	.4byte	.LASF146
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x65b
	.byte	0x5
	.byte	0x3
	.4byte	led_cfg_mode
	.byte	0x21
	.4byte	.LASF147
	.byte	0x1
	.byte	0x2c
	.byte	0x16
	.4byte	0x9e4
	.byte	0x5
	.byte	0x3
	.4byte	LightTimer_Handle
	.byte	0x22
	.4byte	.LASF148
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	prev_color
	.byte	0x22
	.4byte	.LASF149
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	next_color
	.byte	0x22
	.4byte	.LASF150
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	curr_color
	.byte	0x22
	.4byte	.LASF151
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0xf9
	.byte	0x5
	.byte	0x3
	.4byte	step_color
	.byte	0x21
	.4byte	.LASF152
	.byte	0x1
	.byte	0x35
	.byte	0xc
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	led_smooth_count
	.byte	0x23
	.4byte	.LASF173
	.byte	0x1
	.byte	0x36
	.byte	0x10
	.4byte	0x67
	.byte	0x22
	.4byte	.LASF153
	.byte	0x1
	.byte	0x44
	.byte	0x13
	.4byte	0xa12
	.byte	0x5
	.byte	0x3
	.4byte	task_sem
	.byte	0x22
	.4byte	.LASF154
	.byte	0x1
	.byte	0x46
	.byte	0x13
	.4byte	0xa12
	.byte	0x5
	.byte	0x3
	.4byte	hanler_mutex
	.byte	0x22
	.4byte	.LASF155
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0xa12
	.byte	0x5
	.byte	0x3
	.4byte	pwm_mutex
	.byte	0x21
	.4byte	.LASF156
	.byte	0x1
	.byte	0x4b
	.byte	0xc
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	step_color_flag
	.byte	0x22
	.4byte	.LASF157
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.4byte	0x105
	.byte	0x5
	.byte	0x3
	.4byte	_delay_post_cb
	.byte	0x22
	.4byte	.LASF158
	.byte	0x1
	.byte	0x4f
	.byte	0x10
	.4byte	0x105
	.byte	0x5
	.byte	0x3
	.4byte	_post_cb
	.byte	0x24
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x32c
	.byte	0x6
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x1
	.byte	0x9c
	.4byte	0xcc2
	.byte	0x25
	.string	"i"
	.byte	0x1
	.2byte	0x32e
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST60
	.byte	0x25
	.string	"pin"
	.byte	0x1
	.2byte	0x32f
	.byte	0x7
	.4byte	0x65b
	.4byte	.LLST61
	.byte	0x25
	.string	"ch"
	.byte	0x1
	.2byte	0x32f
	.byte	0xc
	.4byte	0x65b
	.4byte	.LLST62
	.byte	0x26
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x330
	.byte	0x7
	.4byte	0xcc2
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x27
	.4byte	0x1d5d
	.4byte	.LBB110
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x335
	.byte	0x53
	.byte	0x28
	.4byte	.LVL257
	.4byte	0x1d6a
	.byte	0x29
	.4byte	.LVL258
	.4byte	0x1d77
	.4byte	0xc12
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x335
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL259
	.4byte	0x1d83
	.4byte	0xc2c
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL260
	.4byte	0x1d8f
	.4byte	0xc46
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL261
	.4byte	0x1d9b
	.4byte	0xc64
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL263
	.4byte	0x1da7
	.4byte	0xc78
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL264
	.4byte	0x1867
	.byte	0x28
	.4byte	.LVL265
	.4byte	0x1db3
	.byte	0x29
	.4byte	.LVL266
	.4byte	0x1dbf
	.4byte	0xca1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	light_shutdown_cb
	.byte	0
	.byte	0x2b
	.4byte	.LVL270
	.4byte	0x1dcb
	.4byte	0xcb8
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	light_boot_cb
	.byte	0
	.byte	0x28
	.4byte	.LVL271
	.4byte	0x1dd7
	.byte	0
	.byte	0xd
	.4byte	0x65b
	.4byte	0xcd2
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.byte	0x2c
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x324
	.byte	0x6
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x1
	.byte	0x9c
	.4byte	0xcf9
	.byte	0x2d
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x324
	.byte	0x28
	.4byte	0x105
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2c
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x320
	.byte	0x6
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x1
	.byte	0x9c
	.4byte	0xd20
	.byte	0x2d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x320
	.byte	0x2e
	.4byte	0x105
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2c
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2f2
	.byte	0x6
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0xf3d
	.byte	0x2e
	.string	"rgb"
	.byte	0x1
	.2byte	0x2f2
	.byte	0x26
	.4byte	0xf9
	.4byte	.LLST47
	.byte	0x25
	.string	"rr"
	.byte	0x1
	.2byte	0x2f9
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST48
	.byte	0x25
	.string	"gg"
	.byte	0x1
	.2byte	0x2f9
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST49
	.byte	0x25
	.string	"bb"
	.byte	0x1
	.2byte	0x2f9
	.byte	0x16
	.4byte	0x25
	.4byte	.LLST50
	.byte	0x25
	.string	"ww"
	.byte	0x1
	.2byte	0x2f9
	.byte	0x1e
	.4byte	0x25
	.4byte	.LLST51
	.byte	0x25
	.string	"yy"
	.byte	0x1
	.2byte	0x2f9
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST52
	.byte	0x29
	.4byte	.LVL154
	.4byte	0x1de4
	.4byte	0xdc0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x29
	.4byte	.LVL156
	.4byte	0x1de4
	.4byte	0xdee
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x29
	.4byte	.LVL159
	.4byte	0x1de4
	.4byte	0xe1c
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x29
	.4byte	.LVL162
	.4byte	0x1de4
	.4byte	0xe4a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x29
	.4byte	.LVL165
	.4byte	0x1de4
	.4byte	0xe78
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x29
	.4byte	.LVL168
	.4byte	0x1df0
	.4byte	0xe8d
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x29
	.4byte	.LVL169
	.4byte	0x1d9b
	.4byte	0xeab
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL170
	.4byte	0x1d9b
	.4byte	0xec9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL171
	.4byte	0x1d9b
	.4byte	0xee7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL172
	.4byte	0x1d9b
	.4byte	0xf05
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL173
	.4byte	0x1d9b
	.4byte	0xf23
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL179
	.4byte	0x1dfd
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x2e6
	.byte	0x6
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0xf64
	.byte	0x2f
	.4byte	.LVL148
	.4byte	0x1150
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x2e1
	.byte	0x6
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0xf8b
	.byte	0x2f
	.4byte	.LVL147
	.4byte	0x1150
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x2cb
	.byte	0x6
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x1
	.byte	0x9c
	.4byte	0x10f4
	.byte	0x2e
	.string	"rgb"
	.byte	0x1
	.2byte	0x2cb
	.byte	0x2a
	.4byte	0xf9
	.4byte	.LLST58
	.byte	0x30
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x2cb
	.byte	0x34
	.4byte	0x65b
	.4byte	.LLST59
	.byte	0x26
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x2cd
	.byte	0xe
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x29
	.4byte	.LVL237
	.4byte	0x1e0a
	.4byte	0xfed
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL238
	.4byte	0x1e0a
	.4byte	0x100c
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL239
	.4byte	0xd20
	.4byte	0x1020
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL246
	.4byte	0x1de4
	.4byte	0x104b
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x29
	.4byte	.LVL247
	.4byte	0x1de4
	.4byte	0x1076
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x29
	.4byte	.LVL248
	.4byte	0x1de4
	.4byte	0x10a1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x29
	.4byte	.LVL249
	.4byte	0x1de4
	.4byte	0x10cc
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x31
	.4byte	.LVL250
	.4byte	0x1de4
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xff
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2c3
	.byte	0x6
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x1
	.byte	0x9c
	.4byte	0x1150
	.byte	0x26
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x2c4
	.byte	0xe
	.4byte	0xf9
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x29
	.4byte	.LVL136
	.4byte	0x1e0a
	.4byte	0x113a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x31
	.4byte	.LVL137
	.4byte	0x1532
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x2ae
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x11b1
	.byte	0x2e
	.string	"on"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x1b
	.4byte	0x65b
	.4byte	.LLST45
	.byte	0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x2b0
	.byte	0x12
	.4byte	0x11b1
	.4byte	.LLST46
	.byte	0x28
	.4byte	.LVL139
	.4byte	0x1e15
	.byte	0x28
	.4byte	.LVL140
	.4byte	0x1807
	.byte	0x28
	.4byte	.LVL141
	.4byte	0x1d47
	.byte	0x28
	.4byte	.LVL144
	.4byte	0x10f4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xa63
	.byte	0x2c
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x281
	.byte	0x6
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x12a9
	.byte	0x2e
	.string	"r"
	.byte	0x1
	.2byte	0x281
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST36
	.byte	0x2e
	.string	"g"
	.byte	0x1
	.2byte	0x281
	.byte	0x21
	.4byte	0x25
	.4byte	.LLST37
	.byte	0x2e
	.string	"b"
	.byte	0x1
	.2byte	0x281
	.byte	0x28
	.4byte	0x25
	.4byte	.LLST38
	.byte	0x2e
	.string	"w"
	.byte	0x1
	.2byte	0x281
	.byte	0x2f
	.4byte	0x25
	.4byte	.LLST39
	.byte	0x2e
	.string	"y"
	.byte	0x1
	.2byte	0x281
	.byte	0x36
	.4byte	0x25
	.4byte	.LLST40
	.byte	0x2e
	.string	"t"
	.byte	0x1
	.2byte	0x281
	.byte	0x3d
	.4byte	0x25
	.4byte	.LLST41
	.byte	0x33
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x283
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST42
	.byte	0x25
	.string	"sum"
	.byte	0x1
	.2byte	0x286
	.byte	0x8
	.4byte	0x2c
	.4byte	.LLST43
	.byte	0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x2a6
	.byte	0x12
	.4byte	0x11b1
	.4byte	.LLST44
	.byte	0x29
	.4byte	.LVL122
	.4byte	0x1e0a
	.4byte	0x127a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL123
	.4byte	0x1532
	.4byte	0x1296
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0x28
	.4byte	.LVL124
	.4byte	0x1e15
	.byte	0x34
	.4byte	.LVL131
	.4byte	0x1d31
	.byte	0
	.byte	0x35
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x20c
	.byte	0xd
	.4byte	0x65b
	.byte	0x1
	.4byte	0x12d6
	.byte	0x36
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x20e
	.byte	0x6
	.4byte	0x12d6
	.byte	0x37
	.string	"res"
	.byte	0x1
	.2byte	0x20f
	.byte	0x7
	.4byte	0x65b
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF175
	.byte	0x38
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x1b5
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x1512
	.byte	0x33
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1b7
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST12
	.byte	0x33
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1b8
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST13
	.byte	0x33
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1b9
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST14
	.byte	0x33
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1ba
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST15
	.byte	0x33
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1bb
	.byte	0xd
	.4byte	0x25
	.4byte	.LLST16
	.byte	0x33
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1bc
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1bf
	.byte	0xf
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	r_scale.3494
	.byte	0x26
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1c0
	.byte	0xf
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	g_scale.3495
	.byte	0x26
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x1c1
	.byte	0xf
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	b_scale.3496
	.byte	0x26
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x1c2
	.byte	0xf
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	w_scale.3497
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x1c3
	.byte	0xf
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	ww_scale.3498
	.byte	0x33
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x1c4
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST18
	.byte	0x33
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x1c5
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0x33
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1c6
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST20
	.byte	0x33
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1c7
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0x33
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1c8
	.byte	0xf
	.4byte	0x9b
	.4byte	.LLST22
	.byte	0x39
	.4byte	0x1512
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x1431
	.byte	0x3a
	.4byte	0x1524
	.4byte	.LLST23
	.byte	0
	.byte	0x39
	.4byte	0x1512
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x1450
	.byte	0x3a
	.4byte	0x1524
	.4byte	.LLST24
	.byte	0
	.byte	0x39
	.4byte	0x1512
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x146f
	.byte	0x3a
	.4byte	0x1524
	.4byte	.LLST25
	.byte	0
	.byte	0x39
	.4byte	0x1512
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x148e
	.byte	0x3a
	.4byte	0x1524
	.4byte	.LLST26
	.byte	0
	.byte	0x39
	.4byte	0x1512
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x14ad
	.byte	0x3a
	.4byte	0x1524
	.4byte	.LLST27
	.byte	0
	.byte	0x3b
	.4byte	0x1c60
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.byte	0x3a
	.4byte	0x1c99
	.4byte	.LLST28
	.byte	0x3a
	.4byte	0x1c8f
	.4byte	.LLST29
	.byte	0x3a
	.4byte	0x1c85
	.4byte	.LLST30
	.byte	0x3a
	.4byte	0x1c7b
	.4byte	.LLST31
	.byte	0x3a
	.4byte	0x1c71
	.4byte	.LLST32
	.byte	0x3c
	.4byte	.LBB101
	.4byte	.LBE101-.LBB101
	.byte	0x3d
	.4byte	0x1ca3
	.4byte	.LLST33
	.byte	0x3d
	.4byte	0x1cad
	.4byte	.LLST34
	.byte	0x3d
	.4byte	0x1cb7
	.4byte	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3e
	.string	"ABS"
	.byte	0x1
	.2byte	0x1a9
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x1532
	.byte	0x3f
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1a9
	.byte	0x14
	.4byte	0x25
	.byte	0
	.byte	0x2c
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x161
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x1710
	.byte	0x2e
	.string	"rgb"
	.byte	0x1
	.2byte	0x161
	.byte	0x23
	.4byte	0xf9
	.4byte	.LLST7
	.byte	0x2e
	.string	"t"
	.byte	0x1
	.2byte	0x161
	.byte	0x2c
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x163
	.byte	0x12
	.4byte	0x11b1
	.4byte	.LLST9
	.byte	0x40
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x1619
	.byte	0x25
	.string	"max"
	.byte	0x1
	.2byte	0x187
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST10
	.byte	0x41
	.4byte	0x1c60
	.4byte	.LBB77
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x187
	.byte	0xf
	.4byte	0x15d8
	.byte	0x42
	.4byte	0x1c99
	.byte	0x42
	.4byte	0x1c8f
	.byte	0x42
	.4byte	0x1c85
	.byte	0x42
	.4byte	0x1c7b
	.byte	0x42
	.4byte	0x1c71
	.byte	0x43
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x44
	.4byte	0x1ca3
	.byte	0x44
	.4byte	0x1cad
	.byte	0x44
	.4byte	0x1cb7
	.byte	0
	.byte	0
	.byte	0x45
	.4byte	0x1c60
	.4byte	.LBB83
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x18d
	.byte	0xd
	.byte	0x42
	.4byte	0x1c99
	.byte	0x42
	.4byte	0x1c8f
	.byte	0x42
	.4byte	0x1c85
	.byte	0x42
	.4byte	0x1c7b
	.byte	0x42
	.4byte	0x1c71
	.byte	0x43
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x44
	.4byte	0x1ca3
	.byte	0x44
	.4byte	0x1cad
	.byte	0x44
	.4byte	0x1cb7
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0x1b27
	.4byte	.LBB87
	.4byte	.LBE87-.LBB87
	.byte	0x1
	.2byte	0x1a3
	.byte	0x2
	.4byte	0x1659
	.byte	0x28
	.4byte	.LVL43
	.4byte	0x1dd7
	.byte	0x31
	.4byte	.LVL44
	.4byte	0x1e21
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL27
	.4byte	0x1e15
	.byte	0x29
	.4byte	.LVL29
	.4byte	0x1e0a
	.4byte	0x1684
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL30
	.4byte	0x1e0a
	.4byte	0x16a3
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL31
	.4byte	0x1df0
	.4byte	0x16b8
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x29
	.4byte	.LVL32
	.4byte	0x1e0a
	.4byte	0x16da
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL33
	.4byte	0x1bf7
	.4byte	0x16ed
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x28
	.4byte	.LVL42
	.4byte	0x1b66
	.byte	0x2f
	.4byte	.LVL48
	.4byte	0x1dfd
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x142
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x1807
	.byte	0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x144
	.byte	0x12
	.4byte	0x11b1
	.4byte	.LLST56
	.byte	0x33
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x146
	.byte	0x7
	.4byte	0x65b
	.4byte	.LLST57
	.byte	0x28
	.4byte	.LVL218
	.4byte	0x1e15
	.byte	0x28
	.4byte	.LVL220
	.4byte	0x1e2e
	.byte	0x29
	.4byte	.LVL222
	.4byte	0x1e0a
	.4byte	0x177d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL223
	.4byte	0x1e0a
	.4byte	0x179f
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL224
	.4byte	0x1e0a
	.4byte	0x17be
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL225
	.4byte	0xd20
	.4byte	0x17d2
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL229
	.4byte	0x1e0a
	.4byte	0x17f1
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x31
	.4byte	.LVL230
	.4byte	0x1532
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x131
	.byte	0x6
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x1867
	.byte	0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x133
	.byte	0x12
	.4byte	0x11b1
	.4byte	.LLST11
	.byte	0x28
	.4byte	.LVL53
	.4byte	0x1e15
	.byte	0x29
	.4byte	.LVL56
	.4byte	0x1e0a
	.4byte	0x1851
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x31
	.4byte	.LVL57
	.4byte	0x1532
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x19a0
	.byte	0x41
	.4byte	0x1bae
	.4byte	.LBB63
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x128
	.byte	0x2
	.4byte	0x18bf
	.byte	0x31
	.4byte	.LVL22
	.4byte	0x1e3a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	hw_test_timer_cb
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL16
	.4byte	0x1e46
	.4byte	0x18dc
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x29
	.4byte	.LVL17
	.4byte	0x1e46
	.4byte	0x18f9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x29
	.4byte	.LVL18
	.4byte	0x1e46
	.4byte	0x1916
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x29
	.4byte	.LVL19
	.4byte	0x1dfd
	.4byte	0x1933
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL20
	.4byte	0x1dfd
	.4byte	0x1950
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL21
	.4byte	0x1dfd
	.4byte	0x196d
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL23
	.4byte	0x1e53
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	light_change_task
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1800
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LASF198
	.byte	0x1
	.byte	0xfc
	.byte	0xd
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b27
	.byte	0x47
	.string	"arg"
	.byte	0x1
	.byte	0xfc
	.byte	0x25
	.4byte	0x1ab
	.4byte	.LLST53
	.byte	0x41
	.4byte	0x12a9
	.4byte	.LBB104
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x10c
	.byte	0x12
	.4byte	0x1ad8
	.byte	0x43
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x3d
	.4byte	0x12bb
	.4byte	.LLST54
	.byte	0x3d
	.4byte	0x12c8
	.4byte	.LLST55
	.byte	0x28
	.4byte	.LVL186
	.4byte	0x12dd
	.byte	0x29
	.4byte	.LVL195
	.4byte	0x1e0a
	.4byte	0x1a1a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL196
	.4byte	0xd20
	.4byte	0x1a2e
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL207
	.4byte	0x1b30
	.byte	0x29
	.4byte	.LVL208
	.4byte	0x1bf7
	.4byte	0x1a4a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x29
	.4byte	.LVL210
	.4byte	0x1e0a
	.4byte	0x1a6c
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR14
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL211
	.4byte	0x1e0a
	.4byte	0x1a8b
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL212
	.4byte	0x1e0a
	.4byte	0x1aaa
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x29
	.4byte	.LVL213
	.4byte	0xd20
	.4byte	0x1abe
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL214
	.4byte	0x1b30
	.byte	0x31
	.4byte	.LVL215
	.4byte	0x1bf7
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LVL182
	.4byte	0x1df0
	.4byte	0x1aed
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0x28
	.4byte	.LVL183
	.4byte	0x1e60
	.byte	0x28
	.4byte	.LVL184
	.4byte	0x1e6c
	.byte	0x29
	.4byte	.LVL185
	.4byte	0x1df0
	.4byte	0x1b14
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0xc350
	.byte	0
	.byte	0x28
	.4byte	.LVL197
	.4byte	0x1dfd
	.byte	0x28
	.4byte	.LVL217
	.4byte	0x1e78
	.byte	0
	.byte	0x48
	.4byte	.LASF200
	.byte	0x1
	.byte	0xc8
	.byte	0x14
	.byte	0x3
	.byte	0x49
	.4byte	.LASF239
	.byte	0x1
	.byte	0xbe
	.byte	0x14
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b66
	.byte	0x2f
	.4byte	.LVL3
	.4byte	0x1e21
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LASF199
	.byte	0x1
	.byte	0xb3
	.byte	0x14
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bae
	.byte	0x47
	.string	"ms"
	.byte	0x1
	.byte	0xb3
	.byte	0x2a
	.4byte	0x81
	.4byte	.LLST1
	.byte	0x2f
	.4byte	.LVL6
	.4byte	0x1e21
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	.LASF201
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.byte	0x1
	.byte	0x4a
	.4byte	.LASF202
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bf7
	.byte	0x4b
	.4byte	.LASF203
	.byte	0x1
	.byte	0xa0
	.byte	0x25
	.4byte	0x9e4
	.4byte	.LLST0
	.byte	0x2f
	.4byte	.LVL2
	.4byte	0x1dfd
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x4a
	.4byte	.LASF204
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c4a
	.byte	0x4b
	.4byte	.LASF205
	.byte	0x1
	.byte	0x91
	.byte	0x1f
	.4byte	0x65b
	.4byte	.LLST6
	.byte	0x29
	.4byte	.LVL14
	.4byte	0x1e84
	.4byte	0x1c30
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL15
	.4byte	0x1dfd
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LASF211
	.byte	0x1
	.byte	0x84
	.byte	0x6
	.4byte	0x65b
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.byte	0x4d
	.4byte	.LASF206
	.byte	0x1
	.byte	0x78
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x1cc2
	.byte	0x4e
	.string	"a"
	.byte	0x1
	.byte	0x78
	.byte	0x1e
	.4byte	0x25
	.byte	0x4e
	.string	"b"
	.byte	0x1
	.byte	0x78
	.byte	0x25
	.4byte	0x25
	.byte	0x4e
	.string	"c"
	.byte	0x1
	.byte	0x78
	.byte	0x2c
	.4byte	0x25
	.byte	0x4e
	.string	"d"
	.byte	0x1
	.byte	0x78
	.byte	0x33
	.4byte	0x25
	.byte	0x4e
	.string	"e"
	.byte	0x1
	.byte	0x78
	.byte	0x3a
	.4byte	0x25
	.byte	0x4f
	.string	"x"
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	0x25
	.byte	0x4f
	.string	"y"
	.byte	0x1
	.byte	0x7b
	.byte	0x6
	.4byte	0x25
	.byte	0x4f
	.string	"z"
	.byte	0x1
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0
	.byte	0x50
	.4byte	.LASF209
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d31
	.byte	0x47
	.string	"r"
	.byte	0x1
	.byte	0x6a
	.byte	0x18
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x51
	.string	"g"
	.byte	0x1
	.byte	0x6a
	.byte	0x1f
	.4byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x47
	.string	"b"
	.byte	0x1
	.byte	0x6a
	.byte	0x26
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x51
	.string	"w"
	.byte	0x1
	.byte	0x6a
	.byte	0x2d
	.4byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x52
	.string	"max"
	.byte	0x1
	.byte	0x6c
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x53
	.4byte	.LASF210
	.byte	0x1
	.byte	0x6c
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST5
	.byte	0
	.byte	0x54
	.4byte	.LASF240
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.byte	0x55
	.4byte	.LASF212
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.byte	0x56
	.4byte	.LASF241
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x9b4
	.byte	0x3
	.byte	0x57
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0xd
	.2byte	0x558
	.byte	0xc
	.byte	0x58
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0xe
	.byte	0x9e
	.byte	0x6
	.byte	0x58
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0xf
	.byte	0x43
	.byte	0x5
	.byte	0x58
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0xf
	.byte	0x4d
	.byte	0x5
	.byte	0x58
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0xf
	.byte	0x62
	.byte	0x5
	.byte	0x58
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0xf
	.byte	0x7e
	.byte	0x5
	.byte	0x58
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x10
	.byte	0x29
	.byte	0x6
	.byte	0x58
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0x11
	.byte	0x28
	.byte	0x6
	.byte	0x58
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.byte	0x57
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0xd
	.2byte	0x547
	.byte	0xc
	.byte	0x59
	.string	"map"
	.string	"map"
	.byte	0x14
	.byte	0x7
	.byte	0x6
	.byte	0x57
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0xa
	.2byte	0x58a
	.byte	0xc
	.byte	0x57
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xa
	.2byte	0x28a
	.byte	0xc
	.byte	0x5a
	.4byte	.LASF242
	.4byte	.LASF243
	.byte	0x15
	.byte	0
	.byte	0x58
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0xc
	.byte	0x2b
	.byte	0x11
	.byte	0x57
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x9
	.2byte	0x502
	.byte	0xc
	.byte	0x58
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x12
	.byte	0x46
	.byte	0x6
	.byte	0x58
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x9
	.byte	0xe4
	.byte	0x10
	.byte	0x57
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xa
	.2byte	0x5d8
	.byte	0x10
	.byte	0x57
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xd
	.2byte	0x14a
	.byte	0xd
	.byte	0x58
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x13
	.byte	0xc
	.byte	0x6
	.byte	0x58
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x13
	.byte	0xe
	.byte	0x6
	.byte	0x58
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x10
	.byte	0x2a
	.byte	0x6
	.byte	0x58
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x13
	.byte	0xf
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x21
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x1d
	.byte	0
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
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x33
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
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
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3f
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
	.byte	0x40
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x44
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x48
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x49
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
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4e
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
	.byte	0
	.byte	0
	.byte	0x4f
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
	.byte	0
	.byte	0
	.byte	0x50
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x53
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
	.byte	0x54
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x55
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
	.byte	0
	.byte	0
	.byte	0x56
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x57
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
	.byte	0x58
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
	.byte	0x59
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0x8
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x5a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST60:
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL262
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL262
	.4byte	.LVL263
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL263
	.4byte	.LVL268
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL270
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL255
	.4byte	.LVL269
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL270
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL256
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL267
	.4byte	.LVL269
	.2byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x1d
	.byte	0x9f
	.4byte	.LVL270
	.4byte	.LFE51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x8
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x8
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0xb
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x5a
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0xe
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x5a
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	.LVL153
	.4byte	.LVL154-1
	.2byte	0x11
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x5a
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL154-1
	.4byte	.LVL158
	.2byte	0x10
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL158
	.4byte	.LVL161
	.2byte	0xd
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL161
	.4byte	.LVL164
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x7
	.byte	0x93
	.byte	0x8
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL153
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL153
	.4byte	.LVL160
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL153
	.4byte	.LVL163
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL153
	.4byte	.LVL166
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x5
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0xb
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0xe
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x11
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0xe
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0xb
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0xa
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x7
	.byte	0x93
	.byte	0x4
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL245
	.4byte	.LFE45
	.2byte	0x11
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL232
	.4byte	.LFE45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139-1
	.4byte	.LFE43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140-1
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL109
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL113
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL116
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL109
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL118
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL122-1
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL109
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL122-1
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x3
	.byte	0x72
	.byte	0xbc,0x7f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1a
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x19
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x18
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x17
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL117
	.4byte	.LVL120
	.2byte	0x16
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x14
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x15
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x58
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x16
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x17
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x6
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x18
	.byte	0x7a
	.byte	0
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x6
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x19
	.byte	0x7a
	.byte	0
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x4
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x6
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL129
	.4byte	.LVL131-1
	.2byte	0x1a
	.byte	0x7a
	.byte	0
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x4
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x6
	.byte	0x93
	.byte	0x2
	.byte	0x7a
	.byte	0x8
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL131-1
	.4byte	.LVL131
	.2byte	0x8
	.byte	0x93
	.byte	0xa
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1a
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x19
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x18
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x17
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	.LVL135
	.4byte	.LFE42
	.2byte	0x16
	.byte	0x62
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x59
	.byte	0x93
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x93
	.byte	0x1
	.byte	0x93
	.byte	0x1
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.4byte	.LVL119
	.4byte	.LVL122-1
	.2byte	0x17
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x22
	.byte	0xf7
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL122-1
	.4byte	.LVL131
	.2byte	0x18
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x22
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x22
	.byte	0xf7
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL124
	.4byte	.LVL131-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL64
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x76
	.byte	0
	.byte	0x8c
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x81
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL76-1
	.2byte	0xf
	.byte	0x7b
	.byte	0
	.byte	0x3
	.4byte	curr_color
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL67
	.4byte	.LVL76-1
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL68
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0xf
	.byte	0x3
	.4byte	next_color+8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x18
	.byte	0x3
	.4byte	next_color+8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x3
	.4byte	curr_color+8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL58
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL58
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL102
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0xe
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x79
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0xe
	.byte	0x85
	.byte	0
	.byte	0x12
	.byte	0x88
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x7
	.byte	0x93
	.byte	0x6
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x5d
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL39
	.4byte	.LVL45
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x7
	.byte	0x93
	.byte	0x8
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x7
	.byte	0x93
	.byte	0x8
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL52
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x5c
	.byte	0x3
	.4byte	curr_color+4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+2
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x16
	.byte	0x84
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x24
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x24
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x16
	.byte	0x7d
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x24
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x24
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x16
	.byte	0x84
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x24
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x24
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x18
	.byte	0x7f
	.byte	0
	.byte	0x12
	.byte	0x7e
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x30
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x5c
	.byte	0x3
	.4byte	curr_color+4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+2
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x3
	.4byte	curr_color+8
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL219
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL227
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL206
	.4byte	.LVL207-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL185
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LVL209
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7a
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x25
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7a
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE25
	.2byte	0x26
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2a
	.byte	0x7c
	.byte	0
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7a
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xff
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2b
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7a
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xff
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE25
	.2byte	0x2c
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x7d
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0x7b
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.byte	0x14
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xff
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	0
	.4byte	0
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	0
	.4byte	0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0
	.4byte	0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0
	.4byte	0
	.4byte	.LBB110
	.4byte	.LBE110
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF232:
	.string	"led_cfg_dohome_effect3"
.LASF223:
	.string	"xQueueSemaphoreTake"
.LASF142:
	.string	"led_effect_set"
.LASF188:
	.string	"RED_GRA_STEP"
.LASF199:
	.string	"hw_timer_arm"
.LASF47:
	.string	"_on_exit_args"
.LASF115:
	.string	"_wctomb_state"
.LASF112:
	.string	"_r48"
.LASF186:
	.string	"w_scale"
.LASF117:
	.string	"_signal_buf"
.LASF13:
	.string	"unsigned int"
.LASF166:
	.string	"light_shutdown_cb"
.LASF17:
	.string	"yellow"
.LASF61:
	.string	"_lbfsize"
.LASF59:
	.string	"_flags"
.LASF179:
	.string	"delata_blue"
.LASF76:
	.string	"_errno"
.LASF158:
	.string	"_post_cb"
.LASF168:
	.string	"save"
.LASF30:
	.string	"_LOCK_RECURSIVE_T"
.LASF63:
	.string	"_read"
.LASF205:
	.string	"mode"
.LASF119:
	.string	"_mbrlen_state"
.LASF184:
	.string	"g_scale"
.LASF243:
	.string	"__builtin_memcpy"
.LASF197:
	.string	"init_led_cfg_mode"
.LASF78:
	.string	"_stdout"
.LASF22:
	.string	"_fpos_t"
.LASF54:
	.string	"_fns"
.LASF62:
	.string	"_cookie"
.LASF129:
	.string	"_global_impure_ptr"
.LASF192:
	.string	"WARM_GRA_STEP"
.LASF202:
	.string	"hw_test_timer_cb"
.LASF36:
	.string	"_Bigint"
.LASF44:
	.string	"__tm_wday"
.LASF218:
	.string	"hal_pwm_start"
.LASF212:
	.string	"update_config_upload"
.LASF86:
	.string	"_result"
.LASF153:
	.string	"task_sem"
.LASF10:
	.string	"uint32_t"
.LASF40:
	.string	"__tm_hour"
.LASF134:
	.string	"TimerHandle_t"
.LASF238:
	.string	"led_smoothing_loop"
.LASF187:
	.string	"ww_scale"
.LASF26:
	.string	"__count"
.LASF151:
	.string	"step_color"
.LASF0:
	.string	"float"
.LASF39:
	.string	"__tm_min"
.LASF128:
	.string	"_impure_ptr"
.LASF138:
	.string	"QueueDefinition"
.LASF125:
	.string	"_nextf"
.LASF237:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/product"
.LASF102:
	.string	"_rand48"
.LASF148:
	.string	"prev_color"
.LASF146:
	.string	"led_cfg_mode"
.LASF87:
	.string	"_result_k"
.LASF12:
	.string	"long long unsigned int"
.LASF213:
	.string	"xTaskGetTickCountFromISR"
.LASF108:
	.string	"_asctime_buf"
.LASF58:
	.string	"__sFILE"
.LASF35:
	.string	"_wds"
.LASF181:
	.string	"delata_warm"
.LASF220:
	.string	"reg_shutdown_callback"
.LASF227:
	.string	"flash_get_reset_reason"
.LASF190:
	.string	"BLUE_GRA_STEP"
.LASF98:
	.string	"__FILE"
.LASF214:
	.string	"bl_printk"
.LASF70:
	.string	"_offset"
.LASF198:
	.string	"light_change_task"
.LASF204:
	.string	"set_light_work_mode"
.LASF207:
	.string	"value"
.LASF81:
	.string	"_emergency"
.LASF216:
	.string	"hal_pwm_freq_update"
.LASF141:
	.string	"color"
.LASF133:
	.string	"TrapNetCounter"
.LASF189:
	.string	"GREEN_GRA_STEP"
.LASF173:
	.string	"smooth_stat"
.LASF185:
	.string	"b_scale"
.LASF240:
	.string	"delay_update_config_upload"
.LASF38:
	.string	"__tm_sec"
.LASF45:
	.string	"__tm_yday"
.LASF80:
	.string	"_inc"
.LASF53:
	.string	"_ind"
.LASF217:
	.string	"hal_pwm_duty_set"
.LASF219:
	.string	"ambilight_init"
.LASF32:
	.string	"_next"
.LASF121:
	.string	"_mbsrtowcs_state"
.LASF228:
	.string	"xTimerCreate"
.LASF167:
	.string	"send_light_data_pwm_map"
.LASF170:
	.string	"led_rgb_set_off"
.LASF224:
	.string	"xQueueGenericSend"
.LASF27:
	.string	"__value"
.LASF164:
	.string	"send_light_data_pwm"
.LASF88:
	.string	"_p5s"
.LASF123:
	.string	"_wcsrtombs_state"
.LASF113:
	.string	"_mblen_state"
.LASF177:
	.string	"delata_red"
.LASF97:
	.string	"char"
.LASF41:
	.string	"__tm_mday"
.LASF94:
	.string	"_sig_func"
.LASF120:
	.string	"_mbrtowc_state"
.LASF93:
	.string	"_atexit0"
.LASF200:
	.string	"hw_timer_enable"
.LASF131:
	.string	"UBaseType_t"
.LASF156:
	.string	"step_color_flag"
.LASF31:
	.string	"_flock_t"
.LASF137:
	.string	"QueueHandle_t"
.LASF230:
	.string	"xTaskCreate"
.LASF24:
	.string	"__wch"
.LASF101:
	.string	"_iobs"
.LASF7:
	.string	"uint8_t"
.LASF66:
	.string	"_close"
.LASF84:
	.string	"__sdidinit"
.LASF206:
	.string	"get_max_value"
.LASF203:
	.string	"timer"
.LASF171:
	.string	"product_status"
.LASF229:
	.string	"xQueueGenericCreate"
.LASF77:
	.string	"_stdin"
.LASF110:
	.string	"_gamma_signgam"
.LASF183:
	.string	"r_scale"
.LASF6:
	.string	"long long int"
.LASF56:
	.string	"_base"
.LASF194:
	.string	"led_load_saved_color2"
.LASF89:
	.string	"_freelist"
.LASF104:
	.string	"_mult"
.LASF210:
	.string	"brightness"
.LASF29:
	.string	"__ULong"
.LASF122:
	.string	"_wcrtomb_state"
.LASF130:
	.string	"BaseType_t"
.LASF152:
	.string	"led_smooth_count"
.LASF60:
	.string	"_file"
.LASF211:
	.string	"get_led_cfg_mode"
.LASF193:
	.string	"start_led_change"
.LASF233:
	.string	"ambilight_task"
.LASF178:
	.string	"delata_green"
.LASF85:
	.string	"__cleanup"
.LASF165:
	.string	"light_boot_cb"
.LASF28:
	.string	"_mbstate_t"
.LASF235:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF163:
	.string	"user_delay_post_cb"
.LASF222:
	.string	"xTaskGetTickCount"
.LASF150:
	.string	"curr_color"
.LASF48:
	.string	"_fnargs"
.LASF46:
	.string	"__tm_isdst"
.LASF172:
	.string	"send_light_data"
.LASF241:
	.string	"xPortIsInsideInterrupt"
.LASF208:
	.string	"send_light_onoff"
.LASF124:
	.string	"_h_errno"
.LASF175:
	.string	"_Bool"
.LASF132:
	.string	"TickType_t"
.LASF225:
	.string	"product_get_status"
.LASF42:
	.string	"__tm_mon"
.LASF15:
	.string	"green"
.LASF64:
	.string	"_write"
.LASF226:
	.string	"xTimerGenericCommand"
.LASF231:
	.string	"led_cfg_dohome_effect"
.LASF52:
	.string	"_atexit"
.LASF73:
	.string	"_mbstate"
.LASF147:
	.string	"LightTimer_Handle"
.LASF2:
	.string	"short int"
.LASF201:
	.string	"hw_timer_init"
.LASF5:
	.string	"long int"
.LASF160:
	.string	"dohome_reg_post_cb"
.LASF139:
	.string	"SemaphoreHandle_t"
.LASF3:
	.string	"int16_t"
.LASF96:
	.string	"__sf"
.LASF34:
	.string	"_sign"
.LASF169:
	.string	"light_init"
.LASF182:
	.string	"MAX_VALUE"
.LASF71:
	.string	"_data"
.LASF25:
	.string	"__wchb"
.LASF14:
	.string	"blue"
.LASF19:
	.string	"doit_post_cb_t"
.LASF191:
	.string	"WHITE_GRA_STEP"
.LASF43:
	.string	"__tm_year"
.LASF16:
	.string	"white"
.LASF109:
	.string	"_localtime_buf"
.LASF127:
	.string	"_unused"
.LASF92:
	.string	"_new"
.LASF90:
	.string	"_cvtlen"
.LASF33:
	.string	"_maxwds"
.LASF18:
	.string	"rgb_pixel_t"
.LASF180:
	.string	"delata_white"
.LASF69:
	.string	"_blksize"
.LASF37:
	.string	"__tm"
.LASF157:
	.string	"_delay_post_cb"
.LASF161:
	.string	"dohome_reg_delay_post_cb"
.LASF72:
	.string	"_lock"
.LASF195:
	.string	"reset_reason"
.LASF11:
	.string	"long unsigned int"
.LASF100:
	.string	"_niobs"
.LASF20:
	.string	"wint_t"
.LASF4:
	.string	"int32_t"
.LASF236:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_driver.c"
.LASF239:
	.string	"hw_timer_disable"
.LASF49:
	.string	"_dso_handle"
.LASF215:
	.string	"hal_pwm_init"
.LASF162:
	.string	"user_post_cb"
.LASF159:
	.string	"pinbuf"
.LASF91:
	.string	"_cvtbuf"
.LASF8:
	.string	"unsigned char"
.LASF144:
	.string	"control_way"
.LASF149:
	.string	"next_color"
.LASF136:
	.string	"tmrTimerControl"
.LASF118:
	.string	"_getdate_err"
.LASF221:
	.string	"reg_boot_callback"
.LASF105:
	.string	"_add"
.LASF174:
	.string	"changed"
.LASF55:
	.string	"__sbuf"
.LASF116:
	.string	"_l64a_buf"
.LASF99:
	.string	"_glue"
.LASF143:
	.string	"led_effect_type"
.LASF176:
	.string	"cal_step"
.LASF95:
	.string	"__sglue"
.LASF209:
	.string	"get_brightness"
.LASF107:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbtowc_state"
.LASF83:
	.string	"_locale"
.LASF23:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF75:
	.string	"_reent"
.LASF154:
	.string	"hanler_mutex"
.LASF9:
	.string	"short unsigned int"
.LASF242:
	.string	"memcpy"
.LASF50:
	.string	"_fntypes"
.LASF234:
	.string	"set_led_cfg_dohome_effect_cnt"
.LASF57:
	.string	"_size"
.LASF140:
	.string	"double"
.LASF145:
	.string	"product_mode_t"
.LASF21:
	.string	"_off_t"
.LASF68:
	.string	"_nbuf"
.LASF106:
	.string	"_unused_rand"
.LASF155:
	.string	"pwm_mutex"
.LASF82:
	.string	"_unspecified_locale_info"
.LASF74:
	.string	"_flags2"
.LASF51:
	.string	"_is_cxa"
.LASF196:
	.string	"led_load_saved_color"
.LASF103:
	.string	"_seed"
.LASF111:
	.string	"_rand_next"
.LASF135:
	.string	"__locale_t"
.LASF65:
	.string	"_seek"
.LASF79:
	.string	"_stderr"
.LASF126:
	.string	"_nmalloc"
.LASF67:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
