	.file	"base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB0:
	.file 1 "/b-l/bl_iot_sdk/components/security/mbedtls/src/base64.c"
	.loc 1 79 1
	.cfi_startproc
.LVL0:
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 84 5
	.loc 1 84 7 is_stmt 0
	bne	a4,zero,.L2
	.loc 1 86 9 is_stmt 1
	.loc 1 86 15 is_stmt 0
	sw	zero,0(a2)
	.loc 1 87 9 is_stmt 1
.LVL1:
.L14:
	.loc 1 138 5
	.loc 1 138 11 is_stmt 0
	li	a0,0
	.loc 1 139 1
	ret
.LVL2:
.L2:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 14 is_stmt 0
	li	a6,3
	.loc 1 90 27
	remu	a5,a4,a6
	.loc 1 92 7
	li	t1,1073741824
	.loc 1 90 14
	divu	a7,a4,a6
	.loc 1 90 31
	snez	a5,a5
	.loc 1 90 7
	add	a5,a5,a7
.LVL3:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 7 is_stmt 0
	bltu	a5,t1,.L4
	.loc 1 94 9 is_stmt 1
	.loc 1 94 15 is_stmt 0
	li	a5,-1
.LVL4:
.L5:
	.loc 1 102 9 is_stmt 1
	.loc 1 102 15 is_stmt 0
	sw	a5,0(a2)
	.loc 1 103 9 is_stmt 1
	.loc 1 103 15 is_stmt 0
	li	a0,-42
.LVL5:
	ret
.LVL6:
.L4:
	.loc 1 98 5 is_stmt 1
	.loc 1 100 5
	.loc 1 98 7 is_stmt 0
	slli	a5,a5,2
.LVL7:
	.loc 1 100 20
	addi	a5,a5,1
.LVL8:
	.loc 1 100 7
	bgtu	a5,a1,.L5
	.loc 1 100 26 discriminator 1
	beq	a0,zero,.L5
	.loc 1 106 5 is_stmt 1
	.loc 1 114 30 is_stmt 0
	lui	t1,%hi(.LANCHOR0)
	.loc 1 106 7
	mul	t5,a7,a6
.LVL9:
	.loc 1 108 5 is_stmt 1
	mv	a5,a0
	.loc 1 108 12 is_stmt 0
	li	a7,0
	.loc 1 114 30
	addi	t1,t1,%lo(.LANCHOR0)
.LVL10:
.L7:
	.loc 1 108 5 discriminator 1
	bltu	a7,t5,.L8
	.loc 1 120 5 is_stmt 1
	.loc 1 120 7 is_stmt 0
	bgeu	a7,a4,.L9
	.loc 1 122 9 is_stmt 1
.LVL11:
	.loc 1 123 20 is_stmt 0
	addi	a7,a7,1
.LVL12:
	.loc 1 122 12
	lbu	a1,0(a3)
.LVL13:
	.loc 1 123 9 is_stmt 1
	.loc 1 123 44 is_stmt 0
	li	t1,0
	bgeu	a7,a4,.L10
.LVL14:
	.loc 1 123 44 discriminator 1
	lbu	t1,1(a3)
.LVL15:
.L10:
	.loc 1 125 9 is_stmt 1 discriminator 4
	.loc 1 125 30 is_stmt 0 discriminator 4
	lui	a6,%hi(.LANCHOR0)
	addi	a6,a6,%lo(.LANCHOR0)
	.loc 1 125 35 discriminator 4
	srai	a3,a1,2
	.loc 1 125 30 discriminator 4
	add	a3,a6,a3
	.loc 1 125 14 discriminator 4
	lbu	a3,0(a3)
	sb	a3,0(a5)
	.loc 1 126 9 is_stmt 1 discriminator 4
.LVL16:
	.loc 1 126 42 is_stmt 0 discriminator 4
	slli	a3,a1,4
	andi	a3,a3,48
	.loc 1 126 30 discriminator 4
	add	a3,a6,a3
	.loc 1 126 54 discriminator 4
	srai	a1,t1,4
.LVL17:
	.loc 1 126 30 discriminator 4
	add	a1,a3,a1
	.loc 1 126 14 discriminator 4
	lbu	a3,0(a1)
	sb	a3,1(a5)
	.loc 1 128 9 is_stmt 1 discriminator 4
	.loc 1 130 19 is_stmt 0 discriminator 4
	li	a3,61
	.loc 1 128 11 discriminator 4
	bgeu	a7,a4,.L11
	.loc 1 129 14 is_stmt 1
