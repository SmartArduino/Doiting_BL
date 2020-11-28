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
	.file 1 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_adc.c"
	.loc 1 37 1
	.cfi_startproc
.LVL0:
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 39 9
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
	.loc 1 41 5 is_stmt 1
.LVL1:
	.loc 1 39 9 is_stmt 0
	sw	zero,40(sp)
	sw	zero,44(sp)
	mv	a5,sp
	addi	a4,sp,40
.LVL2:
.L3:
	.loc 1 42 9 is_stmt 1
	.loc 1 42 12 is_stmt 0
	lw	a3,0(a5)
	beq	a3,a0,.L4
	addi	a5,a5,4
	.loc 1 41 5 discriminator 2
	bne	a5,a4,.L3
	.loc 1 47 12
	li	a0,-1
.LVL3:
.L1:
	.loc 1 48 1
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L4:
	.cfi_restore_state
	.loc 1 43 20
	li	a0,0
.LVL5:
	j	.L1
	.cfi_endproc
.LFE23:
	.size	check_adc_gpio_valid, .-check_adc_gpio_valid
	.section	.text.hal_adc_callback_register,"ax",@progbits
	.align	1
	.globl	hal_adc_callback_register
	.type	hal_adc_callback_register, @function
hal_adc_callback_register:
.LFB25:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 106 5
	.loc 1 108 5
	.loc 1 108 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 105 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 114 5 is_stmt 1
	.loc 1 114 11 is_stmt 0
	li	a0,1
.LVL7:
	.loc 1 105 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 114 11
	call	bl_dma_find_ctx_by_channel
.LVL8:
	.loc 1 115 5 is_stmt 1
	.loc 1 115 13 is_stmt 0
	sw	s0,24(a0)
	.loc 1 117 5 is_stmt 1
	.loc 1 118 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	.loc 1 117 12
	li	a0,0
.LVL10:
	.loc 1 118 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL11:
.L9:
	.loc 1 111 16
	li	a0,-1
.LVL12:
	.loc 1 118 1
	ret
	.cfi_endproc
.LFE25:
	.size	hal_adc_callback_register, .-hal_adc_callback_register
	.section	.text.hal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hal_adc_add_channel
	.type	hal_adc_add_channel, @function
hal_adc_add_channel:
.LFB26:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 127 5
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 122 1
	mv	s0,a0
	.loc 1 127 11
	call	check_adc_gpio_valid
.LVL14:
	.loc 1 128 5 is_stmt 1
	.loc 1 128 8 is_stmt 0
	blt	a0,zero,.L16
	.loc 1 134 5 is_stmt 1
	mv	a0,s0
.LVL15:
	call	bl_adc_gpio_init
.LVL16:
	.loc 1 135 5
	.loc 1 135 15 is_stmt 0
	mv	a0,s0
	call	bl_adc_get_channel_by_gpio
.LVL17:
	mv	s0,a0
.LVL18:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 14 is_stmt 0
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL19:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 60 is_stmt 0
	li	a5,1
	sll	a4,a5,s0
	.loc 1 137 55
	lw	a5,16(a0)
	or	a5,a5,a4
	.loc 1 137 29
	sw	a5,16(a0)
	.loc 1 139 5 is_stmt 1
	.loc 1 139 12 is_stmt 0
	li	a0,0
.LVL20:
.L14:
	.loc 1 140 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL21:
.L16:
	.cfi_restore_state
	.loc 1 131 16
	li	a0,-1
.LVL22:
	j	.L14
	.cfi_endproc
.LFE26:
	.size	hal_adc_add_channel, .-hal_adc_add_channel
	.section	.text.hal_adc_init,"ax",@progbits
	.align	1
	.globl	hal_adc_init
	.type	hal_adc_init, @function
hal_adc_init:
.LFB24:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 57 5
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 53 1
	mv	s0,a0
	mv	s3,a2
	mv	s2,a3
	.loc 1 57 8
	bne	a0,zero,.L19
	.loc 1 58 9 is_stmt 1
	.loc 1 58 23 is_stmt 0
	addi	a5,a1,-40
	.loc 1 58 12
	li	a4,1260
	bleu	a5,a4,.L20
