	.file	"ukey.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.keys_get_press_key,"ax",@progbits
	.align	1
	.type	keys_get_press_key, @function
keys_get_press_key:
.LFB6:
	.file 1 "/b-l/dolphin/components/ukey/ukey.c"
	.loc 1 42 54
	.cfi_startproc
.LVL0:
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 44 45 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lbu	a6,0(a5)
	.loc 1 45 43
	lw	a7,4(a5)
	.loc 1 44 5
	li	a4,0
	.loc 1 45 28
	li	t1,1
.LVL1:
.L2:
	.loc 1 44 5 discriminator 1
	andi	a5,a4,0xff
	bgtu	a6,a5,.L4
	.loc 1 49 11
	li	a3,0
	j	.L1
.L4:
	.loc 1 45 9 is_stmt 1
	.loc 1 45 52 is_stmt 0
	slli	a5,a4,2
	add	a5,a7,a5
	lw	a3,0(a5)
	addi	a4,a4,1
.LVL2:
	.loc 1 45 28
	lw	a5,4(a3)
	sll	a5,t1,a5
	srai	a2,a5,31
	.loc 1 45 23
	and	a2,a2,a1
	and	a5,a5,a0
	.loc 1 45 11
	or	a5,a5,a2
	beq	a5,zero,.L2
.L1:
	.loc 1 50 1
	mv	a0,a3
.LVL3:
	ret
	.cfi_endproc
.LFE6:
	.size	keys_get_press_key, .-keys_get_press_key
	.section	.text.ukey_handle,"ax",@progbits
	.align	1
	.globl	ukey_handle
	.type	ukey_handle, @function
ukey_handle:
.LFB7:
	.loc 1 53 28 is_stmt 1
	.cfi_startproc
.LVL4:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LBB7:
	.loc 1 74 27 is_stmt 0
	lui	s0,%hi(.LANCHOR2)
.LBB8:
.LBB9:
	.loc 1 33 33
	lui	s1,%hi(.LANCHOR0)
.LBE9:
.LBE8:
.LBE7:
	.loc 1 53 28
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	.cfi_offset 23, -36
.LBB16:
.LBB13:
.LBB10:
	.loc 1 33 33
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 35 34
	li	s2,1
.LBE10:
.LBE13:
	.loc 1 65 9
	lui	s4,%hi(.LANCHOR1)
	.loc 1 83 26
	lui	s3,%hi(.LANCHOR3)
	.loc 1 74 27
	addi	s0,s0,%lo(.LANCHOR2)
	.loc 1 79 28
	li	s5,2
.LVL5:
.L24:
.LBE16:
	.loc 1 54 5 is_stmt 1
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 57 5
	.loc 1 59 5
.LBB17:
	.loc 1 61 9
	.loc 1 63 9
.LBB14:
.LBB11:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 33 12 is_stmt 0
	li	s6,0
.LVL6:
.L6:
	.loc 1 33 5
	lbu	a5,0(s1)
	bgtu	a5,s6,.L9
	.loc 1 39 12
	li	a5,0
	li	a4,0
	j	.L8
.L9:
	.loc 1 34 9 is_stmt 1
	.loc 1 34 58 is_stmt 0
	lw	a4,4(s1)
	slli	s7,s6,2
	add	a4,a4,s7
	.loc 1 34 61
	lw	a5,0(a4)
	.loc 1 34 13
	lbu	a0,4(a5)
	call	bl_gpio_input_get_value
.LVL7:
	.loc 1 34 11
	bne	a0,zero,.L7
	.loc 1 35 13 is_stmt 1
	.loc 1 35 58 is_stmt 0
	lw	a5,4(s1)
	add	a5,a5,s7
	.loc 1 35 61
	lw	a5,0(a5)
	.loc 1 35 34
	lw	a5,4(a5)
	sll	a5,s2,a5
	srai	a4,a5,31
.LVL8:
	.loc 1 36 13 is_stmt 1
.L8:
.LBE11:
.LBE14:
	.loc 1 65 9
	addi	a2,s4,%lo(.LANCHOR1)
	lbu	a3,0(a2)
	addi	s6,s4,%lo(.LANCHOR1)
	beq	a3,s2,.L10
	beq	a3,zero,.L11
	beq	a3,s5,.L12
	li	a2,4
	beq	a3,a2,.L13
.LVL9:
.L14:
	.loc 1 117 9
	li	a0,30
	call	vTaskDelay
.LVL10:
.LBE17:
	.loc 1 60 5 is_stmt 0
	j	.L24
.LVL11:
.L7:
.LBB18:
.LBB15:
.LBB12:
	.loc 1 33 45
	addi	s6,s6,1
.LVL12:
	andi	s6,s6,0xff
.LVL13:
	j	.L6
.LVL14:
.L11:
.LBE12:
.LBE15:
	.loc 1 68 13 is_stmt 1
	.loc 1 68 16 is_stmt 0
	or	a3,a5,a4
	beq	a3,zero,.L14
	.loc 1 69 17 is_stmt 1
	.loc 1 69 26 is_stmt 0
	sw	a5,0(s0)
	sw	a4,4(s0)
	.loc 1 70 17 is_stmt 1
	.loc 1 70 28 is_stmt 0
	sb	s2,0(a2)
	j	.L14
.L10:
	.loc 1 74 13 is_stmt 1
	.loc 1 74 16 is_stmt 0
	lw	a3,0(s0)
	bne	a3,a5,.L16
	lw	a3,4(s0)
	bne	a3,a4,.L16
	.loc 1 75 17 is_stmt 1
	.loc 1 75 23 is_stmt 0
	mv	a0,a5
	mv	a1,a4
	call	keys_get_press_key
