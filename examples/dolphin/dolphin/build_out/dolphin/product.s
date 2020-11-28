	.file	"product.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.led_status_timer_cb,"ax",@progbits
	.align	1
	.globl	led_status_timer_cb
	.type	led_status_timer_cb, @function
led_status_timer_cb:
.LFB35:
	.file 1 "/b-l/dolphin/dolphin/product.c"
	.loc 1 93 46
	.cfi_startproc
.LVL0:
	.loc 1 94 5
	.loc 1 95 5
	.loc 1 95 8 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 95 7
	lw	a4,0(a5)
	beq	a4,zero,.L2
.LVL1:
.LBB24:
.LBB25:
	.loc 1 97 9 is_stmt 1
	.loc 1 97 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 98 9 is_stmt 1
	li	a1,1
.LVL2:
.L3:
.LBE25:
.LBE24:
	.loc 1 102 9 is_stmt 0
	li	a0,0
.LVL3:
	tail	bl_gpio_output_set
.LVL4:
.L2:
	.loc 1 101 9 is_stmt 1
	.loc 1 101 19 is_stmt 0
	li	a4,1
	sw	a4,0(a5)
	.loc 1 102 9 is_stmt 1
	li	a1,0
	j	.L3
	.cfi_endproc
.LFE35:
	.size	led_status_timer_cb, .-led_status_timer_cb
	.section	.text.led_power_timer_cb,"ax",@progbits
	.align	1
	.globl	led_power_timer_cb
	.type	led_power_timer_cb, @function
led_power_timer_cb:
.LFB36:
	.loc 1 106 45
	.cfi_startproc
.LVL5:
	.loc 1 107 5
	.loc 1 108 5
	.loc 1 106 45 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 108 8
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 108 7
	lbu	a5,0(s0)
	.loc 1 106 45
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 108 7
	beq	a5,zero,.L5
.LVL6:
.LBB28:
.LBB29:
	.loc 1 109 9 is_stmt 1
	li	a1,1
	li	a0,4
.LVL7:
	call	bl_gpio_output_set
.LVL8:
	.loc 1 110 9
	.loc 1 110 18 is_stmt 0
	sb	zero,0(s0)
.LVL9:
.L4:
.LBE29:
.LBE28:
	.loc 1 117 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L5:
	.cfi_restore_state
	.loc 1 113 9 is_stmt 1
	li	a1,0
	li	a0,4
.LVL11:
	call	bl_gpio_output_set
.LVL12:
	.loc 1 115 9
	.loc 1 115 18 is_stmt 0
	li	a5,1
	sb	a5,0(s0)
	.loc 1 117 1
	j	.L4
	.cfi_endproc
.LFE36:
	.size	led_power_timer_cb, .-led_power_timer_cb
	.section	.text.hal_timer_now_s,"ax",@progbits
	.align	1
	.globl	hal_timer_now_s
	.type	hal_timer_now_s, @function
hal_timer_now_s:
.LFB27:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 38 11
	call	bl_timer_now_us
.LVL13:
	.loc 1 40 5 is_stmt 1
	.loc 1 41 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a5,999424
	addi	a5,a5,576
	divu	a0,a0,a5
.LVL14:
	li	a1,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	hal_timer_now_s, .-hal_timer_now_s
	.section	.text.hal_timer_now_ms,"ax",@progbits
	.align	1
	.globl	hal_timer_now_ms
	.type	hal_timer_now_ms, @function
hal_timer_now_ms:
.LFB28:
	.loc 1 44 1 is_stmt 1
	.cfi_startproc
	.loc 1 45 5
	.loc 1 47 5
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 47 11
	call	bl_timer_now_us
.LVL15:
	.loc 1 49 5 is_stmt 1
	.loc 1 50 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a5,1000
	divu	a0,a0,a5
.LVL16:
	li	a1,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_timer_now_ms, .-hal_timer_now_ms
	.section	.text.duty_map,"ax",@progbits
	.align	1
	.globl	duty_map
	.type	duty_map, @function
duty_map:
.LFB29:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 54 2
	.loc 1 54 12 is_stmt 0
	sub	a0,a0,a1
.LVL18:
	.loc 1 54 33
	sub	a4,a4,a3
.LVL19:
	.loc 1 54 22
	mul	a0,a0,a4
	.loc 1 54 54
	sub	a2,a2,a1
.LVL20:
	.loc 1 54 44
	div	a0,a0,a2
	.loc 1 55 1
	add	a0,a0,a3
	ret
	.cfi_endproc
.LFE29:
	.size	duty_map, .-duty_map
	.section	.text.motor_g_set_duty,"ax",@progbits
	.align	1
	.globl	motor_g_set_duty
	.type	motor_g_set_duty, @function
motor_g_set_duty:
.LFB30:
	.loc 1 58 37 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 59 5
	mv	a1,a0
	li	a2,0
	li	a0,2
.LVL22:
	tail	hal_pwm_duty_set
.LVL23:
	.cfi_endproc
.LFE30:
	.size	motor_g_set_duty, .-motor_g_set_duty
	.section	.text.motor_c_set_duty,"ax",@progbits
	.align	1
	.globl	motor_c_set_duty
	.type	motor_c_set_duty, @function
motor_c_set_duty:
.LFB31:
	.loc 1 62 37
	.cfi_startproc
.LVL24:
	.loc 1 63 5
	mv	a1,a0
	li	a2,0
	li	a0,1
.LVL25:
	tail	hal_pwm_duty_set
.LVL26:
	.cfi_endproc
.LFE31:
	.size	motor_c_set_duty, .-motor_c_set_duty
	.section	.text.set_led_status,"ax",@progbits
	.align	1
	.globl	set_led_status
	.type	set_led_status, @function
set_led_status:
.LFB32:
	.loc 1 66 36
	.cfi_startproc
.LVL27:
	.loc 1 67 5
	snez	a1,a0
	li	a0,0
.LVL28:
	tail	bl_gpio_output_set
.LVL29:
	.cfi_endproc
.LFE32:
	.size	set_led_status, .-set_led_status
	.section	.text.motor_c_set_vibrate,"ax",@progbits
	.align	1
	.globl	motor_c_set_vibrate
	.type	motor_c_set_vibrate, @function
motor_c_set_vibrate:
.LFB33:
	.loc 1 70 42
	.cfi_startproc
.LVL30:
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 70 42 is_stmt 0
	mv	a5,a0
	.loc 1 71 14
	li	a0,0
.LVL31:
	.loc 1 72 7
	beq	a5,zero,.L17
	.loc 1 73 9 is_stmt 1
.LVL32:
.LBB30:
.LBB31:
	.loc 1 54 2
	.loc 1 54 22 is_stmt 0
	li	a0,8192
	addi	a0,a0,-192
	mul	a0,a5,a0
	.loc 1 54 44
	li	a5,20
	div	a0,a0,a5
	.loc 1 54 64
	addi	a0,a0,2000
.LVL33:
.L17:
.LBE31:
.LBE30:
	.loc 1 75 5 is_stmt 1
	tail	motor_c_set_duty
.LVL34:
	.cfi_endproc
.LFE33:
	.size	motor_c_set_vibrate, .-motor_c_set_vibrate
	.section	.text.motor_g_set_vibrate,"ax",@progbits
	.align	1
	.globl	motor_g_set_vibrate
	.type	motor_g_set_vibrate, @function
motor_g_set_vibrate:
.LFB34:
	.loc 1 78 42
	.cfi_startproc
.LVL35:
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 78 42 is_stmt 0
	mv	a5,a0
	.loc 1 79 14
	li	a0,0
.LVL36:
	.loc 1 80 7
	beq	a5,zero,.L21
	.loc 1 82 9 is_stmt 1
.LVL37:
.LBB32:
.LBB33:
	.loc 1 54 2
	.loc 1 54 22 is_stmt 0
	li	a0,8192
	addi	a0,a0,-192
	mul	a0,a5,a0
	.loc 1 54 44
	li	a5,20
	div	a0,a0,a5
	.loc 1 54 64
	addi	a0,a0,2000
.LVL38:
.L21:
.LBE33:
.LBE32:
	.loc 1 84 5 is_stmt 1
	tail	motor_g_set_duty
.LVL39:
	.cfi_endproc
