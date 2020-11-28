	.file	"jsmn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.jsmn_parse,"ax",@progbits
	.align	1
	.globl	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LFB4:
	.file 1 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.c"
	.loc 1 182 47
	.cfi_startproc
.LVL0:
	.loc 1 183 2
	.loc 1 184 2
	.loc 1 185 2
	.loc 1 186 2
	.loc 1 182 47 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	sw	s3,32(sp)
	sw	s1,40(sp)
	sw	s2,36(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s7,16(sp)
	sw	s8,12(sp)
	sw	s9,8(sp)
	sw	s10,4(sp)
	sw	s11,0(sp)
	.cfi_offset 8, -4
	.cfi_offset 19, -16
	.cfi_offset 9, -8
	.cfi_offset 18, -12
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	.loc 1 182 47
	mv	a5,a0
	.loc 1 186 6
	lw	a0,4(a0)
.LVL1:
	.loc 1 188 2 is_stmt 1
.LBB25:
	.loc 1 193 3 is_stmt 0
	li	t4,44
	.loc 1 274 23
	li	a6,-1
	.loc 1 275 51
	li	t5,1
.LBB26:
.LBB27:
	.loc 1 73 3
	li	t6,32
	li	t0,58
	li	t2,93
	li	s0,125
	li	s3,9
.L2:
.LBE27:
.LBE26:
.LBE25:
	.loc 1 188 15 discriminator 1
	lw	a7,0(a5)
	.loc 1 188 2 discriminator 1
	bgeu	a7,a2,.L50
	.loc 1 188 32 discriminator 2
	add	t1,a1,a7
	lbu	t1,0(t1)
	.loc 1 188 27 discriminator 2
	bne	t1,zero,.L51
.L50:
	.loc 1 323 2 is_stmt 1
	.loc 1 323 5 is_stmt 0
	beq	a3,zero,.L1
	.loc 1 324 3 is_stmt 1
	.loc 1 324 18 is_stmt 0
	lw	a5,4(a5)
.LVL2:
	.loc 1 324 28
	addi	a4,a5,-1
.LVL3:
	slli	a5,a5,4
	add	a3,a3,a5
.LVL4:
	.loc 1 326 7
	li	a5,-1
.LVL5:
.L52:
	.loc 1 324 3 discriminator 1
	bge	a4,zero,.L54
.LVL6:
.L1:
	.loc 1 333 1
	lw	s0,44(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	lw	s4,28(sp)
	.cfi_restore 20
	lw	s5,24(sp)
	.cfi_restore 21
	lw	s6,20(sp)
	.cfi_restore 22
	lw	s7,16(sp)
	.cfi_restore 23
	lw	s8,12(sp)
	.cfi_restore 24
	lw	s9,8(sp)
	.cfi_restore 25
	lw	s10,4(sp)
	.cfi_restore 26
	lw	s11,0(sp)
	.cfi_restore 27
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L51:
	.cfi_restore_state
.LBB70:
	.loc 1 189 3 is_stmt 1
	.loc 1 190 3
	.loc 1 192 3
	.loc 1 193 3
	beq	t1,t4,.L3
	bgtu	t1,t4,.L4
	li	t3,13
	beq	t1,t3,.L5
	bgtu	t1,t3,.L6
	addi	t1,t1,-9
.LVL8:
	andi	t1,t1,0xff
	bleu	t1,t5,.L5
.L7:
.LBB37:
.LBB32:
	.loc 1 73 3 is_stmt 0
	li	s1,13
	j	.L45
.LVL9:
.L6:
.LBE32:
.LBE37:
	.loc 1 193 3
	beq	t1,t6,.L5
	li	t3,34
	bne	t1,t3,.L7
	.loc 1 262 5 is_stmt 1
.LVL10:
.LBB38:
.LBB39:
	.loc 1 116 2
	.loc 1 118 2
	.loc 1 120 2
	.loc 1 120 13 is_stmt 0
	addi	s4,a7,1
	sw	s4,0(a5)
	.loc 1 123 2 is_stmt 1
.LBB40:
	.loc 1 127 6 is_stmt 0
	li	s5,34
	.loc 1 144 6
	li	s6,92
.LBB41:
	.loc 1 147 4
	li	s7,102
	li	s8,114
	li	s10,110
	li	s9,47
	li	s11,98
.LVL11:
.L22:
.LBE41:
.LBE40:
	.loc 1 123 15
	lw	t3,0(a5)
	.loc 1 123 2
	bleu	a2,t3,.L35
	.loc 1 123 32
	add	t1,a1,t3
	lbu	t1,0(t1)
	.loc 1 123 27
	bne	t1,zero,.L36
.L35:
	.loc 1 174 2 is_stmt 1
	.loc 1 174 14 is_stmt 0
	sw	a7,0(a5)
	.loc 1 175 2 is_stmt 1
.LVL12:
.LBE39:
.LBE38:
	.loc 1 263 5
.L60:
.LBE70:
	.loc 1 327 12 is_stmt 0
	li	a0,-3
.LVL13:
	j	.L1
.LVL14:
.L4:
.LBB71:
	.loc 1 193 3
	beq	t1,t2,.L9
	bgtu	t1,t2,.L10
	beq	t1,t0,.L11
	li	t3,91
	bne	t1,t3,.L7
.L12:
	.loc 1 195 5 is_stmt 1
	.loc 1 195 10 is_stmt 0
	addi	a0,a0,1
.LVL15:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 8 is_stmt 0
	beq	a3,zero,.L5
	.loc 1 199 5 is_stmt 1
.LVL16:
.LBB60:
.LBB61:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	a7,4(a5)
	.loc 1 39 5
	bleu	a4,a7,.L55
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	t3,a7,1
	.loc 1 42 15
	slli	a7,a7,4
	.loc 1 42 31
	sw	t3,4(a5)
	.loc 1 42 6
	add	a7,a3,a7
.LVL17:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	sw	a6,8(a7)
	.loc 1 43 13
	sw	a6,4(a7)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(a7)
	.loc 1 48 2 is_stmt 1
.LVL18:
.LBE61:
.LBE60:
	.loc 1 200 5
	.loc 1 202 5
	.loc 1 202 15 is_stmt 0
	lw	t3,8(a5)
	.loc 1 202 8
	beq	t3,a6,.L14
	.loc 1 203 6 is_stmt 1
	.loc 1 203 12 is_stmt 0
	slli	t3,t3,4
	add	t3,a3,t3
	.loc 1 203 35
	lw	s1,12(t3)
	addi	s1,s1,1
	sw	s1,12(t3)
.L14:
	.loc 1 208 5 is_stmt 1
	.loc 1 208 43 is_stmt 0
	li	s1,123
	li	t3,1
	beq	t1,s1,.L15
	li	t3,2
.L15:
	.loc 1 208 17 discriminator 4
	sb	t3,0(a7)
	.loc 1 209 5 is_stmt 1 discriminator 4
	.loc 1 209 18 is_stmt 0 discriminator 4
	lw	t1,0(a5)
.LVL19:
	sw	t1,4(a7)
	.loc 1 210 5 is_stmt 1 discriminator 4
.LVL20:
.L11:
	.loc 1 271 5
	.loc 1 271 40 is_stmt 0
	lw	a7,4(a5)
	addi	a7,a7,-1
	.loc 1 271 22
	sw	a7,8(a5)
	.loc 1 272 5 is_stmt 1
	j	.L5
.LVL21:
.L10:
	.loc 1 193 3 is_stmt 0
	li	t3,123
	beq	t1,t3,.L12
	bne	t1,s0,.L7
.L9:
	.loc 1 213 5 is_stmt 1
	.loc 1 213 8 is_stmt 0
	beq	a3,zero,.L5
	.loc 1 215 5 is_stmt 1
	.loc 1 215 36 is_stmt 0
	li	s2,1
	beq	t1,s0,.L16
	li	s2,2
.L16:
.LVL22:
	.loc 1 239 5 is_stmt 1 discriminator 4
	.loc 1 239 20 is_stmt 0 discriminator 4
	lw	t3,4(a5)
	.loc 1 239 30 discriminator 4
	addi	t1,t3,-1
.LVL23:
	slli	t3,t3,4
	add	t3,a3,t3
.L17:
	.loc 1 239 5 discriminator 1
	bge	t1,zero,.L20
	.loc 1 251 5 is_stmt 1
	.loc 1 251 8 is_stmt 0
	bne	t1,a6,.L5
.LVL24:
.L59:
	.loc 1 243 15
	li	a0,-2
.LVL25:
	j	.L1
.LVL26:
.L20:
	.loc 1 240 6 is_stmt 1
	.loc 1 241 9 is_stmt 0
	lw	s4,-12(t3)
	addi	s1,t3,-16
.LVL27:
	.loc 1 241 6 is_stmt 1
	.loc 1 241 9 is_stmt 0
	beq	s4,a6,.L18
	.loc 1 241 29 discriminator 1
	lw	t3,-8(t3)
	bne	t3,a6,.L18
	.loc 1 242 7 is_stmt 1
	.loc 1 242 10 is_stmt 0
	lbu	t3,0(s1)
	bne	t3,s2,.L59
	.loc 1 245 7 is_stmt 1
	.loc 1 246 32 is_stmt 0
	addi	a7,a7,1
	.loc 1 245 24
	sw	a6,8(a5)
	.loc 1 246 7 is_stmt 1
	.loc 1 246 18 is_stmt 0
	sw	a7,8(s1)
	.loc 1 247 7 is_stmt 1
	.loc 1 251 5
	slli	a7,t1,4
	add	a7,a3,a7
.LVL28:
.L19:
	.loc 1 253 6
	.loc 1 254 6
	.loc 1 254 9 is_stmt 0
	lw	t3,4(a7)
	beq	t3,a6,.L21
	.loc 1 254 29 discriminator 1
	lw	t3,8(a7)
	bne	t3,a6,.L21
	.loc 1 255 7 is_stmt 1
	.loc 1 255 24 is_stmt 0
	sw	t1,8(a5)
	.loc 1 256 7 is_stmt 1
.LVL29:
.L5:
.LBE71:
	.loc 1 188 66 is_stmt 0
	lw	a7,0(a5)
	addi	a7,a7,1
	sw	a7,0(a5)
	j	.L2
.LVL30:
.L18:
.LBB72:
	.loc 1 239 44 discriminator 2
	addi	t1,t1,-1
.LVL31:
	mv	t3,s1
	j	.L17
.LVL32:
.L21:
	.loc 1 252 21
	addi	t1,t1,-1
.LVL33:
	addi	a7,a7,-16
.LVL34:
	.loc 1 252 5
	bne	t1,a6,.L19
	j	.L5
.LVL35:
.L36:
.LBB62:
.LBB56:
.LBB51:
	.loc 1 124 3 is_stmt 1
	.loc 1 127 3
	.loc 1 127 6 is_stmt 0
	bne	t1,s5,.L23
	.loc 1 128 4 is_stmt 1
	.loc 1 128 7 is_stmt 0
	beq	a3,zero,.L48
	.loc 1 131 4 is_stmt 1
.LVL36:
.LBB42:
.LBB43:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	t1,4(a5)
.LVL37:
	.loc 1 39 5
	bgtu	a4,t1,.L25
.LVL38:
.L86:
.LBE43:
.LBE42:
.LBE51:
.LBE56:
.LBE62:
.LBB63:
.LBB33:
	.loc 1 99 2 is_stmt 1
	.loc 1 100 3
	.loc 1 100 15 is_stmt 0
	sw	a7,0(a5)
	.loc 1 101 3 is_stmt 1
.LVL39:
.LBE33:
.LBE63:
	.loc 1 309 5
.L55:
	.loc 1 201 13 is_stmt 0
	li	a0,-1
.LVL40:
	j	.L1
.LVL41:
.L25:
.LBB64:
.LBB57:
.LBB52:
.LBB45:
.LBB44:
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	a7,t1,1
.LVL42:
	sw	a7,4(a5)
	.loc 1 42 15
	slli	a7,t1,4
	.loc 1 42 6
	add	a7,a3,a7
.LVL43:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	sw	a6,8(a7)
	.loc 1 43 13
	sw	a6,4(a7)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(a7)
	.loc 1 48 2 is_stmt 1
.LVL44:
.LBE44:
.LBE45:
	.loc 1 132 4
	.loc 1 136 4
	lw	t1,0(a5)
.LVL45:
.LBB46:
.LBB47:
	.loc 1 56 2
	.loc 1 56 14 is_stmt 0
	li	t3,3
	sb	t3,0(a7)
	.loc 1 57 2 is_stmt 1
	.loc 1 57 15 is_stmt 0
	sw	s4,4(a7)
	.loc 1 58 2 is_stmt 1
	.loc 1 58 13 is_stmt 0
	sw	t1,8(a7)
	.loc 1 59 2 is_stmt 1
.LVL46:
.LBE47:
.LBE46:
	.loc 1 140 4
.LBE52:
.LBE57:
.LBE64:
	.loc 1 263 5
.L48:
	.loc 1 310 5
	.loc 1 311 15 is_stmt 0
	lw	a7,8(a5)
	.loc 1 310 10
	addi	a0,a0,1
.LVL47:
	.loc 1 311 5 is_stmt 1
	.loc 1 311 8 is_stmt 0
	beq	a7,a6,.L5
	.loc 1 311 32 discriminator 1
	beq	a3,zero,.L5
	.loc 1 312 6 is_stmt 1
	.loc 1 312 12 is_stmt 0
	slli	a7,a7,4
	add	a7,a3,a7
	.loc 1 312 35
	lw	t1,12(a7)
	addi	t1,t1,1
	sw	t1,12(a7)
	j	.L5
.LVL48:
.L23:
.LBB65:
.LBB58:
.LBB53:
	.loc 1 144 3 is_stmt 1
	.loc 1 144 6 is_stmt 0
	bne	t1,s6,.L26
	addi	t1,t3,1
.LVL49:
	.loc 1 144 17
	bleu	a2,t1,.L26
.LBB48:
	.loc 1 145 4 is_stmt 1
	.loc 1 146 4
	.loc 1 146 15 is_stmt 0
	sw	t1,0(a5)
	.loc 1 147 4 is_stmt 1
	.loc 1 147 14 is_stmt 0
	add	t1,a1,t1
	lbu	t1,0(t1)
	.loc 1 147 4
	beq	t1,s7,.L26
	bgtu	t1,s7,.L27
	beq	t1,s9,.L26
	bgtu	t1,s9,.L28
	bne	t1,s5,.L89
.L26:
.LBE48:
.LBE53:
	.loc 1 123 66
	lw	t1,0(a5)
	addi	t1,t1,1
	sw	t1,0(a5)
	j	.L22
.L28:
.LBB54:
.LBB49:
	.loc 1 147 4
	beq	t1,s6,.L26
	beq	t1,s11,.L26
.LVL50:
.L89:
.LBE49:
.LBE54:
.LBE58:
.LBE65:
.LBB66:
.LBB34:
	.loc 1 83 4 is_stmt 1
	.loc 1 83 16 is_stmt 0
	sw	a7,0(a5)
	.loc 1 84 4 is_stmt 1
.LVL51:
.LBE34:
.LBE66:
	.loc 1 309 5
	j	.L59
.LVL52:
.L27:
.LBB67:
.LBB59:
.LBB55:
.LBB50:
	.loc 1 147 4 is_stmt 0
	beq	t1,s8,.L26
	bgtu	t1,s8,.L30
	bne	t1,s10,.L89
	j	.L26
.L30:
	li	s1,116
	beq	t1,s1,.L26
	li	s1,117
	bne	t1,s1,.L89
	.loc 1 154 6 is_stmt 1
	.loc 1 154 17 is_stmt 0
	addi	t3,t3,2
	sw	t3,0(a5)
	.loc 1 155 6 is_stmt 1
.LVL53:
	.loc 1 154 17 is_stmt 0
	li	s1,4
.LVL54:
.L31:
	.loc 1 155 32
	lw	t3,0(a5)
	.loc 1 155 23
	bleu	a2,t3,.L33
	.loc 1 155 49
	add	t1,a1,t3
	lbu	t1,0(t1)
	.loc 1 155 44
	beq	t1,zero,.L33
	.loc 1 157 7 is_stmt 1
	.loc 1 157 35 is_stmt 0
	addi	s2,t1,-48
	.loc 1 157 9
	andi	s2,s2,0xff
	bleu	s2,s3,.L32
	.loc 1 157 61
	andi	t1,t1,-33
	addi	t1,t1,-65
	andi	t1,t1,0xff
	li	s2,5
	bgtu	t1,s2,.L89
.L32:
	.loc 1 163 7 is_stmt 1
	.loc 1 163 18 is_stmt 0
	addi	t3,t3,1
	sw	t3,0(a5)
.LVL55:
	addi	s1,s1,-1
.LVL56:
	.loc 1 155 6
	bne	s1,zero,.L31
.LVL57:
.L33:
	.loc 1 165 6 is_stmt 1
	.loc 1 165 17 is_stmt 0
	lw	t1,0(a5)
	addi	t1,t1,-1
	sw	t1,0(a5)
	.loc 1 166 6 is_stmt 1
	j	.L26
.LVL58:
.L3:
.LBE50:
.LBE55:
.LBE59:
.LBE67:
	.loc 1 274 5
	.loc 1 274 8 is_stmt 0
	beq	a3,zero,.L5
	.loc 1 274 32 discriminator 1
	lw	a7,8(a5)
	.loc 1 274 23 discriminator 1
	beq	a7,a6,.L5
	.loc 1 275 31 discriminator 2
	slli	a7,a7,4
	add	a7,a3,a7
	.loc 1 275 51 discriminator 2
	lbu	a7,0(a7)
	addi	a7,a7,-1
	andi	a7,a7,0xff
	bleu	a7,t5,.L5
	.loc 1 280 6 is_stmt 1
	.loc 1 280 21 is_stmt 0
	lw	a7,4(a5)
	.loc 1 280 31
	addi	t3,a7,-1
.LVL59:
	slli	a7,a7,4
	add	a7,a3,a7
.LVL60:
.L37:
	.loc 1 280 6 discriminator 1
	blt	t3,zero,.L5
	.loc 1 281 7 is_stmt 1
	.loc 1 281 40 is_stmt 0
	lbu	t1,-16(a7)
	addi	t1,t1,-1
	.loc 1 281 10
	andi	t1,t1,0xff
	bgtu	t1,t5,.L38
	.loc 1 282 8 is_stmt 1
	.loc 1 282 11 is_stmt 0
	lw	t1,-12(a7)
	beq	t1,a6,.L38
	.loc 1 282 34 discriminator 1
	lw	t1,-8(a7)
	bne	t1,a6,.L38
	.loc 1 283 9 is_stmt 1
	.loc 1 283 26 is_stmt 0
	sw	t3,8(a5)
	.loc 1 284 9 is_stmt 1
	j	.L5
.L38:
	.loc 1 280 45 is_stmt 0 discriminator 2
	addi	t3,t3,-1
.LVL61:
	addi	a7,a7,-16
	j	.L37
.LVL62:
.L41:
.LBB68:
.LBB35:
	.loc 1 73 3
	beq	t1,t0,.L40
	bgtu	t1,t0,.L43
	beq	t1,t4,.L40
.L42:
	.loc 1 82 3 is_stmt 1
	.loc 1 82 28 is_stmt 0
	addi	t1,t1,-32
	.loc 1 82 6
	andi	t1,t1,0xff
	li	s2,94
	bgtu	t1,s2,.L89
	.loc 1 72 66
	addi	t3,t3,1
	sw	t3,0(a5)
.L45:
	.loc 1 72 15
	lw	t3,0(a5)
	.loc 1 72 2
	bleu	a2,t3,.L40
	.loc 1 72 32
	add	t1,a1,t3
	lbu	t1,0(t1)
	.loc 1 72 27
	beq	t1,zero,.L40
	.loc 1 73 3 is_stmt 1
	beq	t1,t6,.L40
	bgtu	t1,t6,.L41
	bltu	t1,s3,.L42
	li	s2,10
	bleu	t1,s2,.L40
	bne	t1,s1,.L42
.L40:
	.loc 1 94 2
	.loc 1 94 5 is_stmt 0
	bne	a3,zero,.L47
	.loc 1 95 3 is_stmt 1
	.loc 1 95 14 is_stmt 0
	addi	t3,t3,-1
	sw	t3,0(a5)
	.loc 1 96 3 is_stmt 1
.LVL63:
.LBE35:
.LBE68:
	.loc 1 309 5
	j	.L48
.LVL64:
.L43:
.LBB69:
.LBB36:
	.loc 1 73 3 is_stmt 0
	beq	t1,t2,.L40
	bne	t1,s0,.L42
	j	.L40
.L47:
	.loc 1 98 2 is_stmt 1
.LVL65:
.LBB28:
.LBB29:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	t1,4(a5)
	.loc 1 39 5
	bleu	a4,t1,.L86
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	t3,t1,1
	.loc 1 42 15
	slli	t1,t1,4
	.loc 1 42 31
	sw	t3,4(a5)
	.loc 1 42 6
	add	t1,a3,t1
.LVL66:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	sw	a6,8(t1)
	.loc 1 43 13
	sw	a6,4(t1)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(t1)
	.loc 1 48 2 is_stmt 1
.LVL67:
.LBE29:
.LBE28:
	.loc 1 99 2
	.loc 1 103 2
	lw	t3,0(a5)
.LVL68:
.LBB30:
.LBB31:
	.loc 1 56 2
	.loc 1 56 14 is_stmt 0
	li	s1,4
	sb	s1,0(t1)
	.loc 1 57 2 is_stmt 1
	.loc 1 57 15 is_stmt 0
	sw	a7,4(t1)
	.loc 1 58 2 is_stmt 1
	.loc 1 58 13 is_stmt 0
	sw	t3,8(t1)
	.loc 1 59 2 is_stmt 1
.LVL69:
.LBE31:
.LBE30:
	.loc 1 107 2
	.loc 1 107 13 is_stmt 0
	lw	a7,0(a5)
	addi	a7,a7,-1
	sw	a7,0(a5)
	.loc 1 108 2 is_stmt 1
.LVL70:
.LBE36:
.LBE69:
	.loc 1 309 5
	j	.L48
.LVL71:
.L54:
.LBE72:
	.loc 1 326 4
	.loc 1 326 7 is_stmt 0
	lw	a2,-12(a3)
	beq	a2,a5,.L53
	.loc 1 326 30 discriminator 1
	lw	a2,-8(a3)
	beq	a2,a5,.L60
.L53:
	.loc 1 324 42 discriminator 2
	addi	a4,a4,-1
.LVL72:
	addi	a3,a3,-16
	j	.L52
	.cfi_endproc
.LFE4:
	.size	jsmn_parse, .-jsmn_parse
	.section	.text.jsmn_init,"ax",@progbits
	.align	1
	.globl	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LFB5:
	.loc 1 339 37 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 340 2
	.loc 1 342 19 is_stmt 0
	li	a5,-1
	.loc 1 340 14
	sw	zero,0(a0)
	.loc 1 341 2 is_stmt 1
	.loc 1 341 18 is_stmt 0
	sw	zero,4(a0)
	.loc 1 342 2 is_stmt 1
	.loc 1 342 19 is_stmt 0
	sw	a5,8(a0)
	.loc 1 343 1
	ret
	.cfi_endproc
.LFE5:
	.size	jsmn_init, .-jsmn_init
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x59a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x108
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x6c
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x6c
	.byte	0x6
	.4byte	.LASF1
	.byte	0
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x6
	.4byte	.LASF5
	.byte	0x4
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x35
	.byte	0x3
	.4byte	0x3f
	.byte	0x7
	.4byte	.LASF33
	.byte	0x5
	.byte	0x1
	.4byte	0xa4
	.byte	0x3
	.byte	0x37
	.byte	0x6
	.4byte	0xa4
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7f
	.byte	0x8
	.4byte	.LASF10
	.byte	0x7e
	.byte	0x8
	.4byte	.LASF11
	.byte	0x7d
	.byte	0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x9
	.byte	0x10
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.4byte	0xe9
	.byte	0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x47
	.byte	0xd
	.4byte	0x73
	.byte	0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x48
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.string	"end"
	.byte	0x3
	.byte	0x49
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x4a
	.byte	0x6
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x4e
	.byte	0x3
	.4byte	0xab
	.byte	0x9
	.byte	0xc
	.byte	0x3
	.byte	0x54
	.byte	0x9
	.4byte	0x126
	.byte	0xb
	.string	"pos"
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x56
	.byte	0xf
	.4byte	0x38
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x58
	.byte	0x3
	.4byte	0xf5
	.byte	0xc
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x153
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x159
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x153
	.byte	0x1d
	.4byte	0x159
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x126
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb5
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x41f
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb5
	.byte	0x1d
	.4byte	0x159
	.4byte	.LLST0
	.byte	0x11
	.string	"js"
	.byte	0x1
	.byte	0xb5
	.byte	0x31
	.4byte	0x41f
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.byte	0x3c
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x431
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb6
	.byte	0x23
	.4byte	0x38
	.4byte	.LLST3
	.byte	0x13
	.string	"r"
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.4byte	0x431
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.byte	0x13
	.string	"c"
	.byte	0x1
	.byte	0xbd
	.byte	0x8
	.4byte	0x425
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF13
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x73
	.4byte	.LLST9
	.byte	0x16
	.4byte	0x4b4
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x134
	.byte	0x9
	.4byte	0x2e5
	.byte	0x17
	.4byte	0x4f4
	.byte	0x17
	.4byte	0x4e8
	.byte	0x17
	.4byte	0x4dc
	.byte	0x17
	.4byte	0x4d1
	.byte	0x17
	.4byte	0x4c5
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x18
	.4byte	0x500
	.4byte	.LLST10
	.byte	0x19
	.4byte	0x50c
	.byte	0x1a
	.4byte	0x518
	.4byte	.L40
	.byte	0x1b
	.4byte	0x55f
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.4byte	0x2b2
	.byte	0x1c
	.4byte	0x56c
	.4byte	.LLST11
	.byte	0x1c
	.4byte	0x584
	.4byte	.LLST12
	.byte	0x1c
	.4byte	0x578
	.4byte	.LLST13
	.byte	0x1d
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x18
	.4byte	0x590
	.4byte	.LLST14
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x521
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x1c
	.4byte	0x552
	.4byte	.LLST15
	.byte	0x17
	.4byte	0x546
	.byte	0x1c
	.4byte	0x53a
	.4byte	.LLST16
	.byte	0x1c
	.4byte	0x52e
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	0x437
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x106
	.byte	0x9
	.4byte	0x3de
	.byte	0x1c
	.4byte	0x477
	.4byte	.LLST18
	.byte	0x1c
	.4byte	0x46b
	.4byte	.LLST19
	.byte	0x1c
	.4byte	0x45f
	.4byte	.LLST20
	.byte	0x1c
	.4byte	0x454
	.4byte	.LLST21
	.byte	0x1c
	.4byte	0x448
	.4byte	.LLST22
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x18
	.4byte	0x483
	.4byte	.LLST23
	.byte	0x18
	.4byte	0x48f
	.4byte	.LLST24
	.byte	0x1f
	.4byte	0x49b
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x18
	.4byte	0x49c
	.4byte	.LLST25
	.byte	0x20
	.4byte	0x4a6
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x367
	.byte	0x18
	.4byte	0x4a7
	.4byte	.LLST26
	.byte	0
	.byte	0x21
	.4byte	0x55f
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x3a6
	.byte	0x1c
	.4byte	0x56c
	.4byte	.LLST27
	.byte	0x1c
	.4byte	0x584
	.4byte	.LLST28
	.byte	0x1c
	.4byte	0x578
	.4byte	.LLST29
	.byte	0x15
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x18
	.4byte	0x590
	.4byte	.LLST30
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x521
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0x88
	.byte	0x4
	.byte	0x1c
	.4byte	0x552
	.4byte	.LLST31
	.byte	0x1c
	.4byte	0x546
	.4byte	.LLST32
	.byte	0x1c
	.4byte	0x53a
	.4byte	.LLST33
	.byte	0x1c
	.4byte	0x52e
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x55f
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.byte	0x1c
	.4byte	0x56c
	.4byte	.LLST35
	.byte	0x1c
	.4byte	0x584
	.4byte	.LLST36
	.byte	0x1c
	.4byte	0x578
	.4byte	.LLST37
	.byte	0x1d
	.4byte	.LBB61
	.4byte	.LBE61-.LBB61
	.byte	0x18
	.4byte	0x590
	.4byte	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x42c
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.byte	0x22
	.4byte	0x425
	.byte	0xe
	.byte	0x4
	.4byte	0xe9
	.byte	0x23
	.4byte	.LASF26
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x4b4
	.byte	0x24
	.4byte	.LASF20
	.byte	0x1
	.byte	0x72
	.byte	0x2b
	.4byte	0x159
	.byte	0x25
	.string	"js"
	.byte	0x1
	.byte	0x72
	.byte	0x3f
	.4byte	0x41f
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0x73
	.byte	0xa
	.4byte	0x2c
	.byte	0x24
	.4byte	.LASF21
	.byte	0x1
	.byte	0x73
	.byte	0x1a
	.4byte	0x431
	.byte	0x24
	.4byte	.LASF22
	.byte	0x1
	.byte	0x73
	.byte	0x29
	.4byte	0x2c
	.byte	0x26
	.4byte	.LASF23
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x431
	.byte	0x26
	.4byte	.LASF14
	.byte	0x1
	.byte	0x76
	.byte	0x6
	.4byte	0x25
	.byte	0x27
	.byte	0x28
	.string	"c"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.4byte	0x425
	.byte	0x27
	.byte	0x28
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF27
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x521
	.byte	0x24
	.4byte	.LASF20
	.byte	0x1
	.byte	0x41
	.byte	0x2e
	.4byte	0x159
	.byte	0x25
	.string	"js"
	.byte	0x1
	.byte	0x41
	.byte	0x42
	.4byte	0x41f
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x2c
	.byte	0x24
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.byte	0x1a
	.4byte	0x431
	.byte	0x24
	.4byte	.LASF22
	.byte	0x1
	.byte	0x42
	.byte	0x29
	.4byte	0x2c
	.byte	0x26
	.4byte	.LASF23
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x431
	.byte	0x26
	.4byte	.LASF14
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	0x25
	.byte	0x29
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0
	.byte	0x2a
	.4byte	.LASF28
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.byte	0x1
	.4byte	0x55f
	.byte	0x24
	.4byte	.LASF23
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.4byte	0x431
	.byte	0x24
	.4byte	.LASF13
	.byte	0x1
	.byte	0x36
	.byte	0x3a
	.4byte	0x73
	.byte	0x24
	.4byte	.LASF14
	.byte	0x1
	.byte	0x37
	.byte	0x21
	.4byte	0x25
	.byte	0x25
	.string	"end"
	.byte	0x1
	.byte	0x37
	.byte	0x2c
	.4byte	0x25
	.byte	0
	.byte	0x2b
	.4byte	.LASF29
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x431
	.byte	0x1
	.byte	0x24
	.4byte	.LASF20
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.4byte	0x159
	.byte	0x24
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x431
	.byte	0x24
	.4byte	.LASF22
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.4byte	0x2c
	.byte	0x28
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x431
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
	.byte	0x4
	.byte	0x1
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x5
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
	.byte	0xd
	.byte	0x5
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
	.byte	0x18
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
	.byte	0xa
	.byte	0
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
	.byte	0x2a
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL71
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x81
	.byte	0x10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL65
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL52
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x5
	.byte	0x34
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x35
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x5
	.byte	0x34
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL41
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x61
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/aws-iot"
.LASF7:
	.string	"size_t"
.LASF31:
	.string	"/b-l/bl_iot_sdk/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.c"
.LASF18:
	.string	"toksuper"
.LASF24:
	.string	"count"
.LASF2:
	.string	"JSMN_OBJECT"
.LASF14:
	.string	"start"
.LASF17:
	.string	"toknext"
.LASF29:
	.string	"jsmn_alloc_token"
.LASF35:
	.string	"jsmn_parse"
.LASF6:
	.string	"unsigned char"
.LASF1:
	.string	"JSMN_UNDEFINED"
.LASF27:
	.string	"jsmn_parse_primitive"
.LASF3:
	.string	"JSMN_ARRAY"
.LASF16:
	.string	"jsmntok_t"
.LASF8:
	.string	"jsmntype_t"
.LASF34:
	.string	"jsmn_init"
.LASF20:
	.string	"parser"
.LASF10:
	.string	"JSMN_ERROR_INVAL"
.LASF0:
	.string	"unsigned int"
.LASF21:
	.string	"tokens"
.LASF4:
	.string	"JSMN_STRING"
.LASF22:
	.string	"num_tokens"
.LASF36:
	.string	"found"
.LASF28:
	.string	"jsmn_fill_token"
.LASF13:
	.string	"type"
.LASF19:
	.string	"jsmn_parser"
.LASF33:
	.string	"jsmnerr"
.LASF30:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF23:
	.string	"token"
.LASF25:
	.string	"char"
.LASF26:
	.string	"jsmn_parse_string"
.LASF12:
	.string	"signed char"
.LASF9:
	.string	"JSMN_ERROR_NOMEM"
.LASF15:
	.string	"size"
.LASF11:
	.string	"JSMN_ERROR_PART"
.LASF5:
	.string	"JSMN_PRIMITIVE"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
