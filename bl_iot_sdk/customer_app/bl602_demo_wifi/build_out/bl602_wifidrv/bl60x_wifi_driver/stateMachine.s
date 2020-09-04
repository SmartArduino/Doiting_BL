	.file	"stateMachine.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.goToErrorState,"ax",@progbits
	.align	1
	.type	goToErrorState, @function
goToErrorState:
.LFB4:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
	.loc 1 150 1
	.cfi_startproc
.LVL0:
	.loc 1 151 4
	.loc 1 151 23 is_stmt 0
	lw	a5,0(a0)
	sw	a5,4(a0)
	.loc 1 152 4 is_stmt 1
	.loc 1 152 27 is_stmt 0
	lw	a5,8(a0)
	.loc 1 152 22
	sw	a5,0(a0)
	.loc 1 154 4 is_stmt 1
	.loc 1 154 7 is_stmt 0
	beq	a5,zero,.L1
	.loc 1 154 47 discriminator 1
	lw	t1,20(a5)
	.loc 1 154 27 discriminator 1
	beq	t1,zero,.L1
	.loc 1 155 7 is_stmt 1
	lw	a0,16(a5)
.LVL1:
	jr	t1
.LVL2:
.L1:
	.loc 1 156 1 is_stmt 0
	ret
	.cfi_endproc
.LFE4:
	.size	goToErrorState, .-goToErrorState
	.section	.text.stateM_init,"ax",@progbits
	.align	1
	.globl	stateM_init
	.type	stateM_init, @function
stateM_init:
.LFB0:
	.loc 1 42 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 43 4
	.loc 1 43 7 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 46 4 is_stmt 1
	.loc 1 46 22 is_stmt 0
	sw	a1,0(a0)
	.loc 1 47 4 is_stmt 1
	.loc 1 47 23 is_stmt 0
	sw	zero,4(a0)
	.loc 1 48 4 is_stmt 1
	.loc 1 48 20 is_stmt 0
	sw	a2,8(a0)
.L9:
	.loc 1 49 1
	ret
	.cfi_endproc
.LFE0:
	.size	stateM_init, .-stateM_init
	.section	.text.stateM_handleEvent,"ax",@progbits
	.align	1
	.globl	stateM_handleEvent
	.type	stateM_handleEvent, @function
stateM_handleEvent:
.LFB1:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 54 4
	.loc 1 54 7 is_stmt 0
	beq	a0,zero,.L30
	.loc 1 53 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s0,a0
	.loc 1 55 14 discriminator 1
	li	a0,-2
.LVL5:
	.loc 1 54 14 discriminator 1
	beq	a1,zero,.L14
	.loc 1 57 13
	lw	s1,0(s0)
	mv	s2,a1
	.loc 1 57 4 is_stmt 1
	.loc 1 57 7 is_stmt 0
	bne	s1,zero,.L16
.LVL6:
.L28:
	.loc 1 59 7 is_stmt 1
	mv	a0,s0
	mv	a1,s2
	call	goToErrorState
.LVL7:
	.loc 1 60 7
	.loc 1 60 14 is_stmt 0
	li	a0,-1
.LVL8:
.L14:
	.loc 1 129 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL9:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L16:
	.cfi_restore_state
	.loc 1 63 4 is_stmt 1
	.loc 1 63 7 is_stmt 0
	lw	a5,12(s1)
.LBB7:
.LBB8:
.LBB9:
.LBB10:
	.loc 1 165 26
	li	s5,20
.LBE10:
.LBE9:
.LBE8:
.LBE7:
	.loc 1 63 7
	bne	a5,zero,.L17
.LVL11:
.L29:
	.loc 1 64 14
	li	a0,2
	j	.L14
.L17:
.LVL12:
	.loc 1 67 4 is_stmt 1
.LBB17:
	.loc 1 68 7
.LBB15:
.LBB13:
	.loc 1 163 12 is_stmt 0
	li	s4,0
.L18:
.LVL13:
	.loc 1 163 4
	lw	a5,12(s1)
	bltu	s4,a5,.L22
