	.file	"hal_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_ir_init_from_dts,"ax",@progbits
	.align	1
	.globl	hal_ir_init_from_dts
	.type	hal_ir_init_from_dts, @function
hal_ir_init_from_dts:
.LFB46:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
	.loc 1 52 1
	.cfi_startproc
.LVL0:
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 52 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 65 17
	lui	a2,%hi(.LC0)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC0)
	.loc 1 52 1
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 52 1
	mv	s5,a0
.LVL1:
	.loc 1 56 5 is_stmt 1
	.loc 1 57 5
	.loc 1 52 1 is_stmt 0
	mv	s0,a1
	.loc 1 57 9
	sw	zero,12(sp)
	.loc 1 58 5 is_stmt 1
.LVL2:
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 62 5
	.loc 1 63 5
	.loc 1 65 5
	.loc 1 65 17 is_stmt 0
	call	fdt_getprop
.LVL3:
	.loc 1 66 5 is_stmt 1
	lui	s4,%hi(TrapNetCounter)
	lui	s3,%hi(.LC1)
	lui	s2,%hi(.LC2)
	.loc 1 66 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 67 9 is_stmt 1
	.loc 1 67 14
	.loc 1 67 16
.LBB52:
.LBB53:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
.LBE53:
.LBE52:
	.loc 1 67 16 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L3
	.loc 1 67 105 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL4:
.L4:
	.loc 1 67 16 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC3)
	li	a4,67
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL5:
	.loc 1 67 198 is_stmt 1 discriminator 4
	.loc 1 60 9 is_stmt 0 discriminator 4
	li	s1,0
.LVL6:
.L5:
	.loc 1 70 202 is_stmt 1 discriminator 5
	.loc 1 73 5 discriminator 5
	.loc 1 73 15 is_stmt 0 discriminator 5
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
	mv	a1,s0
	mv	a0,s5
	call	fdt_subnode_offset
.LVL7:
	mv	s7,a0
.LVL8:
	.loc 1 74 5 is_stmt 1 discriminator 5
	.loc 1 74 8 is_stmt 0 discriminator 5
	bgt	a0,zero,.L8
	.loc 1 75 9 is_stmt 1
	.loc 1 75 14
	.loc 1 75 16
.LBB54:
.LBB55:
	.loc 2 151 5
.LBE55:
.LBE54:
	.loc 1 75 16 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L9
	.loc 1 75 95 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL9:
.L10:
	.loc 1 75 16 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC6)
	li	a4,75
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC6)
.LVL10:
.L36:
	.loc 1 88 28 discriminator 4
	call	bl_printk
.LVL11:
	.loc 1 88 204 is_stmt 1 discriminator 4
	j	.L34
.LVL12:
.L3:
	.loc 1 67 134 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL13:
	j	.L4
.LVL14:
.L2:
	.loc 1 69 9 is_stmt 1
	.loc 1 69 31 is_stmt 0
	lw	a5,0(a0)
.LVL15:
.LBB56:
.LBB57:
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt_env.h"
	.loc 3 122 5 is_stmt 1
	.loc 3 122 212 is_stmt 0
	srli	a4,a5,24
	.loc 3 122 12
	slli	s1,a5,24
	or	s1,s1,a4
	.loc 3 122 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 3 122 163
	srli	a5,a5,16
	.loc 3 122 117
	slli	a4,a4,16
	.loc 3 122 163
	andi	a5,a5,0xff
	.loc 3 122 168
	slli	a5,a5,8
	.loc 3 122 12
	or	s1,s1,a4
	or	s1,s1,a5
.LVL16:
.LBE57:
.LBE56:
	.loc 1 70 9 is_stmt 1
	.loc 1 70 14
	.loc 1 70 16
.LBB58:
.LBB59:
	.loc 2 151 5
.LBE59:
.LBE58:
	.loc 1 70 16 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L6
	.loc 1 70 99 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL17:
.L7:
	.loc 1 70 16 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC4)
	mv	a5,s1
	li	a4,70
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL18:
	j	.L5
.LVL19:
.L6:
	.loc 1 70 128 discriminator 2
	call	xTaskGetTickCount
.LVL20:
	j	.L7
.LVL21:
.L9:
	.loc 1 75 124 discriminator 2
	call	xTaskGetTickCount
.LVL22:
	j	.L10
.LVL23:
.L8:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 22 is_stmt 0
	lui	s0,%hi(.LC7)
.LVL24:
	mv	a1,a0
	addi	a2,s0,%lo(.LC7)
	mv	a0,s5
.LVL25:
	call	fdt_stringlist_count
.LVL26:
	.loc 1 78 12
	li	a5,1
	.loc 1 77 22
	mv	s6,a0
.LVL27:
	.loc 1 78 9 is_stmt 1
	.loc 1 78 12 is_stmt 0
	beq	a0,a5,.L12
	.loc 1 79 13 is_stmt 1
	.loc 1 79 18
	.loc 1 79 20
.LBB60:
.LBB61:
	.loc 2 151 5
.LBE61:
.LBE60:
	.loc 1 79 20 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L13
	.loc 1 79 122 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL28:
.L14:
	.loc 1 79 20 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC8)
	mv	a5,s6
	li	a4,79
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
.LVL29:
.L35:
	call	bl_printk
.LVL30:
.L34:
	.loc 1 79 227 is_stmt 1 discriminator 4
	.loc 1 62 13 is_stmt 0 discriminator 4
	li	s6,0
.LVL31:
.L11:
	.loc 1 97 240 is_stmt 1 discriminator 5
	.loc 1 105 5 discriminator 5
	mv	a1,s1
	mv	a0,s6
	call	bl_ir_init
.LVL32:
	.loc 1 107 5 discriminator 5
	.loc 1 108 1 is_stmt 0 discriminator 5
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL33:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
.LVL34:
	lw	s7,28(sp)
	.cfi_restore 23
.LVL35:
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L13:
	.cfi_restore_state
	.loc 1 79 151 discriminator 2
	call	xTaskGetTickCount
.LVL37:
	j	.L14
.LVL38:
.L12:
	.loc 1 81 13 is_stmt 1
	.loc 1 81 22 is_stmt 0
	addi	a4,sp,12
	addi	a2,s0,%lo(.LC7)
	li	a3,0
	mv	a1,s7
	mv	a0,s5
.LVL39:
	call	fdt_stringlist_get
.LVL40:
	.loc 1 82 16
	lw	a4,12(sp)
	li	a5,4
	.loc 1 81 22
	mv	s0,a0
.LVL41:
	.loc 1 82 13 is_stmt 1
	.loc 1 82 16 is_stmt 0
	beq	a4,a5,.L15
.L18:
	.loc 1 83 17 is_stmt 1
	.loc 1 83 22
	.loc 1 83 24
.LBB62:
.LBB63:
	.loc 2 151 5
.LBE63:
.LBE62:
	.loc 1 83 24 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	bne	a5,zero,.L16
	.loc 1 83 138 discriminator 2
	call	xTaskGetTickCount
.LVL42:
	j	.L20
.L15:
	.loc 1 82 35 discriminator 1
	mv	a1,a0
	lui	a0,%hi(.LC9)
	li	a2,4
	addi	a0,a0,%lo(.LC9)
	call	memcmp
