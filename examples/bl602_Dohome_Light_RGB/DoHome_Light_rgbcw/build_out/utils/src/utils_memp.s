	.file	"utils_memp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_memp_init,"ax",@progbits
	.align	1
	.globl	utils_memp_init
	.type	utils_memp_init, @function
utils_memp_init:
.LFB1:
	.file 1 "/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 42 5
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 47 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 47 50
	addi	a3,a3,3
.LVL1:
	.loc 1 39 1
	sw	s2,32(sp)
	.cfi_offset 18, -16
	.loc 1 47 15
	andi	s2,a3,252
.LVL2:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 71 is_stmt 0
	slli	a5,s2,16
	.loc 1 39 1
	sw	s1,36(sp)
	.loc 1 48 71
	srli	a5,a5,16
	.cfi_offset 9, -12
	.loc 1 48 85
	addi	s1,a1,3
	add	s1,a5,s1
	.loc 1 48 89
	neg	a5,a5
	.loc 1 48 22
	and	s1,s1,a5
	slli	s1,s1,16
	srli	s1,s1,16
.LVL3:
	.loc 1 50 5 is_stmt 1
	.loc 1 51 5
	.loc 1 39 1 is_stmt 0
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 52 30
	mul	a0,s1,a2
.LVL4:
	.loc 1 39 1
	sw	s0,40(sp)
	.loc 1 51 35
	addi	a5,s2,31
	.cfi_offset 8, -8
	.loc 1 51 41
	neg	s0,s2
	.loc 1 51 10
	and	s0,a5,s0
.LVL5:
	.loc 1 52 5 is_stmt 1
	.loc 1 54 5
	.loc 1 39 1 is_stmt 0
	sw	ra,44(sp)
	.cfi_offset 1, -4
	.loc 1 48 85
	sw	a1,12(sp)
	.loc 1 52 30
	sw	a2,8(sp)
	.loc 1 54 13
	add	a0,a0,s0
	call	pvPortMalloc
.LVL6:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 8 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 60 5 is_stmt 1
	.loc 1 62 22 is_stmt 0
	lw	a1,12(sp)
	.loc 1 63 21
	lw	a2,8(sp)
	.loc 1 60 10
	add	a5,a0,s0
.LVL7:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 23 is_stmt 0
	sw	a5,20(a0)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 22 is_stmt 0
	sw	a1,0(a0)
	.loc 1 63 5 is_stmt 1
	.loc 1 63 21 is_stmt 0
	sw	a2,4(a0)
	.loc 1 64 5 is_stmt 1
	.loc 1 64 22 is_stmt 0
	sw	zero,8(a0)
	.loc 1 65 5 is_stmt 1
	.loc 1 65 22 is_stmt 0
	sb	s2,12(a0)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 29 is_stmt 0
	sw	s1,16(a0)
	.loc 1 67 5 is_stmt 1
	.loc 1 67 16 is_stmt 0
	sw	zero,28(a0)
	.loc 1 68 5 is_stmt 1
.LVL8:
	.loc 1 70 5
	.loc 1 70 11 is_stmt 0
	li	a4,0
	.loc 1 68 14
	li	a3,0
.LVL9:
.L3:
	.loc 1 70 5 discriminator 1
	bne	a4,a2,.L4
	.loc 1 75 5 is_stmt 1
	.loc 1 75 16 is_stmt 0
	sw	a3,28(a0)
	.loc 1 76 5 is_stmt 1
	.loc 1 76 22 is_stmt 0
	sw	a3,24(a0)
	.loc 1 77 5 is_stmt 1
	.loc 1 77 11 is_stmt 0
	sw	a0,0(s3)
	.loc 1 79 5 is_stmt 1
	.loc 1 79 12 is_stmt 0
	li	a0,0
