	.file	"bl_sys_time.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sys_time_update,"ax",@progbits
	.align	1
	.globl	bl_sys_time_update
	.type	bl_sys_time_update, @function
bl_sys_time_update:
.LFB9:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bltime/bl_sys_time.c"
	.loc 1 43 1
	.cfi_startproc
.LVL0:
	.loc 1 44 5
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 43 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 44 19
	call	xTaskGetTickCount
.LVL1:
	.loc 1 44 17
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 44 19
	sw	a0,0(a5)
	sw	zero,4(a5)
	.loc 1 45 5 is_stmt 1
	.loc 1 45 16 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	s0,%lo(.LANCHOR1)(a5)
	.loc 1 46 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 45 16
	sw	s1,%lo(.LANCHOR1+4)(a5)
	.loc 1 46 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_sys_time_update, .-bl_sys_time_update
	.section	.text.bl_sys_time_get,"ax",@progbits
	.align	1
	.globl	bl_sys_time_get
	.type	bl_sys_time_get, @function
bl_sys_time_get:
.LFB10:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 52 11
	lui	s0,%hi(.LANCHOR1)
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 52 8
	lw	a5,0(s0)
	lw	a4,4(s0)
	.loc 1 49 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 52 8
	or	a5,a5,a4
	beq	a5,zero,.L6
	mv	s1,a0
	.loc 1 57 5 is_stmt 1
	.loc 1 57 25 is_stmt 0
	call	xTaskGetTickCount
.LVL3:
	.loc 1 58 5 is_stmt 1
	.loc 1 57 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 58 25
	lw	a4,0(s0)
	.loc 1 57 13
	sub	a5,a0,a5
	.loc 1 58 25
	lw	a0,4(s0)
.LVL4:
	srai	a3,a5,31
	add	a4,a5,a4
	add	a3,a3,a0
	sltu	a5,a4,a5
	add	a5,a5,a3
	.loc 1 58 12
	sw	a4,0(s1)
	sw	a5,4(s1)
	.loc 1 60 5 is_stmt 1
	.loc 1 60 12 is_stmt 0
	li	a0,0
.LVL5:
.L3:
	.loc 1 61 1
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
.LVL6:
.L6:
	.cfi_restore_state
	.loc 1 53 16
	li	a0,-1
.LVL7:
	j	.L3
	.cfi_endproc
.LFE10:
	.size	bl_sys_time_get, .-bl_sys_time_get
	.section	.text.bl_sys_time_sync_init,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_init
	.type	bl_sys_time_sync_init, @function
bl_sys_time_sync_init:
.LFB11:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 65 5
	call	vTaskEnterCritical
.LVL8:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 22 is_stmt 0
	call	xTaskGetTickCount
.LVL9:
	.loc 1 66 20
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 67 5 is_stmt 1
	.loc 1 67 21 is_stmt 0
	call	bl_rtc_get_timestamp_ms
.LVL10:
	.loc 1 67 19
	lui	a5,%hi(.LANCHOR3)
	sw	a0,%lo(.LANCHOR3)(a5)
	.loc 1 68 5 is_stmt 1
	call	vTaskExitCritical
.LVL11:
	.loc 1 70 5
	.loc 1 71 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 70 15
	lui	a5,%hi(.LANCHOR4)
	li	a4,1
	sw	a4,%lo(.LANCHOR4)(a5)
	.loc 1 71 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_sys_time_sync_init, .-bl_sys_time_sync_init
	.section	.text.bl_sys_time_sync_state,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync_state
	.type	bl_sys_time_sync_state, @function
bl_sys_time_sync_state:
.LFB12:
	.loc 1 74 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 75 5
	.loc 1 76 5
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 80 5
	.loc 1 80 7 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a5,%lo(.LANCHOR4)(a5)
	beq	a5,zero,.L12
	.loc 1 74 1
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
	mv	s1,a0
