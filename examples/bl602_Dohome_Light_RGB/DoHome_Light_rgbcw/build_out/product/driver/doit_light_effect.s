	.file	"doit_light_effect.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_led_cfg_dohome_effect_cnt,"ax",@progbits
	.align	1
	.globl	set_led_cfg_dohome_effect_cnt
	.type	set_led_cfg_dohome_effect_cnt, @function
set_led_cfg_dohome_effect_cnt:
.LFB2:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_effect.c"
	.loc 1 26 1
	.cfi_startproc
.LVL0:
	.loc 1 27 2
	.loc 1 27 28 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	a0,%lo(.LANCHOR0)(a5)
	.loc 1 28 1
	ret
	.cfi_endproc
.LFE2:
	.size	set_led_cfg_dohome_effect_cnt, .-set_led_cfg_dohome_effect_cnt
	.section	.text.led_cfg_def_effect,"ax",@progbits
	.align	1
	.globl	led_cfg_def_effect
	.type	led_cfg_def_effect, @function
led_cfg_def_effect:
.LFB3:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
	.loc 1 35 1
	ret
	.cfi_endproc
.LFE3:
	.size	led_cfg_def_effect, .-led_cfg_def_effect
	.section	.text.led_cfg_dohome_effect,"ax",@progbits
	.align	1
	.globl	led_cfg_dohome_effect
	.type	led_cfg_dohome_effect, @function
led_cfg_dohome_effect:
.LFB4:
	.loc 1 38 1
	.cfi_startproc
	.loc 1 39 2
	.loc 1 40 2
	.loc 1 40 14
	.loc 1 40 28
	.loc 1 40 41
	.loc 1 40 57
	.loc 1 41 2
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 47 27
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 38 1
	sw	ra,76(sp)
	.cfi_offset 1, -4
	.loc 1 40 9
	li	a5,9830400
	sw	a5,32(sp)
	.loc 1 47 27
	lbu	a5,0(a4)
	.loc 1 40 63
	li	a3,1
	.loc 1 40 36
	sw	zero,28(sp)
	.loc 1 47 27
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,0(a4)
	.loc 1 41 12
	sh	zero,36(sp)
	.loc 1 40 63
	sb	a3,38(sp)
	.loc 1 43 2 is_stmt 1
	.loc 1 44 2
	.loc 1 44 14
	.loc 1 44 28
	.loc 1 44 41
	.loc 1 44 55
	.loc 1 45 2
	.loc 1 44 36 is_stmt 0
	sw	zero,40(sp)
	.loc 1 44 9
	sw	zero,44(sp)
	.loc 1 45 12
	sh	zero,48(sp)
	.loc 1 44 61
	sb	a3,50(sp)
	.loc 1 47 2 is_stmt 1
	.loc 1 48 2
	.loc 1 48 5 is_stmt 0
	li	a4,15
	bleu	a5,a4,.L4
.LBB2:
	.loc 1 50 3 is_stmt 1
	.loc 1 51 3
	.loc 1 51 15
	.loc 1 51 29
	.loc 1 51 42
	.loc 1 51 58
	.loc 1 52 3
	.loc 1 51 10 is_stmt 0
	li	a5,16711680
	.loc 1 53 3
	addi	a1,sp,52
	li	a2,12
	mv	a0,sp
	.loc 1 51 10
	sw	a5,56(sp)
	.loc 1 51 64
	sb	a3,62(sp)
	.loc 1 53 3 is_stmt 1
	.loc 1 51 37 is_stmt 0
	sw	zero,52(sp)
	.loc 1 52 13
	sh	zero,60(sp)
	.loc 1 53 3
	call	memcpy
.LVL1:
	mv	a0,sp
	li	a1,1
	call	send_light_data_pwm_map
.LVL2:
	.loc 1 54 3 is_stmt 1
.LBE2:
	.loc 1 63 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB3:
	.loc 1 54 3
	li	a0,0
