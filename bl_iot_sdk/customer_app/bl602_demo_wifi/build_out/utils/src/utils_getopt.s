	.file	"utils_getopt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_getopt_init,"ax",@progbits
	.align	1
	.globl	utils_getopt_init
	.type	utils_getopt_init, @function
utils_getopt_init:
.LFB3:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_getopt.c"
	.loc 1 63 1
	.cfi_startproc
.LVL0:
	.loc 1 64 5
	.loc 1 64 8 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 67 5 is_stmt 1
	.loc 1 68 17 is_stmt 0
	li	a5,1
	.loc 1 67 17
	sw	zero,0(a0)
	.loc 1 68 5 is_stmt 1
	.loc 1 68 17 is_stmt 0
	sw	a5,4(a0)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 17 is_stmt 0
	sw	a1,8(a0)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 17 is_stmt 0
	sw	zero,12(a0)
	.loc 1 71 5 is_stmt 1
	.loc 1 71 19 is_stmt 0
	sw	zero,16(a0)
	.loc 1 72 5 is_stmt 1
	.loc 1 72 12 is_stmt 0
	li	a0,0
.LVL1:
	ret
.LVL2:
.L3:
	.loc 1 65 16
	li	a0,-1
.LVL3:
	.loc 1 73 1
	ret
	.cfi_endproc
.LFE3:
	.size	utils_getopt_init, .-utils_getopt_init
	.section	.text.utils_getopt,"ax",@progbits
	.align	1
	.globl	utils_getopt
	.type	utils_getopt, @function
utils_getopt:
.LFB4:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 83 5
	.loc 1 83 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 87 12
	lw	a4,4(a0)
	mv	a5,a0
	.loc 1 87 5 is_stmt 1
	.loc 1 84 16 is_stmt 0
	li	a0,-1
.LVL5:
	.loc 1 87 8
	bge	a4,a1,.L39
	mv	a7,a2
	.loc 1 87 37 discriminator 1
	slli	a2,a4,2
.LVL6:
	add	a2,a7,a2
	lw	a6,0(a2)
	.loc 1 87 29 discriminator 1
	beq	a6,zero,.L39
	.loc 1 90 5 is_stmt 1
	.loc 1 90 8 is_stmt 0
	lbu	t1,0(a6)
	li	t3,45
	beq	t1,t3,.L6
	.loc 1 91 9 is_stmt 1
	.loc 1 91 12 is_stmt 0
	lbu	a3,0(a3)
.LVL7:
	bne	a3,t3,.L39
	.loc 1 92 13 is_stmt 1
	.loc 1 92 43 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
	.loc 1 92 31
	lw	a4,0(a2)
	.loc 1 93 20
	li	a0,1
	.loc 1 92 25
	sw	a4,0(a5)
	.loc 1 93 13 is_stmt 1
	.loc 1 93 20 is_stmt 0
	ret
.LVL8:
.L6:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 27 is_stmt 0
	lbu	t3,1(a6)
	.loc 1 84 16
	li	a0,-1
	.loc 1 98 8
	beq	t3,zero,.L39
	.loc 1 101 5 is_stmt 1
	.loc 1 101 8 is_stmt 0
	bne	t3,t1,.L7
	.loc 1 101 37 discriminator 1
	lbu	a0,2(a6)
	bne	a0,zero,.L7
	.loc 1 102 9 is_stmt 1
	.loc 1 102 27 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
.LVL9:
.L21:
	.loc 1 84 16
	li	a0,-1
	ret
.LVL10:
.L7:
	.loc 1 104 5 is_stmt 1
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 104 8
	lw	a0,16(a5)
	bne	a0,zero,.L8
	.loc 1 104 25 is_stmt 1 discriminator 1
	.loc 1 104 38 is_stmt 0 discriminator 1
	li	a0,1
	sw	a0,16(a5)
.L8:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 30 is_stmt 0
	lw	t3,16(a5)
	.loc 1 105 26
	lw	a6,0(a2)
	add	a6,a6,t3
	.loc 1 105 7
	lbu	a0,0(a6)