.LVL18:
	.loc 1 129 47 is_stmt 0
	slli	t1,t1,2
.LVL19:
	.loc 1 129 53
	andi	t1,t1,60
	.loc 1 129 35
	add	a6,a6,t1
	lbu	a3,0(a6)
.LVL20:
.L11:
	.loc 1 132 14
	li	a4,61
.LVL21:
	sb	a3,2(a5)
.LVL22:
	.loc 1 132 9 is_stmt 1
	.loc 1 132 14 is_stmt 0
	sb	a4,3(a5)
	.loc 1 132 11
	addi	a5,a5,4
.LVL23:
.L9:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 15 is_stmt 0
	sub	a0,a5,a0
.LVL24:
	.loc 1 135 11
	sw	a0,0(a2)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 8 is_stmt 0
	sb	zero,0(a5)
	j	.L14
.LVL25:
.L8:
	.loc 1 110 9 is_stmt 1 discriminator 3
	.loc 1 110 12 is_stmt 0 discriminator 3
	lbu	a6,0(a3)
.LVL26:
	.loc 1 111 9 is_stmt 1 discriminator 3
	.loc 1 111 12 is_stmt 0 discriminator 3
	lbu	a1,1(a3)
.LVL27:
	.loc 1 112 9 is_stmt 1 discriminator 3
	addi	a3,a3,3
.LVL28:
	.loc 1 114 35 is_stmt 0 discriminator 3
	srai	t4,a6,2
	.loc 1 114 30 discriminator 3
	add	t4,t1,t4
	.loc 1 114 14 discriminator 3
	lbu	t4,0(t4)
	.loc 1 115 42 discriminator 3
	slli	a6,a6,4
.LVL29:
	andi	a6,a6,48
	.loc 1 112 14 discriminator 3
	lbu	t3,-1(a3)
.LVL30:
	.loc 1 114 9 is_stmt 1 discriminator 3
	.loc 1 115 30 is_stmt 0 discriminator 3
	add	a6,t1,a6
	.loc 1 114 14 discriminator 3
	sb	t4,0(a5)
.LVL31:
	.loc 1 115 9 is_stmt 1 discriminator 3
	.loc 1 115 54 is_stmt 0 discriminator 3
	srai	t4,a1,4
	.loc 1 115 30 discriminator 3
	add	a6,a6,t4
	.loc 1 115 14 discriminator 3
	lbu	a6,0(a6)
	.loc 1 116 43 discriminator 3
	slli	a1,a1,2
.LVL32:
	andi	a1,a1,60
	.loc 1 115 14 discriminator 3
	sb	a6,1(a5)
	.loc 1 116 9 is_stmt 1 discriminator 3
.LVL33:
	.loc 1 116 30 is_stmt 0 discriminator 3
	add	a1,t1,a1
	.loc 1 116 55 discriminator 3
	srai	a6,t3,6
	.loc 1 116 30 discriminator 3
	add	a1,a1,a6
	.loc 1 116 14 discriminator 3
	lbu	a1,0(a1)
	.loc 1 117 34 discriminator 3
	andi	t3,t3,63
.LVL34:
	.loc 1 117 30 discriminator 3
	add	t3,t1,t3
	.loc 1 116 14 discriminator 3
	sb	a1,2(a5)
	.loc 1 117 9 is_stmt 1 discriminator 3
	.loc 1 117 14 is_stmt 0 discriminator 3
	lbu	a1,0(t3)
	addi	a5,a5,4
.LVL35:
	.loc 1 108 35 discriminator 3
	addi	a7,a7,3
.LVL36:
	.loc 1 117 14 discriminator 3
	sb	a1,-1(a5)
	j	.L7
	.cfi_endproc
.LFE0:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB1:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 149 5
	.loc 1 152 5
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 180 43
	lui	t3,%hi(.LANCHOR1)
	.loc 1 146 1
	sw	s0,28(sp)
	sw	s1,24(sp)
	sw	s2,20(sp)
	sw	s3,16(sp)
	sw	s4,12(sp)
	sw	s5,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.loc 1 152 20
	li	a5,0
	.loc 1 152 16
	li	a6,0
	.loc 1 152 12
	li	a7,0
	.loc 1 156 25
	li	t0,32
	.loc 1 166 11
	li	t2,1
	.loc 1 177 11
	li	s0,61
	.loc 1 180 43
	addi	t3,t3,%lo(.LANCHOR1)
	.loc 1 180 26
	li	s1,127
	.loc 1 183 11
	li	s2,63
	.loc 1 177 27
	li	s3,2
	.loc 1 170 11
	li	t5,10
	.loc 1 166 31
	li	s4,13