.LBE3:
	.loc 1 63 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LBB4:
	.loc 1 54 3
	tail	set_light_work_mode
.LVL3:
.L4:
	.cfi_restore_state
.LBE4:
	.loc 1 56 3 is_stmt 1
	.loc 1 56 6 is_stmt 0
	andi	a5,a5,1
	.loc 1 57 4
	li	a2,12
	addi	a1,sp,40
	.loc 1 56 6
	beq	a5,zero,.L8
	.loc 1 59 4 is_stmt 1
	addi	a1,sp,28
.L8:
	mv	a0,sp
	call	memcpy
.LVL4:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL5:
	.loc 1 61 3
	.loc 1 63 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_restore 1
	.loc 1 61 3
	li	a0,1000
	.loc 1 63 1
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	.loc 1 61 3
	tail	vTaskDelay
.LVL6:
	.cfi_endproc
.LFE4:
	.size	led_cfg_dohome_effect, .-led_cfg_dohome_effect
	.section	.text.led_cfg_dohome_effect2,"ax",@progbits
	.align	1
	.globl	led_cfg_dohome_effect2
	.type	led_cfg_dohome_effect2, @function
led_cfg_dohome_effect2:
.LFB5:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 2
	.loc 1 66 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 67 14
	sw	zero,24(sp)
	li	a5,255
	.loc 1 72 2
	li	a2,12
	.loc 1 67 14
	sw	zero,28(sp)
	sh	a5,26(sp)
	.loc 1 72 2
	addi	a1,sp,20
	.loc 1 67 14
	li	a5,1
	.loc 1 72 2
	mv	a0,sp
	.loc 1 66 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 67 14
	sb	a5,30(sp)
	.loc 1 69 2 is_stmt 1
	.loc 1 71 2
	.loc 1 72 2
	.loc 1 67 14 is_stmt 0
	sw	zero,20(sp)
	.loc 1 72 2
	call	memcpy
.LVL7:
	li	a1,0
	mv	a0,sp
	call	send_light_data_pwm_map
.LVL8:
	.loc 1 73 2 is_stmt 1
	li	a0,1000
	call	vTaskDelay
.LVL9:
	.loc 1 75 2
	.loc 1 76 2 is_stmt 0
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	.loc 1 75 8
	sb	zero,30(sp)
	.loc 1 76 2 is_stmt 1
	call	memcpy
.LVL10:
	mv	a0,sp
	li	a1,0
	call	send_light_data_pwm_map
.LVL11:
	.loc 1 77 2
	.loc 1 78 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	.loc 1 77 2
	li	a0,1000
	.loc 1 78 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 77 2
	tail	vTaskDelay
.LVL12:
	.cfi_endproc
.LFE5:
	.size	led_cfg_dohome_effect2, .-led_cfg_dohome_effect2
	.section	.text.led_cfg_dohome_effect3,"ax",@progbits
	.align	1
	.globl	led_cfg_dohome_effect3
	.type	led_cfg_dohome_effect3, @function
led_cfg_dohome_effect3:
.LFB6:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
	.loc 1 82 2
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 87 31
	lui	s0,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(s0)
	.loc 1 82 14
	sw	zero,24(sp)
	sw	zero,28(sp)
	li	a4,255
	li	a3,1
	.loc 1 81 1
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 82 14
	sw	zero,20(sp)
	sh	a4,26(sp)
	sb	a3,30(sp)
	.loc 1 84 2 is_stmt 1
	.loc 1 87 2
	.loc 1 87 4 is_stmt 0
	li	a2,9
	bgtu	a5,a2,.L11
	.loc 1 88 34
	li	a2,5
	remu	a5,a5,a2
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 88 3 is_stmt 1
	.loc 1 88 5 is_stmt 0
	bne	a5,zero,.L14
	.loc 1 89 4 is_stmt 1
	.loc 1 90 4
	.loc 1 90 17
	.loc 1 90 30
	.loc 1 90 42
	.loc 1 90 11 is_stmt 0
	sw	a4,24(sp)
	.loc 1 90 55 is_stmt 1
	.loc 1 91 4
