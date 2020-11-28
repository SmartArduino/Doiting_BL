	.file	"app_main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.light_task,"ax",@progbits
	.align	1
	.globl	light_task
	.type	light_task, @function
light_task:
.LFB73:
	.file 1 "/b-l/dolphin/dolphin/app_main.c"
	.loc 1 131 27
	.cfi_startproc
.LVL0:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 134 18 is_stmt 0
	lui	s2,%hi(charge_status)
	.loc 1 160 7
	li	s3,2
	.loc 1 137 12
	lui	s6,%hi(.LANCHOR0)
	lui	s7,%hi(.LANCHOR1)
	.loc 1 147 21
	lui	s4,%hi(.LANCHOR3)
	.loc 1 149 15
	li	s0,3
	.loc 1 138 30
	lui	s5,%hi(.LANCHOR2)
.LVL1:
.L16:
	.loc 1 133 5 is_stmt 1
	.loc 1 134 1
	.loc 1 134 3 is_stmt 0
	lbu	a5,%lo(charge_status)(s2)
	.loc 1 136 37
	li	a0,0
	.loc 1 134 3
	bne	a5,zero,.L2
	.loc 1 136 5 is_stmt 1 discriminator 1
	.loc 1 136 37 discriminator 1
	call	led_power_flash
.LVL2:
	.loc 1 136 56 discriminator 1
	li	a1,1
	li	a0,4
	call	bl_gpio_output_set
.LVL3:
	.loc 1 137 9 discriminator 1
	.loc 1 137 11 is_stmt 0 discriminator 1
	lbu	a4,%lo(.LANCHOR0)(s6)
	addi	a5,s7,%lo(.LANCHOR1)
	.loc 1 137 23 discriminator 1
	lbu	a5,0(a5)
	.loc 1 137 11 discriminator 1
	beq	a4,zero,.L3
	.loc 1 137 23 discriminator 1
	beq	a5,zero,.L4
	.loc 1 138 13 is_stmt 1
	.loc 1 138 30 is_stmt 0
	lw	a5,%lo(.LANCHOR2)(s5)
	addi	s1,s5,%lo(.LANCHOR2)
	addi	a5,a5,-1
	.loc 1 138 15
	bgtu	a5,s0,.L5
	.loc 1 138 49 is_stmt 1 discriminator 1
	li	a0,100
	call	led_status_flash
.LVL4:
.L5:
	.loc 1 139 13
	.loc 1 139 30 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,-5
	.loc 1 139 15
	bgtu	a5,s0,.L6
	.loc 1 139 49 is_stmt 1 discriminator 1
	li	a0,80
	call	led_status_flash
.LVL5:
.L6:
	.loc 1 140 13
	.loc 1 140 30 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,-9
	.loc 1 140 15
	bgtu	a5,s0,.L7
	.loc 1 140 50 is_stmt 1 discriminator 1
	li	a0,60
	call	led_status_flash
.LVL6:
.L7:
	.loc 1 141 13
	.loc 1 141 31 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,-13
	.loc 1 141 15
	bgtu	a5,s3,.L8
	.loc 1 141 50 is_stmt 1 discriminator 1
	li	a0,40
	call	led_status_flash
.LVL7:
.L8:
	.loc 1 142 13
	.loc 1 142 31 is_stmt 0
	lw	a5,0(s1)
	.loc 1 142 50
	li	a0,20
	.loc 1 142 31
	addi	a5,a5,-17
	.loc 1 142 15
	bleu	a5,s0,.L24
.L10:
	.loc 1 163 5 is_stmt 1
	li	a0,500
	call	vTaskDelay
.LVL8:
	.loc 1 134 3 is_stmt 0
	j	.L16
.L3:
	.loc 1 144 14 is_stmt 1 discriminator 1
	.loc 1 144 29 is_stmt 0 discriminator 1
	beq	a5,zero,.L4
	.loc 1 147 13 is_stmt 1
	.loc 1 147 15 is_stmt 0
	lw	a4,%lo(.LANCHOR3)(s4)
	li	a5,1
	addi	s1,s4,%lo(.LANCHOR3)
	bne	a4,a5,.L11
	.loc 1 147 25 is_stmt 1 discriminator 1
	li	a0,100
	call	led_status_flash
.LVL9:
.L11:
	.loc 1 148 13
	.loc 1 148 15 is_stmt 0
	lw	a5,0(s1)
	bne	a5,s3,.L12
	.loc 1 148 25 is_stmt 1 discriminator 1
	li	a0,75
	call	led_status_flash
.LVL10:
.L12:
	.loc 1 149 13
	.loc 1 149 15 is_stmt 0
	lw	a5,0(s1)
	bne	a5,s0,.L13
	.loc 1 149 25 is_stmt 1 discriminator 1
	li	a0,50
	call	led_status_flash
.LVL11:
.L13:
	.loc 1 150 13
	.loc 1 150 15 is_stmt 0
	lw	a4,0(s1)
	li	a5,4
	bne	a4,a5,.L10
	.loc 1 150 25 is_stmt 1 discriminator 1
	li	a0,25
.L24:
	call	led_status_flash
.LVL12:
	j	.L10
.L4:
	.loc 1 152 11
	li	a1,1
	li	a0,0
.L25:
	.loc 1 160 57 is_stmt 0 discriminator 1
	call	bl_gpio_output_set
.LVL13:
	j	.L10
.L2:
	.loc 1 157 5 is_stmt 1
	call	led_status_flash
.LVL14:
	.loc 1 158 5
	li	a1,1
	li	a0,0
	call	bl_gpio_output_set
.LVL15:
	.loc 1 159 5
	.loc 1 159 7 is_stmt 0
	lbu	a4,%lo(charge_status)(s2)
	li	a5,1
	bne	a4,a5,.L15
	.loc 1 159 36 is_stmt 1 discriminator 1
	li	a0,500
	call	led_power_flash
.LVL16:
.L15:
	.loc 1 160 5
	.loc 1 160 7 is_stmt 0
	lbu	a5,%lo(charge_status)(s2)
	bne	a5,s3,.L10
	.loc 1 160 38 is_stmt 1 discriminator 1
	li	a0,0
	call	led_power_flash
.LVL17:
	.loc 1 160 57 discriminator 1
	li	a1,0
	li	a0,4
	j	.L25
	.cfi_endproc
.LFE73:
	.size	light_task, .-light_task
	.section	.text.sleep_task,"ax",@progbits
	.align	1
	.globl	sleep_task
	.type	sleep_task, @function
sleep_task:
.LFB78:
	.loc 1 318 27
	.cfi_startproc
.LVL18:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 322 9 is_stmt 0
	lui	s1,%hi(.LANCHOR3)
	.loc 1 322 21
	lui	s2,%hi(.LANCHOR4)
	lui	s3,%hi(.LANCHOR5)
	.loc 1 322 41
	lui	s5,%hi(charge_status)
	.loc 1 328 1
	lui	s0,%hi(.LANCHOR7)
	.loc 1 330 35
	lui	s4,%hi(.LANCHOR8)
.LVL19:
.L33:
	.loc 1 319 1 is_stmt 1
	.loc 1 320 1
	.loc 1 322 1
	lw	a5,%lo(.LANCHOR3)(s1)
	lw	a4,%lo(.LANCHOR4)(s2)
	addi	s7,s3,%lo(.LANCHOR5)
	or	a5,a5,a4
	.loc 1 322 12 is_stmt 0
	bne	a5,zero,.L37
	.loc 1 322 24 discriminator 2
	lbu	a4,%lo(charge_status)(s5)
	bne	a4,zero,.L27
	.loc 1 322 56 is_stmt 1 discriminator 3
	.loc 1 322 61 is_stmt 0 discriminator 3
	lw	a5,0(s7)
	addi	a5,a5,1
.L27:
	.loc 1 324 4
	lui	s6,%hi(.LANCHOR6)
	sw	a5,0(s7)
	.loc 1 324 1 is_stmt 1
	.loc 1 324 3 is_stmt 0
	lbu	a5,%lo(.LANCHOR6)(s6)
	.loc 1 327 6
	li	s8,120
	addi	s6,s6,%lo(.LANCHOR6)
	.loc 1 324 3
	beq	a5,zero,.L28
	.loc 1 324 14 is_stmt 1 discriminator 1
	.loc 1 324 20 is_stmt 0 discriminator 1
	sw	zero,0(s7)
.L29:
	.loc 1 330 15
	li	s7,300
	j	.L31
.L37:
	.loc 1 323 11
	li	a5,0
	j	.L27
.L30:
	.loc 1 328 1 is_stmt 1
	li	a1,1
	addi	a0,s0,%lo(.LANCHOR7)
	call	hal_hbn_init
.LVL20:
	.loc 1 329 1
	li	a0,0
	call	hal_hbn_enter
.LVL21:
.L28:
	.loc 1 327 6 is_stmt 0
	lw	a5,0(s7)
	bgt	a5,s8,.L30
	j	.L29
.L32:
	.loc 1 330 18 discriminator 1
	call	hal_timer_now_s
.LVL22:
	.loc 1 330 35 discriminator 1
	lw	a4,%lo(.LANCHOR8)(s4)
	srai	a5,a4,31
	sub	a4,a0,a4
	sgtu	a0,a4,a0
	sub	a1,a1,a5
	sub	a1,a1,a0
	.loc 1 330 15 discriminator 1
	bgt	a1,zero,.L34
	bne	a1,zero,.L36
	bleu	a4,s7,.L36
.L34:
	.loc 1 331 1 is_stmt 1
	li	a1,1
	addi	a0,s0,%lo(.LANCHOR7)
	call	hal_hbn_init
.LVL23:
	.loc 1 332 1
	li	a0,0
	call	hal_hbn_enter
.LVL24:
.L31:
	.loc 1 330 6 is_stmt 0
	lbu	a5,0(s6)
	bne	a5,zero,.L32
.L36:
	.loc 1 334 1 is_stmt 1
	li	a0,1000
	call	vTaskDelay
.LVL25:
	.loc 1 322 3 is_stmt 0
	j	.L33
	.cfi_endproc
.LFE78:
	.size	sleep_task, .-sleep_task
	.section	.text.ble_connect_cb,"ax",@progbits
	.align	1
	.type	ble_connect_cb, @function
ble_connect_cb:
.LFB69:
	.loc 1 72 55 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 73 5
	.loc 1 72 55 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 72 55
	mv	s0,a1
	.loc 1 73 7
	bne	a0,zero,.L42
	.loc 1 74 9 is_stmt 1
	.loc 1 74 14
.LBB77:
.LBB78:
	.file 2 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE78:
.LBE77:
	.loc 1 74 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L43
	.loc 1 74 107 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL27:
.L44:
	.loc 1 74 14 discriminator 4
	mv	a1,a0
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC1)
	mv	a3,s0
	addi	a0,a0,%lo(.LC1)
	addi	a2,a2,%lo(.LC0)
	call	bl_printk
.LVL28:
	.loc 1 75 9 is_stmt 1 discriminator 4
	.loc 1 75 14 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 76 9 is_stmt 1 discriminator 4
	.loc 1 87 1 is_stmt 0 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL29:
	.loc 1 76 16 discriminator 4
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 77 9 is_stmt 1 discriminator 4
	.loc 1 87 1 is_stmt 0 discriminator 4
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 77 20 discriminator 4
	lui	a5,%hi(.LANCHOR0)
	li	a4,1
	sb	a4,%lo(.LANCHOR0)(a5)
	.loc 1 78 9 is_stmt 1 discriminator 4
	.loc 1 87 1 is_stmt 0 discriminator 4
	.loc 1 78 9 discriminator 4
	li	a0,0
	.loc 1 87 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 78 9 discriminator 4
	tail	motor_g_set_vibrate
.LVL30:
.L43:
	.cfi_restore_state
	.loc 1 74 136 discriminator 2
	call	xTaskGetTickCount
.LVL31:
	j	.L44
.LVL32:
.L42:
	.loc 1 80 11 is_stmt 1
	.loc 1 80 13 is_stmt 0
	li	a5,1
	bne	a0,a5,.L41
.LVL33:
.LBB79:
.LBB80:
	.loc 1 81 9 is_stmt 1
	.loc 1 81 14
.LBB81:
.LBB82:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE82:
.LBE81:
	.loc 1 81 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L46
	.loc 1 81 110
	call	xTaskGetTickCountFromISR
.LVL34:
.L47:
	.loc 1 81 14
	mv	a1,a0
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC2)
	mv	a3,s0
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL35:
	.loc 1 82 9 is_stmt 1
	call	ble_start_advertise
.LVL36:
	.loc 1 83 9
	.loc 1 83 14 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 84 9 is_stmt 1
	.loc 1 84 16 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 85 9 is_stmt 1
	.loc 1 85 20 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	zero,%lo(.LANCHOR0)(a5)
.LVL37:
.L41:
.LBE80:
.LBE79:
	.loc 1 87 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL38:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL39:
.L46:
	.cfi_restore_state
.LBB84:
.LBB83:
	.loc 1 81 139
	call	xTaskGetTickCount
.LVL40:
	j	.L47
.LBE83:
.LBE84:
	.cfi_endproc
.LFE69:
	.size	ble_connect_cb, .-ble_connect_cb
	.section	.text.map,"ax",@progbits
	.align	1
	.globl	map
	.type	map, @function
map:
.LFB67:
	.loc 1 47 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 48 5
	.loc 1 48 15 is_stmt 0
	sub	a0,a0,a1
.LVL42:
	.loc 1 48 36
	sub	a4,a4,a3
.LVL43:
	.loc 1 48 25
	mul	a0,a0,a4
	.loc 1 48 57
	sub	a2,a2,a1
.LVL44:
	.loc 1 48 47
	div	a0,a0,a2
	.loc 1 49 1
	add	a0,a0,a3
	ret
	.cfi_endproc
.LFE67:
	.size	map, .-map
	.section	.text.sleep_start,"ax",@progbits
	.align	1
	.globl	sleep_start
	.type	sleep_start, @function
sleep_start:
.LFB68:
	.loc 1 51 19 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 53 22 is_stmt 0
	lui	a5,%hi(charge_status)
	.loc 1 53 7
	lbu	a5,%lo(charge_status)(a5)
	bne	a5,zero,.L50
.LBB91:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 30 is_stmt 0
	lui	a0,%hi(.LANCHOR7)
	lbu	a5,%lo(.LANCHOR7)(a0)
	.loc 1 55 8
	li	a4,1
	.loc 1 55 30
	addi	a5,a5,-7
	.loc 1 55 8
	andi	a5,a5,0xff
	bgtu	a5,a4,.L50
	.loc 1 58 5 is_stmt 1
.LBE91:
	.loc 1 51 19 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
.LBB92:
	.loc 1 58 5
	li	a1,1
	addi	a0,a0,%lo(.LANCHOR7)
.LBE92:
	.loc 1 51 19
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
.LBB93:
	.loc 1 58 5
	call	hal_hbn_init
.LVL45:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 15 is_stmt 0
	call	hal_timer_now_ms
.LVL46:
	mv	s0,a0
.LVL47:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 29 is_stmt 0
	srai	s2,a0,31
	.loc 1 63 10
	li	s1,199
.L52:
	.loc 1 63 11 discriminator 1
	call	hal_timer_now_ms
.LVL48:
	.loc 1 63 29 discriminator 1
	sub	a5,a0,s0
	sgtu	a0,a5,a0
	sub	a1,a1,s2
	sub	a1,a1,a0
	.loc 1 63 10 discriminator 1
	bgt	a1,zero,.L60
	bne	a1,zero,.L53
	bleu	a5,s1,.L53
.L60:
.LBE93:
.LBB94:
.LBB95:
	.loc 1 64 5 is_stmt 1
	li	a1,1
	li	a0,4
	call	bl_gpio_output_set
.LVL49:
	.loc 1 64 30
	li	a0,0
	call	motor_g_set_vibrate
.LVL50:
	.loc 1 65 5
	.loc 1 65 11 is_stmt 0
	call	hal_timer_now_ms
.LVL51:
	mv	s0,a0
.LVL52:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 29 is_stmt 0
	srai	s2,a0,31
	.loc 1 66 10
	li	s1,1999
	.loc 1 66 46
	lui	s3,%hi(.LANCHOR3)
	.loc 1 66 56
	lui	s4,%hi(.LANCHOR4)
.L55:
	.loc 1 66 11
	call	hal_timer_now_ms
.LVL53:
	.loc 1 66 29
	sub	a5,a0,s0
	sgtu	a0,a5,a0
	sub	a1,a1,s2
	sub	a1,a1,a0
	.loc 1 66 10
	bgt	a1,zero,.L61
	bne	a1,zero,.L56
	bleu	a5,s1,.L56
.L61:
	.loc 1 66 106 is_stmt 1
	.loc 1 67 5
	.loc 1 67 10