.LVL13:
.LBB4:
.LBB5:
	.loc 1 84 5 is_stmt 1
	call	vTaskEnterCritical
.LVL14:
	.loc 1 85 5
	.loc 1 85 20 is_stmt 0
	call	xTaskGetTickCount
.LVL15:
	mv	s2,a0
.LVL16:
	.loc 1 86 5 is_stmt 1
	.loc 1 86 19 is_stmt 0
	call	bl_rtc_get_timestamp_ms
.LVL17:
	mv	s0,a0
.LVL18:
	.loc 1 87 5 is_stmt 1
	call	vTaskExitCritical
.LVL19:
	.loc 1 89 5
	.loc 1 89 34 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	.loc 1 90 18
	lui	a4,%hi(.LANCHOR3)
	.loc 1 89 34
	lw	a5,%lo(.LANCHOR2)(a5)
.LVL20:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 18 is_stmt 0
	lw	a4,%lo(.LANCHOR3)(a4)
	.loc 1 96 16
	li	a0,0
	.loc 1 89 19
	sub	a3,s2,a5
.LVL21:
	.loc 1 90 18
	sub	a4,s0,a4
.LVL22:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 7 is_stmt 0
	bgeu	a3,a4,.L10
	.loc 1 93 9 is_stmt 1
	.loc 1 93 38 is_stmt 0
	sub	a5,a5,s2
	add	a5,a5,a4
	.loc 1 93 23
	sw	a5,0(s1)
	.loc 1 94 9 is_stmt 1
	.loc 1 94 16 is_stmt 0
	li	a0,1
.L10:
.LBE5:
.LBE4:
	.loc 1 98 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL23:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL25:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL26:
.L12:
	.loc 1 81 16
	li	a0,-1
.LVL27:
	.loc 1 98 1
	ret
	.cfi_endproc
.LFE12:
	.size	bl_sys_time_sync_state, .-bl_sys_time_sync_state
	.section	.text.bl_sys_time_sync,"ax",@progbits
	.align	1
	.globl	bl_sys_time_sync
	.type	bl_sys_time_sync, @function
bl_sys_time_sync:
.LFB13:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
	.loc 1 102 5
	.loc 1 101 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 104 8
	addi	a0,sp,12
	.loc 1 101 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 102 14
	sw	zero,12(sp)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 8 is_stmt 0
	call	bl_sys_time_sync_state
.LVL28:
	.loc 1 104 7
	ble	a0,zero,.L19
	.loc 1 105 9 is_stmt 1
	lw	a0,12(sp)
	call	vTaskStepTickSafe
.LVL29:
.L19:
	.loc 1 108 5
	.loc 1 109 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	a0,12(sp)
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_sys_time_sync, .-bl_sys_time_sync
	.section	.sbss.epoch_time,"aw",@nobits
	.align	3
	.set	.LANCHOR1,. + 0
	.type	epoch_time, @object
	.size	epoch_time, 8
epoch_time:
	.zero	8
	.section	.sbss.init_tick_rtc,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	init_tick_rtc, @object
	.size	init_tick_rtc, 4
init_tick_rtc:
	.zero	4
	.section	.sbss.init_tick_rtos,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	init_tick_rtos, @object
	.size	init_tick_rtos, 4
init_tick_rtos:
	.zero	4
	.section	.sbss.sync_init,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	sync_init, @object
	.size	sync_init, 4
sync_init:
	.zero	4
	.section	.sbss.time_synced,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	time_synced, @object
	.size	time_synced, 8
