	.file	"ctr_mode.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.tc_ctr_mode,"ax",@progbits
	.align	1
	.globl	tc_ctr_mode
	.type	tc_ctr_mode, @function
tc_ctr_mode:
.LFB2:
	.file 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ctr_mode.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 41 2
	.loc 1 42 2
	.loc 1 43 2
	.loc 1 44 2
	.loc 1 47 2
	.loc 1 47 5 is_stmt 0
	bne	a0,zero,.L2
.L27:
	.loc 1 54 10
	li	a0,0
.LVL1:
	.loc 1 85 1
	ret
.LVL2:
.L4:
	.cfi_def_cfa_offset 80
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 54 10
	li	a0,0
.LVL3:
.L1:
	.loc 1 85 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL4:
	lw	s1,68(sp)
	.cfi_restore 9
.LVL5:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL6:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL7:
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
.LVL8:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L2:
	.loc 1 47 27 discriminator 1
	beq	a2,zero,.L27
	.loc 1 48 26
	beq	a4,zero,.L27
	.loc 1 49 27
	beq	a5,zero,.L27
	.loc 1 50 35
	beq	a3,zero,.L27
	.loc 1 51 17
	beq	a1,zero,.L27
	.loc 1 52 18
	bne	a3,a1,.L27
	.loc 1 39 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s3,60(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	mv	s3,a3
	mv	s5,a2
	mv	s6,a0
	.loc 1 58 2 is_stmt 1
	.loc 1 58 8 is_stmt 0
	li	a3,16
.LVL10:
	mv	a2,a4
.LVL11:
	li	a1,16
.LVL12:
	addi	a0,sp,16
.LVL13:
	.loc 1 39 1
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s7,44(sp)
	sw	ra,76(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	mv	s7,a5
	sw	s4,56(sp)
	.cfi_offset 20, -24
	mv	s1,a4
	.loc 1 58 8
	call	_copy
.LVL14:
	.loc 1 61 2 is_stmt 1
	.loc 1 61 40 is_stmt 0
	lbu	a5,29(sp)
	.loc 1 61 20
	lbu	s0,28(sp)
	.loc 1 63 9
	li	s2,0
	.loc 1 61 45
	slli	a5,a5,16
	.loc 1 61 25
	slli	s0,s0,24
	.loc 1 61 32
	or	s0,s0,a5
	.loc 1 62 32
	lbu	a5,31(sp)
	.loc 1 62 24
	or	s0,s0,a5
	.loc 1 62 13
	lbu	a5,30(sp)
	.loc 1 62 18
	slli	a5,a5,8
	.loc 1 62 24
	or	s0,s0,a5
.LVL15:
	.loc 1 63 2 is_stmt 1
.L6:
	.loc 1 64 3
	.loc 1 64 10 is_stmt 0
	andi	s4,s2,15
	.loc 1 64 6
	bne	s4,zero,.L5
	.loc 1 66 4 is_stmt 1
	.loc 1 66 8 is_stmt 0
	mv	a2,s7
	addi	a1,sp,16
	mv	a0,sp
	call	tc_aes_encrypt
.LVL16:
	.loc 1 66 7
	beq	a0,zero,.L4
	.loc 1 67 5 is_stmt 1
	.loc 1 67 14 is_stmt 0
	addi	s0,s0,1
.LVL17:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 37 is_stmt 0
	srli	a5,s0,24
	.loc 1 70 15
	slli	a4,s0,16
	.loc 1 68 17
	sb	a5,28(sp)
	.loc 1 69 5 is_stmt 1
	.loc 1 70 15 is_stmt 0
	srli	a4,a4,16
	.loc 1 69 37
	srli	a5,s0,16
	.loc 1 69 17
	sb	a5,29(sp)
	.loc 1 70 5 is_stmt 1
	.loc 1 71 5
	.loc 1 70 15 is_stmt 0
	srli	a4,a4,8
	slli	a5,s0,8
	or	a5,a5,a4
	sh	a5,30(sp)
.L5:
	.loc 1 77 3 is_stmt 1 discriminator 2
.LVL18:
	.loc 1 77 18 is_stmt 0 discriminator 2
	addi	a3,sp,32
	.loc 1 77 36 discriminator 2
	add	a5,s5,s2
	.loc 1 77 18 discriminator 2
	add	s4,a3,s4
	.loc 1 77 10 discriminator 2
	lbu	a5,0(a5)
	lbu	a3,-32(s4)
	add	a4,s6,s2
	.loc 1 63 25 discriminator 2
	addi	s2,s2,1
.LVL19:
	.loc 1 77 10 discriminator 2
	xor	a5,a5,a3
	sb	a5,0(a4)
	.loc 1 63 2 discriminator 2
	bne	s3,s2,.L6
	.loc 1 81 2 is_stmt 1
	.loc 1 81 10 is_stmt 0
	lbu	a5,28(sp)
	.loc 1 84 9
	li	a0,1
	.loc 1 81 10
	sb	a5,12(s1)
	.loc 1 81 23 is_stmt 1
	.loc 1 81 31 is_stmt 0
	lbu	a5,29(sp)
	sb	a5,13(s1)
	.loc 1 82 2 is_stmt 1
	.loc 1 82 10 is_stmt 0
	lbu	a5,30(sp)
	sb	a5,14(s1)
	.loc 1 82 23 is_stmt 1
	.loc 1 82 31 is_stmt 0
	lbu	a5,31(sp)
	sb	a5,15(s1)
	.loc 1 84 2 is_stmt 1
	.loc 1 84 9 is_stmt 0
	j	.L1
	.cfi_endproc
.LFE2:
	.size	tc_ctr_mode, .-tc_ctr_mode
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/aes.h"
	.file 4 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/utils.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa89
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF131
	.byte	0xc
	.4byte	.LASF132
	.4byte	.LASF133
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x6
	.4byte	.LASF24
	.byte	0xb0
	.byte	0x3
	.byte	0x40
	.byte	0x10
	.4byte	0x97
	.byte	0x7
	.4byte	.LASF17
	.byte	0x3
	.byte	0x41
	.byte	0xf
	.4byte	0x97
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x75
	.4byte	0xa7
	.byte	0x9
	.4byte	0x75
	.byte	0x2b
	.byte	0
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x42
	.byte	0x4
	.4byte	0xb8
	.byte	0x4
	.4byte	0xa7
	.byte	0xa
	.byte	0x4
	.4byte	0x7c
	.byte	0xb
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x6e
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x111
	.byte	0xd
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xbe
	.byte	0xd
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x111
	.byte	0
	.byte	0x8
	.4byte	0x52
	.4byte	0x121
	.byte	0x9
	.4byte	0x75
	.byte	0x3
	.byte	0
	.byte	0xe
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x145
	.byte	0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x6e
	.byte	0
	.byte	0x7
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xef
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x121
	.byte	0xf
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x6e
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x15f
	.byte	0x6
	.4byte	.LASF25
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1d1
	.byte	0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1d1
	.byte	0
	.byte	0x10
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x6e
	.byte	0x4
	.byte	0x7
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x6e
	.byte	0x8
	.byte	0x7
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x6e
	.byte	0xc
	.byte	0x7
	.4byte	.LASF29
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x6e
	.byte	0x10
	.byte	0x10
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1d7
	.byte	0x14
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x177
	.byte	0x8
	.4byte	0x153
	.4byte	0x1e7
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x26a
	.byte	0x7
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x6e
	.byte	0
	.byte	0x7
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x6e
	.byte	0x4
	.byte	0x7
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x6e
	.byte	0x8
	.byte	0x7
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x6e
	.byte	0xc
	.byte	0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x6e
	.byte	0x10
	.byte	0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x6e
	.byte	0x14
	.byte	0x7
	.4byte	.LASF37
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x6e
	.byte	0x18
	.byte	0x7
	.4byte	.LASF38
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x6e
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x6e
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2af
	.byte	0x7
	.4byte	.LASF41
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2af
	.byte	0
	.byte	0x7
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2af
	.byte	0x80
	.byte	0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x153
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF44
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x153
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x151
	.4byte	0x2bf
	.byte	0x9
	.4byte	0x75
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x302
	.byte	0x7
	.4byte	.LASF26
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x302
	.byte	0
	.byte	0x7
	.4byte	.LASF46
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x6e
	.byte	0x4
	.byte	0x7
	.4byte	.LASF47
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x308
	.byte	0x8
	.byte	0x7
	.4byte	.LASF40
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x26a
	.byte	0x88
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x2bf
	.byte	0x8
	.4byte	0x318
	.4byte	0x318
	.byte	0x9
	.4byte	0x75
	.byte	0x1f
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x31e
	.byte	0x13
	.byte	0x6
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x347
	.byte	0x7
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x347
	.byte	0
	.byte	0x7
	.4byte	.LASF50
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x6e
	.byte	0x4
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x52
	.byte	0x6
	.4byte	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x490
	.byte	0x10
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x347
	.byte	0
	.byte	0x10
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x6e
	.byte	0x4
	.byte	0x10
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x6e
	.byte	0x8
	.byte	0x7
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.byte	0x7
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0xe
	.byte	0x10
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x31f
	.byte	0x10
	.byte	0x7
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x6e
	.byte	0x18
	.byte	0x7
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x151
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF56
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x614
	.byte	0x20
	.byte	0x7
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x63e
	.byte	0x24
	.byte	0x7
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x662
	.byte	0x28
	.byte	0x7
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x67c
	.byte	0x2c
	.byte	0x10
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x31f
	.byte	0x30
	.byte	0x10
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x347
	.byte	0x38
	.byte	0x10
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x6e
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x682
	.byte	0x40
	.byte	0x7
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x692
	.byte	0x43
	.byte	0x10
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x31f
	.byte	0x44
	.byte	0x7
	.4byte	.LASF62
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x6e
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xcb
	.byte	0x50
	.byte	0x7
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4ae
	.byte	0x54
	.byte	0x7
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x16b
	.byte	0x58
	.byte	0x7
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x145
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF67
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x6e
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xe3
	.4byte	0x4ae
	.byte	0x15
	.4byte	0x4ae
	.byte	0x15
	.4byte	0x151
	.byte	0x15
	.4byte	0x602
	.byte	0x15
	.4byte	0x6e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x4b9
	.byte	0x4
	.4byte	0x4ae
	.byte	0x16
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x602
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x6e
	.byte	0
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6ee
	.byte	0x4
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6ee
	.byte	0x8
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6ee
	.byte	0xc
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x6e
	.byte	0x10
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8ee
	.byte	0x14
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x6e
	.byte	0x30
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x903
	.byte	0x34
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x6e
	.byte	0x38
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x914
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1d1
	.byte	0x40
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x6e
	.byte	0x44
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1d1
	.byte	0x48
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x91a
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x6e
	.byte	0x50
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x602
	.byte	0x54
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8c9
	.byte	0x58
	.byte	0x18
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x302
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2bf
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x92b
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6af
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x937
	.2byte	0x2ec
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x608
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.byte	0x4
	.4byte	0x608
	.byte	0xa
	.byte	0x4
	.4byte	0x490
	.byte	0x14
	.4byte	0xe3
	.4byte	0x638
	.byte	0x15
	.4byte	0x4ae
	.byte	0x15
	.4byte	0x151
	.byte	0x15
	.4byte	0x638
	.byte	0x15
	.4byte	0x6e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x60f
	.byte	0xa
	.byte	0x4
	.4byte	0x61a
	.byte	0x14
	.4byte	0xd7
	.4byte	0x662
	.byte	0x15
	.4byte	0x4ae
	.byte	0x15
	.4byte	0x151
	.byte	0x15
	.4byte	0xd7
	.byte	0x15
	.4byte	0x6e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x644
	.byte	0x14
	.4byte	0x6e
	.4byte	0x67c
	.byte	0x15
	.4byte	0x4ae
	.byte	0x15
	.4byte	0x151
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x668
	.byte	0x8
	.4byte	0x52
	.4byte	0x692
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x52
	.4byte	0x6a2
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x34d
	.byte	0x19
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6e8
	.byte	0x17
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6e8
	.byte	0
	.byte	0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x6e
	.byte	0x4
	.byte	0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6ee
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x6af
	.byte	0xa
	.byte	0x4
	.4byte	0x6a2
	.byte	0x19
	.4byte	.LASF95
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x72d
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x72d
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x72d
	.byte	0x6
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x59
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x59
	.4byte	0x73d
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x852
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x75
	.byte	0
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x602
	.byte	0x4
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x852
	.byte	0x8
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1e7
	.byte	0x24
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x6e
	.byte	0x48
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x67
	.byte	0x50
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6f4
	.byte	0x58
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x145
	.byte	0x68
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x145
	.byte	0x70
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x145
	.byte	0x78
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x862
	.byte	0x80
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x872
	.byte	0x88
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x6e
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x145
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x145
	.byte	0xac
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x145
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x145
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x145
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x6e
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x608
	.4byte	0x862
	.byte	0x9
	.4byte	0x75
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x608
	.4byte	0x872
	.byte	0x9
	.4byte	0x75
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x608
	.4byte	0x882
	.byte	0x9
	.4byte	0x75
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8a9
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8a9
	.byte	0
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8b9
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x347
	.4byte	0x8b9
	.byte	0x9
	.4byte	0x75
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x75
	.4byte	0x8c9
	.byte	0x9
	.4byte	0x75
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8ee
	.byte	0x1c
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x73d
	.byte	0x1c
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x882
	.byte	0
	.byte	0x8
	.4byte	0x608
	.4byte	0x8fe
	.byte	0x9
	.4byte	0x75
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF134
	.byte	0xa
	.byte	0x4
	.4byte	0x8fe
	.byte	0x1e
	.4byte	0x914
	.byte	0x15
	.4byte	0x4ae
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x909
	.byte	0xa
	.byte	0x4
	.4byte	0x1d1
	.byte	0x1e
	.4byte	0x92b
	.byte	0x15
	.4byte	0x6e
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x931
	.byte	0xa
	.byte	0x4
	.4byte	0x920
	.byte	0x8
	.4byte	0x6a2
	.4byte	0x947
	.byte	0x9
	.4byte	0x75
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4ae
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4b4
	.byte	0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x6e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xa58
	.byte	0x21
	.string	"out"
	.byte	0x1
	.byte	0x25
	.byte	0x1a
	.4byte	0xa58
	.4byte	.LLST0
	.byte	0x22
	.4byte	.LASF123
	.byte	0x1
	.byte	0x25
	.byte	0x2c
	.4byte	0x75
	.4byte	.LLST1
	.byte	0x21
	.string	"in"
	.byte	0x1
	.byte	0x25
	.byte	0x43
	.4byte	0xa5e
	.4byte	.LLST2
	.byte	0x22
	.4byte	.LASF124
	.byte	0x1
	.byte	0x26
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x21
	.string	"ctr"
	.byte	0x1
	.byte	0x26
	.byte	0x20
	.4byte	0xa58
	.4byte	.LLST4
	.byte	0x22
	.4byte	.LASF125
	.byte	0x1
	.byte	0x26
	.byte	0x3b
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0x23
	.4byte	.LASF126
	.byte	0x1
	.byte	0x29
	.byte	0xa
	.4byte	0xa64
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x23
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.4byte	0xa64
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x24
	.4byte	.LASF128
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LVL14
	.4byte	0xa74
	.4byte	0xa3b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x28
	.4byte	.LVL16
	.4byte	0xa80
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x41
	.byte	0xa
	.byte	0x4
	.4byte	0x4d
	.byte	0x8
	.4byte	0x41
	.4byte	0xa74
	.byte	0x9
	.4byte	0x75
	.byte	0xf
	.byte	0
	.byte	0x29
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0x8
	.byte	0x3d
	.byte	0xe
	.byte	0x29
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0x3
	.byte	0x5d
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
	.byte	0x38
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x8
	.byte	0x86
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x8
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL14-1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"_dso_handle"
.LASF50:
	.string	"_size"
.LASF125:
	.string	"sched"
.LASF95:
	.string	"_rand48"
.LASF74:
	.string	"_emergency"
.LASF64:
	.string	"_data"
.LASF115:
	.string	"_wcrtomb_state"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF7:
	.string	"long long unsigned int"
.LASF54:
	.string	"_lbfsize"
.LASF17:
	.string	"words"
.LASF134:
	.string	"__locale_t"
.LASF113:
	.string	"_mbrtowc_state"
.LASF108:
	.string	"_wctomb_state"
.LASF31:
	.string	"__tm_sec"
.LASF3:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF60:
	.string	"_ubuf"
.LASF49:
	.string	"_base"
.LASF129:
	.string	"_copy"
.LASF33:
	.string	"__tm_hour"
.LASF89:
	.string	"__sf"
.LASF40:
	.string	"_on_exit_args"
.LASF55:
	.string	"_cookie"
.LASF88:
	.string	"__sglue"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"_flags"
.LASF44:
	.string	"_is_cxa"
.LASF70:
	.string	"_stdin"
.LASF62:
	.string	"_blksize"
.LASF84:
	.string	"_cvtbuf"
.LASF63:
	.string	"_offset"
.LASF135:
	.string	"tc_ctr_mode"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF112:
	.string	"_mbrlen_state"
.LASF41:
	.string	"_fnargs"
.LASF124:
	.string	"inlen"
.LASF47:
	.string	"_fns"
.LASF28:
	.string	"_sign"
.LASF23:
	.string	"_flock_t"
.LASF72:
	.string	"_stderr"
.LASF25:
	.string	"_Bigint"
.LASF103:
	.string	"_gamma_signgam"
.LASF24:
	.string	"tc_aes_key_sched_struct"
.LASF80:
	.string	"_result_k"
.LASF30:
	.string	"__tm"
.LASF8:
	.string	"unsigned int"
.LASF16:
	.string	"__wchb"
.LASF71:
	.string	"_stdout"
.LASF83:
	.string	"_cvtlen"
.LASF6:
	.string	"long unsigned int"
.LASF53:
	.string	"_file"
.LASF14:
	.string	"_ssize_t"
.LASF93:
	.string	"_niobs"
.LASF5:
	.string	"short unsigned int"
.LASF86:
	.string	"_atexit0"
.LASF110:
	.string	"_signal_buf"
.LASF101:
	.string	"_asctime_buf"
.LASF79:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF11:
	.string	"wint_t"
.LASF65:
	.string	"_lock"
.LASF67:
	.string	"_flags2"
.LASF57:
	.string	"_write"
.LASF36:
	.string	"__tm_year"
.LASF119:
	.string	"_nmalloc"
.LASF133:
	.string	"/b-l/dolphin/build_out/blestack"
.LASF118:
	.string	"_nextf"
.LASF35:
	.string	"__tm_mon"
.LASF45:
	.string	"_atexit"
.LASF77:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF132:
	.string	"/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ctr_mode.c"
.LASF82:
	.string	"_freelist"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF56:
	.string	"_read"
.LASF4:
	.string	"unsigned char"
.LASF85:
	.string	"_new"
.LASF10:
	.string	"TCAesKeySched_t"
.LASF117:
	.string	"_h_errno"
.LASF1:
	.string	"short int"
.LASF38:
	.string	"__tm_yday"
.LASF48:
	.string	"__sbuf"
.LASF94:
	.string	"_iobs"
.LASF91:
	.string	"__FILE"
.LASF20:
	.string	"_mbstate_t"
.LASF51:
	.string	"__sFILE"
.LASF66:
	.string	"_mbstate"
.LASF104:
	.string	"_rand_next"
.LASF106:
	.string	"_mblen_state"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF127:
	.string	"nonce"
.LASF76:
	.string	"_locale"
.LASF78:
	.string	"__cleanup"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF27:
	.string	"_maxwds"
.LASF131:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF96:
	.string	"_seed"
.LASF18:
	.string	"__count"
.LASF19:
	.string	"__value"
.LASF58:
	.string	"_seek"
.LASF121:
	.string	"_impure_ptr"
.LASF13:
	.string	"_fpos_t"
.LASF69:
	.string	"_errno"
.LASF90:
	.string	"char"
.LASF32:
	.string	"__tm_min"
.LASF126:
	.string	"buffer"
.LASF97:
	.string	"_mult"
.LASF26:
	.string	"_next"
.LASF100:
	.string	"_strtok_last"
.LASF43:
	.string	"_fntypes"
.LASF98:
	.string	"_add"
.LASF21:
	.string	"__ULong"
.LASF111:
	.string	"_getdate_err"
.LASF122:
	.string	"_global_impure_ptr"
.LASF99:
	.string	"_unused_rand"
.LASF29:
	.string	"_wds"
.LASF37:
	.string	"__tm_wday"
.LASF92:
	.string	"_glue"
.LASF9:
	.string	"uint8_t"
.LASF109:
	.string	"_l64a_buf"
.LASF87:
	.string	"_sig_func"
.LASF68:
	.string	"_reent"
.LASF61:
	.string	"_nbuf"
.LASF120:
	.string	"_unused"
.LASF39:
	.string	"__tm_isdst"
.LASF102:
	.string	"_localtime_buf"
.LASF59:
	.string	"_close"
.LASF105:
	.string	"_r48"
.LASF123:
	.string	"outlen"
.LASF107:
	.string	"_mbtowc_state"
.LASF81:
	.string	"_p5s"
.LASF130:
	.string	"tc_aes_encrypt"
.LASF34:
	.string	"__tm_mday"
.LASF128:
	.string	"block_num"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