.L18:
	.loc 1 113 8
	.loc 1 114 4
	.loc 1 115 4
	.loc 1 115 15
	.loc 1 115 28
	.loc 1 115 40
	.loc 1 115 55
	.loc 1 116 4
	li	a2,12
	addi	a1,sp,20
	mv	a0,sp
	call	memcpy
.LVL13:
	li	a1,0
	mv	a0,sp
	call	send_light_data_pwm_map
.LVL14:
	.loc 1 117 4
	li	a0,4096
	addi	a0,a0,904
	call	vTaskDelay
.LVL15:
	.loc 1 122 3
	.loc 1 122 28 is_stmt 0
	lbu	a5,0(s0)
	.loc 1 123 5
	li	a4,10
	.loc 1 122 28
	addi	a5,a5,1
	andi	a5,a5,0xff
	sb	a5,0(s0)
	.loc 1 123 3 is_stmt 1
	.loc 1 123 5 is_stmt 0
	bne	a5,a4,.L11
	.loc 1 124 4 is_stmt 1
	.loc 1 125 4
	.loc 1 125 15
	.loc 1 125 30
	.loc 1 125 42
	.loc 1 125 55
	.loc 1 125 38 is_stmt 0
	li	a5,16711680
	.loc 1 126 4
	addi	a1,sp,20
	li	a2,12
	mv	a0,sp
	.loc 1 125 38
	sw	a5,20(sp)
	.loc 1 125 11
	sw	zero,24(sp)
	.loc 1 125 65
	sh	zero,28(sp)
	.loc 1 126 4 is_stmt 1
	call	memcpy
.LVL16:
	li	a1,0
	mv	a0,sp
	call	send_light_data_pwm_map
.LVL17:
.L11:
	.loc 1 129 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.L14:
	.cfi_restore_state
	.loc 1 94 8 is_stmt 1
	.loc 1 94 11 is_stmt 0
	bne	a5,a3,.L16
	.loc 1 95 4 is_stmt 1
	.loc 1 96 4
	.loc 1 96 15
	.loc 1 96 24 is_stmt 0
	sh	a4,22(sp)
	.loc 1 96 30 is_stmt 1
	.loc 1 96 42
.L21:
	.loc 1 102 42
	.loc 1 102 51 is_stmt 0
	sh	zero,26(sp)
	.loc 1 102 55 is_stmt 1
	.loc 1 103 4
	j	.L18
.L16:
	.loc 1 100 8
	.loc 1 100 11 is_stmt 0
	li	a3,2
	bne	a5,a3,.L17
	.loc 1 101 4 is_stmt 1
	.loc 1 102 4
	.loc 1 102 15
	.loc 1 102 28
	.loc 1 102 36 is_stmt 0
	sh	a4,20(sp)
	j	.L21
.L17:
	.loc 1 107 8 is_stmt 1
	.loc 1 107 11 is_stmt 0
	li	a3,3
	bne	a5,a3,.L18
	.loc 1 108 4 is_stmt 1
	.loc 1 109 4
	.loc 1 109 15
	.loc 1 109 28
	.loc 1 109 40
	.loc 1 109 49 is_stmt 0
	sh	zero,26(sp)
	.loc 1 109 53 is_stmt 1
	.loc 1 109 63 is_stmt 0
	sh	a4,28(sp)
	.loc 1 110 4 is_stmt 1
	j	.L18
	.cfi_endproc
.LFE6:
	.size	led_cfg_dohome_effect3, .-led_cfg_dohome_effect3
	.section	.sbss.led_cfg_dohome_effect_cnt,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	led_cfg_dohome_effect_cnt, @object
	.size	led_cfg_dohome_effect_cnt, 1