.LVL11:
	.loc 1 106 5 is_stmt 1
	.loc 1 107 5
	.loc 1 107 22 is_stmt 0
	snez	t1,a0
	.loc 1 107 19
	add	t1,t1,t3
	sw	t1,16(a5)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 27 is_stmt 0
	lw	a2,0(a2)
	add	t1,a2,t1
	.loc 1 109 8
	lbu	a2,0(t1)
	bne	a2,zero,.L9
	.loc 1 110 9 is_stmt 1
	.loc 1 110 20 is_stmt 0
	addi	a4,a4,1
	sw	a4,4(a5)
	.loc 1 111 9 is_stmt 1
	.loc 1 111 23 is_stmt 0
	sw	zero,16(a5)
.L9:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 29 is_stmt 0
	lbu	a4,0(a3)
	addi	a4,a4,-43
	andi	a4,a4,253
	bne	a4,zero,.L10
	.loc 1 115 9 is_stmt 1
	.loc 1 115 18 is_stmt 0
	addi	a3,a3,1
.LVL12:
.L10:
	.loc 1 117 5 is_stmt 1
	.loc 1 78 1 is_stmt 0
	li	a4,0
.LVL13:
.L12:
	.loc 1 118 5 is_stmt 1 discriminator 2
	.loc 1 118 8 discriminator 2
	addi	a2,a4,1
.LVL14:
	.loc 1 118 10 is_stmt 0 discriminator 2
	add	a4,a3,a4
	lbu	t1,0(a4)
.LVL15:
	.loc 1 118 5 discriminator 2
	beq	t1,zero,.L11
	.loc 1 118 37 discriminator 1
	bne	a0,t1,.L26
	.loc 1 120 16 discriminator 1
	li	t1,58
.LVL16:
	bne	a0,t1,.L15
.L14:
	.loc 1 121 9 is_stmt 1
	.loc 1 121 21 is_stmt 0
	sw	a0,12(a5)
.LVL17:
	.loc 1 122 9 is_stmt 1
	.loc 1 122 12 is_stmt 0
	lbu	a3,0(a3)
.LVL18:
	li	a4,58
	bne	a3,a4,.L16
.LVL19:
.L41:
	.loc 1 138 20
	li	a0,63
.L4:
	.loc 1 142 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L26:
	.cfi_restore_state
	mv	a4,a2
	j	.L12
.L11:
	.loc 1 120 5 is_stmt 1
	.loc 1 120 8 is_stmt 0
	bne	a0,zero,.L14
.LVL21:
.L15:
	.loc 1 126 5 is_stmt 1
	.loc 1 126 18 is_stmt 0
	add	a2,a3,a2
.LVL22:
	.loc 1 126 8
	lbu	t1,0(a2)
	li	a2,58
	bne	t1,a2,.L4
	.loc 1 127 9 is_stmt 1
	.loc 1 127 21 is_stmt 0
	sw	zero,0(a5)
.LVL23:
	.loc 1 128 9 is_stmt 1
	.loc 1 128 12 is_stmt 0
	lbu	a4,2(a4)
	lw	a2,16(a5)
	bne	a4,t1,.L19
	.loc 1 128 35 discriminator 1
	beq	a2,zero,.L20
.L19:
	.loc 1 129 13 is_stmt 1
	.loc 1 129 35 is_stmt 0
	lw	a4,4(a5)
	.loc 1 129 43
	addi	t1,a4,1
	.loc 1 129 31
	slli	a4,a4,2
	.loc 1 129 43
	sw	t1,4(a5)
	.loc 1 129 31
	add	a4,a7,a4
	.loc 1 129 47
	lw	a4,0(a4)
	.loc 1 130 27
	sw	zero,16(a5)
	.loc 1 129 47
	add	a4,a4,a2
	.loc 1 129 25
	sw	a4,0(a5)
	.loc 1 130 13 is_stmt 1
.L20:
	.loc 1 132 9
	.loc 1 132 12 is_stmt 0
	lw	a4,4(a5)
	ble	a4,a1,.L4
	.loc 1 133 13 is_stmt 1
	.loc 1 133 25 is_stmt 0
	sw	a0,12(a5)
	.loc 1 134 13 is_stmt 1
	.loc 1 134 16 is_stmt 0
	lbu	a3,0(a3)
.LVL24:
	li	a4,58
	.loc 1 134 45
	li	a0,58
.LVL25:
	.loc 1 134 16
	beq	a3,a4,.L4
	.loc 1 135 13 is_stmt 1
	.loc 1 135 16 is_stmt 0
	lw	a5,8(a5)
.LVL26:
	beq	a5,zero,.L41
	.loc 1 136 17 is_stmt 1
	lui	a0,%hi(.LC1)
	lbu	a2,0(a6)
	lw	a1,0(a7)
