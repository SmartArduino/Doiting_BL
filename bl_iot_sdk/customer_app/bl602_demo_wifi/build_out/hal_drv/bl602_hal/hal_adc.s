	.file	"hal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.check_adc_gpio_valid,"ax",@progbits
	.align	1
	.type	check_adc_gpio_valid, @function
check_adc_gpio_valid:
.LFB23:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
	.loc 1 36 1
	.cfi_startproc
.LVL0:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 38 9
	li	a5,4
	sw	a5,0(sp)
	li	a5,5
	sw	a5,4(sp)
	li	a5,6
	sw	a5,8(sp)
	li	a5,9
	sw	a5,12(sp)
	li	a5,10
	sw	a5,16(sp)
	li	a5,11
	sw	a5,20(sp)
	li	a5,12
	sw	a5,24(sp)
	li	a5,13
	sw	a5,28(sp)
	li	a5,14
	sw	a5,32(sp)
	li	a5,15
	sw	a5,36(sp)
	.loc 1 40 5 is_stmt 1
.LVL1:
	.loc 1 38 9 is_stmt 0
	sw	zero,40(sp)
	sw	zero,44(sp)
	mv	a5,sp
	addi	a4,sp,40
.LVL2:
.L3:
	.loc 1 41 9 is_stmt 1
	.loc 1 41 12 is_stmt 0
	lw	a3,0(a5)
	beq	a3,a0,.L4
	addi	a5,a5,4
	.loc 1 40 5 discriminator 2
	bne	a5,a4,.L3
	.loc 1 46 12
	li	a0,-1
.LVL3:
.L1:
	.loc 1 47 1
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L4:
	.cfi_restore_state
	.loc 1 42 20
	li	a0,0
.LVL5:
	j	.L1
	.cfi_endproc
.LFE23:
	.size	check_adc_gpio_valid, .-check_adc_gpio_valid
	.section	.text.adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.type	adc_get_channel_by_gpio, @function
adc_get_channel_by_gpio:
.LFB24:
	.loc 1 50 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 51 5
	.loc 1 53 5
	.loc 1 53 8 is_stmt 0
	li	a5,4
	beq	a0,a5,.L9
	.loc 1 55 12 is_stmt 1
	.loc 1 55 15 is_stmt 0
	li	a4,5
	beq	a0,a4,.L7
	.loc 1 57 12 is_stmt 1
	.loc 1 57 15 is_stmt 0
	li	a4,6
	.loc 1 58 17
	li	a5,5
	.loc 1 57 15
	beq	a0,a4,.L7
	.loc 1 59 12 is_stmt 1
	.loc 1 59 15 is_stmt 0
	li	a4,9
	.loc 1 60 17
	li	a5,7
	.loc 1 59 15
	beq	a0,a4,.L7
	.loc 1 61 12 is_stmt 1
	.loc 1 61 15 is_stmt 0
	li	a4,10
	.loc 1 62 17
	li	a5,9
	.loc 1 61 15
	beq	a0,a4,.L7
	.loc 1 63 12 is_stmt 1
	.loc 1 63 15 is_stmt 0
	li	a4,11
	.loc 1 64 17
	li	a5,10
	.loc 1 63 15
	beq	a0,a4,.L7
	.loc 1 65 12 is_stmt 1
	.loc 1 65 15 is_stmt 0
	li	a4,12
	.loc 1 66 17
	li	a5,0
	.loc 1 65 15
	beq	a0,a4,.L7
	.loc 1 67 12 is_stmt 1
	.loc 1 67 15 is_stmt 0
	li	a4,13
	.loc 1 68 17
	li	a5,3
	.loc 1 67 15
	beq	a0,a4,.L7
.LVL7:
.LBB16:
.LBB17:
	.loc 1 69 12 is_stmt 1
	.loc 1 69 15 is_stmt 0
	li	a4,14
	.loc 1 70 17
	li	a5,2
	.loc 1 69 15
	beq	a0,a4,.L7
	.loc 1 71 12 is_stmt 1
	.loc 1 71 15 is_stmt 0
	li	a4,15
	.loc 1 72 17
	li	a5,11
	.loc 1 71 15
	beq	a0,a4,.L7
	.loc 1 74 16
	li	a5,-1
.LVL8:
.L7:
.LBE17:
.LBE16:
	.loc 1 78 1
	mv	a0,a5