.LFE34:
	.size	motor_g_set_vibrate, .-motor_g_set_vibrate
	.section	.text.led_status_flash,"ax",@progbits
	.align	1
	.globl	led_status_flash
	.type	led_status_flash, @function
led_status_flash:
.LFB37:
	.loc 1 120 30
	.cfi_startproc
.LVL40:
	.loc 1 121 5
	.loc 1 122 9
	.loc 1 120 30 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	lui	s0,%hi(.LANCHOR2)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 120 30
	mv	a2,a0
	addi	s0,s0,%lo(.LANCHOR2)
	lw	a0,0(s0)
.LVL41:
	.loc 1 122 11
	bne	a2,zero,.L25
	.loc 1 123 13 is_stmt 1
	.loc 1 123 17 is_stmt 0
	li	a4,100
	li	a3,0
	li	a1,3
	call	xTimerGenericCommand
.LVL42:
	.loc 1 123 15
	li	a5,1
	beq	a0,a5,.L24
	.loc 1 124 17 is_stmt 1
	.loc 1 124 22
.LBB34:
.LBB35:
	.file 2 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE35:
.LBE34:
	.loc 1 124 22
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L28
	.loc 1 124 142 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL43:
.L29:
	.loc 1 124 22 discriminator 4
	li	a4,124
.L38:
	.loc 1 132 22 discriminator 4
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
.L37:
	.loc 1 138 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 135 18 discriminator 4
	tail	bl_printk
.LVL44:
.L28:
	.cfi_restore_state
	.loc 1 124 171 discriminator 2
	call	xTaskGetTickCount
.LVL45:
	j	.L29
.LVL46:
.L25:
	.loc 1 130 9 is_stmt 1
	.loc 1 130 12 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a1,4
	call	xTimerGenericCommand
.LVL47:
	.loc 1 130 11
	li	a5,1
	.loc 1 130 12
	mv	s1,a0
	.loc 1 130 11
	bne	a0,a5,.L30
	.loc 1 131 13 is_stmt 1
	.loc 1 131 17 is_stmt 0
	lw	s0,0(s0)
	call	xTaskGetTickCount
.LVL48:
	mv	a2,a0
	li	a4,100
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL49:
	.loc 1 131 15
	beq	a0,s1,.L24
	.loc 1 132 17 is_stmt 1
	.loc 1 132 22
.LBB36:
.LBB37:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE37:
.LBE36:
	.loc 1 132 22
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L32
	.loc 1 132 142 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL50:
.L33:
	.loc 1 132 22 discriminator 4
	li	a4,132
	j	.L38
.L32:
	.loc 1 132 171 discriminator 2
	call	xTaskGetTickCount
.LVL51:
	j	.L33
.L30:
	.loc 1 135 13 is_stmt 1
	.loc 1 135 18
.LBB38:
.LBB39:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE39:
.LBE38:
	.loc 1 135 18
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L34
	.loc 1 135 140 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL52:
.L35:
	.loc 1 135 18 discriminator 4
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC3)
	li	a4,135
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	j	.L37
.L34:
	.loc 1 135 169 discriminator 2
	call	xTaskGetTickCount
.LVL53:
	j	.L35
.L24:
	.loc 1 138 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE37:
	.size	led_status_flash, .-led_status_flash
	.section	.text.led_power_flash,"ax",@progbits
	.align	1
	.globl	led_power_flash
	.type	led_power_flash, @function
led_power_flash:
.LFB38:
	.loc 1 140 29 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 141 5
	.loc 1 142 9
	.loc 1 140 29 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	lui	s0,%hi(.LANCHOR3)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 140 29
	mv	a2,a0
	addi	s0,s0,%lo(.LANCHOR3)
	lw	a0,0(s0)
.LVL55:
	.loc 1 142 11
	bne	a2,zero,.L40
	.loc 1 143 13 is_stmt 1
	.loc 1 143 17 is_stmt 0
	li	a4,100
	li	a3,0
	li	a1,3
	call	xTimerGenericCommand
.LVL56:
	.loc 1 143 15
	li	a5,1
	beq	a0,a5,.L39
	.loc 1 144 17 is_stmt 1
	.loc 1 144 22
.LBB40:
.LBB41:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE41:
.LBE40:
	.loc 1 144 22
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L43
	.loc 1 144 142 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL57:
.L44:
	.loc 1 144 22 discriminator 4
	li	a4,144
.L53:
	.loc 1 151 22 discriminator 4
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
.L52:
	.loc 1 157 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 154 18 discriminator 4
	tail	bl_printk
.LVL58:
.L43:
	.cfi_restore_state
	.loc 1 144 171 discriminator 2
	call	xTaskGetTickCount
.LVL59:
	j	.L44
.LVL60:
.L40:
	.loc 1 149 9 is_stmt 1
	.loc 1 149 12 is_stmt 0
	li	a4,1000
	li	a3,0
	li	a1,4
	call	xTimerGenericCommand
.LVL61:
	.loc 1 149 11
	li	a5,1
	.loc 1 149 12
	mv	s1,a0
	.loc 1 149 11
	bne	a0,a5,.L45
	.loc 1 150 13 is_stmt 1
	.loc 1 150 17 is_stmt 0
	lw	s0,0(s0)
	call	xTaskGetTickCount
.LVL62:
	mv	a2,a0
	li	a4,100
	li	a3,0
	li	a1,1
	mv	a0,s0
	call	xTimerGenericCommand
.LVL63:
	.loc 1 150 15
	beq	a0,s1,.L39
	.loc 1 151 17 is_stmt 1
	.loc 1 151 22
.LBB42:
.LBB43:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE43:
.LBE42:
	.loc 1 151 22
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L47
	.loc 1 151 142 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL64:
.L48:
	.loc 1 151 22 discriminator 4
	li	a4,151
	j	.L53
.L47:
	.loc 1 151 171 discriminator 2
	call	xTaskGetTickCount
.LVL65:
	j	.L48
.L45:
	.loc 1 154 13 is_stmt 1
	.loc 1 154 18
.LBB44:
.LBB45:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE45:
.LBE44:
	.loc 1 154 18
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L49
	.loc 1 154 140 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL66:
.L50:
	.loc 1 154 18 discriminator 4
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC3)
	li	a4,154
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	j	.L52
.L49:
	.loc 1 154 169 discriminator 2
	call	xTaskGetTickCount
.LVL67:
	j	.L50
.L39:
	.loc 1 157 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	led_power_flash, .-led_power_flash
	.section	.text.product_init,"ax",@progbits
	.align	1
	.globl	product_init
	.type	product_init, @function
product_init:
.LFB40:
	.loc 1 184 24 is_stmt 1
	.cfi_startproc
	.loc 1 186 5
	.loc 1 184 24 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 186 5
	li	a1,2
	li	a0,2
	.loc 1 184 24
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 186 5
	call	hal_pwm_init
.LVL68:
	.loc 1 187 5 is_stmt 1
	li	a1,1000
	li	a0,2
	call	hal_pwm_freq_update
.LVL69:
	.loc 1 188 5
	li	a2,0
	li	a1,0
	li	a0,2
	call	hal_pwm_duty_set
.LVL70:
	.loc 1 189 5
	li	a0,2
	call	hal_pwm_start
.LVL71:
	.loc 1 191 5
	li	a1,8
	li	a0,1
	call	hal_pwm_init
.LVL72:
	.loc 1 192 5
	li	a1,1000
	li	a0,1
	call	hal_pwm_freq_update
.LVL73:
	.loc 1 193 5
	li	a2,0
	li	a1,0
	li	a0,1
	call	hal_pwm_duty_set
.LVL74:
	.loc 1 194 5
	li	a0,1
	call	hal_pwm_start
.LVL75:
	.loc 1 196 5
.LBB52:
.LBB53:
	.loc 1 162 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	bl_gpio_enable_output
.LVL76:
	.loc 1 163 5
	li	a2,0
	li	a1,0
	li	a0,4
	call	bl_gpio_enable_output
.LVL77:
	.loc 1 165 5
	li	a2,0
	li	a1,0
	li	a0,1
	call	bl_gpio_enable_input
.LVL78:
	.loc 1 166 5
	li	a2,0
	li	a1,0
	li	a0,20
	call	bl_gpio_enable_output
