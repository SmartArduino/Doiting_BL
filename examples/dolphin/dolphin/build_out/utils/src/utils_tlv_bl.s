	.file	"utils_tlv_bl.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_tlv_bl_pack_bool,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_bool
	.type	utils_tlv_bl_pack_bool, @function
utils_tlv_bl_pack_bool:
.LFB0:
	.file 1 "/b-l/bl_iot_sdk_new/components/utils/src/utils_tlv_bl.c"
	.loc 1 33 1
	.cfi_startproc
.LVL0:
	.loc 1 34 5
	.loc 1 34 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L3
	.loc 1 37 5 is_stmt 1
	.loc 1 37 10 is_stmt 0
	sw	a2,0(a0)
	.loc 1 39 5 is_stmt 1
	.loc 1 39 12 is_stmt 0
	li	a0,4
.LVL1:
	ret
.LVL2:
.L3:
	.loc 1 35 16
	li	a0,-1
.LVL3:
	.loc 1 40 1
	ret
	.cfi_endproc
.LFE0:
	.size	utils_tlv_bl_pack_bool, .-utils_tlv_bl_pack_bool
	.section	.text.utils_tlv_bl_pack_uint32,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_uint32
	.type	utils_tlv_bl_pack_uint32, @function
utils_tlv_bl_pack_uint32:
.LFB1:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 44 5
	.loc 1 44 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L6
	.loc 1 47 5 is_stmt 1
	.loc 1 47 10 is_stmt 0
	sw	a2,0(a0)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 12 is_stmt 0
	li	a0,4
.LVL5:
	ret
.LVL6:
.L6:
	.loc 1 45 16
	li	a0,-1
.LVL7:
	.loc 1 50 1
	ret
	.cfi_endproc
.LFE1:
	.size	utils_tlv_bl_pack_uint32, .-utils_tlv_bl_pack_uint32
	.section	.text.utils_tlv_bl_unpack_bool,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_bool
	.type	utils_tlv_bl_unpack_bool, @function
utils_tlv_bl_unpack_bool:
.LFB2:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L9
	.loc 1 57 5 is_stmt 1
	.loc 1 57 25 is_stmt 0
	lw	a5,0(a0)
	.loc 1 59 12
	li	a0,4
.LVL9:
	.loc 1 57 25
	snez	a5,a5
	sb	a5,0(a2)
	.loc 1 59 5 is_stmt 1
	.loc 1 59 12 is_stmt 0
	ret
.LVL10:
.L9:
	.loc 1 55 16
	li	a0,-1
.LVL11:
	.loc 1 60 1
	ret
	.cfi_endproc
.LFE2:
	.size	utils_tlv_bl_unpack_bool, .-utils_tlv_bl_unpack_bool
	.section	.text.utils_tlv_bl_unpack_uint32,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_uint32
	.type	utils_tlv_bl_unpack_uint32, @function
utils_tlv_bl_unpack_uint32:
.LFB3:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 64 5
	.loc 1 64 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L12
	.loc 1 67 5 is_stmt 1
	.loc 1 67 13 is_stmt 0
	lw	a5,0(a0)
	.loc 1 69 12
	li	a0,4
.LVL13:
	.loc 1 67 10
	sw	a5,0(a2)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 12 is_stmt 0
	ret
.LVL14:
.L12:
	.loc 1 65 16
	li	a0,-1
.LVL15:
	.loc 1 70 1
	ret
	.cfi_endproc
.LFE3:
	.size	utils_tlv_bl_unpack_uint32, .-utils_tlv_bl_unpack_uint32
	.section	.text.utils_tlv_bl_pack_auto,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_pack_auto
	.type	utils_tlv_bl_pack_auto, @function
utils_tlv_bl_pack_auto:
.LFB4:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 74 5
	.loc 1 76 5
	li	a5,1
	beq	a2,a5,.L14
	li	a5,7
	beq	a2,a5,.L15
	.loc 1 74 9 is_stmt 0
	li	a5,-2
.LVL17:
.L13:
	.loc 1 124 1
	mv	a0,a5
.LVL18:
	ret
.LVL19:
.L14:
	.loc 1 79 13 is_stmt 1
	.loc 1 79 55 is_stmt 0
	lbu	a4,0(a3)
.LVL20:
.LBB12:
.LBB13:
	.loc 1 34 5 is_stmt 1
.L20:
.LBE13:
.LBE12:
.LBB15:
.LBB16:
	.loc 1 44 5
	.loc 1 44 8 is_stmt 0
	li	a3,3
.LVL21:
.LBE16:
.LBE15:
.LBB18:
.LBB14:
	.loc 1 35 16
	li	a5,-1
.LBE14:
.LBE18:
.LBB19:
.LBB17:
	.loc 1 44 8
	ble	a1,a3,.L13
	.loc 1 47 5 is_stmt 1
	.loc 1 47 10 is_stmt 0
	sw	a4,0(a0)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 12 is_stmt 0
	li	a5,4
	j	.L13
