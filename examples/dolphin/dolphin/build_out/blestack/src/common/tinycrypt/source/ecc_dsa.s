	.file	"ecc_dsa.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bits2int,"ax",@progbits
	.align	1
	.type	bits2int, @function
bits2int:
.LFB0:
	.file 1 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c"
	.loc 1 68 1
	.cfi_startproc
.LVL0:
	.loc 1 69 2
	.loc 1 68 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s4,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.loc 1 69 32
	lh	s0,2(a3)
.LVL1:
	.loc 1 70 2 is_stmt 1
	.loc 1 70 62 is_stmt 0
	li	a5,32
	.loc 1 68 1
	mv	s2,a0
	.loc 1 70 45
	addi	s1,s0,31
	.loc 1 70 62
	div	s1,s1,a5
.LVL2:
	.loc 1 71 2 is_stmt 1
	.loc 1 72 2
	.loc 1 73 2
	.loc 1 75 2
	.loc 1 69 45 is_stmt 0
	addi	s0,s0,7
.LVL3:
	.loc 1 69 50
	li	a5,8
	.loc 1 68 1
	mv	s5,a1
	mv	s3,a3
	.loc 1 69 50
	div	s0,s0,a5
.LVL4:
	bleu	s0,a2,.L2
	mv	s0,a2
.LVL5:
.L2:
	.loc 1 79 2 is_stmt 1
	slli	s4,s1,24
	srai	s4,s4,24
	mv	a1,s4
.LVL6:
	mv	a0,s2
.LVL7:
	call	uECC_vli_clear
.LVL8:
	.loc 1 80 2
	mv	a2,s0
	mv	a1,s5
	mv	a0,s2
	call	uECC_vli_bytesToNative
.LVL9:
	.loc 1 81 2
	.loc 1 81 23 is_stmt 0
	lh	a5,2(s3)
	.loc 1 81 16
	slli	s0,s0,3
.LVL10:
	.loc 1 81 5
	bleu	s0,a5,.L1
	.loc 1 84 2 is_stmt 1
	.loc 1 84 24 is_stmt 0
	sub	s0,s0,a5
.LVL11:
	.loc 1 85 2 is_stmt 1
	.loc 1 86 2
	.loc 1 87 2
.LBB5:
	.loc 1 90 23 is_stmt 0
	li	a4,32
.LBE5:
	.loc 1 86 15
	slli	a5,s1,2
	.loc 1 86 6
	add	a5,s2,a5
.LVL12:
	.loc 1 85 8
	li	a2,0
.LBB6:
	.loc 1 90 23
	sub	a4,a4,s0
.LVL13:
.L5:
.LBE6:
	.loc 1 87 8
	bltu	s2,a5,.L6
	.loc 1 94 2 is_stmt 1
	.loc 1 94 31 is_stmt 0
	addi	s3,s3,36
.LVL14:
	.loc 1 94 6
	mv	a2,s4
.LVL15:
	mv	a1,s2
	mv	a0,s3
	call	uECC_vli_cmp_unsafe
.LVL16:
	.loc 1 94 5
	li	a5,1
	beq	a0,a5,.L1
	.loc 1 95 3 is_stmt 1
	.loc 1 97 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL17:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL18:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL19:
	.loc 1 95 3
	mv	a3,s4
	mv	a2,s3
	.loc 1 97 1
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s3,12(sp)
	.cfi_restore 19
.LVL20:
	.loc 1 95 3
	mv	a1,s2
	mv	a0,s2
	.loc 1 97 1
	lw	s2,16(sp)
	.cfi_restore 18
.LVL21:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 95 3
	tail	uECC_vli_sub
.LVL22:
.L6:
	.cfi_restore_state
.LBB7:
	.loc 1 88 3 is_stmt 1
	.loc 1 88 15 is_stmt 0
	lw	a1,-4(a5)
.LVL23:
	.loc 1 89 3 is_stmt 1
	addi	a5,a5,-4
.LVL24:
	.loc 1 89 16 is_stmt 0
	srl	a3,a1,s0
	.loc 1 89 26
	or	a3,a3,a2
	.loc 1 89 8
	sw	a3,0(a5)
	.loc 1 90 3 is_stmt 1
	.loc 1 90 9 is_stmt 0
	sll	a2,a1,a4
.LVL25:
	j	.L5
.LVL26:
.L1:
.LBE7:
	.loc 1 97 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL27:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL28:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
.LVL29:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	bits2int, .-bits2int
	.section	.text.uECC_sign_with_k,"ax",@progbits
	.align	1
	.globl	uECC_sign_with_k
	.type	uECC_sign_with_k, @function