.LVL79:
	.loc 1 167 5
	li	a1,1
	li	a0,4
	call	bl_gpio_output_set
.LVL80:
	.loc 1 169 5
	.loc 1 169 24 is_stmt 0
	lui	a4,%hi(led_status_timer_cb)
	lui	a0,%hi(.LC4)
	addi	a4,a4,%lo(led_status_timer_cb)
	li	a3,0
	li	a2,1
	li	a1,500
	addi	a0,a0,%lo(.LC4)
	call	xTimerCreate
.LVL81:
	.loc 1 169 22
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 170 2 is_stmt 1
	.loc 1 170 4 is_stmt 0
	bne	a0,zero,.L55
	.loc 1 171 9 is_stmt 1
	.loc 1 171 14
.LBB54:
.LBB55:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE55:
.LBE54:
	.loc 1 171 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L56
	.loc 1 171 127
	call	xTaskGetTickCountFromISR
.LVL82:
.L57:
	.loc 1 171 14
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC5)
	li	a4,171
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL83:
.L55:
	.loc 1 175 5 is_stmt 1
	.loc 1 175 23 is_stmt 0
	lui	a4,%hi(led_power_timer_cb)
	lui	a0,%hi(.LC6)
	addi	a4,a4,%lo(led_power_timer_cb)
	li	a3,0
	li	a2,1
	li	a1,500
	addi	a0,a0,%lo(.LC6)
	call	xTimerCreate
.LVL84:
	.loc 1 175 21
	lui	a5,%hi(.LANCHOR3)
	sw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 176 2 is_stmt 1
	.loc 1 176 4 is_stmt 0
	bne	a0,zero,.L54
	.loc 1 177 9 is_stmt 1
	.loc 1 177 14
.LBB56:
.LBB57:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE57:
.LBE56:
	.loc 1 177 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L59
	.loc 1 177 126
	call	xTaskGetTickCountFromISR
.LVL85:
.L60:
.LBE53:
.LBE52:
	.loc 1 198 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB61:
.LBB58:
	.loc 1 177 14
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC7)
.LBE58:
.LBE61:
	.loc 1 198 1
.LBB62:
.LBB59:
	.loc 1 177 14
	li	a4,177
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC7)
.LBE59:
.LBE62:
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB63:
.LBB60:
	.loc 1 177 14
	tail	bl_printk
.LVL86:
.L56:
	.cfi_restore_state
	.loc 1 171 156
	call	xTaskGetTickCount
.LVL87:
	j	.L57
.L59:
	.loc 1 177 155
	call	xTaskGetTickCount
.LVL88:
	j	.L60
.L54:
.LBE60:
.LBE63:
	.loc 1 198 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	product_init, .-product_init
	.globl	charge_status
	.globl	_fsymf_info_dolphinproduct
	.comm	_fsymf_level_dolphinproduct,1,1
	.comm	_fsymc_level_dolphin,1,1
	.section	.rodata.led_status_flash.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"product.c"
	.zero	2
.LC1:
	.string	"product"
.LC2:
	.string	"\033[31m[%10u][%s %s:%4d] led_status_timer xTimerStop Failure\033[0m\r\n"
	.zero	3
.LC3:
	.string	"\033[31m[%10u][%s %s:%4d] led_status_timer ChangePeriod Failure\033[0m\r\n"
	.section	.rodata.product_init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"led_status_timer"
	.zero	3
.LC5:
	.string	"\033[31m[%10u][%s %s:%4d] create led_status_timer fail\033[0m\r\n"
	.zero	2
.LC6:
	.string	"led_power_timer"
.LC7:
	.string	"\033[31m[%10u][%s %s:%4d] create led_power_timer fail\033[0m\r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"dolphin.product"
.LC9:
	.string	"dolphin"
	.section	.sbss.charge_status,"aw",@nobits
	.type	charge_status, @object
	.size	charge_status, 1
charge_status:
	.zero	1
	.section	.sbss.led_power.8094,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	led_power.8094, @object
	.size	led_power.8094, 1
led_power.8094:
	.zero	1
	.section	.sbss.led_power_timer,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	led_power_timer, @object
	.size	led_power_timer, 4
led_power_timer:
	.zero	4
	.section	.sbss.led_stasus.8090,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	led_stasus.8090, @object
	.size	led_stasus.8090, 4
led_stasus.8090:
	.zero	4
	.section	.sbss.led_status_timer,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	led_status_timer, @object
	.size	led_status_timer, 4
led_status_timer:
	.zero	4
	.section	.sdata2.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.dolphin,"a"
	.align	2
	.type	_fsymc_info_dolphin, @object
	.size	_fsymc_info_dolphin, 8
_fsymc_info_dolphin:
	.word	_fsymc_level_dolphin
	.word	.LC9
	.section	.static_blogfile_code.dolphinproduct,"a"
	.align	2
	.type	_fsymf_info_dolphinproduct, @object
	.size	_fsymf_info_dolphinproduct, 8