.LVL9:
	ret
.LVL10:
.L9:
	.loc 1 54 17
	li	a5,1
	j	.L7
	.cfi_endproc
.LFE24:
	.size	adc_get_channel_by_gpio, .-adc_get_channel_by_gpio
	.section	.text.hal_adc_init,"ax",@progbits
	.align	1
	.globl	hal_adc_init
	.type	hal_adc_init, @function
hal_adc_init:
.LFB25:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 83 5
	.loc 1 85 5
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 85 26
	addi	a4,a0,-10
	.loc 1 85 8
	li	a5,140
	bleu	a4,a5,.L20
	.loc 1 86 9 is_stmt 1 discriminator 1
	.loc 1 86 47 discriminator 1
	.loc 1 86 52 discriminator 1
	.loc 1 86 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 86 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bleu	a4,a5,.L21
.LVL12:
.L31:
	.loc 1 98 16 discriminator 10
	li	a0,-1
.L19:
	.loc 1 104 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L21:
	.cfi_restore_state
	.loc 1 86 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 86 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L31
	.loc 1 86 157 is_stmt 1
.LBB18:
.LBB19:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE19:
.LBE18:
	.loc 1 86 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L24
	.loc 1 86 260 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL14:
.L25:
	.loc 1 86 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	li	a4,86
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
.L30:
	.loc 1 96 157 discriminator 10
	call	bl_printk
.LVL15:
	j	.L31
.LVL16:
.L24:
	.loc 1 86 289 discriminator 8
	call	xTaskGetTickCount
.LVL17:
	j	.L25
.LVL18:
.L20:
	.loc 1 91 5 is_stmt 1
	call	bl_adc_clock_init
.LVL19:
	.loc 1 92 5
	call	bl_adc_init
.LVL20:
	.loc 1 94 5
	.loc 1 94 11 is_stmt 0
	call	bl_adc_dma_init
.LVL21:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	bge	a0,zero,.L26
	.loc 1 96 9 is_stmt 1 discriminator 1
	.loc 1 96 47 discriminator 1
	.loc 1 96 52 discriminator 1
	.loc 1 96 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 96 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L31
	.loc 1 96 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 96 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L31
	.loc 1 96 157 is_stmt 1
.LBB20:
.LBB21:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE21:
.LBE20:
	.loc 1 96 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L27
	.loc 1 96 241 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL22:
.L28:
	.loc 1 96 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC3)
	li	a4,96
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
	j	.L30
.LVL23:
.L27:
	.loc 1 96 270 discriminator 8
	call	xTaskGetTickCount
.LVL24:
	j	.L28
.LVL25:
.L26:
	.loc 1 101 5 is_stmt 1
	call	bl_adc_start
.LVL26:
	.loc 1 103 5
	.loc 1 103 12 is_stmt 0
	li	a0,0
	j	.L19
	.cfi_endproc
.LFE25:
	.size	hal_adc_init, .-hal_adc_init
	.section	.text.hal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hal_adc_add_channel
	.type	hal_adc_add_channel, @function
hal_adc_add_channel:
.LFB26:
	.loc 1 107 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 108 5
	.loc 1 109 5
	.loc 1 110 5
	.loc 1 112 5
	.loc 1 107 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 107 1
	mv	s0,a0
	.loc 1 112 11
	call	check_adc_gpio_valid
.LVL28:
	.loc 1 113 5 is_stmt 1
	.loc 1 113 8 is_stmt 0
	bge	a0,zero,.L33
	.loc 1 114 9 is_stmt 1 discriminator 1
	.loc 1 114 47 discriminator 1
	.loc 1 114 52 discriminator 1
	.loc 1 114 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 114 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	.loc 1 116 16 discriminator 1
	li	a0,-1
.LVL29:
	.loc 1 114 55 discriminator 1
	bgtu	a4,a5,.L32
	.loc 1 114 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 114 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L32
	.loc 1 114 157 is_stmt 1
.LBB22:
.LBB23:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE23:
.LBE22:
	.loc 1 114 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L35
	.loc 1 114 293 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL30:
.L36:
	.loc 1 114 157 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	li	a4,114
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL31:
	.loc 1 116 16 discriminator 10
	li	a0,-1