.LVL10:
.L1:
	.loc 1 80 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL11:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL12:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL13:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL14:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L4:
	.cfi_restore_state
	.loc 1 71 9 is_stmt 1 discriminator 3
	.loc 1 70 30 is_stmt 0 discriminator 3
	addi	a4,a4,1
.LVL16:
	slli	a4,a4,16
	.loc 1 71 20 discriminator 3
	sw	a3,0(a5)
	.loc 1 72 9 is_stmt 1 discriminator 3
.LVL17:
	.loc 1 73 9 discriminator 3
	.loc 1 70 30 is_stmt 0 discriminator 3
	srli	a4,a4,16
.LVL18:
	mv	a3,a5
	.loc 1 73 14 discriminator 3
	add	a5,a5,s1
.LVL19:
	j	.L3
.LVL20:
.L5:
	.loc 1 57 16
	li	a0,-1
.LVL21:
	j	.L1
	.cfi_endproc
.LFE1:
	.size	utils_memp_init, .-utils_memp_init
	.section	.text.utils_memp_deinit,"ax",@progbits
	.align	1
	.globl	utils_memp_deinit
	.type	utils_memp_deinit, @function
utils_memp_deinit:
.LFB2:
	.loc 1 83 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 84 5
	.loc 1 84 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 87 5 is_stmt 1
	.loc 1 83 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 87 5
	call	vPortFree
.LVL23:
	.loc 1 89 5 is_stmt 1
	.loc 1 90 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 89 12
	li	a0,0
	.loc 1 90 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L9:
	.loc 1 85 16
	li	a0,-1
.LVL25:
	.loc 1 90 1
	ret
	.cfi_endproc
.LFE2:
	.size	utils_memp_deinit, .-utils_memp_deinit
	.section	.text.utils_memp_malloc,"ax",@progbits
	.align	1
	.globl	utils_memp_malloc
	.type	utils_memp_malloc, @function
utils_memp_malloc:
.LFB3:
	.loc 1 93 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 94 5
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 97 15 is_stmt 0
	li	a5,0
	.loc 1 96 8
	beq	a0,zero,.L14
	.loc 1 99 5 is_stmt 1
	.loc 1 99 13 is_stmt 0
	lw	a4,8(a0)
	.loc 1 99 8
	lw	a3,4(a0)
	.loc 1 97 15
	li	a5,0
	.loc 1 99 8
	beq	a4,a3,.L14
	.loc 1 102 5 is_stmt 1
	.loc 1 102 10 is_stmt 0
	lw	a5,28(a0)
.LVL27:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 8 is_stmt 0
	beq	a5,zero,.L14
	.loc 1 104 9 is_stmt 1
	.loc 1 104 25 is_stmt 0
	lw	a3,0(a5)
	.loc 1 105 24
	addi	a4,a4,1
	sw	a4,8(a0)
	.loc 1 104 19
	sw	a3,28(a0)
	.loc 1 105 9 is_stmt 1
	.loc 1 106 9
.LVL28:
	.loc 1 107 9
	.loc 1 107 14 is_stmt 0
	li	a4,165
	sw	a4,0(a5)
	.loc 1 108 9 is_stmt 1
	.loc 1 108 29 is_stmt 0
	addi	a5,a5,4
.LVL29:
.L14:
	.loc 1 112 1
	mv	a0,a5
.LVL30:
	ret
	.cfi_endproc
.LFE3:
	.size	utils_memp_malloc, .-utils_memp_malloc
	.section	.text.utils_memp_free,"ax",@progbits
	.align	1
	.globl	utils_memp_free
	.type	utils_memp_free, @function
utils_memp_free:
.LFB4:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 115 1 is_stmt 0
	mv	a5,a0
	.loc 1 117 10
	addi	a3,a1,-4
.LVL32:
	.loc 1 118 5 is_stmt 1
	.loc 1 119 5
	.loc 1 121 5
	.loc 1 122 16 is_stmt 0
	li	a0,-1