.LVL15:
	.loc 1 76 17 is_stmt 1
	.loc 1 76 19 is_stmt 0
	beq	a0,zero,.L17
	.loc 1 76 30 discriminator 1
	lw	a5,12(a0)
	.loc 1 76 24 discriminator 1
	beq	a5,zero,.L17
	.loc 1 77 21 is_stmt 1
	lbu	a0,4(a0)
.LVL16:
	li	a1,0
	jalr	a5
.LVL17:
.L17:
	.loc 1 79 17
	.loc 1 79 28 is_stmt 0
	sb	s5,0(s6)
	.loc 1 80 17 is_stmt 1
.L53:
	.loc 1 83 17
	.loc 1 83 26 is_stmt 0
	sb	zero,%lo(.LANCHOR3)(s3)
	j	.L14
.LVL18:
.L12:
	.loc 1 87 13 is_stmt 1
	.loc 1 87 27 is_stmt 0
	lw	a0,0(s0)
	lw	a1,4(s0)
	.loc 1 87 16
	bne	a0,a5,.L25
	beq	a1,a4,.L51
.L25:
	.loc 1 88 17 is_stmt 1
	.loc 1 88 23 is_stmt 0
	call	keys_get_press_key
.LVL19:
	.loc 1 89 17 is_stmt 1
	.loc 1 89 19 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 89 30 discriminator 1
	lw	a5,12(a0)
	.loc 1 89 24 discriminator 1
	beq	a5,zero,.L16
	.loc 1 90 21 is_stmt 1
	lbu	a0,4(a0)
.LVL20:
	li	a1,1
	jalr	a5
.LVL21:
.L16:
	.loc 1 82 17
	.loc 1 82 28 is_stmt 0
	sb	zero,0(s6)
	j	.L53
.LVL22:
.L51:
	.loc 1 95 17 is_stmt 1
	.loc 1 95 25 is_stmt 0
	addi	a2,s3,%lo(.LANCHOR3)
	lbu	a3,0(a2)
	addi	a3,a3,1
	andi	a3,a3,0xff
	sb	a3,0(a2)
	.loc 1 96 17 is_stmt 1
	.loc 1 96 19 is_stmt 0
	li	a2,100
	bleu	a3,a2,.L14
	.loc 1 97 21 is_stmt 1
	.loc 1 97 27 is_stmt 0
	mv	a0,a5
	mv	a1,a4
	call	keys_get_press_key
.LVL23:
	.loc 1 98 21 is_stmt 1
	.loc 1 98 23 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 98 34 discriminator 1
	lw	a5,12(a0)
	.loc 1 98 28 discriminator 1
	beq	a5,zero,.L21
	.loc 1 99 25 is_stmt 1
	lbu	a0,4(a0)
.LVL24:
	li	a1,2
	jalr	a5
.LVL25:
.L21:
	.loc 1 101 21
	.loc 1 101 32 is_stmt 0
	li	a5,4
	sb	a5,0(s6)
	j	.L14
.LVL26:
.L13:
	.loc 1 106 13 is_stmt 1
	.loc 1 106 27 is_stmt 0
	lw	a0,0(s0)
	lw	a1,4(s0)
	.loc 1 106 16
	bne	a0,a5,.L26
	beq	a1,a4,.L14
.L26:
	.loc 1 107 17 is_stmt 1
	.loc 1 107 23 is_stmt 0
	call	keys_get_press_key
.LVL27:
	.loc 1 108 17 is_stmt 1
	.loc 1 108 19 is_stmt 0
	beq	a0,zero,.L23
	.loc 1 108 30 discriminator 1
	lw	a5,12(a0)
	.loc 1 108 24 discriminator 1
	beq	a5,zero,.L23
	.loc 1 109 21 is_stmt 1
	lbu	a0,4(a0)
.LVL28:
	li	a1,3
	jalr	a5
.LVL29:
.L23:
	.loc 1 111 17
	.loc 1 111 28 is_stmt 0
	sb	zero,0(s6)
	j	.L14
.LBE18:
	.cfi_endproc
.LFE7:
	.size	ukey_handle, .-ukey_handle
	.section	.text.ukey_add,"ax",@progbits
	.align	1
	.globl	ukey_add
	.type	ukey_add, @function
ukey_add:
.LFB8:
	.loc 1 122 60 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 124 5
	.loc 1 122 60 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	.loc 1 124 5
	li	a2,0
	li	a1,1
.LVL31:
	andi	a0,a0,0xff
.LVL32:
	.loc 1 122 60
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 124 5
	call	bl_gpio_enable_input
.LVL33:
	.loc 1 126 5 is_stmt 1
	.loc 1 126 39 is_stmt 0
	li	a0,16
	call	malloc
.LVL34:
	.loc 1 127 5 is_stmt 1
	.loc 1 128 41 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	lbu	a5,0(a3)
	.loc 1 130 43
	lui	a4,%hi(.LANCHOR4)
	addi	a4,a4,%lo(.LANCHOR4)
	slli	a2,a5,2
	.loc 1 128 27
	sb	a5,0(a0)
	.loc 1 130 43
	add	a4,a4,a2
	.loc 1 131 25
	addi	a5,a5,1
	.loc 1 127 29
	sw	s0,4(a0)
	.loc 1 128 5 is_stmt 1
	.loc 1 129 5
	.loc 1 129 26 is_stmt 0
	sw	s1,12(a0)
	.loc 1 130 5 is_stmt 1
	.loc 1 130 43 is_stmt 0
	sw	a0,0(a4)
	.loc 1 131 5 is_stmt 1
	.loc 1 131 25 is_stmt 0
	sb	a5,0(a3)
	.loc 1 132 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL35:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL36:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	ukey_add, .-ukey_add
	.section	.text.ukey_init,"ax",@progbits
	.align	1
	.globl	ukey_init
	.type	ukey_init, @function