time_synced:
	.zero	8
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_rtc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc07
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x48
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0xb6
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xaf
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x8
	.byte	0x11
	.4byte	0x70
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF17
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x74
	.byte	0xe
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x33
	.byte	0xa
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.4byte	0x11a
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.4byte	0xc7
	.byte	0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0xa8
	.byte	0x13
	.4byte	0x11a
	.byte	0
	.byte	0xc
	.4byte	0x62
	.4byte	0x12a
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x14e
	.byte	0xf
	.4byte	.LASF22
	.byte	0x6
	.byte	0xa4
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0xf
	.4byte	.LASF23
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.4byte	0xf8
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0xaa
	.byte	0x3
	.4byte	0x12a
	.byte	0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x7c
	.byte	0x4
	.4byte	.LASF26
	.byte	0x8
	.byte	0xc
	.byte	0xd
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x23
	.byte	0x1b
	.4byte	0x166
	.byte	0x10
	.4byte	.LASF32
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.byte	0x8
	.4byte	0x1d8
	.byte	0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x1d8
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x7
	.byte	0x37
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0xf
	.4byte	.LASF29
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x33
	.byte	0x8
	.byte	0xf
	.4byte	.LASF30
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x33
	.byte	0xc
	.byte	0xf
	.4byte	.LASF31
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x33
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x1de
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x17e
	.byte	0xc
	.4byte	0x15a
	.4byte	0x1ee
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF33
	.byte	0x24
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x271
	.byte	0xf
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0xf
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0xf
	.4byte	.LASF36
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.byte	0xf
	.4byte	.LASF37
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x33
	.byte	0xc
	.byte	0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x42
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.byte	0xf
	.4byte	.LASF39
	.byte	0x7
	.byte	0x43
	.byte	0x7
	.4byte	0x33
	.byte	0x14
	.byte	0xf
	.4byte	.LASF40
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.byte	0xf
	.4byte	.LASF41
	.byte	0x7
	.byte	0x45
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF42
	.byte	0x7
	.byte	0x46
	.byte	0x7
	.4byte	0x33
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF43
	.2byte	0x108
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.4byte	0x2b6
	.byte	0xf
	.4byte	.LASF44
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x2b6
	.byte	0
	.byte	0xf
	.4byte	.LASF45
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x2b6
	.byte	0x80
	.byte	0x13
	.4byte	.LASF46
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x15a
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF47
	.byte	0x7
	.byte	0x56
	.byte	0xa
	.4byte	0x15a
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x8f
	.4byte	0x2c6
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF48
	.2byte	0x190
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.4byte	0x309
	.byte	0xf
	.4byte	.LASF28
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x309
	.byte	0
	.byte	0xf
	.4byte	.LASF49
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0xf
	.4byte	.LASF50
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x30f
	.byte	0x8
	.byte	0xf
	.4byte	.LASF43
	.byte	0x7
	.byte	0x67
	.byte	0x1e
	.4byte	0x271
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2c6
	.byte	0xc
	.4byte	0x31f
	.4byte	0x31f
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x325
	.byte	0x14
	.byte	0x10
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.byte	0x8
	.4byte	0x34e
	.byte	0xf
	.4byte	.LASF52
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x34e
	.byte	0
	.byte	0xf
	.4byte	.LASF53
	.byte	0x7
	.byte	0x7c
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x62
	.byte	0x10
	.4byte	.LASF54
	.byte	0x68
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x497
	.byte	0x11
	.string	"_p"
	.byte	0x7
	.byte	0xbb
	.byte	0x12
	.4byte	0x34e
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0x7
	.byte	0xbd
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.byte	0xf
	.4byte	.LASF55
	.byte	0x7
	.byte	0xbe
	.byte	0x9
	.4byte	0x41
	.byte	0xc
	.byte	0xf
	.4byte	.LASF56
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x41
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x326
	.byte	0x10
	.byte	0xf
	.4byte	.LASF57
	.byte	0x7
	.byte	0xc1
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.byte	0xf
	.4byte	.LASF58
	.byte	0x7
	.byte	0xc8
	.byte	0xa
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF59
	.byte	0x7
	.byte	0xca
	.byte	0xe
	.4byte	0x60f
	.byte	0x20
	.byte	0xf
	.4byte	.LASF60
	.byte	0x7
	.byte	0xcc
	.byte	0xe
	.4byte	0x633
	.byte	0x24
	.byte	0xf
	.4byte	.LASF61
	.byte	0x7
	.byte	0xcf
	.byte	0xd
	.4byte	0x657
	.byte	0x28
	.byte	0xf
	.4byte	.LASF62
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0x671
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x326
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x7
	.byte	0xd4
	.byte	0x12
	.4byte	0x34e
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x7
	.byte	0xd5
	.byte	0x7
	.4byte	0x33
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF63
	.byte	0x7
	.byte	0xd8
	.byte	0x11
	.4byte	0x677
	.byte	0x40
	.byte	0xf
	.4byte	.LASF64
	.byte	0x7
	.byte	0xd9
	.byte	0x11
	.4byte	0x687
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x326
	.byte	0x44
	.byte	0xf
	.4byte	.LASF65
	.byte	0x7
	.byte	0xdf
	.byte	0x7
	.4byte	0x33
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF66
	.byte	0x7
	.byte	0xe0
	.byte	0xa
	.4byte	0xd4
	.byte	0x50
	.byte	0xf
	.4byte	.LASF67
	.byte	0x7
	.byte	0xe3
	.byte	0x12
	.4byte	0x4b5
	.byte	0x54
	.byte	0xf
	.4byte	.LASF68
	.byte	0x7
	.byte	0xe7
	.byte	0xc
	.4byte	0x172
	.byte	0x58
	.byte	0xf
	.4byte	.LASF69
	.byte	0x7
	.byte	0xe9
	.byte	0xe
	.4byte	0x14e
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF70
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x33
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xec
	.4byte	0x4b5
	.byte	0x16
	.4byte	0x4b5
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0x609
	.byte	0x16
	.4byte	0x33
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4c0
	.byte	0x8
	.4byte	0x4b5
	.byte	0x17
	.4byte	.LASF71
	.2byte	0x428
	.byte	0x7
	.2byte	0x265
	.byte	0x8
	.4byte	0x609
	.byte	0x18
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x267
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e3
	.byte	0x4
	.byte	0x18
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e3
	.byte	0x8
	.byte	0x18
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e3
	.byte	0xc
	.byte	0x18
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x26e
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.byte	0x18
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e3
	.byte	0x14
	.byte	0x18
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0x33
	.byte	0x30
	.byte	0x18
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x273
	.byte	0x16
	.4byte	0x8f8
	.byte	0x34
	.byte	0x18
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x275
	.byte	0x7
	.4byte	0x33
	.byte	0x38
	.byte	0x18
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x277
	.byte	0xa
	.4byte	0x909
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1d8
	.byte	0x40
	.byte	0x18
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x27b
	.byte	0x7
	.4byte	0x33
	.byte	0x44
	.byte	0x18
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1d8
	.byte	0x48
	.byte	0x18
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x27d
	.byte	0x14
	.4byte	0x90f
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x280
	.byte	0x7
	.4byte	0x33
	.byte	0x50
	.byte	0x18
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x281
	.byte	0x9
	.4byte	0x609
	.byte	0x54
	.byte	0x18
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8be
	.byte	0x58
	.byte	0x19
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x309
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2c6
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x920
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6a4
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x92c
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x7
	.byte	0x4
	.4byte	0x497
	.byte	0x15
	.4byte	0xec
	.4byte	0x633
	.byte	0x16
	.4byte	0x4b5
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xa9
	.byte	0x16
	.4byte	0x33
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x615
	.byte	0x15
	.4byte	0xe0
	.4byte	0x657
	.byte	0x16
	.4byte	0x4b5
	.byte	0x16
	.4byte	0x8f
	.byte	0x16
	.4byte	0xe0
	.byte	0x16
	.4byte	0x33
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x639
	.byte	0x15
	.4byte	0x33
	.4byte	0x671
	.byte	0x16
	.4byte	0x4b5
	.byte	0x16
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x65d
	.byte	0xc
	.4byte	0x62
	.4byte	0x687
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x62
	.4byte	0x697
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x124
	.byte	0x18
	.4byte	0x354
	.byte	0x1a
	.4byte	.LASF94
	.byte	0xc
	.byte	0x7
	.2byte	0x128
	.byte	0x8
	.4byte	0x6dd
	.byte	0x18
	.4byte	.LASF28
	.byte	0x7
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6dd
	.byte	0
	.byte	0x18
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0x18
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6e3
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x6a4
	.byte	0x7
	.byte	0x4
	.4byte	0x697
	.byte	0x1a
	.4byte	.LASF97
	.byte	0xe
	.byte	0x7
	.2byte	0x144
	.byte	0x8
	.4byte	0x722
	.byte	0x18
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x145
	.byte	0x12
	.4byte	0x722
	.byte	0
	.byte	0x18
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x146
	.byte	0x12
	.4byte	0x722
	.byte	0x6
	.byte	0x18
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x147
	.byte	0x12
	.4byte	0x69
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x69
	.4byte	0x732
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x7
	.2byte	0x285
	.byte	0x7
	.4byte	0x847
	.byte	0x18
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x288
	.byte	0x12
	.4byte	0x609
	.byte	0x4
	.byte	0x18
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x289
	.byte	0x10
	.4byte	0x847
	.byte	0x8
	.byte	0x18
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1ee
	.byte	0x24
	.byte	0x18
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x28b
	.byte	0xf
	.4byte	0x33
	.byte	0x48
	.byte	0x18
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6e9
	.byte	0x58
	.byte	0x18
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x28e
	.byte	0x16
	.4byte	0x14e
	.byte	0x68
	.byte	0x18
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x28f
	.byte	0x16
	.4byte	0x14e
	.byte	0x70
	.byte	0x18
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x290
	.byte	0x16
	.4byte	0x14e
	.byte	0x78
	.byte	0x18
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x291
	.byte	0x10
	.4byte	0x857
	.byte	0x80
	.byte	0x18
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x292
	.byte	0x10
	.4byte	0x867
	.byte	0x88
	.byte	0x18
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x293
	.byte	0xf
	.4byte	0x33
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x294
	.byte	0x16
	.4byte	0x14e
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x295
	.byte	0x16
	.4byte	0x14e
	.byte	0xac
	.byte	0x18
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x296
	.byte	0x16
	.4byte	0x14e
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x297
	.byte	0x16
	.4byte	0x14e
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x298
	.byte	0x16
	.4byte	0x14e
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x299
	.byte	0x8
	.4byte	0x33
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x857
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x867
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x877
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x29e
	.byte	0x7
	.4byte	0x89e
	.byte	0x18
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x89e
	.byte	0
	.byte	0x18
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8ae
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x34e
	.4byte	0x8ae
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x8be
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x7
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e3
	.byte	0x1d
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x29a
	.byte	0xb
	.4byte	0x732
	.byte	0x1d
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x877
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x8f3
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF151
	.byte	0x7
	.byte	0x4
	.4byte	0x8f3
	.byte	0x1f
	.4byte	0x909
	.byte	0x16
	.4byte	0x4b5
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8fe
	.byte	0x7
	.byte	0x4
	.4byte	0x1d8
	.byte	0x1f
	.4byte	0x920
	.byte	0x16
	.4byte	0x33
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x926
	.byte	0x7
	.byte	0x4
	.4byte	0x915
	.byte	0xc
	.4byte	0x697
	.4byte	0x93c
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x333
	.byte	0x17
	.4byte	0x4b5
	.byte	0x20
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4bb
	.byte	0x4
	.4byte	.LASF125
	.byte	0x9
	.byte	0x7c
	.byte	0xf
	.4byte	0x325
	.byte	0xc
	.4byte	0x96d
	.4byte	0x96d
	.byte	0x21
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x973
	.byte	0x7
	.byte	0x4
	.4byte	0x956
	.byte	0x6
	.4byte	.LASF126
	.byte	0x9
	.byte	0x84
	.byte	0x1c
	.4byte	0x962
	.byte	0x22
	.4byte	.LASF127
	.byte	0x1
	.byte	0x23
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	epoch_time
	.byte	0x22
	.4byte	.LASF128
	.byte	0x1
	.byte	0x24
	.byte	0x11
	.4byte	0x83
	.byte	0x5
	.byte	0x3
	.4byte	time_synced
	.byte	0x22
	.4byte	.LASF129
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.4byte	0x70
	.byte	0x5
	.byte	0x3
	.4byte	init_tick_rtos
	.byte	0x22
	.4byte	.LASF130
	.byte	0x1
	.byte	0x27
	.byte	0x11
	.4byte	0x70
	.byte	0x5
	.byte	0x3
	.4byte	init_tick_rtc
	.byte	0x22
	.4byte	.LASF131
	.byte	0x1
	.byte	0x28
	.byte	0xc
	.4byte	0x33
	.byte	0x5
	.byte	0x3
	.4byte	sync_init
	.byte	0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.4byte	0x70
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xa26
	.byte	0x22
	.4byte	.LASF132
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x24
	.4byte	.LVL28
	.4byte	0xa26
	.4byte	0xa1c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x26
	.4byte	.LVL29
	.4byte	0xbcc
	.byte	0
	.byte	0x27
	.4byte	.LASF152
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x33
	.byte	0x1
	.4byte	0xa74
	.byte	0x28
	.4byte	.LASF132
	.byte	0x1
	.byte	0x49
	.byte	0x26
	.4byte	0xa74
	.byte	0x29
	.4byte	.LASF133
	.byte	0x1
	.byte	0x4b
	.byte	0xe
	.4byte	0x70
	.byte	0x29
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0x70
	.byte	0x29
	.4byte	.LASF135
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0x70
	.byte	0x29
	.4byte	.LASF136
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.4byte	0x70
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x2a
	.4byte	.LASF140
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xab5
	.byte	0x26
	.4byte	.LVL8
	.4byte	0xbd9
	.byte	0x26
	.4byte	.LVL9
	.4byte	0xbe5
	.byte	0x26
	.4byte	.LVL10
	.4byte	0xbf2
	.byte	0x26
	.4byte	.LVL11
	.4byte	0xbfe
	.byte	0
	.byte	0x23
	.4byte	.LASF138
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xaf9
	.byte	0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.4byte	0xaf9
	.4byte	.LLST1
	.byte	0x2c
	.4byte	.LASF139
	.byte	0x1
	.byte	0x32
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LVL3
	.4byte	0xbe5
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x83
	.byte	0x2a
	.4byte	.LASF141
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb2f
	.byte	0x2b
	.4byte	.LASF142
	.byte	0x1
	.byte	0x2a
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x26
	.4byte	.LVL1
	.4byte	0xbe5
	.byte	0
	.byte	0x2d
	.4byte	0xa26
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xbcc
	.byte	0x2e
	.4byte	0xa37
	.4byte	.LLST3
	.byte	0x2f
	.4byte	0xa43
	.byte	0x2f
	.4byte	0xa4f
	.byte	0x2f
	.4byte	0xa5b
	.byte	0x2f
	.4byte	0xa67
	.byte	0x30
	.4byte	0xa26
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.byte	0x2e
	.4byte	0xa37
	.4byte	.LLST4
	.byte	0x31
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x32
	.4byte	0xa43
	.4byte	.LLST5
	.byte	0x32
	.4byte	0xa4f
	.4byte	.LLST6
	.byte	0x32
	.4byte	0xa5b
	.4byte	.LLST7
	.byte	0x32
	.4byte	0xa67
	.4byte	.LLST8
	.byte	0x26
	.4byte	.LVL14
	.4byte	0xbd9
	.byte	0x26
	.4byte	.LVL15
	.4byte	0xbe5
	.byte	0x26
	.4byte	.LVL17
	.4byte	0xbf2
	.byte	0x26
	.4byte	.LVL19
	.4byte	0xbfe
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x952
	.byte	0x6
	.byte	0x34
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x3
	.byte	0x5e
	.byte	0xd
	.byte	0x33
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xa
	.2byte	0x547
	.byte	0xc
	.byte	0x34
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xb
	.byte	0x27
	.byte	0xa
	.byte	0x34
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x3
	.byte	0x5f
	.byte	0xd
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x38
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x21
	.byte	0x21
	.byte	0
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x20
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
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
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x10
	.byte	0x7a
	.byte	0
	.byte	0x3
	.4byte	time_synced
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL1-1
	.4byte	.LFE9
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"short int"
.LASF138:
	.string	"bl_sys_time_get"