.LVL27:
	addi	a0,a0,%lo(.LC1)
	j	.L42
.LVL28:
.L16:
	.loc 1 122 33 is_stmt 0 discriminator 1
	lw	a5,8(a5)
.LVL29:
	beq	a5,zero,.L41
	.loc 1 123 13 is_stmt 1
	lbu	a2,0(a6)
.LVL30:
	lw	a1,0(a7)
.LVL31:
	lui	a0,%hi(.LC0)
.LVL32:
	addi	a0,a0,%lo(.LC0)
.LVL33:
.L42:
	.loc 1 136 17 is_stmt 0
	call	printf
.LVL34:
	j	.L41
.LVL35:
.L39:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.loc 1 142 1
	ret
	.cfi_endproc
.LFE4:
	.size	utils_getopt, .-utils_getopt
	.section	.rodata.utils_getopt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s: unrecognized option: %c\r\n"
	.zero	2
.LC1:
	.string	"%s: option requires an argument: %c\r\n"
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_getopt.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa5a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF132
	.byte	0xc
	.4byte	.LASF133
	.4byte	.LASF134
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x41
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x41
	.byte	0x5
	.4byte	.LASF12
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x5d
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xbe
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x6b
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xbe
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0xce
	.byte	0x9
	.4byte	0x64
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0xf2
	.byte	0xb
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0xb
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0x9c
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF17
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xce
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF18
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x48
	.byte	0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x5d
	.byte	0x5
	.4byte	.LASF20
	.byte	0x4
	.byte	0x23
	.byte	0x1b
	.4byte	0x10c
	.byte	0xd
	.4byte	.LASF25
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x17e
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x17e
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x5d
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x184
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x124
	.byte	0x8
	.4byte	0x100
	.4byte	0x194
	.byte	0x9
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x217
	.byte	0xb
	.4byte	.LASF27
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x42
	.byte	0x7
	.4byte	0x5d
	.byte	0x10
	.byte	0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x43
	.byte	0x7
	.4byte	0x5d
	.byte	0x14
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0x5d
	.byte	0x18
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x45
	.byte	0x7
	.4byte	0x5d
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0x46
	.byte	0x7
	.4byte	0x5d
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF36
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x25c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x25c
	.byte	0
	.byte	0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x25c
	.byte	0x80
	.byte	0x11
	.4byte	.LASF39
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0x100
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF40
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0x100
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0xfe
	.4byte	0x26c
	.byte	0x9
	.4byte	0x64
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2af
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2af
	.byte	0
	.byte	0xb
	.4byte	.LASF42
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2b5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x217
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x26c
	.byte	0x8
	.4byte	0x2c5
	.4byte	0x2c5
	.byte	0x9
	.4byte	0x64
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2cb
	.byte	0x12
	.byte	0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x2f4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x2f4
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x5d
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.4byte	.LASF47
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x43d
	.byte	0xe
	.string	"_p"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x2f4
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF48
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF49
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2cc
	.byte	0x10
	.byte	0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x5d
	.byte	0x18
	.byte	0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0xfe
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xca
	.byte	0xe
	.4byte	0x5c6
	.byte	0x20
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xcc
	.byte	0xe
	.4byte	0x5f0
	.byte	0x24
	.byte	0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x614
	.byte	0x28
	.byte	0xb
	.4byte	.LASF55
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x62e
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2cc
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x2f4
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x634
	.byte	0x40
	.byte	0xb
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x644
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2cc
	.byte	0x44
	.byte	0xb
	.4byte	.LASF58
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x5d
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x78
	.byte	0x50
	.byte	0xb
	.4byte	.LASF60
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x45b
	.byte	0x54
	.byte	0xb
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x118
	.byte	0x58
	.byte	0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0xf2
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x5d
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0x90
	.4byte	0x45b
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x5af
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x466
	.byte	0x15
	.4byte	0x45b
	.byte	0x16
	.4byte	.LASF64
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5af
	.byte	0x17
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.byte	0x17
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6a0
	.byte	0x4
	.byte	0x17
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6a0
	.byte	0x8
	.byte	0x17
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6a0
	.byte	0xc
	.byte	0x17
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26e
	.byte	0x7
	.4byte	0x5d
	.byte	0x10
	.byte	0x17
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8a0
	.byte	0x14
	.byte	0x17
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x5d
	.byte	0x30
	.byte	0x17
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8b5
	.byte	0x34
	.byte	0x17
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.byte	0x17
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8c6
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x17e
	.byte	0x40
	.byte	0x17
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x5d
	.byte	0x44
	.byte	0x17
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x17e
	.byte	0x48
	.byte	0x17
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8cc
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x5d
	.byte	0x50
	.byte	0x17
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5af
	.byte	0x54
	.byte	0x17
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x87b
	.byte	0x58
	.byte	0x18
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2af
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x26c
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8dd
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x661
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8e9
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5ba
	.byte	0x15
	.4byte	0x5af
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.byte	0x15
	.4byte	0x5ba
	.byte	0xf
	.byte	0x4
	.4byte	0x43d
	.byte	0x13
	.4byte	0x90
	.4byte	0x5ea
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x5ea
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5c1
	.byte	0xf
	.byte	0x4
	.4byte	0x5cc
	.byte	0x13
	.4byte	0x84
	.4byte	0x614
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0x14
	.4byte	0x84
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5f6
	.byte	0x13
	.4byte	0x5d
	.4byte	0x62e
	.byte	0x14
	.4byte	0x45b
	.byte	0x14
	.4byte	0xfe
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x61a
	.byte	0x8
	.4byte	0x2c
	.4byte	0x644
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x654
	.byte	0x9
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x124
	.byte	0x18
	.4byte	0x2fa
	.byte	0x19
	.4byte	.LASF88
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x69a
	.byte	0x17
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x69a
	.byte	0
	.byte	0x17
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x5d
	.byte	0x4
	.byte	0x17
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6a0
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x661
	.byte	0xf
	.byte	0x4
	.4byte	0x654
	.byte	0x19
	.4byte	.LASF91
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6df
	.byte	0x17
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6df
	.byte	0
	.byte	0x17
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6df
	.byte	0x6
	.byte	0x17
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x3a
	.4byte	0x6ef
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x804
	.byte	0x17
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x64
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5af
	.byte	0x4
	.byte	0x17
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x804
	.byte	0x8
	.byte	0x17
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x194
	.byte	0x24
	.byte	0x17
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x5d
	.byte	0x48
	.byte	0x17
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x56
	.byte	0x50
	.byte	0x17
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6a6
	.byte	0x58
	.byte	0x17
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0xf2
	.byte	0x68
	.byte	0x17
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0xf2
	.byte	0x70
	.byte	0x17
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0xf2
	.byte	0x78
	.byte	0x17
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x814
	.byte	0x80
	.byte	0x17
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x824
	.byte	0x88
	.byte	0x17
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x5d
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0xf2
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0xf2
	.byte	0xac
	.byte	0x17
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0xf2
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0xf2
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0xf2
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x5d
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5ba
	.4byte	0x814
	.byte	0x9
	.4byte	0x64
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5ba
	.4byte	0x824
	.byte	0x9
	.4byte	0x64
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5ba
	.4byte	0x834
	.byte	0x9
	.4byte	0x64
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x85b
	.byte	0x17
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x85b
	.byte	0
	.byte	0x17
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x86b
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x2f4
	.4byte	0x86b
	.byte	0x9
	.4byte	0x64
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x64
	.4byte	0x87b
	.byte	0x9
	.4byte	0x64
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x8a0
	.byte	0x1c
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6ef
	.byte	0x1c
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x834
	.byte	0
	.byte	0x8
	.4byte	0x5ba
	.4byte	0x8b0
	.byte	0x9
	.4byte	0x64
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF135
	.byte	0xf
	.byte	0x4
	.4byte	0x8b0
	.byte	0x1e
	.4byte	0x8c6
	.byte	0x14
	.4byte	0x45b
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8bb
	.byte	0xf
	.byte	0x4
	.4byte	0x17e
	.byte	0x1e
	.4byte	0x8dd
	.byte	0x14
	.4byte	0x5d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8e3
	.byte	0xf
	.byte	0x4
	.4byte	0x8d2
	.byte	0x8
	.4byte	0x654
	.4byte	0x8f9
	.byte	0x9
	.4byte	0x64
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x333
	.byte	0x17
	.4byte	0x45b
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x334
	.byte	0x1d
	.4byte	0x461
	.byte	0xd
	.4byte	.LASF119
	.byte	0x14
	.byte	0x6
	.byte	0x24
	.byte	0x10
	.4byte	0x962
	.byte	0xb
	.4byte	.LASF120
	.byte	0x6
	.byte	0x25
	.byte	0xb
	.4byte	0x5af
	.byte	0
	.byte	0xb
	.4byte	.LASF121
	.byte	0x6
	.byte	0x26
	.byte	0x9
	.4byte	0x5d
	.byte	0x4
	.byte	0xb
	.4byte	.LASF122
	.byte	0x6
	.byte	0x27
	.byte	0x9
	.4byte	0x5d
	.byte	0x8
	.byte	0xb
	.4byte	.LASF123
	.byte	0x6
	.byte	0x28
	.byte	0x9
	.4byte	0x5d
	.byte	0xc
	.byte	0xb
	.4byte	.LASF124
	.byte	0x6
	.byte	0x29
	.byte	0x9
	.4byte	0x5d
	.byte	0x10
	.byte	0
	.byte	0x5
	.4byte	.LASF125
	.byte	0x6
	.byte	0x2a
	.byte	0x3
	.4byte	0x913
	.byte	0x20
	.4byte	.LASF130
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xa0c
	.byte	0x21
	.string	"env"
	.byte	0x1
	.byte	0x4d
	.byte	0x20
	.4byte	0xa0c
	.4byte	.LLST1
	.byte	0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x4d
	.byte	0x29
	.4byte	0x5d
	.4byte	.LLST2
	.byte	0x22
	.4byte	.LASF127
	.byte	0x1
	.byte	0x4d
	.byte	0x3c
	.4byte	0xa12
	.4byte	.LLST3
	.byte	0x22
	.4byte	.LASF128
	.byte	0x1
	.byte	0x4d
	.byte	0x50
	.4byte	0x5ea
	.4byte	.LLST4
	.byte	0x23
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST5
	.byte	0x23
	.string	"c"
	.byte	0x1
	.byte	0x50
	.byte	0xa
	.4byte	0x5ba
	.4byte	.LLST6
	.byte	0x23
	.string	"d"
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x5ba
	.4byte	.LLST7
	.byte	0x24
	.4byte	.LASF129
	.byte	0x1
	.byte	0x51
	.byte	0xb
	.4byte	0x5af
	.4byte	.LLST8
	.byte	0x25
	.4byte	.LVL34
	.4byte	0xa51
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x962
	.byte	0xf
	.byte	0x4
	.4byte	0x5b5
	.byte	0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xa51
	.byte	0x21
	.string	"env"
	.byte	0x1
	.byte	0x3e
	.byte	0x25
	.4byte	0xa0c
	.4byte	.LLST0
	.byte	0x26
	.4byte	.LASF122
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.4byte	0x5d
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x27
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x7
	.byte	0xc8
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL34-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x7f
	.byte	0xc
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xc
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL20
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
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
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"_dso_handle"
.LASF128:
	.string	"optstring"
