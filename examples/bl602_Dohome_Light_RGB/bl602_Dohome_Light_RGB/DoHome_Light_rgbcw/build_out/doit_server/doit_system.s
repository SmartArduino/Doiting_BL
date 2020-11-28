	.file	"doit_system.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.system_reset_task,"ax",@progbits
	.align	1
	.type	system_reset_task, @function
system_reset_task:
.LFB2:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/doit_system.c"
	.loc 1 24 1
	.cfi_startproc
.LVL0:
	.loc 1 25 2
	.loc 1 24 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 25 2
	li	a0,2000
.LVL1:
	.loc 1 24 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 25 2
	call	vTaskDelay
.LVL2:
	.loc 1 26 2 is_stmt 1
	.loc 1 27 5
	.loc 1 28 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 27 5
	tail	hal_sys_reset
.LVL3:
	.cfi_endproc
.LFE2:
	.size	system_reset_task, .-system_reset_task
	.section	.text.system_reboot_task,"ax",@progbits
	.align	1
	.type	system_reboot_task, @function
system_reboot_task:
.LFB4:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 50 2
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 50 2
	li	a0,2000
.LVL5:
	.loc 1 49 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 50 2
	call	vTaskDelay
.LVL6:
	.loc 1 51 2 is_stmt 1
	.loc 1 52 5
	.loc 1 53 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 52 5
	tail	hal_reboot
.LVL7:
	.cfi_endproc
.LFE4:
	.size	system_reboot_task, .-system_reboot_task
	.section	.text.system_delay_reset,"ax",@progbits
	.align	1
	.globl	system_delay_reset
	.type	system_delay_reset, @function
system_delay_reset:
.LFB3:
	.loc 1 36 1 is_stmt 1
	.cfi_startproc
	.loc 1 37 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 37 5
	call	flash_reset_rst_count
.LVL8:
	.loc 1 38 5 is_stmt 1
	.loc 1 38 27 is_stmt 0
	call	flash_get_user_config
.LVL9:
	.loc 1 39 5 is_stmt 1
	.loc 1 39 23 is_stmt 0
	li	a5,2
	sb	a5,0(a0)
	.loc 1 40 5 is_stmt 1
	call	flash_user_config_write
.LVL10:
	.loc 1 42 5
	.loc 1 43 2
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 43 2
	lui	a1,%hi(.LC0)
	lui	a0,%hi(system_reset_task)
	.loc 1 45 1
	.loc 1 43 2
	li	a5,0
	li	a4,5
	li	a3,0
	li	a2,256
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(system_reset_task)
	.loc 1 45 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 43 2
	tail	xTaskCreate
.LVL11:
	.cfi_endproc
.LFE3:
	.size	system_delay_reset, .-system_delay_reset
	.section	.text.system_delay_reboot,"ax",@progbits
	.align	1
	.globl	system_delay_reboot
	.type	system_delay_reboot, @function
system_delay_reboot:
.LFB5:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
	.loc 1 57 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 57 5
	call	flash_reset_rst_count
.LVL12:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 27 is_stmt 0
	call	flash_get_user_config
.LVL13:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 23 is_stmt 0
	li	a5,2
	sb	a5,0(a0)
	.loc 1 60 5 is_stmt 1
	call	flash_user_config_write
.LVL14:
	.loc 1 62 5
	.loc 1 63 2
	.loc 1 65 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 63 2
	lui	a1,%hi(.LC1)
	lui	a0,%hi(system_reboot_task)
	.loc 1 65 1
	.loc 1 63 2
	li	a5,0
	li	a4,5
	li	a3,0
	li	a2,256
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(system_reboot_task)
	.loc 1 65 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 63 2
	tail	xTaskCreate
.LVL15:
	.cfi_endproc