.LVL43:
	.loc 1 82 31 discriminator 1
	bne	a0,zero,.L18
	.loc 1 86 17 is_stmt 1
	.loc 1 86 29 is_stmt 0
	lui	a2,%hi(.LC11)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC11)
	mv	a1,s7
	mv	a0,s5
	call	fdt_getprop
.LVL44:
	.loc 1 87 17 is_stmt 1
	.loc 1 87 20 is_stmt 0
	bne	a0,zero,.L21
	.loc 1 88 21 is_stmt 1
	.loc 1 88 26
	.loc 1 88 28
.LBB64:
.LBB65:
	.loc 2 151 5
.LBE65:
.LBE64:
	.loc 1 88 28 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L22
	.loc 1 88 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL45:
.L23:
	.loc 1 88 28 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC12)
	li	a4,88
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
	j	.L36
.L16:
	.loc 1 83 109 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL46:
.L20:
	.loc 1 83 24 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC10)
	mv	a5,s0
	li	a4,83
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC10)
	j	.L35
.LVL47:
.L22:
	.loc 1 88 140 discriminator 2
	call	xTaskGetTickCount
.LVL48:
	j	.L23
.LVL49:
.L21:
	.loc 1 90 21 is_stmt 1
	.loc 1 90 38 is_stmt 0
	lw	a5,0(a0)
.LVL50:
.LBB66:
.LBB67:
	.loc 3 122 5 is_stmt 1
	.loc 3 122 212 is_stmt 0
	srli	a4,a5,24
	.loc 3 122 12
	slli	s0,a5,24
.LVL51:
	or	s0,s0,a4
	.loc 3 122 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 3 122 163
	srli	a5,a5,16
.LVL52:
	.loc 3 122 117
	slli	a4,a4,16
	.loc 3 122 163
	andi	a5,a5,0xff
	.loc 3 122 168
	slli	a5,a5,8
	.loc 3 122 12
	or	s0,s0,a4
	or	s0,s0,a5
.LVL53:
.LBE67:
.LBE66:
	.loc 1 91 28
	lw	a5,%lo(TrapNetCounter)(s4)
	.loc 1 90 25
	andi	s6,s0,0xff
.LVL54:
	.loc 1 91 21 is_stmt 1
	.loc 1 91 26
	.loc 1 91 28
.LBB68:
.LBB69:
	.loc 2 151 5
.LBE69:
.LBE68:
	.loc 1 91 28 is_stmt 0
	beq	a5,zero,.L24
	.loc 1 91 106 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL55:
.L25:
	.loc 1 91 28 discriminator 4
	mv	a1,a0
	andi	s0,s0,255
	lui	a0,%hi(.LC13)
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
	mv	a5,s0
	li	a4,91
	call	bl_printk
.LVL56:
	.loc 1 91 204 is_stmt 1 discriminator 4
	.loc 1 92 21 discriminator 4
	.loc 1 92 33 is_stmt 0 discriminator 4
	lui	a2,%hi(.LC14)
	addi	a3,sp,12
	addi	a2,a2,%lo(.LC14)
	mv	a1,s7
	mv	a0,s5
	call	fdt_getprop
.LVL57:
	.loc 1 93 21 is_stmt 1 discriminator 4
	.loc 1 93 24 is_stmt 0 discriminator 4
	bne	a0,zero,.L26
	.loc 1 94 25 is_stmt 1
	.loc 1 94 30
	.loc 1 94 32
.LBB70:
.LBB71:
	.loc 2 151 5
.LBE71:
.LBE70:
	.loc 1 94 32 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L27
	.loc 1 94 120 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL58:
.L28:
	.loc 1 94 32 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC15)
	li	a4,94
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL59:
	.loc 1 94 213 is_stmt 1 discriminator 4
	j	.L11
.LVL60:
.L24:
	.loc 1 91 135 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL61:
	j	.L25
.LVL62:
.L27:
	.loc 1 94 149 discriminator 2
	call	xTaskGetTickCount
.LVL63:
	j	.L28
.LVL64:
.L26:
	.loc 1 96 25 is_stmt 1
	.loc 1 96 47 is_stmt 0
	lw	a5,0(a0)
.LVL65:
.LBB72:
.LBB73:
	.loc 3 122 5 is_stmt 1
	.loc 3 122 212 is_stmt 0
	srli	a4,a5,24
	.loc 3 122 12
	slli	s5,a5,24
.LVL66:
	or	s5,s5,a4
	.loc 3 122 112
	srli	a4,a5,8
	andi	a4,a4,0xff
	.loc 3 122 163
	srli	a5,a5,16
.LVL67:
	.loc 3 122 117
	slli	a4,a4,16
	.loc 3 122 163
	andi	a5,a5,0xff
	.loc 3 122 168
	slli	a5,a5,8
	.loc 3 122 12
	or	s5,s5,a4
	or	s5,s5,a5
.LVL68:
.LBE73:
.LBE72:
	.loc 1 97 25 is_stmt 1
	.loc 1 97 30
	.loc 1 97 32
.LBB74:
.LBB75:
	.loc 2 151 5
.LBE75:
.LBE74:
	.loc 1 97 32 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s4)
	beq	a5,zero,.L29
	.loc 1 97 132 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL69:
.L30:
	.loc 1 97 32 discriminator 4
	slli	a6,s5,16
	mv	a1,a0
	lui	a0,%hi(.LC16)
	srli	a6,a6,16
	mv	a5,s0
	li	a4,97
	addi	a3,s3,%lo(.LC1)
	addi	a2,s2,%lo(.LC2)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL70:
	j	.L11
.LVL71:
.L29:
	.loc 1 97 161 discriminator 2
	call	xTaskGetTickCount
.LVL72:
	j	.L30
	.cfi_endproc
.LFE46:
	.size	hal_ir_init_from_dts, .-hal_ir_init_from_dts
	.section	.text.hal_irled_init,"ax",@progbits
	.align	1
	.globl	hal_irled_init
	.type	hal_irled_init, @function
hal_irled_init:
.LFB47:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 112 5
	.loc 1 111 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 112 8
	li	a5,1
	bleu	a0,a5,.L38
	.loc 1 113 9 is_stmt 1 discriminator 1
	.loc 1 113 47 discriminator 1
	.loc 1 113 52 discriminator 1
	.loc 1 113 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 113 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	.loc 1 115 16 discriminator 1
	li	a0,-1
.LVL74:
	.loc 1 113 55 discriminator 1
	bgtu	a4,a5,.L37
	.loc 1 113 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_ir)
	.loc 1 113 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_ir)(a4)
	bgtu	a4,a5,.L37
	.loc 1 113 156 is_stmt 1
.LBB76:
.LBB77:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE77:
.LBE76:
	.loc 1 113 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L40
	.loc 1 113 246 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL75:
.L41:
	.loc 1 113 156 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC17)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	li	a4,113
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC17)
	call	bl_printk
.LVL76:
	.loc 1 115 16 discriminator 10
	li	a0,-1
.L37:
	.loc 1 124 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L40:
	.cfi_restore_state
	.loc 1 113 275 discriminator 8
	call	xTaskGetTickCount