.LASF46:
	.string	"_size"
.LASF91:
	.string	"_rand48"
.LASF70:
	.string	"_emergency"
.LASF60:
	.string	"_data"
.LASF111:
	.string	"_wcrtomb_state"
.LASF112:
	.string	"_wcsrtombs_state"
.LASF136:
	.string	"printf"
.LASF133:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/src/utils_getopt.c"
.LASF50:
	.string	"_lbfsize"
.LASF135:
	.string	"__locale_t"
.LASF109:
	.string	"_mbrtowc_state"
.LASF104:
	.string	"_wctomb_state"
.LASF27:
	.string	"__tm_sec"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"_ubuf"
.LASF7:
	.string	"long long unsigned int"
.LASF29:
	.string	"__tm_hour"
.LASF85:
	.string	"__sf"
.LASF36:
	.string	"_on_exit_args"
.LASF51:
	.string	"_cookie"
.LASF84:
	.string	"__sglue"
.LASF4:
	.string	"long int"
.LASF48:
	.string	"_flags"
.LASF40:
	.string	"_is_cxa"
.LASF66:
	.string	"_stdin"
.LASF58:
	.string	"_blksize"
.LASF80:
	.string	"_cvtbuf"
.LASF59:
	.string	"_offset"
.LASF110:
	.string	"_mbsrtowcs_state"