led_cfg_dohome_effect_cnt:
	.zero	1
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc6c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF138
	.byte	0xc
	.4byte	.LASF139
	.4byte	.LASF140
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4b
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x65
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
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7f
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0xc
	.byte	0x3
	.byte	0xa
	.byte	0x9
	.4byte	0xf2
	.byte	0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0xb
	.byte	0xa
	.4byte	0x2c
	.byte	0
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0xc
	.byte	0xa
	.4byte	0x2c
	.byte	0x2
	.byte	0x7
	.string	"red"
	.byte	0x3
	.byte	0xd
	.byte	0xa
	.4byte	0x2c
	.byte	0x4
	.byte	0x6
	.4byte	.LASF15
	.byte	0x3
	.byte	0xe
	.byte	0xa
	.4byte	0x2c
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x3
	.byte	0xf
	.byte	0xa
	.4byte	0x2c
	.byte	0x8
	.byte	0x7
	.string	"on"
	.byte	0x3
	.byte	0x10
	.byte	0xa
	.4byte	0x59
	.byte	0xa
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x11
	.byte	0x3
	.4byte	0x9b
	.byte	0x8
	.byte	0x4
	.4byte	0x104
	.byte	0x9
	.byte	0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x94
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4b
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4b
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x8d
	.byte	0xb
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x158
	.byte	0xc
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x105
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x158
	.byte	0
	.byte	0xd
	.4byte	0x65
	.4byte	0x168
	.byte	0xe
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x18c
	.byte	0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0x136
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x168
	.byte	0xf
	.byte	0x4
	.byte	0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x7f
	.byte	0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x1a6
	.byte	0x10
	.4byte	.LASF34
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x218
	.byte	0x6
	.4byte	.LASF30
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x218
	.byte	0
	.byte	0x7
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x6
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x8d
	.byte	0x8
	.byte	0x6
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x8d
	.byte	0xc
	.byte	0x6
	.4byte	.LASF33
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x8d
	.byte	0x10
	.byte	0x7
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x21e
	.byte	0x14
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1be
	.byte	0xd
	.4byte	0x19a
	.4byte	0x22e
	.byte	0xe
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF35
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x2b1
	.byte	0x6
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0x6
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x6
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x8d
	.byte	0x8
	.byte	0x6
	.4byte	.LASF39
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x8d
	.byte	0xc
	.byte	0x6
	.4byte	.LASF40
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x8d
	.byte	0x10
	.byte	0x6
	.4byte	.LASF41
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x8d
	.byte	0x14
	.byte	0x6
	.4byte	.LASF42
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x8d
	.byte	0x18
	.byte	0x6
	.4byte	.LASF43
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x8d
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF44
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x8d
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF45
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2f6
	.byte	0x6
	.4byte	.LASF46
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2f6
	.byte	0
	.byte	0x6
	.4byte	.LASF47
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2f6
	.byte	0x80
	.byte	0x12
	.4byte	.LASF48
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x19a
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF49
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x19a
	.2byte	0x104
	.byte	0
	.byte	0xd
	.4byte	0x198
	.4byte	0x306
	.byte	0xe
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF50
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x349
	.byte	0x6
	.4byte	.LASF30
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x349
	.byte	0
	.byte	0x6
	.4byte	.LASF51
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x8d
	.byte	0x4
	.byte	0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x34f
	.byte	0x8
	.byte	0x6
	.4byte	.LASF45
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x2b1
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x306
	.byte	0xd
	.4byte	0xfe
	.4byte	0x35f
	.byte	0xe
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF53
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x387
	.byte	0x6
	.4byte	.LASF54
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x387
	.byte	0
	.byte	0x6
	.4byte	.LASF55
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x8d
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x65
	.byte	0x10
	.4byte	.LASF56
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x4d0
	.byte	0x7
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x387
	.byte	0
	.byte	0x7
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x7
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x8d
	.byte	0x8
	.byte	0x6
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x38
	.byte	0xc
	.byte	0x6
	.4byte	.LASF58
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x38
	.byte	0xe
	.byte	0x7
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x35f
	.byte	0x10
	.byte	0x6
	.4byte	.LASF59
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x8d
	.byte	0x18
	.byte	0x6
	.4byte	.LASF60
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x198
	.byte	0x1c
	.byte	0x6
	.4byte	.LASF61
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x654
	.byte	0x20
	.byte	0x6
	.4byte	.LASF62
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x67e
	.byte	0x24
	.byte	0x6
	.4byte	.LASF63
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x6a2
	.byte	0x28
	.byte	0x6
	.4byte	.LASF64
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x6bc
	.byte	0x2c
	.byte	0x7
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x35f
	.byte	0x30
	.byte	0x7
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x387
	.byte	0x38
	.byte	0x7
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x8d
	.byte	0x3c
	.byte	0x6
	.4byte	.LASF65
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x6c2
	.byte	0x40
	.byte	0x6
	.4byte	.LASF66
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x6d2
	.byte	0x43
	.byte	0x7
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x35f
	.byte	0x44
	.byte	0x6
	.4byte	.LASF67
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x8d
	.byte	0x4c
	.byte	0x6
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0x112
	.byte	0x50
	.byte	0x6
	.4byte	.LASF69
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4ee
	.byte	0x54
	.byte	0x6
	.4byte	.LASF70
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x1b2
	.byte	0x58
	.byte	0x6
	.4byte	.LASF71
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x18c
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF72
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x8d
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0x12a
	.4byte	0x4ee
	.byte	0x14
	.4byte	0x4ee
	.byte	0x14
	.4byte	0x198
	.byte	0x14
	.4byte	0x642
	.byte	0x14
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x4f9
	.byte	0x15
	.4byte	0x4ee
	.byte	0x16
	.4byte	.LASF73
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x642
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x8d
	.byte	0
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x72e
	.byte	0x4
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x72e
	.byte	0x8
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x72e
	.byte	0xc
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x8d
	.byte	0x10
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x92e
	.byte	0x14
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x8d
	.byte	0x30
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x943
	.byte	0x34
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x8d
	.byte	0x38
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x954
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x218
	.byte	0x40
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x8d
	.byte	0x44
	.byte	0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x218
	.byte	0x48
	.byte	0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x95a
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x8d
	.byte	0x50
	.byte	0x17
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x642
	.byte	0x54
	.byte	0x17
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x909
	.byte	0x58
	.byte	0x18
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x349
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x306
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x96b
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6ef
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x977
	.2byte	0x2ec
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x648
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF95
	.byte	0x15
	.4byte	0x648
	.byte	0x8
	.byte	0x4
	.4byte	0x4d0
	.byte	0x13
	.4byte	0x12a
	.4byte	0x678
	.byte	0x14
	.4byte	0x4ee
	.byte	0x14
	.4byte	0x198
	.byte	0x14
	.4byte	0x678
	.byte	0x14
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x64f
	.byte	0x8
	.byte	0x4
	.4byte	0x65a
	.byte	0x13
	.4byte	0x11e
	.4byte	0x6a2
	.byte	0x14
	.4byte	0x4ee
	.byte	0x14
	.4byte	0x198
	.byte	0x14
	.4byte	0x11e
	.byte	0x14
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x684
	.byte	0x13
	.4byte	0x8d
	.4byte	0x6bc
	.byte	0x14
	.4byte	0x4ee
	.byte	0x14
	.4byte	0x198
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6a8
	.byte	0xd
	.4byte	0x65
	.4byte	0x6d2
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0x65
	.4byte	0x6e2
	.byte	0xe
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x38d
	.byte	0x19
	.4byte	.LASF97
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x728
	.byte	0x17
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x728
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x8d
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x72e
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6ef
	.byte	0x8
	.byte	0x4
	.4byte	0x6e2
	.byte	0x19
	.4byte	.LASF100
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x76d
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x76d
	.byte	0
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x76d
	.byte	0x6
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.byte	0xd
	.4byte	0x6c
	.4byte	0x77d
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x892
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x94
	.byte	0
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x642
	.byte	0x4
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x892
	.byte	0x8
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x22e
	.byte	0x24
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x8d
	.byte	0x48
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x86
	.byte	0x50
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x734
	.byte	0x58
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x18c
	.byte	0x68
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x18c
	.byte	0x70
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x18c
	.byte	0x78
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x8a2
	.byte	0x80
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x8b2
	.byte	0x88
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x8d
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x18c
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x18c
	.byte	0xac
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x18c
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x18c
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x18c
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x8d
	.byte	0xcc
	.byte	0
	.byte	0xd
	.4byte	0x648
	.4byte	0x8a2
	.byte	0xe
	.4byte	0x94
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	0x648
	.4byte	0x8b2
	.byte	0xe
	.4byte	0x94
	.byte	0x7
	.byte	0
	.byte	0xd
	.4byte	0x648
	.4byte	0x8c2
	.byte	0xe
	.4byte	0x94
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8e9
	.byte	0x17
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8e9
	.byte	0
	.byte	0x17
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8f9
	.byte	0x78
	.byte	0
	.byte	0xd
	.4byte	0x387
	.4byte	0x8f9
	.byte	0xe
	.4byte	0x94
	.byte	0x1d
	.byte	0
	.byte	0xd
	.4byte	0x94
	.4byte	0x909
	.byte	0xe
	.4byte	0x94
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x92e
	.byte	0x1c
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x77d
	.byte	0x1c
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x8c2
	.byte	0
	.byte	0xd
	.4byte	0x648
	.4byte	0x93e
	.byte	0xe
	.4byte	0x94
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF141
	.byte	0x8
	.byte	0x4
	.4byte	0x93e
	.byte	0x1e
	.4byte	0x954
	.byte	0x14
	.4byte	0x4ee
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x949
	.byte	0x8
	.byte	0x4
	.4byte	0x218
	.byte	0x1e
	.4byte	0x96b
	.byte	0x14
	.4byte	0x8d
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x971
	.byte	0x8
	.byte	0x4
	.4byte	0x960
	.byte	0xd
	.4byte	0x6e2
	.4byte	0x987
	.byte	0xe
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4ee
	.byte	0x1f
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4f4
	.byte	0x3
	.4byte	.LASF128
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF129
	.byte	0x8
	.byte	0x41
	.byte	0x12
	.4byte	0x73
	.byte	0x20
	.4byte	.LASF130
	.byte	0x8
	.byte	0x54
	.byte	0x13
	.4byte	0x9a1
	.byte	0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x648
	.byte	0x5
	.byte	0x3
	.4byte	led_cfg_dohome_effect_cnt
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x50
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xa7d
	.byte	0x23
	.string	"w1"
	.byte	0x1
	.byte	0x52
	.byte	0xe
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x24
	.4byte	.LVL13
	.4byte	0xc3f
	.4byte	0xa1a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x24
	.4byte	.LVL14
	.4byte	0xc4a
	.4byte	0xa33
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL15
	.4byte	0xc56
	.4byte	0xa48
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x24
	.4byte	.LVL16
	.4byte	0xc3f
	.4byte	0xa67
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x26
	.4byte	.LVL17
	.4byte	0xc4a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF133
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb38
	.byte	0x23
	.string	"w1"
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x24
	.4byte	.LVL7
	.4byte	0xc3f
	.4byte	0xac0
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x24
	.4byte	.LVL8
	.4byte	0xc4a
	.4byte	0xad9
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x24
	.4byte	.LVL9
	.4byte	0xc56
	.4byte	0xaee
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x24
	.4byte	.LVL10
	.4byte	0xc3f
	.4byte	0xb0d
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x24
	.4byte	.LVL11
	.4byte	0xc4a
	.4byte	0xb26
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL12
	.4byte	0xc56
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xc08
	.byte	0x23
	.string	"w1"
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.string	"w0"
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbc9
	.byte	0x23
	.string	"w2"
	.byte	0x1
	.byte	0x32
	.byte	0xf
	.4byte	0xf2
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x24
	.4byte	.LVL1
	.4byte	0xc3f
	.4byte	0xba0
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x24
	.4byte	.LVL2
	.4byte	0xc4a
	.4byte	0xbb9
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x27
	.4byte	.LVL3
	.4byte	0xc63
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL4
	.4byte	0xc3f
	.4byte	0xbdd
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL5
	.4byte	0xc4a
	.4byte	0xbf6
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x27
	.4byte	.LVL6
	.4byte	0xc56
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF142
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0x2a
	.4byte	.LASF143
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xc3f
	.byte	0x2b
	.string	"cnt"
	.byte	0x1
	.byte	0x19
	.byte	0x29
	.4byte	0x648
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x2c
	.4byte	.LASF144
	.4byte	.LASF145
	.byte	0xa
	.byte	0
	.byte	0x2d
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x3
	.byte	0x32
	.byte	0x6
	.byte	0x2e
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x2f6
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x3
	.byte	0x1f
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"_dso_handle"
.LASF55:
	.string	"_size"