.LVL77:
	j	.L41
.LVL78:
.L38:
	mv	s0,a0
	.loc 1 118 5 is_stmt 1
	call	bl_irled_gpio_init
.LVL79:
	.loc 1 119 5
	mv	a0,s0
	call	bl_irled_init
.LVL80:
	.loc 1 121 5
	.loc 1 121 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	s0,%lo(.LANCHOR0)(a5)
	.loc 1 123 5 is_stmt 1
	.loc 1 123 12 is_stmt 0
	li	a0,0
	j	.L37
	.cfi_endproc
.LFE47:
	.size	hal_irled_init, .-hal_irled_init
	.section	.text.hal_irled_send_data,"ax",@progbits
	.align	1
	.globl	hal_irled_send_data
	.type	hal_irled_send_data, @function
hal_irled_send_data:
.LFB48:
	.loc 1 127 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 128 5
	.loc 1 129 5
	.loc 1 130 5
	.loc 1 132 5
	.loc 1 127 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 132 8
	ble	a0,zero,.L46
	mv	s0,a1
	.loc 1 132 22 discriminator 1
	bne	a1,zero,.L47
.L46:
	.loc 1 133 9 is_stmt 1 discriminator 1
	.loc 1 133 47 discriminator 1
	.loc 1 133 52 discriminator 1
	.loc 1 133 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 133 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	.loc 1 135 16 discriminator 1
	li	a0,-1
.LVL82:
	.loc 1 133 55 discriminator 1
	bgtu	a4,a5,.L45
	.loc 1 133 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_ir)
	.loc 1 133 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_ir)(a4)
	bgtu	a4,a5,.L45
	.loc 1 133 156 is_stmt 1
.LBB78:
.LBB79:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE79:
.LBE78:
	.loc 1 133 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L49
	.loc 1 133 242 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL83:
.L50:
	.loc 1 133 156 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC17)
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	li	a4,133
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC17)
	call	bl_printk
.LVL84:
	.loc 1 135 16 discriminator 10
	li	a0,-1
.L45:
	.loc 1 157 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL85:
.L49:
	.cfi_restore_state
	.loc 1 133 271 discriminator 8
	call	xTaskGetTickCount
.LVL86:
	j	.L50
.LVL87:
.L47:
	.loc 1 138 8
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	mv	s1,a0
	.loc 1 138 5 is_stmt 1
	.loc 1 141 18 is_stmt 0
	li	s4,24
	.loc 1 138 8
	bne	a5,zero,.L61
.LVL88:
	.loc 1 139 18
	li	s4,50
.L61:
	.loc 1 144 9
	call	bl_timer_now_us64
.LVL89:
	.loc 1 144 29
	lui	a4,%hi(.LANCHOR1)
	addi	a5,a4,%lo(.LANCHOR1)
	lw	s3,0(a5)
	lw	a5,4(a5)
	.loc 1 139 18
	li	s5,0
.LVL90:
	.loc 1 144 5 is_stmt 1
	.loc 1 144 29 is_stmt 0
	sub	a3,a0,s3
	sgtu	a0,a3,a0
	sub	a1,a1,a5
	sub	a1,a1,a0
	addi	s2,a4,%lo(.LANCHOR1)
	.loc 1 144 8
	bne	s5,a1,.L52
	bleu	s4,a3,.L52
	.loc 1 145 10 is_stmt 1
	.loc 1 145 40 is_stmt 0
	call	bl_timer_now_us64
.LVL91:
	.loc 1 145 10
	add	s3,s3,s4
	sub	a0,s3,a0
	call	bl_timer_delay_us
.LVL92:
.L52:
	.loc 1 148 5 is_stmt 1
.LBB80:
.LBB81:
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
	.loc 4 94 3
 #APP
# 94 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrci mstatus, 8
# 0 "" 2
 #NO_APP
.LBE81:
.LBE80:
	.loc 1 149 5
.LVL93:
	slli	s1,s1,2
.LVL94:
	add	s1,s0,s1
.LVL95:
.L54:
	.loc 1 150 9 discriminator 3
	lw	a0,0(s0)
	addi	s0,s0,4
	call	bl_irled_send_one_data
.LVL96:
	.loc 1 149 5 is_stmt 0 discriminator 3
	bne	s0,s1,.L54
	.loc 1 152 5 is_stmt 1
.LBB82:
.LBB83:
	.loc 4 89 3
 #APP
# 89 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
	csrsi mstatus, 8
# 0 "" 2
 #NO_APP
.LBE83:
.LBE82:
	.loc 1 154 5
	.loc 1 154 15 is_stmt 0
	call	bl_timer_now_us64
.LVL97:
	.loc 1 154 13
	sw	a0,0(s2)
	sw	a1,4(s2)
	.loc 1 156 5 is_stmt 1
	.loc 1 156 12 is_stmt 0
	li	a0,0
	j	.L45
	.cfi_endproc
.LFE48:
	.size	hal_irled_send_data, .-hal_irled_send_data
	.globl	_fsymf_info_hal_drvhal_ir
	.comm	_fsymf_level_hal_drvhal_ir,1,1
	.comm	_fsymc_level_hal_drv,1,1
	.section	.rodata.hal_ir_init_from_dts.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ctrltype"
	.zero	3
.LC1:
	.string	"hal_ir.c"
	.zero	3
.LC2:
	.string	"\033[32mINFO  \033[0m"
.LC3:
	.string	"[%10u][%s: %s:%4d] do not find ctrltype \r\n"
	.zero	1
.LC4:
	.string	"[%10u][%s: %s:%4d] ctrltype == %d \r\n"
	.zero	3
.LC5:
	.string	"rx"
	.zero	1
.LC6:
	.string	"[%10u][%s: %s:%4d] ir rx NULL.\r\n"
	.zero	3
.LC7:
	.string	"status"
	.zero	1
.LC8:
	.string	"[%10u][%s: %s:%4d] ir rx status_countindex = %d NULL.\r\n"
.LC9:
	.string	"okay"
	.zero	3
.LC10:
	.string	"[%10u][%s: %s:%4d] ir rx status = %s\r\n"
	.zero	1
.LC11:
	.string	"pin"
.LC12:
	.string	"[%10u][%s: %s:%4d] ir rx pin NULL.\r\n"
	.zero	3
.LC13:
	.string	"[%10u][%s: %s:%4d] pin == %d \r\n"
.LC14:
	.string	"interval"
	.zero	3
.LC15:
	.string	"[%10u][%s: %s:%4d] ir rx interval NULL.\r\n"
	.zero	2
.LC16:
	.string	"[%10u][%s: %s:%4d] add here pin = %d, interval = %d\r\n"
	.section	.rodata.hal_irled_init.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"\033[31mERROR \033[0m"
.LC18:
	.string	"[%10u][%s: %s:%4d] not correct chip type \r\n"
	.section	.rodata.hal_irled_send_data.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"[%10u][%s: %s:%4d] not correct para. \r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"hal_drv.hal_ir"
	.zero	1
.LC21:
	.string	"hal_drv"
	.section	.sbss.g_chip_type,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_chip_type, @object
	.size	g_chip_type, 4