.LASF44:
	.string	"_fnargs"
.LASF97:
	.string	"_rand48"
.LASF77:
	.string	"_emergency"
.LASF11:
	.string	"uint64_t"
.LASF113:
	.string	"_getdate_err"
.LASF67:
	.string	"_data"
.LASF117:
	.string	"_wcrtomb_state"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF14:
	.string	"TrapNetCounter"
.LASF0:
	.string	"long long unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF133:
	.string	"currTickRtos"
.LASF151:
	.string	"__locale_t"
.LASF115:
	.string	"_mbrtowc_state"
.LASF110:
	.string	"_wctomb_state"
.LASF34:
	.string	"__tm_sec"
.LASF62:
	.string	"_close"
.LASF2:
	.string	"signed char"
.LASF125:
	.string	"intCallback_Type"
.LASF52:
	.string	"_base"
.LASF36:
	.string	"__tm_hour"
.LASF92:
	.string	"__sf"
.LASF43:
	.string	"_on_exit_args"
.LASF144:
	.string	"vTaskEnterCritical"
.LASF58:
	.string	"_cookie"
.LASF91:
	.string	"__sglue"
.LASF147:
	.string	"vTaskExitCritical"
.LASF4:
	.string	"long int"
.LASF55:
	.string	"_flags"