.LVL14:
.LBE13:
.LBE15:
	.loc 1 73 7 is_stmt 1
	.loc 1 75 10
	.loc 1 75 20 is_stmt 0
	lw	s1,0(s1)
.LVL15:
	.loc 1 76 10 is_stmt 1
.LBE17:
	.loc 1 126 4 is_stmt 0
	bne	s1,zero,.L17
	j	.L29
.LVL16:
.L22:
.LBB18:
.LBB16:
.LBB14:
.LBB11:
	.loc 1 165 7 is_stmt 1
	.loc 1 165 26 is_stmt 0
	mul	s3,s4,s5
	lw	a5,8(s1)
	add	s3,a5,s3
.LVL17:
	.loc 1 168 7 is_stmt 1
	.loc 1 168 10 is_stmt 0
	lw	a4,0(s3)
	lw	a5,0(s2)
	beq	a4,a5,.L19
.L21:
.LBE11:
	.loc 1 163 44
	addi	s4,s4,1
.LVL18:
	j	.L18
.L19:
.LBB12:
	.loc 1 170 10 is_stmt 1
	.loc 1 170 17 is_stmt 0
	lw	a5,8(s3)
	.loc 1 170 13
	beq	a5,zero,.L20
	.loc 1 173 15 is_stmt 1
	.loc 1 173 20 is_stmt 0
	lw	a0,4(s3)
	mv	a1,s2
	jalr	a5
.LVL19:
	.loc 1 173 18
	beq	a0,zero,.L21
.L20:
.LVL20:
.LBE12:
.LBE14:
.LBE16:
	.loc 1 73 7 is_stmt 1
	.loc 1 81 7
	.loc 1 81 23 is_stmt 0
	lw	s1,16(s3)
.LVL21:
	.loc 1 81 10
	bne	s1,zero,.L24
	j	.L28
.LVL22:
.L32:
	mv	s1,a5
.LVL23:
.L24:
	.loc 1 92 24
	lw	a5,4(s1)
	.loc 1 92 13
	bne	a5,zero,.L32
	.loc 1 97 7 is_stmt 1
	.loc 1 97 28 is_stmt 0
	lw	a5,0(s0)
	.loc 1 97 10
	beq	a5,s1,.L25
	.loc 1 97 63 discriminator 1
	lw	a4,24(a5)
	.loc 1 97 43 discriminator 1
	beq	a4,zero,.L25
	.loc 1 98 10 is_stmt 1
	lw	a0,16(a5)
	mv	a1,s2
	jalr	a4
.LVL24:
.L25:
	.loc 1 101 7
	.loc 1 101 22 is_stmt 0
	lw	a5,12(s3)
	.loc 1 101 10
	beq	a5,zero,.L26
	.loc 1 102 10 is_stmt 1
	lw	a4,0(s0)
	lw	a2,16(s1)
	mv	a1,s2
	lw	a0,16(a4)
	jalr	a5
.LVL25:
.L26:
	.loc 1 107 7
	.loc 1 107 10 is_stmt 0
	lw	a5,0(s0)
	beq	a5,s1,.L27
	.loc 1 107 55 discriminator 1
	lw	a5,20(s1)
	.loc 1 107 43 discriminator 1
	beq	a5,zero,.L27
	.loc 1 108 10 is_stmt 1
	lw	a0,16(s1)
	mv	a1,s2
	jalr	a5
.LVL26:
.L27:
	.loc 1 110 7
	.loc 1 110 31 is_stmt 0
	lw	a5,0(s0)
	.loc 1 111 25
	sw	s1,0(s0)
	.loc 1 115 17
	li	a0,1
	.loc 1 110 26
	sw	a5,4(s0)
	.loc 1 111 7 is_stmt 1
	.loc 1 114 7
	.loc 1 114 10 is_stmt 0
	beq	a5,s1,.L14
	.loc 1 117 7 is_stmt 1
	.loc 1 117 10 is_stmt 0
	lw	a5,8(s0)
	.loc 1 118 17
	li	a0,-1
	.loc 1 117 10
	beq	a5,s1,.L14
	.loc 1 122 7 is_stmt 1
	.loc 1 122 10 is_stmt 0
	lw	a5,12(s1)
	.loc 1 125 14
	li	a0,0
	.loc 1 122 10
	bne	a5,zero,.L14
	.loc 1 123 17
	li	a0,3
	j	.L14