_fsymf_info_dolphinproduct:
	.word	_fsymf_level_dolphinproduct
	.word	.LC8
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/b-l/dolphin/dolphin/include/product.h"
	.file 5 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/timers.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 8 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 9 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 10 "/b-l/bl_iot_sdk_new/components/stage/blog/blog_type.h"
	.file 11 "/b-l/bl_iot_sdk_new/components/stage/blog/blog.h"
	.file 12 "/b-l/bl_iot_sdk_new/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 13 "/b-l/bl_iot_sdk_new/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 14 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 15 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
	.file 16 "/b-l/bl_iot_sdk_new/components/utils/include/utils_log.h"
	.file 17 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_pwm.h"
	.file 18 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_timer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13f2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF192
	.byte	0xc
	.4byte	.LASF193
	.4byte	.LASF194
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x65
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x78
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x97
	.byte	0x4
	.4byte	0x86
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1c
	.byte	0x10
	.4byte	0x6c
	.byte	0x7
	.byte	0x7
	.byte	0x1
	.4byte	0x78
	.byte	0x4
	.byte	0x1f
	.byte	0x1
	.4byte	0xd2
	.byte	0x8
	.4byte	.LASF13
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x2
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x86
	.byte	0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0xd4
	.byte	0xa
	.byte	0x4
	.4byte	0x105
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.4byte	0xfe
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x4d
	.byte	0x22
	.4byte	0x116
	.byte	0xa
	.byte	0x4
	.4byte	0x11c
	.byte	0xb
	.4byte	.LASF130
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0x93
	.byte	0x14
	.4byte	0x9e
	.byte	0xd
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.byte	0x3
	.4byte	0x17b
	.byte	0xe
	.4byte	.LASF27
	.byte	0x7
	.byte	0xa7
	.byte	0xc
	.4byte	0x128
	.byte	0xe
	.4byte	.LASF28
	.byte	0x7
	.byte	0xa8
	.byte	0x13
	.4byte	0x17b
	.byte	0
	.byte	0xf
	.4byte	0x78
	.4byte	0x18b
	.byte	0x10
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x11
	.byte	0x8
	.byte	0x7
	.byte	0xa2
	.byte	0x9
	.4byte	0x1af
	.byte	0x12
	.4byte	.LASF29
	.byte	0x7
	.byte	0xa4
	.byte	0x7
	.4byte	0x9e
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.byte	0x7
	.byte	0xa9
	.byte	0x5
	.4byte	0x159
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0xaa
	.byte	0x3
	.4byte	0x18b
	.byte	0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x97
	.byte	0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0xc
	.byte	0xd
	.4byte	0x9e
	.byte	0x3
	.4byte	.LASF34
	.byte	0x8
	.byte	0x23
	.byte	0x1b
	.4byte	0x1c7
	.byte	0x13
	.4byte	.LASF39
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.byte	0x8
	.4byte	0x239
	.byte	0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x36
	.byte	0x13
	.4byte	0x239
	.byte	0
	.byte	0x14
	.string	"_k"
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.4byte	0x9e
	.byte	0x4
	.byte	0x12
	.4byte	.LASF36
	.byte	0x8
	.byte	0x37
	.byte	0xb
	.4byte	0x9e
	.byte	0x8
	.byte	0x12
	.4byte	.LASF37
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x9e
	.byte	0xc
	.byte	0x12
	.4byte	.LASF38
	.byte	0x8
	.byte	0x37
	.byte	0x1b
	.4byte	0x9e
	.byte	0x10
	.byte	0x14
	.string	"_x"
	.byte	0x8
	.byte	0x38
	.byte	0xb
	.4byte	0x23f
	.byte	0x14
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x1df
	.byte	0xf
	.4byte	0x1bb
	.4byte	0x24f
	.byte	0x10
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF40
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x2d2
	.byte	0x12
	.4byte	.LASF41
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x9e
	.byte	0
	.byte	0x12
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x9e
	.byte	0x4
	.byte	0x12
	.4byte	.LASF43
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.byte	0x12
	.4byte	.LASF44
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x9e
	.byte	0xc
	.byte	0x12
	.4byte	.LASF45
	.byte	0x8
	.byte	0x42
	.byte	0x7
	.4byte	0x9e
	.byte	0x10
	.byte	0x12
	.4byte	.LASF46
	.byte	0x8
	.byte	0x43
	.byte	0x7
	.4byte	0x9e
	.byte	0x14
	.byte	0x12
	.4byte	.LASF47
	.byte	0x8
	.byte	0x44
	.byte	0x7
	.4byte	0x9e
	.byte	0x18
	.byte	0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0x45
	.byte	0x7
	.4byte	0x9e
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x46
	.byte	0x7
	.4byte	0x9e
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LASF50
	.2byte	0x108
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.4byte	0x317
	.byte	0x12
	.4byte	.LASF51
	.byte	0x8
	.byte	0x50
	.byte	0x9
	.4byte	0x317
	.byte	0
	.byte	0x12
	.4byte	.LASF52
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0x317
	.byte	0x80
	.byte	0x16
	.4byte	.LASF53
	.byte	0x8
	.byte	0x53
	.byte	0xa
	.4byte	0x1bb
	.2byte	0x100
	.byte	0x16
	.4byte	.LASF54
	.byte	0x8
	.byte	0x56
	.byte	0xa
	.4byte	0x1bb
	.2byte	0x104
	.byte	0
	.byte	0xf
	.4byte	0xd2
	.4byte	0x327
	.byte	0x10
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x15
	.4byte	.LASF55
	.2byte	0x190
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.4byte	0x36a
	.byte	0x12
	.4byte	.LASF35
	.byte	0x8
	.byte	0x63
	.byte	0x12
	.4byte	0x36a
	.byte	0
	.byte	0x12
	.4byte	.LASF56
	.byte	0x8
	.byte	0x64
	.byte	0x6
	.4byte	0x9e
	.byte	0x4
	.byte	0x12
	.4byte	.LASF57
	.byte	0x8
	.byte	0x66
	.byte	0x9
	.4byte	0x370
	.byte	0x8
	.byte	0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x67
	.byte	0x1e
	.4byte	0x2d2
	.byte	0x88
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x327
	.byte	0xf
	.4byte	0x380
	.4byte	0x380
	.byte	0x10
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x386
	.byte	0x17
	.byte	0x13
	.4byte	.LASF58
	.byte	0x8
	.byte	0x8
	.byte	0x7a
	.byte	0x8
	.4byte	0x3af
	.byte	0x12
	.4byte	.LASF59
	.byte	0x8
	.byte	0x7b
	.byte	0x11
	.4byte	0x3af
	.byte	0
	.byte	0x12
	.4byte	.LASF60
	.byte	0x8
	.byte	0x7c
	.byte	0x6
	.4byte	0x9e
	.byte	0x4
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x78
	.byte	0x13
	.4byte	.LASF61
	.byte	0x68
	.byte	0x8
	.byte	0xba
	.byte	0x8
	.4byte	0x4f8
	.byte	0x14
	.string	"_p"
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0x3af
	.byte	0
	.byte	0x14
	.string	"_r"
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x9e
	.byte	0x4
	.byte	0x14
	.string	"_w"
	.byte	0x8
	.byte	0xbd
	.byte	0x7
	.4byte	0x9e
	.byte	0x8
	.byte	0x12
	.4byte	.LASF62
	.byte	0x8
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0x12
	.4byte	.LASF63
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0x14
	.string	"_bf"
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x387
	.byte	0x10
	.byte	0x12
	.4byte	.LASF64
	.byte	0x8
	.byte	0xc1
	.byte	0x7
	.4byte	0x9e
	.byte	0x18
	.byte	0x12
	.4byte	.LASF65
	.byte	0x8
	.byte	0xc8
	.byte	0xa
	.4byte	0xd2
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF66
	.byte	0x8
	.byte	0xca
	.byte	0xe
	.4byte	0x670
	.byte	0x20
	.byte	0x12
	.4byte	.LASF67
	.byte	0x8
	.byte	0xcc
	.byte	0xe
	.4byte	0x694
	.byte	0x24
	.byte	0x12
	.4byte	.LASF68
	.byte	0x8
	.byte	0xcf
	.byte	0xd
	.4byte	0x6b8
	.byte	0x28
	.byte	0x12
	.4byte	.LASF69
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0x6d2
	.byte	0x2c
	.byte	0x14
	.string	"_ub"
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x387
	.byte	0x30
	.byte	0x14
	.string	"_up"
	.byte	0x8
	.byte	0xd4
	.byte	0x12
	.4byte	0x3af
	.byte	0x38
	.byte	0x14
	.string	"_ur"
	.byte	0x8
	.byte	0xd5
	.byte	0x7
	.4byte	0x9e
	.byte	0x3c
	.byte	0x12
	.4byte	.LASF70
	.byte	0x8
	.byte	0xd8
	.byte	0x11
	.4byte	0x6d8
	.byte	0x40
	.byte	0x12
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x6e8
	.byte	0x43
	.byte	0x14
	.string	"_lb"
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x387
	.byte	0x44
	.byte	0x12
	.4byte	.LASF72
	.byte	0x8
	.byte	0xdf
	.byte	0x7
	.4byte	0x9e
	.byte	0x4c
	.byte	0x12
	.4byte	.LASF73
	.byte	0x8
	.byte	0xe0
	.byte	0xa
	.4byte	0x135
	.byte	0x50
	.byte	0x12
	.4byte	.LASF74
	.byte	0x8
	.byte	0xe3
	.byte	0x12
	.4byte	0x516
	.byte	0x54
	.byte	0x12
	.4byte	.LASF75
	.byte	0x8
	.byte	0xe7
	.byte	0xc
	.4byte	0x1d3
	.byte	0x58
	.byte	0x12
	.4byte	.LASF76
	.byte	0x8
	.byte	0xe9
	.byte	0xe
	.4byte	0x1af
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF77
	.byte	0x8
	.byte	0xea
	.byte	0x7
	.4byte	0x9e
	.byte	0x64
	.byte	0
	.byte	0x18
	.4byte	0x14d
	.4byte	0x516
	.byte	0x19
	.4byte	0x516
	.byte	0x19
	.4byte	0xd2
	.byte	0x19
	.4byte	0x66a
	.byte	0x19
	.4byte	0x9e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x521
	.byte	0x4
	.4byte	0x516
	.byte	0x1a
	.4byte	.LASF78
	.2byte	0x428
	.byte	0x8
	.2byte	0x265
	.byte	0x8
	.4byte	0x66a
	.byte	0x1b
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x267
	.byte	0x7
	.4byte	0x9e
	.byte	0
	.byte	0x1b
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x26c
	.byte	0xb
	.4byte	0x744
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x26c
	.byte	0x14
	.4byte	0x744
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x744
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x26e
	.byte	0x7
	.4byte	0x9e
	.byte	0x10
	.byte	0x1b
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x26f
	.byte	0x8
	.4byte	0x944
	.byte	0x14
	.byte	0x1b
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x272
	.byte	0x7
	.4byte	0x9e
	.byte	0x30
	.byte	0x1b
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x273
	.byte	0x16
	.4byte	0x959
	.byte	0x34
	.byte	0x1b
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x275
	.byte	0x7
	.4byte	0x9e
	.byte	0x38
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x277
	.byte	0xa
	.4byte	0x96a
	.byte	0x3c
	.byte	0x1b
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x27a
	.byte	0x13
	.4byte	0x239
	.byte	0x40
	.byte	0x1b
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x27b
	.byte	0x7
	.4byte	0x9e
	.byte	0x44
	.byte	0x1b
	.4byte	.LASF91
	.byte	0x8
	.2byte	0x27c
	.byte	0x13
	.4byte	0x239
	.byte	0x48
	.byte	0x1b
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x27d
	.byte	0x14
	.4byte	0x970
	.byte	0x4c
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x280
	.byte	0x7
	.4byte	0x9e
	.byte	0x50
	.byte	0x1b
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x281
	.byte	0x9
	.4byte	0x66a
	.byte	0x54
	.byte	0x1b
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x91f
	.byte	0x58
	.byte	0x1c
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x36a
	.2byte	0x148
	.byte	0x1c
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x327
	.2byte	0x14c
	.byte	0x1c
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x981
	.2byte	0x2dc
	.byte	0x1c
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x705
	.2byte	0x2e0
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x98d
	.2byte	0x2ec
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xfe
	.byte	0xa
	.byte	0x4
	.4byte	0x4f8
	.byte	0x18
	.4byte	0x14d
	.4byte	0x694
	.byte	0x19
	.4byte	0x516
	.byte	0x19
	.4byte	0xd2
	.byte	0x19
	.4byte	0xf8
	.byte	0x19
	.4byte	0x9e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x676
	.byte	0x18
	.4byte	0x141
	.4byte	0x6b8
	.byte	0x19
	.4byte	0x516
	.byte	0x19
	.4byte	0xd2
	.byte	0x19
	.4byte	0x141
	.byte	0x19
	.4byte	0x9e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x69a
	.byte	0x18
	.4byte	0x9e
	.4byte	0x6d2
	.byte	0x19
	.4byte	0x516
	.byte	0x19
	.4byte	0xd2
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6be
	.byte	0xf
	.4byte	0x78
	.4byte	0x6e8
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	0x78
	.4byte	0x6f8
	.byte	0x10
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x124
	.byte	0x18
	.4byte	0x3b5
	.byte	0x1d
	.4byte	.LASF101
	.byte	0xc
	.byte	0x8
	.2byte	0x128
	.byte	0x8
	.4byte	0x73e
	.byte	0x1b
	.4byte	.LASF35
	.byte	0x8
	.2byte	0x12a
	.byte	0x11
	.4byte	0x73e
	.byte	0
	.byte	0x1b
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x12b
	.byte	0x7
	.4byte	0x9e
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x12c
	.byte	0xb
	.4byte	0x744
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x705
	.byte	0xa
	.byte	0x4
	.4byte	0x6f8
	.byte	0x1d
	.4byte	.LASF104
	.byte	0xe
	.byte	0x8
	.2byte	0x144
	.byte	0x8
	.4byte	0x783
	.byte	0x1b
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x145
	.byte	0x12
	.4byte	0x783
	.byte	0
	.byte	0x1b
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x146
	.byte	0x12
	.4byte	0x783
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x147
	.byte	0x12
	.4byte	0x7f
	.byte	0xc
	.byte	0
	.byte	0xf
	.4byte	0x7f
	.4byte	0x793
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x1e
	.byte	0xd0
	.byte	0x8
	.2byte	0x285
	.byte	0x7
	.4byte	0x8a8
	.byte	0x1b
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x287
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x1b
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x288
	.byte	0x12
	.4byte	0x66a
	.byte	0x4
	.byte	0x1b
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x289
	.byte	0x10
	.4byte	0x8a8
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x28a
	.byte	0x17
	.4byte	0x24f
	.byte	0x24
	.byte	0x1b
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x28b
	.byte	0xf
	.4byte	0x9e
	.byte	0x48
	.byte	0x1b
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x2c
	.byte	0x50
	.byte	0x1b
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x74a
	.byte	0x58
	.byte	0x1b
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x28e
	.byte	0x16
	.4byte	0x1af
	.byte	0x68
	.byte	0x1b
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x28f
	.byte	0x16
	.4byte	0x1af
	.byte	0x70
	.byte	0x1b
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x290
	.byte	0x16
	.4byte	0x1af
	.byte	0x78
	.byte	0x1b
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x291
	.byte	0x10
	.4byte	0x8b8
	.byte	0x80
	.byte	0x1b
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x292
	.byte	0x10
	.4byte	0x8c8
	.byte	0x88
	.byte	0x1b
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x293
	.byte	0xf
	.4byte	0x9e
	.byte	0xa0
	.byte	0x1b
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x294
	.byte	0x16
	.4byte	0x1af
	.byte	0xa4
	.byte	0x1b
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x295
	.byte	0x16
	.4byte	0x1af
	.byte	0xac
	.byte	0x1b
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x296
	.byte	0x16
	.4byte	0x1af
	.byte	0xb4
	.byte	0x1b
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x297
	.byte	0x16
	.4byte	0x1af
	.byte	0xbc
	.byte	0x1b
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x298
	.byte	0x16
	.4byte	0x1af
	.byte	0xc4
	.byte	0x1b
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x299
	.byte	0x8
	.4byte	0x9e
	.byte	0xcc
	.byte	0
	.byte	0xf
	.4byte	0xfe
	.4byte	0x8b8
	.byte	0x10
	.4byte	0x25
	.byte	0x19
	.byte	0
	.byte	0xf
	.4byte	0xfe
	.4byte	0x8c8
	.byte	0x10
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0xf
	.4byte	0xfe
	.4byte	0x8d8
	.byte	0x10
	.4byte	0x25
	.byte	0x17
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x8
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8ff
	.byte	0x1b
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8ff
	.byte	0
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x90f
	.byte	0x78
	.byte	0
	.byte	0xf
	.4byte	0x3af
	.4byte	0x90f
	.byte	0x10
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0xf
	.4byte	0x25
	.4byte	0x91f
	.byte	0x10
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0x1f
	.byte	0xf0
	.byte	0x8
	.2byte	0x283
	.byte	0x3
	.4byte	0x944
	.byte	0x20
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x29a
	.byte	0xb
	.4byte	0x793
	.byte	0x20
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x8d8
	.byte	0
	.byte	0xf
	.4byte	0xfe
	.4byte	0x954
	.byte	0x10
	.4byte	0x25
	.byte	0x18
	.byte	0
	.byte	0xb
	.4byte	.LASF131
	.byte	0xa
	.byte	0x4
	.4byte	0x954
	.byte	0x21
	.4byte	0x96a
	.byte	0x19
	.4byte	0x516
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x95f
	.byte	0xa
	.byte	0x4
	.4byte	0x239
	.byte	0x21
	.4byte	0x981
	.byte	0x19
	.4byte	0x9e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x987
	.byte	0xa
	.byte	0x4
	.4byte	0x976
	.byte	0xf
	.4byte	0x6f8
	.4byte	0x99d
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x22
	.4byte	.LASF132
	.byte	0x8
	.2byte	0x333
	.byte	0x17
	.4byte	0x516
	.byte	0x22
	.4byte	.LASF133
	.byte	0x8
	.2byte	0x334
	.byte	0x1d
	.4byte	0x51c
	.byte	0x23
	.4byte	.LASF195
	.byte	0x7
	.byte	0x1
	.4byte	0x78
	.byte	0xa
	.byte	0x21
	.byte	0xe
	.4byte	0x9f4
	.byte	0x8
	.4byte	.LASF134
	.byte	0
	.byte	0x8
	.4byte	.LASF135
	.byte	0x1
	.byte	0x8
	.4byte	.LASF136
	.byte	0x2
	.byte	0x8
	.4byte	.LASF137
	.byte	0x3
	.byte	0x8
	.4byte	.LASF138
	.byte	0x4
	.byte	0x8
	.4byte	.LASF139
	.byte	0x5
	.byte	0x8
	.4byte	.LASF140
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF141
	.byte	0xa
	.byte	0x29
	.byte	0x3
	.4byte	0x9b7
	.byte	0x13
	.4byte	.LASF142
	.byte	0x8
	.byte	0xa
	.byte	0x2b
	.byte	0x10
	.4byte	0xa28
	.byte	0x12
	.4byte	.LASF143
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0xa28
	.byte	0
	.byte	0x12
	.4byte	.LASF144
	.byte	0xa
	.byte	0x2d
	.byte	0xb
	.4byte	0x66a
	.byte	0x4
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x9f4
	.byte	0x3
	.4byte	.LASF145
	.byte	0xa
	.byte	0x2e
	.byte	0x3
	.4byte	0xa00
	.byte	0x4
	.4byte	0xa2e
	.byte	0x24
	.4byte	.LASF147
	.byte	0xb
	.byte	0x37
	.byte	0x17
	.4byte	0x92
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x25
	.4byte	.LASF146
	.byte	0xb
	.byte	0x44
	.byte	0xe
	.4byte	0x9f4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_dolphin
	.byte	0x24
	.4byte	.LASF148
	.byte	0xb
	.byte	0x45
	.byte	0x1a
	.4byte	0xa3a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_dolphin
	.byte	0x25
	.4byte	.LASF149
	.byte	0xb
	.byte	0x52
	.byte	0xe
	.4byte	0x9f4
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_dolphinproduct
	.byte	0x25
	.4byte	.LASF150
	.byte	0xb
	.byte	0x53
	.byte	0x13
	.4byte	0xa3a
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_dolphinproduct
	.byte	0x6
	.4byte	.LASF151
	.byte	0xc
	.byte	0x8
	.byte	0x11
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF152
	.byte	0xd
	.byte	0x7c
	.byte	0xf
	.4byte	0x386
	.byte	0xf
	.4byte	0xabc
	.4byte	0xabc
	.byte	0x26
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xac2
	.byte	0xa
	.byte	0x4
	.4byte	0xaa5
	.byte	0x6
	.4byte	.LASF153
	.byte	0xd
	.byte	0x84
	.byte	0x1c
	.4byte	0xab1
	.byte	0x27
	.4byte	0xa5
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.byte	0x5
	.byte	0x3
	.4byte	charge_status
	.byte	0x28
	.4byte	.LASF196
	.byte	0x1
	.byte	0x1f
	.byte	0xc
	.4byte	0xaee
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF154
	.byte	0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x59
	.byte	0x16
	.4byte	0x10a
	.byte	0x5
	.byte	0x3
	.4byte	led_status_timer
	.byte	0x24
	.4byte	.LASF156
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	0x10a
	.byte	0x5
	.byte	0x3
	.4byte	led_power_timer
	.byte	0x29
	.4byte	.LASF157
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0xd95
	.byte	0x2a
	.4byte	0xd95
	.4byte	.LBB52
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc4
	.byte	0x5
	.4byte	0xcd4
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xab
	.byte	0x64
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0xb1
	.byte	0x63
	.byte	0x2c
	.4byte	.LVL76
	.4byte	0x1356
	.4byte	0xb80
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL77
	.4byte	0x1356
	.4byte	0xb9d
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL78
	.4byte	0x1362
	.4byte	0xbba
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL79
	.4byte	0x1356
	.4byte	0xbd7
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL80
	.4byte	0x136e
	.4byte	0xbef
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL81
	.4byte	0x137a
	.4byte	0xc20
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	led_status_timer_cb
	.byte	0
	.byte	0x2e
	.4byte	.LVL82
	.4byte	0x1386
	.byte	0x2c
	.4byte	.LVL83
	.4byte	0x1393
	.4byte	0xc58
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xab
	.byte	0
	.byte	0x2c
	.4byte	.LVL84
	.4byte	0x137a
	.4byte	0xc89
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	led_power_timer_cb
	.byte	0
	.byte	0x2e
	.4byte	.LVL85
	.4byte	0x1386
	.byte	0x2f
	.4byte	.LVL86
	.4byte	0x1393
	.4byte	0xcc1
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xb1
	.byte	0
	.byte	0x2e
	.4byte	.LVL87
	.4byte	0x139f
	.byte	0x2e
	.4byte	.LVL88
	.4byte	0x139f
	.byte	0
	.byte	0x2c
	.4byte	.LVL68
	.4byte	0x13ac
	.4byte	0xcec
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2c
	.4byte	.LVL69
	.4byte	0x13b8
	.4byte	0xd06
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x2c
	.4byte	.LVL70
	.4byte	0x13c4
	.4byte	0xd23
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2c
	.4byte	.LVL71
	.4byte	0x13d0
	.4byte	0xd36
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x2c
	.4byte	.LVL72
	.4byte	0x13ac
	.4byte	0xd4e
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x2c
	.4byte	.LVL73
	.4byte	0x13b8
	.4byte	0xd68
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x2c
	.4byte	.LVL74
	.4byte	0x13c4
	.4byte	0xd85
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL75
	.4byte	0x13d0
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF197
	.byte	0x1
	.byte	0x9f
	.byte	0xd
	.byte	0x1
	.byte	0x29
	.4byte	.LASF158
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0xea4
	.byte	0x32
	.string	"ms"
	.byte	0x1
	.byte	0x8c
	.byte	0x1a
	.4byte	0x9e
	.4byte	.LLST17
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x90
	.byte	0x73
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x97
	.byte	0x73
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x9a
	.byte	0x71
	.byte	0x2c
	.4byte	.LVL56
	.4byte	0x13dc
	.4byte	0xe18
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2e
	.4byte	.LVL57
	.4byte	0x1386
	.byte	0x33
	.4byte	.LVL58
	.4byte	0x1393
	.byte	0x2e
	.4byte	.LVL59
	.4byte	0x139f
	.byte	0x2c
	.4byte	.LVL61
	.4byte	0x13dc
	.4byte	0xe52
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x2e
	.4byte	.LVL62
	.4byte	0x139f
	.byte	0x2c
	.4byte	.LVL63
	.4byte	0x13dc
	.4byte	0xe7f
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2e
	.4byte	.LVL64
	.4byte	0x1386
	.byte	0x2e
	.4byte	.LVL65
	.4byte	0x139f
	.byte	0x2e
	.4byte	.LVL66
	.4byte	0x1386
	.byte	0x2e
	.4byte	.LVL67
	.4byte	0x139f
	.byte	0
	.byte	0x29
	.4byte	.LASF159
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0xfaa
	.byte	0x32
	.string	"ms"
	.byte	0x1
	.byte	0x78
	.byte	0x1b
	.4byte	0x9e
	.4byte	.LLST16
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x7c
	.byte	0x73
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x84
	.byte	0x73
	.byte	0x2b
	.4byte	0x124c
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x87
	.byte	0x71
	.byte	0x2c
	.4byte	.LVL42
	.4byte	0x13dc
	.4byte	0xf1e
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2e
	.4byte	.LVL43
	.4byte	0x1386
	.byte	0x33
	.4byte	.LVL44
	.4byte	0x1393
	.byte	0x2e
	.4byte	.LVL45
	.4byte	0x139f
	.byte	0x2c
	.4byte	.LVL47
	.4byte	0x13dc
	.4byte	0xf58
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x2e
	.4byte	.LVL48
	.4byte	0x139f
	.byte	0x2c
	.4byte	.LVL49
	.4byte	0x13dc
	.4byte	0xf85
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x2e
	.4byte	.LVL50
	.4byte	0x1386
	.byte	0x2e
	.4byte	.LVL51
	.4byte	0x139f
	.byte	0x2e
	.4byte	.LVL52
	.4byte	0x1386
	.byte	0x2e
	.4byte	.LVL53
	.4byte	0x139f
	.byte	0
	.byte	0x34
	.4byte	.LASF161
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.byte	0x1
	.4byte	0xfd6
	.byte	0x35
	.4byte	.LASF163
	.byte	0x1
	.byte	0x6a
	.byte	0x27
	.4byte	0x10a
	.byte	0x24
	.4byte	.LASF160
	.byte	0x1
	.byte	0x6b
	.byte	0x10
	.4byte	0xaee
	.byte	0x5
	.byte	0x3
	.4byte	led_power.8094
	.byte	0
	.byte	0x34
	.4byte	.LASF162
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.byte	0x1
	.4byte	0x1002
	.byte	0x35
	.4byte	.LASF163
	.byte	0x1
	.byte	0x5d
	.byte	0x28
	.4byte	0x10a
	.byte	0x24
	.4byte	.LASF164
	.byte	0x1
	.byte	0x5e
	.byte	0x10
	.4byte	0x9e
	.byte	0x5
	.byte	0x3
	.4byte	led_stasus.8090
	.byte	0
	.byte	0x29
	.4byte	.LASF165
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x1070
	.byte	0x36
	.4byte	.LASF166
	.byte	0x1
	.byte	0x4e
	.byte	0x22
	.4byte	0x6c
	.4byte	.LLST14
	.byte	0x37
	.4byte	.LASF167
	.byte	0x1
	.byte	0x4f
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST15
	.byte	0x38
	.4byte	0x1198
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x52
	.byte	0x10
	.4byte	0x1066
	.byte	0x39
	.4byte	0x11d7
	.byte	0x39
	.4byte	0x11cb
	.byte	0x39
	.4byte	0x11bf
	.byte	0x39
	.4byte	0x11b3
	.byte	0x39
	.4byte	0x11a9
	.byte	0
	.byte	0x33
	.4byte	.LVL39
	.4byte	0x1156
	.byte	0
	.byte	0x29
	.4byte	.LASF168
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x10de
	.byte	0x36
	.4byte	.LASF166
	.byte	0x1
	.byte	0x46
	.byte	0x22
	.4byte	0x6c
	.4byte	.LLST12
	.byte	0x37
	.4byte	.LASF167
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST13
	.byte	0x38
	.4byte	0x1198
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x49
	.byte	0x10
	.4byte	0x10d4
	.byte	0x39
	.4byte	0x11d7
	.byte	0x39
	.4byte	0x11cb
	.byte	0x39
	.4byte	0x11bf
	.byte	0x39
	.4byte	0x11b3
	.byte	0x39
	.4byte	0x11a9
	.byte	0
	.byte	0x33
	.4byte	.LVL34
	.4byte	0x1114
	.byte	0
	.byte	0x29
	.4byte	.LASF169
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1114
	.byte	0x36
	.4byte	.LASF170
	.byte	0x1
	.byte	0x42
	.byte	0x1d
	.4byte	0x6c
	.4byte	.LLST11
	.byte	0x3a
	.4byte	.LVL29
	.4byte	0x136e
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF171
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1156
	.byte	0x36
	.4byte	.LASF167
	.byte	0x1
	.byte	0x3e
	.byte	0x20
	.4byte	0x86
	.4byte	.LLST10
	.byte	0x3a
	.4byte	.LVL26
	.4byte	0x13c4
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF172
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x1198
	.byte	0x36
	.4byte	.LASF167
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.4byte	0x86
	.4byte	.LLST9
	.byte	0x3a
	.4byte	.LVL23
	.4byte	0x13c4
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	.LASF198
	.byte	0x1
	.byte	0x34
	.byte	0x6
	.4byte	0x4d
	.byte	0x1
	.4byte	0x11e4
	.byte	0x3c
	.string	"x"
	.byte	0x1
	.byte	0x34
	.byte	0x1a
	.4byte	0x54
	.byte	0x35
	.4byte	.LASF173
	.byte	0x1
	.byte	0x34
	.byte	0x28
	.4byte	0x54
	.byte	0x35
	.4byte	.LASF174
	.byte	0x1
	.byte	0x34
	.byte	0x3b
	.4byte	0x54
	.byte	0x35
	.4byte	.LASF175
	.byte	0x1
	.byte	0x34
	.byte	0x4e
	.4byte	0x54
	.byte	0x35
	.4byte	.LASF176
	.byte	0x1
	.byte	0x34
	.byte	0x62
	.4byte	0x54
	.byte	0
	.byte	0x3d
	.4byte	.LASF177
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x59
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x1218
	.byte	0x3e
	.string	"tmp"
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	0x59
	.4byte	.LLST5
	.byte	0x2e
	.4byte	.LVL15
	.4byte	0x13e9
	.byte	0
	.byte	0x3d
	.4byte	.LASF178
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x59
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x124c
	.byte	0x3e
	.string	"tmp"
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	0x59
	.4byte	.LLST4
	.byte	0x2e
	.4byte	.LVL13
	.4byte	0x13e9
	.byte	0
	.byte	0x3f
	.4byte	.LASF199
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0xd4
	.byte	0x3
	.byte	0x40
	.4byte	0xfd6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x12ac
	.byte	0x41
	.4byte	0xfe3
	.4byte	.LLST0
	.byte	0x38
	.4byte	0xfd6
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.4byte	0x129c
	.byte	0x41
	.4byte	0xfe3
	.4byte	.LLST1
	.byte	0x42
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0
	.byte	0x3a
	.4byte	.LVL4
	.4byte	0x136e
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	0xfaa
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x1319
	.byte	0x41
	.4byte	0xfb7
	.4byte	.LLST2
	.byte	0x38
	.4byte	0xfaa
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	0x1304
	.byte	0x41
	.4byte	0xfb7
	.4byte	.LLST3
	.byte	0x43
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x30
	.4byte	.LVL8
	.4byte	0x136e
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL12
	.4byte	0x136e
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	0x1198
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x1356
	.byte	0x41
	.4byte	0x11a9
	.4byte	.LLST6
	.byte	0x44
	.4byte	0x11b3
	.byte	0x1
	.byte	0x5b
	.byte	0x41
	.4byte	0x11bf
	.4byte	.LLST7
	.byte	0x44
	.4byte	0x11cb
	.byte	0x1
	.byte	0x5d
	.byte	0x41
	.4byte	0x11d7
	.4byte	.LLST8
	.byte	0
	.byte	0x45
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0xe
	.byte	0x2c
	.byte	0x5
	.byte	0x45
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0xe
	.byte	0x2d
	.byte	0x5
	.byte	0x45
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0xe
	.byte	0x2e
	.byte	0x5
	.byte	0x45
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x5
	.byte	0xe4
	.byte	0x10
	.byte	0x46
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0xf
	.2byte	0x558
	.byte	0xc
	.byte	0x45
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x10
	.byte	0x9e
	.byte	0x6
	.byte	0x46
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0xf
	.2byte	0x547
	.byte	0xc
	.byte	0x45
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x11
	.byte	0x43
	.byte	0x5
	.byte	0x45
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x11
	.byte	0x4d
	.byte	0x5
	.byte	0x45
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x11
	.byte	0x62
	.byte	0x5
	.byte	0x45
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x11
	.byte	0x7e
	.byte	0x5
	.byte	0x46
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x5
	.2byte	0x502
	.byte	0xc
	.byte	0x45
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x12
	.byte	0x21
	.byte	0xa
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x23
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0xb
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x44
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x45
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
	.byte	0x46
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
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL61-1
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x11
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x13
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xc
	.4byte	0xf4240
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
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
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
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
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
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
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF54:
	.string	"_is_cxa"