.LASF108:
	.string	"_mbrlen_state"
.LASF37:
	.string	"_fnargs"
.LASF43:
	.string	"_fns"
.LASF23:
	.string	"_sign"
.LASF20:
	.string	"_flock_t"
.LASF68:
	.string	"_stderr"
.LASF25:
	.string	"_Bigint"
.LASF99:
	.string	"_gamma_signgam"
.LASF52:
	.string	"_read"
.LASF76:
	.string	"_result_k"
.LASF26:
	.string	"__tm"
.LASF8:
	.string	"unsigned int"
.LASF14:
	.string	"__wchb"
.LASF67:
	.string	"_stdout"
.LASF79:
	.string	"_cvtlen"
.LASF5:
	.string	"long unsigned int"
.LASF49:
	.string	"_file"
.LASF89:
	.string	"_niobs"
.LASF3:
	.string	"short unsigned int"
.LASF82:
	.string	"_atexit0"
.LASF106:
	.string	"_signal_buf"
.LASF97:
	.string	"_asctime_buf"
.LASF75:
	.string	"_result"
.LASF13:
	.string	"__wch"
.LASF130:
	.string	"utils_getopt"
.LASF9:
	.string	"wint_t"
.LASF125:
	.string	"getopt_env_t"
.LASF61:
	.string	"_lock"