.LVL32:
.L32:
	.loc 1 125 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L35:
	.cfi_restore_state
	.loc 1 114 322 discriminator 8
	call	xTaskGetTickCount
.LVL34:
	j	.L36
.LVL35:
.L33:
	.loc 1 119 5 is_stmt 1
	mv	a0,s0
.LVL36:
	call	bl_adc_gpio_init
.LVL37:
	.loc 1 120 5
	.loc 1 120 15 is_stmt 0
	mv	a0,s0
	call	adc_get_channel_by_gpio
.LVL38:
	mv	s0,a0
.LVL39:
	.loc 1 121 5 is_stmt 1
	.loc 1 121 14 is_stmt 0
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL40:
	.loc 1 122 5 is_stmt 1
	.loc 1 122 60 is_stmt 0
	li	a5,1
	sll	a4,a5,s0
	.loc 1 122 55
	lw	a5,12(a0)
	or	a5,a5,a4
	.loc 1 122 29
	sw	a5,12(a0)
	.loc 1 124 5 is_stmt 1
	.loc 1 124 12 is_stmt 0
	li	a0,0
.LVL41:
	j	.L32
	.cfi_endproc
.LFE26:
	.size	hal_adc_add_channel, .-hal_adc_add_channel
	.section	.text.hal_adc_get_data,"ax",@progbits
	.align	1
	.globl	hal_adc_get_data
	.type	hal_adc_get_data, @function
hal_adc_get_data:
.LFB27:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 129 5
	.loc 1 130 5
	.loc 1 131 5
	.loc 1 132 5
	.loc 1 133 5
	.loc 1 135 5
	.loc 1 128 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 128 1
	mv	s2,a0
	.loc 1 135 11
	call	check_adc_gpio_valid
.LVL43:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 8 is_stmt 0
	bge	a0,zero,.L41
	.loc 1 137 9 is_stmt 1 discriminator 1
	.loc 1 137 47 discriminator 1
	.loc 1 137 52 discriminator 1
	.loc 1 137 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 137 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bleu	a4,a5,.L42
.LVL44:
.L54:
	.loc 1 152 16 discriminator 10
	li	a0,-1
.L40:
	.loc 1 160 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL45:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L42:
	.cfi_restore_state
	.loc 1 137 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 137 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L54
	.loc 1 137 157 is_stmt 1
.LBB24:
.LBB25:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE25:
.LBE24:
	.loc 1 137 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L45
	.loc 1 137 293 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL47:
.L46:
	.loc 1 137 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC4)
	li	a4,137
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
.L55:
	.loc 1 144 157 discriminator 10
	call	bl_printk
.LVL48:
	j	.L54
.LVL49:
.L45:
	.loc 1 137 322 discriminator 8
	call	xTaskGetTickCount
.LVL50:
	j	.L46
.LVL51:
.L41:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 14 is_stmt 0
	li	a0,1
.LVL52:
	call	bl_dma_find_ctx_by_channel
.LVL53:
	mv	s0,a0
.LVL54:
	.loc 1 143 5 is_stmt 1
	.loc 1 143 8 is_stmt 0
	bne	a0,zero,.L47
	.loc 1 144 9 is_stmt 1 discriminator 1
	.loc 1 144 47 discriminator 1
	.loc 1 144 52 discriminator 1
	.loc 1 144 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 144 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L54
	.loc 1 144 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 144 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L54
	.loc 1 144 157 is_stmt 1
.LBB26:
.LBB27:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE27:
.LBE26:
	.loc 1 144 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L48
	.loc 1 144 239 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL55:
.L49:
	.loc 1 144 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC5)
	li	a4,144
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
	j	.L55
.L48:
	.loc 1 144 268 discriminator 8
	call	xTaskGetTickCount
.LVL56:
	j	.L49
.L47:
	.loc 1 149 5 is_stmt 1
	.loc 1 149 15 is_stmt 0
	mv	a0,s2
	call	adc_get_channel_by_gpio
.LVL57:
	.loc 1 150 25
	lw	a4,12(s0)
	.loc 1 150 13
	li	a5,1
	sll	a5,a5,a0
	.loc 1 150 25
	and	a5,a5,a4
	.loc 1 149 15
	mv	s1,a0