.LVL22:
.L15:
.LBE17:
.LBE19:
	.loc 1 109 13 is_stmt 1
	.loc 1 109 19 is_stmt 0
	lw	a4,0(a3)
	j	.L20
	.cfi_endproc
.LFE4:
	.size	utils_tlv_bl_pack_auto, .-utils_tlv_bl_pack_auto
	.section	.text.utils_tlv_bl_unpack_auto,"ax",@progbits
	.align	1
	.globl	utils_tlv_bl_unpack_auto
	.type	utils_tlv_bl_unpack_auto, @function
utils_tlv_bl_unpack_auto:
.LFB5:
	.loc 1 127 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 128 5
	.loc 1 130 5
	li	a5,1
	beq	a2,a5,.L22
	li	a5,7
	beq	a2,a5,.L23
	.loc 1 128 9 is_stmt 0
	li	a0,-2
.LVL24:
	ret
.LVL25:
.L22:
.LBB20:
	.loc 1 133 12 is_stmt 1
	.loc 1 135 13
.LBB21:
.LBB22:
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L27
	.loc 1 57 5 is_stmt 1
	.loc 1 57 25 is_stmt 0
	lw	a5,0(a0)
	.loc 1 59 12
	li	a0,4
.LVL26:
	.loc 1 57 25
	snez	a5,a5
.LVL27:
	.loc 1 59 5 is_stmt 1
.L25:
.LBE22:
.LBE21:
	.loc 1 136 13
	.loc 1 136 25 is_stmt 0
	sb	a5,0(a3)
.LVL28:
.LBE20:
	.loc 1 138 9 is_stmt 1
	ret
.LVL29:
.L27:
.LBB25:
	.loc 1 133 17 is_stmt 0
	li	a5,1
.LBB24:
.LBB23:
	.loc 1 55 16
	li	a0,-1
.LVL30:
	j	.L25
.LVL31:
.L23:
.LBE23:
.LBE24:
.LBE25:
.LBB26:
	.loc 1 166 13 is_stmt 1
	.loc 1 168 13
.LBB27:
.LBB28:
	.loc 1 64 5
	.loc 1 64 8 is_stmt 0
	li	a5,3
	ble	a1,a5,.L28
	.loc 1 67 5 is_stmt 1
	.loc 1 67 13 is_stmt 0
	lw	a5,0(a0)
.LVL32:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 12 is_stmt 0
	li	a0,4
.LVL33:
.L26:
.LBE28:
.LBE27:
	.loc 1 169 13 is_stmt 1
	.loc 1 169 30 is_stmt 0
	sw	a5,0(a3)
.LVL34:
.LBE26:
	.loc 1 171 9 is_stmt 1
	.loc 1 180 9
	.loc 1 183 5
	.loc 1 184 1 is_stmt 0
	ret
.LVL35:
.L28:
.LBB31:
	.loc 1 166 22
	li	a5,0
.LBB30:
.LBB29:
	.loc 1 65 16
	li	a0,-1
.LVL36:
	j	.L26
.LBE29:
.LBE30:
.LBE31:
	.cfi_endproc
