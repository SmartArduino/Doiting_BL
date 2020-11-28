	.file	"utils_hex.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_bin2hex,"ax",@progbits
	.align	1
	.globl	utils_bin2hex
	.type	utils_bin2hex, @function
utils_bin2hex:
.LFB1:
	.file 1 "/b-l/bl_iot_sdk_new/components/utils/src/utils_hex.c"
	.loc 1 47 1
	.cfi_startproc
.LVL0:
	.loc 1 48 5
	.loc 1 50 5
.LBB4:
.LBB5:
	.loc 1 41 27 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	add	a7,a1,a2
.LBE5:
.LBE4:
	.loc 1 50 11
	mv	a4,a0
.LBB8:
.LBB6:
	.loc 1 41 27
	addi	a3,a3,%lo(.LANCHOR0)
.LVL1:
.L2:
.LBE6:
.LBE8:
	.loc 1 50 11
	bne	a1,a7,.L3
	.loc 1 54 5 is_stmt 1
	.loc 1 54 12 is_stmt 0
	slli	a2,a2,1
.LVL2:
	.loc 1 55 1
	add	a0,a0,a2
	ret
.LVL3:
.L3:
	.loc 1 51 9 is_stmt 1
	.loc 1 51 39 is_stmt 0
	addi	a1,a1,1
.LVL4:
	.loc 1 51 15
	lbu	a5,-1(a1)
.LVL5:
.LBB9:
.LBB7:
	.loc 1 41 5 is_stmt 1
	addi	a4,a4,2
.LVL6:
	.loc 1 41 44 is_stmt 0
	srli	a6,a5,4
	.loc 1 41 27
	add	a6,a3,a6
	.loc 1 42 36
	andi	a5,a5,15
.LVL7:
	.loc 1 41 12
	lbu	a6,0(a6)
	.loc 1 42 27
	add	a5,a3,a5
	.loc 1 42 12
	lbu	a5,0(a5)
	.loc 1 41 12
	sb	a6,-2(a4)
.LVL8:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 12 is_stmt 0
	sb	a5,-1(a4)
	.loc 1 43 5 is_stmt 1
.LVL9:
	j	.L2
.LBE7:
.LBE9:
	.cfi_endproc
.LFE1:
	.size	utils_bin2hex, .-utils_bin2hex
	.globl	hex_asc_upper
	.globl	hex_asc
	.section	.rodata.hex_asc,"a"
	.align	2
	.type	hex_asc, @object
	.size	hex_asc, 17
hex_asc:
	.string	"0123456789abcdef"
	.section	.rodata.hex_asc_upper,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hex_asc_upper, @object
	.size	hex_asc_upper, 17
hex_asc_upper:
	.string	"0123456789ABCDEF"
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x17f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
	.4byte	.Ldebug_ranges0+0x20
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
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.4byte	0x4d
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x75
	.byte	0x6
	.4byte	0xa4
	.4byte	0x98
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0
	.byte	0x4
	.4byte	0x88
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x22
	.byte	0xc
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	hex_asc
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	hex_asc_upper
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.byte	0x7
	.4byte	0x149
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x149
	.byte	0xa
	.string	"dst"
	.byte	0x1
	.byte	0x2e
	.byte	0x1b
	.4byte	0x149
	.4byte	.LLST0
	.byte	0xa
	.string	"src"
	.byte	0x1
	.byte	0x2e
	.byte	0x2c
	.4byte	0x14f
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2e
	.byte	0x38
	.4byte	0x7c
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x30
	.byte	0x1a
	.4byte	0x156
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	0x15c
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x33
	.byte	0xf
	.byte	0xe
	.4byte	0x175
	.4byte	.LLST3
	.byte	0xe
	.4byte	0x169
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9d
	.byte	0xf
	.byte	0x4
	.4byte	0x155
	.byte	0x10
	.byte	0xf
	.byte	0x4
	.4byte	0x54
	.byte	0x11
	.4byte	.LASF21
	.byte	0x1
	.byte	0x27
	.byte	0x15
	.4byte	0x149
	.byte	0x3
	.byte	0x12
	.string	"buf"
	.byte	0x1
	.byte	0x27
	.byte	0x29
	.4byte	0x149
	.byte	0x13
	.4byte	.LASF15
	.byte	0x1
	.byte	0x27
	.byte	0x36
	.4byte	0x41
	.byte	0
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7e
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x7b
	.byte	0x7f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"/b-l/dolphin/build_out/utils"
.LASF15:
	.string	"byte"
.LASF17:
	.string	"/b-l/bl_iot_sdk_new/components/utils/src/utils_hex.c"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF10:
	.string	"size_t"
.LASF20:
	.string	"_src"
.LASF19:
	.string	"utils_bin2hex"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint8_t"
.LASF13:
	.string	"hex_asc_upper"
.LASF3:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF14:
	.string	"count"
.LASF1:
	.string	"short int"
.LASF12:
	.string	"hex_asc"
.LASF16:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF2:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"hex_byte_pack"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