.LVL58:
	.loc 1 150 5 is_stmt 1
	.loc 1 150 8 is_stmt 0
	bne	a5,zero,.L50
	.loc 1 151 9 is_stmt 1 discriminator 1
	.loc 1 151 47 discriminator 1
	.loc 1 151 52 discriminator 1
	.loc 1 151 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 151 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L54
	.loc 1 151 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 151 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L54
	.loc 1 151 157 is_stmt 1
.LBB28:
.LBB29:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE29:
.LBE28:
	.loc 1 151 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L51
	.loc 1 151 252 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL59:
.L52:
	.loc 1 151 157 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC6)
	mv	a5,s2
	li	a4,151
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL60:
	j	.L54
.L51:
	.loc 1 151 281 discriminator 8
	call	xTaskGetTickCount
.LVL61:
	j	.L52
.L50:
	.loc 1 155 5 is_stmt 1
	lw	a1,0(s0)
	li	a2,48
	mv	a0,sp
	call	memcpy
.LVL62:
	.loc 1 157 5
	.loc 1 157 12 is_stmt 0
	mv	a2,s1
	li	a1,12
	mv	a0,sp
	call	bl_adc_parse_data
.LVL63:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 12 is_stmt 0
	j	.L40
	.cfi_endproc
.LFE27:
	.size	hal_adc_get_data, .-hal_adc_get_data
	.globl	_fsymf_info_hal_drvhal_adc
	.comm	_fsymf_level_hal_drvhal_adc,1,1
	.comm	_fsymc_level_hal_drv,1,1
	.section	.rodata.hal_adc_add_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] not legal gpio num, adc only support gpio 4,5,6,9,10,11,12,13,14,15 \r\n"
	.section	.rodata.hal_adc_get_data.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] get ctx error \r\n"
.LC6:
	.string	"[%10u][%s: %s:%4d] gpio = %d  not init as adc \r\n"
	.section	.rodata.hal_adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hal_adc.c"
	.zero	2
.LC1:
	.string	"\033[31mERROR \033[0m"
.LC2:
	.string	"[%10u][%s: %s:%4d] sampling only support 10ms ~ 150ms \r\n"
	.zero	3
.LC3:
	.string	"[%10u][%s: %s:%4d] adc init failed \r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"hal_drv.hal_adc"
.LC8:
	.string	"hal_drv"
	.section	.sdata2.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hal_drv,"a"
	.align	2
	.type	_fsymc_info_hal_drv, @object
	.size	_fsymc_info_hal_drv, 8
_fsymc_info_hal_drv:
	.word	_fsymc_level_hal_drv
	.word	.LC8
	.section	.static_blogfile_code.hal_drvhal_adc,"a"
	.align	2
	.type	_fsymf_info_hal_drvhal_adc, @object
	.size	_fsymf_info_hal_drvhal_adc, 8
_fsymf_info_hal_drvhal_adc:
	.word	_fsymf_level_hal_drvhal_adc
	.word	.LC7
	.text