.LVL24:
.L22:
	.loc 1 61 20
	li	s1,-1
.L18:
	.loc 1 102 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL25:
	mv	a0,s1
	lw	s2,32(sp)
	.cfi_restore 18
.LVL26:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL27:
.L19:
	.cfi_restore_state
	.loc 1 63 12 is_stmt 1
	.loc 1 63 15 is_stmt 0
	li	a5,1
	bne	a0,a5,.L22
	.loc 1 64 9 is_stmt 1
	.loc 1 64 12 is_stmt 0
	li	a5,16384
	.loc 1 64 24
	addi	a4,a1,-500
	.loc 1 64 12
	addi	a5,a5,-884
	bgtu	a4,a5,.L22
.L20:
	.loc 1 75 11
	mv	a0,s2
	sw	a1,12(sp)
	.loc 1 75 5 is_stmt 1
	.loc 1 75 11 is_stmt 0
	call	check_adc_gpio_valid
.LVL28:
	mv	s1,a0
.LVL29:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	bne	a0,zero,.L22
	.loc 1 82 5 is_stmt 1
	lw	a1,12(sp)
	mv	a0,s0
	call	bl_adc_freq_init
.LVL30:
	.loc 1 83 5
	mv	a1,s2
	mv	a0,s0
	call	bl_adc_init
.LVL31:
	.loc 1 85 5
	.loc 1 85 8 is_stmt 0
	bne	s0,zero,.L23
	.loc 1 86 18
	li	s3,12
.LVL32:
.L23:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 11 is_stmt 0
	mv	a1,s3
	mv	a0,s0
	call	bl_adc_dma_init
.LVL33:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 8 is_stmt 0
	blt	a0,zero,.L22
	.loc 1 97 5 is_stmt 1
	mv	a0,s2
.LVL34:
	call	hal_adc_add_channel
.LVL35:
	.loc 1 99 5
	call	bl_adc_start
.LVL36:
	.loc 1 101 5
	.loc 1 101 12 is_stmt 0
	j	.L18
	.cfi_endproc
.LFE24:
	.size	hal_adc_init, .-hal_adc_init
	.section	.text.hal_adc_get_data,"ax",@progbits
	.align	1
	.globl	hal_adc_get_data
	.type	hal_adc_get_data, @function
hal_adc_get_data:
.LFB27:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 144 5
	.loc 1 145 5
	.loc 1 146 5
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 143 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 143 1
	mv	s1,a0
	mv	s2,a1
	.loc 1 150 11
	call	check_adc_gpio_valid
.LVL38:
	.loc 1 151 5 is_stmt 1
	.loc 1 151 8 is_stmt 0
	bge	a0,zero,.L27
.LVL39:
.L29:
	.loc 1 154 16
	li	a0,-1
.L26:
	.loc 1 179 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL40:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL41:
.L27:
	.cfi_restore_state
	.loc 1 157 5 is_stmt 1
	.loc 1 157 14 is_stmt 0
	li	a0,1
.LVL42:
	call	bl_dma_find_ctx_by_channel
.LVL43:
	mv	s0,a0
.LVL44:
	.loc 1 158 5 is_stmt 1
	.loc 1 158 8 is_stmt 0
	beq	a0,zero,.L29
	.loc 1 164 5 is_stmt 1
	.loc 1 164 15 is_stmt 0
	mv	a0,s1
	call	bl_adc_get_channel_by_gpio
.LVL45:
	.loc 1 165 25
	lw	a4,16(s0)
	.loc 1 165 13
	li	a5,1
	sll	a5,a5,a0
	.loc 1 165 25
	and	a5,a5,a4
	.loc 1 164 15
	mv	s1,a0
.LVL46:
	.loc 1 165 5 is_stmt 1
	.loc 1 165 8 is_stmt 0
	beq	a5,zero,.L29
	.loc 1 170 5 is_stmt 1
	.loc 1 170 15 is_stmt 0
	lw	a1,4(s0)
	.loc 1 170 8
	beq	a1,zero,.L29
	.loc 1 175 5 is_stmt 1
	li	a2,48
	mv	a0,sp
	call	memcpy