.LVL38:
.L16:
	.loc 1 152 5 discriminator 1
	bltu	a7,a4,.L40
	mv	a4,a7
.LVL39:
	j	.L17
.LVL40:
.L18:
	.loc 1 158 13 is_stmt 1
	addi	a7,a7,1
.LVL41:
	.loc 1 159 13
	addi	t4,t4,1
.LVL42:
	.loc 1 156 14 is_stmt 0
	bne	a4,a7,.L26
.LVL43:
.L17:
	.loc 1 189 5 is_stmt 1
	.loc 1 189 7 is_stmt 0
	bne	a6,zero,.L27
	.loc 1 191 9 is_stmt 1
	.loc 1 191 15 is_stmt 0
	sw	zero,0(a2)
	.loc 1 192 9 is_stmt 1
.LVL44:
.L50:
	.loc 1 227 5
	.loc 1 227 11 is_stmt 0
	li	a0,0
.LVL45:
	j	.L15
.LVL46:
.L40:
	.loc 1 155 11
	li	t4,0
.L26:
.LVL47:
	.loc 1 156 31 discriminator 1
	add	t6,a3,a7
	.loc 1 156 25 discriminator 1
	lbu	t1,0(t6)
	beq	t1,t0,.L18
	.loc 1 163 9 is_stmt 1
	.loc 1 163 11 is_stmt 0
	beq	a4,a7,.L17
	.loc 1 166 9 is_stmt 1
	.loc 1 166 20 is_stmt 0
	sub	s5,a4,a7
	.loc 1 166 11
	bleu	s5,t2,.L19
	.loc 1 166 31 discriminator 1
	bne	t1,s4,.L19
	.loc 1 167 28
	lbu	t6,1(t6)
	bne	t6,t5,.L21
.LVL48:
.L20:
	.loc 1 152 36 discriminator 2
	addi	a7,a7,1
.LVL49:
	j	.L16
.LVL50:
.L19:
	.loc 1 170 9 is_stmt 1
	.loc 1 170 11 is_stmt 0
	beq	t1,t5,.L20
.L21:
	.loc 1 174 9 is_stmt 1
	.loc 1 174 11 is_stmt 0
	bne	t4,zero,.L39
	.loc 1 177 9 is_stmt 1
	.loc 1 177 11 is_stmt 0
	bne	t1,s0,.L23
	.loc 1 177 27 discriminator 1
	addi	a5,a5,1
.LVL51:
	bleu	a5,s3,.L24
.LVL52:
.L39:
	.loc 1 175 19
	li	a0,-44
.LVL53:
	j	.L15
.LVL54:
.L23:
	.loc 1 180 9 is_stmt 1
	.loc 1 180 11 is_stmt 0
	slli	t4,t1,24
.LVL55:
	srai	t4,t4,24
	blt	t4,zero,.L39
.L24:
	.loc 1 180 43 discriminator 1
	add	t1,t3,t1
	lbu	t1,0(t1)
	.loc 1 180 26 discriminator 1
	beq	t1,s1,.L39
	.loc 1 183 9 is_stmt 1
	.loc 1 183 11 is_stmt 0
	bgtu	t1,s2,.L25
	.loc 1 183 41 discriminator 1
	bne	a5,zero,.L39
.L25:
	.loc 1 186 9 is_stmt 1
	.loc 1 186 10 is_stmt 0
	addi	a6,a6,1
.LVL56:
	j	.L20
.LVL57:
.L27:
	.loc 1 199 5 is_stmt 1
	.loc 1 199 42 is_stmt 0
	andi	a7,a6,7
	.loc 1 199 36
	li	t1,6
	mul	a7,a7,t1
	.loc 1 199 19
	srli	a6,a6,3
.LVL58:
	.loc 1 199 13
	mul	a6,a6,t1
	.loc 1 199 50
	addi	a7,a7,7
	.loc 1 199 56
	srli	a7,a7,3
	.loc 1 200 5 is_stmt 1
	sub	a6,a6,a5
	.loc 1 200 7 is_stmt 0
	add	a6,a7,a6