.LBB96:
.LBB97:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE97:
.LBE96:
	.loc 1 67 10
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L58
	.loc 1 67 106
	call	xTaskGetTickCountFromISR
.LVL54:
.L59:
	.loc 1 67 10
	mv	a1,a0
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	li	a4,67
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	call	bl_printk
.LVL55:
	.loc 1 68 5 is_stmt 1
.LBE95:
.LBE94:
	.loc 1 70 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL56:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LBB101:
.LBB98:
	.loc 1 68 5
	li	a0,0
.LBE98:
.LBE101:
	.loc 1 70 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LBB102:
.LBB99:
	.loc 1 68 5
	tail	hal_hbn_enter
.LVL57:
.L53:
	.cfi_restore_state
.LBE99:
.LBE102:
.LBB103:
	.loc 1 63 40 is_stmt 1 discriminator 2
	li	a1,0
	li	a0,4
	call	bl_gpio_output_set
.LVL58:
	.loc 1 63 65 discriminator 2
	li	a0,20
	call	motor_g_set_vibrate
.LVL59:
	j	.L52
.LVL60:
.L56:
.LBE103:
.LBB104:
.LBB100:
	.loc 1 66 41
	.loc 1 66 59 is_stmt 0
	li	a0,0
	.loc 1 66 46
	sw	zero,%lo(.LANCHOR3)(s3)
	.loc 1 66 49 is_stmt 1
	.loc 1 66 56 is_stmt 0
	sw	zero,%lo(.LANCHOR4)(s4)
	.loc 1 66 59 is_stmt 1
	call	led_status_flash
.LVL61:
	.loc 1 66 79
	li	a1,1
	li	a0,0
	call	bl_gpio_output_set
.LVL62:
	j	.L55
.L58:
	.loc 1 67 135 is_stmt 0
	call	xTaskGetTickCount
.LVL63:
	j	.L59
.LVL64:
.L50:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	ret
.LBE100:
.LBE104:
	.cfi_endproc
.LFE68:
	.size	sleep_start, .-sleep_start
	.section	.text.key_event_cb,"ax",@progbits
	.align	1
	.globl	key_event_cb
	.type	key_event_cb, @function
key_event_cb:
.LFB70:
	.loc 1 89 55 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 91 5
	.loc 1 89 55 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 91 7
	li	a5,1
	bne	a1,a5,.L66
	.loc 1 92 5 is_stmt 1
	.loc 1 92 10 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lw	a4,0(a5)
	.loc 1 93 7
	li	a3,5
	.loc 1 92 10
	addi	a4,a4,1
	.loc 1 93 5 is_stmt 1
	.loc 1 93 7 is_stmt 0
	beq	a4,a3,.L67
	.loc 1 92 10
	sw	a4,0(a5)
.L68:
	.loc 1 94 6 is_stmt 1
	.loc 1 94 11
.LBB113:
.LBB114:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE114:
.LBE113:
	.loc 1 94 11
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L69
	.loc 1 94 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL66:
.L70:
	.loc 1 103 1 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 94 11 discriminator 4
	lui	a2,%hi(.LC0)
	mv	a1,a0
	lui	a0,%hi(.LC5)
	.loc 1 103 1 discriminator 4
	.loc 1 94 11 discriminator 4
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC5)
	.loc 1 103 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 94 11 discriminator 4
	tail	bl_printk
.LVL67:
.L67:
	.cfi_restore_state
	.loc 1 93 18 is_stmt 1 discriminator 1
	.loc 1 93 23 is_stmt 0 discriminator 1
	sw	zero,0(a5)
	j	.L68
.L69:
	.loc 1 94 140 discriminator 2
	call	xTaskGetTickCount
.LVL68:
	j	.L70
.LVL69:
.L66:
	.loc 1 96 10 is_stmt 1
	.loc 1 96 12 is_stmt 0
	li	a5,2
	bne	a1,a5,.L65
.LVL70:
.LBB115:
.LBB116:
	.loc 1 97 5 is_stmt 1
	.loc 1 97 10
.LBB117:
.LBB118:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE118:
.LBE117:
	.loc 1 97 10
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L72
	.loc 1 97 109
	call	xTaskGetTickCountFromISR
.LVL71:
.L73:
	.loc 1 97 10
	mv	a1,a0
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC6)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL72:
	.loc 1 99 5 is_stmt 1
.LBE116:
.LBE115:
	.loc 1 103 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB120:
.LBB119:
	.loc 1 99 5
	tail	sleep_start
.LVL73:
.L72:
	.cfi_restore_state
	.loc 1 97 138
	call	xTaskGetTickCount
.LVL74:
	j	.L73
.LVL75:
.L65:
.LBE119:
.LBE120:
	.loc 1 103 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE70:
	.size	key_event_cb, .-key_event_cb
	.section	.text.mada_mode,"ax",@progbits
	.align	1
	.globl	mada_mode
	.type	mada_mode, @function
mada_mode:
.LFB71:
	.loc 1 105 21 is_stmt 1
	.cfi_startproc
	.loc 1 106 5
	.loc 1 106 7 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	lbu	a4,%lo(.LANCHOR0)(a4)
	.loc 1 105 21
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	lui	a5,%hi(charge_status)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	lbu	a5,%lo(charge_status)(a5)
	.loc 1 106 7
	bne	a4,zero,.L76
	.loc 1 106 20 discriminator 1
	bne	a5,zero,.L77
.LBB123:
.LBB124:
	.loc 1 107 9 is_stmt 1
	.loc 1 107 17 is_stmt 0
	lui	s0,%hi(.LANCHOR3)
	.loc 1 107 11
	lw	a5,%lo(.LANCHOR3)(s0)
	addi	s0,s0,%lo(.LANCHOR3)
	bne	a5,zero,.L78
	.loc 1 107 22 is_stmt 1
	li	a0,0
	call	motor_g_set_vibrate
.LVL76:
.L78:
	.loc 1 108 9
	.loc 1 108 11 is_stmt 0
	lw	a4,0(s0)
	li	a5,1
	bne	a4,a5,.L79
	.loc 1 108 22 is_stmt 1
	li	a0,8
	call	motor_g_set_vibrate
.LVL77:
.L79:
	.loc 1 109 9
	.loc 1 109 11 is_stmt 0
	lw	a4,0(s0)
	li	a5,2
	bne	a4,a5,.L80
	.loc 1 109 22 is_stmt 1
	li	a0,12
	call	motor_g_set_vibrate
.LVL78:
.L80:
	.loc 1 110 9
	.loc 1 110 11 is_stmt 0
	lw	a4,0(s0)
	li	a5,3
	bne	a4,a5,.L81
	.loc 1 110 22 is_stmt 1
	li	a0,16
	call	motor_g_set_vibrate
.LVL79:
.L81:
	.loc 1 111 9
	.loc 1 111 11 is_stmt 0
	lw	a4,0(s0)
	li	a5,4
	.loc 1 111 22
	li	a0,20
	.loc 1 111 11
	beq	a4,a5,.L84
.L75:
.LBE124:
.LBE123:
	.loc 1 118 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L76:
	.cfi_restore_state
	.loc 1 113 10 is_stmt 1 discriminator 1
	.loc 1 113 24 is_stmt 0 discriminator 1
	bne	a5,zero,.L77
	.loc 1 114 9 is_stmt 1
	lui	a5,%hi(.LANCHOR4)
	lbu	a0,%lo(.LANCHOR4)(a5)
.L84:
	.loc 1 118 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 114 9
	tail	motor_g_set_vibrate
.LVL80:
.L77:
	.cfi_restore_state
	.loc 1 116 11 is_stmt 1
	li	a0,0
	call	motor_g_set_vibrate
.LVL81:
	.loc 1 116 34
	.loc 1 116 39 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 116 42 is_stmt 1
	.loc 1 116 49 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 118 1
	j	.L75
	.cfi_endproc
.LFE71:
	.size	mada_mode, .-mada_mode
	.section	.text.ble_light_task,"ax",@progbits
	.align	1
	.globl	ble_light_task
	.type	ble_light_task, @function
ble_light_task:
.LFB72:
	.loc 1 120 22 is_stmt 1
	.cfi_startproc
	.loc 1 121 4
	.loc 1 121 6 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lbu	a5,%lo(.LANCHOR1)(a5)
	beq	a5,zero,.L85
	.loc 1 121 34 discriminator 1
	lui	a5,%hi(charge_status)
	.loc 1 121 17 discriminator 1
	lbu	a5,%lo(charge_status)(a5)
	bne	a5,zero,.L85
	.loc 1 122 4 is_stmt 1
	.loc 1 122 6 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	bne	a5,zero,.L87
	.loc 1 123 8 is_stmt 1
	li	a0,800
	tail	led_status_flash
.LVL82:
.L87:
.LBB127:
.LBB128:
	.loc 1 125 8
.LBE128:
.LBE127:
	.loc 1 120 22 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LBB134:
.LBB129:
	.loc 1 125 8
	li	a0,0
.LBE129:
.LBE134:
	.loc 1 120 22
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB135:
.LBB130:
	.loc 1 125 8
	call	led_status_flash
.LVL83:
	.loc 1 126 8 is_stmt 1
.LBE130:
.LBE135:
	.loc 1 129 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
.LBB136:
.LBB131:
	.loc 1 126 8
	li	a1,0
.LBE131:
.LBE136:
	.loc 1 129 1
.LBB137:
.LBB132:
	.loc 1 126 8
	li	a0,0
.LBE132:
.LBE137:
	.loc 1 129 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB138:
.LBB133:
	.loc 1 126 8
	tail	bl_gpio_output_set
.LVL84:
.L85:
	ret
.LBE133:
.LBE138:
	.cfi_endproc
.LFE72:
	.size	ble_light_task, .-ble_light_task
	.section	.text.adc_init,"ax",@progbits
	.align	1
	.globl	adc_init
	.type	adc_init, @function
adc_init:
.LFB74:
	.loc 1 167 16 is_stmt 1
	.cfi_startproc
	.loc 1 169 5
	.loc 1 169 10
.LBB139:
.LBB140:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE140:
.LBE139:
	.loc 1 169 10
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 167 16
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 169 10
	beq	a5,zero,.L94
	.loc 1 169 117 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL85:
.L95:
	.loc 1 169 10 discriminator 4
	mv	a1,a0
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC7)
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC7)
	li	a5,12
	li	a4,169
	call	bl_printk
.LVL86:
	.loc 1 172 5 is_stmt 1 discriminator 4
	.loc 1 173 1 is_stmt 0 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 172 5 discriminator 4
	li	a3,12
	.loc 1 173 1 discriminator 4
	.loc 1 172 5 discriminator 4
	li	a2,512
	li	a1,100
	li	a0,0
	.loc 1 173 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 172 5 discriminator 4
	tail	hal_adc_init
.LVL87:
.L94:
	.cfi_restore_state
	.loc 1 169 146 discriminator 2
	call	xTaskGetTickCount
.LVL88:
	j	.L95
	.cfi_endproc
.LFE74:
	.size	adc_init, .-adc_init
	.section	.text.get_battery,"ax",@progbits
	.align	1
	.globl	get_battery
	.type	get_battery, @function
get_battery:
.LFB75:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
	.loc 1 177 5
	.loc 1 178 5
	.loc 1 176 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 178 12
	li	a1,1
	li	a0,12
	.loc 1 176 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 178 12
	call	hal_adc_get_data
.LVL89:
	.loc 1 178 10
	lui	a5,%hi(data)
	sw	a0,%lo(data)(a5)
	.loc 1 179 5 is_stmt 1
.LVL90:
	.loc 1 180 5
.LBB141:
.LBB142:
	.loc 1 48 5
.LBE142:
.LBE141:
	.loc 1 181 5
	.loc 1 181 7 is_stmt 0
	li	a4,1099
	mv	s1,a5
	.loc 1 181 26
	li	s0,1
	.loc 1 181 7
	ble	a0,a4,.L98
	.loc 1 182 5 is_stmt 1
	.loc 1 182 7 is_stmt 0
	li	a5,1300
	.loc 1 182 26
	li	s0,100
	.loc 1 182 7
	bgt	a0,a5,.L98
	.loc 1 179 12
	addi	a0,a0,-1100
.LVL91:
.LBB144:
.LBB143:
	.loc 1 48 25
	mul	s0,a0,s0
	.loc 1 48 47
	li	a0,200
.LVL92:
	div	s0,s0,a0
.L98:
.LVL93:
.LBE143:
.LBE144:
	.loc 1 183 5 is_stmt 1
	.loc 1 183 10
.LBB145:
.LBB146:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE146:
.LBE145:
	.loc 1 183 10
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L99
	.loc 1 183 129 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL94:
.L100:
	.loc 1 183 10 discriminator 4
	lw	a6,%lo(data)(s1)
	mv	a1,a0
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC8)
	mv	a7,s0
	addi	a0,a0,%lo(.LC8)
	li	a5,12
	li	a4,183
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	call	bl_printk
.LVL95:
	.loc 1 184 5 is_stmt 1 discriminator 4
	.loc 1 185 1 is_stmt 0 discriminator 4
	mv	a0,s0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL96:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL97:
.L99:
	.cfi_restore_state
	.loc 1 183 158 discriminator 2
	call	xTaskGetTickCount
.LVL98:
	j	.L100
	.cfi_endproc
.LFE75:
	.size	get_battery, .-get_battery
	.section	.text.ble_reve_cb,"ax",@progbits
	.align	1
	.type	ble_reve_cb, @function
ble_reve_cb:
.LFB77:
	.loc 1 225 74 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 228 5
	.loc 1 225 74 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s2,128(sp)
	sw	s4,120(sp)
	sw	s6,112(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	mv	s2,a0
	mv	s4,a1
	mv	s6,a2
	.loc 1 228 10
	li	a1,0
.LVL100:
	li	a2,26
.LVL101:
	addi	a0,sp,68
.LVL102:
	.loc 1 225 74
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s3,124(sp)
	sw	s5,116(sp)
	sw	s7,108(sp)
	sw	s8,104(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 228 10
	sw	zero,64(sp)
	call	memset
.LVL103:
	.loc 1 229 5 is_stmt 1
	.loc 1 230 10 is_stmt 0
	li	a5,20480
	addi	a5,a5,-1201
	.loc 1 232 34
	addi	a0,sp,24
	.loc 1 230 10
	sw	a5,24(sp)
	.loc 1 229 10
	sw	zero,8(sp)
	sw	zero,12(sp)
	sw	zero,16(sp)
	sh	zero,20(sp)
	sb	zero,22(sp)
	.loc 1 230 5 is_stmt 1
	.loc 1 230 10 is_stmt 0
	sw	zero,28(sp)
	sw	zero,32(sp)
	sw	zero,36(sp)
	sw	zero,40(sp)
	.loc 1 232 5 is_stmt 1
	.loc 1 232 34 is_stmt 0
	call	strlen
.LVL104:
	.loc 1 232 5
	slli	a2,a0,16
	addi	a1,sp,24
	mv	a0,s2
	srli	a2,a2,16
	call	do_ble_notify
.LVL105:
	.loc 1 233 5 is_stmt 1
	.loc 1 233 16 is_stmt 0
	li	a1,59
	mv	a0,s4
	call	strchr
.LVL106:
	.loc 1 234 5 is_stmt 1
	.loc 1 234 7 is_stmt 0
	beq	a0,zero,.L104
	.loc 1 237 9 is_stmt 1
	.loc 1 237 13 is_stmt 0
	sb	zero,0(a0)
	.loc 1 239 5 is_stmt 1
	.loc 1 239 10
.LBB147:
.LBB148:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	s1,%hi(TrapNetCounter)
.LBE148:
.LBE147:
	.loc 1 239 10
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L107
	.loc 1 239 104 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL107:
.L108:
	.loc 1 239 10 discriminator 4
	mv	a1,a0
	lui	s0,%hi(.LC0)
	lui	a0,%hi(.LC9)
	mv	a3,s4
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL108:
	.loc 1 240 5 is_stmt 1 discriminator 4
	.loc 1 240 15 is_stmt 0 discriminator 4
	li	a1,58
	mv	a0,s4
	call	strchr
.LVL109:
	mv	s7,a0
.LVL110:
	.loc 1 242 5 is_stmt 1 discriminator 4
	addi	s3,sp,8
	.loc 1 242 7 is_stmt 0 discriminator 4
	beq	a0,zero,.L109
	.loc 1 243 9 is_stmt 1
	.loc 1 243 28 is_stmt 0
	sub	s5,a0,s4
	.loc 1 243 9
	mv	a2,s5
	mv	a1,s4
	addi	a0,sp,64
.LVL111:
	call	strncpy
.LVL112:
	.loc 1 244 9 is_stmt 1
	.loc 1 244 31 is_stmt 0
	sub	a2,s6,s5
	.loc 1 244 9
	addi	a2,a2,-2
	addi	a1,s7,1
	mv	a0,s3
	call	strncpy
.LVL113:
.L110:
	.loc 1 249 5 is_stmt 1
	.loc 1 249 10
.LBB149:
.LBB150:
	.loc 2 151 5
.LBE150:
.LBE149:
	.loc 1 249 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L111
	.loc 1 249 105 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL114:
.L112:
	.loc 1 249 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	mv	a4,s3
	addi	a3,sp,64
	addi	a2,s0,%lo(.LC0)
	call	bl_printk
.LVL115:
	.loc 1 251 5 is_stmt 1 discriminator 4
	.loc 1 251 9 is_stmt 0 discriminator 4
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
	addi	a0,sp,64
	call	strcmp
.LVL116:
	.loc 1 251 7 discriminator 4
	bne	a0,zero,.L113
	.loc 1 252 9 is_stmt 1
	.loc 1 252 14
.LBB151:
.LBB152:
	.loc 2 151 5
.LBE152:
.LBE151:
	.loc 1 252 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L114
	.loc 1 252 102 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL117:
.L115:
	.loc 1 252 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC12)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL118:
	.loc 1 253 9 is_stmt 1 discriminator 4
.L143:
.LBB153:
	.loc 1 270 9
	.loc 1 270 38 is_stmt 0
	addi	a0,sp,24
	call	strlen
.LVL119:
	.loc 1 270 9
	slli	a2,a0,16
	srli	a2,a2,16
	addi	a1,sp,24
.L144:
	mv	a0,s2
	call	do_ble_notify
.LVL120:
.LBE153:
	j	.L116
.LVL121:
.L107:
	.loc 1 239 133 discriminator 2
	call	xTaskGetTickCount
.LVL122:
	j	.L108
.LVL123:
.L109:
	.loc 1 246 9 is_stmt 1
	mv	a1,s4
	addi	a0,sp,64
.LVL124:
	call	strcpy
.LVL125:
	.loc 1 247 9
	.loc 1 247 20 is_stmt 0
	addi	a5,sp,96
	add	a5,a5,s6
	sb	zero,-33(a5)
	j	.L110
.L111:
	.loc 1 249 134 discriminator 2
	call	xTaskGetTickCount
.LVL126:
	j	.L112
.L114:
	.loc 1 252 131 discriminator 2
	call	xTaskGetTickCount
.LVL127:
	j	.L115
.L113:
	.loc 1 254 11 is_stmt 1
	.loc 1 254 15 is_stmt 0
	lui	a1,%hi(.LC13)
	addi	a1,a1,%lo(.LC13)
	addi	a0,sp,64
	call	strcmp
.LVL128:
	.loc 1 254 13
	bne	a0,zero,.L117
	.loc 1 255 9 is_stmt 1
	.loc 1 255 14
.LBB155:
.LBB156:
	.loc 2 151 5
.LBE156:
.LBE155:
	.loc 1 255 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L118
	.loc 1 255 103 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL129:
.L119:
	.loc 1 255 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC14)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL130:
	.loc 1 256 9 is_stmt 1 discriminator 4
	.loc 1 256 19 is_stmt 0 discriminator 4
	mv	a0,s3
	call	atoi