.LVL47:
	.loc 1 176 5
	.loc 1 176 12 is_stmt 0
	mv	a3,s2
	mv	a2,s1
	li	a1,12
	mv	a0,sp
	call	bl_adc_parse_data
.LVL48:
	.loc 1 178 5 is_stmt 1
	.loc 1 178 12 is_stmt 0
	j	.L26
	.cfi_endproc
.LFE27:
	.size	hal_adc_get_data, .-hal_adc_get_data
	.section	.text.hal_prase_adc_data,"ax",@progbits
	.align	1
	.globl	hal_prase_adc_data
	.type	hal_prase_adc_data, @function
hal_prase_adc_data:
.LFB28:
	.loc 1 182 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 186 5
	.loc 1 182 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 186 15
	mv	a0,a1
.LVL50:
	.loc 1 182 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 182 1
	sw	a2,12(sp)
	.loc 1 186 15
	call	bl_adc_get_channel_by_gpio
.LVL51:
	.loc 1 187 5 is_stmt 1
	.loc 1 187 8 is_stmt 0
	li	a4,-1
	beq	a0,a4,.L40
	mv	a2,a0
	.loc 1 193 5 is_stmt 1
	.loc 1 193 12 is_stmt 0
	mv	a0,s0
.LVL52:
	.loc 1 196 1
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL53:
	.loc 1 193 12
	lw	a3,12(sp)
	.loc 1 196 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 193 12
	li	a1,12
	.loc 1 196 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL54:
	.loc 1 193 12
	tail	bl_adc_parse_data
.LVL55:
.L40:
	.cfi_restore_state
	.loc 1 196 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL56:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL57:
	jr	ra
	.cfi_endproc
.LFE28:
	.size	hal_prase_adc_data, .-hal_prase_adc_data
	.section	.text.hal_parse_data_arr,"ax",@progbits
	.align	1
	.globl	hal_parse_data_arr
	.type	hal_parse_data_arr, @function
hal_parse_data_arr:
.LFB29:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 201 5
	.loc 1 203 5
	.loc 1 204 28 is_stmt 0
	li	a4,65536
	slli	a2,a2,2
.LVL59:
	.loc 1 203 5
	li	a5,0
	.loc 1 204 28
	addi	a4,a4,-1
.LVL60:
.L44:
	.loc 1 203 5 discriminator 1
	bne	a5,a2,.L45
	.loc 1 207 5 is_stmt 1
	.loc 1 208 1 is_stmt 0
	li	a0,0
.LVL61:
	ret
.LVL62:
.L45:
	.loc 1 204 9 is_stmt 1 discriminator 3
	.loc 1 204 24 is_stmt 0 discriminator 3
	add	a3,a0,a5
	.loc 1 204 28 discriminator 3
	lw	a3,0(a3)
	.loc 1 204 19 discriminator 3
	add	a6,a1,a5
	addi	a5,a5,4
	.loc 1 204 28 discriminator 3
	and	a3,a3,a4
	.loc 1 204 19 discriminator 3
	sw	a3,0(a6)
	j	.L44
	.cfi_endproc
