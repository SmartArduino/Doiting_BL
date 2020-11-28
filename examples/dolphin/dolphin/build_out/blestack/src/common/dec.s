	.file	"dec.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.u8_to_dec,"ax",@progbits
	.align	1
	.globl	u8_to_dec
	.type	u8_to_dec, @function
u8_to_dec:
.LFB2:
	.file 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/dec.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 2
	.loc 1 12 2
	.loc 1 13 2
	.loc 1 15 2
	.loc 1 15 8 is_stmt 0
	li	a3,4
	.loc 1 12 7
	li	a5,0
	.loc 1 11 7
	li	a4,100
	.loc 1 17 18
	li	a7,1
	.loc 1 25 11
	li	t1,10
.LVL1:
.L2:
	.loc 1 15 8
	beq	a1,zero,.L8
	addi	a3,a3,-1
	.loc 1 15 20 discriminator 1
	bne	a3,zero,.L6
	.loc 1 28 2 is_stmt 1
	.loc 1 29 3
	.loc 1 29 8 is_stmt 0
	sb	zero,0(a0)
	.loc 1 32 2 is_stmt 1
.L8:
	.loc 1 33 1 is_stmt 0
	mv	a0,a5
.LVL2:
	ret
.LVL3:
.L6:
	.loc 1 16 3 is_stmt 1
	.loc 1 16 9 is_stmt 0
	divu	a6,a2,a4
.LVL4:
	.loc 1 17 3 is_stmt 1
	.loc 1 17 6 is_stmt 0
	bgeu	a2,a4,.L3
	.loc 1 17 18 discriminator 1
	beq	a4,a7,.L3
	.loc 1 17 34 discriminator 2
	beq	a5,zero,.L4
.L3:
	.loc 1 18 4 is_stmt 1
	.loc 1 18 23 is_stmt 0
	addi	a6,a6,48
.LVL5:
	.loc 1 20 10
	addi	a1,a1,-1
.LVL6:
	.loc 1 21 14
	addi	a5,a5,1
.LVL7:
	.loc 1 18 9
	sb	a6,0(a0)
	.loc 1 19 4 is_stmt 1
	.loc 1 20 10 is_stmt 0
	andi	a1,a1,0xff
	.loc 1 19 7
	addi	a0,a0,1
.LVL8:
	.loc 1 20 4 is_stmt 1
	.loc 1 21 4
	.loc 1 21 14 is_stmt 0
	andi	a5,a5,0xff
.LVL9:
.L4:
	.loc 1 24 3 is_stmt 1
	remu	a2,a2,a4
.LVL10:
	.loc 1 25 3
	.loc 1 25 11 is_stmt 0
	divu	a4,a4,t1
.LVL11:
	j	.L2
	.cfi_endproc
.LFE2:
	.size	u8_to_dec, .-u8_to_dec
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/include/zephyr/types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF17
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
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
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x15
	.byte	0x17
	.4byte	0x48
	.byte	0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	0x6b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xf2
	.byte	0x6
	.string	"buf"
	.byte	0x1
	.byte	0x9
	.byte	0x16
	.4byte	0xf2
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF9
	.byte	0x1
	.byte	0x9
	.byte	0x20
	.4byte	0x6b
	.4byte	.LLST1
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x9
	.byte	0x2d
	.4byte	0x6b
	.4byte	.LLST2
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0xb
	.byte	0x7
	.4byte	0x6b
	.4byte	.LLST3
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0xc
	.byte	0x7
	.4byte	0x6b
	.4byte	.LLST4
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0xd
	.byte	0x7
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xf8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x2
	.byte	0x17
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x80
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xc
	.byte	0x7c
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x7e
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
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
.LASF10:
	.string	"value"
.LASF5:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF19:
	.string	"u8_to_dec"
.LASF17:
	.string	"/b-l/dolphin/build_out/blestack"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"digit"
.LASF8:
	.string	"long long unsigned int"
.LASF11:
	.string	"divisor"
.LASF18:
	.string	"u8_t"
.LASF4:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF16:
	.string	"/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/dec.c"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"buflen"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"num_digits"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