g_chip_type:
	.zero	4
	.section	.sbss.last_us.8040,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	last_us.8040, @object
	.size	last_us.8040, 8
last_us.8040:
	.zero	8
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
	.word	.LC21
	.section	.static_blogfile_code.hal_drvhal_ir,"a"
	.align	2
	.type	_fsymf_info_hal_drvhal_ir, @object
	.size	_fsymf_info_hal_drvhal_ir, 8
_fsymf_info_hal_drvhal_ir:
	.word	_fsymf_level_hal_drvhal_ir
	.word	.LC20
	.text
.Letext0:
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog.h"
	.file 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 16 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 18 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_timer.h"
	.file 19 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_ir.h"
	.file 20 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blfdt/inc/libfdt.h"
	.file 21 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x121a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF186
	.byte	0xc
	.4byte	.LASF187
	.4byte	.LASF188
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x5
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x5
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x69
	.byte	0x20
	.4byte	0x92
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x165
	.byte	0x16
	.4byte	0xa0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x7
	.byte	0x2e
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF16
	.byte	0x7
	.byte	0x74
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF17
	.byte	0x7
	.byte	0x93
	.byte	0x14
	.4byte	0x99
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.byte	0x3
	.4byte	0xfa
	.byte	0x7
	.4byte	.LASF18
	.byte	0x7
	.byte	0xa7
	.byte	0xc
	.4byte	0xa7
	.byte	0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0xa8
	.byte	0x13
	.4byte	0xfa
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x10a
	.byte	0x9
	.4byte	0xa0
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x7
	.byte	0xa2
	.byte	0x9
	.4byte	0x12e
	.byte	0xb
	.4byte	.LASF20
	.byte	0x7
	.byte	0xa4
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0xa9
	.byte	0x5
	.4byte	0xd8
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xaa
	.byte	0x3
	.4byte	0x10a
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF23
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x78
	.byte	0x3
	.4byte	.LASF24
	.byte	0x9
	.byte	0xc
	.byte	0xd
	.4byte	0x99
	.byte	0x3
	.4byte	.LASF25
	.byte	0x8
	.byte	0x23
	.byte	0x1b
	.4byte	0x148
	.byte	0xd
	.4byte	.LASF30
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.byte	0x8
	.4byte	0x1ba
	.byte	0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x36
	.byte	0x13
	.4byte	0x1ba
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0x37
	.byte	0xb
	.4byte	0x99
	.byte	0x8
	.byte	0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x99
	.byte	0xc
	.byte	0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x37
	.byte	0x1b
	.4byte	0x99
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x8
	.byte	0x38
	.byte	0xb
	.4byte	0x1c0
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x160
	.byte	0x8
	.4byte	0x13c
	.4byte	0x1d0
	.byte	0x9
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF31
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x253
	.byte	0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x99
	.byte	0xc
	.byte	0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x42
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x43
	.byte	0x7
	.4byte	0x99
	.byte	0x14
	.byte	0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x44
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x45
	.byte	0x7
	.4byte	0x99
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x46
	.byte	0x7
	.4byte	0x99
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x8
	.byte	0x4f
	.byte	0x8
	.4byte	0x298
	.byte	0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x50
	.byte	0x9
	.4byte	0x298
	.byte	0
	.byte	0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0x298
	.byte	0x80
	.byte	0x11
	.4byte	.LASF44
	.byte	0x8
	.byte	0x53
	.byte	0xa
	.4byte	0x13c
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF45
	.byte	0x8
	.byte	0x56
	.byte	0xa
	.4byte	0x13c
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x13a
	.4byte	0x2a8
	.byte	0x9
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x8
	.byte	0x62
	.byte	0x8
	.4byte	0x2eb
	.byte	0xb
	.4byte	.LASF26
	.byte	0x8
	.byte	0x63
	.byte	0x12
	.4byte	0x2eb
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x64
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x66
	.byte	0x9
	.4byte	0x2f1
	.byte	0x8
	.byte	0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x67
	.byte	0x1e
	.4byte	0x253
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2a8
	.byte	0x8
	.4byte	0x301
	.4byte	0x301
	.byte	0x9
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x307
	.byte	0x12
	.byte	0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x8
	.byte	0x7a
	.byte	0x8
	.4byte	0x330
	.byte	0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x7b
	.byte	0x11
	.4byte	0x330
	.byte	0
	.byte	0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7c
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38
	.byte	0xd
	.4byte	.LASF52
	.byte	0x68
	.byte	0x8
	.byte	0xba
	.byte	0x8
	.4byte	0x479
	.byte	0xe
	.string	"_p"
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0x330
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x8
	.byte	0xbd
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x308
	.byte	0x10
	.byte	0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0xc1
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0xc8
	.byte	0xa
	.4byte	0x13a
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0xca
	.byte	0xe
	.4byte	0x5fd
	.byte	0x20
	.byte	0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0xcc
	.byte	0xe
	.4byte	0x627
	.byte	0x24
	.byte	0xb
	.4byte	.LASF59
	.byte	0x8
	.byte	0xcf
	.byte	0xd
	.4byte	0x64b
	.byte	0x28
	.byte	0xb
	.4byte	.LASF60
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0x665
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x308
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x8
	.byte	0xd4
	.byte	0x12
	.4byte	0x330
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x8
	.byte	0xd5
	.byte	0x7
	.4byte	0x99
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF61
	.byte	0x8
	.byte	0xd8
	.byte	0x11
	.4byte	0x66b
	.byte	0x40
	.byte	0xb
	.4byte	.LASF62
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x67b
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x308
	.byte	0x44
	.byte	0xb
	.4byte	.LASF63
	.byte	0x8
	.byte	0xdf
	.byte	0x7
	.4byte	0x99
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF64
	.byte	0x8
	.byte	0xe0
	.byte	0xa
	.4byte	0xb4
	.byte	0x50
	.byte	0xb
	.4byte	.LASF65
	.byte	0x8
	.byte	0xe3
	.byte	0x12
	.4byte	0x497
	.byte	0x54
	.byte	0xb
	.4byte	.LASF66
	.byte	0x8
	.byte	0xe7
	.byte	0xc
	.4byte	0x154
	.byte	0x58
	.byte	0xb
	.4byte	.LASF67
	.byte	0x8
	.byte	0xe9
	.byte	0xe
	.4byte	0x12e
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF68
	.byte	0x8
	.byte	0xea
	.byte	0x7
	.4byte	0x99
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xcc
	.4byte	0x497
	.byte	0x14
	.4byte	0x497
	.byte	0x14
	.4byte	0x13a
	.byte	0x14
	.4byte	0x5eb
	.byte	0x14
	.4byte	0x99
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x4a2
	.byte	0x15
	.4byte	0x497
	.byte	0x16
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x8
	.2byte	0x265
	.byte	0x8
	.4byte	0x5eb
	.byte	0x17
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x267
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0x17
	.4byte	.LASF71
	.byte	0x8
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x4
	.byte	0x17
	.4byte	.LASF72
	.byte	0x8
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6d7
	.byte	0x8
	.byte	0x17
	.4byte	.LASF73
	.byte	0x8
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6d7
	.byte	0xc
	.byte	0x17
	.4byte	.LASF74
	.byte	0x8
	.2byte	0x26e
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0x17
	.4byte	.LASF75
	.byte	0x8
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8d7
	.byte	0x14
	.byte	0x17
	.4byte	.LASF76
	.byte	0x8
	.2byte	0x272
	.byte	0x7
	.4byte	0x99
	.byte	0x30
	.byte	0x17
	.4byte	.LASF77
	.byte	0x8
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ec
	.byte	0x34
	.byte	0x17
	.4byte	.LASF78
	.byte	0x8
	.2byte	0x275
	.byte	0x7
	.4byte	0x99
	.byte	0x38
	.byte	0x17
	.4byte	.LASF79
	.byte	0x8
	.2byte	0x277
	.byte	0xa
	.4byte	0x8fd
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF80
	.byte	0x8
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1ba
	.byte	0x40
	.byte	0x17
	.4byte	.LASF81
	.byte	0x8
	.2byte	0x27b
	.byte	0x7
	.4byte	0x99
	.byte	0x44
	.byte	0x17
	.4byte	.LASF82
	.byte	0x8
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1ba
	.byte	0x48
	.byte	0x17
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x27d
	.byte	0x14
	.4byte	0x903
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF84
	.byte	0x8
	.2byte	0x280
	.byte	0x7
	.4byte	0x99
	.byte	0x50
	.byte	0x17
	.4byte	.LASF85
	.byte	0x8
	.2byte	0x281
	.byte	0x9
	.4byte	0x5eb
	.byte	0x54
	.byte	0x17
	.4byte	.LASF86
	.byte	0x8
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8b2
	.byte	0x58
	.byte	0x18
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2eb
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF87
	.byte	0x8
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2a8
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF88
	.byte	0x8
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x914
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF89
	.byte	0x8
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x698
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF90
	.byte	0x8
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x920
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5f1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.byte	0x15
	.4byte	0x5f1
	.byte	0xf
	.byte	0x4
	.4byte	0x479
	.byte	0x13
	.4byte	0xcc
	.4byte	0x621
	.byte	0x14
	.4byte	0x497
	.byte	0x14
	.4byte	0x13a
	.byte	0x14
	.4byte	0x621
	.byte	0x14
	.4byte	0x99
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5f8
	.byte	0xf
	.byte	0x4
	.4byte	0x603
	.byte	0x13
	.4byte	0xc0
	.4byte	0x64b
	.byte	0x14
	.4byte	0x497
	.byte	0x14
	.4byte	0x13a
	.byte	0x14
	.4byte	0xc0
	.byte	0x14
	.4byte	0x99
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x62d
	.byte	0x13
	.4byte	0x99
	.4byte	0x665
	.byte	0x14
	.4byte	0x497
	.byte	0x14
	.4byte	0x13a
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x651
	.byte	0x8
	.4byte	0x38
	.4byte	0x67b
	.byte	0x9
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x68b
	.byte	0x9
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF92
	.byte	0x8
	.2byte	0x124
	.byte	0x18
	.4byte	0x336
	.byte	0x19
	.4byte	.LASF93
	.byte	0xc
	.byte	0x8
	.2byte	0x128
	.byte	0x8
	.4byte	0x6d1
	.byte	0x17
	.4byte	.LASF26
	.byte	0x8
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6d1
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x12b
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0x17
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x698
	.byte	0xf
	.byte	0x4
	.4byte	0x68b
	.byte	0x19
	.4byte	.LASF96
	.byte	0xe
	.byte	0x8
	.2byte	0x144
	.byte	0x8
	.4byte	0x716
	.byte	0x17
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x145
	.byte	0x12
	.4byte	0x716
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x146
	.byte	0x12
	.4byte	0x716
	.byte	0x6
	.byte	0x17
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x147
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x52
	.4byte	0x726
	.byte	0x9
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x8
	.2byte	0x285
	.byte	0x7
	.4byte	0x83b
	.byte	0x17
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x287
	.byte	0x18
	.4byte	0xa0
	.byte	0
	.byte	0x17
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x288
	.byte	0x12
	.4byte	0x5eb
	.byte	0x4
	.byte	0x17
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x289
	.byte	0x10
	.4byte	0x83b
	.byte	0x8
	.byte	0x17
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1d0
	.byte	0x24
	.byte	0x17
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x28b
	.byte	0xf
	.4byte	0x99
	.byte	0x48
	.byte	0x17
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x92
	.byte	0x50
	.byte	0x17
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6dd
	.byte	0x58
	.byte	0x17
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x28e
	.byte	0x16
	.4byte	0x12e
	.byte	0x68
	.byte	0x17
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x28f
	.byte	0x16
	.4byte	0x12e
	.byte	0x70
	.byte	0x17
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x290
	.byte	0x16
	.4byte	0x12e
	.byte	0x78
	.byte	0x17
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x291
	.byte	0x10
	.4byte	0x84b
	.byte	0x80
	.byte	0x17
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x292
	.byte	0x10
	.4byte	0x85b
	.byte	0x88
	.byte	0x17
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x293
	.byte	0xf
	.4byte	0x99
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x294
	.byte	0x16
	.4byte	0x12e
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x295
	.byte	0x16
	.4byte	0x12e
	.byte	0xac
	.byte	0x17
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x296
	.byte	0x16
	.4byte	0x12e
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x297
	.byte	0x16
	.4byte	0x12e
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x298
	.byte	0x16
	.4byte	0x12e
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x299
	.byte	0x8
	.4byte	0x99
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5f1
	.4byte	0x84b
	.byte	0x9
	.4byte	0xa0
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5f1
	.4byte	0x85b
	.byte	0x9
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5f1
	.4byte	0x86b
	.byte	0x9
	.4byte	0xa0
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x8
	.2byte	0x29e
	.byte	0x7
	.4byte	0x892
	.byte	0x17
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x892
	.byte	0
	.byte	0x17
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8a2
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x330
	.4byte	0x8a2
	.byte	0x9
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0xa0
	.4byte	0x8b2
	.byte	0x9
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x8
	.2byte	0x283
	.byte	0x3
	.4byte	0x8d7
	.byte	0x1c
	.4byte	.LASF69
	.byte	0x8
	.2byte	0x29a
	.byte	0xb
	.4byte	0x726
	.byte	0x1c
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x86b
	.byte	0
	.byte	0x8
	.4byte	0x5f1
	.4byte	0x8e7
	.byte	0x9
	.4byte	0xa0
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF189
	.byte	0xf
	.byte	0x4
	.4byte	0x8e7
	.byte	0x1e
	.4byte	0x8fd
	.byte	0x14
	.4byte	0x497
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8f2
	.byte	0xf
	.byte	0x4
	.4byte	0x1ba
	.byte	0x1e
	.4byte	0x914
	.byte	0x14
	.4byte	0x99
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x91a
	.byte	0xf
	.byte	0x4
	.4byte	0x909
	.byte	0x8
	.4byte	0x68b
	.4byte	0x930
	.byte	0x9
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x333
	.byte	0x17
	.4byte	0x497
	.byte	0x1f
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x334
	.byte	0x1d
	.4byte	0x49d
	.byte	0x3
	.4byte	.LASF124
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF125
	.byte	0xa
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF126
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF127
	.byte	0xa
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x15
	.4byte	0x96e
	.byte	0x3
	.4byte	.LASF128
	.byte	0xa
	.byte	0x3c
	.byte	0x14
	.4byte	0x86
	.byte	0xf
	.byte	0x4
	.4byte	0x991
	.byte	0x20
	.byte	0x21
	.4byte	.LASF129
	.byte	0xb
	.byte	0x67
	.byte	0xe
	.4byte	0x5eb
	.byte	0x3
	.4byte	.LASF130
	.byte	0x3
	.byte	0x63
	.byte	0x12
	.4byte	0x96e
	.byte	0x3
	.4byte	.LASF131
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x962
	.byte	0x21
	.4byte	.LASF132
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x9aa
	.byte	0x22
	.4byte	.LASF190
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xc
	.byte	0x21
	.byte	0xe
	.4byte	0x9ff
	.byte	0x23
	.4byte	.LASF133
	.byte	0
	.byte	0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x23
	.4byte	.LASF135
	.byte	0x2
	.byte	0x23
	.4byte	.LASF136
	.byte	0x3
	.byte	0x23
	.4byte	.LASF137
	.byte	0x4
	.byte	0x23
	.4byte	.LASF138
	.byte	0x5
	.byte	0x23
	.4byte	.LASF139
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF140
	.byte	0xc
	.byte	0x29
	.byte	0x3
	.4byte	0x9c2
	.byte	0xd
	.4byte	.LASF141
	.byte	0x8
	.byte	0xc
	.byte	0x2b
	.byte	0x10
	.4byte	0xa33
	.byte	0xb
	.4byte	.LASF142
	.byte	0xc
	.byte	0x2c
	.byte	0x13
	.4byte	0xa33
	.byte	0
	.byte	0xb
	.4byte	.LASF143
	.byte	0xc
	.byte	0x2d
	.byte	0xb
	.4byte	0x5eb
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9ff
	.byte	0x3
	.4byte	.LASF144
	.byte	0xc
	.byte	0x2e
	.byte	0x3
	.4byte	0xa0b
	.byte	0x15
	.4byte	0xa39
	.byte	0x24
	.4byte	.LASF146
	.byte	0xd
	.byte	0x37
	.byte	0x17
	.4byte	0x97a
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x25
	.4byte	.LASF145
	.byte	0xd
	.byte	0x44
	.byte	0xe
	.4byte	0x9ff
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hal_drv
	.byte	0x24
	.4byte	.LASF147
	.byte	0xd
	.byte	0x45
	.byte	0x1a
	.4byte	0xa45
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hal_drv
	.byte	0x25
	.4byte	.LASF148
	.byte	0xd
	.byte	0x52
	.byte	0xe
	.4byte	0x9ff
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hal_drvhal_ir
	.byte	0x25
	.4byte	.LASF149
	.byte	0xd
	.byte	0x53
	.byte	0x13
	.4byte	0xa45
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hal_drvhal_ir
	.byte	0x21
	.4byte	.LASF150
	.byte	0xe
	.byte	0x8
	.byte	0x11
	.4byte	0x96e
	.byte	0x3
	.4byte	.LASF151
	.byte	0xf
	.byte	0x7c
	.byte	0xf
	.4byte	0x307
	.byte	0x8
	.4byte	0xac7
	.4byte	0xac7
	.byte	0x26
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xacd
	.byte	0xf
	.byte	0x4
	.4byte	0xab0
	.byte	0x21
	.4byte	.LASF152
	.byte	0xf
	.byte	0x84
	.byte	0x1c
	.4byte	0xabc
	.byte	0x24
	.4byte	.LASF153
	.byte	0x1
	.byte	0x2d
	.byte	0xc
	.4byte	0x99
	.byte	0x5
	.byte	0x3
	.4byte	g_chip_type
	.byte	0x27
	.4byte	.LASF157
	.byte	0x1
	.byte	0x7e
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x1
	.byte	0x9c
	.4byte	0xbfd
	.byte	0x28
	.4byte	.LASF154
	.byte	0x1
	.byte	0x7e
	.byte	0x1d
	.4byte	0x99
	.4byte	.LLST13
	.byte	0x29
	.string	"buf"
	.byte	0x1
	.byte	0x7e
	.byte	0x31
	.4byte	0xbfd
	.4byte	.LLST14
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST15
	.byte	0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x81
	.byte	0x15
	.4byte	0x97f
	.byte	0x5
	.byte	0x3
	.4byte	last_us.8040
	.byte	0x24
	.4byte	.LASF156
	.byte	0x1
	.byte	0x82
	.byte	0xe
	.4byte	0x97f
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.byte	0x85
	.byte	0xd7
	.byte	0x2b
	.4byte	0x1134
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.byte	0x2b
	.4byte	0x113d
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.byte	0x98
	.byte	0x5
	.byte	0x2c
	.4byte	.LVL83
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL84
	.4byte	0x117c
	.4byte	0xbc6
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x85
	.byte	0
	.byte	0x2c
	.4byte	.LVL86
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL89
	.4byte	0x1195
	.byte	0x2c
	.4byte	.LVL91
	.4byte	0x1195
	.byte	0x2c
	.4byte	.LVL92
	.4byte	0x11a1
	.byte	0x2c
	.4byte	.LVL96
	.4byte	0x11ad
	.byte	0x2c
	.4byte	.LVL97
	.4byte	0x1195
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x96e
	.byte	0x27
	.4byte	.LASF158
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x1
	.byte	0x9c
	.4byte	0xc98
	.byte	0x28
	.4byte	.LASF159
	.byte	0x1
	.byte	0x6e
	.byte	0x18
	.4byte	0x99
	.4byte	.LLST12
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.byte	0x71
	.byte	0xdb
	.byte	0x2c
	.4byte	.LVL75
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL76
	.4byte	0x117c
	.4byte	0xc75
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x71
	.byte	0
	.byte	0x2c
	.4byte	.LVL77
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL79
	.4byte	0x11b9
	.byte	0x2f
	.4byte	.LVL80
	.4byte	0x11c5
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF160
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x1
	.byte	0x9c
	.4byte	0x112e
	.byte	0x28
	.4byte	.LASF161
	.byte	0x1
	.byte	0x33
	.byte	0x23
	.4byte	0x96e
	.4byte	.LLST0
	.byte	0x28
	.4byte	.LASF162
	.byte	0x1
	.byte	0x33
	.byte	0x37
	.4byte	0x96e
	.4byte	.LLST1
	.byte	0x30
	.4byte	.LASF163
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST2
	.byte	0x2a
	.string	"fdt"
	.byte	0x1
	.byte	0x36
	.byte	0x11
	.4byte	0x98b
	.4byte	.LLST3
	.byte	0x30
	.4byte	.LASF164
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.4byte	0x112e
	.4byte	.LLST4
	.byte	0x24
	.4byte	.LASF165
	.byte	0x1
	.byte	0x39
	.byte	0x9
	.4byte	0x99
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x30
	.4byte	.LASF166
	.byte	0x1
	.byte	0x3a
	.byte	0x11
	.4byte	0x621
	.4byte	.LLST5
	.byte	0x30
	.4byte	.LASF167
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST6
	.byte	0x30
	.4byte	.LASF168
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST7
	.byte	0x2a
	.string	"pin"
	.byte	0x1
	.byte	0x3e
	.byte	0xd
	.4byte	0x94a
	.4byte	.LLST8
	.byte	0x30
	.4byte	.LASF169
	.byte	0x1
	.byte	0x3f
	.byte	0xe
	.4byte	0x956
	.4byte	.LLST9
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x43
	.byte	0x4e
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0x4b
	.byte	0x44
	.byte	0x31
	.4byte	0x1153
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x45
	.byte	0x1f
	.4byte	0xd9b
	.byte	0x32
	.4byte	0x1164
	.byte	0
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0x46
	.byte	0x48
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0x4f
	.byte	0x5f
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0x53
	.byte	0x52
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.byte	0x58
	.byte	0x54
	.byte	0x31
	.4byte	0x1153
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	0xdf9
	.byte	0x33
	.4byte	0x1164
	.4byte	.LLST10
	.byte	0
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0x5b
	.byte	0x4f
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.byte	0x5e
	.byte	0x5d
	.byte	0x31
	.4byte	0x1153
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0x60
	.byte	0x2f
	.4byte	0xe37
	.byte	0x33
	.4byte	0x1164
	.4byte	.LLST11
	.byte	0
	.byte	0x2b
	.4byte	0x1146
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0x61
	.byte	0x69
	.byte	0x2d
	.4byte	.LVL3
	.4byte	0x11d1
	.4byte	0xe70
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2c
	.4byte	.LVL4
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL5
	.4byte	0x117c
	.4byte	0xea8
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x43
	.byte	0
	.byte	0x2d
	.4byte	.LVL7
	.4byte	0x11de
	.4byte	0xecb
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2c
	.4byte	.LVL9
	.4byte	0x116f
	.byte	0x2c
	.4byte	.LVL11
	.4byte	0x117c
	.byte	0x2c
	.4byte	.LVL13
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL17
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL18
	.4byte	0x117c
	.4byte	0xf24
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x46
	.byte	0x2e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL20
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL22
	.4byte	0x1188
	.byte	0x2d
	.4byte	.LVL26
	.4byte	0x11eb
	.4byte	0xf59
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x2c
	.4byte	.LVL28
	.4byte	0x116f
	.byte	0x2c
	.4byte	.LVL30
	.4byte	0x117c
	.byte	0x2d
	.4byte	.LVL32
	.4byte	0x11f8
	.4byte	0xf85
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL37
	.4byte	0x1188
	.byte	0x2d
	.4byte	.LVL40
	.4byte	0x1204
	.4byte	0xfbc
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2c
	.4byte	.LVL42
	.4byte	0x1188
	.byte	0x2d
	.4byte	.LVL43
	.4byte	0x1211
	.4byte	0xfe7
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x2d
	.4byte	.LVL44
	.4byte	0x11d1
	.4byte	0x1010
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2c
	.4byte	.LVL45
	.4byte	0x116f
	.byte	0x2c
	.4byte	.LVL46
	.4byte	0x116f
	.byte	0x2c
	.4byte	.LVL48
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL55
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL56
	.4byte	0x117c
	.4byte	0x1069
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x5b
	.byte	0x2e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL57
	.4byte	0x11d1
	.4byte	0x1092
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x2c
	.4byte	.LVL58
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL59
	.4byte	0x117c
	.4byte	0x10ca
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x5e
	.byte	0
	.byte	0x2c
	.4byte	.LVL61
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL63
	.4byte	0x1188
	.byte	0x2c
	.4byte	.LVL69
	.4byte	0x116f
	.byte	0x2d
	.4byte	.LVL70
	.4byte	0x117c
	.4byte	0x1124
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x61
	.byte	0x2e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x60
	.byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0
	.byte	0x2c
	.4byte	.LVL72
	.4byte	0x1188
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x97a
	.byte	0x34
	.4byte	.LASF170
	.byte	0x4
	.byte	0x5c
	.byte	0x37
	.byte	0x3
	.byte	0x34
	.4byte	.LASF171
	.byte	0x4
	.byte	0x57
	.byte	0x37
	.byte	0x3
	.byte	0x35
	.4byte	.LASF191
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x9aa
	.byte	0x3
	.byte	0x36
	.4byte	.LASF192
	.byte	0x3
	.byte	0x78
	.byte	0x18
	.4byte	0x96e
	.byte	0x3
	.4byte	0x116f
	.byte	0x37
	.string	"x"
	.byte	0x3
	.byte	0x78
	.byte	0x2d
	.4byte	0x99e
	.byte	0
	.byte	0x38
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x10
	.2byte	0x558
	.byte	0xc
	.byte	0x39
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x11
	.byte	0x9e
	.byte	0x6
	.byte	0x38
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x10
	.2byte	0x547
	.byte	0xc
	.byte	0x39
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x12
	.byte	0x23
	.byte	0xa
	.byte	0x39
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x12
	.byte	0x22
	.byte	0x6
	.byte	0x39
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x13
	.byte	0x28
	.byte	0x5
	.byte	0x39
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x13
	.byte	0x26
	.byte	0x5
	.byte	0x39
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x13
	.byte	0x27
	.byte	0x5
	.byte	0x38
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x14
	.2byte	0x311
	.byte	0xd
	.byte	0x38
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x14
	.2byte	0x1de
	.byte	0x5
	.byte	0x38
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x14
	.2byte	0x440
	.byte	0x5
	.byte	0x39
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x13
	.byte	0x24
	.byte	0x5
	.byte	0x38
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x14
	.2byte	0x470
	.byte	0xd
	.byte	0x39
	.4byte	.LASF185
	.4byte	.LASF185
	.byte	0x15
	.byte	0x1e
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
	.byte	0x26
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL81
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83-1
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LFE48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL78
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LFE47
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL66
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL36
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL66
	.4byte	.LFE46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL36
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE46
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"short int"
.LASF96:
	.string	"_rand48"