.LFE29:
	.size	hal_parse_data_arr, .-hal_parse_data_arr
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 8 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_adc.h"
	.file 9 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_dma.h"
	.file 10 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF159
	.byte	0xc
	.4byte	.LASF160
	.4byte	.LASF161
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
	.byte	0x2
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
	.byte	0x2
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
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xe2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xe2
	.byte	0
	.byte	0x8
	.4byte	0x59
	.4byte	0xf2
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x116
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xf2
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x73
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x130
	.byte	0xd
	.4byte	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1a2
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x81
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a8
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x148
	.byte	0x8
	.4byte	0x124
	.4byte	0x1b8
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x280
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x280
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x280
	.byte	0x80
	.byte	0x11
	.4byte	.LASF42
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF43
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x122
	.4byte	0x290
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2d3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2d3
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d9
	.byte	0x8
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x23b
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x290
	.byte	0x8
	.4byte	0x2e9
	.4byte	0x2e9
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2ef
	.byte	0x12
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x318
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x318
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x59
	.byte	0xd
	.4byte	.LASF50
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x461
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x318
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f0
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x122
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5e5
	.byte	0x20
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x60f
	.byte	0x24
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x633
	.byte	0x28
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x64d
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f0
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x318
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x653
	.byte	0x40
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x663
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f0
	.byte	0x44
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x47f
	.byte	0x54
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x13c
	.byte	0x58
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x116
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xb4
	.4byte	0x47f
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x5d3
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x48a
	.byte	0x15
	.4byte	0x47f
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d3
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6bf
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6bf
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8bf
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d4
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8e5
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a2
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8eb
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d3
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89a
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d3
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x290
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8fc
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x680
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x908
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5d9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x15
	.4byte	0x5d9
	.byte	0xf
	.byte	0x4
	.4byte	0x461
	.byte	0x13
	.4byte	0xb4
	.4byte	0x609
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x609
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e0
	.byte	0xf
	.byte	0x4
	.4byte	0x5eb
	.byte	0x13
	.4byte	0xa8
	.4byte	0x633
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0xa8
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x615
	.byte	0x13
	.4byte	0x81
	.4byte	0x64d
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x639
	.byte	0x8
	.4byte	0x59
	.4byte	0x663
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x59
	.4byte	0x673
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x31e
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b9
	.byte	0x17
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b9
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x680
	.byte	0xf
	.byte	0x4
	.4byte	0x673
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6fe
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6fe
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6fe
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x60
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x60
	.4byte	0x70e
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x823
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d3
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x823
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b8
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6c5
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x116
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x116
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x116
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x833
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x843
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x116
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x116
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x116
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x116
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x116
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x833
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x843
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x853
	.byte	0x9
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87a
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87a
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88a
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x318
	.4byte	0x88a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x89a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8bf
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x70e
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x853
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x8cf
	.byte	0x9
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF162
	.byte	0xf
	.byte	0x4
	.4byte	0x8cf
	.byte	0x1e
	.4byte	0x8e5
	.byte	0x14
	.4byte	0x47f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8da
	.byte	0xf
	.byte	0x4
	.4byte	0x1a2
	.byte	0x1e
	.4byte	0x8fc
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x902
	.byte	0xf
	.byte	0x4
	.4byte	0x8f1
	.byte	0x8
	.4byte	0x673
	.4byte	0x918
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x47f
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x485
	.byte	0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x3f
	.byte	0x11
	.4byte	0x33
	.byte	0x20
	.4byte	.LASF123
	.byte	0x7
	.byte	0x54
	.byte	0x13
	.4byte	0x932
	.byte	0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0x24
	.byte	0x10
	.4byte	0x956
	.byte	0xf
	.byte	0x4
	.4byte	0x95c
	.byte	0x1e
	.4byte	0x971
	.byte	0x14
	.4byte	0x81
	.byte	0x14
	.4byte	0x971
	.byte	0x14
	.4byte	0x67
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x67
	.byte	0xd
	.4byte	.LASF125
	.byte	0x1c
	.byte	0x8
	.byte	0x25
	.byte	0x10
	.4byte	0x9df
	.byte	0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x26
	.byte	0x9
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF127
	.byte	0x8
	.byte	0x27
	.byte	0xf
	.4byte	0x971
	.byte	0x4
	.byte	0xb
	.4byte	.LASF128
	.byte	0x8
	.byte	0x28
	.byte	0xb
	.4byte	0x122
	.byte	0x8
	.byte	0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x29
	.byte	0x9
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF130
	.byte	0x8
	.byte	0x2a
	.byte	0xe
	.4byte	0x67
	.byte	0x10
	.byte	0xb
	.4byte	.LASF131
	.byte	0x8
	.byte	0x2b
	.byte	0xe
	.4byte	0x67
	.byte	0x14
	.byte	0xe
	.string	"cb"
	.byte	0x8
	.byte	0x2c
	.byte	0x11
	.4byte	0x94a
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF132
	.byte	0x8
	.byte	0x2d
	.byte	0x2
	.4byte	0x977
	.byte	0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc7
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xa42
	.byte	0x22
	.string	"ptr"
	.byte	0x1
	.byte	0xc7
	.byte	0x22
	.4byte	0x971
	.4byte	.LLST20
	.byte	0x23
	.4byte	.LASF133
	.byte	0x1
	.byte	0xc7
	.byte	0x31
	.4byte	0x971
	.byte	0x1
	.byte	0x5b
	.byte	0x24
	.4byte	.LASF131
	.byte	0x1
	.byte	0xc7
	.byte	0x42
	.4byte	0x67
	.4byte	.LLST21
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST22
	.byte	0
	.byte	0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0xb5
	.byte	0x9
	.4byte	0x33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xadd
	.byte	0x22
	.string	"ptr"
	.byte	0x1
	.byte	0xb5
	.byte	0x26
	.4byte	0x971
	.4byte	.LLST16
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0xb5
	.byte	0x2f
	.4byte	0x81
	.4byte	.LLST17
	.byte	0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0xb5
	.byte	0x3d
	.4byte	0x81
	.4byte	.LLST18
	.byte	0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x27
	.4byte	.LASF139
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST19
	.byte	0x28
	.4byte	.LVL51
	.4byte	0xe2d
	.4byte	0xabf
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x2a
	.4byte	.LVL55
	.4byte	0xe39
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x29
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF140
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd7
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x8e
	.byte	0x1e
	.4byte	0x81
	.4byte	.LLST13
	.byte	0x24
	.4byte	.LASF137
	.byte	0x1
	.byte	0x8e
	.byte	0x2c
	.4byte	0x81
	.4byte	.LLST14
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0x90
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST15
	.byte	0x26
	.4byte	.LASF141
	.byte	0x1
	.byte	0x91
	.byte	0x10
	.4byte	0xbd7
	.byte	0x1
	.byte	0x58
	.byte	0x26
	.4byte	.LASF142
	.byte	0x1
	.byte	0x92
	.byte	0xe
	.4byte	0xbdd
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x93
	.byte	0xd
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x94
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.byte	0x59
	.byte	0x28
	.4byte	.LVL38
	.4byte	0xdd5
	.4byte	0xb74
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL43
	.4byte	0xe45
	.4byte	0xb87
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x28
	.4byte	.LVL45
	.4byte	0xe2d
	.4byte	0xb9b
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL47
	.4byte	0xe51
	.4byte	0xbb5
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL48
	.4byte	0xe39
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x29
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9df
	.byte	0x8
	.4byte	0x67
	.4byte	0xbed
	.byte	0x9
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x21
	.4byte	.LASF143
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xc93
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x79
	.byte	0x1d
	.4byte	0x81
	.4byte	.LLST4
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0x7b
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST5
	.byte	0x27
	.4byte	.LASF141
	.byte	0x1
	.byte	0x7c
	.byte	0x10
	.4byte	0xbd7
	.4byte	.LLST6
	.byte	0x27
	.4byte	.LASF139
	.byte	0x1
	.byte	0x7d
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x28
	.4byte	.LVL14
	.4byte	0xdd5
	.4byte	0xc5b
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL16
	.4byte	0xe5d
	.4byte	0xc6f
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL17
	.4byte	0xe2d
	.4byte	0xc83
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LVL19
	.4byte	0xe45
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF144
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xcdc
	.byte	0x22
	.string	"cb"
	.byte	0x1
	.byte	0x68
	.byte	0x2b
	.4byte	0x94a
	.4byte	.LLST2
	.byte	0x25
	.string	"ctx"
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.4byte	0xbd7
	.4byte	.LLST3
	.byte	0x2b
	.4byte	.LVL8
	.4byte	0xe45
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF145
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd5
	.byte	0x24
	.4byte	.LASF126
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.4byte	0x81
	.4byte	.LLST8
	.byte	0x24
	.4byte	.LASF146
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x24
	.4byte	.LASF147
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.4byte	0x81
	.4byte	.LLST10
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x34
	.byte	0x38
	.4byte	0x81
	.4byte	.LLST11
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST12
	.byte	0x26
	.4byte	.LASF148
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x81
	.byte	0x1
	.byte	0x63
	.byte	0x28
	.4byte	.LVL28
	.4byte	0xdd5
	.4byte	0xd68
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL30
	.4byte	0xe69
	.4byte	0xd83
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x28
	.4byte	.LVL31
	.4byte	0xe75
	.4byte	0xd9d
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL33
	.4byte	0xe81
	.4byte	0xdb7
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x29
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL35
	.4byte	0xbed
	.4byte	0xdcb
	.byte	0x29
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL36
	.4byte	0xe8d
	.byte	0
	.byte	0x2d
	.4byte	.LASF163
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x81
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1d
	.byte	0x24
	.4byte	.LASF136
	.byte	0x1
	.byte	0x24
	.byte	0x25
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST1
	.byte	0x26
	.4byte	.LASF149
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0xe1d
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x8
	.4byte	0x81
	.4byte	0xe2d
	.byte	0x9
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x2e
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x8
	.byte	0x39
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x8
	.byte	0x3b
	.byte	0x9
	.byte	0x2e
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x9
	.byte	0x4e
	.byte	0x7
	.byte	0x2e
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0x1f
	.byte	0x8
	.byte	0x2e
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x8
	.byte	0x38
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x8
	.byte	0x3a
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x8
	.byte	0x35
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x8
	.byte	0x36
	.byte	0x5
	.byte	0x2e
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x8
	.byte	0x37
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x2e
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
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL51-1
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL57
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x7a
	.byte	0x18
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
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
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL32
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28-1
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF149:
	.string	"gpio_arr"