.LFE5:
	.size	system_delay_reboot, .-system_delay_reboot
	.section	.rodata.system_delay_reboot.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"reboot_task"
	.section	.rodata.system_delay_reset.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"reset_task"
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_flash.h"
	.file 9 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 10 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_sys.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbd2
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
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x69
	.byte	0x6
	.4byte	.LASF121
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0xb6
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xaf
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x10e
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xbb
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x10e
	.byte	0
	.byte	0xc
	.4byte	0x5b
	.4byte	0x11e
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x142
	.byte	0xf
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xec
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x11e
	.byte	0x4
	.4byte	.LASF23
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF25
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x15a
	.byte	0x10
	.4byte	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1cc
	.byte	0xf
	.4byte	.LASF26
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1cc
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x11
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1d2
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x172
	.byte	0xc
	.4byte	0x14e
	.4byte	0x1e2
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x265
	.byte	0xf
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2aa
	.byte	0xf
	.4byte	.LASF42
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2aa
	.byte	0
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2aa
	.byte	0x80
	.byte	0x13
	.4byte	.LASF44
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x14e
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF45
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x14e
	.2byte	0x104
	.byte	0
	.byte	0xc
	.4byte	0x83
	.4byte	0x2ba
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x12
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2fd
	.byte	0xf
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2fd
	.byte	0
	.byte	0xf
	.4byte	.LASF47
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x303
	.byte	0x8
	.byte	0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x265
	.byte	0x88
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2ba
	.byte	0xc
	.4byte	0x313
	.4byte	0x313
	.byte	0xd
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x319
	.byte	0x14
	.byte	0x10
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x342
	.byte	0xf
	.4byte	.LASF50
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x342
	.byte	0
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x5b
	.byte	0x10
	.4byte	.LASF52
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x48b
	.byte	0x11
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x342
	.byte	0
	.byte	0x11
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xf
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x3a
	.byte	0xe
	.byte	0x11
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x31a
	.byte	0x10
	.byte	0xf
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x83
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x603
	.byte	0x20
	.byte	0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x627
	.byte	0x24
	.byte	0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x64b
	.byte	0x28
	.byte	0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x665
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x31a
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x342
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x66b
	.byte	0x40
	.byte	0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x67b
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x31a
	.byte	0x44
	.byte	0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xc8
	.byte	0x50
	.byte	0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4a9
	.byte	0x54
	.byte	0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x166
	.byte	0x58
	.byte	0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x142
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x15
	.4byte	0xe0
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x83
	.byte	0x16
	.4byte	0x5fd
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4b4
	.byte	0x8
	.4byte	0x4a9
	.byte	0x17
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5fd
	.byte	0x18
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x4
	.byte	0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6d7
	.byte	0x8
	.byte	0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6d7
	.byte	0xc
	.byte	0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8d7
	.byte	0x14
	.byte	0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ec
	.byte	0x34
	.byte	0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8fd
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1cc
	.byte	0x40
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1cc
	.byte	0x48
	.byte	0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x903
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5fd
	.byte	0x54
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8b2
	.byte	0x58
	.byte	0x19
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2fd
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2ba
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x914
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x698
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x920
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x7
	.byte	0x4
	.4byte	0x48b
	.byte	0x15
	.4byte	0xe0
	.4byte	0x627
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x83
	.byte	0x16
	.4byte	0xa9
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x609
	.byte	0x15
	.4byte	0xd4
	.4byte	0x64b
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x83
	.byte	0x16
	.4byte	0xd4
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x62d
	.byte	0x15
	.4byte	0x25
	.4byte	0x665
	.byte	0x16
	.4byte	0x4a9
	.byte	0x16
	.4byte	0x83
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x651
	.byte	0xc
	.4byte	0x5b
	.4byte	0x67b
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x5b
	.4byte	0x68b
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x348
	.byte	0x1a
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6d1
	.byte	0x18
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6d1
	.byte	0
	.byte	0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6d7
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x698
	.byte	0x7
	.byte	0x4
	.4byte	0x68b
	.byte	0x1a
	.4byte	.LASF95
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x716
	.byte	0x18
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x716
	.byte	0
	.byte	0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x716
	.byte	0x6
	.byte	0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x62
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x62
	.4byte	0x726
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x83b
	.byte	0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5fd
	.byte	0x4
	.byte	0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x83b
	.byte	0x8
	.byte	0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1e2
	.byte	0x24
	.byte	0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7c
	.byte	0x50
	.byte	0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6dd
	.byte	0x58
	.byte	0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x142
	.byte	0x68
	.byte	0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x142
	.byte	0x70
	.byte	0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x142
	.byte	0x78
	.byte	0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x84b
	.byte	0x80
	.byte	0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x85b
	.byte	0x88
	.byte	0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x142
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x142
	.byte	0xac
	.byte	0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x142
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x142
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x142
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x84b
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x85b
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x86b
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x892
	.byte	0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x892
	.byte	0
	.byte	0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8a2
	.byte	0x78
	.byte	0
	.byte	0xc
	.4byte	0x342
	.4byte	0x8a2
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0xc
	.4byte	0x2c
	.4byte	0x8b2
	.byte	0xd
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8d7
	.byte	0x1d
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x726
	.byte	0x1d
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x86b
	.byte	0
	.byte	0xc
	.4byte	0xaf
	.4byte	0x8e7
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF151
	.byte	0x7
	.byte	0x4
	.4byte	0x8e7
	.byte	0x1f
	.4byte	0x8fd
	.byte	0x16
	.4byte	0x4a9
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f2
	.byte	0x7
	.byte	0x4
	.4byte	0x1cc
	.byte	0x1f
	.4byte	0x914
	.byte	0x16
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x91a
	.byte	0x7
	.byte	0x4
	.4byte	0x909
	.byte	0xc
	.4byte	0x68b
	.4byte	0x930
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4a9
	.byte	0x20
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4af
	.byte	0xe
	.byte	0xc
	.byte	0x8
	.byte	0x9
	.byte	0x9
	.4byte	0x9a1
	.byte	0xf
	.4byte	.LASF124
	.byte	0x8
	.byte	0xa
	.byte	0x7
	.4byte	0xaf
	.byte	0
	.byte	0xf
	.4byte	.LASF125
	.byte	0x8
	.byte	0xb
	.byte	0x7
	.4byte	0xaf
	.byte	0x1
	.byte	0xf
	.4byte	.LASF126
	.byte	0x8
	.byte	0xc
	.byte	0x7
	.4byte	0xaf
	.byte	0x2
	.byte	0xf
	.4byte	.LASF127
	.byte	0x8
	.byte	0xd
	.byte	0x7
	.4byte	0xaf
	.byte	0x3
	.byte	0x11
	.string	"ts"
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.4byte	0x75
	.byte	0x4
	.byte	0xf
	.4byte	.LASF128
	.byte	0x8
	.byte	0xf
	.byte	0x10
	.4byte	0x75
	.byte	0x8
	.byte	0
	.byte	0x4
	.4byte	.LASF129
	.byte	0x8
	.byte	0x10
	.byte	0x3
	.4byte	0x94a
	.byte	0xe
	.byte	0x5c
	.byte	0x8
	.byte	0x13
	.byte	0x9
	.4byte	0x9eb
	.byte	0xf
	.4byte	.LASF130
	.byte	0x8
	.byte	0x15
	.byte	0x7
	.4byte	0xaf
	.byte	0
	.byte	0xf
	.4byte	.LASF131
	.byte	0x8
	.byte	0x17
	.byte	0x10
	.4byte	0x9eb
	.byte	0x4
	.byte	0xf
	.4byte	.LASF132
	.byte	0x8
	.byte	0x19
	.byte	0x7
	.4byte	0xaf
	.byte	0x58
	.byte	0xf
	.4byte	.LASF133
	.byte	0x8
	.byte	0x1a
	.byte	0x7
	.4byte	0xaf
	.byte	0x59
	.byte	0
	.byte	0xc
	.4byte	0x9a1
	.4byte	0x9fb
	.byte	0xd
	.4byte	0x2c
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF134
	.byte	0x8
	.byte	0x1c
	.byte	0x3
	.4byte	0x9ad
	.byte	0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa7b
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x3a
	.byte	0x14
	.4byte	0xa7b
	.4byte	.LLST3
	.byte	0x23
	.4byte	.LVL12
	.4byte	0xb7f
	.byte	0x23
	.4byte	.LVL13
	.4byte	0xb8b
	.byte	0x23
	.4byte	.LVL14
	.4byte	0xb97
	.byte	0x24
	.4byte	.LVL15
	.4byte	0xba3
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	system_reboot_task
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9fb
	.byte	0x26
	.4byte	.LASF138
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xac6
	.byte	0x27
	.4byte	.LASF140
	.byte	0x1
	.byte	0x30
	.byte	0x26
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x28
	.4byte	.LVL6
	.4byte	0xbb0
	.4byte	0xabc
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x29
	.4byte	.LVL7
	.4byte	0xbbd
	.byte	0
	.byte	0x21
	.4byte	.LASF136
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xb3a
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x26
	.byte	0x14
	.4byte	0xa7b
	.4byte	.LLST2
	.byte	0x23
	.4byte	.LVL8
	.4byte	0xb7f
	.byte	0x23
	.4byte	.LVL9
	.4byte	0xb8b
	.byte	0x23
	.4byte	.LVL10
	.4byte	0xb97
	.byte	0x24
	.4byte	.LVL11
	.4byte	0xba3
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	system_reset_task
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x25
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x25
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x35
	.byte	0x25
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF139
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xb7f
	.byte	0x27
	.4byte	.LASF140
	.byte	0x1
	.byte	0x17
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x28
	.4byte	.LVL2
	.4byte	0xbb0
	.4byte	0xb75
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0x29
	.4byte	.LVL3
	.4byte	0xbc9
	.byte	0
	.byte	0x2a
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.byte	0x43
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x8
	.byte	0x28
	.byte	0x10
	.byte	0x2a
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x8
	.byte	0x34
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x14a
	.byte	0xd
	.byte	0x2b
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x2f6
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xa
	.byte	0x20
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xa
	.byte	0x21
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x27
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
	.byte	0x2a
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
	.byte	0x2b
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
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF43:
	.string	"_dso_handle"