.LASF140:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/product"
.LASF100:
	.string	"_rand48"
.LASF137:
	.string	"set_light_work_mode"
.LASF79:
	.string	"_emergency"
.LASF134:
	.string	"led_cfg_dohome_effect"
.LASF69:
	.string	"_data"
.LASF120:
	.string	"_wcrtomb_state"
.LASF121:
	.string	"_wcsrtombs_state"
.LASF130:
	.string	"TrapNetCounter"
.LASF11:
	.string	"long long unsigned int"
.LASF59:
	.string	"_lbfsize"
.LASF141:
	.string	"__locale_t"
.LASF143:
	.string	"set_led_cfg_dohome_effect_cnt"
.LASF118:
	.string	"_mbrtowc_state"
.LASF113:
	.string	"_wctomb_state"
.LASF36:
	.string	"__tm_sec"
.LASF2:
	.string	"int16_t"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF65:
	.string	"_ubuf"
.LASF136:
	.string	"vTaskDelay"
.LASF54:
	.string	"_base"
.LASF38:
	.string	"__tm_hour"
.LASF94:
	.string	"__sf"
.LASF45:
	.string	"_on_exit_args"
.LASF17:
	.string	"rgb_pixel_t"
.LASF60:
	.string	"_cookie"
.LASF93:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF57:
	.string	"_flags"