.Letext0:
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf23
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x78
	.byte	0x4
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x86
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0xe7
	.byte	0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x94
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xe7
	.byte	0
	.byte	0x9
	.4byte	0x59
	.4byte	0xf7
	.byte	0xa
	.4byte	0x8d
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x11b
	.byte	0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xc5
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xf7
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x78
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x135
	.byte	0xe
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1a7
	.byte	0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1a7
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x86
	.byte	0xc
	.byte	0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x86
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1ad
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x14d
	.byte	0x9
	.4byte	0x129
	.4byte	0x1bd
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x240
	.byte	0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x86
	.byte	0xc
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x86
	.byte	0x10
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x86
	.byte	0x14
	.byte	0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x86
	.byte	0x18
	.byte	0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x86
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x86
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x285
	.byte	0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x285
	.byte	0
	.byte	0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x285
	.byte	0x80
	.byte	0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x129
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x129
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x127
	.4byte	0x295
	.byte	0xa
	.4byte	0x8d
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2d8
	.byte	0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2d8
	.byte	0
	.byte	0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2de
	.byte	0x8
	.byte	0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x240
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x295
	.byte	0x9
	.4byte	0x2ee
	.4byte	0x2ee
	.byte	0xa
	.4byte	0x8d
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2f4
	.byte	0x13
	.byte	0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x31d
	.byte	0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x31d
	.byte	0
	.byte	0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x86
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x59
	.byte	0xe
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x466
	.byte	0xf
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x31d
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f5
	.byte	0x10
	.byte	0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x86
	.byte	0x18
	.byte	0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x127
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x5ea
	.byte	0x20
	.byte	0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x614
	.byte	0x24
	.byte	0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x638
	.byte	0x28
	.byte	0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x652
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f5
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x31d
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x86
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x658
	.byte	0x40
	.byte	0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x668
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f5
	.byte	0x44
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x86
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xa1
	.byte	0x50
	.byte	0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x484
	.byte	0x54
	.byte	0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x141
	.byte	0x58
	.byte	0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x11b
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x86
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xb9
	.4byte	0x484
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x5d8
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x48f
	.byte	0x4
	.4byte	0x484
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d8
	.byte	0x17
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6c4
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6c4
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6c4
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x86
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8c4
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x86
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d9
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x86
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8ea
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a7
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x86
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a7
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8f0
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x86
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d8
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89f
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d8
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x295
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x901
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x685
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x90d
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5de
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x4
	.4byte	0x5de
	.byte	0x10
	.byte	0x4
	.4byte	0x466
	.byte	0x14
	.4byte	0xb9
	.4byte	0x60e
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x60e
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5e5
	.byte	0x10
	.byte	0x4
	.4byte	0x5f0
	.byte	0x14
	.4byte	0xad
	.4byte	0x638
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0xad
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x61a
	.byte	0x14
	.4byte	0x86
	.4byte	0x652
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x63e
	.byte	0x9
	.4byte	0x59
	.4byte	0x668
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x59
	.4byte	0x678
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x323
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6be
	.byte	0x17
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6be
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6c4
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x685
	.byte	0x10
	.byte	0x4
	.4byte	0x678
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x703
	.byte	0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x703
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x703
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x60
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x60
	.4byte	0x713
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x828
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x8d
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d8
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x828
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1bd
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x86
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7f
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6ca
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x11b
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x11b
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x11b
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x838
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x848
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x86
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x11b
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x11b
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x11b
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x11b
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x11b
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x86
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x838
	.byte	0xa
	.4byte	0x8d
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x848
	.byte	0xa
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x858
	.byte	0xa
	.4byte	0x8d
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87f
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87f
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88f
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x31d
	.4byte	0x88f
	.byte	0xa
	.4byte	0x8d
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x8d
	.4byte	0x89f
	.byte	0xa
	.4byte	0x8d
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8c4
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x713
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x858
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x8d4
	.byte	0xa
	.4byte	0x8d
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF171
	.byte	0x10
	.byte	0x4
	.4byte	0x8d4
	.byte	0x1e
	.4byte	0x8ea
	.byte	0x15
	.4byte	0x484
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8df
	.byte	0x10
	.byte	0x4
	.4byte	0x1a7
	.byte	0x1e
	.4byte	0x901
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x907
	.byte	0x10
	.byte	0x4
	.4byte	0x8f6
	.byte	0x9
	.4byte	0x678
	.4byte	0x91d
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x484
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x48a
	.byte	0x3
	.4byte	.LASF122
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x33
	.byte	0x20
	.4byte	.LASF123
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x937
	.byte	0x21
	.4byte	.LASF172
	.byte	0x7
	.byte	0x1
	.4byte	0x59
	.byte	0x8
	.byte	0x21
	.byte	0xe
	.4byte	0x98c
	.byte	0x22
	.4byte	.LASF124
	.byte	0
	.byte	0x22
	.4byte	.LASF125
	.byte	0x1
	.byte	0x22
	.4byte	.LASF126
	.byte	0x2
	.byte	0x22
	.4byte	.LASF127
	.byte	0x3
	.byte	0x22
	.4byte	.LASF128
	.byte	0x4
	.byte	0x22
	.4byte	.LASF129
	.byte	0x5
	.byte	0x22
	.4byte	.LASF130
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0x29
	.byte	0x3
	.4byte	0x94f
	.byte	0xe
	.4byte	.LASF132
	.byte	0x8
	.byte	0x8
	.byte	0x2b
	.byte	0x10
	.4byte	0x9c0
	.byte	0xc
	.4byte	.LASF133
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x9c0
	.byte	0
	.byte	0xc
	.4byte	.LASF134
	.byte	0x8
	.byte	0x2d
	.byte	0xb
	.4byte	0x5d8
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x98c
	.byte	0x3
	.4byte	.LASF135
	.byte	0x8
	.byte	0x2e
	.byte	0x3
	.4byte	0x998
	.byte	0x4
	.4byte	0x9c6
	.byte	0x23
	.4byte	.LASF137
	.byte	0x9
	.byte	0x37
	.byte	0x17
	.4byte	0x73
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF136
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.4byte	0x98c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hal_drv
	.byte	0x23
	.4byte	.LASF138
	.byte	0x9
	.byte	0x45
	.byte	0x1a
	.4byte	0x9d2
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hal_drv
	.byte	0x24
	.4byte	.LASF139
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x98c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hal_drvhal_adc
	.byte	0x24
	.4byte	.LASF140
	.byte	0x9
	.byte	0x53
	.byte	0x13
	.4byte	0x9d2
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hal_drvhal_adc
	.byte	0xe
	.4byte	.LASF141
	.byte	0x10
	.byte	0xa
	.byte	0x24
	.byte	0x10
	.4byte	0xa73
	.byte	0xc
	.4byte	.LASF142
	.byte	0xa
	.byte	0x25
	.byte	0xf
	.4byte	0xa73
	.byte	0
	.byte	0xc
	.4byte	.LASF143
	.byte	0xa
	.byte	0x26
	.byte	0xb
	.4byte	0x127
	.byte	0x4
	.byte	0xc
	.4byte	.LASF144
	.byte	0xa
	.byte	0x27
	.byte	0x9
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF145
	.byte	0xa
	.byte	0x28
	.byte	0xe
	.4byte	0x67
	.byte	0xc
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF146
	.byte	0xa
	.byte	0x29
	.byte	0x2
	.4byte	0xa31
	.byte	0x25
	.4byte	.LASF151
	.byte	0x1
	.byte	0x7f
	.byte	0x9
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0e
	.byte	0x26
	.4byte	.LASF153
	.byte	0x1
	.byte	0x7f
	.byte	0x1e
	.4byte	0x86
	.4byte	.LLST9
	.byte	0x27
	.string	"ret"
	.byte	0x1
	.byte	0x81
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST10
	.byte	0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0x82
	.byte	0x10
	.4byte	0xc0e
	.byte	0x1
	.byte	0x58
	.byte	0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x83
	.byte	0xe
	.4byte	0xc14
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x23
	.4byte	.LASF149
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.4byte	.LASF150
	.byte	0x1
	.byte	0x85
	.byte	0x9
	.4byte	0x86
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.4byte	0xe48
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x89
	.2byte	0x10a
	.byte	0x29
	.4byte	0xe48
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x90
	.byte	0xd4
	.byte	0x29
	.4byte	0xe48
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x97
	.byte	0xe1
	.byte	0x2a
	.4byte	.LVL43
	.4byte	0xdf0
	.4byte	0xb3d
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL47
	.4byte	0xea0
	.byte	0x2c
	.4byte	.LVL48
	.4byte	0xead
	.byte	0x2c
	.4byte	.LVL50
	.4byte	0xeb9
	.byte	0x2a
	.4byte	.LVL53
	.4byte	0xec6
	.4byte	0xb6b
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2c
	.4byte	.LVL55
	.4byte	0xea0
	.byte	0x2c
	.4byte	.LVL56
	.4byte	0xeb9
	.byte	0x2a
	.4byte	.LVL57
	.4byte	0xdc6
	.4byte	0xb91
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL59
	.4byte	0xea0
	.byte	0x2a
	.4byte	.LVL60
	.4byte	0xead
	.4byte	0xbcf
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2b
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x97
	.byte	0x2b
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL61
	.4byte	0xeb9
	.byte	0x2a
	.4byte	.LVL62
	.4byte	0xed2
	.4byte	0xbf2
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x2d
	.4byte	.LVL63
	.4byte	0xede
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xa79
	.byte	0x9
	.4byte	0x67
	.4byte	0xc24
	.byte	0xa
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.byte	0x25
	.4byte	.LASF152
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xd1a
	.byte	0x26
	.4byte	.LASF153
	.byte	0x1
	.byte	0x6a
	.byte	0x1d
	.4byte	0x86
	.4byte	.LLST6
	.byte	0x27
	.string	"ret"
	.byte	0x1
	.byte	0x6c
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST7
	.byte	0x2e
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6d
	.byte	0x10
	.4byte	0xc0e
	.4byte	.LLST8
	.byte	0x23
	.4byte	.LASF150
	.byte	0x1
	.byte	0x6e
	.byte	0x9
	.4byte	0x86
	.byte	0x1
	.byte	0x58
	.byte	0x28
	.4byte	0xe48
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x72
	.2byte	0x10a
	.byte	0x2a
	.4byte	.LVL28
	.4byte	0xdf0
	.4byte	0xca1
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL30
	.4byte	0xea0
	.byte	0x2a
	.4byte	.LVL31
	.4byte	0xead
	.4byte	0xcd9
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2b
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x72
	.byte	0
	.byte	0x2c
	.4byte	.LVL34
	.4byte	0xeb9
	.byte	0x2a
	.4byte	.LVL37
	.4byte	0xeea
	.4byte	0xcf6
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LVL38
	.4byte	0xdc6
	.4byte	0xd0a
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL40
	.4byte	0xec6
	.byte	0x2b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF154
	.byte	0x1
	.byte	0x51
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xdc6
	.byte	0x26
	.4byte	.LASF155
	.byte	0x1
	.byte	0x51
	.byte	0x16
	.4byte	0x86
	.4byte	.LLST4
	.byte	0x27
	.string	"ret"
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST5
	.byte	0x29
	.4byte	0xe48
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x56
	.byte	0xe9
	.byte	0x29
	.4byte	0xe48
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x60
	.byte	0xd6
	.byte	0x2c
	.4byte	.LVL14
	.4byte	0xea0
	.byte	0x2c
	.4byte	.LVL15
	.4byte	0xead
	.byte	0x2c
	.4byte	.LVL17
	.4byte	0xeb9
	.byte	0x2c
	.4byte	.LVL19
	.4byte	0xef6
	.byte	0x2c
	.4byte	.LVL20
	.4byte	0xf02
	.byte	0x2c
	.4byte	.LVL21
	.4byte	0xf0e
	.byte	0x2c
	.4byte	.LVL22
	.4byte	0xea0
	.byte	0x2c
	.4byte	.LVL24
	.4byte	0xeb9
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0xf1a
	.byte	0
	.byte	0x2f
	.4byte	.LASF173
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.4byte	0x86
	.byte	0x1
	.4byte	0xdf0
	.byte	0x30
	.4byte	.LASF153
	.byte	0x1
	.byte	0x31
	.byte	0x28
	.4byte	0x86
	.byte	0x31
	.4byte	.LASF150
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x86
	.byte	0
	.byte	0x32
	.4byte	.LASF174
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x86
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xe38
	.byte	0x26
	.4byte	.LASF153
	.byte	0x1
	.byte	0x23
	.byte	0x25
	.4byte	0x86
	.4byte	.LLST0
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST1
	.byte	0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0xe38
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x9
	.4byte	0x86
	.4byte	0xe48
	.byte	0xa
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.byte	0x33
	.4byte	.LASF175
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x937
	.byte	0x3
	.byte	0x34
	.4byte	0xdc6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xea0
	.byte	0x35
	.4byte	0xdd7
	.4byte	.LLST2
	.byte	0x36
	.4byte	0xde3
	.byte	0x37
	.4byte	0xdc6
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.byte	0x35
	.4byte	0xdd7
	.4byte	.LLST3
	.byte	0x38
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x36
	.4byte	0xde3
	.byte	0
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x558
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.byte	0x9e
	.byte	0x6
	.byte	0x39
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x547
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xd
	.byte	0x4e
	.byte	0x7
	.byte	0x3a
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.byte	0x3a
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.byte	0x3a
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xa
	.byte	0x33
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xa
	.byte	0x2f
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xa
	.byte	0x30
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xa
	.byte	0x31
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.byte	0x32
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST9:
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
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
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF134:
	.string	"name"