.LVL33:
	.loc 1 121 8
	beq	a5,zero,.L21
	.loc 1 121 15 discriminator 1
	beq	a3,zero,.L21
	.loc 1 124 5 is_stmt 1
	.loc 1 124 8 is_stmt 0
	lw	a4,8(a5)
	beq	a4,zero,.L21
	.loc 1 127 5 is_stmt 1
	.loc 1 127 23 is_stmt 0
	lw	a4,20(a5)
	.loc 1 127 8
	bgtu	a4,a3,.L21
	.loc 1 127 9 discriminator 1
	lw	a2,24(a5)
	bltu	a2,a3,.L21
	.loc 1 130 5 is_stmt 1
.LVL34:
	.loc 1 131 5
	.loc 1 131 14 is_stmt 0
	lw	a2,16(a5)
	.loc 1 130 10
	sub	a4,a3,a4
.LVL35:
	.loc 1 131 14
	remu	a4,a4,a2
.LVL36:
	.loc 1 131 8
	bne	a4,zero,.L21
	.loc 1 135 5 is_stmt 1
.LVL37:
	.loc 1 136 5
	.loc 1 136 8 is_stmt 0
	lw	a2,-4(a1)
	li	a4,165
	bne	a2,a4,.L21
	.loc 1 139 5 is_stmt 1
.LVL38:
	.loc 1 140 5
	.loc 1 140 33 is_stmt 0
	lw	a4,28(a5)
	.loc 1 143 12
	li	a0,0
	.loc 1 140 27
	sw	a4,-4(a1)
.LVL39:
	.loc 1 141 5 is_stmt 1
	.loc 1 142 20 is_stmt 0
	lw	a4,8(a5)
	.loc 1 141 15
	sw	a3,28(a5)
	.loc 1 142 5 is_stmt 1
	.loc 1 142 20 is_stmt 0
	addi	a4,a4,-1
	sw	a4,8(a5)
	.loc 1 143 5 is_stmt 1
	.loc 1 143 12 is_stmt 0
	ret
.LVL40:
.L21:
	.loc 1 144 1
	ret
	.cfi_endproc