.LASF75:
	.string	"_emergency"
.LASF128:
	.string	"uint64_t"
.LASF144:
	.string	"blog_info_t"
.LASF3:
	.string	"__uint8_t"
.LASF112:
	.string	"_getdate_err"
.LASF65:
	.string	"_data"
.LASF116:
	.string	"_wcrtomb_state"
.LASF170:
	.string	"__disable_irq"
.LASF190:
	.string	"_blog_leve"
.LASF132:
	.string	"TrapNetCounter"
.LASF12:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF183:
	.string	"bl_ir_init"
.LASF179:
	.string	"bl_irled_init"
.LASF189:
	.string	"__locale_t"
.LASF114:
	.string	"_mbrtowc_state"
.LASF180:
	.string	"fdt_getprop"
.LASF32:
	.string	"__tm_sec"
.LASF60:
	.string	"_close"
.LASF0:
	.string	"signed char"
.LASF177:
	.string	"bl_irled_send_one_data"
.LASF151:
	.string	"intCallback_Type"
.LASF50:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF109:
	.string	"_wctomb_state"
.LASF90:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF192:
	.string	"fdt32_to_cpu"
.LASF56:
	.string	"_cookie"
.LASF89:
	.string	"__sglue"
.LASF7:
	.string	"long int"
.LASF134:
	.string	"BLOG_LEVEL_DEBUG"
