	.file	"utils_notifier.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_notifier_chain_init,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_init
	.type	utils_notifier_chain_init, @function
utils_notifier_chain_init:
.LFB18:
	.file 1 "/b-l/bl_iot_sdk/components/utils/src/utils_notifier.c"
	.loc 1 34 1
	.cfi_startproc
.LVL0:
	.loc 1 35 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 35 5
	call	utils_list_init
.LVL1:
	.loc 1 37 5 is_stmt 1
	.loc 1 38 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	utils_notifier_chain_init, .-utils_notifier_chain_init
	.section	.text.utils_notifier_chain_register,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_register
	.type	utils_notifier_chain_register, @function
utils_notifier_chain_register:
.LFB19:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 42 5
	.loc 1 42 8 is_stmt 0
	beq	a0,zero,.L5
	.loc 1 43 16 discriminator 1
	li	a5,-1
	.loc 1 42 13 discriminator 1
	beq	a1,zero,.L8
	.loc 1 45 5 is_stmt 1
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 45 5
	call	utils_list_push_back
.LVL3:
	.loc 1 47 5 is_stmt 1
	.loc 1 48 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 47 12
	li	a5,0
	.loc 1 48 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L5:
	.loc 1 43 16
	li	a5,-1
.L8:
	.loc 1 48 1
	mv	a0,a5
.LVL5:
	ret
	.cfi_endproc
.LFE19:
	.size	utils_notifier_chain_register, .-utils_notifier_chain_register
	.section	.text.utils_notifier_chain_call,"ax",@progbits
	.align	1
	.globl	utils_notifier_chain_call
	.type	utils_notifier_chain_call, @function
utils_notifier_chain_call:
.LFB20:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 52 5
	.loc 1 54 5
	.loc 1 54 8 is_stmt 0
	beq	a0,zero,.L22
	.loc 1 51 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 58 9
	lw	s0,0(a0)
	mv	s1,a1
	.loc 1 58 5 is_stmt 1
.LVL7:
	.loc 1 60 5
.L13:
	.loc 1 60 11 is_stmt 0
	bne	s0,zero,.L15
	.loc 1 68 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL8:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL9:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L15:
	.cfi_restore_state
	.loc 1 61 9 is_stmt 1
	.loc 1 61 16 is_stmt 0
	lw	a5,4(s0)
	.loc 1 61 12
	beq	a5,zero,.L14
	.loc 1 62 13 is_stmt 1
	lw	a0,8(s0)
	mv	a1,s1
	jalr	a5
.LVL11:
.L14:
	.loc 1 64 9
	.loc 1 64 13 is_stmt 0
	lw	s0,0(s0)
.LVL12:
	j	.L13
.LVL13:
.L22:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.loc 1 68 1
	li	a0,0
.LVL14:
	ret
	.cfi_endproc
.LFE20:
	.size	utils_notifier_chain_call, .-utils_notifier_chain_call
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/components/utils/include/utils_list.h"
	.file 3 "/b-l/bl_iot_sdk/components/utils/include/utils_notifier.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x201
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF18
	.byte	0xc
	.4byte	.LASF19
	.4byte	.LASF20
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
	.byte	0x4
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x26
	.byte	0x8
	.4byte	0x4e
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.4byte	0x4e
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF2
	.byte	0x8
	.byte	0x2
	.byte	0x2b
	.byte	0x8
	.4byte	0x7c
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2e
	.byte	0x1c
	.4byte	0x4e
	.byte	0
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x24
	.byte	0x1b
	.4byte	0x54
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x25
	.byte	0xf
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.4byte	0x9a
	.byte	0x8
	.4byte	0x25
	.4byte	0xae
	.byte	0x9
	.4byte	0xae
	.byte	0x9
	.4byte	0xae
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0x4
	.4byte	.LASF8
	.byte	0x10
	.byte	0x3
	.byte	0x27
	.byte	0x10
	.4byte	0xf1
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0x33
	.byte	0
	.byte	0xb
	.string	"cb"
	.byte	0x3
	.byte	0x29
	.byte	0x19
	.4byte	0x88
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2a
	.byte	0xb
	.4byte	0xae
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2b
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.4byte	0xb0
	.byte	0xc
	.4byte	.LASF13
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x153
	.byte	0xd
	.string	"nl"
	.byte	0x1
	.byte	0x32
	.byte	0x2b
	.4byte	0x153
	.4byte	.LLST3
	.byte	0xd
	.string	"env"
	.byte	0x1
	.byte	0x32
	.byte	0x35
	.4byte	0xae
	.4byte	.LLST4
	.byte	0xe
	.string	"raw"
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.4byte	0x159
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LVL11
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x4
	.4byte	0xf1
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b1
	.byte	0xd
	.string	"nl"
	.byte	0x1
	.byte	0x28
	.byte	0x2f
	.4byte	0x153
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LASF9
	.byte	0x1
	.byte	0x28
	.byte	0x45
	.4byte	0x159
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x1ec
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x21
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ec
	.byte	0xd
	.string	"nl"
	.byte	0x1
	.byte	0x21
	.byte	0x2b
	.4byte	0x153
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x1f8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.byte	0x55
	.byte	0x6
	.byte	0x13
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x2
	.byte	0x3e
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
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"utils_notifier_chain_call"
.LASF8:
	.string	"utils_notifier"
.LASF5:
	.string	"last"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"cb_arg"
.LASF16:
	.string	"utils_list_push_back"
.LASF7:
	.string	"utils_notifier_fn_t"
.LASF1:
	.string	"utils_list_hdr"
.LASF11:
	.string	"priority"
.LASF17:
	.string	"utils_list_init"
.LASF20:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/utils"
.LASF19:
	.string	"/b-l/bl_iot_sdk/components/utils/src/utils_notifier.c"
.LASF9:
	.string	"node"
.LASF2:
	.string	"utils_list"
.LASF4:
	.string	"first"
.LASF15:
	.string	"utils_notifier_chain_init"
.LASF3:
	.string	"next"
.LASF14:
	.string	"utils_notifier_chain_register"
.LASF12:
	.string	"utils_notifier_t"
.LASF18:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF6:
	.string	"ntf_list_t"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