.LASF135:
	.string	"system_delay_reboot"
.LASF51:
	.string	"_size"
.LASF95:
	.string	"_rand48"
.LASF141:
	.string	"flash_reset_rst_count"
.LASF75:
	.string	"_emergency"
.LASF65:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF121:
	.string	"TrapNetCounter"
.LASF10:
	.string	"long long unsigned int"
.LASF55:
	.string	"_lbfsize"
.LASF151:
	.string	"__locale_t"
.LASF137:
	.string	"pcfg"
.LASF131:
	.string	"saved_timers"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF32:
	.string	"__tm_sec"
.LASF4:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF150:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/doit_server"
.LASF145:
	.string	"vTaskDelay"
.LASF50:
	.string	"_base"
.LASF34:
	.string	"__tm_hour"
.LASF90:
	.string	"__sf"
.LASF41:
	.string	"_on_exit_args"
.LASF56:
	.string	"_cookie"
.LASF89:
	.string	"__sglue"
.LASF3:
	.string	"long int"
.LASF138:
	.string	"system_reboot_task"
.LASF53:
	.string	"_flags"
.LASF45:
	.string	"_is_cxa"
.LASF71:
	.string	"_stdin"
.LASF61:
	.string	"_ubuf"
.LASF63:
	.string	"_blksize"