.LASF131:
	.string	"utils_getopt_init"
.LASF63:
	.string	"_flags2"
.LASF53:
	.string	"_write"
.LASF32:
	.string	"__tm_year"
.LASF115:
	.string	"_nmalloc"
.LASF129:
	.string	"optchar"
.LASF120:
	.string	"optarg"
.LASF121:
	.string	"optind"
.LASF114:
	.string	"_nextf"
.LASF31:
	.string	"__tm_mon"
.LASF41:
	.string	"_atexit"
.LASF73:
	.string	"__sdidinit"
.LASF10:
	.string	"_off_t"
.LASF78:
	.string	"_freelist"
.LASF19:
	.string	"_LOCK_RECURSIVE_T"
.LASF45:
	.string	"_base"
.LASF1:
	.string	"unsigned char"
.LASF81:
	.string	"_new"
.LASF113:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF34:
	.string	"__tm_yday"
.LASF44:
	.string	"__sbuf"
.LASF90:
	.string	"_iobs"
.LASF87:
	.string	"__FILE"
.LASF17:
	.string	"_mbstate_t"
.LASF47:
	.string	"__sFILE"
.LASF62:
	.string	"_mbstate"
.LASF100:
	.string	"_rand_next"
.LASF102:
	.string	"_mblen_state"
.LASF69:
	.string	"_inc"
.LASF42:
	.string	"_ind"
.LASF72:
	.string	"_locale"
.LASF74:
	.string	"__cleanup"
.LASF71:
	.string	"_unspecified_locale_info"
.LASF22:
	.string	"_maxwds"
.LASF132:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF92:
	.string	"_seed"
.LASF15:
	.string	"__count"
.LASF16:
	.string	"__value"
.LASF54:
	.string	"_seek"
.LASF117:
	.string	"_impure_ptr"
.LASF11:
	.string	"_fpos_t"
.LASF65:
	.string	"_errno"
.LASF86:
	.string	"char"
.LASF28:
	.string	"__tm_min"
.LASF134:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/utils"
.LASF122:
	.string	"opterr"
.LASF93:
	.string	"_mult"
.LASF21:
	.string	"_next"
.LASF96:
	.string	"_strtok_last"
.LASF39:
	.string	"_fntypes"
.LASF119:
	.string	"getopt_env"
.LASF94:
	.string	"_add"
.LASF18:
	.string	"__ULong"
.LASF107:
	.string	"_getdate_err"
.LASF118:
	.string	"_global_impure_ptr"
.LASF95:
	.string	"_unused_rand"
.LASF24:
	.string	"_wds"
.LASF33:
	.string	"__tm_wday"
.LASF88:
	.string	"_glue"
.LASF124:
	.string	"__optpos"
.LASF12:
	.string	"_ssize_t"
.LASF105:
	.string	"_l64a_buf"
.LASF83:
	.string	"_sig_func"
.LASF64:
	.string	"_reent"
.LASF57:
	.string	"_nbuf"
.LASF116:
	.string	"_unused"
.LASF126:
	.string	"argc"
.LASF35:
	.string	"__tm_isdst"
.LASF98:
	.string	"_localtime_buf"
.LASF55:
	.string	"_close"
.LASF101:
	.string	"_r48"
.LASF123:
	.string	"optopt"
.LASF103:
	.string	"_mbtowc_state"
.LASF77:
	.string	"_p5s"
.LASF127:
	.string	"argv"
.LASF30:
	.string	"__tm_mday"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