ukey_init:
.LFB9:
	.loc 1 135 21 is_stmt 1
	.cfi_startproc
	.loc 1 137 5
	.loc 1 137 9 is_stmt 0
	lui	a1,%hi(.LC0)
	lui	a0,%hi(ukey_handle)
	.loc 1 135 21
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 137 9
	li	a5,0
	li	a4,3
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(ukey_handle)
	.loc 1 135 21
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 137 9
	call	xTaskCreate
.LVL37:
	.loc 1 137 8
	li	a5,1
	beq	a0,a5,.L56
	.loc 1 138 9 is_stmt 1
	.loc 1 138 14
.LBB19:
.LBB20:
	.file 2 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE20:
.LBE19:
	.loc 1 138 14
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L58
	.loc 1 138 123 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL38:
.L59:
	.loc 1 140 1 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 138 14 discriminator 4
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	.loc 1 140 1 discriminator 4
	.loc 1 138 14 discriminator 4
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	.loc 1 140 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 138 14 discriminator 4
	tail	bl_printk
.LVL39:
.L58:
	.cfi_restore_state
	.loc 1 138 152 discriminator 2
	call	xTaskGetTickCount
.LVL40:
	j	.L59
.L56:
	.loc 1 140 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	ukey_init, .-ukey_init
	.section	.bss.static_key_list,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	static_key_list, @object
	.size	static_key_list, 40
static_key_list:
	.zero	40
	.section	.rodata.ukey_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"ukey_handle"
.LC1:
	.string	"ukey"
	.zero	3
.LC2:
	.string	"\033[32m[%10u][%s] xTaskCreate(ukey_handle) failed\033[0m\r\n"
	.section	.sbss.key_prev.3111,"aw",@nobits
	.align	3
	.set	.LANCHOR2,. + 0
	.type	key_prev.3111, @object
	.size	key_prev.3111, 8
key_prev.3111:
	.zero	8
	.section	.sbss.key_status.3113,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	key_status.3113, @object
	.size	key_status.3113, 1
key_status.3113:
	.zero	1
	.section	.sbss.time_cnt.3110,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	time_cnt.3110, @object
	.size	time_cnt.3110, 1
time_cnt.3110:
	.zero	1
	.section	.sdata.static_ukeys,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	static_ukeys, @object
	.size	static_ukeys, 8