.LVL27:
.L30:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
.LBE18:
	.loc 1 55 14
	li	a0,-2
.LVL28:
	.loc 1 129 1
	ret
	.cfi_endproc
.LFE1:
	.size	stateM_handleEvent, .-stateM_handleEvent
	.section	.text.stateM_currentState,"ax",@progbits
	.align	1
	.globl	stateM_currentState
	.type	stateM_currentState, @function
stateM_currentState:
.LFB2:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 133 4
	.loc 1 133 7 is_stmt 0
	beq	a0,zero,.L59
	.loc 1 136 4 is_stmt 1
	.loc 1 136 14 is_stmt 0
	lw	a0,0(a0)
.LVL30:
.L59:
	.loc 1 137 1
	ret
	.cfi_endproc
.LFE2:
	.size	stateM_currentState, .-stateM_currentState
	.section	.text.stateM_previousState,"ax",@progbits
	.align	1
	.globl	stateM_previousState
	.type	stateM_previousState, @function
stateM_previousState:
.LFB3:
	.loc 1 140 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 141 4
	.loc 1 141 7 is_stmt 0
	beq	a0,zero,.L64
	.loc 1 144 4 is_stmt 1
	.loc 1 144 14 is_stmt 0
	lw	a0,4(a0)
.LVL32:
.L64:
	.loc 1 145 1
	ret
	.cfi_endproc
.LFE3:
	.size	stateM_previousState, .-stateM_previousState
	.section	.text.stateM_stopped,"ax",@progbits
	.align	1
	.globl	stateM_stopped
	.type	stateM_stopped, @function
stateM_stopped:
.LFB6:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 184 4
	.loc 1 184 7 is_stmt 0
	beq	a0,zero,.L70
	.loc 1 187 4 is_stmt 1
	.loc 1 187 37 is_stmt 0
	lw	a5,0(a0)
	.loc 1 187 54
	lw	a0,12(a5)
.LVL34:
	seqz	a0,a0
	ret
.LVL35:
.L70:
	.loc 1 185 13
	li	a0,1
.LVL36:
	.loc 1 188 1
	ret
	.cfi_endproc