.LVL59:
	.loc 1 202 5 is_stmt 1
	.loc 1 202 7 is_stmt 0
	beq	a0,zero,.L28
	.loc 1 202 20 discriminator 1
	bgtu	a6,a1,.L28
	.loc 1 213 30
	lui	t4,%hi(.LANCHOR1)
	.loc 1 210 26
	li	t5,4194304
	add	a4,a3,a4
.LVL60:
	.loc 1 202 20
	mv	a5,a0
.LVL61:
	.loc 1 208 22
	li	a6,0
.LVL62:
	.loc 1 208 11
	li	a7,3
	.loc 1 208 18
	li	t1,0
	.loc 1 210 26
	li	t6,22
	.loc 1 213 30
	addi	t4,t4,%lo(.LANCHOR1)
	.loc 1 216 11
	li	t0,4
	.loc 1 220 15
	li	t2,1
	.loc 1 221 15
	li	s0,2
	.loc 1 210 26
	addi	t5,t5,9
.LVL63:
.L29:
	.loc 1 208 4 discriminator 1
	bne	a4,a3,.L34
	.loc 1 225 5 is_stmt 1
	.loc 1 225 15 is_stmt 0
	sub	a5,a5,a0
.LVL64:
	.loc 1 225 11
	sw	a5,0(a2)
	j	.L50
.LVL65:
.L28:
	.loc 1 204 9 is_stmt 1
	.loc 1 204 15 is_stmt 0
	sw	a6,0(a2)
	.loc 1 205 9 is_stmt 1
	.loc 1 205 15 is_stmt 0
	li	a0,-42