.LASF139:
	.string	"system_reset_task"
.LASF11:
	.string	"BaseType_t"
.LASF85:
	.string	"_cvtbuf"
.LASF64:
	.string	"_offset"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_mbrlen_state"
.LASF42:
	.string	"_fnargs"
.LASF48:
	.string	"_fns"
.LASF28:
	.string	"_sign"
.LASF25:
	.string	"_flock_t"
.LASF73:
	.string	"_stderr"
.LASF30:
	.string	"_Bigint"
.LASF103:
	.string	"_gamma_signgam"
.LASF133:
	.string	"timezone_offset"
.LASF57:
	.string	"_read"
.LASF81:
	.string	"_result_k"
.LASF31:
	.string	"__tm"
.LASF142:
	.string	"flash_get_user_config"
.LASF0:
	.string	"unsigned int"
.LASF19:
	.string	"__wchb"
.LASF72:
	.string	"_stdout"
.LASF84:
	.string	"_cvtlen"
.LASF9:
	.string	"long unsigned int"
.LASF15:
	.string	"_off_t"
.LASF140:
	.string	"pvParameters"
.LASF93:
	.string	"_niobs"
.LASF132:
	.string	"remote_ctrl"
.LASF6:
	.string	"short unsigned int"
.LASF87:
	.string	"_atexit0"