.LASF49:
	.string	"_is_cxa"
.LASF75:
	.string	"_stdin"
.LASF67:
	.string	"_blksize"
.LASF16:
	.string	"yellow"
.LASF128:
	.string	"BaseType_t"
.LASF89:
	.string	"_cvtbuf"
.LASF68:
	.string	"_offset"
.LASF119:
	.string	"_mbsrtowcs_state"
.LASF117:
	.string	"_mbrlen_state"
.LASF46:
	.string	"_fnargs"
.LASF52:
	.string	"_fns"
.LASF32:
	.string	"_sign"
.LASF29:
	.string	"_flock_t"
.LASF77:
	.string	"_stderr"
.LASF34:
	.string	"_Bigint"
.LASF108:
	.string	"_gamma_signgam"
.LASF61:
	.string	"_read"
.LASF85:
	.string	"_result_k"
.LASF35:
	.string	"__tm"
.LASF12:
	.string	"unsigned int"
.LASF23:
	.string	"__wchb"
.LASF76:
	.string	"_stdout"
.LASF135:
	.string	"send_light_data_pwm_map"
.LASF88:
	.string	"_cvtlen"
.LASF10:
	.string	"long unsigned int"
.LASF58:
	.string	"_file"
.LASF21:
	.string	"_ssize_t"