uECC_sign_with_k:
.LFB1:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 104 2
	.loc 1 105 2
	.loc 1 106 2
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-224
	.cfi_def_cfa_offset 224
	sw	s1,212(sp)
	sw	s2,208(sp)
	sw	s3,204(sp)
	sw	s4,200(sp)
	sw	s7,188(sp)
	sw	s10,176(sp)
	sw	s11,172(sp)
	sw	ra,220(sp)
	sw	s0,216(sp)
	sw	s5,196(sp)
	sw	s6,192(sp)
	sw	s8,184(sp)
	sw	s9,180(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 23, -36
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 109 14
	lb	s6,0(a5)
	.loc 1 102 1
	mv	s11,a0
	sw	a1,12(sp)
	.loc 1 106 15
	addi	s4,sp,32
	addi	s1,sp,64
	.loc 1 114 8
	mv	a1,s6
.LVL31:
	mv	a0,a3
.LVL32:
	.loc 1 102 1
	mv	s10,a2
	mv	s3,a3
	mv	s7,a4
	mv	s2,a5
	.loc 1 106 15
	sw	s4,24(sp)
	sw	s1,28(sp)
	.loc 1 107 2 is_stmt 1
	.loc 1 108 2
	.loc 1 109 2
.LVL33:
	.loc 1 110 2
	.loc 1 110 35 is_stmt 0
	lh	s9,2(a5)
.LVL34:
	.loc 1 111 2 is_stmt 1
	.loc 1 114 4
	.loc 1 114 8 is_stmt 0
	call	uECC_vli_isZero
.LVL35:
	.loc 1 114 7
	beq	a0,zero,.L10
.L12:
	.loc 1 116 10
	li	a0,0
.L9:
	.loc 1 159 1
	lw	ra,220(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,216(sp)
	.cfi_restore 8
	lw	s1,212(sp)
	.cfi_restore 9
	lw	s2,208(sp)
	.cfi_restore 18
.LVL36:
	lw	s3,204(sp)
	.cfi_restore 19
.LVL37:
	lw	s4,200(sp)
	.cfi_restore 20
	lw	s5,196(sp)
	.cfi_restore 21
	lw	s6,192(sp)
	.cfi_restore 22
.LVL38:
	lw	s7,188(sp)
	.cfi_restore 23
.LVL39:
	lw	s8,184(sp)
	.cfi_restore 24
	lw	s9,180(sp)
	.cfi_restore 25
.LVL40:
	lw	s10,176(sp)
	.cfi_restore 26
.LVL41:
	lw	s11,172(sp)
	.cfi_restore 27
.LVL42:
	addi	sp,sp,224
	.cfi_def_cfa_offset 0
.LVL43:
	jr	ra
.LVL44:
.L10:
	.cfi_restore_state
	.loc 1 110 65 discriminator 1
	li	a5,32
	.loc 1 110 48 discriminator 1
	addi	s0,s9,31
	.loc 1 110 65 discriminator 1
	div	s0,s0,a5
	.loc 1 115 24 discriminator 1
	addi	s5,s2,36
	.loc 1 115 6 discriminator 1
	mv	a1,s3
	mv	a0,s5
	.loc 1 110 14 discriminator 1
	slli	s0,s0,24
	srai	s0,s0,24
	.loc 1 115 6 discriminator 1
	mv	a2,s0
	call	uECC_vli_cmp
.LVL45:
	.loc 1 114 38 discriminator 1
	li	a5,1
	.loc 1 115 6 discriminator 1
	mv	s8,a0
	.loc 1 114 38 discriminator 1
	bne	a0,a5,.L12
	.loc 1 119 2 is_stmt 1
	.loc 1 119 10 is_stmt 0
	mv	a3,s2
	mv	a2,s1
	mv	a1,s4
	mv	a0,s3
	call	regularize_k
.LVL46:
	.loc 1 120 2 is_stmt 1
	.loc 1 120 32 is_stmt 0
	seqz	a0,a0
.LVL47:
	.loc 1 120 31
	addi	a5,sp,160
	slli	a0,a0,2
	add	a0,a5,a0
	.loc 1 120 2
	lw	a2,-136(a0)
	.loc 1 120 55
	addi	a4,s9,1
	.loc 1 120 2
	slli	a4,a4,16
	addi	a1,s2,68
	addi	a0,sp,96
	mv	a5,s2
	srai	a4,a4,16
	li	a3,0
	call	EccPoint_mult
.LVL48:
	.loc 1 121 2 is_stmt 1
	.loc 1 121 6 is_stmt 0
	mv	a1,s6
	addi	a0,sp,96
	call	uECC_vli_isZero
.LVL49:
	.loc 1 121 5
	bne	a0,zero,.L12
	.loc 1 127 2 is_stmt 1
	.loc 1 128 3
	mv	a1,s0
	mv	a0,s4
	call	uECC_vli_clear
.LVL50:
	.loc 1 129 3
	.loc 1 137 2 is_stmt 0
	mv	a4,s0
	mv	a3,s5
	mv	a2,s4
	mv	a1,s3
	mv	a0,s3
	.loc 1 129 10
	sw	s8,32(sp)
	.loc 1 137 2 is_stmt 1
	call	uECC_vli_modMult
.LVL51:
	.loc 1 138 2
	mv	a3,s0
	mv	a2,s5
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modInv
.LVL52:
	.loc 1 139 2
	mv	a3,s5
	mv	a4,s0
	mv	a2,s4
	mv	a1,s3
	mv	a0,s3
	call	uECC_vli_modMult
.LVL53:
	.loc 1 141 2
	lb	a1,1(s2)
	addi	a2,sp,96
	mv	a0,s7
	call	uECC_vli_nativeToBytes
.LVL54:
	.loc 1 144 2
	.loc 1 144 50 is_stmt 0
	lh	a5,2(s2)
	.loc 1 144 2
	li	a2,8
	mv	a1,s11
	.loc 1 144 63
	addi	a5,a5,7
	.loc 1 144 2
	div	a2,a5,a2
	mv	a0,s4
	call	uECC_vli_bytesToNative
.LVL55:
	.loc 1 146 2 is_stmt 1
	.loc 1 146 21 is_stmt 0
	addi	a5,s0,-1
	addi	a4,sp,160
	slli	a5,a5,2
	add	a5,a4,a5
	.loc 1 147 2
	mv	a2,s6
	addi	a1,sp,96
	mv	a0,s1
	.loc 1 146 21
	sw	zero,-96(a5)
	.loc 1 147 2 is_stmt 1
	call	uECC_vli_set
.LVL56:
	.loc 1 148 2
	mv	a4,s0
	mv	a3,s5
	mv	a2,s1
	mv	a1,s4
	mv	a0,s1
	call	uECC_vli_modMult
.LVL57:
	.loc 1 150 2
	lw	a1,12(sp)
	mv	a3,s2
	mv	a2,s10
	mv	a0,s4
	call	bits2int
.LVL58:
	.loc 1 151 2
	mv	a4,s0
	mv	a3,s5
	mv	a2,s1
	mv	a1,s4
	mv	a0,s1
	call	uECC_vli_modAdd
.LVL59:
	.loc 1 152 2
	mv	a4,s0
	mv	a3,s5
	mv	a2,s3
	mv	a1,s1
	mv	a0,s1
	call	uECC_vli_modMult
.LVL60:
	.loc 1 153 2
	.loc 1 153 6 is_stmt 0
	mv	a1,s0
	mv	a0,s1
	call	uECC_vli_numBits
.LVL61:
	.loc 1 153 58
	lb	a1,1(s2)
	.loc 1 153 70
	slli	a5,a1,3
	.loc 1 153 5
	bgt	a0,a5,.L12
	.loc 1 157 2 is_stmt 1
	add	a0,s7,a1
	mv	a2,s1
	call	uECC_vli_nativeToBytes
.LVL62:
	.loc 1 158 2
	.loc 1 158 9 is_stmt 0
	li	a0,1
	j	.L9
	.cfi_endproc
.LFE1:
	.size	uECC_sign_with_k, .-uECC_sign_with_k
	.section	.text.uECC_sign,"ax",@progbits
	.align	1
	.globl	uECC_sign
	.type	uECC_sign, @function
uECC_sign:
.LFB2:
	.loc 1 163 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 164 8
	.loc 1 165 8
	.loc 1 166 8
	.loc 1 168 2
	.loc 1 163 1 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s4,120(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	sw	s7,108(sp)
	sw	ra,140(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.loc 1 163 1
	mv	s2,a0
	mv	s3,a1
	mv	s4,a2
	mv	s5,a3
	mv	s1,a4
	li	s0,64
.LBB8:
	.loc 1 177 76
	li	s6,32
	.loc 1 177 34
	addi	s7,a4,36
.LVL64:
.L17:
	.loc 1 170 3 is_stmt 1
	.loc 1 170 36 is_stmt 0
	call	uECC_get_rng
.LVL65:
	mv	a5,a0
.LVL66:
	.loc 1 171 3 is_stmt 1
	.loc 1 171 6 is_stmt 0
	beq	a0,zero,.L15
	.loc 1 172 8 discriminator 1
	li	a1,64
	addi	a0,sp,32
.LVL67:
	jalr	a5
.LVL68:
	.loc 1 171 21 discriminator 1
	beq	a0,zero,.L15
	.loc 1 177 3 is_stmt 1
	.loc 1 177 46 is_stmt 0
	lh	a3,2(s1)
	.loc 1 177 3
	mv	a2,s7
	addi	a1,sp,32
	.loc 1 177 59
	addi	a3,a3,31
	.loc 1 177 76
	div	a3,a3,s6
	.loc 1 177 3
	mv	a0,sp
	slli	a3,a3,24
	srai	a3,a3,24
	call	uECC_vli_mmod
.LVL69:
	.loc 1 179 3 is_stmt 1
	.loc 1 179 7 is_stmt 0
	mv	a5,s1
	mv	a4,s5
	mv	a3,sp
	mv	a2,s4
	mv	a1,s3
	mv	a0,s2
	call	uECC_sign_with_k
.LVL70:
	.loc 1 179 6
	bne	a0,zero,.L18
.LVL71:
	addi	s0,s0,-1
.LVL72:
.LBE8:
	.loc 1 168 2 discriminator 2
	bne	s0,zero,.L17
.LVL73:
.L15:
.LBB9:
	.loc 1 173 11
	li	a0,0
.L14:
.LBE9:
	.loc 1 185 1
	lw	ra,140(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,136(sp)
	.cfi_restore 8
	lw	s1,132(sp)
	.cfi_restore 9
.LVL74:
	lw	s2,128(sp)
	.cfi_restore 18
.LVL75:
	lw	s3,124(sp)
	.cfi_restore 19
.LVL76:
	lw	s4,120(sp)
	.cfi_restore 20
.LVL77:
	lw	s5,116(sp)
	.cfi_restore 21
.LVL78:
	lw	s6,112(sp)
	.cfi_restore 22
	lw	s7,108(sp)
	.cfi_restore 23
.LVL79:
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.LVL80:
.L18:
	.cfi_restore_state
.LBB10:
	.loc 1 181 11
	li	a0,1
	j	.L14
.LBE10:
	.cfi_endproc
.LFE2:
	.size	uECC_sign, .-uECC_sign
	.section	.text.uECC_verify,"ax",@progbits
	.align	1
	.globl	uECC_verify
	.type	uECC_verify, @function
uECC_verify:
.LFB4:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 197 2
	.loc 1 198 2
	.loc 1 199 2
	.loc 1 200 2
	.loc 1 201 2
	.loc 1 202 2
	.loc 1 203 2
	.loc 1 204 2
	.loc 1 205 2
	.loc 1 206 2
	.loc 1 207 2
	.loc 1 208 2
	.loc 1 210 2
	.loc 1 211 2
	.loc 1 212 2
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-512
	.cfi_def_cfa_offset 512
	sw	ra,508(sp)
	sw	s0,504(sp)
	sw	s3,492(sp)
	sw	s4,488(sp)
	sw	s5,484(sp)
	sw	s6,480(sp)
	sw	s7,476(sp)
	sw	s8,472(sp)
	sw	s9,468(sp)
	sw	s10,464(sp)
	sw	s1,500(sp)
	sw	s2,496(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 213 35
	lh	s2,2(a4)
	.loc 1 213 65
	li	a5,32
	.loc 1 195 1
	mv	s7,a2
	.loc 1 213 48
	addi	s2,s2,31
	.loc 1 213 65
	div	s2,s2,a5
	.loc 1 219 2
	lb	a2,1(a4)
.LVL82:
	.loc 1 215 22
	addi	a5,sp,464
	.loc 1 219 2
	addi	s8,sp,400
	.loc 1 212 14
	lb	s1,0(a4)
.LVL83:
	.loc 1 213 2 is_stmt 1
	.loc 1 195 1 is_stmt 0
	mv	s9,a0
	mv	s4,a1
	.loc 1 219 2
	mv	a1,a0
.LVL84:
	mv	a0,s8
.LVL85:
	.loc 1 195 1
	mv	s0,a4
	mv	s5,a3
	.loc 1 220 33
	slli	s6,s1,2
	.loc 1 220 2
	add	s10,s8,s6
	.loc 1 213 14
	slli	s2,s2,24
	srai	s2,s2,24
.LVL86:
	.loc 1 215 2 is_stmt 1
	.loc 1 215 17 is_stmt 0
	addi	s3,s2,-1
	.loc 1 215 22
	slli	s3,s3,2
	add	s3,a5,s3
	sw	zero,-352(s3)
	.loc 1 216 2 is_stmt 1
	.loc 1 216 21 is_stmt 0
	sw	zero,-192(s3)
	.loc 1 217 2 is_stmt 1
	.loc 1 217 21 is_stmt 0
	sw	zero,-160(s3)
	.loc 1 219 2 is_stmt 1
	call	uECC_vli_bytesToNative
.LVL87:
	.loc 1 220 2
	.loc 1 220 64 is_stmt 0
	lb	a2,1(s0)
	.loc 1 220 2
	mv	a0,s10
	add	a1,s9,a2
	call	uECC_vli_bytesToNative
.LVL88:
	.loc 1 222 2 is_stmt 1
	lb	a2,1(s0)
	mv	a1,s5
	addi	a0,sp,272
	call	uECC_vli_bytesToNative
.LVL89:
	.loc 1 223 2
	.loc 1 223 45 is_stmt 0
	lb	a2,1(s0)
	.loc 1 223 2
	addi	a0,sp,304
	add	a1,s5,a2
	call	uECC_vli_bytesToNative
.LVL90:
	.loc 1 226 2 is_stmt 1
	.loc 1 226 6 is_stmt 0
	mv	a1,s1
	addi	a0,sp,272
	call	uECC_vli_isZero
.LVL91:
	.loc 1 226 5
	beq	a0,zero,.L28
.LVL92:
.L30:
	.loc 1 227 10
	li	a0,0
.LVL93:
.L27:
	.loc 1 294 1
	lw	ra,508(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,504(sp)
	.cfi_restore 8
.LVL94:
	lw	s1,500(sp)
	.cfi_restore 9
.LVL95:
	lw	s2,496(sp)
	.cfi_restore 18
.LVL96:
	lw	s3,492(sp)
	.cfi_restore 19
	lw	s4,488(sp)
	.cfi_restore 20
	lw	s5,484(sp)
	.cfi_restore 21
	lw	s6,480(sp)
	.cfi_restore 22
	lw	s7,476(sp)
	.cfi_restore 23
	lw	s8,472(sp)
	.cfi_restore 24
	lw	s9,468(sp)
	.cfi_restore 25
	lw	s10,464(sp)
	.cfi_restore 26
	addi	sp,sp,512
	.cfi_def_cfa_offset 0
	jr	ra
.LVL97:
.L28:
	.cfi_restore_state
	.loc 1 226 39 discriminator 1
	mv	a1,s1
	addi	a0,sp,304
	call	uECC_vli_isZero
.LVL98:
	.loc 1 226 36 discriminator 1
	bne	a0,zero,.L30
	.loc 1 231 2 is_stmt 1
	.loc 1 231 31 is_stmt 0
	addi	s5,s0,36
.LVL99:
	.loc 1 231 6
	mv	a2,s2
	addi	a1,sp,272
	mv	a0,s5
	call	uECC_vli_cmp_unsafe
.LVL100:
	.loc 1 231 5
	li	a5,1
	.loc 1 231 6
	mv	s9,a0
.LVL101:
	.loc 1 231 5
	bne	a0,a5,.L30
	.loc 1 232 6 discriminator 1
	mv	a2,s2
	addi	a1,sp,304
	mv	a0,s5
	call	uECC_vli_cmp_unsafe
.LVL102:
	.loc 1 231 57 discriminator 1
	bne	a0,s9,.L30
	.loc 1 237 2 is_stmt 1
	mv	a3,s2
	mv	a2,s5
	addi	a1,sp,304
	addi	a0,sp,80
	call	uECC_vli_modInv
.LVL103:
	.loc 1 238 2
	.loc 1 239 2 is_stmt 0
	mv	a2,s7
	mv	a1,s4
	mv	a3,s0
	addi	a0,sp,16
	.loc 1 238 22
	sw	zero,-448(s3)
	.loc 1 239 2 is_stmt 1
	call	bits2int
.LVL104:
	.loc 1 240 2
	addi	a1,sp,16
	mv	a0,a1
	mv	a4,s2
	mv	a3,s5
	addi	a2,sp,80
	call	uECC_vli_modMult
.LVL105:
	.loc 1 241 2
	mv	a4,s2
	mv	a3,s5
	addi	a2,sp,80
	addi	a1,sp,272
	addi	a0,sp,48
	call	uECC_vli_modMult
.LVL106:
	.loc 1 244 2
	addi	s3,sp,336
	mv	a0,s3
	mv	a2,s1
	mv	a1,s8
	call	uECC_vli_set
.LVL107:
	.loc 1 245 2
	add	s9,s3,s6
	mv	a2,s1
	mv	a1,s10
	mv	a0,s9
	call	uECC_vli_set
.LVL108:
	.loc 1 246 2
	.loc 1 246 24 is_stmt 0
	addi	s4,s0,68
.LVL109:
	.loc 1 246 2
	mv	a1,s4
	mv	a2,s1
	addi	a0,sp,176
	call	uECC_vli_set
.LVL110:
	.loc 1 247 2 is_stmt 1
	add	a1,s4,s6
	mv	a2,s1
	addi	a0,sp,208
	call	uECC_vli_set
.LVL111:
	.loc 1 248 2
	.loc 1 248 35 is_stmt 0
	addi	s7,s0,4
.LVL112:
	.loc 1 248 2
	mv	a1,s3
	mv	a4,s1
	mv	a3,s7
	addi	a2,sp,176
	addi	a0,sp,80
	call	uECC_vli_modSub
.LVL113:
	.loc 1 249 2 is_stmt 1
	mv	a4,s0
	mv	a2,s3
	mv	a3,s9
	addi	a1,sp,208
	addi	a0,sp,176
	call	XYcZ_add
.LVL114:
	.loc 1 250 2
	addi	a1,sp,80
	mv	a0,a1
	mv	a3,s1
	mv	a2,s7
	call	uECC_vli_modInv
.LVL115:
	.loc 1 251 2
	mv	a3,s0
	addi	a2,sp,80
	mv	a0,s3
	mv	a1,s9
	call	apply_z
.LVL116:
	.loc 1 254 2
	.loc 1 258 13 is_stmt 0
	mv	a1,s2
	addi	a0,sp,16
	.loc 1 255 12
	sw	s4,4(sp)
	.loc 1 257 12
	sw	s3,12(sp)
	.loc 1 254 12
	sw	zero,0(sp)
	.loc 1 255 2 is_stmt 1
	.loc 1 256 2
	.loc 1 256 12 is_stmt 0
	sw	s8,8(sp)
	.loc 1 257 2 is_stmt 1
	.loc 1 258 2
	.loc 1 258 13 is_stmt 0
	call	uECC_vli_numBits
.LVL117:
	mv	s4,a0
	mv	a1,s2
	addi	a0,sp,48
	call	uECC_vli_numBits
.LVL118:
.LBB11:
.LBB12:
	.loc 1 189 2 is_stmt 1
.LBE12:
.LBE11:
	.loc 1 261 2
.LBB14:
.LBB13:
	.loc 1 189 20 is_stmt 0
	mv	s3,s4
	bge	s4,a0,.L31
	mv	s3,a0
.L31:
.LBE13:
.LBE14:
	.loc 1 261 50
	slli	s3,s3,16
	srli	s3,s3,16
	addi	s8,s3,-1
	.loc 1 261 20
	slli	s8,s8,16
	srai	s8,s8,16
	mv	a1,s8
	addi	a0,sp,16
.LVL119:
	call	uECC_vli_testBit
.LVL120:
	.loc 1 261 18
	snez	s4,a0
	.loc 1 262 28
	mv	a1,s8
	addi	a0,sp,48
	call	uECC_vli_testBit
.LVL121:
	.loc 1 262 64
	snez	a0,a0
	slli	a0,a0,1
	.loc 1 261 56
	or	s4,s4,a0
	.loc 1 261 8
	addi	a5,sp,464
	slli	s4,s4,2
	add	s4,a5,s4
	lw	s4,-464(s4)
.LVL122:
	.loc 1 263 2 is_stmt 1
	mv	a2,s1
	addi	a0,sp,112
	mv	a1,s4
	call	uECC_vli_set
.LVL123:
	.loc 1 264 2
	mv	a2,s1
	add	a1,s4,s6
	addi	a0,sp,144
	call	uECC_vli_set
.LVL124:
	.loc 1 265 2
	mv	a1,s1
	addi	a0,sp,80
	call	uECC_vli_clear
.LVL125:
	.loc 1 266 2
	.loc 1 266 7 is_stmt 0
	li	a5,1
	sw	a5,80(sp)
	.loc 1 268 2 is_stmt 1
	.loc 1 268 20 is_stmt 0
	addi	s3,s3,-2
.L44:
	slli	s3,s3,16
	srai	s3,s3,16
.LVL126:
	.loc 1 268 2 discriminator 2
	bge	s3,zero,.L36
	.loc 1 284 2 is_stmt 1
	addi	a1,sp,80
	mv	a0,a1
	mv	a3,s1
	mv	a2,s7
	call	uECC_vli_modInv
.LVL127:
	.loc 1 285 2
	mv	a3,s0
	addi	a2,sp,80
	addi	a1,sp,144
	addi	a0,sp,112
	call	apply_z
.LVL128:
	.loc 1 288 2
	.loc 1 288 6 is_stmt 0
	mv	a2,s2
	addi	a1,sp,112
	mv	a0,s5
	call	uECC_vli_cmp_unsafe
.LVL129:
	.loc 1 288 5
	li	a5,1
	beq	a0,a5,.L37
	.loc 1 289 3 is_stmt 1
	addi	a1,sp,112
	mv	a3,s2
	mv	a2,s5
	mv	a0,a1
	call	uECC_vli_sub
.LVL130:
.L37:
	.loc 1 293 2
	.loc 1 293 15 is_stmt 0
	mv	a2,s1
	addi	a1,sp,272
	addi	a0,sp,112
	call	uECC_vli_equal
.LVL131:
	.loc 1 293 9
	seqz	a0,a0
	j	.L27
.L36:
.LBB15:
	.loc 1 269 3 is_stmt 1
	.loc 1 270 3
	lw	a5,164(s0)
	mv	a3,s0
	addi	a2,sp,80
	addi	a1,sp,144
	addi	a0,sp,112
	jalr	a5
.LVL132:
	.loc 1 272 3
	.loc 1 272 14 is_stmt 0
	mv	a1,s3
	addi	a0,sp,16
	call	uECC_vli_testBit
.LVL133:
	.loc 1 272 12
	snez	s4,a0
.LVL134:
	.loc 1 272 45
	mv	a1,s3
	addi	a0,sp,48
	call	uECC_vli_testBit
.LVL135:
	.loc 1 272 70
	snez	a0,a0
	slli	a0,a0,1
.LVL136:
	.loc 1 273 3 is_stmt 1
	.loc 1 272 39 is_stmt 0
	or	s4,s4,a0
.LVL137:
	.loc 1 273 9
	slli	s4,s4,2
.LVL138:
	addi	a5,sp,464
	add	s4,a5,s4
	lw	s4,-464(s4)
.LVL139:
	.loc 1 274 3 is_stmt 1
	.loc 1 274 6 is_stmt 0
	beq	s4,zero,.L35
	.loc 1 275 4 is_stmt 1
	mv	a2,s1
	mv	a1,s4
	addi	a0,sp,176
	call	uECC_vli_set
.LVL140:
	.loc 1 276 4
	mv	a2,s1
	add	a1,s4,s6
	addi	a0,sp,208
	call	uECC_vli_set
.LVL141:
	.loc 1 277 4
	mv	a3,s0
	addi	a2,sp,80
	addi	a1,sp,208
	addi	a0,sp,176
	call	apply_z
.LVL142:
	.loc 1 278 4
	mv	a4,s1
	mv	a3,s7
	addi	a2,sp,176
	addi	a1,sp,112
	addi	a0,sp,240
	call	uECC_vli_modSub
.LVL143:
	.loc 1 279 4
	addi	a3,sp,144
	addi	a2,sp,112
	addi	a1,sp,208
	addi	a0,sp,176
	mv	a4,s0
	call	XYcZ_add
.LVL144:
	.loc 1 280 4
	addi	a1,sp,80
	mv	a3,s0
	addi	a2,sp,240
	mv	a0,a1
	call	uECC_vli_modMult_fast
.LVL145:
.L35:
	addi	s3,s3,-1
.LVL146:
	j	.L44
.LBE15:
	.cfi_endproc
.LFE4:
	.size	uECC_verify, .-uECC_verify
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/include/tinycrypt/ecc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1080
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x44
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x6a
	.byte	0x4
	.4byte	0x59
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
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
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x59
	.byte	0x10
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5a
	.byte	0x11
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x5e
	.byte	0x16
	.4byte	0x8d
	.byte	0x4
	.4byte	0xac
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x6f
	.byte	0x25
	.4byte	0xc9
	.byte	0x6
	.byte	0x4
	.4byte	0x157
	.byte	0x7
	.4byte	.LASF75
	.byte	0xb0
	.byte	0x3
	.byte	0x70
	.byte	0x8
	.4byte	0x157
	.byte	0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x71
	.byte	0xf
	.4byte	0x94
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x72
	.byte	0xf
	.4byte	0x94
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x73
	.byte	0xe
	.4byte	0xa0
	.byte	0x2
	.byte	0x9
	.string	"p"
	.byte	0x3
	.byte	0x74
	.byte	0xf
	.4byte	0x15c
	.byte	0x4
	.byte	0x9
	.string	"n"
	.byte	0x3
	.byte	0x75
	.byte	0xf
	.4byte	0x15c
	.byte	0x24
	.byte	0x9
	.string	"G"
	.byte	0x3
	.byte	0x76
	.byte	0xf
	.4byte	0x16c
	.byte	0x44
	.byte	0x9
	.string	"b"
	.byte	0x3
	.byte	0x77
	.byte	0xf
	.4byte	0x15c
	.byte	0x84
	.byte	0x8
	.4byte	.LASF19
	.byte	0x3
	.byte	0x78
	.byte	0xa
	.4byte	0x19c
	.byte	0xa4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x3
	.byte	0x7a
	.byte	0xa
	.4byte	0x1bd
	.byte	0xa8
	.byte	0x8
	.4byte	.LASF21
	.byte	0x3
	.byte	0x7b
	.byte	0xa
	.4byte	0x1d3
	.byte	0xac
	.byte	0
	.byte	0x4
	.4byte	0xcf
	.byte	0xa
	.4byte	0xac
	.4byte	0x16c
	.byte	0xb
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	0xac
	.4byte	0x17c
	.byte	0xb
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0xbd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xac
	.byte	0x6
	.byte	0x4
	.4byte	0x17c
	.byte	0xc
	.4byte	0x1b7
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x1b7
	.byte	0xd
	.4byte	0xbd
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xb8
	.byte	0x6
	.byte	0x4
	.4byte	0x1a2
	.byte	0xc
	.4byte	0x1d3
	.byte	0xd
	.4byte	0x196
	.byte	0xd
	.4byte	0x196
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1c3
	.byte	0xe
	.4byte	.LASF23
	.byte	0x3
	.byte	0xa1
	.byte	0x22
	.4byte	0x157
	.byte	0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0xe1
	.byte	0xe
	.4byte	0x1f1
	.byte	0x6
	.byte	0x4
	.4byte	0x1f7
	.byte	0xf
	.4byte	0x86
	.4byte	0x20b
	.byte	0xd
	.4byte	0x20b
	.byte	0xd
	.4byte	0x8d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x59
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.4byte	0x1e5
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc0
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x95c
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0xc0
	.byte	0x20
	.4byte	0x95c
	.4byte	.LLST27
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc0
	.byte	0x3b
	.4byte	0x95c
	.4byte	.LLST28
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc1
	.byte	0xc
	.4byte	0x8d
	.4byte	.LLST29
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc1
	.byte	0x26
	.4byte	0x95c
	.4byte	.LLST30
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xc2
	.byte	0x15
	.4byte	0xbd
	.4byte	.LLST31
	.byte	0x12
	.string	"u1"
	.byte	0x1
	.byte	0xc5
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x12
	.string	"u2"
	.byte	0x1
	.byte	0xc5
	.byte	0x15
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7c
	.byte	0x12
	.string	"z"
	.byte	0x1
	.byte	0xc6
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x12
	.string	"sum"
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x12
	.string	"rx"
	.byte	0x1
	.byte	0xc8
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x12
	.string	"ry"
	.byte	0x1
	.byte	0xc9
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x12
	.string	"tx"
	.byte	0x1
	.byte	0xca
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x12
	.string	"ty"
	.byte	0x1
	.byte	0xcb
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x12
	.string	"tz"
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x13
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcd
	.byte	0x15
	.4byte	0x962
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7c
	.byte	0x14
	.4byte	.LASF31
	.byte	0x1
	.byte	0xce
	.byte	0x15
	.4byte	0x1b7
	.4byte	.LLST32
	.byte	0x14
	.4byte	.LASF32
	.byte	0x1
	.byte	0xcf
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST33
	.byte	0x15
	.string	"i"
	.byte	0x1
	.byte	0xd0
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST34
	.byte	0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0xd2
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x12
	.string	"r"
	.byte	0x1
	.byte	0xd3
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x12
	.string	"s"
	.byte	0x1
	.byte	0xd3
	.byte	0x14
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0xd4
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST35
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd5
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST36
	.byte	0x16
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x504
	.byte	0x17
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x10d
	.byte	0xf
	.4byte	0xac
	.4byte	.LLST37
	.byte	0x18
	.4byte	.LVL132
	.4byte	0x3db
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL133
	.4byte	0xf66
	.4byte	0x3f6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL135
	.4byte	0xf66
	.4byte	0x411
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL140
	.4byte	0xf73
	.4byte	0x432
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL141
	.4byte	0xf73
	.4byte	0x456
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL142
	.4byte	0xf80
	.4byte	0x47f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL143
	.4byte	0xf8d
	.4byte	0x4ae
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL144
	.4byte	0xf9a
	.4byte	0x4de
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL145
	.4byte	0xfa7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x972
	.4byte	.LBB11
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x102
	.byte	0xd
	.4byte	0x524
	.byte	0x1d
	.4byte	0x98d
	.byte	0x1d
	.4byte	0x983
	.byte	0
	.byte	0x1a
	.4byte	.LVL87
	.4byte	0xfb4
	.4byte	0x53e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL88
	.4byte	0xfb4
	.4byte	0x552
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL89
	.4byte	0xfb4
	.4byte	0x56d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL90
	.4byte	0xfb4
	.4byte	0x582
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0
	.byte	0x1a
	.4byte	.LVL91
	.4byte	0xfc1
	.4byte	0x59d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL98
	.4byte	0xfc1
	.4byte	0x5b8
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL100
	.4byte	0xfce
	.4byte	0x5d9
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL102
	.4byte	0xfce
	.4byte	0x5fa
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL103
	.4byte	0xfdb
	.4byte	0x622
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL104
	.4byte	0xe2a
	.4byte	0x649
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL105
	.4byte	0xfe8
	.4byte	0x678
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL106
	.4byte	0xfe8
	.4byte	0x6a7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL107
	.4byte	0xf73
	.4byte	0x6c7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL108
	.4byte	0xf73
	.4byte	0x6e7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL110
	.4byte	0xf73
	.4byte	0x708
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL111
	.4byte	0xf73
	.4byte	0x72c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL113
	.4byte	0xf8d
	.4byte	0x75a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL114
	.4byte	0xf9a
	.4byte	0x788
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL115
	.4byte	0xfdb
	.4byte	0x7b0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL116
	.4byte	0xf80
	.4byte	0x7d7
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL117
	.4byte	0xff5
	.4byte	0x7f2
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL118
	.4byte	0xff5
	.4byte	0x80d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL120
	.4byte	0xf66
	.4byte	0x828
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL121
	.4byte	0xf66
	.4byte	0x843
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL123
	.4byte	0xf73
	.4byte	0x864
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL124
	.4byte	0xf73
	.4byte	0x888
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x84
	.byte	0
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL125
	.4byte	0x1002
	.4byte	0x8a3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL127
	.4byte	0xfdb
	.4byte	0x8cb
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL128
	.4byte	0xf80
	.4byte	0x8f4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL129
	.4byte	0xfce
	.4byte	0x915
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL130
	.4byte	0x100f
	.4byte	0x93d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL131
	.4byte	0x101c
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x65
	.byte	0xa
	.4byte	0x1b7
	.4byte	0x972
	.byte	0xb
	.4byte	0x8d
	.byte	0x3
	.byte	0
	.byte	0x1e
	.4byte	.LASF76
	.byte	0x1
	.byte	0xbb
	.byte	0x13
	.4byte	0xa0
	.byte	0x1
	.4byte	0x998
	.byte	0x1f
	.string	"a"
	.byte	0x1
	.byte	0xbb
	.byte	0x23
	.4byte	0xa0
	.byte	0x1f
	.string	"b"
	.byte	0x1
	.byte	0xbb
	.byte	0x31
	.4byte	0xa0
	.byte	0
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa1
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xab6
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0xa1
	.byte	0x1e
	.4byte	0x95c
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa1
	.byte	0x3a
	.4byte	0x95c
	.4byte	.LLST21
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa2
	.byte	0x11
	.4byte	0x8d
	.4byte	.LLST22
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa2
	.byte	0x25
	.4byte	0x20b
	.4byte	.LLST23
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa2
	.byte	0x3b
	.4byte	0xbd
	.4byte	.LLST24
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0xa4
	.byte	0x14
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x12
	.string	"k"
	.byte	0x1
	.byte	0xa5
	.byte	0x14
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0xa6
	.byte	0x14
	.4byte	0xac
	.4byte	.LLST25
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0xaa
	.byte	0x15
	.4byte	0x1e5
	.4byte	.LLST26
	.byte	0x21
	.4byte	.LVL65
	.4byte	0x1029
	.byte	0x18
	.4byte	.LVL68
	.4byte	0xa65
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x1a
	.4byte	.LVL69
	.4byte	0x1035
	.4byte	0xa86
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL70
	.4byte	0xab6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xe1a
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x63
	.byte	0x25
	.4byte	0x95c
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x63
	.byte	0x41
	.4byte	0x95c
	.4byte	.LLST11
	.byte	0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x64
	.byte	0x11
	.4byte	0x8d
	.4byte	.LLST12
	.byte	0x22
	.string	"k"
	.byte	0x1
	.byte	0x64
	.byte	0x29
	.4byte	0x196
	.4byte	.LLST13
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x64
	.byte	0x35
	.4byte	0x20b
	.4byte	.LLST14
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x65
	.byte	0x13
	.4byte	0xbd
	.4byte	.LLST15
	.byte	0x12
	.string	"tmp"
	.byte	0x1
	.byte	0x68
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x12
	.string	"s"
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x15c
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x12
	.string	"k2"
	.byte	0x1
	.byte	0x6a
	.byte	0xf
	.4byte	0xe1a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7e
	.byte	0x12
	.string	"p"
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.4byte	0x16c
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST16
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x6d
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST17
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST18
	.byte	0x14
	.4byte	.LASF18
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST19
	.byte	0x1a
	.4byte	.LVL35
	.4byte	0xfc1
	.4byte	0xbc3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL45
	.4byte	0x1042
	.4byte	0xbe3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL46
	.4byte	0x104f
	.4byte	0xc09
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL48
	.4byte	0x105c
	.4byte	0xc3a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x82
	.byte	0xc4,0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.byte	0x89
	.byte	0x1
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x19
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL49
	.4byte	0xfc1
	.4byte	0xc55
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL50
	.4byte	0x1002
	.4byte	0xc6f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL51
	.4byte	0xfe8
	.4byte	0xc9b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL52
	.4byte	0xfdb
	.4byte	0xcc1
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL53
	.4byte	0xfe8
	.4byte	0xced
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL54
	.4byte	0x1069
	.4byte	0xd08
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0
	.byte	0x1a
	.4byte	.LVL55
	.4byte	0xfb4
	.4byte	0xd22
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8b
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL56
	.4byte	0xf73
	.4byte	0xd43
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL57
	.4byte	0xfe8
	.4byte	0xd6f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL58
	.4byte	0xe2a
	.4byte	0xd97
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x6
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL59
	.4byte	0x1076
	.4byte	0xdc3
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL60
	.4byte	0xfe8
	.4byte	0xdef
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL61
	.4byte	0xff5
	.4byte	0xe09
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL62
	.4byte	0x1069
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	0x196
	.4byte	0xe2a
	.byte	0xb
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.byte	0x23
	.4byte	.LASF77
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0xf66
	.byte	0x11
	.4byte	.LASF44
	.byte	0x1
	.byte	0x42
	.byte	0x23
	.4byte	0x196
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x42
	.byte	0x3a
	.4byte	0x95c
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x8d
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x43
	.byte	0x27
	.4byte	0xbd
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x45
	.byte	0xb
	.4byte	0x8d
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x46
	.byte	0xb
	.4byte	0x8d
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.4byte	0x86
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST7
	.byte	0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x49
	.byte	0xf
	.4byte	0x196
	.4byte	.LLST8
	.byte	0x24
	.4byte	.Ldebug_ranges0+0
	.4byte	0xeea
	.byte	0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.4byte	0xac
	.4byte	.LLST9
	.byte	0
	.byte	0x1a
	.4byte	.LVL8
	.4byte	0x1002
	.4byte	0xf04
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL9
	.4byte	0xfb4
	.4byte	0xf24
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL16
	.4byte	0xfce
	.4byte	0xf44
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL22
	.4byte	0x100f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x23
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x3
	.2byte	0x185
	.byte	0xd
	.byte	0x26
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x3
	.2byte	0x1cf
	.byte	0x6
	.byte	0x26
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x3
	.2byte	0x179
	.byte	0x6
	.byte	0x26
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x3
	.2byte	0x161
	.byte	0x6
	.byte	0x26
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x3
	.2byte	0x16f
	.byte	0x6
	.byte	0x26
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x3
	.2byte	0x198
	.byte	0x6
	.byte	0x26
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x3
	.2byte	0x21a
	.byte	0x6
	.byte	0x26
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x138
	.byte	0xd
	.byte	0x26
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x3
	.2byte	0x154
	.byte	0xd
	.byte	0x26
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x3
	.2byte	0x1c6
	.byte	0x6
	.byte	0x26
	.4byte	.LASF60
	.4byte	.LASF60
	.byte	0x3
	.2byte	0x1b9
	.byte	0x6
	.byte	0x26
	.4byte	.LASF61
	.4byte	.LASF61
	.byte	0x3
	.2byte	0x1e6
	.byte	0xc
	.byte	0x26
	.4byte	.LASF62
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x1ee
	.byte	0x6
	.byte	0x26
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x1a4
	.byte	0xd
	.byte	0x26
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x3
	.2byte	0x1ae
	.byte	0xd
	.byte	0x27
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x3
	.byte	0xf3
	.byte	0x13
	.byte	0x26
	.4byte	.LASF66
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x18e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x149
	.byte	0xd
	.byte	0x26
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x120
	.byte	0xd
	.byte	0x26
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x12e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x3
	.2byte	0x211
	.byte	0x6
	.byte	0x26
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x3
	.2byte	0x1dc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL87-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL101
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL109
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL112
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL87-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL92
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL99
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL81
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87-1
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL122
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL139
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x12
	.byte	0x84
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x24
	.byte	0x2b
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL126
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL146
	.4byte	.LFE4
	.2byte	0x3
	.byte	0x83
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL83
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL86
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL97
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL64
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL64
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x87
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x6
	.byte	0x8
	.byte	0x41
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x72
	.byte	0xac,0x7e
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0xc
	.byte	0x89
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.byte	0x1f
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0xc
	.byte	0x89
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.byte	0x1f
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL44
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL29
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL8-1
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x83
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x3
	.byte	0x7c
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL22-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x78
	.byte	0x7
	.byte	0x38
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x38
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL8-1
	.2byte	0xd
	.byte	0x7d
	.byte	0x2
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.byte	0x7
	.byte	0x38
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL16-1
	.2byte	0x3
	.byte	0x7f
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x7f
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"uECC_sign"
.LASF40:
	.string	"tries"
.LASF60:
	.string	"uECC_vli_modMult"
.LASF34:
	.string	"num_n_words"
.LASF20:
	.string	"x_side"
.LASF0:
	.string	"int8_t"
.LASF35:
	.string	"index"
.LASF53:
	.string	"uECC_vli_modSub"
.LASF49:
	.string	"temp"
.LASF3:
	.string	"short int"
.LASF73:
	.string	"/b-l/bl_iot_sdk_new/components/network/ble/blestack/src/common/tinycrypt/source/ecc_dsa.c"
.LASF64:
	.string	"uECC_vli_equal"
.LASF65:
	.string	"uECC_get_rng"
.LASF16:
	.string	"num_words"
.LASF6:
	.string	"uint8_t"
.LASF52:
	.string	"apply_z"
.LASF54:
	.string	"XYcZ_add"
.LASF71:
	.string	"uECC_vli_modAdd"
.LASF46:
	.string	"bits_size"
.LASF41:
	.string	"rng_function"
.LASF5:
	.string	"long long int"
.LASF70:
	.string	"uECC_vli_nativeToBytes"
.LASF45:
	.string	"bits"
.LASF18:
	.string	"num_n_bits"
.LASF4:
	.string	"long int"
.LASF48:
	.string	"shift"
.LASF25:
	.string	"public_key"
.LASF30:
	.string	"points"
.LASF67:
	.string	"uECC_vli_cmp"
.LASF72:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF58:
	.string	"uECC_vli_cmp_unsafe"
.LASF26:
	.string	"message_hash"
.LASF17:
	.string	"num_bytes"
.LASF50:
	.string	"uECC_vli_testBit"
.LASF7:
	.string	"unsigned char"
.LASF19:
	.string	"double_jacobian"
.LASF77:
	.string	"bits2int"
.LASF51:
	.string	"uECC_vli_set"
.LASF2:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF42:
	.string	"uECC_sign_with_k"
.LASF11:
	.string	"unsigned int"
.LASF12:
	.string	"wordcount_t"
.LASF57:
	.string	"uECC_vli_isZero"
.LASF8:
	.string	"short unsigned int"
.LASF43:
	.string	"carry"
.LASF63:
	.string	"uECC_vli_sub"
.LASF33:
	.string	"_public"
.LASF1:
	.string	"int16_t"
.LASF32:
	.string	"num_bits"
.LASF69:
	.string	"EccPoint_mult"
.LASF59:
	.string	"uECC_vli_modInv"
.LASF21:
	.string	"mmod_fast"
.LASF15:
	.string	"uECC_Curve"
.LASF76:
	.string	"smax"
.LASF36:
	.string	"uECC_verify"
.LASF9:
	.string	"long unsigned int"
.LASF31:
	.string	"point"
.LASF23:
	.string	"curve_secp256r1"
.LASF29:
	.string	"curve"
.LASF39:
	.string	"_random"
.LASF27:
	.string	"hash_size"
.LASF75:
	.string	"uECC_Curve_t"
.LASF22:
	.string	"uECC_RNG_Function"
.LASF28:
	.string	"signature"
.LASF55:
	.string	"uECC_vli_modMult_fast"
.LASF38:
	.string	"private_key"
.LASF44:
	.string	"native"
.LASF47:
	.string	"num_n_bytes"
.LASF56:
	.string	"uECC_vli_bytesToNative"
.LASF62:
	.string	"uECC_vli_clear"
.LASF74:
	.string	"/b-l/dolphin/build_out/blestack"
.LASF14:
	.string	"uECC_word_t"
.LASF13:
	.string	"bitcount_t"
.LASF24:
	.string	"g_rng_function"
.LASF66:
	.string	"uECC_vli_mmod"
.LASF68:
	.string	"regularize_k"
.LASF61:
	.string	"uECC_vli_numBits"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