.LASF156:
	.string	"gpio_arr"
.LASF39:
	.string	"_on_exit_args"
.LASF127:
	.string	"BLOG_LEVEL_WARN"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF128:
	.string	"BLOG_LEVEL_ERROR"
.LASF109:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF68:
	.string	"_errno"
.LASF133:
	.string	"level"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF55:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF147:
	.string	"pstctx"
.LASF70:
	.string	"_stdout"
.LASF162:
	.string	"bl_adc_parse_data"
.LASF14:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF164:
	.string	"bl_adc_clock_init"
.LASF54:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF148:
	.string	"adc_data"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF8:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF167:
	.string	"bl_adc_start"
.LASF139:
	.string	"_fsymf_level_hal_drvhal_adc"
.LASF18:
	.string	"__count"
.LASF131:
	.string	"blog_level_t"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"_impure_ptr"
.LASF117:
	.string	"_nextf"
.LASF94:
	.string	"_rand48"
.LASF79:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF157:
	.string	"xTaskGetTickCountFromISR"
.LASF100:
	.string	"_asctime_buf"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF151:
	.string	"hal_adc_get_data"
.LASF136:
	.string	"_fsymc_level_hal_drv"
.LASF90:
	.string	"__FILE"
.LASF158:
	.string	"bl_printk"