.LASF3:
	.string	"short int"
.LASF179:
	.string	"bl_gpio_enable_output"
.LASF104:
	.string	"_rand48"
.LASF172:
	.string	"motor_g_set_duty"
.LASF84:
	.string	"_emergency"
.LASF145:
	.string	"blog_info_t"
.LASF120:
	.string	"_getdate_err"
.LASF74:
	.string	"_data"
.LASF130:
	.string	"tmrTimerControl"
.LASF124:
	.string	"_wcrtomb_state"
.LASF125:
	.string	"_wcsrtombs_state"
.LASF195:
	.string	"_blog_leve"
.LASF19:
	.string	"TrapNetCounter"
.LASF1:
	.string	"long long unsigned int"
.LASF64:
	.string	"_lbfsize"
.LASF102:
	.string	"_niobs"
.LASF160:
	.string	"led_power"
.LASF122:
	.string	"_mbrtowc_state"
.LASF77:
	.string	"_flags2"
.LASF117:
	.string	"_wctomb_state"
.LASF41:
	.string	"__tm_sec"
.LASF69:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF152:
	.string	"intCallback_Type"
.LASF59:
	.string	"_base"
.LASF43:
	.string	"__tm_hour"
.LASF99:
	.string	"__sf"
.LASF50:
	.string	"_on_exit_args"