.LASF110:
	.string	"_signal_buf"
.LASF101:
	.string	"_asctime_buf"
.LASF80:
	.string	"_result"
.LASF18:
	.string	"__wch"
.LASF14:
	.string	"wint_t"
.LASF66:
	.string	"_lock"
.LASF125:
	.string	"on_off"
.LASF68:
	.string	"_flags2"
.LASF130:
	.string	"restart_loc"
.LASF58:
	.string	"_write"
.LASF37:
	.string	"__tm_year"
.LASF119:
	.string	"_nmalloc"
.LASF144:
	.string	"xTaskCreate"
.LASF12:
	.string	"TickType_t"
.LASF118:
	.string	"_nextf"
.LASF36:
	.string	"__tm_mon"
.LASF46:
	.string	"_atexit"
.LASF78:
	.string	"__sdidinit"
.LASF149:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/doit_system.c"
.LASF83:
	.string	"_freelist"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF128:
	.string	"end_tick"
.LASF7:
	.string	"int32_t"
.LASF5:
	.string	"unsigned char"
.LASF86:
	.string	"_new"
.LASF136:
	.string	"system_delay_reset"
.LASF117:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF39:
	.string	"__tm_yday"
.LASF49:
	.string	"__sbuf"
.LASF94:
	.string	"_iobs"
.LASF91:
	.string	"__FILE"
.LASF22:
	.string	"_mbstate_t"
.LASF52:
	.string	"__sFILE"
.LASF67:
	.string	"_mbstate"
.LASF104:
	.string	"_rand_next"
.LASF106:
	.string	"_mblen_state"
.LASF74:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF77:
	.string	"_locale"
.LASF79:
	.string	"__cleanup"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF27:
	.string	"_maxwds"
.LASF148:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF96:
	.string	"_seed"
.LASF124:
	.string	"valid"
.LASF20:
	.string	"__count"
.LASF8:
	.string	"uint32_t"
.LASF59:
	.string	"_seek"
.LASF122:
	.string	"_impure_ptr"
.LASF16:
	.string	"_fpos_t"
.LASF126:
	.string	"repeat"
.LASF70:
	.string	"_errno"
.LASF13:
	.string	"char"
.LASF33:
	.string	"__tm_min"
.LASF143:
	.string	"flash_user_config_write"
.LASF129:
	.string	"saved_timer_t"
.LASF97:
	.string	"_mult"
.LASF26:
	.string	"_next"
.LASF100:
	.string	"_strtok_last"
.LASF21:
	.string	"__value"
.LASF44:
	.string	"_fntypes"
.LASF147:
	.string	"hal_sys_reset"
.LASF98:
	.string	"_add"
.LASF23:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF146:
	.string	"hal_reboot"
.LASF123:
	.string	"_global_impure_ptr"
.LASF134:
	.string	"user_config_t"
.LASF99:
	.string	"_unused_rand"
.LASF127:
	.string	"reserved2"
.LASF54:
	.string	"_file"
.LASF29:
	.string	"_wds"
.LASF38:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF17:
	.string	"_ssize_t"
.LASF109:
	.string	"_l64a_buf"
.LASF88:
	.string	"_sig_func"
.LASF69:
	.string	"_reent"
.LASF62:
	.string	"_nbuf"
.LASF120:
	.string	"_unused"
.LASF40:
	.string	"__tm_isdst"
.LASF102:
	.string	"_localtime_buf"
.LASF60:
	.string	"_close"
.LASF105:
	.string	"_r48"
.LASF107:
	.string	"_mbtowc_state"
.LASF82:
	.string	"_p5s"
.LASF35:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