.LVL131:
	.loc 1 256 17 discriminator 4
	lui	a5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(a5)
	.loc 1 257 9 is_stmt 1 discriminator 4
	.loc 1 257 20 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
.LVL132:
.L116:
	.loc 1 313 5 is_stmt 1 discriminator 3
	li	a0,100
	call	vTaskDelay
.LVL133:
	.loc 1 314 5 discriminator 3
	.loc 1 314 34 is_stmt 0 discriminator 3
	addi	a0,sp,24
	call	strlen
.LVL134:
	.loc 1 314 5 discriminator 3
	slli	a2,a0,16
	srli	a2,a2,16
	addi	a1,sp,24
	mv	a0,s2
	call	do_ble_notify
.LVL135:
.L104:
	.loc 1 315 1
	lw	ra,140(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
.LVL136:
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
	lw	s5,116(sp)
	.cfi_restore 21
	lw	s6,112(sp)
	.cfi_restore 22
	lw	s7,108(sp)
	.cfi_restore 23
	lw	s8,104(sp)
	.cfi_restore 24
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.LVL137:
.L118:
	.cfi_restore_state
	.loc 1 255 132 discriminator 2
	call	xTaskGetTickCount
.LVL138:
	j	.L119
.L117:
	.loc 1 259 11 is_stmt 1
	.loc 1 259 15 is_stmt 0
	lui	a1,%hi(.LC15)
	addi	a1,a1,%lo(.LC15)
	addi	a0,sp,64
	call	strcmp
.LVL139:
	.loc 1 259 13
	bne	a0,zero,.L120
.LBB157:
	.loc 1 261 9 is_stmt 1
	.loc 1 261 25 is_stmt 0
	call	get_battery
.LVL140:
	.loc 1 262 9 is_stmt 1
	.loc 1 262 11 is_stmt 0
	li	a5,100
	bne	a0,a5,.L121
	.loc 1 262 27 is_stmt 1 discriminator 1
	.loc 1 262 42 discriminator 1
	.loc 1 262 57 discriminator 1
	.loc 1 262 37 is_stmt 0 discriminator 1
	li	a5,12288
	addi	a5,a5,49
	sh	a5,24(sp)
	.loc 1 262 67 discriminator 1
	li	a5,48
	sb	a5,26(sp)
.LVL141:
.L122:
	.loc 1 269 9 is_stmt 1
	.loc 1 269 19 is_stmt 0
	li	a5,59
	sb	a5,27(sp)
	j	.L143
.LVL142:
.L121:
.LBB154:
	.loc 1 264 9 is_stmt 1
	.loc 1 264 36
	.loc 1 265 9
	.loc 1 265 19 is_stmt 0
	li	a5,48
	.loc 1 264 31
	li	a4,10
	.loc 1 265 19
	sb	a5,24(sp)
	.loc 1 266 9 is_stmt 1
	.loc 1 264 31 is_stmt 0
	div	a5,a0,a4
	.loc 1 264 57
	rem	a0,a0,a4
.LVL143:
	.loc 1 266 26
	addi	a5,a5,48
	.loc 1 266 19
	sb	a5,25(sp)
	.loc 1 267 9 is_stmt 1
	.loc 1 267 25 is_stmt 0
	addi	a0,a0,48
	.loc 1 267 19
	sb	a0,26(sp)
	j	.L122
.L120:
.LBE154:
.LBE157:
	.loc 1 272 11 is_stmt 1
	.loc 1 272 15 is_stmt 0
	lui	a1,%hi(.LC16)
	addi	a1,a1,%lo(.LC16)
	addi	a0,sp,64
	call	strcmp
.LVL144:
	.loc 1 272 13
	bne	a0,zero,.L123
	.loc 1 273 9 is_stmt 1
	.loc 1 273 11 is_stmt 0
	lbu	s0,8(sp)
	li	a5,111
	bne	s0,a5,.L116
	.loc 1 273 24 discriminator 1
	lbu	a4,9(sp)
	li	a5,110
	bne	a4,a5,.L125
	.loc 1 274 9 is_stmt 1
	.loc 1 274 19 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	li	a4,1
	sb	a4,%lo(.LANCHOR1)(a5)
	.loc 1 275 9 is_stmt 1
	.loc 1 275 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	beq	a5,zero,.L116
	.loc 1 275 25 is_stmt 1 discriminator 1
	li	a1,0
	call	bl_gpio_output_set
.LVL145:
	.loc 1 277 9 discriminator 1
	.loc 1 277 11 is_stmt 0 discriminator 1
	lbu	a5,8(sp)
	bne	a5,s0,.L116
.L125:
	.loc 1 277 9 is_stmt 1
	.loc 1 277 24 is_stmt 0
	lbu	a5,9(sp)
	li	a4,102
	bne	a5,a4,.L116
	.loc 1 277 38 discriminator 2
	lbu	a4,10(sp)
	bne	a4,a5,.L116
	.loc 1 278 9 is_stmt 1
	.loc 1 278 19 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sb	zero,%lo(.LANCHOR1)(a5)
	j	.L116
.L123:
	.loc 1 280 11 is_stmt 1
	.loc 1 280 15 is_stmt 0
	lui	a1,%hi(.LC17)
	addi	a1,a1,%lo(.LC17)
	addi	a0,sp,64
	call	strcmp
.LVL146:
	.loc 1 280 13
	bne	a0,zero,.L127
	.loc 1 281 9 is_stmt 1
	call	sleep_start
.LVL147:
	j	.L116
.L127:
	.loc 1 283 10
	.loc 1 283 14 is_stmt 0
	lui	a1,%hi(.LC18)
	addi	a1,a1,%lo(.LC18)
	addi	a0,sp,64
	call	strcmp
.LVL148:
	.loc 1 283 12
	bne	a0,zero,.L128
.LBB158:
	.loc 1 284 5 is_stmt 1
	.loc 1 284 10
.LBB159:
.LBB160:
	.loc 2 151 5
.LBE160:
.LBE159:
	.loc 1 284 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L129
	.loc 1 284 91 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL149:
.L130:
	.loc 1 284 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC19)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
.LVL150:
	.loc 1 285 5 is_stmt 1 discriminator 4
	.loc 1 285 13 is_stmt 0 discriminator 4
	li	a4,1
	lui	a5,%hi(.LANCHOR6)
	sb	a4,%lo(.LANCHOR6)(a5)
	.loc 1 286 5 is_stmt 1 discriminator 4
	call	flash_storage_init
.LVL151:
	.loc 1 287 5 discriminator 4
	lui	a0,%hi(wifi_event_handler)
	addi	a0,a0,%lo(wifi_event_handler)
	call	wifi_init
.LVL152:
	.loc 1 288 5 discriminator 4
	li	a0,500
	call	vTaskDelay
.LVL153:
	.loc 1 289 5 discriminator 4
	call	wifi_setup_sta
.LVL154:
	.loc 1 290 5 discriminator 4
	.loc 1 290 15 is_stmt 0 discriminator 4
	call	hal_timer_now_s
.LVL155:
	.loc 1 290 13 discriminator 4
	lui	a5,%hi(.LANCHOR8)
	.loc 1 291 10 discriminator 4
	lui	a1,%hi(.LANCHOR9)
	.loc 1 290 13 discriminator 4
	sw	a0,%lo(.LANCHOR8)(a5)
	.loc 1 291 5 is_stmt 1 discriminator 4
	.loc 1 291 10 is_stmt 0 discriminator 4
	li	a2,10
	addi	a1,a1,%lo(.LANCHOR9)
	addi	a0,sp,44
	call	memcpy
.LVL156:
	.loc 1 292 34 discriminator 4
	addi	a0,sp,44
	.loc 1 291 10 discriminator 4
	sh	zero,54(sp)
	sh	zero,56(sp)
	sh	zero,58(sp)
	sh	zero,60(sp)
	sh	zero,62(sp)
	.loc 1 292 5 is_stmt 1 discriminator 4
	.loc 1 292 34 is_stmt 0 discriminator 4
	call	strlen
.LVL157:
	.loc 1 292 5 discriminator 4
	slli	a2,a0,16
	srli	a2,a2,16
	addi	a1,sp,44
	j	.L144
.L129:
	.loc 1 284 120 discriminator 2
	call	xTaskGetTickCount
.LVL158:
	j	.L130
.L128:
.LBE158:
	.loc 1 294 11 is_stmt 1
	.loc 1 294 15 is_stmt 0
	lui	a1,%hi(.LC21)
	addi	a1,a1,%lo(.LC21)
	addi	a0,sp,64
	call	strcmp
.LVL159:
	.loc 1 294 13
	bne	a0,zero,.L116
.LBB161:
	.loc 1 295 5 is_stmt 1
	.loc 1 295 10
.LBB162:
.LBB163:
	.loc 2 151 5
.LBE163:
.LBE162:
	.loc 1 295 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L131
	.loc 1 295 97 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL160:
.L132:
	.loc 1 295 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC22)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC22)
	call	bl_printk
.LVL161:
	.loc 1 296 5 is_stmt 1 discriminator 4
	.loc 1 296 30 is_stmt 0 discriminator 4
	call	flash_get_user_ssid_config
.LVL162:
	mv	s4,a0
.LVL163:
	.loc 1 297 5 is_stmt 1 discriminator 4
	li	a2,64
	li	a1,0
	call	memset
.LVL164:
	.loc 1 298 5 discriminator 4
	.loc 1 298 21 is_stmt 0 discriminator 4
	addi	s5,s4,64
	.loc 1 298 5 discriminator 4
	li	a2,64
	li	a1,0
	mv	a0,s5
	call	memset
.LVL165:
	.loc 1 299 5 is_stmt 1 discriminator 4
	call	flash_ssid_config_write
.LVL166:
	.loc 1 300 5 discriminator 4
	.loc 1 300 15 is_stmt 0 discriminator 4
	li	a1,44
	mv	a0,s3
	call	strchr
.LVL167:
	mv	s7,a0
.LVL168:
	.loc 1 301 7 is_stmt 1 discriminator 4
	.loc 1 301 9 is_stmt 0 discriminator 4
	beq	a0,zero,.L116
.LBB164:
	.loc 1 302 9 is_stmt 1
	.loc 1 302 41 is_stmt 0
	sub	s8,a0,s3
	.loc 1 302 9
	mv	a2,s8
	mv	a1,s3
	mv	a0,s4
.LVL169:
	call	strncpy
.LVL170:
	.loc 1 303 9 is_stmt 1
	.loc 1 303 46 is_stmt 0
	sub	a2,s6,s8
	.loc 1 303 9
	addi	a2,a2,-2
	addi	a1,s7,1
	mv	a0,s5
	call	strncpy
.LVL171:
	.loc 1 304 9 is_stmt 1
	call	flash_ssid_config_write
.LVL172:
	.loc 1 305 9
	.loc 1 305 14 is_stmt 0
	lui	a1,%hi(.LANCHOR9+20)
	li	a2,9
	addi	a1,a1,%lo(.LANCHOR9+20)
	addi	a0,sp,44
	call	memcpy
.LVL173:
	li	a2,11
	li	a1,0
	addi	a0,sp,53
	call	memset
.LVL174:
	.loc 1 306 9 is_stmt 1
	.loc 1 306 34 is_stmt 0
	addi	a0,sp,44
	call	strlen
.LVL175:
	.loc 1 306 9
	slli	a2,a0,16
	srli	a2,a2,16
	addi	a1,sp,44
	mv	a0,s2
	call	do_ble_notify
.LVL176:
	.loc 1 307 9 is_stmt 1
	.loc 1 307 46 is_stmt 0
	mv	a0,s4
	call	strlen
.LVL177:
	.loc 1 307 9
	slli	a2,a0,16
	srli	a2,a2,16
	mv	a1,s4
	mv	a0,s2
	call	do_ble_notify
.LVL178:
	.loc 1 308 9 is_stmt 1
	.loc 1 308 50 is_stmt 0
	mv	a0,s5
	call	strlen
.LVL179:
	.loc 1 308 9
	slli	a2,a0,16
	srli	a2,a2,16
	mv	a1,s5
	mv	a0,s2
	call	do_ble_notify
.LVL180:
	.loc 1 310 5 is_stmt 1
	.loc 1 310 10
.LBB165:
.LBB166:
	.loc 2 151 5
.LBE166:
.LBE165:
	.loc 1 310 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L133
	.loc 1 310 114 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL181:
.L134:
	.loc 1 310 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC24)
	mv	a4,s5
	mv	a3,s4
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC24)
	call	bl_printk
.LVL182:
	j	.L116
.LVL183:
.L131:
.LBE164:
	.loc 1 295 126 discriminator 2
	call	xTaskGetTickCount
.LVL184:
	j	.L132
.LVL185:
.L133:
.LBB167:
	.loc 1 310 143 discriminator 2
	call	xTaskGetTickCount
.LVL186:
	j	.L134
.LBE167:
.LBE161:
	.cfi_endproc
.LFE77:
	.size	ble_reve_cb, .-ble_reve_cb
	.section	.text.charge_detect,"ax",@progbits
	.align	1
	.globl	charge_detect
	.type	charge_detect, @function
charge_detect:
.LFB76:
	.loc 1 188 5 is_stmt 1
	.cfi_startproc
	.loc 1 191 2
	.loc 1 188 5 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 191 5
	li	a0,1
	.loc 1 188 5
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	lui	s0,%hi(.LANCHOR10)
	.loc 1 191 5
	call	bl_gpio_input_get_value