.LFE5:
	.size	utils_tlv_bl_unpack_auto, .-utils_tlv_bl_unpack_auto
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/components/utils/include/utils_tlv_bl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3ff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x90
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x54
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.4byte	.LASF33
	.byte	0x7
	.byte	0x1
	.4byte	0x41
	.byte	0x3
	.byte	0x28
	.byte	0x6
	.4byte	0xcc
	.byte	0x6
	.4byte	.LASF11
	.byte	0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x6
	.4byte	.LASF18
	.byte	0x7
	.byte	0x6
	.4byte	.LASF19
	.byte	0x8
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b9
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0x7e
	.byte	0x28
	.4byte	0x1b9
	.4byte	.LLST9
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7e
	.byte	0x31
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7e
	.byte	0x42
	.4byte	0x48
	.byte	0x1
	.byte	0x5c
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7e
	.byte	0x4e
	.4byte	0x1bf
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.string	"ret"
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST10
	.byte	0xb
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x176
	.byte	0xa
	.string	"val"
	.byte	0x1
	.byte	0x85
	.byte	0x11
	.4byte	0x1c1
	.4byte	.LLST11
	.byte	0xc
	.4byte	0x2b2
	.4byte	.LBB21
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x87
	.byte	0x13
	.byte	0xd
	.4byte	0x2db
	.4byte	.LLST12
	.byte	0xd
	.4byte	0x2cf
	.4byte	.LLST13
	.byte	0xd
	.4byte	0x2c3
	.4byte	.LLST14
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x60
	.byte	0xa
	.string	"val"
	.byte	0x1
	.byte	0xa6
	.byte	0x16
	.4byte	0x5b
	.4byte	.LLST15
	.byte	0xc
	.4byte	0x27c
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xa8
	.byte	0x13
	.byte	0xd
	.4byte	0x2a5
	.4byte	.LLST16
	.byte	0xd
	.4byte	0x299
	.4byte	.LLST17
	.byte	0xd
	.4byte	0x28d
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5b
	.byte	0x10
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.byte	0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x48
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x27c
	.byte	0x8
	.string	"buf"
	.byte	0x1
	.byte	0x48
	.byte	0x26
	.4byte	0x1b9
	.4byte	.LLST4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x48
	.byte	0x2f
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	.LASF21
	.byte	0x1
	.byte	0x48
	.byte	0x40
	.4byte	0x48
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.4byte	.LASF22
	.byte	0x1
	.byte	0x48
	.byte	0x4c
	.4byte	0x1bf
	.4byte	.LLST5
	.byte	0x12
	.string	"ret"
	.byte	0x1
	.byte	0x4a
	.byte	0x9
	.4byte	0x75
	.byte	0x7e
	.byte	0x13
	.4byte	0x324
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.byte	0x13
	.4byte	0x24f
	.byte	0x14
	.4byte	0x34d
	.byte	0x14
	.4byte	0x341
	.byte	0x14
	.4byte	0x335
	.byte	0
	.byte	0xc
	.4byte	0x2ee
	.4byte	.LBB15
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x6d
	.byte	0x13
	.byte	0xd
	.4byte	0x317
	.4byte	.LLST6
	.byte	0xd
	.4byte	0x30b
	.4byte	.LLST7
	.byte	0xd
	.4byte	0x2ff
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x2b2
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x3e
	.byte	0x2a
	.4byte	0x1b9
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3e
	.byte	0x33
	.4byte	0x75
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0x3e
	.byte	0x45
	.4byte	0x1b9
	.byte	0
	.byte	0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x2e8
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x34
	.byte	0x28
	.4byte	0x1b9
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x34
	.byte	0x31
	.4byte	0x75
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0x34
	.byte	0x3e
	.4byte	0x2e8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x1c1
	.byte	0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x324
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x2a
	.byte	0x28
	.4byte	0x1b9
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2a
	.byte	0x31
	.4byte	0x75
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0x2a
	.byte	0x42
	.4byte	0x5b
	.byte	0
	.byte	0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x35a
	.byte	0x16
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.byte	0x26
	.4byte	0x1b9
	.byte	0x17
	.4byte	.LASF20
	.byte	0x1
	.byte	0x20
	.byte	0x2f
	.4byte	0x75
	.byte	0x16
	.string	"val"
	.byte	0x1
	.byte	0x20
	.byte	0x3b
	.4byte	0x1c1
	.byte	0
	.byte	0x18
	.4byte	0x324
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x385
	.byte	0xd
	.4byte	0x335
	.4byte	.LLST0
	.byte	0x19
	.4byte	0x341
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	0x34d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x18
	.4byte	0x2ee
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b0
	.byte	0xd
	.4byte	0x2ff
	.4byte	.LLST1
	.byte	0x19
	.4byte	0x30b
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	0x317
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x18
	.4byte	0x2b2
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3db
	.byte	0xd
	.4byte	0x2c3
	.4byte	.LLST2
	.byte	0x19
	.4byte	0x2cf
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	0x2db
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	0x27c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	0x28d
	.4byte	.LLST3
	.byte	0x19
	.4byte	0x299
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	0x2a5
	.byte	0x1
	.byte	0x5c
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
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+313
	.byte	0
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+313
	.byte	0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+379
	.byte	0
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+379
	.byte	0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL22
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
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFE1
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
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"utils_tlv_bl_pack_auto"
.LASF32:
	.string	"/b-l/dolphin/build_out/utils"
.LASF23:
	.string	"_Bool"
.LASF16:
	.string	"CFG_ELEMENT_TYPE_UINT16"
.LASF18:
	.string	"CFG_ELEMENT_TYPE_UINT32"
.LASF14:
	.string	"CFG_ELEMENT_TYPE_UINT8"
.LASF22:
	.string	"arg1"
.LASF26:
	.string	"utils_tlv_bl_unpack_uint32"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF13:
	.string	"CFG_ELEMENT_TYPE_SINT8"
.LASF29:
	.string	"utils_tlv_bl_pack_bool"
.LASF31:
	.string	"/b-l/bl_iot_sdk_new/components/utils/src/utils_tlv_bl.c"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF17:
	.string	"CFG_ELEMENT_TYPE_SINT32"
.LASF15:
	.string	"CFG_ELEMENT_TYPE_SINT16"
.LASF24:
	.string	"utils_tlv_bl_unpack_auto"
.LASF28:
	.string	"utils_tlv_bl_pack_uint32"
.LASF11:
	.string	"CFG_ELEMENT_TYPE_UNKNOWN"
.LASF12:
	.string	"CFG_ELEMENT_TYPE_BOOLEAN"
.LASF3:
	.string	"long long int"
.LASF19:
	.string	"CFG_ELEMENT_TYPE_STRING"
.LASF21:
	.string	"type"
.LASF1:
	.string	"short int"
.LASF6:
	.string	"uint16_t"
.LASF30:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF20:
	.string	"buf_sz"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF33:
	.string	"CFG_ELEMENT_TYPE"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"utils_tlv_bl_unpack_bool"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
