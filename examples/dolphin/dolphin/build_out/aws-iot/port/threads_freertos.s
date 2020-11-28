	.file	"threads_freertos.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aws_iot_thread_mutex_init,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_init
	.type	aws_iot_thread_mutex_init, @function
aws_iot_thread_mutex_init:
.LFB4:
	.file 1 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/threads_freertos.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 36 21
	li	a0,4
.LVL1:
	.loc 1 35 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 36 21
	call	xQueueCreateMutex
.LVL2:
	.loc 1 36 19
	sw	a0,0(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 36 is_stmt 0
	bne	a0,zero,.L3
	li	a0,-46
.L2:
	.loc 1 38 1 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L3:
	.cfi_restore_state
	.loc 1 37 36
	li	a0,0
	j	.L2
	.cfi_endproc
.LFE4:
	.size	aws_iot_thread_mutex_init, .-aws_iot_thread_mutex_init
	.section	.text.aws_iot_thread_mutex_lock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_lock
	.type	aws_iot_thread_mutex_lock, @function
aws_iot_thread_mutex_lock:
.LFB5:
	.loc 1 50 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 51 5
	.loc 1 50 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 51 5
	lw	a0,0(a0)
.LVL6:
	li	a1,-1
	call	xQueueTakeMutexRecursive
.LVL7:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	aws_iot_thread_mutex_lock, .-aws_iot_thread_mutex_lock
	.section	.text.aws_iot_thread_mutex_trylock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_trylock
	.type	aws_iot_thread_mutex_trylock, @function
aws_iot_thread_mutex_trylock:
.LFB6:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 66 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 9
	lw	a0,0(a0)
.LVL9:
	li	a1,0
	call	xQueueTakeMutexRecursive
.LVL10:
	.loc 1 66 8
	bne	a0,zero,.L9
	.loc 1 69 16
	li	a0,-47
.L8:
	.loc 1 71 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	.loc 1 67 16
	li	a0,0
	j	.L8
	.cfi_endproc
.LFE6:
	.size	aws_iot_thread_mutex_trylock, .-aws_iot_thread_mutex_trylock
	.section	.text.aws_iot_thread_mutex_unlock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_unlock
	.type	aws_iot_thread_mutex_unlock, @function
aws_iot_thread_mutex_unlock:
.LFB7:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 83 5
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 83 9
	lw	a0,0(a0)
.LVL12:
	call	xQueueGiveMutexRecursive
.LVL13:
	.loc 1 83 8
	bne	a0,zero,.L13
	.loc 1 86 16
	li	a0,-48
.L12:
	.loc 1 88 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	.loc 1 84 16
	li	a0,0
	j	.L12
	.cfi_endproc
.LFE7:
	.size	aws_iot_thread_mutex_unlock, .-aws_iot_thread_mutex_unlock
	.section	.text.aws_iot_thread_mutex_destroy,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_destroy
	.type	aws_iot_thread_mutex_destroy, @function
aws_iot_thread_mutex_destroy:
.LFB8:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 100 5
	.loc 1 99 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 100 5
	lw	a0,0(a0)
.LVL15:
	call	vQueueDelete
.LVL16:
	.loc 1 101 5 is_stmt 1
	.loc 1 102 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	aws_iot_thread_mutex_destroy, .-aws_iot_thread_mutex_destroy
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/queue.h"
	.file 10 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/semphr.h"
	.file 11 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/include/threads_platform.h"
	.file 12 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
	.file 13 "/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc77
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF203
	.byte	0xc
	.4byte	.LASF204
	.4byte	.LASF205
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
	.4byte	.LASF5
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
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
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
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF122
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0xc2
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x8
	.4byte	0xbb
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF16
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF17
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xa
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x11a
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xc7
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x11a
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x12a
	.byte	0xd
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x14e
	.byte	0xf
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xf8
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF23
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x12a
	.byte	0x4
	.4byte	.LASF24
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF25
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x166
	.byte	0x10
	.4byte	.LASF31
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1d8
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1d8
	.byte	0
	.byte	0x11
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF30
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
	.4byte	.LASF32
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x271
	.byte	0xf
	.4byte	.LASF33
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xf
	.4byte	.LASF34
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF35
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.4byte	.LASF38
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xf
	.4byte	.LASF39
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF40
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF41
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x12
	.4byte	.LASF42
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2b6
	.byte	0xf
	.4byte	.LASF43
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2b6
	.byte	0
	.byte	0xf
	.4byte	.LASF44
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2b6
	.byte	0x80
	.byte	0x13
	.4byte	.LASF45
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x15a
	.2byte	0x100
	.byte	0x13
	.4byte	.LASF46
	.byte	0x6
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
	.4byte	.LASF47
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x309
	.byte	0xf
	.4byte	.LASF27
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x309
	.byte	0
	.byte	0xf
	.4byte	.LASF48
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.4byte	.LASF49
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x30f
	.byte	0x8
	.byte	0xf
	.4byte	.LASF42
	.byte	0x6
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
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x34e
	.byte	0xf
	.4byte	.LASF51
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x34e
	.byte	0
	.byte	0xf
	.4byte	.LASF52
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x67
	.byte	0x10
	.4byte	.LASF53
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x497
	.byte	0x11
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x34e
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
	.4byte	.LASF54
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3a
	.byte	0xc
	.byte	0xf
	.4byte	.LASF55
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
	.4byte	0x326
	.byte	0x10
	.byte	0xf
	.4byte	.LASF56
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xf
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF58
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x60f
	.byte	0x20
	.byte	0xf
	.4byte	.LASF59
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x633
	.byte	0x24
	.byte	0xf
	.4byte	.LASF60
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x657
	.byte	0x28
	.byte	0xf
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x671
	.byte	0x2c
	.byte	0x11
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x326
	.byte	0x30
	.byte	0x11
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x34e
	.byte	0x38
	.byte	0x11
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF62
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x677
	.byte	0x40
	.byte	0xf
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x687
	.byte	0x43
	.byte	0x11
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x326
	.byte	0x44
	.byte	0xf
	.4byte	.LASF64
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xd4
	.byte	0x50
	.byte	0xf
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4b5
	.byte	0x54
	.byte	0xf
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x172
	.byte	0x58
	.byte	0xf
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x14e
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF69
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x25
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
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x4c0
	.byte	0x8
	.4byte	0x4b5
	.byte	0x17
	.4byte	.LASF70
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x609
	.byte	0x18
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x18
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e3
	.byte	0x4
	.byte	0x18
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e3
	.byte	0x8
	.byte	0x18
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e3
	.byte	0xc
	.byte	0x18
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x18
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e3
	.byte	0x14
	.byte	0x18
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x18
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8f8
	.byte	0x34
	.byte	0x18
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x18
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x909
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1d8
	.byte	0x40
	.byte	0x18
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x18
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1d8
	.byte	0x48
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x90f
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x609
	.byte	0x54
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8be
	.byte	0x58
	.byte	0x19
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x309
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2c6
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x920
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6a4
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x92c
	.2byte	0x2ec
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xbb
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
	.4byte	0xb5
	.byte	0x16
	.4byte	0x25
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
	.4byte	0x25
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x639
	.byte	0x15
	.4byte	0x25
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
	.4byte	0x67
	.4byte	0x687
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	0x67
	.4byte	0x697
	.byte	0xd
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x354
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6dd
	.byte	0x18
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6dd
	.byte	0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x18
	.4byte	.LASF95
	.byte	0x6
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
	.4byte	.LASF96
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x722
	.byte	0x18
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x722
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x722
	.byte	0x6
	.byte	0x18
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6e
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	0x6e
	.4byte	0x732
	.byte	0xd
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x847
	.byte	0x18
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x609
	.byte	0x4
	.byte	0x18
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x847
	.byte	0x8
	.byte	0x18
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1ee
	.byte	0x24
	.byte	0x18
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x18
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x88
	.byte	0x50
	.byte	0x18
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6e9
	.byte	0x58
	.byte	0x18
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x14e
	.byte	0x68
	.byte	0x18
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x14e
	.byte	0x70
	.byte	0x18
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x14e
	.byte	0x78
	.byte	0x18
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x857
	.byte	0x80
	.byte	0x18
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x867
	.byte	0x88
	.byte	0x18
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x14e
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x14e
	.byte	0xac
	.byte	0x18
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x14e
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x14e
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x14e
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xc
	.4byte	0xbb
	.4byte	0x857
	.byte	0xd
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.byte	0xc
	.4byte	0xbb
	.4byte	0x867
	.byte	0xd
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	0xbb
	.4byte	0x877
	.byte	0xd
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x89e
	.byte	0x18
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x89e
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.byte	0x6
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
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e3
	.byte	0x1d
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x732
	.byte	0x1d
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x877
	.byte	0
	.byte	0xc
	.4byte	0xbb
	.4byte	0x8f3
	.byte	0xd
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF127
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
	.4byte	0x25
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
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4b5
	.byte	0x20
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4bb
	.byte	0x6
	.4byte	.LASF125
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x609
	.byte	0x4
	.4byte	.LASF126
	.byte	0x9
	.byte	0x30
	.byte	0x22
	.4byte	0x96e
	.byte	0x7
	.byte	0x4
	.4byte	0x974
	.byte	0x1e
	.4byte	.LASF128
	.byte	0x4
	.4byte	.LASF129
	.byte	0xa
	.byte	0x25
	.byte	0x17
	.4byte	0x962
	.byte	0x10
	.4byte	.LASF130
	.byte	0x4
	.byte	0xb
	.byte	0x22
	.byte	0x8
	.4byte	0x9a0
	.byte	0xf
	.4byte	.LASF131
	.byte	0xb
	.byte	0x23
	.byte	0x17
	.4byte	0x979
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
	.byte	0x1
	.4byte	0x33
	.byte	0xc
	.byte	0x28
	.byte	0xe
	.4byte	0xb11
	.byte	0x22
	.4byte	.LASF132
	.byte	0x6
	.byte	0x22
	.4byte	.LASF133
	.byte	0x5
	.byte	0x22
	.4byte	.LASF134
	.byte	0x4
	.byte	0x22
	.4byte	.LASF135
	.byte	0x3
	.byte	0x22
	.4byte	.LASF136
	.byte	0x2
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x22
	.4byte	.LASF138
	.byte	0
	.byte	0x23
	.4byte	.LASF139
	.byte	0x7f
	.byte	0x23
	.4byte	.LASF140
	.byte	0x7e
	.byte	0x23
	.4byte	.LASF141
	.byte	0x7d
	.byte	0x23
	.4byte	.LASF142
	.byte	0x7c
	.byte	0x23
	.4byte	.LASF143
	.byte	0x7b
	.byte	0x23
	.4byte	.LASF144
	.byte	0x7a
	.byte	0x23
	.4byte	.LASF145
	.byte	0x79
	.byte	0x23
	.4byte	.LASF146
	.byte	0x78
	.byte	0x23
	.4byte	.LASF147
	.byte	0x77
	.byte	0x23
	.4byte	.LASF148
	.byte	0x76
	.byte	0x23
	.4byte	.LASF149
	.byte	0x75
	.byte	0x23
	.4byte	.LASF150
	.byte	0x74
	.byte	0x23
	.4byte	.LASF151
	.byte	0x73
	.byte	0x23
	.4byte	.LASF152
	.byte	0x72
	.byte	0x23
	.4byte	.LASF153
	.byte	0x71
	.byte	0x23
	.4byte	.LASF154
	.byte	0x70
	.byte	0x23
	.4byte	.LASF155
	.byte	0x6f
	.byte	0x23
	.4byte	.LASF156
	.byte	0x6e
	.byte	0x23
	.4byte	.LASF157
	.byte	0x6d
	.byte	0x23
	.4byte	.LASF158
	.byte	0x6c
	.byte	0x23
	.4byte	.LASF159
	.byte	0x6b
	.byte	0x23
	.4byte	.LASF160
	.byte	0x6a
	.byte	0x23
	.4byte	.LASF161
	.byte	0x69
	.byte	0x23
	.4byte	.LASF162
	.byte	0x68
	.byte	0x23
	.4byte	.LASF163
	.byte	0x67
	.byte	0x23
	.4byte	.LASF164
	.byte	0x66
	.byte	0x23
	.4byte	.LASF165
	.byte	0x65
	.byte	0x23
	.4byte	.LASF166
	.byte	0x64
	.byte	0x23
	.4byte	.LASF167
	.byte	0x63
	.byte	0x23
	.4byte	.LASF168
	.byte	0x62
	.byte	0x23
	.4byte	.LASF169
	.byte	0x61
	.byte	0x23
	.4byte	.LASF170
	.byte	0x60
	.byte	0x23
	.4byte	.LASF171
	.byte	0x5f
	.byte	0x23
	.4byte	.LASF172
	.byte	0x5e
	.byte	0x23
	.4byte	.LASF173
	.byte	0x5d
	.byte	0x23
	.4byte	.LASF174
	.byte	0x5c
	.byte	0x23
	.4byte	.LASF175
	.byte	0x5b
	.byte	0x23
	.4byte	.LASF176
	.byte	0x5a
	.byte	0x23
	.4byte	.LASF177
	.byte	0x59
	.byte	0x23
	.4byte	.LASF178
	.byte	0x58
	.byte	0x23
	.4byte	.LASF179
	.byte	0x57
	.byte	0x23
	.4byte	.LASF180
	.byte	0x56
	.byte	0x23
	.4byte	.LASF181
	.byte	0x55
	.byte	0x23
	.4byte	.LASF182
	.byte	0x54
	.byte	0x23
	.4byte	.LASF183
	.byte	0x53
	.byte	0x23
	.4byte	.LASF184
	.byte	0x52
	.byte	0x23
	.4byte	.LASF185
	.byte	0x51
	.byte	0x23
	.4byte	.LASF186
	.byte	0x50
	.byte	0x23
	.4byte	.LASF187
	.byte	0x4f
	.byte	0x23
	.4byte	.LASF188
	.byte	0x4e
	.byte	0x23
	.4byte	.LASF189
	.byte	0x4d
	.byte	0x23
	.4byte	.LASF190
	.byte	0x4c
	.byte	0
	.byte	0x4
	.4byte	.LASF191
	.byte	0xc
	.byte	0xa0
	.byte	0x3
	.4byte	0x9a0
	.byte	0x4
	.4byte	.LASF192
	.byte	0xd
	.byte	0x31
	.byte	0x1d
	.4byte	0x985
	.byte	0x24
	.4byte	.LASF193
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.4byte	0xb11
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5d
	.byte	0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x62
	.byte	0x37
	.4byte	0xb5d
	.4byte	.LLST4
	.byte	0x26
	.4byte	.LVL16
	.4byte	0xc46
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb1d
	.byte	0x24
	.4byte	.LASF194
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0xb11
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xb97
	.byte	0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x51
	.byte	0x36
	.4byte	0xb5d
	.4byte	.LLST3
	.byte	0x26
	.4byte	.LVL13
	.4byte	0xc53
	.byte	0
	.byte	0x24
	.4byte	.LASF196
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0xb11
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd1
	.byte	0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x40
	.byte	0x37
	.4byte	0xb5d
	.4byte	.LLST2
	.byte	0x27
	.4byte	.LVL10
	.4byte	0xc60
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF197
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0xb11
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0c
	.byte	0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x31
	.byte	0x34
	.4byte	0xb5d
	.4byte	.LLST1
	.byte	0x27
	.4byte	.LVL7
	.4byte	0xc60
	.byte	0x28
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF198
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0xb11
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xc46
	.byte	0x25
	.4byte	.LASF195
	.byte	0x1
	.byte	0x22
	.byte	0x34
	.4byte	0xb5d
	.4byte	.LLST0
	.byte	0x27
	.4byte	.LVL2
	.4byte	0xc6d
	.byte	0x28
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x9
	.2byte	0x392
	.byte	0x6
	.byte	0x29
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x9
	.2byte	0x593
	.byte	0xc
	.byte	0x29
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x9
	.2byte	0x592
	.byte	0xc
	.byte	0x29
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x9
	.2byte	0x586
	.byte	0xf
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
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
	.byte	0x25
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE5
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_on_exit_args"
.LASF182:
	.string	"SHADOW_JSON_BUFFER_TRUNCATED"
.LASF109:
	.string	"_wctomb_state"
.LASF181:
	.string	"SHADOW_WAIT_FOR_PUBLISH"
.LASF106:
	.string	"_r48"
.LASF193:
	.string	"aws_iot_thread_mutex_destroy"
.LASF111:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"_lbfsize"
.LASF54:
	.string	"_flags"
.LASF199:
	.string	"vQueueDelete"
.LASF71:
	.string	"_errno"
.LASF170:
	.string	"MQTT_RX_BUFFER_TOO_SHORT_ERROR"
.LASF25:
	.string	"_LOCK_RECURSIVE_T"
.LASF152:
	.string	"NETWORK_RECONNECT_TIMED_OUT_ERROR"
.LASF58:
	.string	"_read"
.LASF175:
	.string	"MQTT_CONNACK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR"
.LASF113:
	.string	"_mbrlen_state"
.LASF21:
	.string	"__count"
.LASF73:
	.string	"_stdout"
.LASF136:
	.string	"MQTT_NOTHING_TO_READ"
.LASF17:
	.string	"_fpos_t"
.LASF194:
	.string	"aws_iot_thread_mutex_unlock"
.LASF174:
	.string	"MQTT_CONNACK_UNKNOWN_ERROR"
.LASF49:
	.string	"_fns"
.LASF159:
	.string	"NETWORK_PK_PRIVATE_KEY_PARSE_ERROR"
.LASF57:
	.string	"_cookie"
.LASF196:
	.string	"aws_iot_thread_mutex_trylock"
.LASF31:
	.string	"_Bigint"
.LASF39:
	.string	"__tm_wday"
.LASF81:
	.string	"_result"
.LASF9:
	.string	"uint32_t"
.LASF35:
	.string	"__tm_hour"
.LASF164:
	.string	"MQTT_CONNECTION_ERROR"
.LASF205:
	.string	"/b-l/dolphin/build_out/aws-iot"
.LASF131:
	.string	"mutex"
.LASF34:
	.string	"__tm_min"
.LASF123:
	.string	"_impure_ptr"
.LASF128:
	.string	"QueueDefinition"
.LASF119:
	.string	"_nextf"
.LASF96:
	.string	"_rand48"
.LASF187:
	.string	"MUTEX_DESTROY_ERROR"
.LASF146:
	.string	"NETWORK_SSL_INIT_ERROR"
.LASF82:
	.string	"_result_k"
.LASF11:
	.string	"long long unsigned int"
.LASF102:
	.string	"_asctime_buf"
.LASF53:
	.string	"__sFILE"
.LASF30:
	.string	"_wds"
.LASF140:
	.string	"NULL_VALUE_ERROR"
.LASF92:
	.string	"__FILE"
.LASF65:
	.string	"_offset"
.LASF158:
	.string	"NETWORK_X509_DEVICE_CRT_PARSE_ERROR"
.LASF76:
	.string	"_emergency"
.LASF173:
	.string	"MQTT_DECODE_REMAINING_LENGTH_ERROR"
.LASF122:
	.string	"TrapNetCounter"
.LASF33:
	.string	"__tm_sec"
.LASF153:
	.string	"NETWORK_ALREADY_CONNECTED_ERROR"
.LASF130:
	.string	"_IoT_Mutex_t"
.LASF125:
	.string	"suboptarg"
.LASF40:
	.string	"__tm_yday"
.LASF75:
	.string	"_inc"
.LASF48:
	.string	"_ind"
.LASF204:
	.string	"/b-l/bl_iot_sdk_new/components/3rdparty/aws-iot/port/threads_freertos.c"
.LASF27:
	.string	"_next"
.LASF178:
	.string	"MQTT_CONNACK_BAD_USERDATA_ERROR"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF189:
	.string	"LIMIT_EXCEEDED_ERROR"
.LASF22:
	.string	"__value"
.LASF168:
	.string	"MQTT_CLIENT_NOT_IDLE_ERROR"
.LASF83:
	.string	"_p5s"
.LASF197:
	.string	"aws_iot_thread_mutex_lock"
.LASF190:
	.string	"INVALID_TOPIC_TYPE_ERROR"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF107:
	.string	"_mblen_state"
.LASF180:
	.string	"JSON_PARSE_ERROR"
.LASF138:
	.string	"SUCCESS"
.LASF14:
	.string	"char"
.LASF139:
	.string	"FAILURE"
.LASF36:
	.string	"__tm_mday"
.LASF89:
	.string	"_sig_func"
.LASF114:
	.string	"_mbrtowc_state"
.LASF88:
	.string	"_atexit0"
.LASF134:
	.string	"NETWORK_ATTEMPTING_RECONNECT"
.LASF26:
	.string	"_flock_t"
.LASF191:
	.string	"IoT_Error_t"
.LASF126:
	.string	"QueueHandle_t"
.LASF19:
	.string	"__wch"
.LASF95:
	.string	"_iobs"
.LASF6:
	.string	"uint8_t"
.LASF147:
	.string	"NETWORK_SSL_CERT_ERROR"
.LASF61:
	.string	"_close"
.LASF79:
	.string	"__sdidinit"
.LASF202:
	.string	"xQueueCreateMutex"
.LASF156:
	.string	"NETWORK_PHYSICAL_LAYER_DISCONNECTED"
.LASF137:
	.string	"MQTT_CONNACK_CONNECTION_ACCEPTED"
.LASF72:
	.string	"_stdin"
.LASF104:
	.string	"_gamma_signgam"
.LASF4:
	.string	"long long int"
.LASF51:
	.string	"_base"
.LASF84:
	.string	"_freelist"
.LASF167:
	.string	"MQTT_UNEXPECTED_CLIENT_STATE_ERROR"
.LASF98:
	.string	"_mult"
.LASF24:
	.string	"__ULong"
.LASF151:
	.string	"NETWORK_DISCONNECTED_ERROR"
.LASF116:
	.string	"_wcrtomb_state"
.LASF149:
	.string	"NETWORK_SSL_READ_TIMEOUT_ERROR"
.LASF12:
	.string	"BaseType_t"
.LASF200:
	.string	"xQueueGiveMutexRecursive"
.LASF55:
	.string	"_file"
.LASF80:
	.string	"__cleanup"
.LASF23:
	.string	"_mbstate_t"
.LASF203:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF43:
	.string	"_fnargs"
.LASF41:
	.string	"__tm_isdst"
.LASF183:
	.string	"SHADOW_JSON_ERROR"
.LASF118:
	.string	"_h_errno"
.LASF133:
	.string	"NETWORK_MANUALLY_DISCONNECTED"
.LASF165:
	.string	"MQTT_CONNECT_TIMEOUT_ERROR"
.LASF13:
	.string	"TickType_t"
.LASF37:
	.string	"__tm_mon"
.LASF135:
	.string	"NETWORK_RECONNECTED"
.LASF201:
	.string	"xQueueTakeMutexRecursive"
.LASF148:
	.string	"NETWORK_SSL_WRITE_TIMEOUT_ERROR"
.LASF59:
	.string	"_write"
.LASF47:
	.string	"_atexit"
.LASF68:
	.string	"_mbstate"
.LASF154:
	.string	"NETWORK_MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED"
.LASF2:
	.string	"short int"
.LASF192:
	.string	"IoT_Mutex_t"
.LASF3:
	.string	"long int"
.LASF185:
	.string	"MUTEX_LOCK_ERROR"
.LASF129:
	.string	"SemaphoreHandle_t"
.LASF91:
	.string	"__sf"
.LASF29:
	.string	"_sign"
.LASF198:
	.string	"aws_iot_thread_mutex_init"
.LASF66:
	.string	"_data"
.LASF20:
	.string	"__wchb"
.LASF124:
	.string	"_global_impure_ptr"
.LASF38:
	.string	"__tm_year"
.LASF132:
	.string	"NETWORK_PHYSICAL_LAYER_CONNECTED"
.LASF195:
	.string	"pMutex"
.LASF144:
	.string	"NETWORK_SSL_CONNECT_TIMEOUT_ERROR"
.LASF103:
	.string	"_localtime_buf"
.LASF121:
	.string	"_unused"
.LASF160:
	.string	"NETWORK_ERR_NET_SOCKET_FAILED"
.LASF87:
	.string	"_new"
.LASF85:
	.string	"_cvtlen"
.LASF28:
	.string	"_maxwds"
.LASF110:
	.string	"_l64a_buf"
.LASF64:
	.string	"_blksize"
.LASF32:
	.string	"__tm"
.LASF67:
	.string	"_lock"
.LASF10:
	.string	"long unsigned int"
.LASF155:
	.string	"NETWORK_SSL_UNKNOWN_ERROR"
.LASF94:
	.string	"_niobs"
.LASF15:
	.string	"wint_t"
.LASF5:
	.string	"int32_t"
.LASF166:
	.string	"MQTT_REQUEST_TIMEOUT_ERROR"
.LASF176:
	.string	"MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR"
.LASF44:
	.string	"_dso_handle"
.LASF86:
	.string	"_cvtbuf"
.LASF143:
	.string	"TCP_SETUP_ERROR"
.LASF7:
	.string	"unsigned char"
.LASF171:
	.string	"MQTT_TX_BUFFER_TOO_SHORT_ERROR"
.LASF145:
	.string	"NETWORK_SSL_WRITE_ERROR"
.LASF112:
	.string	"_getdate_err"
.LASF99:
	.string	"_add"
.LASF169:
	.string	"MQTT_RX_MESSAGE_PACKET_TYPE_INVALID_ERROR"
.LASF161:
	.string	"NETWORK_ERR_NET_UNKNOWN_HOST"
.LASF50:
	.string	"__sbuf"
.LASF172:
	.string	"MQTT_MAX_SUBSCRIPTIONS_REACHED_ERROR"
.LASF93:
	.string	"_glue"
.LASF188:
	.string	"MAX_SIZE_ERROR"
.LASF90:
	.string	"__sglue"
.LASF101:
	.string	"_strtok_last"
.LASF108:
	.string	"_mbtowc_state"
.LASF179:
	.string	"MQTT_CONNACK_NOT_AUTHORIZED_ERROR"
.LASF78:
	.string	"_locale"
.LASF162:
	.string	"NETWORK_ERR_NET_CONNECT_FAILED"
.LASF18:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF70:
	.string	"_reent"
.LASF8:
	.string	"short unsigned int"
.LASF163:
	.string	"NETWORK_SSL_NOTHING_TO_READ"
.LASF177:
	.string	"MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR"
.LASF45:
	.string	"_fntypes"
.LASF52:
	.string	"_size"
.LASF184:
	.string	"MUTEX_INIT_ERROR"
.LASF16:
	.string	"_off_t"
.LASF63:
	.string	"_nbuf"
.LASF100:
	.string	"_unused_rand"
.LASF157:
	.string	"NETWORK_X509_ROOT_CRT_PARSE_ERROR"
.LASF77:
	.string	"_unspecified_locale_info"
.LASF69:
	.string	"_flags2"
.LASF46:
	.string	"_is_cxa"
.LASF97:
	.string	"_seed"
.LASF105:
	.string	"_rand_next"
.LASF127:
	.string	"__locale_t"
.LASF60:
	.string	"_seek"
.LASF141:
	.string	"TCP_CONNECTION_ERROR"
.LASF74:
	.string	"_stderr"
.LASF120:
	.string	"_nmalloc"
.LASF62:
	.string	"_ubuf"
.LASF150:
	.string	"NETWORK_SSL_READ_ERROR"
.LASF186:
	.string	"MUTEX_UNLOCK_ERROR"
.LASF142:
	.string	"SSL_CONNECTION_ERROR"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