.LVL187:
	lui	s1,%hi(.LANCHOR11)
	lui	a5,%hi(charge_status)
	addi	s0,s0,%lo(.LANCHOR10)
	addi	s1,s1,%lo(.LANCHOR11)
	.loc 1 191 4
	beq	a0,zero,.L146
	.loc 1 193 3 is_stmt 1
	.loc 1 193 10 is_stmt 0
	lui	a4,%hi(data)
	.loc 1 193 5
	lw	a3,%lo(data)(a4)
	li	a4,1300
	ble	a3,a4,.L147
	.loc 1 195 7 is_stmt 1
	.loc 1 195 21 is_stmt 0
	li	a4,2
	sb	a4,%lo(charge_status)(a5)
	.loc 1 196 13 is_stmt 1
	.loc 1 197 13 is_stmt 0
	li	a1,0
	.loc 1 196 24
	li	a5,1
	.loc 1 197 13
	li	a0,20
	.loc 1 196 24
	sb	a5,0(s0)
	.loc 1 197 13 is_stmt 1
	call	bl_gpio_output_set
.LVL188:
	.loc 1 198 13
	.loc 1 198 18
.LBB176:
.LBB177:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE177:
.LBE176:
	.loc 1 198 18
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L148
	.loc 1 198 118 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL189:
.L149:
	.loc 1 198 18 discriminator 4
	mv	a1,a0
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC25)
	li	a4,198
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC25)
	call	bl_printk
.LVL190:
	.loc 1 215 5 is_stmt 1 discriminator 4
	.loc 1 215 7 is_stmt 0 discriminator 4
	lbu	a5,0(s1)
	beq	a5,zero,.L145
.L150:
.LBB178:
.LBB179:
	.loc 1 215 22
	lbu	a5,0(s0)
	beq	a5,zero,.L145
	.loc 1 216 9 is_stmt 1
	.loc 1 216 14
.LBB180:
.LBB181:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE181:
.LBE180:
	.loc 1 216 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L153
	.loc 1 216 129
	call	xTaskGetTickCountFromISR
.LVL191:
.L154:
	.loc 1 216 14
	mv	a1,a0
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC26)
	li	a4,216
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC26)
	call	bl_printk
.LVL192:
	.loc 1 217 9 is_stmt 1
	lui	a0,%hi(.LANCHOR7)
	li	a1,1
	addi	a0,a0,%lo(.LANCHOR7)
	call	hal_hbn_init
.LVL193:
	.loc 1 218 9
.LBE179:
.LBE178:
	.loc 1 220 5 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LBB185:
.LBB182:
	.loc 1 218 9
	li	a0,0
.LBE182:
.LBE185:
	.loc 1 220 5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB186:
.LBB183:
	.loc 1 218 9
	tail	hal_hbn_enter
.LVL194:
.L148:
	.cfi_restore_state
.LBE183:
.LBE186:
	.loc 1 198 147 discriminator 2
	call	xTaskGetTickCount
.LVL195:
	j	.L149
.L147:
	.loc 1 202 7 is_stmt 1
	.loc 1 202 21 is_stmt 0
	li	a4,1
	sb	a4,%lo(charge_status)(a5)
	.loc 1 203 13 is_stmt 1
	.loc 1 203 28 is_stmt 0
	sb	zero,0(s1)
	.loc 1 204 13 is_stmt 1
	.loc 1 204 24 is_stmt 0
	sb	a4,0(s0)
	.loc 1 215 5 is_stmt 1
.L145:
	.loc 1 220 5 is_stmt 0
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
.L146:
	.cfi_restore_state
	.loc 1 210 6 is_stmt 1
	.loc 1 210 20 is_stmt 0
	sb	zero,%lo(charge_status)(a5)
	.loc 1 211 9 is_stmt 1
	.loc 1 211 23 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
	.loc 1 215 5 is_stmt 1
	j	.L150
.L153:
.LBB187:
.LBB184:
	.loc 1 216 158 is_stmt 0
	call	xTaskGetTickCount
.LVL196:
	j	.L154
.LBE184:
.LBE187:
	.cfi_endproc
.LFE76:
	.size	charge_detect, .-charge_detect
	.section	.text.main_task,"ax",@progbits
	.align	1
	.globl	main_task
	.type	main_task, @function
main_task:
.LFB79:
	.loc 1 339 26 is_stmt 1
	.cfi_startproc
.LVL197:
	.loc 1 341 1
	.loc 1 341 6
.LBB188:
.LBB189:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE189:
.LBE188:
	.loc 1 341 6
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 339 26
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 341 6
	beq	a5,zero,.L160
	.loc 1 341 106 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL198:
.L161:
	.loc 1 341 6 discriminator 4
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC0)
	mv	a1,a0
	lui	a0,%hi(.LC27)
	li	a4,341
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC27)
	call	bl_printk
.LVL199:
.L162:
	.loc 1 346 5 is_stmt 1 discriminator 1
	.loc 1 348 9 discriminator 1
	call	charge_detect
.LVL200:
	.loc 1 349 9 discriminator 1
	call	ble_light_task
.LVL201:
	.loc 1 350 9 discriminator 1
	call	mada_mode
.LVL202:
	.loc 1 352 9 discriminator 1
	li	a0,1000
	call	vTaskDelay
.LVL203:
	j	.L162
.LVL204:
.L160:
	.loc 1 341 135 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL205:
	j	.L161
	.cfi_endproc
.LFE79:
	.size	main_task, .-main_task
	.section	.text.user_main,"ax",@progbits
	.align	1
	.globl	user_main
	.type	user_main, @function
user_main:
.LFB80:
	.loc 1 358 21 is_stmt 1
	.cfi_startproc
	.loc 1 360 5
	.loc 1 358 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 360 5
	call	ukey_init
.LVL206:
	.loc 1 361 5 is_stmt 1
	lui	a1,%hi(key_event_cb)
	addi	a1,a1,%lo(key_event_cb)
	li	a0,7
	call	ukey_add
.LVL207:
	.loc 1 362 5
	call	product_init
.LVL208:
	.loc 1 363 5
	li	a0,800
	call	led_status_flash
.LVL209:
	.loc 1 364 5
	.loc 1 364 15 is_stmt 0
	call	hal_timer_now_ms
.LVL210:
	mv	s0,a0
.LVL211:
	.loc 1 365 5 is_stmt 1
	.loc 1 365 29 is_stmt 0
	srai	s2,a0,31
	.loc 1 365 10
	li	s1,199
.L165:
	.loc 1 365 11 discriminator 1
	call	hal_timer_now_ms
.LVL212:
	.loc 1 365 29 discriminator 1
	sub	a5,a0,s0
	sgtu	a0,a5,a0
	sub	a1,a1,s2
	sub	a1,a1,a0
	.loc 1 365 10 discriminator 1
	bgt	a1,zero,.L179
	bne	a1,zero,.L166
	bleu	a5,s1,.L166
.L179:
	.loc 1 366 5 is_stmt 1
	li	a1,1
	li	a0,4
	call	bl_gpio_output_set
.LVL213:
	.loc 1 366 30
	li	a0,0
	call	motor_g_set_vibrate
.LVL214:
	.loc 1 369 5
	.loc 1 369 10
.LBB190:
.LBB191:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	s1,%hi(TrapNetCounter)
.LBE191:
.LBE190:
	.loc 1 369 10
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L168
	.loc 1 369 103 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL215:
.L169:
	.loc 1 369 10 discriminator 4
	mv	a1,a0
	lui	s0,%hi(.LC0)
.LVL216:
	lui	a0,%hi(.LC28)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC28)
	call	bl_printk
.LVL217:
	.loc 1 372 5 is_stmt 1 discriminator 4
	call	do_ble_init
.LVL218:
	.loc 1 374 5 discriminator 4
	lui	a0,%hi(ble_reve_cb)
	addi	a0,a0,%lo(ble_reve_cb)
	call	do_ble_set_reve_cb
.LVL219:
	.loc 1 375 5 discriminator 4
	lui	a0,%hi(ble_connect_cb)
	addi	a0,a0,%lo(ble_connect_cb)
	call	do_ble_set_connect_cb
.LVL220:
	.loc 1 377 5 discriminator 4
	call	adc_init
.LVL221:
	.loc 1 380 5 discriminator 4
	.loc 1 380 9 is_stmt 0 discriminator 4
	lui	a1,%hi(.LC29)
	lui	a0,%hi(main_task)
	li	a5,0
	li	a4,6
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC29)
	addi	a0,a0,%lo(main_task)
	call	xTaskCreate
.LVL222:
	.loc 1 380 8 discriminator 4
	li	a5,1
	beq	a0,a5,.L170
	.loc 1 381 9 is_stmt 1
	.loc 1 381 14
.LBB192:
.LBB193:
	.loc 2 151 5
.LBE193:
.LBE192:
	.loc 1 381 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L171
	.loc 1 381 121 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL223:
.L172:
	.loc 1 381 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC30)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC30)
	call	bl_printk
.LVL224:
.L170:
	.loc 1 383 5 is_stmt 1
	.loc 1 383 9 is_stmt 0
	lui	a1,%hi(.LC31)
	lui	a0,%hi(light_task)
	li	a5,0
	li	a4,5
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC31)
	addi	a0,a0,%lo(light_task)
	call	xTaskCreate
.LVL225:
	.loc 1 383 8
	li	a5,1
	beq	a0,a5,.L173
	.loc 1 384 9 is_stmt 1
	.loc 1 384 14
.LBB194:
.LBB195:
	.loc 2 151 5
.LBE195:
.LBE194:
	.loc 1 384 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L174
	.loc 1 384 122 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL226:
.L175:
	.loc 1 384 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC32)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC32)
	call	bl_printk
.LVL227:
.L173:
	.loc 1 386 5 is_stmt 1
	.loc 1 386 9 is_stmt 0
	lui	a1,%hi(.LC33)
	lui	a0,%hi(sleep_task)
	li	a5,0
	li	a4,4
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC33)
	addi	a0,a0,%lo(sleep_task)
	call	xTaskCreate
.LVL228:
	.loc 1 386 8
	li	a5,1
	beq	a0,a5,.L164
	.loc 1 387 9 is_stmt 1
	.loc 1 387 14
.LBB196:
.LBB197:
	.loc 2 151 5
.LBE197:
.LBE196:
	.loc 1 387 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L177
	.loc 1 387 122 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL229:
.L178:
	.loc 1 387 14 discriminator 4
	addi	a2,s0,%lo(.LC0)
	.loc 1 390 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 387 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC34)
	.loc 1 390 1 discriminator 4
	.loc 1 387 14 discriminator 4
	addi	a0,a0,%lo(.LC34)
	.loc 1 390 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 387 14 discriminator 4
	tail	bl_printk
.LVL230:
.L166:
	.cfi_restore_state
	.loc 1 365 40 is_stmt 1 discriminator 2
	li	a1,0
	li	a0,4
	call	bl_gpio_output_set
.LVL231:
	.loc 1 365 65 discriminator 2
	li	a0,20
	call	motor_g_set_vibrate
.LVL232:
	j	.L165
.L168:
	.loc 1 369 132 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL233:
	j	.L169
.LVL234:
.L171:
	.loc 1 381 150 discriminator 2
	call	xTaskGetTickCount
.LVL235:
	j	.L172
.L174:
	.loc 1 384 151 discriminator 2
	call	xTaskGetTickCount
.LVL236:
	j	.L175
.L177:
	.loc 1 387 151 discriminator 2
	call	xTaskGetTickCount
.LVL237:
	j	.L178
.L164:
	.loc 1 390 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE80:
	.size	user_main, .-user_main
	.globl	key_weakup_pin
	.comm	data,4,4
	.globl	charge_flag
	.globl	discharge_flag
	.globl	ota_flag
	.globl	ota_time
	.globl	vibrate
	.globl	light_grade
	.globl	light_flag
	.globl	ble_connect
	.globl	_fsymf_info_dolphinapp_main
	.comm	_fsymf_level_dolphinapp_main,1,1
	.comm	_fsymc_level_dolphin,1,1
	.section	.rodata
	.align	2
	.set	.LANCHOR9,. + 0
.LC20:
	.string	"OTA_START"
	.zero	10
.LC23:
	.string	"SET_WIFI"
	.zero	11
	.section	.rodata.adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"\033[31m[%10u][%s %s:%4d] ADC init start PIN :%d\033[0m\r\n"
	.section	.rodata.ble_connect_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"app_main"
	.zero	3
.LC1:
	.string	"\033[32m[%10u][%s] ble_connect: %s\033[0m\r\n"
	.zero	2
.LC2:
	.string	"\033[32m[%10u][%s] ble_disconnect: %s\033[0m\r\n"
	.section	.rodata.ble_reve_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"\033[32m[%10u][%s] ble_reve_buf: %s\033[0m\r\n"
	.zero	1
.LC10:
	.string	"\033[32m[%10u][%s] cmd: %s  data: %s\033[0m\r\n"
.LC11:
	.string	"Status"
	.zero	1
.LC12:
	.string	"\033[32m[%10u][%s] get Status\033[0m\r\n"
	.zero	3
.LC13:
	.string	"Vibrate"
.LC14:
	.string	"\033[32m[%10u][%s] set Vibrate\033[0m\r\n"
	.zero	2
.LC15:
	.string	"Battery"
.LC16:
	.string	"Light"
	.zero	2
.LC17:
	.string	"PowerOff"
	.zero	3
.LC18:
	.string	"OTA"
.LC19:
	.string	"\033[32m[%10u][%s] OTA\033[0m\r\n"
	.zero	2
.LC21:
	.string	"WIFI"
	.zero	3
.LC22:
	.string	"\033[32m[%10u][%s] SET WIFI \033[0m\r\n"
.LC24:
	.string	"\033[32m[%10u][%s] saved SSID: %s, passwd: %s\033[0m\r\n"
	.section	.rodata.charge_detect.str1.4,"aMS",@progbits,1
	.align	2
.LC25:
	.string	"\033[31m[%10u][%s %s:%4d] CHARGEFULL!!!!!\033[0m\r\n"
	.zero	3
.LC26:
	.string	"\033[31m[%10u][%s %s:%4d] CHARGEFULL AND DISCHARGE !!!!!\033[0m\r\n"
	.section	.rodata.get_battery.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"\033[31m[%10u][%s %s:%4d] gpio = %d data = %ld mv  %:%d \r\n\033[0m\r\n"
	.section	.rodata.key_event_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"\033[32m[%10u][%s] UKEY_EVEVT_SHORT_PRESS\033[0m\r\n"
	.zero	3
.LC6:
	.string	"\033[32m[%10u][%s] UKEY_EVEVT_LONG_PRESS\033[0m\r\n"
	.section	.rodata.main_task.str1.4,"aMS",@progbits,1
	.align	2
.LC27:
	.string	"\033[31m[%10u][%s %s:%4d] main_task start\033[0m\r\n"
	.section	.rodata.sleep_start.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"app_main.c"
	.zero	1
.LC4:
	.string	"\033[31m[%10u][%s %s:%4d] sleep start\033[0m\r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC35:
	.string	"dolphin.app_main"
	.zero	3
.LC36:
	.string	"dolphin"
	.section	.rodata.user_main.str1.4,"aMS",@progbits,1
	.align	2
.LC28:
	.string	"\033[32m[%10u][%s] user_main_start\033[0m\r\n"
	.zero	2
.LC29:
	.string	"main_task"
	.zero	2
.LC30:
	.string	"\033[32m[%10u][%s] xTaskCreate(main_task) failed\033[0m\r\n"
.LC31:
	.string	"light_task"
	.zero	1
.LC32:
	.string	"\033[32m[%10u][%s] xTaskCreate(light_task) failed\033[0m\r\n"
	.zero	3
.LC33:
	.string	"sleep_task"
	.zero	1
.LC34:
	.string	"\033[32m[%10u][%s] xTaskCreate(sleep_task) failed\033[0m\r\n"
	.section	.sbss.Grade,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	Grade, @object
	.size	Grade, 4
Grade:
	.zero	4
	.section	.sbss.ble_connect,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	ble_connect, @object
	.size	ble_connect, 1
ble_connect:
	.zero	1
	.section	.sbss.charge_flag,"aw",@nobits
	.set	.LANCHOR10,. + 0
	.type	charge_flag, @object
	.size	charge_flag, 1
charge_flag:
	.zero	1
	.section	.sbss.discharge_flag,"aw",@nobits
	.set	.LANCHOR11,. + 0
	.type	discharge_flag, @object
	.size	discharge_flag, 1
discharge_flag:
	.zero	1
	.section	.sbss.light_grade,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	light_grade, @object
	.size	light_grade, 4
light_grade:
	.zero	4
	.section	.sbss.ota_flag,"aw",@nobits
	.set	.LANCHOR6,. + 0
	.type	ota_flag, @object
	.size	ota_flag, 1
ota_flag:
	.zero	1
	.section	.sbss.ota_time,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	ota_time, @object
	.size	ota_time, 4