.LASF47:
	.string	"_is_cxa"
.LASF31:
	.string	"_wds"
.LASF63:
	.string	"_ubuf"
.LASF83:
	.string	"_result_k"
.LASF5:
	.string	"long long int"
.LASF12:
	.string	"BaseType_t"
.LASF87:
	.string	"_cvtbuf"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF114:
	.string	"_mbrlen_state"
.LASF141:
	.string	"bl_sys_time_update"
.LASF139:
	.string	"ms_diff"
.LASF30:
	.string	"_sign"
.LASF123:
	.string	"_impure_ptr"
.LASF75:
	.string	"_stderr"
.LASF32:
	.string	"_Bigint"
.LASF105:
	.string	"_gamma_signgam"
.LASF130:
	.string	"init_tick_rtc"
.LASF128:
	.string	"time_synced"
.LASF121:
	.string	"_nmalloc"
.LASF33:
	.string	"__tm"
.LASF149:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/sys/bltime/bl_sys_time.c"
.LASF69:
	.string	"_mbstate"
.LASF21:
	.string	"__wchb"
.LASF15:
	.string	"SystemCoreClock"
.LASF86:
	.string	"_cvtlen"
.LASF10:
	.string	"long unsigned int"
.LASF56:
	.string	"_file"
.LASF137:
	.string	"bl_sys_time_sync"