.LASF98:
	.string	"_niobs"
.LASF8:
	.string	"short unsigned int"
.LASF91:
	.string	"_atexit0"
.LASF115:
	.string	"_signal_buf"
.LASF106:
	.string	"_asctime_buf"
.LASF84:
	.string	"_result"
.LASF22:
	.string	"__wch"
.LASF144:
	.string	"memcpy"
.LASF145:
	.string	"__builtin_memcpy"
.LASF70:
	.string	"_lock"
.LASF72:
	.string	"_flags2"
.LASF62:
	.string	"_write"
.LASF41:
	.string	"__tm_year"
.LASF124:
	.string	"_nmalloc"
.LASF129:
	.string	"TickType_t"
.LASF123:
	.string	"_nextf"
.LASF40:
	.string	"__tm_mon"
.LASF139:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/doit_light_effect.c"
.LASF50:
	.string	"_atexit"
.LASF13:
	.string	"blue"
.LASF82:
	.string	"__sdidinit"
.LASF19:
	.string	"_off_t"
.LASF18:
	.string	"wint_t"
.LASF15:
	.string	"white"
.LASF133:
	.string	"led_cfg_dohome_effect2"
.LASF87:
	.string	"_freelist"
.LASF28:
	.string	"_LOCK_RECURSIVE_T"