ota_time:
	.zero	4
	.section	.sbss.times.5528,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	times.5528, @object
	.size	times.5528, 4
times.5528:
	.zero	4
	.section	.sbss.vibrate,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	vibrate, @object
	.size	vibrate, 4
vibrate:
	.zero	4
	.section	.sdata.key_weakup_pin,"aw"
	.set	.LANCHOR7,. + 0
	.type	key_weakup_pin, @object
	.size	key_weakup_pin, 1
key_weakup_pin:
	.byte	7
	.section	.sdata.light_flag,"aw"
	.set	.LANCHOR1,. + 0
	.type	light_flag, @object
	.size	light_flag, 1
light_flag:
	.byte	1
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
	.word	.LC36
	.section	.static_blogfile_code.dolphinapp_main,"a"
	.align	2
	.type	_fsymf_info_dolphinapp_main, @object
	.size	_fsymf_info_dolphinapp_main, 8
_fsymf_info_dolphinapp_main:
	.word	_fsymf_level_dolphinapp_main
	.word	.LC35
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/b-l/bl_iot_sdk_new/components/stage/blog/blog_type.h"
	.file 10 "/b-l/bl_iot_sdk_new/components/stage/blog/blog.h"
	.file 11 "/b-l/dolphin/components/ukey/include/ukey.h"
	.file 12 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.file 13 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/misc/slist.h"
	.file 14 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/port/include/zephyr.h"
	.file 15 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/net/buf.h"
	.file 16 "/b-l/dolphin/components/do_ble/include/do_ble.h"
	.file 17 "/b-l/dolphin/dolphin/include/product.h"
	.file 18 "/b-l/dolphin/components/ota/include/doit_flash.h"
	.file 19 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_gpio.h"
	.file 20 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
	.file 21 "/b-l/bl_iot_sdk_new/components/utils/include/utils_log.h"
	.file 22 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_hbn.h"
	.file 23 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 24 "/b-l/dolphin/components/ota/include/doit_wifi.h"
	.file 25 "<built-in>"
	.file 26 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_adc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2575
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF269
	.byte	0xc
	.4byte	.LASF270
	.4byte	.LASF271
	.4byte	.Ldebug_ranges0+0x128
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x3
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x4b
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	0x4b
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6a
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x89
	.byte	0x4
	.4byte	0x78
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x9e
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x9e
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4b
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x97
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x104
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xb1
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x6a
	.4byte	0x114
	.byte	0xa
	.4byte	0x9e
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x138
	.byte	0xc
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x97
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xe2
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x114
	.byte	0xd
	.byte	0x4
	.byte	0x2
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x89
	.byte	0x2
	.4byte	.LASF24
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x97
	.byte	0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x152
	.byte	0xe
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1c4
	.byte	0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1c4
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x97
	.byte	0x4
	.byte	0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x97
	.byte	0x8
	.byte	0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x97
	.byte	0xc
	.byte	0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x97
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1ca
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x16a
	.byte	0x9
	.4byte	0x146
	.4byte	0x1da
	.byte	0xa
	.4byte	0x9e
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x25d
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x97
	.byte	0
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x97
	.byte	0x4
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x97
	.byte	0x8
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x97
	.byte	0xc
	.byte	0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x97
	.byte	0x10
	.byte	0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x97
	.byte	0x14
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x97
	.byte	0x18
	.byte	0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x97
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x97
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2a2
	.byte	0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2a2
	.byte	0
	.byte	0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2a2
	.byte	0x80
	.byte	0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x146
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF45
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x146
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x144
	.4byte	0x2b2
	.byte	0xa
	.4byte	0x9e
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2f5
	.byte	0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2f5
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x97
	.byte	0x4
	.byte	0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2fb
	.byte	0x8
	.byte	0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x25d
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2b2
	.byte	0x9
	.4byte	0x30b
	.4byte	0x30b
	.byte	0xa
	.4byte	0x9e
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x311
	.byte	0x13
	.byte	0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x33a
	.byte	0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x33a
	.byte	0
	.byte	0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x97
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6a
	.byte	0xe
	.4byte	.LASF52
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x483
	.byte	0xf
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x33a
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x97
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x97
	.byte	0x8
	.byte	0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.byte	0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x312
	.byte	0x10
	.byte	0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x97
	.byte	0x18
	.byte	0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x144
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x607
	.byte	0x20
	.byte	0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x631
	.byte	0x24
	.byte	0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x655
	.byte	0x28
	.byte	0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x66f
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x312
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x33a
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x97
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x675
	.byte	0x40
	.byte	0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x685
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x312
	.byte	0x44
	.byte	0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x97
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xbe
	.byte	0x50
	.byte	0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4a1
	.byte	0x54
	.byte	0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x15e
	.byte	0x58
	.byte	0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x138
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x97
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xd6
	.4byte	0x4a1
	.byte	0x15
	.4byte	0x4a1
	.byte	0x15
	.4byte	0x144
	.byte	0x15
	.4byte	0x5f5
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x4ac
	.byte	0x4
	.4byte	0x4a1
	.byte	0x16
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5f5
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x97
	.byte	0
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e1
	.byte	0x4
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e1
	.byte	0x8
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e1
	.byte	0xc
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x97
	.byte	0x10
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e1
	.byte	0x14
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x97
	.byte	0x30
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8f6
	.byte	0x34
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x97
	.byte	0x38
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x907
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1c4
	.byte	0x40
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x97
	.byte	0x44
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1c4
	.byte	0x48
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x90d
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x97
	.byte	0x50
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5f5
	.byte	0x54
	.byte	0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8bc
	.byte	0x58
	.byte	0x18
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2f5
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2b2
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x91e
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6a2
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x92a
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5fb
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.byte	0x4
	.4byte	0x5fb
	.byte	0x10
	.byte	0x4
	.4byte	0x483
	.byte	0x14
	.4byte	0xd6
	.4byte	0x62b
	.byte	0x15
	.4byte	0x4a1
	.byte	0x15
	.4byte	0x144
	.byte	0x15
	.4byte	0x62b
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x602
	.byte	0x10
	.byte	0x4
	.4byte	0x60d
	.byte	0x14
	.4byte	0xca
	.4byte	0x655
	.byte	0x15
	.4byte	0x4a1
	.byte	0x15
	.4byte	0x144
	.byte	0x15
	.4byte	0xca
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x637
	.byte	0x14
	.4byte	0x97
	.4byte	0x66f
	.byte	0x15
	.4byte	0x4a1
	.byte	0x15
	.4byte	0x144
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x65b
	.byte	0x9
	.4byte	0x6a
	.4byte	0x685
	.byte	0xa
	.4byte	0x9e
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x6a
	.4byte	0x695
	.byte	0xa
	.4byte	0x9e
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x340
	.byte	0x19
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6db
	.byte	0x17
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6db
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x97
	.byte	0x4
	.byte	0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6e1
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6a2
	.byte	0x10
	.byte	0x4
	.4byte	0x695
	.byte	0x19
	.4byte	.LASF96
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x720
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x720
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x720
	.byte	0x6
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x71
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x71
	.4byte	0x730
	.byte	0xa
	.4byte	0x9e
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x845
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x9e
	.byte	0
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5f5
	.byte	0x4
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x845
	.byte	0x8
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1da
	.byte	0x24
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x97
	.byte	0x48
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x90
	.byte	0x50
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6e7
	.byte	0x58
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x138
	.byte	0x68
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x138
	.byte	0x70
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x138
	.byte	0x78
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x855
	.byte	0x80
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x865
	.byte	0x88
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x97
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x138
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x138
	.byte	0xac
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x138
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x138
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x138
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x97
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x855
	.byte	0xa
	.4byte	0x9e
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x865
	.byte	0xa
	.4byte	0x9e
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x875
	.byte	0xa
	.4byte	0x9e
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x89c
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x89c
	.byte	0
	.byte	0x17
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8ac
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x33a
	.4byte	0x8ac
	.byte	0xa
	.4byte	0x9e
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x9e
	.4byte	0x8bc
	.byte	0xa
	.4byte	0x9e
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e1
	.byte	0x1c
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x730
	.byte	0x1c
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x875
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x8f1
	.byte	0xa
	.4byte	0x9e
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF185
	.byte	0x10
	.byte	0x4
	.4byte	0x8f1
	.byte	0x1e
	.4byte	0x907
	.byte	0x15
	.4byte	0x4a1
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8fc
	.byte	0x10
	.byte	0x4
	.4byte	0x1c4
	.byte	0x1e
	.4byte	0x91e
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x924
	.byte	0x10
	.byte	0x4
	.4byte	0x913
	.byte	0x9
	.4byte	0x695
	.4byte	0x93a
	.byte	0xa
	.4byte	0x9e
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4a1
	.byte	0x1f
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4a7
	.byte	0x20
	.4byte	.LASF124
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x5f5
	.byte	0x2
	.4byte	.LASF125
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x3f
	.byte	0x2
	.4byte	.LASF126
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x78
	.byte	0x20
	.4byte	.LASF127
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x960
	.byte	0x21
	.4byte	.LASF156
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0x9
	.byte	0x21
	.byte	0xe
	.4byte	0x9c1
	.byte	0x22
	.4byte	.LASF128
	.byte	0
	.byte	0x22
	.4byte	.LASF129
	.byte	0x1
	.byte	0x22
	.4byte	.LASF130
	.byte	0x2
	.byte	0x22
	.4byte	.LASF131
	.byte	0x3
	.byte	0x22
	.4byte	.LASF132
	.byte	0x4
	.byte	0x22
	.4byte	.LASF133
	.byte	0x5
	.byte	0x22
	.4byte	.LASF134
	.byte	0x6
	.byte	0
	.byte	0x2
	.4byte	.LASF135
	.byte	0x9
	.byte	0x29
	.byte	0x3
	.4byte	0x984
	.byte	0xe
	.4byte	.LASF136
	.byte	0x8
	.byte	0x9
	.byte	0x2b
	.byte	0x10
	.4byte	0x9f5
	.byte	0xc
	.4byte	.LASF137
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x9f5
	.byte	0
	.byte	0xc
	.4byte	.LASF138
	.byte	0x9
	.byte	0x2d
	.byte	0xb
	.4byte	0x5f5
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x9c1
	.byte	0x2
	.4byte	.LASF139
	.byte	0x9
	.byte	0x2e
	.byte	0x3
	.4byte	0x9cd
	.byte	0x4
	.4byte	0x9fb
	.byte	0x23
	.4byte	.LASF141
	.byte	0xa
	.byte	0x37
	.byte	0x17
	.4byte	0x84
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF140
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.4byte	0x9c1
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_dolphin
	.byte	0x23
	.4byte	.LASF142
	.byte	0xa
	.byte	0x45
	.byte	0x1a
	.4byte	0xa07
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_dolphin
	.byte	0x24
	.4byte	.LASF143
	.byte	0xa
	.byte	0x52
	.byte	0xe
	.4byte	0x9c1
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_dolphinapp_main
	.byte	0x24
	.4byte	.LASF144
	.byte	0xa
	.byte	0x53
	.byte	0x13
	.4byte	0xa07
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_dolphinapp_main
	.byte	0x25
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0xb
	.byte	0x1f
	.byte	0xe
	.4byte	0xa8d
	.byte	0x22
	.4byte	.LASF145
	.byte	0
	.byte	0x22
	.4byte	.LASF146
	.byte	0x1
	.byte	0x22
	.4byte	.LASF147
	.byte	0x2
	.byte	0x22
	.4byte	.LASF148
	.byte	0x3
	.byte	0
	.byte	0x2
	.4byte	.LASF149
	.byte	0xb
	.byte	0x24
	.byte	0x2
	.4byte	0xa66
	.byte	0x2
	.4byte	.LASF150
	.byte	0xc
	.byte	0x12
	.byte	0x14
	.4byte	0x97
	.byte	0x2
	.4byte	.LASF151
	.byte	0xc
	.byte	0x15
	.byte	0x17
	.4byte	0x6a
	.byte	0x2
	.4byte	.LASF152
	.byte	0xc
	.byte	0x16
	.byte	0x18
	.4byte	0x71
	.byte	0xe
	.4byte	.LASF153
	.byte	0x4
	.byte	0xd
	.byte	0x1c
	.byte	0x8
	.4byte	0xad8
	.byte	0xc
	.4byte	.LASF154
	.byte	0xd
	.byte	0x1d
	.byte	0x11
	.4byte	0xad8
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xabd
	.byte	0x2
	.4byte	.LASF155
	.byte	0xd
	.byte	0x20
	.byte	0x17
	.4byte	0xabd
	.byte	0x21
	.4byte	.LASF157
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0xe
	.byte	0x36
	.byte	0x6
	.4byte	0xb1b
	.byte	0x22
	.4byte	.LASF158
	.byte	0
	.byte	0x22
	.4byte	.LASF159
	.byte	0x1
	.byte	0x22
	.4byte	.LASF160
	.byte	0x2
	.byte	0x22
	.4byte	.LASF161
	.byte	0x3
	.byte	0x22
	.4byte	.LASF162
	.byte	0x4
	.byte	0
	.byte	0x21
	.4byte	.LASF163
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0xe
	.byte	0x40
	.byte	0x6
	.4byte	0xb4c
	.byte	0x22
	.4byte	.LASF164
	.byte	0
	.byte	0x22
	.4byte	.LASF165
	.byte	0x1
	.byte	0x22
	.4byte	.LASF166
	.byte	0x2
	.byte	0x22
	.4byte	.LASF167
	.byte	0x3
	.byte	0x22
	.4byte	.LASF168
	.byte	0x4
	.byte	0
	.byte	0xe
	.4byte	.LASF169
	.byte	0xc
	.byte	0xf
	.byte	0x52
	.byte	0x8
	.4byte	0xb8e
	.byte	0xc
	.4byte	.LASF170
	.byte	0xf
	.byte	0x54
	.byte	0x8
	.4byte	0xb8e
	.byte	0
	.byte	0xf
	.string	"len"
	.byte	0xf
	.byte	0x57
	.byte	0x8
	.4byte	0xab1
	.byte	0x4
	.byte	0xc
	.4byte	.LASF171
	.byte	0xf
	.byte	0x5a
	.byte	0x8
	.4byte	0xab1
	.byte	0x6
	.byte	0xc
	.4byte	.LASF172
	.byte	0xf
	.byte	0x5f
	.byte	0x8
	.4byte	0xb8e
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xaa5
	.byte	0x1b
	.byte	0x4
	.byte	0xf
	.2byte	0x227
	.byte	0x2
	.4byte	0xbb9
	.byte	0x1c
	.4byte	.LASF173
	.byte	0xf
	.2byte	0x229
	.byte	0xf
	.4byte	0xade
	.byte	0x1c
	.4byte	.LASF174
	.byte	0xf
	.2byte	0x22c
	.byte	0x13
	.4byte	0xc0e
	.byte	0
	.byte	0x26
	.4byte	.LASF272
	.byte	0x20
	.byte	0x4
	.byte	0xf
	.2byte	0x226
	.byte	0x8
	.4byte	0xc0e
	.byte	0x27
	.4byte	0xb94
	.byte	0
	.byte	0x28
	.string	"ref"
	.byte	0xf
	.2byte	0x230
	.byte	0x7
	.4byte	0xaa5
	.byte	0x4
	.byte	0x17
	.4byte	.LASF175
	.byte	0xf
	.2byte	0x233
	.byte	0x7
	.4byte	0xaa5
	.byte	0x5
	.byte	0x17
	.4byte	.LASF176
	.byte	0xf
	.2byte	0x236
	.byte	0x7
	.4byte	0xaa5
	.byte	0x6
	.byte	0x27
	.4byte	0xc57
	.byte	0x8
	.byte	0x29
	.4byte	.LASF273
	.byte	0xf
	.2byte	0x252
	.byte	0x7
	.4byte	0xc72
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xbb9
	.byte	0x1a
	.byte	0xc
	.byte	0xf
	.2byte	0x23d
	.byte	0x3
	.4byte	0xc57
	.byte	0x17
	.4byte	.LASF170
	.byte	0xf
	.2byte	0x23f
	.byte	0xa
	.4byte	0xb8e
	.byte	0
	.byte	0x28
	.string	"len"
	.byte	0xf
	.2byte	0x242
	.byte	0xa
	.4byte	0xab1
	.byte	0x4
	.byte	0x17
	.4byte	.LASF171
	.byte	0xf
	.2byte	0x245
	.byte	0xa
	.4byte	0xab1
	.byte	0x6
	.byte	0x17
	.4byte	.LASF172
	.byte	0xf
	.2byte	0x24b
	.byte	0xa
	.4byte	0xb8e
	.byte	0x8
	.byte	0
	.byte	0x1b
	.byte	0xc
	.byte	0xf
	.2byte	0x23b
	.byte	0x2
	.4byte	0xc72
	.byte	0x2a
	.4byte	0xc14
	.byte	0x2b
	.string	"b"
	.byte	0xf
	.2byte	0x24e
	.byte	0x19
	.4byte	0xb4c
	.byte	0
	.byte	0x9
	.4byte	0xaa5
	.4byte	0xc82
	.byte	0xa
	.4byte	0x9e
	.byte	0x9
	.byte	0
	.byte	0x19
	.4byte	.LASF177
	.byte	0xc
	.byte	0xf
	.2byte	0x255
	.byte	0x8
	.4byte	0xcbb
	.byte	0x17
	.4byte	.LASF178
	.byte	0xf
	.2byte	0x256
	.byte	0xb
	.4byte	0xcdf
	.byte	0
	.byte	0x28
	.string	"ref"
	.byte	0xf
	.2byte	0x257
	.byte	0xb
	.4byte	0xcf9
	.byte	0x4
	.byte	0x17
	.4byte	.LASF179
	.byte	0xf
	.2byte	0x258
	.byte	0x9
	.4byte	0xd0f
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	0xc82
	.byte	0x14
	.4byte	0xb8e
	.4byte	0xcd9
	.byte	0x15
	.4byte	0xc0e
	.byte	0x15
	.4byte	0xcd9
	.byte	0x15
	.4byte	0xa99
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xa5
	.byte	0x10
	.byte	0x4
	.4byte	0xcc0
	.byte	0x14
	.4byte	0xb8e
	.4byte	0xcf9
	.byte	0x15
	.4byte	0xc0e
	.byte	0x15
	.4byte	0xb8e
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xce5
	.byte	0x1e
	.4byte	0xd0f
	.byte	0x15
	.4byte	0xc0e
	.byte	0x15
	.4byte	0xb8e
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xcff
	.byte	0x19
	.4byte	.LASF180
	.byte	0x8
	.byte	0xf
	.2byte	0x25b
	.byte	0x8
	.4byte	0xd3f
	.byte	0x28
	.string	"cb"
	.byte	0xf
	.2byte	0x25c
	.byte	0x20
	.4byte	0xd44
	.byte	0
	.byte	0x17
	.4byte	.LASF181
	.byte	0xf
	.2byte	0x25d
	.byte	0x8
	.4byte	0x144
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	0xd15
	.byte	0x10
	.byte	0x4
	.4byte	0xcbb
	.byte	0x1f
	.4byte	.LASF182
	.byte	0xf
	.2byte	0x297
	.byte	0x28
	.4byte	0xd3f
	.byte	0x1f
	.4byte	.LASF183
	.byte	0xf
	.2byte	0x2be
	.byte	0x25
	.4byte	0xcbb
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF184
	.byte	0x10
	.byte	0x4
	.4byte	0xd71
	.byte	0x1d
	.4byte	.LASF186
	.byte	0x25
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0x10
	.byte	0x7
	.byte	0x6
	.4byte	0xd91
	.byte	0x22
	.4byte	.LASF187
	.byte	0
	.byte	0x22
	.4byte	.LASF188
	.byte	0x1
	.byte	0
	.byte	0x20
	.4byte	.LASF189
	.byte	0x11
	.byte	0x1c
	.byte	0x10
	.4byte	0x5e
	.byte	0x25
	.byte	0x7
	.byte	0x1
	.4byte	0x6a
	.byte	0x11
	.byte	0x1f
	.byte	0x1
	.4byte	0xdbe
	.byte	0x22
	.4byte	.LASF190
	.byte	0
	.byte	0x22
	.4byte	.LASF191
	.byte	0x1
	.byte	0x22
	.4byte	.LASF192
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x80
	.byte	0x12
	.byte	0xa
	.byte	0x9
	.4byte	0xde2
	.byte	0xc
	.4byte	.LASF193
	.byte	0x12
	.byte	0xb
	.byte	0x7
	.4byte	0xde2
	.byte	0
	.byte	0xc
	.4byte	.LASF194
	.byte	0x12
	.byte	0xc
	.byte	0x7
	.4byte	0xde2
	.byte	0x40
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0xdf2
	.byte	0xa
	.4byte	0x9e
	.byte	0x3f
	.byte	0
	.byte	0x2
	.4byte	.LASF195
	.byte	0x12
	.byte	0xd
	.byte	0x3
	.4byte	0xdbe
	.byte	0x24
	.4byte	.LASF196
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	0xd64
	.byte	0x5
	.byte	0x3
	.4byte	ble_connect
	.byte	0x24
	.4byte	.LASF197
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	0xd64
	.byte	0x5
	.byte	0x3
	.4byte	light_flag
	.byte	0x24
	.4byte	.LASF198
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	light_grade
	.byte	0x23
	.4byte	.LASF199
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	Grade
	.byte	0x24
	.4byte	.LASF200
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	vibrate
	.byte	0x24
	.4byte	.LASF201
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	ota_time
	.byte	0x24
	.4byte	.LASF202
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	0xd64
	.byte	0x5
	.byte	0x3
	.4byte	ota_flag
	.byte	0x24
	.4byte	.LASF203
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	0xd64
	.byte	0x5
	.byte	0x3
	.4byte	discharge_flag
	.byte	0x24
	.4byte	.LASF204
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0xd64
	.byte	0x5
	.byte	0x3
	.4byte	charge_flag
	.byte	0x24
	.4byte	.LASF170
	.byte	0x1
	.byte	0x2b
	.byte	0x9
	.4byte	0x3f
	.byte	0x5
	.byte	0x3
	.4byte	data
	.byte	0x24
	.4byte	.LASF205
	.byte	0x1
	.byte	0x2c
	.byte	0x9
	.4byte	0x5e
	.byte	0x5
	.byte	0x3
	.4byte	key_weakup_pin
	.byte	0x2c
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x166
	.byte	0x6
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x1
	.byte	0x9c
	.4byte	0x1186
	.byte	0x2d
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x16c
	.byte	0x9
	.4byte	0x97
	.4byte	.LLST26
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB190
	.4byte	.LBE190-.LBB190
	.byte	0x1
	.2byte	0x171
	.byte	0x4c
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.byte	0x1
	.2byte	0x17d
	.byte	0x5e
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.byte	0x1
	.2byte	0x180
	.byte	0x5f
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.byte	0x1
	.2byte	0x183
	.byte	0x5f
	.byte	0x2f
	.4byte	.LVL206
	.4byte	0x23ae
	.byte	0x30
	.4byte	.LVL207
	.4byte	0x23ba
	.4byte	0xf55
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	key_event_cb
	.byte	0
	.byte	0x2f
	.4byte	.LVL208
	.4byte	0x23c6
	.byte	0x30
	.4byte	.LVL209
	.4byte	0x23d2
	.4byte	0xf73
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x320
	.byte	0
	.byte	0x2f
	.4byte	.LVL210
	.4byte	0x23de
	.byte	0x2f
	.4byte	.LVL212
	.4byte	0x23de
	.byte	0x30
	.4byte	.LVL213
	.4byte	0x23ea
	.4byte	0xf9d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL214
	.4byte	0x23f6
	.4byte	0xfb0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL215
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL217
	.4byte	0x240f
	.4byte	0xfd9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2f
	.4byte	.LVL218
	.4byte	0x241b
	.byte	0x30
	.4byte	.LVL219
	.4byte	0x2427
	.4byte	0xff9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ble_reve_cb
	.byte	0
	.byte	0x30
	.4byte	.LVL220
	.4byte	0x2433
	.4byte	0x1010
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ble_connect_cb
	.byte	0
	.byte	0x2f
	.4byte	.LVL221
	.4byte	0x1b74
	.byte	0x30
	.4byte	.LVL222
	.4byte	0x243f
	.4byte	0x104f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	main_task
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x36
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL223
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL224
	.4byte	0x240f
	.4byte	0x1078
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL225
	.4byte	0x243f
	.4byte	0x10ae
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	light_task
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL226
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL227
	.4byte	0x240f
	.4byte	0x10d7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL228
	.4byte	0x243f
	.4byte	0x110d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	sleep_task
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL229
	.4byte	0x2402
	.byte	0x32
	.4byte	.LVL230
	.4byte	0x240f
	.4byte	0x1136
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL231
	.4byte	0x23ea
	.4byte	0x114e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL232
	.4byte	0x23f6
	.4byte	0x1161
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x2f
	.4byte	.LVL233
	.4byte	0x244c
	.byte	0x2f
	.4byte	.LVL235
	.4byte	0x244c
	.byte	0x2f
	.4byte	.LVL236
	.4byte	0x244c
	.byte	0x2f
	.4byte	.LVL237
	.4byte	0x244c
	.byte	0
	.byte	0x2c
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x153
	.byte	0x6
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x1
	.byte	0x9c
	.4byte	0x1232
	.byte	0x33
	.string	"arg"
	.byte	0x1
	.2byte	0x153
	.byte	0x16
	.4byte	0x144
	.4byte	.LLST25
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB188
	.4byte	.LBE188-.LBB188
	.byte	0x1
	.2byte	0x155
	.byte	0x4f
	.byte	0x2f
	.4byte	.LVL198
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL199
	.4byte	0x240f
	.4byte	0x11f8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x155
	.byte	0
	.byte	0x2f
	.4byte	.LVL200
	.4byte	0x1a9e
	.byte	0x2f
	.4byte	.LVL201
	.4byte	0x1d50
	.byte	0x2f
	.4byte	.LVL202
	.4byte	0x1d59
	.byte	0x30
	.4byte	.LVL203
	.4byte	0x2459
	.4byte	0x1228
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x2f
	.4byte	.LVL205
	.4byte	0x244c
	.byte	0
	.byte	0x2c
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x13e
	.byte	0x6
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x1
	.byte	0x9c
	.4byte	0x12e6
	.byte	0x33
	.string	"arg"
	.byte	0x1
	.2byte	0x13e
	.byte	0x17
	.4byte	0x144
	.4byte	.LLST1
	.byte	0x34
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x13f
	.byte	0xc
	.4byte	0x97
	.byte	0x5
	.byte	0x3
	.4byte	times.5528
	.byte	0x30
	.4byte	.LVL20
	.4byte	0x2466
	.4byte	0x1289
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL21
	.4byte	0x2472
	.4byte	0x129c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL22
	.4byte	0x247e
	.byte	0x30
	.4byte	.LVL23
	.4byte	0x2466
	.4byte	0x12c1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL24
	.4byte	0x2472
	.4byte	0x12d4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x35
	.4byte	.LVL25
	.4byte	0x2459
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x36
	.4byte	.LASF274
	.byte	0x1
	.byte	0xe1
	.byte	0xd
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a68
	.byte	0x37
	.4byte	.LASF211
	.byte	0x1
	.byte	0xe1
	.byte	0x29
	.4byte	0xd6b
	.4byte	.LLST16
	.byte	0x38
	.string	"buf"
	.byte	0x1
	.byte	0xe1
	.byte	0x3b
	.4byte	0x62b
	.4byte	.LLST17
	.byte	0x38
	.string	"len"
	.byte	0x1
	.byte	0xe1
	.byte	0x46
	.4byte	0xab1
	.4byte	.LLST18
	.byte	0x39
	.string	"cmd"
	.byte	0x1
	.byte	0xe4
	.byte	0xa
	.4byte	0x1a68
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x23
	.4byte	.LASF170
	.byte	0x1
	.byte	0xe5
	.byte	0xa
	.4byte	0x1a78
	.byte	0x3
	.byte	0x91
	.byte	0xf8,0x7e
	.byte	0x23
	.4byte	.LASF212
	.byte	0x1
	.byte	0xe6
	.byte	0xa
	.4byte	0x1a88
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0x3a
	.string	"dp"
	.byte	0x1
	.byte	0xe9
	.byte	0xb
	.4byte	0x5f5
	.4byte	.LLST19
	.byte	0x3a
	.string	"p"
	.byte	0x1
	.byte	0xf0
	.byte	0xb
	.4byte	0x5f5
	.4byte	.LLST20
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x13f6
	.byte	0x2d
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x105
	.byte	0x11
	.4byte	0x3f
	.4byte	.LLST21
	.byte	0x3c
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.4byte	0x13c3
	.byte	0x2d
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x108
	.byte	0x10
	.4byte	0x25
	.4byte	.LLST22
	.byte	0x2d
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x108
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST23
	.byte	0
	.byte	0x30
	.4byte	.LVL119
	.4byte	0x248a
	.4byte	0x13d8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL120
	.4byte	0x2496
	.4byte	0x13ec
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL140
	.4byte	0x1aa7
	.byte	0
	.byte	0x3c
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.4byte	0x14c9
	.byte	0x34
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x123
	.byte	0xa
	.4byte	0x1a88
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB159
	.4byte	.LBE159-.LBB159
	.byte	0x1
	.2byte	0x11c
	.byte	0x40
	.byte	0x2f
	.4byte	.LVL149
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL150
	.4byte	0x240f
	.4byte	0x144e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2f
	.4byte	.LVL151
	.4byte	0x24a2
	.byte	0x2f
	.4byte	.LVL152
	.4byte	0x24ae
	.byte	0x30
	.4byte	.LVL153
	.4byte	0x2459
	.4byte	0x1475
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x2f
	.4byte	.LVL154
	.4byte	0x24ba
	.byte	0x2f
	.4byte	.LVL155
	.4byte	0x247e
	.byte	0x30
	.4byte	.LVL156
	.4byte	0x24c6
	.4byte	0x14aa
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x30
	.4byte	.LVL157
	.4byte	0x248a
	.4byte	0x14bf
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x2f
	.4byte	.LVL158
	.4byte	0x244c
	.byte	0
	.byte	0x3c
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.4byte	0x1726
	.byte	0x3d
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x128
	.byte	0x12
	.4byte	0x1a98
	.byte	0x3e
	.string	"p"
	.byte	0x1
	.2byte	0x12c
	.byte	0xb
	.4byte	0x5f5
	.4byte	.LLST24
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0x1678
	.byte	0x3f
	.string	"ret"
	.byte	0x1
	.2byte	0x131
	.byte	0xe
	.4byte	0x1a88
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB165
	.4byte	.LBE165-.LBB165
	.byte	0x1
	.2byte	0x136
	.byte	0x57
	.byte	0x30
	.4byte	.LVL170
	.4byte	0x24d1
	.4byte	0x153d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL171
	.4byte	0x24d1
	.4byte	0x1562
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x88
	.byte	0
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0
	.byte	0x2f
	.4byte	.LVL172
	.4byte	0x24dd
	.byte	0x30
	.4byte	.LVL173
	.4byte	0x24c6
	.4byte	0x158e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR9+20
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x30
	.4byte	.LVL174
	.4byte	0x24e9
	.4byte	0x15ad
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xa5,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3b
	.byte	0
	.byte	0x30
	.4byte	.LVL175
	.4byte	0x248a
	.4byte	0x15c2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL176
	.4byte	0x2496
	.4byte	0x15dd
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL177
	.4byte	0x248a
	.4byte	0x15f1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL178
	.4byte	0x2496
	.4byte	0x160b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL179
	.4byte	0x248a
	.4byte	0x161f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL180
	.4byte	0x2496
	.4byte	0x1639
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL181
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL182
	.4byte	0x240f
	.4byte	0x166e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL186
	.4byte	0x244c
	.byte	0
	.byte	0x2e
	.4byte	0x1e16
	.4byte	.LBB162
	.4byte	.LBE162-.LBB162
	.byte	0x1
	.2byte	0x127
	.byte	0x46
	.byte	0x2f
	.4byte	.LVL160
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL161
	.4byte	0x240f
	.4byte	0x16b2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2f
	.4byte	.LVL162
	.4byte	0x24f4
	.byte	0x30
	.4byte	.LVL164
	.4byte	0x2500
	.4byte	0x16da
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x30
	.4byte	.LVL165
	.4byte	0x2500
	.4byte	0x16f9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x2f
	.4byte	.LVL166
	.4byte	0x24dd
	.byte	0x30
	.4byte	.LVL167
	.4byte	0x250c
	.4byte	0x171c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x2f
	.4byte	.LVL184
	.4byte	0x244c
	.byte	0
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB147
	.4byte	.LBE147-.LBB147
	.byte	0x1
	.byte	0xef
	.byte	0x4d
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB149
	.4byte	.LBE149-.LBB149
	.byte	0x1
	.byte	0xf9
	.byte	0x4e
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB151
	.4byte	.LBE151-.LBB151
	.byte	0x1
	.byte	0xfc
	.byte	0x4b
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB155
	.4byte	.LBE155-.LBB155
	.byte	0x1
	.byte	0xff
	.byte	0x4c
	.byte	0x30
	.4byte	.LVL103
	.4byte	0x24e9
	.4byte	0x1785
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4a
	.byte	0
	.byte	0x30
	.4byte	.LVL104
	.4byte	0x248a
	.4byte	0x179a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL105
	.4byte	0x2496
	.4byte	0x17b5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL106
	.4byte	0x250c
	.4byte	0x17cf
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.byte	0x2f
	.4byte	.LVL107
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL108
	.4byte	0x240f
	.4byte	0x17fe
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL109
	.4byte	0x250c
	.4byte	0x1818
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.byte	0x30
	.4byte	.LVL112
	.4byte	0x24d1
	.4byte	0x1839
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL113
	.4byte	0x24d1
	.4byte	0x185e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0
	.byte	0x2f
	.4byte	.LVL114
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL115
	.4byte	0x240f
	.4byte	0x1894
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL116
	.4byte	0x2518
	.4byte	0x18b2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x2f
	.4byte	.LVL117
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL118
	.4byte	0x240f
	.4byte	0x18db
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2f
	.4byte	.LVL122
	.4byte	0x244c
	.byte	0x30
	.4byte	.LVL125
	.4byte	0x2524
	.4byte	0x18ff
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL126
	.4byte	0x244c
	.byte	0x2f
	.4byte	.LVL127
	.4byte	0x244c
	.byte	0x30
	.4byte	.LVL128
	.4byte	0x2518
	.4byte	0x192f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x2f
	.4byte	.LVL129
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL130
	.4byte	0x240f
	.4byte	0x1958
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x30
	.4byte	.LVL131
	.4byte	0x2530
	.4byte	0x196c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL133
	.4byte	0x2459
	.4byte	0x1980
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x30
	.4byte	.LVL134
	.4byte	0x248a
	.4byte	0x1995
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL135
	.4byte	0x2496
	.4byte	0x19b0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0
	.byte	0x2f
	.4byte	.LVL138
	.4byte	0x244c
	.byte	0x30
	.4byte	.LVL139
	.4byte	0x2518
	.4byte	0x19d7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x30
	.4byte	.LVL144
	.4byte	0x2518
	.4byte	0x19f5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x30
	.4byte	.LVL145
	.4byte	0x23ea
	.4byte	0x1a08
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL146
	.4byte	0x2518
	.4byte	0x1a26
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x2f
	.4byte	.LVL147
	.4byte	0x1dae
	.byte	0x30
	.4byte	.LVL148
	.4byte	0x2518
	.4byte	0x1a4d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x35
	.4byte	.LVL159
	.4byte	0x2518
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x1a78
	.byte	0xa
	.4byte	0x9e
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x1a88
	.byte	0xa
	.4byte	0x9e
	.byte	0xe
	.byte	0
	.byte	0x9
	.4byte	0x5fb
	.4byte	0x1a98
	.byte	0xa
	.4byte	0x9e
	.byte	0x13
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xdf2
	.byte	0x41
	.4byte	.LASF219
	.byte	0x1
	.byte	0xbb
	.byte	0x6
	.byte	0x1
	.byte	0x42
	.4byte	.LASF217
	.byte	0x1
	.byte	0xaf
	.byte	0x9
	.4byte	0x3f
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b74
	.byte	0x43
	.4byte	.LASF213
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0x3f
	.4byte	.LLST15
	.byte	0x44
	.4byte	0x1dca
	.4byte	.LBB141
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xb4
	.byte	0xd
	.4byte	0x1aff
	.byte	0x45
	.4byte	0x1e09
	.byte	0x45
	.4byte	0x1dfd
	.byte	0x45
	.4byte	0x1df1
	.byte	0x45
	.4byte	0x1de5
	.byte	0x45
	.4byte	0x1ddb
	.byte	0
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB145
	.4byte	.LBE145-.LBB145
	.byte	0x1
	.byte	0xb7
	.byte	0x66
	.byte	0x30
	.4byte	.LVL89
	.4byte	0x253c
	.4byte	0x1b27
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL94
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL95
	.4byte	0x240f
	.4byte	0x1b6a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xb7
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x3c
	.byte	0x31
	.byte	0x1
	.byte	0x61
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL98
	.4byte	0x244c
	.byte	0
	.byte	0x46
	.4byte	.LASF275
	.byte	0x1
	.byte	0xa7
	.byte	0x6
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c06
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB139
	.4byte	.LBE139-.LBB139
	.byte	0x1
	.byte	0xa9
	.byte	0x5a
	.byte	0x2f
	.4byte	.LVL85
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL86
	.4byte	0x240f
	.4byte	0x1bd7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xa9
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x32
	.4byte	.LVL87
	.4byte	0x2548
	.4byte	0x1bfc
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x2f
	.4byte	.LVL88
	.4byte	0x244c
	.byte	0
	.byte	0x47
	.4byte	.LASF218
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d50
	.byte	0x38
	.string	"arg"
	.byte	0x1
	.byte	0x83
	.byte	0x17
	.4byte	0x144
	.4byte	.LLST0
	.byte	0x30
	.4byte	.LVL2
	.4byte	0x2554
	.4byte	0x1c3f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL3
	.4byte	0x23ea
	.4byte	0x1c57
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL4
	.4byte	0x23d2
	.4byte	0x1c6b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x30
	.4byte	.LVL5
	.4byte	0x23d2
	.4byte	0x1c7f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x30
	.4byte	.LVL6
	.4byte	0x23d2
	.4byte	0x1c93
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0x30
	.4byte	.LVL7
	.4byte	0x23d2
	.4byte	0x1ca7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x30
	.4byte	.LVL8
	.4byte	0x2459
	.4byte	0x1cbc
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x30
	.4byte	.LVL9
	.4byte	0x23d2
	.4byte	0x1cd0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x30
	.4byte	.LVL10
	.4byte	0x23d2
	.4byte	0x1ce4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x4b
	.byte	0
	.byte	0x30
	.4byte	.LVL11
	.4byte	0x23d2
	.4byte	0x1cf8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0x2f
	.4byte	.LVL12
	.4byte	0x23d2
	.byte	0x2f
	.4byte	.LVL13
	.4byte	0x23ea
	.byte	0x2f
	.4byte	.LVL14
	.4byte	0x23d2
	.byte	0x30
	.4byte	.LVL15
	.4byte	0x23ea
	.4byte	0x1d2b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL16
	.4byte	0x2554
	.4byte	0x1d40
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x35
	.4byte	.LVL17
	.4byte	0x2554
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	.LASF276
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.byte	0x1
	.byte	0x41
	.4byte	.LASF220
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.byte	0x1
	.byte	0x49
	.4byte	.LASF277
	.byte	0x1
	.byte	0x59
	.byte	0x6
	.byte	0x1
	.4byte	0x1d88
	.byte	0x4a
	.4byte	.LASF221
	.byte	0x1
	.byte	0x59
	.byte	0x1b
	.4byte	0x5e
	.byte	0x4a
	.4byte	.LASF222
	.byte	0x1
	.byte	0x59
	.byte	0x31
	.4byte	0xa8d
	.byte	0
	.byte	0x4b
	.4byte	.LASF278
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.byte	0x1
	.4byte	0x1dae
	.byte	0x4a
	.4byte	.LASF223
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.4byte	0x5e
	.byte	0x4a
	.4byte	.LASF224
	.byte	0x1
	.byte	0x48
	.byte	0x32
	.4byte	0x5f5
	.byte	0
	.byte	0x4c
	.4byte	.LASF279
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.byte	0x1
	.4byte	0x1dca
	.byte	0x4d
	.byte	0x4e
	.4byte	.LASF206
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x97
	.byte	0
	.byte	0
	.byte	0x4f
	.string	"map"
	.byte	0x1
	.byte	0x2e
	.byte	0x6
	.4byte	0x4b
	.byte	0x1
	.4byte	0x1e16
	.byte	0x50
	.string	"x"
	.byte	0x1
	.byte	0x2e
	.byte	0x15
	.4byte	0x52
	.byte	0x4a
	.4byte	.LASF226
	.byte	0x1
	.byte	0x2e
	.byte	0x23
	.4byte	0x52
	.byte	0x4a
	.4byte	.LASF227
	.byte	0x1
	.byte	0x2e
	.byte	0x36
	.4byte	0x52
	.byte	0x4a
	.4byte	.LASF228
	.byte	0x1
	.byte	0x2e
	.byte	0x49
	.4byte	0x52
	.byte	0x4a
	.4byte	.LASF229
	.byte	0x1
	.byte	0x2e
	.byte	0x5d
	.4byte	0x52
	.byte	0
	.byte	0x51
	.4byte	.LASF280
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x960
	.byte	0x3
	.byte	0x52
	.4byte	0x1d88
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f1c
	.byte	0x53
	.4byte	0x1d95
	.4byte	.LLST2
	.byte	0x53
	.4byte	0x1da1
	.4byte	.LLST3
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB77
	.4byte	.LBE77-.LBB77
	.byte	0x1
	.byte	0x4a
	.byte	0x50
	.byte	0x44
	.4byte	0x1d88
	.4byte	.LBB79
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	0x1ed0
	.byte	0x53
	.4byte	0x1d95
	.4byte	.LLST4
	.byte	0x53
	.4byte	0x1da1
	.4byte	.LLST5
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x1
	.byte	0x51
	.byte	0x53
	.byte	0x2f
	.4byte	.LVL34
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL35
	.4byte	0x240f
	.4byte	0x1ebd
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL36
	.4byte	0x2560
	.byte	0x2f
	.4byte	.LVL40
	.4byte	0x244c
	.byte	0
	.byte	0x2f
	.4byte	.LVL27
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL28
	.4byte	0x240f
	.4byte	0x1eff
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x32
	.4byte	.LVL30
	.4byte	0x23f6
	.4byte	0x1f12
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL31
	.4byte	0x244c
	.byte	0
	.byte	0x52
	.4byte	0x1dca
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f59
	.byte	0x53
	.4byte	0x1ddb
	.4byte	.LLST6
	.byte	0x54
	.4byte	0x1de5
	.byte	0x1
	.byte	0x5b
	.byte	0x53
	.4byte	0x1df1
	.4byte	.LLST7
	.byte	0x54
	.4byte	0x1dfd
	.byte	0x1
	.byte	0x5d
	.byte	0x53
	.4byte	0x1e09
	.4byte	.LLST8
	.byte	0
	.byte	0x52
	.4byte	0x1dae
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0x20c5
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1fd4
	.byte	0x55
	.4byte	0x1dbc
	.4byte	.LLST9
	.byte	0x30
	.4byte	.LVL45
	.4byte	0x2466
	.4byte	0x1f9a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL46
	.4byte	0x23de
	.byte	0x2f
	.4byte	.LVL48
	.4byte	0x23de
	.byte	0x30
	.4byte	.LVL58
	.4byte	0x23ea
	.4byte	0x1fc4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x35
	.4byte	.LVL59
	.4byte	0x23f6
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x56
	.4byte	0x1dae
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x33
	.byte	0x6
	.byte	0x57
	.4byte	0x1f6c
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x55
	.4byte	0x1dbc
	.4byte	.LLST10
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB96
	.4byte	.LBE96-.LBB96
	.byte	0x1
	.byte	0x43
	.byte	0x4f
	.byte	0x30
	.4byte	.LVL49
	.4byte	0x23ea
	.4byte	0x201e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL50
	.4byte	0x23f6
	.4byte	0x2031
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL51
	.4byte	0x23de
	.byte	0x2f
	.4byte	.LVL53
	.4byte	0x23de
	.byte	0x2f
	.4byte	.LVL54
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL55
	.4byte	0x240f
	.4byte	0x207b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.byte	0x32
	.4byte	.LVL57
	.4byte	0x2472
	.4byte	0x208e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL61
	.4byte	0x23d2
	.4byte	0x20a1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL62
	.4byte	0x23ea
	.4byte	0x20b9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL63
	.4byte	0x244c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x52
	.4byte	0x1d62
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0x219f
	.byte	0x53
	.4byte	0x1d6f
	.4byte	.LLST11
	.byte	0x53
	.4byte	0x1d7b
	.4byte	.LLST12
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB113
	.4byte	.LBE113-.LBB113
	.byte	0x1
	.byte	0x5e
	.byte	0x54
	.byte	0x44
	.4byte	0x1d62
	.4byte	.LBB115
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x59
	.byte	0x6
	.4byte	0x216c
	.byte	0x53
	.4byte	0x1d6f
	.4byte	.LLST13
	.byte	0x53
	.4byte	0x1d7b
	.4byte	.LLST14
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x1
	.byte	0x61
	.byte	0x52
	.byte	0x2f
	.4byte	.LVL71
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL72
	.4byte	0x240f
	.4byte	0x2159
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x58
	.4byte	.LVL73
	.4byte	0x1dae
	.byte	0x2f
	.4byte	.LVL74
	.4byte	0x244c
	.byte	0
	.byte	0x2f
	.4byte	.LVL66
	.4byte	0x2402
	.byte	0x32
	.4byte	.LVL67
	.4byte	0x240f
	.4byte	0x2195
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2f
	.4byte	.LVL68
	.4byte	0x244c
	.byte	0
	.byte	0x52
	.4byte	0x1d59
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x1
	.byte	0x9c
	.4byte	0x2228
	.byte	0x59
	.4byte	0x1d59
	.4byte	.LBB123
	.4byte	.LBE123-.LBB123
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.4byte	0x220f
	.byte	0x30
	.4byte	.LVL76
	.4byte	0x23f6
	.4byte	0x21d9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL77
	.4byte	0x23f6
	.4byte	0x21ec
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x30
	.4byte	.LVL78
	.4byte	0x23f6
	.4byte	0x21ff
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x35
	.4byte	.LVL79
	.4byte	0x23f6
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x58
	.4byte	.LVL80
	.4byte	0x23f6
	.byte	0x35
	.4byte	.LVL81
	.4byte	0x23f6
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x52
	.4byte	0x1d50
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0x2289
	.byte	0x44
	.4byte	0x1d50
	.4byte	.LBB127
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	0x2277
	.byte	0x30
	.4byte	.LVL83
	.4byte	0x23d2
	.4byte	0x2262
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x5a
	.4byte	.LVL84
	.4byte	0x23ea
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x5a
	.4byte	.LVL82
	.4byte	0x23d2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x320
	.byte	0
	.byte	0
	.byte	0x52
	.4byte	0x1a9e
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x23ae
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.byte	0x1
	.byte	0xc6
	.byte	0x5b
	.byte	0x44
	.4byte	0x1a9e
	.4byte	.LBB178
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xbb
	.byte	0x6
	.4byte	0x2341
	.byte	0x40
	.4byte	0x1e16
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.byte	0x1
	.byte	0xd8
	.byte	0x66
	.byte	0x2f
	.4byte	.LVL191
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL192
	.4byte	0x240f
	.4byte	0x2308
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd8
	.byte	0
	.byte	0x30
	.4byte	.LVL193
	.4byte	0x2466
	.4byte	0x2324
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x32
	.4byte	.LVL194
	.4byte	0x2472
	.4byte	0x2337
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL196
	.4byte	0x244c
	.byte	0
	.byte	0x30
	.4byte	.LVL187
	.4byte	0x256c
	.4byte	0x2354
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x30
	.4byte	.LVL188
	.4byte	0x23ea
	.4byte	0x236c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL189
	.4byte	0x2402
	.byte	0x30
	.4byte	.LVL190
	.4byte	0x240f
	.4byte	0x23a4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xc6
	.byte	0
	.byte	0x2f
	.4byte	.LVL195
	.4byte	0x244c
	.byte	0
	.byte	0x5b
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xb
	.byte	0x36
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xb
	.byte	0x37
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x11
	.byte	0x28
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x11
	.byte	0x2e
	.byte	0x9
	.byte	0x5b
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x13
	.byte	0x2e
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x11
	.byte	0x27
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x14
	.2byte	0x558
	.byte	0xc
	.byte	0x5b
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x15
	.byte	0x9e
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x10
	.byte	0x12
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x10
	.byte	0x13
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x10
	.byte	0x14
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x14
	.2byte	0x14a
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x14
	.2byte	0x547
	.byte	0xc
	.byte	0x5c
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x14
	.2byte	0x2f6
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x16
	.byte	0x21
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x16
	.byte	0x22
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x11
	.byte	0x2d
	.byte	0x9
	.byte	0x5b
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x17
	.byte	0x29
	.byte	0x8
	.byte	0x5b
	.4byte	.LASF249
	.4byte	.LASF249
	.byte	0x10
	.byte	0x10
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0x12
	.byte	0x1b
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x18
	.byte	0x1c
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x18
	.byte	0x18
	.byte	0x5
	.byte	0x5d
	.4byte	.LASF255
	.4byte	.LASF257
	.byte	0x19
	.byte	0
	.byte	0x5b
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x17
	.byte	0x2c
	.byte	0x7
	.byte	0x5b
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x12
	.byte	0x1a
	.byte	0x6
	.byte	0x5d
	.4byte	.LASF256
	.4byte	.LASF258
	.byte	0x19
	.byte	0
	.byte	0x5b
	.4byte	.LASF259
	.4byte	.LASF259
	.byte	0x12
	.byte	0x15
	.byte	0xe
	.byte	0x5b
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0x17
	.byte	0x21
	.byte	0x8
	.byte	0x5b
	.4byte	.LASF260
	.4byte	.LASF260
	.byte	0x17
	.byte	0x23
	.byte	0x7
	.byte	0x5b
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x17
	.byte	0x24
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x17
	.byte	0x26
	.byte	0x7
	.byte	0x5b
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x8
	.byte	0x51
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x1a
	.byte	0x27
	.byte	0x9
	.byte	0x5b
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x1a
	.byte	0x23
	.byte	0x5
	.byte	0x5b
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x11
	.byte	0x29
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF267
	.4byte	.LASF267
	.byte	0x10
	.byte	0x11
	.byte	0x6
	.byte	0x5b
	.4byte	.LASF268
	.4byte	.LASF268
	.byte	0x13
	.byte	0x30
	.byte	0x5
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xb
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
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
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x27
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0xd
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
	.byte	0x2e
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
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
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x42
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
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x46
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
	.byte	0x48
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x49
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
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4c
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4d
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x4e
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
	.byte	0x4f
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
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
	.byte	0x50
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
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x53
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x54
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x55
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x56
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
	.byte	0
	.byte	0
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x58
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
	.byte	0x59
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
	.byte	0x5a
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
	.byte	0x5b
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
	.byte	0x5c
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
	.byte	0x5d
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
.LLST26:
	.4byte	.LVL211
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL230
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL197
	.4byte	.LVL198-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL198-1
	.4byte	.LVL204
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL205-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL205-1
	.4byte	.LFE79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL100
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL132
	.4byte	.LVL137
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL163
	.4byte	.LVL183
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL185
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LFE77
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL137
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL183
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x3a
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x3a
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL169
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL185
	.4byte	.LFE77
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0xa
	.byte	0x7a
	.byte	0xb4,0x77
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xc8
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xc8
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x11
	.byte	0x3
	.4byte	data
	.byte	0x6
	.byte	0xa
	.2byte	0x44c
	.byte	0x1c
	.byte	0x8
	.byte	0x64
	.byte	0x1e
	.byte	0x8
	.byte	0xc8
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE75
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LFE69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE69
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE69
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LFE67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL47
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL68-1
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71-1
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL74-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE70
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	0
	.4byte	0
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	.LBB134
	.4byte	.LBE134
	.4byte	.LBB135
	.4byte	.LBE135
	.4byte	.LBB136
	.4byte	.LBE136
	.4byte	.LBB137
	.4byte	.LBE137
	.4byte	.LBB138
	.4byte	.LBE138
	.4byte	0
	.4byte	0
	.4byte	.LBB141
	.4byte	.LBE141
	.4byte	.LBB144
	.4byte	.LBE144
	.4byte	0
	.4byte	0
	.4byte	.LBB153
	.4byte	.LBE153
	.4byte	.LBB157
	.4byte	.LBE157
	.4byte	0
	.4byte	0
	.4byte	.LBB164
	.4byte	.LBE164
	.4byte	.LBB167
	.4byte	.LBE167
	.4byte	0
	.4byte	0
	.4byte	.LBB178
	.4byte	.LBE178
	.4byte	.LBB185
	.4byte	.LBE185
	.4byte	.LBB186
	.4byte	.LBE186
	.4byte	.LBB187
	.4byte	.LBE187
	.4byte	0
	.4byte	0
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF137:
	.string	"level"