static_ukeys:
	.byte	0
	.zero	3
	.word	static_key_list
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/b-l/dolphin/components/ukey/include/ukey.h"
	.file 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 8 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 9 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 10 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/b-l/bl_iot_sdk_new/components/utils/include/utils_log.h"
	.file 12 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/bl_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF168
	.byte	0xc
	.4byte	.LASF169
	.4byte	.LASF170
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x46
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0x4
	.byte	0x17
	.byte	0xe
	.4byte	0xca
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7
	.4byte	.LASF15
	.byte	0x2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.byte	0x2
	.4byte	0x9d
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0x4
	.byte	0x1f
	.byte	0xe
	.4byte	0xfd
	.byte	0x7
	.4byte	.LASF19
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.4byte	.LASF21
	.byte	0x2
	.byte	0x7
	.4byte	.LASF22
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0xd6
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x26
	.byte	0x10
	.4byte	0x115
	.byte	0x8
	.byte	0x4
	.4byte	0x11b
	.byte	0x9
	.4byte	0x12b
	.byte	0xa
	.4byte	0x54
	.byte	0xa
	.4byte	0xfd
	.byte	0
	.byte	0xb
	.byte	0x10
	.byte	0x4
	.byte	0x28
	.byte	0x9
	.4byte	0x169
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2a
	.byte	0xd
	.4byte	0x54
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.4byte	0x6e
	.byte	0x4
	.byte	0xc
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2c
	.byte	0x11
	.4byte	0xca
	.byte	0x8
	.byte	0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2d
	.byte	0x15
	.4byte	0x109
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x2e
	.byte	0x2
	.4byte	0x12b
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0x30
	.byte	0x9
	.4byte	0x199
	.byte	0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0x31
	.byte	0xd
	.4byte	0x54
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x32
	.byte	0xf
	.4byte	0x199
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x19f
	.byte	0x8
	.byte	0x4
	.4byte	0x169
	.byte	0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x33
	.byte	0x2
	.4byte	0x175
	.byte	0xd
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x94
	.byte	0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x74
	.byte	0xe
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x8d
	.byte	0xe
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.4byte	0x204
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.4byte	0x1b1
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0xa8
	.byte	0x13
	.4byte	0x204
	.byte	0
	.byte	0x10
	.4byte	0x60
	.4byte	0x214
	.byte	0x11
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x238
	.byte	0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0xa4
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.4byte	0x1e2
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0xaa
	.byte	0x3
	.4byte	0x214
	.byte	0x3
	.4byte	.LASF42
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x7a
	.byte	0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0xc
	.byte	0xd
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x23
	.byte	0x1b
	.4byte	0x250
	.byte	0x12
	.4byte	.LASF49
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.byte	0x8
	.4byte	0x2c2
	.byte	0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x2c2
	.byte	0
	.byte	0x13
	.string	"_k"
	.byte	0x7
	.byte	0x37
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF46
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x8d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF47
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x8d
	.byte	0xc
	.byte	0xc
	.4byte	.LASF48
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x8d
	.byte	0x10
	.byte	0x13
	.string	"_x"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x2c8
	.byte	0x14
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x268
	.byte	0x10
	.4byte	0x244
	.4byte	0x2d8
	.byte	0x11
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF50
	.byte	0x24
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x35b
	.byte	0xc
	.4byte	.LASF51
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF53
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x8d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF54
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x8d
	.byte	0xc
	.byte	0xc
	.4byte	.LASF55
	.byte	0x7
	.byte	0x42
	.byte	0x7
	.4byte	0x8d
	.byte	0x10
	.byte	0xc
	.4byte	.LASF56
	.byte	0x7
	.byte	0x43
	.byte	0x7
	.4byte	0x8d
	.byte	0x14
	.byte	0xc
	.4byte	.LASF57
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x8d
	.byte	0x18
	.byte	0xc
	.4byte	.LASF58
	.byte	0x7
	.byte	0x45
	.byte	0x7
	.4byte	0x8d
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF59
	.byte	0x7
	.byte	0x46
	.byte	0x7
	.4byte	0x8d
	.byte	0x20
	.byte	0
	.byte	0x14
	.4byte	.LASF60
	.2byte	0x108
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.4byte	0x3a0
	.byte	0xc
	.4byte	.LASF61
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x3a0
	.byte	0
	.byte	0xc
	.4byte	.LASF62
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x3a0
	.byte	0x80
	.byte	0x15
	.4byte	.LASF63
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x244
	.2byte	0x100
	.byte	0x15
	.4byte	.LASF64
	.byte	0x7
	.byte	0x56
	.byte	0xa
	.4byte	0x244
	.2byte	0x104
	.byte	0
	.byte	0x10
	.4byte	0x9b
	.4byte	0x3b0
	.byte	0x11
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0x14
	.4byte	.LASF65
	.2byte	0x190
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.4byte	0x3f3
	.byte	0xc
	.4byte	.LASF45
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x3f3
	.byte	0
	.byte	0xc
	.4byte	.LASF66
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x8d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF67
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x3f9
	.byte	0x8
	.byte	0xc
	.4byte	.LASF60
	.byte	0x7
	.byte	0x67
	.byte	0x1e
	.4byte	0x35b
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x3b0
	.byte	0x10
	.4byte	0x409
	.4byte	0x409
	.byte	0x11
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x40f
	.byte	0x16
	.byte	0x12
	.4byte	.LASF68
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.byte	0x8
	.4byte	0x438
	.byte	0xc
	.4byte	.LASF69
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x438
	.byte	0
	.byte	0xc
	.4byte	.LASF70
	.byte	0x7
	.byte	0x7c
	.byte	0x6
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x60
	.byte	0x12
	.4byte	.LASF71
	.byte	0x68
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x581
	.byte	0x13
	.string	"_p"
	.byte	0x7
	.byte	0xbb
	.byte	0x12
	.4byte	0x438
	.byte	0
	.byte	0x13
	.string	"_r"
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x13
	.string	"_w"
	.byte	0x7
	.byte	0xbd
	.byte	0x7
	.4byte	0x8d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF72
	.byte	0x7
	.byte	0xbe
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0x13
	.string	"_bf"
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x410
	.byte	0x10
	.byte	0xc
	.4byte	.LASF74
	.byte	0x7
	.byte	0xc1
	.byte	0x7
	.4byte	0x8d
	.byte	0x18
	.byte	0xc
	.4byte	.LASF75
	.byte	0x7
	.byte	0xc8
	.byte	0xa
	.4byte	0x9b
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF76
	.byte	0x7
	.byte	0xca
	.byte	0xe
	.4byte	0x705
	.byte	0x20
	.byte	0xc
	.4byte	.LASF77
	.byte	0x7
	.byte	0xcc
	.byte	0xe
	.4byte	0x72f
	.byte	0x24
	.byte	0xc
	.4byte	.LASF78
	.byte	0x7
	.byte	0xcf
	.byte	0xd
	.4byte	0x753
	.byte	0x28
	.byte	0xc
	.4byte	.LASF79
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0x76d
	.byte	0x2c
	.byte	0x13
	.string	"_ub"
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x410
	.byte	0x30
	.byte	0x13
	.string	"_up"
	.byte	0x7
	.byte	0xd4
	.byte	0x12
	.4byte	0x438
	.byte	0x38
	.byte	0x13
	.string	"_ur"
	.byte	0x7
	.byte	0xd5
	.byte	0x7
	.4byte	0x8d
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF80
	.byte	0x7
	.byte	0xd8
	.byte	0x11
	.4byte	0x773
	.byte	0x40
	.byte	0xc
	.4byte	.LASF81
	.byte	0x7
	.byte	0xd9
	.byte	0x11
	.4byte	0x783
	.byte	0x43
	.byte	0x13
	.string	"_lb"
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x410
	.byte	0x44
	.byte	0xc
	.4byte	.LASF82
	.byte	0x7
	.byte	0xdf
	.byte	0x7
	.4byte	0x8d
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0xe0
	.byte	0xa
	.4byte	0x1be
	.byte	0x50
	.byte	0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0xe3
	.byte	0x12
	.4byte	0x59f
	.byte	0x54
	.byte	0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0xe7
	.byte	0xc
	.4byte	0x25c
	.byte	0x58
	.byte	0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0xe9
	.byte	0xe
	.4byte	0x238
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x8d
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	0x1d6
	.4byte	0x59f
	.byte	0xa
	.4byte	0x59f
	.byte	0xa
	.4byte	0x9b
	.byte	0xa
	.4byte	0x6f3
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x5aa
	.byte	0x18
	.4byte	0x59f
	.byte	0x19
	.4byte	.LASF88
	.2byte	0x428
	.byte	0x7
	.2byte	0x265
	.byte	0x8
	.4byte	0x6f3
	.byte	0x1a
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x267
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0x1a
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x26c
	.byte	0xb
	.4byte	0x7df
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x26c
	.byte	0x14
	.4byte	0x7df
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x7df
	.byte	0xc
	.byte	0x1a
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x26e
	.byte	0x7
	.4byte	0x8d
	.byte	0x10
	.byte	0x1a
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x26f
	.byte	0x8
	.4byte	0x9df
	.byte	0x14
	.byte	0x1a
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0x8d
	.byte	0x30
	.byte	0x1a
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x273
	.byte	0x16
	.4byte	0x9f4
	.byte	0x34
	.byte	0x1a
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x275
	.byte	0x7
	.4byte	0x8d
	.byte	0x38
	.byte	0x1a
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x277
	.byte	0xa
	.4byte	0xa05
	.byte	0x3c
	.byte	0x1a
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x27a
	.byte	0x13
	.4byte	0x2c2
	.byte	0x40
	.byte	0x1a
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x27b
	.byte	0x7
	.4byte	0x8d
	.byte	0x44
	.byte	0x1a
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x2c2
	.byte	0x48
	.byte	0x1a
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x27d
	.byte	0x14
	.4byte	0xa0b
	.byte	0x4c
	.byte	0x1a
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x280
	.byte	0x7
	.4byte	0x8d
	.byte	0x50
	.byte	0x1a
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x281
	.byte	0x9
	.4byte	0x6f3
	.byte	0x54
	.byte	0x1a
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x9ba
	.byte	0x58
	.byte	0x1b
	.4byte	.LASF65
	.byte	0x7
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x3f3
	.2byte	0x148
	.byte	0x1b
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x3b0
	.2byte	0x14c
	.byte	0x1b
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x2ad
	.byte	0xc
	.4byte	0xa1c
	.2byte	0x2dc
	.byte	0x1b
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x7a0
	.2byte	0x2e0
	.byte	0x1b
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x2b4
	.byte	0xa
	.4byte	0xa28
	.2byte	0x2ec
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6f9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF110
	.byte	0x18
	.4byte	0x6f9
	.byte	0x8
	.byte	0x4
	.4byte	0x581
	.byte	0x17
	.4byte	0x1d6
	.4byte	0x729
	.byte	0xa
	.4byte	0x59f
	.byte	0xa
	.4byte	0x9b
	.byte	0xa
	.4byte	0x729
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x700
	.byte	0x8
	.byte	0x4
	.4byte	0x70b
	.byte	0x17
	.4byte	0x1ca
	.4byte	0x753
	.byte	0xa
	.4byte	0x59f
	.byte	0xa
	.4byte	0x9b
	.byte	0xa
	.4byte	0x1ca
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x735
	.byte	0x17
	.4byte	0x8d
	.4byte	0x76d
	.byte	0xa
	.4byte	0x59f
	.byte	0xa
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x759
	.byte	0x10
	.4byte	0x60
	.4byte	0x783
	.byte	0x11
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x10
	.4byte	0x60
	.4byte	0x793
	.byte	0x11
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x124
	.byte	0x18
	.4byte	0x43e
	.byte	0x1c
	.4byte	.LASF112
	.byte	0xc
	.byte	0x7
	.2byte	0x128
	.byte	0x8
	.4byte	0x7d9
	.byte	0x1a
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x12a
	.byte	0x11
	.4byte	0x7d9
	.byte	0
	.byte	0x1a
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x12c
	.byte	0xb
	.4byte	0x7df
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x7a0
	.byte	0x8
	.byte	0x4
	.4byte	0x793
	.byte	0x1c
	.4byte	.LASF115
	.byte	0xe
	.byte	0x7
	.2byte	0x144
	.byte	0x8
	.4byte	0x81e
	.byte	0x1a
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x145
	.byte	0x12
	.4byte	0x81e
	.byte	0
	.byte	0x1a
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x146
	.byte	0x12
	.4byte	0x81e
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x147
	.byte	0x12
	.4byte	0x67
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	0x67
	.4byte	0x82e
	.byte	0x11
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x1d
	.byte	0xd0
	.byte	0x7
	.2byte	0x285
	.byte	0x7
	.4byte	0x943
	.byte	0x1a
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x287
	.byte	0x18
	.4byte	0x94
	.byte	0
	.byte	0x1a
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x288
	.byte	0x12
	.4byte	0x6f3
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x289
	.byte	0x10
	.4byte	0x943
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x28a
	.byte	0x17
	.4byte	0x2d8
	.byte	0x24
	.byte	0x1a
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x28b
	.byte	0xf
	.4byte	0x8d
	.byte	0x48
	.byte	0x1a
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x25
	.byte	0x50
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x7e5
	.byte	0x58
	.byte	0x1a
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x28e
	.byte	0x16
	.4byte	0x238
	.byte	0x68
	.byte	0x1a
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x28f
	.byte	0x16
	.4byte	0x238
	.byte	0x70
	.byte	0x1a
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x290
	.byte	0x16
	.4byte	0x238
	.byte	0x78
	.byte	0x1a
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x291
	.byte	0x10
	.4byte	0x953
	.byte	0x80
	.byte	0x1a
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x292
	.byte	0x10
	.4byte	0x963
	.byte	0x88
	.byte	0x1a
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x293
	.byte	0xf
	.4byte	0x8d
	.byte	0xa0
	.byte	0x1a
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x294
	.byte	0x16
	.4byte	0x238
	.byte	0xa4
	.byte	0x1a
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x295
	.byte	0x16
	.4byte	0x238
	.byte	0xac
	.byte	0x1a
	.4byte	.LASF134
	.byte	0x7
	.2byte	0x296
	.byte	0x16
	.4byte	0x238
	.byte	0xb4
	.byte	0x1a
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x297
	.byte	0x16
	.4byte	0x238
	.byte	0xbc
	.byte	0x1a
	.4byte	.LASF136
	.byte	0x7
	.2byte	0x298
	.byte	0x16
	.4byte	0x238
	.byte	0xc4
	.byte	0x1a
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x299
	.byte	0x8
	.4byte	0x8d
	.byte	0xcc
	.byte	0
	.byte	0x10
	.4byte	0x6f9
	.4byte	0x953
	.byte	0x11
	.4byte	0x94
	.byte	0x19
	.byte	0
	.byte	0x10
	.4byte	0x6f9
	.4byte	0x963
	.byte	0x11
	.4byte	0x94
	.byte	0x7
	.byte	0
	.byte	0x10
	.4byte	0x6f9
	.4byte	0x973
	.byte	0x11
	.4byte	0x94
	.byte	0x17
	.byte	0
	.byte	0x1d
	.byte	0xf0
	.byte	0x7
	.2byte	0x29e
	.byte	0x7
	.4byte	0x99a
	.byte	0x1a
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x99a
	.byte	0
	.byte	0x1a
	.4byte	.LASF139
	.byte	0x7
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x9aa
	.byte	0x78
	.byte	0
	.byte	0x10
	.4byte	0x438
	.4byte	0x9aa
	.byte	0x11
	.4byte	0x94
	.byte	0x1d
	.byte	0
	.byte	0x10
	.4byte	0x94
	.4byte	0x9ba
	.byte	0x11
	.4byte	0x94
	.byte	0x1d
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x7
	.2byte	0x283
	.byte	0x3
	.4byte	0x9df
	.byte	0x1f
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x29a
	.byte	0xb
	.4byte	0x82e
	.byte	0x1f
	.4byte	.LASF140
	.byte	0x7
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x973
	.byte	0
	.byte	0x10
	.4byte	0x6f9
	.4byte	0x9ef
	.byte	0x11
	.4byte	0x94
	.byte	0x18
	.byte	0
	.byte	0x20
	.4byte	.LASF171
	.byte	0x8
	.byte	0x4
	.4byte	0x9ef
	.byte	0x9
	.4byte	0xa05
	.byte	0xa
	.4byte	0x59f
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x9fa
	.byte	0x8
	.byte	0x4
	.4byte	0x2c2
	.byte	0x9
	.4byte	0xa1c
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xa22
	.byte	0x8
	.byte	0x4
	.4byte	0xa11
	.byte	0x10
	.4byte	0x793
	.4byte	0xa38
	.byte	0x11
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x21
	.4byte	.LASF141
	.byte	0x7
	.2byte	0x333
	.byte	0x17
	.4byte	0x59f
	.byte	0x21
	.4byte	.LASF142
	.byte	0x7
	.2byte	0x334
	.byte	0x1d
	.4byte	0x5a5
	.byte	0x22
	.4byte	.LASF143
	.byte	0x9
	.byte	0x67
	.byte	0xe
	.4byte	0x6f3
	.byte	0x3
	.4byte	.LASF144
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF145
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x6e
	.byte	0x22
	.4byte	.LASF146
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0xa5e
	.byte	0x10
	.4byte	0x19f
	.4byte	0xa92
	.byte	0x11
	.4byte	0x94
	.byte	0x9
	.byte	0
	.byte	0x23
	.4byte	.LASF147
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0xa82
	.byte	0x5
	.byte	0x3
	.4byte	static_key_list
	.byte	0x23
	.4byte	.LASF148
	.byte	0x1
	.byte	0x18
	.byte	0x10
	.4byte	0x1a5
	.byte	0x5
	.byte	0x3
	.4byte	static_ukeys
	.byte	0x24
	.4byte	.LASF149
	.byte	0x1
	.byte	0x87
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb45
	.byte	0x25
	.4byte	0xd40
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x8a
	.byte	0x60
	.byte	0x26
	.4byte	.LVL37
	.4byte	0xd4d
	.4byte	0xb12
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ukey_handle
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x33
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL38
	.4byte	0xd5a
	.byte	0x29
	.4byte	.LVL39
	.4byte	0xd67
	.4byte	0xb3b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x28
	.4byte	.LVL40
	.4byte	0xd73
	.byte	0
	.byte	0x24
	.4byte	.LASF150
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xbb7
	.byte	0x2a
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7a
	.byte	0x18
	.4byte	0x6e
	.4byte	.LLST6
	.byte	0x2a
	.4byte	.LASF151
	.byte	0x1
	.byte	0x7a
	.byte	0x33
	.4byte	0x109
	.4byte	.LLST7
	.byte	0x23
	.4byte	.LASF152
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.4byte	0x19f
	.byte	0x1
	.byte	0x5a
	.byte	0x26
	.4byte	.LVL33
	.4byte	0xd80
	.4byte	0xba7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2b
	.4byte	.LVL34
	.4byte	0xd8c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF153
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xcdd
	.byte	0x2c
	.string	"arg"
	.byte	0x1
	.byte	0x35
	.byte	0x18
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0x23
	.4byte	.LASF154
	.byte	0x1
	.byte	0x36
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	time_cnt.3110
	.byte	0x23
	.4byte	.LASF155
	.byte	0x1
	.byte	0x37
	.byte	0x15
	.4byte	0x81
	.byte	0x5
	.byte	0x3
	.4byte	key_prev.3111
	.byte	0x2d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.4byte	0x81
	.byte	0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0x39
	.byte	0x18
	.4byte	0xca
	.byte	0x5
	.byte	0x3
	.4byte	key_status.3113
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0
	.byte	0x2f
	.string	"key"
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x19f
	.4byte	.LLST3
	.byte	0x30
	.4byte	0xd18
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.4byte	0xc6a
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x31
	.4byte	0xd29
	.4byte	.LLST4
	.byte	0x31
	.4byte	0xd33
	.4byte	.LLST5
	.byte	0x28
	.4byte	.LVL7
	.4byte	0xd98
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL10
	.4byte	0xda4
	.4byte	0xc7d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4e
	.byte	0
	.byte	0x28
	.4byte	.LVL15
	.4byte	0xcdd
	.byte	0x32
	.4byte	.LVL17
	.4byte	0xc95
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL19
	.4byte	0xcdd
	.byte	0x32
	.4byte	.LVL21
	.4byte	0xcae
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL23
	.4byte	0xcdd
	.byte	0x32
	.4byte	.LVL25
	.4byte	0xcc7
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL27
	.4byte	0xcdd
	.byte	0x33
	.4byte	.LVL29
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2a
	.byte	0x10
	.4byte	0x19f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd18
	.byte	0x2a
	.4byte	.LASF157
	.byte	0x1
	.byte	0x2a
	.byte	0x2c
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x35
	.4byte	.LASF158
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.4byte	0x54
	.4byte	.LLST1
	.byte	0
	.byte	0x36
	.4byte	.LASF173
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.4byte	0x81
	.byte	0x1
	.4byte	0xd40
	.byte	0x37
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x54
	.byte	0x2d
	.4byte	.LASF159
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0x81
	.byte	0
	.byte	0x38
	.4byte	.LASF174
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0xa5e
	.byte	0x3
	.byte	0x39
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0xa
	.2byte	0x14a
	.byte	0xd
	.byte	0x39
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0xa
	.2byte	0x558
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0xb
	.byte	0x9e
	.byte	0x6
	.byte	0x39
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0xa
	.2byte	0x547
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xc
	.byte	0x2d
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x9
	.byte	0x6c
	.byte	0x7
	.byte	0x3a
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xc
	.byte	0x30
	.byte	0x5
	.byte	0x39
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xa
	.2byte	0x2f6
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0x25
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
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
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
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LFE6
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"_flock_t"
.LASF150:
	.string	"ukey_add"