.LASF95:
	.string	"_niobs"
.LASF7:
	.string	"short unsigned int"
.LASF89:
	.string	"_atexit0"
.LASF112:
	.string	"_signal_buf"
.LASF126:
	.string	"intCbfArra"
.LASF82:
	.string	"_result"
.LASF20:
	.string	"__wch"
.LASF16:
	.string	"wint_t"
.LASF68:
	.string	"_lock"
.LASF145:
	.string	"xTaskGetTickCount"
.LASF99:
	.string	"_mult"
.LASF127:
	.string	"epoch_time"
.LASF60:
	.string	"_write"
.LASF39:
	.string	"__tm_year"
.LASF131:
	.string	"sync_init"
.LASF101:
	.string	"_unused_rand"
.LASF132:
	.string	"xTicksToJump"
.LASF66:
	.string	"_offset"
.LASF50:
	.string	"_fns"
.LASF120:
	.string	"_nextf"
.LASF129:
	.string	"init_tick_rtos"
.LASF152:
	.string	"bl_sys_time_sync_state"
.LASF38:
	.string	"__tm_mon"
.LASF48:
	.string	"_atexit"
.LASF80:
	.string	"__sdidinit"
.LASF17:
	.string	"_off_t"
.LASF85:
	.string	"_freelist"