.LASF62:
	.string	"_offset"
.LASF132:
	.string	"_blog_info"
.LASF73:
	.string	"_emergency"
.LASF146:
	.string	"adc_ctx_t"
.LASF123:
	.string	"TrapNetCounter"
.LASF30:
	.string	"__tm_sec"
.LASF126:
	.string	"BLOG_LEVEL_INFO"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF130:
	.string	"BLOG_LEVEL_NEVER"
.LASF24:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF140:
	.string	"_fsymf_info_hal_drvhal_adc"
.LASF153:
	.string	"gpio_num"
.LASF19:
	.string	"__value"
.LASF80:
	.string	"_p5s"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF89:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF85:
	.string	"_atexit0"
.LASF23:
	.string	"_flock_t"
.LASF16:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF5:
	.string	"uint8_t"
.LASF141:
	.string	"adc_ctx"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF172:
	.string	"_blog_leve"
.LASF159:
	.string	"xTaskGetTickCount"
.LASF143:
	.string	"adc_lli"
.LASF69:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF3:
	.string	"long long int"
.LASF48:
	.string	"_base"
.LASF81:
	.string	"_freelist"
.LASF144:
	.string	"lli_flag"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF137:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF114:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"BaseType_t"
.LASF124:
	.string	"BLOG_LEVEL_ALL"