.LASF65:
	.string	"_cookie"
.LASF98:
	.string	"__sglue"
.LASF150:
	.string	"_fsymf_info_dolphinproduct"
.LASF4:
	.string	"long int"
.LASF135:
	.string	"BLOG_LEVEL_DEBUG"
.LASF188:
	.string	"hal_pwm_duty_set"
.LASF62:
	.string	"_flags"
.LASF189:
	.string	"hal_pwm_start"
.LASF38:
	.string	"_wds"
.LASF183:
	.string	"xTaskGetTickCountFromISR"
.LASF90:
	.string	"_result_k"
.LASF7:
	.string	"long long int"
.LASF190:
	.string	"xTimerGenericCommand"
.LASF16:
	.string	"BaseType_t"
.LASF94:
	.string	"_cvtbuf"
.LASF123:
	.string	"_mbsrtowcs_state"
.LASF176:
	.string	"out_max"
.LASF121:
	.string	"_mbrlen_state"
.LASF51:
	.string	"_fnargs"
.LASF70:
	.string	"_ubuf"
.LASF153:
	.string	"intCbfArra"
.LASF138:
	.string	"BLOG_LEVEL_ERROR"
.LASF100:
	.string	"__FILE"
.LASF168:
	.string	"motor_c_set_vibrate"