.LASF53:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF29:
	.string	"_wds"
.LASF172:
	.string	"xTaskGetTickCountFromISR"
.LASF81:
	.string	"_result_k"
.LASF168:
	.string	"ctrltype"
.LASF10:
	.string	"long long int"
.LASF125:
	.string	"uint16_t"
.LASF161:
	.string	"fdt_input"
.LASF131:
	.string	"BaseType_t"
.LASF85:
	.string	"_cvtbuf"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF188:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/hal_drv"
.LASF113:
	.string	"_mbrlen_state"
.LASF42:
	.string	"_fnargs"
.LASF169:
	.string	"interval"
.LASF61:
	.string	"_ubuf"
.LASF152:
	.string	"intCbfArra"
.LASF137:
	.string	"BLOG_LEVEL_ERROR"
.LASF8:
	.string	"__uint32_t"
.LASF92:
	.string	"__FILE"
.LASF28:
	.string	"_sign"
.LASF149:
	.string	"_fsymf_info_hal_drvhal_ir"
.LASF73:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF104:
	.string	"_gamma_signgam"
.LASF120:
	.string	"_nmalloc"
.LASF31:
	.string	"__tm"
.LASF67:
	.string	"_mbstate"
.LASF19:
	.string	"__wchb"
.LASF150:
	.string	"SystemCoreClock"