.LASF60:
	.string	"_on_exit_args"
.LASF128:
	.string	"_wctomb_state"
.LASF32:
	.string	"ukeys_t"
.LASF125:
	.string	"_r48"
.LASF130:
	.string	"_signal_buf"
.LASF12:
	.string	"unsigned int"
.LASF74:
	.string	"_lbfsize"
.LASF72:
	.string	"_flags"
.LASF170:
	.string	"/b-l/dolphin/build_out/ukey"
.LASF89:
	.string	"_errno"
.LASF26:
	.string	"gpio_name"
.LASF28:
	.string	"key_cb"
.LASF13:
	.string	"UKEY_STATUS_IDLE"
.LASF152:
	.string	"singleKeyOne"
.LASF43:
	.string	"_LOCK_RECURSIVE_T"
.LASF76:
	.string	"_read"
.LASF132:
	.string	"_mbrlen_state"
.LASF91:
	.string	"_stdout"
.LASF35:
	.string	"_fpos_t"
.LASF67:
	.string	"_fns"
.LASF75:
	.string	"_cookie"
.LASF142:
	.string	"_global_impure_ptr"
.LASF49:
	.string	"_Bigint"
.LASF57:
	.string	"__tm_wday"
.LASF149:
	.string	"ukey_init"
.LASF99:
	.string	"_result"