.LVL66:
.L15:
	.loc 1 228 1
	lw	s0,28(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,24(sp)
	.cfi_restore 9
	lw	s2,20(sp)
	.cfi_restore 18
	lw	s3,16(sp)
	.cfi_restore 19
	lw	s4,12(sp)
	.cfi_restore 20
	lw	s5,8(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L34:
	.cfi_restore_state
	.loc 1 210 9 is_stmt 1
	.loc 1 210 13 is_stmt 0
	lbu	t3,0(a3)
	.loc 1 210 26
	addi	a1,t3,-10
	andi	a1,a1,0xff
	bgtu	a1,t6,.L30
	.loc 1 210 26 discriminator 1
	srl	a1,t5,a1
	andi	a1,a1,1
	bne	a1,zero,.L31
.L30:
	.loc 1 213 9 is_stmt 1
	.loc 1 213 30 is_stmt 0
	add	t3,t4,t3
	lbu	a1,0(t3)
	.loc 1 214 17
	slli	a6,a6,6
.LVL68:
	.loc 1 216 11
	addi	t1,t1,1
.LVL69:
	.loc 1 213 37
	addi	t3,a1,-64
	seqz	t3,t3
	.loc 1 214 49
	andi	a1,a1,63
	.loc 1 213 11
	sub	a7,a7,t3
.LVL70:
	.loc 1 214 9 is_stmt 1
	.loc 1 214 11 is_stmt 0
	or	a6,a1,a6
.LVL71:
	.loc 1 216 9 is_stmt 1
	.loc 1 216 11 is_stmt 0
	bne	t1,t0,.L31
	.loc 1 218 13 is_stmt 1
.LVL72:
	.loc 1 219 13
	.loc 1 218 15 is_stmt 0
	li	t1,0
	.loc 1 219 15
	beq	a7,zero,.L31
	.loc 1 219 25 is_stmt 1 discriminator 1
.LVL73:
	.loc 1 219 51 is_stmt 0 discriminator 1
	srli	a1,a6,16
	.loc 1 219 32 discriminator 1
	sb	a1,0(a5)
	.loc 1 220 13 is_stmt 1 discriminator 1
	.loc 1 220 15 is_stmt 0 discriminator 1
	bne	a7,t2,.L32
	.loc 1 219 27
	addi	a5,a5,1
.LVL74:
.L31:
	.loc 1 208 51 discriminator 2
	addi	a3,a3,1
.LVL75:
	j	.L29
.LVL76:
.L32:
	.loc 1 220 25 is_stmt 1 discriminator 1
	.loc 1 220 51 is_stmt 0 discriminator 1
	srli	a1,a6,8
	.loc 1 220 32 discriminator 1
	sb	a1,1(a5)
	.loc 1 221 13 is_stmt 1 discriminator 1
	.loc 1 221 15 is_stmt 0 discriminator 1
	bne	a7,s0,.L33
	.loc 1 220 27
	addi	a5,a5,2
.LVL77:
	j	.L31
.LVL78:
.L33:
	.loc 1 221 25 is_stmt 1 discriminator 1
	.loc 1 221 32 is_stmt 0 discriminator 1
	sb	a6,2(a5)
	.loc 1 221 27 discriminator 1
	addi	a5,a5,3
.LVL79:
	j	.L31
	.cfi_endproc
.LFE1:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.section	.rodata.base64_dec_map,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	base64_dec_map, @object
	.size	base64_dec_map, 128
base64_dec_map:
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	62
	.byte	127
	.byte	127
	.byte	127
	.byte	63
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	127
	.byte	127
	.byte	127
	.byte	64
	.byte	127
	.byte	127
	.byte	127
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.byte	127
	.section	.rodata.base64_enc_map,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	base64_enc_map, @object
	.size	base64_enc_map, 64
base64_enc_map:
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	43
	.byte	47
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x250
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF16
	.byte	0xc
	.4byte	.LASF17
	.4byte	.LASF18
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
	.byte	0x3
	.4byte	0x2c
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x69
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x6
	.4byte	0x33
	.4byte	0x98
	.byte	0x7
	.4byte	0x69
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	0x88
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2c
	.byte	0x1c
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	base64_enc_map
	.byte	0x6
	.4byte	0x33
	.4byte	0xbf
	.byte	0x7
	.4byte	0x69
	.byte	0x7f
	.byte	0
	.byte	0x3
	.4byte	0xaf
	.byte	0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x37
	.byte	0x1c
	.4byte	0xbf
	.byte	0x5
	.byte	0x3
	.4byte	base64_dec_map
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x185
	.byte	0xa
	.string	"dst"
	.byte	0x1
	.byte	0x90
	.byte	0x2b
	.4byte	0x185
	.4byte	.LLST10
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x90
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x90
	.byte	0x45
	.4byte	0x18b
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.string	"src"
	.byte	0x1
	.byte	0x91
	.byte	0x29
	.4byte	0x191
	.4byte	.LLST12
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x91
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST13
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x93
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST14
	.byte	0xd
	.string	"n"
	.byte	0x1
	.byte	0x93
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST15
	.byte	0xd
	.string	"j"
	.byte	0x1
	.byte	0x94
	.byte	0xe
	.4byte	0x7c
	.4byte	.LLST16
	.byte	0xd
	.string	"x"
	.byte	0x1
	.byte	0x94
	.byte	0x11
	.4byte	0x7c
	.4byte	.LLST17
	.byte	0xd
	.string	"p"
	.byte	0x1
	.byte	0x95
	.byte	0x14
	.4byte	0x185
	.4byte	.LLST18
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x2c
	.byte	0xe
	.byte	0x4
	.4byte	0x70
	.byte	0xe
	.byte	0x4
	.4byte	0x33
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.string	"dst"
	.byte	0x1
	.byte	0x4d
	.byte	0x2b
	.4byte	0x185
	.4byte	.LLST0
	.byte	0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4d
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST1
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4d
	.byte	0x45
	.4byte	0x18b
	.byte	0x1
	.byte	0x5c
	.byte	0xa
	.string	"src"
	.byte	0x1
	.byte	0x4e
	.byte	0x29
	.4byte	0x191
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4e
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST3
	.byte	0xd
	.string	"i"
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST4
	.byte	0xd
	.string	"n"
	.byte	0x1
	.byte	0x50
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST5
	.byte	0xd
	.string	"C1"
	.byte	0x1
	.byte	0x51
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST6
	.byte	0xd
	.string	"C2"
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST7
	.byte	0xd
	.string	"C3"
	.byte	0x1
	.byte	0x51
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST8
	.byte	0xd
	.string	"p"
	.byte	0x1
	.byte	0x52
	.byte	0x14
	.4byte	0x185
	.4byte	.LLST9
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
	.byte	0x26
	.byte	0
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL37
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL75
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL46
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x76
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL76
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL67
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL71
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL67
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x7f
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x3
	.byte	0x7f
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL12
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x81
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x8
	.byte	0x7d
	.byte	0x7d
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL27
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x8c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7f
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x7f
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7f
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7f
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF13:
	.string	"dlen"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"slen"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"mbedtls_base64_encode"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"olen"
.LASF11:
	.string	"base64_enc_map"
.LASF6:
	.string	"long long int"
.LASF12:
	.string	"base64_dec_map"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/mbedtls"
.LASF17:
	.string	"/b-l/bl_iot_sdk/components/security/mbedtls/src/base64.c"
.LASF19:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