.LASF148:
	.string	"_fsymf_level_hal_drvhal_ir"
.LASF84:
	.string	"_cvtlen"
.LASF9:
	.string	"long unsigned int"
.LASF54:
	.string	"_file"
.LASF74:
	.string	"_inc"
.LASF160:
	.string	"hal_ir_init_from_dts"
.LASF143:
	.string	"name"
.LASF156:
	.string	"reset_us"
.LASF181:
	.string	"fdt_subnode_offset"
.LASF17:
	.string	"_ssize_t"
.LASF94:
	.string	"_niobs"
.LASF142:
	.string	"level"
.LASF153:
	.string	"g_chip_type"
.LASF5:
	.string	"short unsigned int"
.LASF87:
	.string	"_atexit0"
.LASF111:
	.string	"_signal_buf"
.LASF102:
	.string	"_asctime_buf"
.LASF155:
	.string	"last_us"
.LASF80:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF14:
	.string	"wint_t"
.LASF66:
	.string	"_lock"
.LASF154:
	.string	"data_num"
.LASF174:
	.string	"xTaskGetTickCount"
.LASF98:
	.string	"_mult"
.LASF58:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF100:
	.string	"_unused_rand"
.LASF165:
	.string	"lentmp"
.LASF64:
	.string	"_offset"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF164:
	.string	"addr_prop"