.LASF133:
	.string	"output"
.LASF39:
	.string	"_on_exit_args"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF137:
	.string	"raw_flag"
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
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF55:
	.string	"_read"
.LASF126:
	.string	"mode"
.LASF111:
	.string	"_mbrlen_state"
.LASF141:
	.string	"pstctx"
.LASF70:
	.string	"_stdout"
.LASF151:
	.string	"bl_adc_parse_data"
.LASF14:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF155:
	.string	"bl_adc_freq_init"
.LASF54:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF142:
	.string	"adc_data"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF135:
	.string	"hal_prase_adc_data"
.LASF8:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF148:
	.string	"buf_size"
.LASF158:
	.string	"bl_adc_start"
.LASF18:
	.string	"__count"
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
.LASF100:
	.string	"_asctime_buf"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF140:
	.string	"hal_adc_get_data"
.LASF160:
	.string	"/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_adc.c"
.LASF90:
	.string	"__FILE"
.LASF62:
	.string	"_offset"
.LASF73:
	.string	"_emergency"
.LASF132:
	.string	"adc_ctx_t"
.LASF123:
	.string	"TrapNetCounter"
.LASF131:
	.string	"data_size"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF24:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF146:
	.string	"freq"
.LASF136:
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
.LASF125:
	.string	"adc_ctx"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF128:
	.string	"adc_lli"