.LASF3:
	.string	"int32_t"
.LASF7:
	.string	"unsigned char"
.LASF90:
	.string	"_new"
.LASF122:
	.string	"_h_errno"
.LASF1:
	.string	"short int"
.LASF43:
	.string	"__tm_yday"
.LASF53:
	.string	"__sbuf"
.LASF99:
	.string	"_iobs"
.LASF96:
	.string	"__FILE"
.LASF26:
	.string	"_mbstate_t"
.LASF56:
	.string	"__sFILE"
.LASF71:
	.string	"_mbstate"
.LASF109:
	.string	"_rand_next"
.LASF111:
	.string	"_mblen_state"
.LASF78:
	.string	"_inc"
.LASF51:
	.string	"_ind"
.LASF81:
	.string	"_locale"
.LASF83:
	.string	"__cleanup"
.LASF80:
	.string	"_unspecified_locale_info"
.LASF31:
	.string	"_maxwds"
.LASF138:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF101:
	.string	"_seed"
.LASF24:
	.string	"__count"
.LASF132:
	.string	"led_cfg_dohome_effect3"
.LASF9:
	.string	"uint32_t"
.LASF63:
	.string	"_seek"
.LASF126:
	.string	"_impure_ptr"
.LASF20:
	.string	"_fpos_t"
.LASF74:
	.string	"_errno"
.LASF95:
	.string	"char"
.LASF37:
	.string	"__tm_min"
.LASF102:
	.string	"_mult"
.LASF30:
	.string	"_next"
.LASF105:
	.string	"_strtok_last"
.LASF25:
	.string	"__value"
.LASF48:
	.string	"_fntypes"
.LASF103:
	.string	"_add"
.LASF27:
	.string	"__ULong"
.LASF116:
	.string	"_getdate_err"
.LASF127:
	.string	"_global_impure_ptr"
.LASF131:
	.string	"led_cfg_dohome_effect_cnt"
.LASF104:
	.string	"_unused_rand"
.LASF14:
	.string	"green"
.LASF33:
	.string	"_wds"
.LASF42:
	.string	"__tm_wday"
.LASF97:
	.string	"_glue"
.LASF6:
	.string	"uint8_t"
.LASF114:
	.string	"_l64a_buf"
.LASF92:
	.string	"_sig_func"
.LASF142:
	.string	"led_cfg_def_effect"
.LASF73:
	.string	"_reent"
.LASF66:
	.string	"_nbuf"
.LASF125:
	.string	"_unused"
.LASF44:
	.string	"__tm_isdst"
.LASF107:
	.string	"_localtime_buf"
.LASF64:
	.string	"_close"
.LASF110:
	.string	"_r48"
.LASF112:
	.string	"_mbtowc_state"
.LASF86:
	.string	"_p5s"
.LASF39:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