.LASF9:
	.string	"uint32_t"
.LASF53:
	.string	"__tm_hour"
.LASF39:
	.string	"__count"
.LASF52:
	.string	"__tm_min"
.LASF141:
	.string	"_impure_ptr"
.LASF138:
	.string	"_nextf"
.LASF115:
	.string	"_rand48"
.LASF100:
	.string	"_result_k"
.LASF0:
	.string	"long long unsigned int"
.LASF161:
	.string	"xTaskGetTickCountFromISR"
.LASF121:
	.string	"_asctime_buf"
.LASF71:
	.string	"__sFILE"
.LASF48:
	.string	"_wds"
.LASF111:
	.string	"__FILE"
.LASF162:
	.string	"bl_printk"
.LASF22:
	.string	"UKEY_EVEVT_LONG_PRESS_RELEASE"
.LASF153:
	.string	"ukey_handle"
.LASF94:
	.string	"_emergency"
.LASF16:
	.string	"UKEY_STATUS_UP"
.LASF169:
	.string	"/b-l/dolphin/components/ukey/ukey.c"
.LASF146:
	.string	"TrapNetCounter"
.LASF154:
	.string	"time_cnt"
.LASF15:
	.string	"UKEY_STATUS_DOWN"
.LASF51:
	.string	"__tm_sec"