.LFE6:
	.size	stateM_stopped, .-stateM_stopped
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x465
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF37
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.4byte	.LASF3
	.byte	0x8
	.byte	0x2
	.byte	0x5d
	.byte	0x8
	.4byte	0x67
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x60
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x68
	.byte	0xa
	.4byte	0x67
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x14
	.byte	0x2
	.byte	0xa4
	.byte	0x8
	.4byte	0xb8
	.byte	0x6
	.4byte	.LASF5
	.byte	0x2
	.byte	0xa7
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0x6
	.4byte	.LASF6
	.byte	0x2
	.byte	0xb0
	.byte	0xa
	.4byte	0x67
	.byte	0x4
	.byte	0x6
	.4byte	.LASF7
	.byte	0x2
	.byte	0xbf
	.byte	0xb
	.4byte	0xde
	.byte	0x8
	.byte	0x6
	.4byte	.LASF8
	.byte	0x2
	.byte	0xcc
	.byte	0xc
	.4byte	0xf9
	.byte	0xc
	.byte	0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd5
	.byte	0x18
	.4byte	0x175
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	0xcc
	.4byte	0xcc
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.byte	0xa
	.byte	0x4
	.4byte	0x3f
	.byte	0xb
	.4byte	0xd3
	.byte	0xa
	.byte	0x4
	.4byte	0xb8
	.byte	0xc
	.4byte	0xf9
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0x9
	.4byte	0x67
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0xe4
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1c
	.byte	0x2
	.2byte	0x129
	.byte	0x8
	.4byte	0x170
	.byte	0xe
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x12e
	.byte	0x18
	.4byte	0x175
	.byte	0
	.byte	0xe
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x133
	.byte	0x18
	.4byte	0x175
	.byte	0x4
	.byte	0xe
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x137
	.byte	0x17
	.4byte	0x17b
	.byte	0x8
	.byte	0xe
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x13b
	.byte	0xb
	.4byte	0x2c
	.byte	0xc
	.byte	0xe
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x140
	.byte	0xa
	.4byte	0x67
	.byte	0x10
	.byte	0xe
	.4byte	.LASF16
	.byte	0x2
	.2byte	0x14e
	.byte	0xc
	.4byte	0x191
	.byte	0x14
	.byte	0xe
	.4byte	.LASF17
	.byte	0x2
	.2byte	0x159
	.byte	0xc
	.4byte	0x191
	.byte	0x18
	.byte	0
	.byte	0xb
	.4byte	0xff
	.byte	0xa
	.byte	0x4
	.4byte	0x170
	.byte	0xa
	.byte	0x4
	.4byte	0x69
	.byte	0xc
	.4byte	0x191
	.byte	0x9
	.4byte	0x67
	.byte	0x9
	.4byte	0xd3
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x181
	.byte	0xd
	.4byte	.LASF18
	.byte	0xc
	.byte	0x2
	.2byte	0x161
	.byte	0x8
	.4byte	0x1d0
	.byte	0xe
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x164
	.byte	0x18
	.4byte	0x175
	.byte	0
	.byte	0xe
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x16b
	.byte	0x18
	.4byte	0x175
	.byte	0x4
	.byte	0xe
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x173
	.byte	0x18
	.4byte	0x175
	.byte	0x8
	.byte	0
	.byte	0xf
	.4byte	.LASF38
	.byte	0x5
	.byte	0x1
	.4byte	0x208
	.byte	0x2
	.2byte	0x191
	.byte	0x6
	.4byte	0x208
	.byte	0x10
	.4byte	.LASF22
	.byte	0x7e
	.byte	0x10
	.4byte	.LASF23
	.byte	0x7f
	.byte	0x11
	.4byte	.LASF24
	.byte	0
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x11
	.4byte	.LASF26
	.byte	0x2
	.byte	0x11
	.4byte	.LASF27
	.byte	0x3
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF28
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0xcc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x23a
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb6
	.byte	0x2a
	.4byte	0x23a
	.4byte	.LLST13
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x197
	.byte	0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x9e
	.byte	0x1b
	.4byte	0x17b
	.byte	0x1
	.4byte	0x28c
	.byte	0x15
	.string	"fsm"
	.byte	0x1
	.byte	0x9e
	.byte	0x3f
	.4byte	0x23a
	.byte	0x16
	.4byte	.LASF11
	.byte	0x1
	.byte	0x9f
	.byte	0x1b
	.4byte	0x175
	.byte	0x16
	.4byte	.LASF3
	.byte	0x1
	.byte	0x9f
	.byte	0x36
	.4byte	0xd9
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.byte	0xb
	.4byte	0x2c
	.byte	0x18
	.byte	0x17
	.string	"t"
	.byte	0x1
	.byte	0xa5
	.byte	0x1a
	.4byte	0x17b
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0x94
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d0
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x94
	.byte	0x32
	.4byte	0x23a
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF3
	.byte	0x1
	.byte	0x95
	.byte	0x1b
	.4byte	0xd9
	.4byte	.LLST1
	.byte	0x1b
	.4byte	.LVL2
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x8b
	.byte	0x15
	.4byte	0x175
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x2fb
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x8b
	.byte	0x40
	.4byte	0x23a
	.4byte	.LLST12
	.byte	0
	.byte	0x12
	.4byte	.LASF31
	.byte	0x1
	.byte	0x83
	.byte	0x15
	.4byte	0x175
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x326
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x83
	.byte	0x3f
	.4byte	0x23a
	.4byte	.LLST11
	.byte	0
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x42b
	.byte	0x1a
	.string	"fsm"
	.byte	0x1
	.byte	0x33
	.byte	0x2e
	.4byte	0x23a
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF3
	.byte	0x1
	.byte	0x34
	.byte	0x15
	.4byte	0xd3
	.4byte	.LLST3
	.byte	0x1d
	.4byte	.LASF9
	.byte	0x1
	.byte	0x42
	.byte	0x18
	.4byte	0x175
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.Ldebug_ranges0+0
	.4byte	0x414
	.byte	0x1d
	.4byte	.LASF4
	.byte	0x1
	.byte	0x44
	.byte	0x1a
	.4byte	0x17b
	.4byte	.LLST5
	.byte	0x1f
	.4byte	0x240
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x44
	.byte	0x27
	.4byte	0x3e7
	.byte	0x20
	.4byte	0x251
	.4byte	.LLST6
	.byte	0x20
	.4byte	0x269
	.4byte	.LLST7
	.byte	0x20
	.4byte	0x25d
	.4byte	.LLST8
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x22
	.4byte	0x275
	.4byte	.LLST9
	.byte	0x23
	.4byte	0x27f
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x22
	.4byte	0x280
	.4byte	.LLST10
	.byte	0x24
	.4byte	.LVL19
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL24
	.4byte	0x3f7
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL25
	.4byte	0x407
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL26
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL7
	.4byte	0x28c
	.byte	0x1c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF41
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x28
	.string	"fsm"
	.byte	0x1
	.byte	0x28
	.byte	0x28
	.4byte	0x23a
	.byte	0x1
	.byte	0x5a
	.byte	0x29
	.4byte	.LASF33
	.byte	0x1
	.byte	0x29
	.byte	0x1b
	.4byte	0x175
	.byte	0x1
	.byte	0x5b
	.byte	0x29
	.4byte	.LASF21
	.byte	0x1
	.byte	0x29
	.byte	0x3d
	.4byte	0x175
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
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
	.byte	0xf
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
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
	.byte	0x28
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
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
	.4byte	.LFE6
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
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL27
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"stateM_stopped"
.LASF9:
	.string	"nextState"