.LASF148:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"_LOCK_RECURSIVE_T"
.LASF59:
	.string	"_read"
.LASF135:
	.string	"deltaTickRtos"
.LASF8:
	.string	"int32_t"
.LASF45:
	.string	"_dso_handle"
.LASF88:
	.string	"_new"
.LASF119:
	.string	"_h_errno"
.LASF27:
	.string	"_flock_t"
.LASF41:
	.string	"__tm_yday"
.LASF51:
	.string	"__sbuf"
.LASF70:
	.string	"_flags2"
.LASF96:
	.string	"_iobs"
.LASF93:
	.string	"__FILE"
.LASF24:
	.string	"_mbstate_t"
.LASF54:
	.string	"__sFILE"
.LASF106:
	.string	"_rand_next"
.LASF108:
	.string	"_mblen_state"
.LASF76:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF79:
	.string	"_locale"
.LASF81:
	.string	"__cleanup"
.LASF78:
	.string	"_unspecified_locale_info"
.LASF29:
	.string	"_maxwds"
.LASF71:
	.string	"_reent"
.LASF98:
	.string	"_seed"
.LASF140:
	.string	"bl_sys_time_sync_init"
.LASF22:
	.string	"__count"
.LASF9:
	.string	"uint32_t"
.LASF61:
	.string	"_seek"