.LASF52:
	.string	"_file"
.LASF170:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/hal_drv"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF168:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF40:
	.string	"_fnargs"
.LASF38:
	.string	"__tm_isdst"
.LASF175:
	.string	"xPortIsInsideInterrupt"
.LASF116:
	.string	"_h_errno"
.LASF149:
	.string	"data"
.LASF34:
	.string	"__tm_mon"
.LASF56:
	.string	"_write"
.LASF150:
	.string	"channel"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF166:
	.string	"bl_adc_dma_init"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF152:
	.string	"hal_adc_add_channel"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF63:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF154:
	.string	"hal_adc_init"
.LASF35:
	.string	"__tm_year"
.LASF101:
	.string	"_localtime_buf"
.LASF119:
	.string	"_unused"
.LASF84:
	.string	"_new"
.LASF82:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF108:
	.string	"_l64a_buf"
.LASF165:
	.string	"bl_adc_init"
.LASF145:
	.string	"chan_init_table"
.LASF174:
	.string	"check_adc_gpio_valid"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF64:
	.string	"_lock"
.LASF9:
	.string	"long unsigned int"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF155:
	.string	"sampling_ms"
.LASF4:
	.string	"int32_t"
.LASF41:
	.string	"_dso_handle"
.LASF129:
	.string	"BLOG_LEVEL_ASSERT"
.LASF83:
	.string	"_cvtbuf"
.LASF6:
	.string	"unsigned char"
.LASF173:
	.string	"adc_get_channel_by_gpio"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF91:
	.string	"_glue"
.LASF87:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF142:
	.string	"channel_data"
.LASF163:
	.string	"bl_adc_gpio_init"
.LASF75:
	.string	"_locale"
.LASF15:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF7:
	.string	"short unsigned int"
.LASF161:
	.string	"memcpy"
.LASF125:
	.string	"BLOG_LEVEL_DEBUG"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF169:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
.LASF160:
	.string	"bl_dma_find_ctx_by_channel"
.LASF13:
	.string	"_off_t"
.LASF135:
	.string	"blog_info_t"
.LASF60:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF66:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF171:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
.LASF138:
	.string	"_fsymc_info_hal_drv"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