.LASF162:
	.string	"_POLL_NUM_TYPES"
.LASF2:
	.string	"int8_t"
.LASF17:
	.string	"_ssize_t"
.LASF13:
	.string	"size_t"
.LASF185:
	.string	"__locale_t"
.LASF21:
	.string	"__value"
.LASF236:
	.string	"motor_g_set_vibrate"
.LASF90:
	.string	"__sf"
.LASF273:
	.string	"user_data"
.LASF57:
	.string	"_read"
.LASF227:
	.string	"in_max"
.LASF251:
	.string	"wifi_init"
.LASF237:
	.string	"xTaskGetTickCountFromISR"
.LASF58:
	.string	"_write"
.LASF3:
	.string	"int32_t"
.LASF102:
	.string	"_asctime_buf"
.LASF84:
	.string	"_cvtlen"
.LASF266:
	.string	"led_power_flash"
.LASF200:
	.string	"vibrate"
.LASF121:
	.string	"_unused"
.LASF31:
	.string	"__tm"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF62:
	.string	"_nbuf"
.LASF32:
	.string	"__tm_sec"
.LASF125:
	.string	"BaseType_t"
.LASF110:
	.string	"_l64a_buf"
.LASF142:
	.string	"_fsymc_info_dolphin"
.LASF128:
	.string	"BLOG_LEVEL_ALL"