.LASF18:
	.string	"_fpos_t"
.LASF72:
	.string	"_errno"
.LASF13:
	.string	"char"
.LASF65:
	.string	"_blksize"
.LASF142:
	.string	"epoch"
.LASF53:
	.string	"_size"
.LASF1:
	.string	"unsigned int"
.LASF134:
	.string	"currTickRtc"
.LASF28:
	.string	"_next"
.LASF102:
	.string	"_strtok_last"
.LASF146:
	.string	"bl_rtc_get_timestamp_ms"
.LASF23:
	.string	"__value"
.LASF46:
	.string	"_fntypes"
.LASF6:
	.string	"unsigned char"
.LASF100:
	.string	"_add"
.LASF25:
	.string	"__ULong"
.LASF124:
	.string	"_global_impure_ptr"
.LASF103:
	.string	"_asctime_buf"
.LASF74:
	.string	"_stdout"
.LASF40:
	.string	"__tm_wday"
.LASF94:
	.string	"_glue"
.LASF73:
	.string	"_stdin"
.LASF19:
	.string	"_ssize_t"
.LASF111:
	.string	"_l64a_buf"
.LASF90:
	.string	"_sig_func"
.LASF64:
	.string	"_nbuf"
.LASF122:
	.string	"_unused"
.LASF42:
	.string	"__tm_isdst"
.LASF104:
	.string	"_localtime_buf"
.LASF35:
	.string	"__tm_min"
.LASF107:
	.string	"_r48"
.LASF136:
	.string	"deltaTickRtc"
.LASF143:
	.string	"vTaskStepTickSafe"
.LASF109:
	.string	"_mbtowc_state"
.LASF84:
	.string	"_p5s"
.LASF150:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/bltime"
.LASF37:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