.LASF175:
	.string	"out_min"
.LASF132:
	.string	"_impure_ptr"
.LASF82:
	.string	"_stderr"
.LASF39:
	.string	"_Bigint"
.LASF112:
	.string	"_gamma_signgam"
.LASF158:
	.string	"led_power_flash"
.LASF165:
	.string	"motor_g_set_vibrate"
.LASF128:
	.string	"_nmalloc"
.LASF164:
	.string	"led_stasus"
.LASF40:
	.string	"__tm"
.LASF15:
	.string	"CHARGEFULL"
.LASF76:
	.string	"_mbstate"
.LASF28:
	.string	"__wchb"
.LASF151:
	.string	"SystemCoreClock"
.LASF93:
	.string	"_cvtlen"
.LASF191:
	.string	"bl_timer_now_us"
.LASF12:
	.string	"long unsigned int"
.LASF21:
	.string	"TimerHandle_t"
.LASF63:
	.string	"_file"
.LASF83:
	.string	"_inc"
.LASF144:
	.string	"name"
.LASF26:
	.string	"_ssize_t"
.LASF14:
	.string	"CHARGING"
.LASF143:
	.string	"level"
.LASF171:
	.string	"motor_c_set_duty"
.LASF10:
	.string	"short unsigned int"
.LASF174:
	.string	"in_max"