.LFE4:
	.size	utils_memp_free, .-utils_memp_free
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/b-l/bl_iot_sdk/components/utils/include/utils_memp.h"
	.file 6 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x34d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6c
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
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x94
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x33
	.byte	0x6
	.4byte	.LASF40
	.byte	0x4
	.byte	0x54
	.byte	0x13
	.4byte	0xa9
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x5
	.byte	0x22
	.byte	0x8
	.4byte	0xdc
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x23
	.byte	0x1d
	.4byte	0xdc
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xc1
	.byte	0x7
	.4byte	.LASF16
	.byte	0x20
	.byte	0x5
	.byte	0x26
	.byte	0x10
	.4byte	0x158
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x27
	.byte	0xe
	.4byte	0x73
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.4byte	0x73
	.byte	0x4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.byte	0x29
	.byte	0xe
	.4byte	0x73
	.byte	0x8
	.byte	0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2a
	.byte	0xd
	.4byte	0x4d
	.byte	0xc
	.byte	0x8
	.4byte	.LASF22
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.4byte	0x73
	.byte	0x10
	.byte	0x8
	.4byte	.LASF23
	.byte	0x5
	.byte	0x2c
	.byte	0xb
	.4byte	0xa7
	.byte	0x14
	.byte	0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2d
	.byte	0xb
	.4byte	0xa7
	.byte	0x18
	.byte	0xa
	.string	"mem"
	.byte	0x5
	.byte	0x2e
	.byte	0x1d
	.4byte	0xdc
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2f
	.byte	0x2
	.4byte	0xe2
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cf
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x72
	.byte	0x28
	.4byte	0x1cf
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x72
	.byte	0x34
	.4byte	0xa7
	.4byte	.LLST15
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x74
	.byte	0x1d
	.4byte	0xdc
	.4byte	.LLST16
	.byte	0xe
	.string	"pat"
	.byte	0x1
	.byte	0x76
	.byte	0xf
	.4byte	0x1d5
	.4byte	.LLST17
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST18
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x158
	.byte	0x9
	.byte	0x4
	.4byte	0x73
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	0xa7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x226
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5c
	.byte	0x2c
	.4byte	0x1cf
	.4byte	.LLST11
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5e
	.byte	0x1d
	.4byte	0xdc
	.4byte	.LLST12
	.byte	0xe
	.string	"pat"
	.byte	0x1
	.byte	0x5f
	.byte	0xf
	.4byte	0x1d5
	.4byte	.LLST13
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x52
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x262
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x52
	.byte	0x2a
	.4byte	0x1cf
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LVL23
	.4byte	0x338
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x26
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x332
	.byte	0xc
	.4byte	.LASF16
	.byte	0x1
	.byte	0x26
	.byte	0x29
	.4byte	0x332
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x26
	.byte	0x38
	.4byte	0x60
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.byte	0x4c
	.4byte	0x60
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x26
	.byte	0x5e
	.4byte	0x4d
	.4byte	.LLST3
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x28
	.byte	0x18
	.4byte	0x1cf
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x29
	.byte	0x1d
	.4byte	0xdc
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF33
	.byte	0x1
	.byte	0x2a
	.byte	0x1d
	.4byte	0xdc
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2b
	.byte	0xc
	.4byte	0x9b
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST8
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x60
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LVL6
	.4byte	0x344
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x1cf
	.byte	0x11
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x92
	.byte	0x6
	.byte	0x11
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x91
	.byte	0x7
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0x14
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23-1
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x11
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6-1
	.4byte	.LVL11
	.2byte	0x12
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x16
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x82
	.byte	0x1f
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x28
	.byte	0x82
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x3
	.byte	0x82
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1f
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x82
	.byte	0x1f
	.byte	0x82
	.byte	0
	.byte	0x1f
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x12
	.byte	0x79
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x19
	.byte	0x82
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.byte	0x3
	.byte	0x82
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x1f
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18
	.4byte	.LVL20
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"last_node"
.LASF19:
	.string	"pool_cap"
.LASF15:
	.string	"utils_memp_node"
.LASF27:
	.string	"diff"
.LASF1:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF18:
	.string	"node_size"
.LASF40:
	.string	"TrapNetCounter"
.LASF5:
	.string	"uint8_t"
.LASF22:
	.string	"padded_node_size"
.LASF31:
	.string	"utils_memp_init"
.LASF9:
	.string	"uint32_t"
.LASF3:
	.string	"long long int"
.LASF2:
	.string	"long int"
.LASF30:
	.string	"utils_memp_deinit"
.LASF26:
	.string	"node"
.LASF37:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF29:
	.string	"utils_memp_malloc"
.LASF6:
	.string	"unsigned char"
.LASF39:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/utils"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF38:
	.string	"/b-l/bl_iot_sdk/components/utils/src/utils_memp.c"
.LASF12:
	.string	"unsigned int"
.LASF7:
	.string	"uint16_t"
.LASF14:
	.string	"BaseType_t"
.LASF8:
	.string	"short unsigned int"
.LASF4:
	.string	"int32_t"
.LASF20:
	.string	"pool_size"
.LASF10:
	.string	"long unsigned int"
.LASF35:
	.string	"vPortFree"
.LASF34:
	.string	"size"
.LASF23:
	.string	"first_node"
.LASF32:
	.string	"npool"
.LASF21:
	.string	"align_req"
.LASF28:
	.string	"utils_memp_free"
.LASF16:
	.string	"pool"
.LASF33:
	.string	"pool_mem"
.LASF25:
	.string	"utils_memp_pool_t"
.LASF36:
	.string	"pvPortMalloc"
.LASF17:
	.string	"next"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