.LASF147:
	.string	"data_num"
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
.LASF129:
	.string	"lli_flag"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF114:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"BaseType_t"
.LASF52:
	.string	"_file"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF159:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF156:
	.string	"bl_adc_init"
.LASF40:
	.string	"_fnargs"
.LASF38:
	.string	"__tm_isdst"
.LASF116:
	.string	"_h_errno"
.LASF138:
	.string	"data"
.LASF34:
	.string	"__tm_mon"
.LASF56:
	.string	"_write"
.LASF139:
	.string	"channel"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF157:
	.string	"bl_adc_dma_init"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF161:
	.string	"/b-l/dolphin/build_out/hal_drv"
.LASF143:
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
.LASF145:
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
.LASF130:
	.string	"chan_init_table"
.LASF163:
	.string	"check_adc_gpio_valid"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF64:
	.string	"_lock"
.LASF9:
	.string	"long unsigned int"
.LASF150:
	.string	"bl_adc_get_channel_by_gpio"
.LASF144:
	.string	"hal_adc_callback_register"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF134:
	.string	"hal_parse_data_arr"
.LASF4:
	.string	"int32_t"
.LASF41:
	.string	"_dso_handle"
.LASF83:
	.string	"_cvtbuf"
.LASF6:
	.string	"unsigned char"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF124:
	.string	"bl_adc_cb_t"
.LASF91:
	.string	"_glue"
.LASF87:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF127:
	.string	"channel_data"
.LASF154:
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
.LASF153:
	.string	"memcpy"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF152:
	.string	"bl_dma_find_ctx_by_channel"
.LASF13:
	.string	"_off_t"
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
.LASF162:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