.LASF96:
	.string	"_atexit0"
.LASF119:
	.string	"_signal_buf"
.LASF110:
	.string	"_asctime_buf"
.LASF166:
	.string	"vibrate"
.LASF27:
	.string	"__wch"
.LASF127:
	.string	"_nextf"
.LASF23:
	.string	"wint_t"
.LASF75:
	.string	"_lock"
.LASF156:
	.string	"led_power_timer"
.LASF169:
	.string	"set_led_status"
.LASF106:
	.string	"_mult"
.LASF89:
	.string	"_result"
.LASF131:
	.string	"__locale_t"
.LASF67:
	.string	"_write"
.LASF46:
	.string	"__tm_year"
.LASF108:
	.string	"_unused_rand"
.LASF192:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF178:
	.string	"hal_timer_now_s"
.LASF73:
	.string	"_offset"
.LASF85:
	.string	"_unspecified_locale_info"
.LASF194:
	.string	"/b-l/dolphin/build_out/dolphin"
.LASF17:
	.string	"TickType_t"
.LASF57:
	.string	"_fns"
.LASF159:
	.string	"led_status_flash"
.LASF134:
	.string	"BLOG_LEVEL_ALL"
.LASF45:
	.string	"__tm_mon"
.LASF139:
	.string	"BLOG_LEVEL_ASSERT"
.LASF55:
	.string	"_atexit"
.LASF87:
	.string	"__sdidinit"
.LASF24:
	.string	"_off_t"
.LASF136:
	.string	"BLOG_LEVEL_INFO"
.LASF157:
	.string	"product_init"
.LASF186:
	.string	"hal_pwm_init"
.LASF22:
	.string	"float"
.LASF92:
	.string	"_freelist"
.LASF199:
	.string	"xPortIsInsideInterrupt"
.LASF180:
	.string	"bl_gpio_enable_input"
.LASF33:
	.string	"_LOCK_RECURSIVE_T"
.LASF66:
	.string	"_read"
.LASF177:
	.string	"hal_timer_now_ms"
.LASF154:
	.string	"_Bool"
.LASF5:
	.string	"int32_t"
.LASF52:
	.string	"_dso_handle"
.LASF182:
	.string	"xTimerCreate"
.LASF95:
	.string	"_new"
.LASF126:
	.string	"_h_errno"
.LASF34:
	.string	"_flock_t"
.LASF48:
	.string	"__tm_yday"
.LASF58:
	.string	"__sbuf"
.LASF155:
	.string	"led_status_timer"
.LASF103:
	.string	"_iobs"
.LASF196:
	.string	"led_status_on"
.LASF198:
	.string	"duty_map"
.LASF31:
	.string	"_mbstate_t"
.LASF61:
	.string	"__sFILE"
.LASF147:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF193:
	.string	"/b-l/dolphin/dolphin/product.c"
.LASF115:
	.string	"_mblen_state"
.LASF142:
	.string	"_blog_info"
.LASF56:
	.string	"_ind"
.LASF187:
	.string	"hal_pwm_freq_update"
.LASF86:
	.string	"_locale"
.LASF88:
	.string	"__cleanup"
.LASF184:
	.string	"bl_printk"
.LASF36:
	.string	"_maxwds"
.LASF78:
	.string	"_reent"
.LASF105:
	.string	"_seed"
.LASF18:
	.string	"charge_status"
.LASF29:
	.string	"__count"
.LASF11:
	.string	"uint32_t"
.LASF161:
	.string	"led_power_timer_cb"
.LASF13:
	.string	"DISCHARGE"
.LASF25:
	.string	"_fpos_t"
.LASF79:
	.string	"_errno"
.LASF20:
	.string	"char"
.LASF72:
	.string	"_blksize"
.LASF60:
	.string	"_size"
.LASF0:
	.string	"unsigned int"
.LASF181:
	.string	"bl_gpio_output_set"
.LASF140:
	.string	"BLOG_LEVEL_NEVER"
.LASF185:
	.string	"xTaskGetTickCount"
.LASF37:
	.string	"_sign"
.LASF35:
	.string	"_next"
.LASF109:
	.string	"_strtok_last"
.LASF167:
	.string	"duty"
.LASF53:
	.string	"_fntypes"
.LASF9:
	.string	"unsigned char"
.LASF107:
	.string	"_add"
.LASF32:
	.string	"__ULong"
.LASF149:
	.string	"_fsymf_level_dolphinproduct"
.LASF148:
	.string	"_fsymc_info_dolphin"
.LASF133:
	.string	"_global_impure_ptr"
.LASF173:
	.string	"in_min"
.LASF170:
	.string	"status"
.LASF162:
	.string	"led_status_timer_cb"
.LASF81:
	.string	"_stdout"
.LASF47:
	.string	"__tm_wday"
.LASF101:
	.string	"_glue"
.LASF80:
	.string	"_stdin"
.LASF30:
	.string	"__value"
.LASF8:
	.string	"uint8_t"
.LASF118:
	.string	"_l64a_buf"
.LASF97:
	.string	"_sig_func"
.LASF163:
	.string	"timer"
.LASF141:
	.string	"blog_level_t"
.LASF71:
	.string	"_nbuf"
.LASF129:
	.string	"_unused"
.LASF146:
	.string	"_fsymc_level_dolphin"
.LASF49:
	.string	"__tm_isdst"
.LASF111:
	.string	"_localtime_buf"
.LASF42:
	.string	"__tm_min"
.LASF114:
	.string	"_r48"
.LASF6:
	.string	"int64_t"
.LASF68:
	.string	"_seek"
.LASF137:
	.string	"BLOG_LEVEL_WARN"
.LASF116:
	.string	"_mbtowc_state"
.LASF91:
	.string	"_p5s"
.LASF44:
	.string	"__tm_mday"
.LASF113:
	.string	"_rand_next"
.LASF197:
	.string	"led_init"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