.LASF48:
	.string	"_fns"
.LASF22:
	.string	"_mbstate_t"
.LASF119:
	.string	"_nextf"
.LASF159:
	.string	"chip_type"
.LASF36:
	.string	"__tm_mon"
.LASF138:
	.string	"BLOG_LEVEL_ASSERT"
.LASF46:
	.string	"_atexit"
.LASF129:
	.string	"suboptarg"
.LASF78:
	.string	"__sdidinit"
.LASF15:
	.string	"_off_t"
.LASF135:
	.string	"BLOG_LEVEL_INFO"
.LASF171:
	.string	"__enable_irq"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF11:
	.string	"__uint64_t"
.LASF83:
	.string	"_freelist"
.LASF191:
	.string	"xPortIsInsideInterrupt"
.LASF182:
	.string	"fdt_stringlist_count"
.LASF186:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF57:
	.string	"_read"
.LASF176:
	.string	"bl_timer_delay_us"
.LASF133:
	.string	"BLOG_LEVEL_ALL"
.LASF126:
	.string	"int32_t"
.LASF43:
	.string	"_dso_handle"
.LASF157:
	.string	"hal_irled_send_data"
.LASF86:
	.string	"_new"
.LASF118:
	.string	"_h_errno"
.LASF25:
	.string	"_flock_t"
.LASF39:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF68:
	.string	"_flags2"
.LASF95:
	.string	"_iobs"
.LASF140:
	.string	"blog_level_t"
.LASF52:
	.string	"__sFILE"
.LASF187:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/hal_ir.c"
.LASF146:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF158:
	.string	"hal_irled_init"
.LASF107:
	.string	"_mblen_state"
.LASF141:
	.string	"_blog_info"
.LASF47:
	.string	"_ind"
.LASF77:
	.string	"_locale"
.LASF79:
	.string	"__cleanup"
.LASF173:
	.string	"bl_printk"
.LASF27:
	.string	"_maxwds"
.LASF69:
	.string	"_reent"
.LASF163:
	.string	"offset1"
.LASF97:
	.string	"_seed"
.LASF20:
	.string	"__count"
.LASF127:
	.string	"uint32_t"
.LASF59:
	.string	"_seek"
.LASF122:
	.string	"_impure_ptr"
.LASF16:
	.string	"_fpos_t"
.LASF175:
	.string	"bl_timer_now_us64"
.LASF70:
	.string	"_errno"
.LASF91:
	.string	"char"
.LASF63:
	.string	"_blksize"
.LASF51:
	.string	"_size"
.LASF13:
	.string	"unsigned int"
.LASF4:
	.string	"__uint16_t"
.LASF178:
	.string	"bl_irled_gpio_init"
.LASF139:
	.string	"BLOG_LEVEL_NEVER"
.LASF147:
	.string	"_fsymc_info_hal_drv"
.LASF6:
	.string	"__int32_t"
.LASF185:
	.string	"memcmp"
.LASF26:
	.string	"_next"
.LASF101:
	.string	"_strtok_last"
.LASF21:
	.string	"__value"
.LASF44:
	.string	"_fntypes"
.LASF1:
	.string	"unsigned char"
.LASF99:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF123:
	.string	"_global_impure_ptr"
.LASF145:
	.string	"_fsymc_level_hal_drv"
.LASF162:
	.string	"dtb_offset"
.LASF72:
	.string	"_stdout"
.LASF38:
	.string	"__tm_wday"
.LASF93:
	.string	"_glue"
.LASF71:
	.string	"_stdin"
.LASF124:
	.string	"uint8_t"
.LASF110:
	.string	"_l64a_buf"
.LASF88:
	.string	"_sig_func"
.LASF62:
	.string	"_nbuf"
.LASF121:
	.string	"_unused"
.LASF40:
	.string	"__tm_isdst"
.LASF103:
	.string	"_localtime_buf"
.LASF184:
	.string	"fdt_stringlist_get"
.LASF33:
	.string	"__tm_min"
.LASF167:
	.string	"countindex"
.LASF106:
	.string	"_r48"
.LASF136:
	.string	"BLOG_LEVEL_WARN"
.LASF108:
	.string	"_mbtowc_state"
.LASF82:
	.string	"_p5s"
.LASF130:
	.string	"fdt32_t"
.LASF166:
	.string	"result"
.LASF35:
	.string	"__tm_mday"
.LASF105:
	.string	"_rand_next"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