.LASF280:
	.string	"xPortIsInsideInterrupt"
.LASF187:
	.string	"DO_BLE_DEVICE_CONNECT"
.LASF66:
	.string	"_lock"
.LASF150:
	.string	"s32_t"
.LASF98:
	.string	"_mult"
.LASF191:
	.string	"CHARGING"
.LASF263:
	.string	"atoi"
.LASF225:
	.string	"wifi_info"
.LASF211:
	.string	"conn"
.LASF239:
	.string	"do_ble_init"
.LASF271:
	.string	"/b-l/dolphin/build_out/dolphin"
.LASF190:
	.string	"DISCHARGE"
.LASF257:
	.string	"__builtin_memcpy"
.LASF18:
	.string	"__wch"
.LASF229:
	.string	"out_max"
.LASF54:
	.string	"_file"
.LASF41:
	.string	"_on_exit_args"
.LASF207:
	.string	"user_main"
.LASF205:
	.string	"key_weakup_pin"
.LASF233:
	.string	"led_status_flash"
.LASF193:
	.string	"ssid"
.LASF113:
	.string	"_mbrlen_state"
.LASF4:
	.string	"long int"
.LASF122:
	.string	"_impure_ptr"
.LASF81:
	.string	"_result_k"
.LASF51:
	.string	"_size"