.LASF147:
	.string	"static_key_list"
.LASF143:
	.string	"suboptarg"
.LASF58:
	.string	"__tm_yday"
.LASF93:
	.string	"_inc"
.LASF66:
	.string	"_ind"
.LASF17:
	.string	"UKEY_STATUS_LONG"
.LASF45:
	.string	"_next"
.LASF134:
	.string	"_mbsrtowcs_state"
.LASF14:
	.string	"UKEY_STATUS_UNSTABLE"
.LASF30:
	.string	"key_num"
.LASF167:
	.string	"vTaskDelay"
.LASF40:
	.string	"__value"
.LASF166:
	.string	"bl_gpio_input_get_value"
.LASF156:
	.string	"key_status"
.LASF101:
	.string	"_p5s"
.LASF155:
	.string	"key_prev"
.LASF136:
	.string	"_wcsrtombs_state"
.LASF126:
	.string	"_mblen_state"
.LASF110:
	.string	"char"
.LASF54:
	.string	"__tm_mday"
.LASF107:
	.string	"_sig_func"
.LASF133:
	.string	"_mbrtowc_state"
.LASF106:
	.string	"_atexit0"
.LASF20:
	.string	"UKEY_EVEVT_SHORT_PRESS"
.LASF24:
	.string	"ukey_event_cb_t"