.LASF37:
	.string	"size_t"
.LASF19:
	.string	"currentState"
.LASF11:
	.string	"state"
.LASF16:
	.string	"entryAction"
.LASF12:
	.string	"parentState"
.LASF27:
	.string	"stateM_finalStateReached"
.LASF4:
	.string	"transition"
.LASF2:
	.string	"data"
.LASF28:
	.string	"signed char"
.LASF21:
	.string	"errorState"
.LASF24:
	.string	"stateM_stateChanged"
.LASF7:
	.string	"guard"
.LASF5:
	.string	"eventType"
.LASF26:
	.string	"stateM_noStateChange"
.LASF20:
	.string	"previousState"
.LASF30:
	.string	"stateM_previousState"
.LASF36:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/bl602_wifidrv"
.LASF23:
	.string	"stateM_errorStateReached"
.LASF22:
	.string	"stateM_errArg"
.LASF8:
	.string	"action"
.LASF41:
	.string	"stateM_init"
.LASF6:
	.string	"condition"
.LASF3:
	.string	"event"
.LASF33:
	.string	"initialState"
.LASF0:
	.string	"unsigned int"
.LASF31:
	.string	"stateM_currentState"
.LASF35:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
.LASF18:
	.string	"stateMachine"
.LASF39:
	.string	"getTransition"
.LASF17:
	.string	"exitAction"
.LASF14:
	.string	"transitions"
.LASF1:
	.string	"type"
.LASF40:
	.string	"goToErrorState"
.LASF34:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF32:
	.string	"stateM_handleEvent"
.LASF15:
	.string	"numTransitions"
.LASF13:
	.string	"entryState"
.LASF38:
	.string	"stateM_handleEventRetVals"
.LASF10:
	.string	"_Bool"
.LASF25:
	.string	"stateM_stateLoopSelf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