.LASF258:
	.string	"__builtin_memset"
.LASF264:
	.string	"hal_adc_get_data"
.LASF103:
	.string	"_localtime_buf"
.LASF243:
	.string	"xTaskGetTickCount"
.LASF127:
	.string	"TrapNetCounter"
.LASF181:
	.string	"alloc_data"
.LASF36:
	.string	"__tm_mon"
.LASF143:
	.string	"_fsymf_level_dolphinapp_main"
.LASF279:
	.string	"sleep_start"
.LASF167:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF155:
	.string	"sys_snode_t"
.LASF100:
	.string	"_unused_rand"
.LASF0:
	.string	"signed char"
.LASF6:
	.string	"uint8_t"
.LASF183:
	.string	"net_buf_fixed_cb"
.LASF204:
	.string	"charge_flag"
.LASF7:
	.string	"unsigned char"
.LASF149:
	.string	"ukey_event"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF269:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF140:
	.string	"_fsymc_level_dolphin"
.LASF69:
	.string	"_reent"
.LASF123:
	.string	"_global_impure_ptr"
.LASF184:
	.string	"_Bool"
.LASF139:
	.string	"blog_info_t"
.LASF158:
	.string	"_POLL_TYPE_IGNORE"
.LASF178:
	.string	"alloc"
.LASF91:
	.string	"char"
.LASF256:
	.string	"memset"
.LASF274:
	.string	"ble_reve_cb"
.LASF48:
	.string	"_fns"
.LASF60:
	.string	"_close"
.LASF230:
	.string	"ukey_init"
.LASF176:
	.string	"pool_id"
.LASF210:
	.string	"times"
.LASF134:
	.string	"BLOG_LEVEL_NEVER"
.LASF71:
	.string	"_stdin"
.LASF219:
	.string	"charge_detect"
.LASF136:
	.string	"_blog_info"
.LASF175:
	.string	"flags"
.LASF212:
	.string	"ret_str"
.LASF195:
	.string	"user_ssid_t"
.LASF153:
	.string	"_snode"
.LASF235:
	.string	"bl_gpio_output_set"
.LASF261:
	.string	"strcmp"
.LASF173:
	.string	"node"
.LASF129:
	.string	"BLOG_LEVEL_DEBUG"
.LASF174:
	.string	"frags"
.LASF56:
	.string	"_cookie"
.LASF29:
	.string	"_wds"
.LASF88:
	.string	"_sig_func"
.LASF64:
	.string	"_offset"
.LASF85:
	.string	"_cvtbuf"
.LASF203:
	.string	"discharge_flag"
.LASF163:
	.string	"_poll_states_bits"
.LASF214:
	.string	"shiwei"
.LASF226:
	.string	"in_min"
.LASF165:
	.string	"_POLL_STATE_SIGNALED"
.LASF82:
	.string	"_p5s"
.LASF10:
	.string	"long unsigned int"
.LASF262:
	.string	"strcpy"
.LASF52:
	.string	"__sFILE"
.LASF78:
	.string	"__sdidinit"
.LASF68:
	.string	"_flags2"
.LASF277:
	.string	"key_event_cb"
.LASF146:
	.string	"UKEY_EVEVT_SHORT_PRESS"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF240:
	.string	"do_ble_set_reve_cb"
.LASF70:
	.string	"_errno"
.LASF111:
	.string	"_signal_buf"
.LASF180:
	.string	"net_buf_data_alloc"
.LASF147:
	.string	"UKEY_EVEVT_LONG_PRESS"
.LASF30:
	.string	"_Bigint"
.LASF27:
	.string	"_maxwds"
.LASF79:
	.string	"__cleanup"
.LASF87:
	.string	"_atexit0"
.LASF172:
	.string	"__buf"
.LASF198:
	.string	"light_grade"
.LASF75:
	.string	"_emergency"
.LASF5:
	.string	"long long int"
.LASF94:
	.string	"_niobs"
.LASF220:
	.string	"mada_mode"
.LASF89:
	.string	"__sglue"
.LASF120:
	.string	"_nmalloc"
.LASF104:
	.string	"_gamma_signgam"
.LASF156:
	.string	"_blog_leve"
.LASF189:
	.string	"charge_status"
.LASF213:
	.string	"percent"
.LASF270:
	.string	"/b-l/dolphin/dolphin/app_main.c"
.LASF83:
	.string	"_freelist"
.LASF95:
	.string	"_iobs"
.LASF93:
	.string	"_glue"
.LASF28:
	.string	"_sign"
.LASF208:
	.string	"main_task"
.LASF197:
	.string	"light_flag"
.LASF157:
	.string	"_poll_types_bits"
.LASF169:
	.string	"net_buf_simple"
.LASF160:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF222:
	.string	"event"
.LASF224:
	.string	"addr"
.LASF265:
	.string	"hal_adc_init"
.LASF12:
	.string	"unsigned int"
.LASF152:
	.string	"u16_t"
.LASF118:
	.string	"_h_errno"
.LASF231:
	.string	"ukey_add"
.LASF267:
	.string	"ble_start_advertise"
.LASF116:
	.string	"_wcrtomb_state"
.LASF35:
	.string	"__tm_mday"
.LASF86:
	.string	"_new"
.LASF61:
	.string	"_ubuf"
.LASF73:
	.string	"_stderr"
.LASF109:
	.string	"_wctomb_state"
.LASF67:
	.string	"_mbstate"
.LASF105:
	.string	"_rand_next"
.LASF53:
	.string	"_flags"
.LASF46:
	.string	"_atexit"
.LASF242:
	.string	"xTaskCreate"
.LASF177:
	.string	"net_buf_data_cb"
.LASF20:
	.string	"__count"
.LASF131:
	.string	"BLOG_LEVEL_WARN"
.LASF135:
	.string	"blog_level_t"
.LASF238:
	.string	"bl_printk"
.LASF38:
	.string	"__tm_wday"
.LASF201:
	.string	"ota_time"
.LASF228:
	.string	"out_min"
.LASF39:
	.string	"__tm_yday"
.LASF196:
	.string	"ble_connect"
.LASF97:
	.string	"_seed"
.LASF59:
	.string	"_seek"
.LASF133:
	.string	"BLOG_LEVEL_ASSERT"
.LASF16:
	.string	"_fpos_t"
.LASF19:
	.string	"__wchb"
.LASF192:
	.string	"CHARGEFULL"
.LASF244:
	.string	"vTaskDelay"
.LASF108:
	.string	"_mbtowc_state"
.LASF247:
	.string	"hal_timer_now_s"
.LASF171:
	.string	"size"
.LASF11:
	.string	"long long unsigned int"
.LASF43:
	.string	"_dso_handle"
.LASF96:
	.string	"_rand48"
.LASF72:
	.string	"_stdout"
.LASF272:
	.string	"net_buf"
.LASF179:
	.string	"unref"
.LASF254:
	.string	"flash_ssid_config_write"
.LASF63:
	.string	"_blksize"
.LASF50:
	.string	"_base"
.LASF126:
	.string	"TickType_t"
.LASF101:
	.string	"_strtok_last"
.LASF114:
	.string	"_mbrtowc_state"
.LASF25:
	.string	"_flock_t"
.LASF92:
	.string	"__FILE"
.LASF253:
	.string	"strncpy"
.LASF22:
	.string	"_mbstate_t"
.LASF106:
	.string	"_r48"
.LASF14:
	.string	"wint_t"
.LASF26:
	.string	"_next"
.LASF65:
	.string	"_data"
.LASF161:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF132:
	.string	"BLOG_LEVEL_ERROR"
.LASF130:
	.string	"BLOG_LEVEL_INFO"
.LASF260:
	.string	"strchr"
.LASF159:
	.string	"_POLL_TYPE_SIGNAL"
.LASF199:
	.string	"Grade"
.LASF221:
	.string	"gpio_name"
.LASF278:
	.string	"ble_connect_cb"
.LASF138:
	.string	"name"
.LASF148:
	.string	"UKEY_EVEVT_LONG_PRESS_RELEASE"
.LASF107:
	.string	"_mblen_state"
.LASF1:
	.string	"short int"
.LASF194:
	.string	"password"
.LASF275:
	.string	"adc_init"
.LASF124:
	.string	"suboptarg"
.LASF44:
	.string	"_fntypes"
.LASF37:
	.string	"__tm_year"
.LASF276:
	.string	"ble_light_task"
.LASF144:
	.string	"_fsymf_info_dolphinapp_main"
.LASF209:
	.string	"sleep_task"
.LASF250:
	.string	"flash_storage_init"
.LASF55:
	.string	"_lbfsize"
.LASF74:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF248:
	.string	"strlen"
.LASF246:
	.string	"hal_hbn_enter"
.LASF202:
	.string	"ota_flag"
.LASF49:
	.string	"__sbuf"
.LASF255:
	.string	"memcpy"
.LASF45:
	.string	"_is_cxa"
.LASF119:
	.string	"_nextf"
.LASF259:
	.string	"flash_get_user_ssid_config"
.LASF223:
	.string	"status"
.LASF77:
	.string	"_locale"
.LASF23:
	.string	"__ULong"
.LASF188:
	.string	"DO_BLE_DEVICE_DISCONNECT"
.LASF9:
	.string	"uint32_t"
.LASF80:
	.string	"_result"
.LASF141:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF15:
	.string	"_off_t"
.LASF145:
	.string	"UKEY_EVEVT_PRESS"
.LASF99:
	.string	"_add"
.LASF241:
	.string	"do_ble_set_connect_cb"
.LASF8:
	.string	"short unsigned int"
.LASF34:
	.string	"__tm_hour"
.LASF232:
	.string	"product_init"
.LASF249:
	.string	"do_ble_notify"
.LASF151:
	.string	"u8_t"
.LASF268:
	.string	"bl_gpio_input_get_value"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF216:
	.string	"ota_ret"
.LASF252:
	.string	"wifi_setup_sta"
.LASF206:
	.string	"time"
.LASF182:
	.string	"net_buf_heap_alloc"
.LASF164:
	.string	"_POLL_STATE_NOT_READY"
.LASF42:
	.string	"_fnargs"
.LASF40:
	.string	"__tm_isdst"
.LASF166:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF154:
	.string	"next"
.LASF245:
	.string	"hal_hbn_init"
.LASF170:
	.string	"data"
.LASF215:
	.string	"gewei"
.LASF33:
	.string	"__tm_min"
.LASF217:
	.string	"get_battery"
.LASF112:
	.string	"_getdate_err"
.LASF218:
	.string	"light_task"
.LASF186:
	.string	"bt_conn"
.LASF168:
	.string	"_POLL_NUM_STATES"
.LASF234:
	.string	"hal_timer_now_ms"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