.LASF31:
	.string	"key_list"
.LASF160:
	.string	"xTaskCreate"
.LASF173:
	.string	"keys_read"
.LASF37:
	.string	"__wch"
.LASF114:
	.string	"_iobs"
.LASF6:
	.string	"uint8_t"
.LASF27:
	.string	"status"
.LASF79:
	.string	"_close"
.LASF97:
	.string	"__sdidinit"
.LASF163:
	.string	"xTaskGetTickCount"
.LASF90:
	.string	"_stdin"
.LASF123:
	.string	"_gamma_signgam"
.LASF4:
	.string	"long long int"
.LASF69:
	.string	"_base"
.LASF102:
	.string	"_freelist"
.LASF117:
	.string	"_mult"
.LASF42:
	.string	"__ULong"
.LASF135:
	.string	"_wcrtomb_state"
.LASF144:
	.string	"BaseType_t"
.LASF73:
	.string	"_file"
.LASF98:
	.string	"__cleanup"
.LASF41:
	.string	"_mbstate_t"
.LASF168:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF61:
	.string	"_fnargs"
.LASF23:
	.string	"ukey_event"
.LASF59:
	.string	"__tm_isdst"
.LASF174:
	.string	"xPortIsInsideInterrupt"
.LASF137:
	.string	"_h_errno"
.LASF145:
	.string	"TickType_t"
.LASF148:
	.string	"static_ukeys"
.LASF29:
	.string	"ukey_t"
.LASF164:
	.string	"bl_gpio_enable_input"
.LASF55:
	.string	"__tm_mon"
.LASF77:
	.string	"_write"
.LASF38:
	.string	"__wchb"
.LASF65:
	.string	"_atexit"
.LASF86:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"long int"
.LASF159:
	.string	"key_press_bit"
.LASF109:
	.string	"__sf"
.LASF47:
	.string	"_sign"
.LASF84:
	.string	"_data"
.LASF18:
	.string	"ukey_status"
.LASF11:
	.string	"uint64_t"
.LASF56:
	.string	"__tm_year"
.LASF83:
	.string	"_offset"
.LASF122:
	.string	"_localtime_buf"
.LASF140:
	.string	"_unused"
.LASF105:
	.string	"_new"
.LASF103:
	.string	"_cvtlen"
.LASF46:
	.string	"_maxwds"
.LASF129:
	.string	"_l64a_buf"
.LASF82:
	.string	"_blksize"
.LASF50:
	.string	"__tm"
.LASF85:
	.string	"_lock"
.LASF25:
	.string	"gpio_id"
.LASF10:
	.string	"long unsigned int"
.LASF113:
	.string	"_niobs"
.LASF33:
	.string	"wint_t"
.LASF5:
	.string	"int32_t"
.LASF62:
	.string	"_dso_handle"
.LASF172:
	.string	"keys_get_press_key"
.LASF104:
	.string	"_cvtbuf"
.LASF7:
	.string	"unsigned char"
.LASF157:
	.string	"key_press"
.LASF131:
	.string	"_getdate_err"
.LASF118:
	.string	"_add"
.LASF68:
	.string	"__sbuf"
.LASF112:
	.string	"_glue"
.LASF151:
	.string	"event_cb"
.LASF165:
	.string	"malloc"
.LASF108:
	.string	"__sglue"
.LASF120:
	.string	"_strtok_last"
.LASF127:
	.string	"_mbtowc_state"
.LASF96:
	.string	"_locale"
.LASF36:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF88:
	.string	"_reent"
.LASF8:
	.string	"short unsigned int"
.LASF21:
	.string	"UKEY_EVEVT_LONG_PRESS"
.LASF63:
	.string	"_fntypes"
.LASF19:
	.string	"UKEY_EVEVT_PRESS"
.LASF70:
	.string	"_size"
.LASF34:
	.string	"_off_t"
.LASF81:
	.string	"_nbuf"
.LASF119:
	.string	"_unused_rand"
.LASF95:
	.string	"_unspecified_locale_info"
.LASF158:
	.string	"list_id"
.LASF87:
	.string	"_flags2"
.LASF64:
	.string	"_is_cxa"
.LASF116:
	.string	"_seed"
.LASF124:
	.string	"_rand_next"
.LASF171:
	.string	"__locale_t"
.LASF78:
	.string	"_seek"
.LASF92:
	.string	"_stderr"
.LASF139:
	.string	"_nmalloc"
.LASF80:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
