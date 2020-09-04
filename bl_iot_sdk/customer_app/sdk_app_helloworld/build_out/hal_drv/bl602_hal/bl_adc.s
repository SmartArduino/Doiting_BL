	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB33:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
	.loc 1 226 1
	.cfi_startproc
	.loc 1 227 5
	.loc 1 229 5
	.loc 1 226 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 229 14
	li	a0,1
	.loc 1 226 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 229 14
	call	bl_dma_find_ctx_by_channel
.LVL0:
	.loc 1 230 5 is_stmt 1
	.loc 1 230 8 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 235 5 is_stmt 1
	.loc 1 235 8 is_stmt 0
	lw	a4,8(a0)
	lw	a5,4(a0)
	bne	a4,zero,.L3
	.loc 1 236 9 is_stmt 1
	.loc 1 236 30 is_stmt 0
	lw	a5,4(a5)
	sw	a5,0(a0)
	.loc 1 237 9 is_stmt 1
	.loc 1 237 26 is_stmt 0
	li	a5,1
	sw	a5,8(a0)
.L1:
	.loc 1 244 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L3:
	.cfi_restore_state
	.loc 1 239 9 is_stmt 1
	.loc 1 239 30 is_stmt 0
	lw	a5,20(a5)
	.loc 1 240 26
	sw	zero,8(a0)
	.loc 1 239 30
	sw	a5,0(a0)
	.loc 1 240 9 is_stmt 1
	j	.L1
	.cfi_endproc
.LFE33:
	.size	adc_data_update, .-adc_data_update
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LFB27:
	.loc 1 78 1
	.cfi_startproc
.LVL1:
	.loc 1 79 5
	mv	a2,a0
	li	a1,0
	li	a0,1
.LVL2:
	tail	GLB_Set_ADC_CLK
.LVL3:
	.cfi_endproc
.LFE27:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB28:
	.loc 1 84 1
	.cfi_startproc
	.loc 1 85 5
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 85 5
	call	ADC_SET_TSVBE_LOW
.LVL4:
	.loc 1 86 5 is_stmt 1
	call	ADC_Start
.LVL5:
	.loc 1 87 5
	li	a0,100
	call	BL602_Delay_MS
.LVL6:
	.loc 1 88 5
.L10:
	.loc 1 88 37 discriminator 1
	.loc 1 88 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL7:
	.loc 1 88 10 discriminator 1
	beq	a0,zero,.L10
	.loc 1 89 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL8:
	.loc 1 91 5
	call	ADC_SET_TSVBE_HIGH
.LVL9:
	.loc 1 92 5
	call	ADC_Start
.LVL10:
	.loc 1 93 5
	li	a0,100
	call	BL602_Delay_MS
.LVL11:
	.loc 1 94 5
.L11:
	.loc 1 94 37 discriminator 1
	.loc 1 94 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL12:
	.loc 1 94 10 discriminator 1
	beq	a0,zero,.L11
	.loc 1 95 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL13:
	.loc 1 97 5
	.loc 1 98 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 97 5
	tail	ADC_SET_TSVBE_LOW
.LVL14:
	.cfi_endproc
.LFE28:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB30:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
	.loc 1 156 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 156 5
	li	a0,2
	.loc 1 155 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 156 5
	call	ADC_Clock_Init
.LVL15:
	.loc 1 158 5 is_stmt 1
	call	ADC_Reset
.LVL16:
	.loc 1 160 5
	call	ADC_Disable
.LVL17:
	.loc 1 161 5
	call	ADC_Enable
.LVL18:
	.loc 1 163 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL19:
	.loc 1 164 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL20:
	.loc 1 165 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL21:
	.loc 1 167 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL22:
	.loc 1 168 5
	call	TSEN_Calibration
.LVL23:
	.loc 1 170 5
	.loc 1 171 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	test_adc_init, .-test_adc_init
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__truncdfsf2
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LFB31:
	.loc 1 174 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 175 5
	.loc 1 176 5
	.loc 1 174 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 203 21
	lui	a5,%hi(.LC0)
	.loc 1 174 1
	fsw	fs0,28(sp)
	.cfi_offset 40, -36
	.loc 1 203 21
	flw	fs0,%lo(.LC0)(a5)
	.loc 1 204 31
	lui	a5,%hi(.LC1)
	.loc 1 174 1
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 204 31
	lw	s4,%lo(.LC1)(a5)
	lw	s5,%lo(.LC1+4)(a5)
	.loc 1 174 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 174 1
	mv	s3,a0
	.loc 1 176 14
	sw	zero,4(sp)
	.loc 1 177 5 is_stmt 1
.LVL25:
	.loc 1 178 5
	.loc 1 179 5
	.loc 1 181 5
	.loc 1 178 19 is_stmt 0
	li	s2,0
	.loc 1 178 14
	li	s1,0
	.loc 1 181 12
	li	s0,0
.LVL26:
.L26:
	.loc 1 182 9 is_stmt 1
	call	ADC_Start
.LVL27:
	.loc 1 184 9
.L20:
	.loc 1 184 15 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL28:
	.loc 1 184 14
	beq	a0,zero,.L21
.L24:
	.loc 1 189 9 is_stmt 1
	.loc 1 190 13
	.loc 1 190 22 is_stmt 0
	call	ADC_Read_FIFO
.LVL29:
	.loc 1 190 20
	sw	a0,4(sp)
	.loc 1 191 13 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL30:
	.loc 1 193 13
	lhu	a5,10(sp)
	.loc 1 193 15 is_stmt 0
	bne	s0,zero,.L22
	.loc 1 194 17 is_stmt 1
	.loc 1 194 20 is_stmt 0
	mv	s1,a5
.LVL31:
.L23:
	.loc 1 198 17
	call	ADC_Get_FIFO_Count
.LVL32:
	.loc 1 198 9
	bne	a0,zero,.L24
	.loc 1 200 9 is_stmt 1
	.loc 1 200 12 is_stmt 0
	beq	s0,zero,.L25
	.loc 1 201 13 is_stmt 1
	.loc 1 201 35 is_stmt 0
	fcvt.s.wu	fa5,s2
	.loc 1 201 23
	fcvt.s.w	fa0,s1
	.loc 1 201 21
	fsub.s	fa0,fa0,fa5
.LVL33:
	.loc 1 203 13 is_stmt 1
	.loc 1 204 13
	.loc 1 204 31 is_stmt 0
	fsub.s	fa0,fa0,fs0
.LVL34:
	call	__extendsfdf2
.LVL35:
	mv	a2,s4
	mv	a3,s5
	call	__divdf3
.LVL36:
	.loc 1 207 13 is_stmt 1
	.loc 1 204 21 is_stmt 0
	call	__truncdfsf2
.LVL37:
	.loc 1 207 20
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s3)
	.loc 1 209 9 is_stmt 1
	.loc 1 212 13
	call	ADC_SET_TSVBE_LOW
.LVL38:
.L27:
	.loc 1 181 5 is_stmt 0 discriminator 2
	beq	s0,zero,.L28
	.loc 1 216 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL39:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL40:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL41:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL42:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L28:
	.cfi_restore_state
	li	s0,1
.LVL44:
	j	.L26
.LVL45:
.L21:
.LBB2:
	.loc 1 185 13 is_stmt 1
	.loc 1 186 13
	li	a0,1
	call	aos_msleep
.LVL46:
	j	.L20
.L22:
.LBE2:
	.loc 1 196 17
	.loc 1 196 20 is_stmt 0
	mv	s2,a5
.LVL47:
	j	.L23
.L25:
	.loc 1 209 9 is_stmt 1
	.loc 1 210 13
	call	ADC_SET_TSVBE_HIGH
.LVL48:
	j	.L27
	.cfi_endproc
.LFE31:
	.size	test_adc_get, .-test_adc_get
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB32:
	.loc 1 219 1
	.cfi_startproc
	.loc 1 220 5
.LBB5:
.LBB6:
	.loc 1 102 2
	.loc 1 103 2
.LBE6:
.LBE5:
	.loc 1 219 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
.LBB9:
.LBB7:
	.loc 1 103 11
	sw	zero,4(sp)
	.loc 1 104 5 is_stmt 1
.LVL49:
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 108 5
	call	ADC_Reset
.LVL50:
	.loc 1 110 5
	call	ADC_Disable
.LVL51:
	.loc 1 111 5
	call	ADC_Enable
.LVL52:
	.loc 1 113 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL53:
	.loc 1 114 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL54:
	.loc 1 115 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL55:
	.loc 1 117 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL56:
	.loc 1 118 5
	.loc 1 120 7 is_stmt 0
	li	s0,0
	.loc 1 118 5
	call	TSEN_Calibration
.LVL57:
	.loc 1 120 2 is_stmt 1
	li	s1,40
.LVL58:
.L37:
	.loc 1 121 3
	call	ADC_Start
.LVL59:
	.loc 1 123 3
.L33:
	.loc 1 123 35
	.loc 1 123 9 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL60:
	.loc 1 123 8
	beq	a0,zero,.L33
.L34:
	.loc 1 125 3 is_stmt 1
	.loc 1 126 4
	.loc 1 126 13 is_stmt 0
	call	ADC_Read_FIFO
.LVL61:
	.loc 1 126 11
	sw	a0,4(sp)
	.loc 1 127 4 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL62:
	.loc 1 129 13
	.loc 1 132 17
	.loc 1 134 10 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL63:
	.loc 1 134 3
	bne	a0,zero,.L34
	.loc 1 136 9 is_stmt 1
	.loc 1 140 13
	.loc 1 142 13
	.loc 1 144 9
	.loc 1 144 11 is_stmt 0
	andi	a5,s0,1
	bne	a5,zero,.L35
	.loc 1 145 13 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL64:
.L36:
	.loc 1 149 3
	.loc 1 120 16 is_stmt 0
	addi	s0,s0,1
.LVL65:
	.loc 1 149 3
	li	a0,500
	.loc 1 120 16
	andi	s0,s0,0xff
	.loc 1 149 3
	call	BL602_Delay_MS
.LVL66:
	.loc 1 120 2
	bne	s0,s1,.L37
.LVL67:
.LBE7:
.LBE9:
	.loc 1 221 5 is_stmt 1
	.loc 1 222 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L35:
	.cfi_restore_state
.LBB10:
.LBB8:
	.loc 1 147 13 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL69:
	j	.L36
.LBE8:
.LBE10:
	.cfi_endproc
.LFE32:
	.size	test_adc_test, .-test_adc_test
	.section	.text.bl_adc_clock_init,"ax",@progbits
	.align	1
	.globl	bl_adc_clock_init
	.type	bl_adc_clock_init, @function
bl_adc_clock_init:
.LFB34:
	.loc 1 248 1
	.cfi_startproc
.LVL70:
	.loc 1 249 5
	.loc 1 251 5
	.loc 1 252 5
	.loc 1 251 40 is_stmt 0
	li	a2,406
	mul	a2,a0,a2
	.loc 1 251 9
	li	a0,1000
.LVL71:
	.loc 1 248 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 252 5
	li	a1,1
	.loc 1 248 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 251 9
	div	a2,a2,a0
.LVL72:
	.loc 1 252 5
	li	a0,1
	addi	a2,a2,-1
.LVL73:
	andi	a2,a2,0xff
.LVL74:
	call	GLB_Set_ADC_CLK
.LVL75:
	.loc 1 254 5 is_stmt 1
	.loc 1 255 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	bl_adc_clock_init, .-bl_adc_clock_init
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LFB35:
	.loc 1 258 1 is_stmt 1
	.cfi_startproc
	.loc 1 259 5
	.loc 1 260 5
	.loc 1 261 5
	.loc 1 262 5
	.loc 1 263 5
	.loc 1 265 5
	.loc 1 266 5
	.loc 1 267 5
	.loc 1 268 5
	.loc 1 269 5
	.loc 1 270 5
	.loc 1 271 5
	.loc 1 272 5
	.loc 1 273 5
	.loc 1 274 5
	.loc 1 275 5
	.loc 1 276 5
	.loc 1 277 5
	.loc 1 265 18 is_stmt 0
	li	a5,458752
	.loc 1 258 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 265 18
	addi	a5,a5,258
	sw	a5,32(sp)
	.loc 1 273 16
	li	a5,262144
	sw	a5,40(sp)
	.loc 1 258 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 269 17
	sw	zero,36(sp)
	.loc 1 277 26
	sh	zero,44(sp)
	.loc 1 279 5 is_stmt 1
	call	ADC_Disable
.LVL76:
	.loc 1 280 5
	call	ADC_Enable
.LVL77:
	.loc 1 281 5
	call	ADC_Reset
.LVL78:
	.loc 1 283 5
	addi	a0,sp,32
	call	ADC_Init
.LVL79:
	.loc 1 285 5
	.loc 1 285 12 is_stmt 0
	li	a5,0
	.loc 1 287 30
	li	a2,23
	.loc 1 285 5
	li	a4,12
.LVL80:
.L46:
	.loc 1 286 9 is_stmt 1 discriminator 3
	.loc 1 286 30 is_stmt 0 discriminator 3
	addi	a3,sp,8
	add	a3,a3,a5
	sb	a5,0(a3)
	.loc 1 287 9 is_stmt 1 discriminator 3
	.loc 1 287 30 is_stmt 0 discriminator 3
	addi	a3,sp,20
	add	a3,a3,a5
	sb	a2,0(a3)
	.loc 1 285 26 discriminator 3
	addi	a5,a5,1
.LVL81:
	.loc 1 285 5 discriminator 3
	bne	a5,a4,.L46
	.loc 1 289 5 is_stmt 1
	addi	a1,sp,20
	addi	a0,sp,8
	li	a3,1
	li	a2,12
	call	ADC_Scan_Channel_Config
.LVL82:
	.loc 1 291 5
	.loc 1 292 5
	.loc 1 293 5 is_stmt 0
	addi	a0,sp,4
	.loc 1 291 32
	li	a5,257
	sh	a5,4(sp)
	.loc 1 293 5 is_stmt 1
	call	ADC_FIFO_Cfg
.LVL83:
	.loc 1 295 5
	.loc 1 296 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	bl_adc_init, .-bl_adc_init
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LFB37:
	.loc 1 327 1 is_stmt 1
	.cfi_startproc
	.loc 1 328 5
	.loc 1 329 5
	.loc 1 330 5
	.loc 1 331 5
	.loc 1 333 5
	.loc 1 327 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 333 14
	li	a0,16
	.loc 1 327 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 333 14
	call	pvPortMalloc
.LVL84:
	.loc 1 334 5 is_stmt 1
	.loc 1 334 8 is_stmt 0
	bne	a0,zero,.L50
.LVL85:
.L52:
	.loc 1 337 16
	li	a0,-1
.L49:
	.loc 1 370 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL86:
.L50:
	.cfi_restore_state
	mv	s1,a0
	.loc 1 340 5 is_stmt 1
	.loc 1 340 14 is_stmt 0
	li	a0,32
.LVL87:
	call	pvPortMalloc
.LVL88:
	mv	s0,a0
.LVL89:
	.loc 1 341 5 is_stmt 1
	.loc 1 341 8 is_stmt 0
	beq	a0,zero,.L52
	.loc 1 347 5 is_stmt 1
	.loc 1 347 14 is_stmt 0
	li	a0,96
	call	pvPortMalloc
.LVL90:
	mv	s2,a0
.LVL91:
	.loc 1 349 5 is_stmt 1
	.loc 1 349 8 is_stmt 0
	beq	a0,zero,.L52
	.loc 1 355 5 is_stmt 1
	.loc 1 356 5
	.loc 1 357 5
	.loc 1 355 16 is_stmt 0
	li	a5,4096
	addi	a5,a5,1538
	.loc 1 358 5
	li	a0,1
.LVL92:
	.loc 1 355 16
	sh	a5,12(sp)
	.loc 1 357 22
	sb	zero,14(sp)
	.loc 1 358 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL93:
	.loc 1 360 5
.LBB13:
.LBB14:
	.loc 1 300 5
	.loc 1 302 5
	.loc 1 303 5
	.loc 1 304 5
	.loc 1 305 5
	.loc 1 306 5
	.loc 1 307 5
	.loc 1 308 5
	.loc 1 309 5
	.loc 1 310 5
	.loc 1 311 5
	.loc 1 313 5
	.loc 1 316 22 is_stmt 0
	lw	a4,12(s0)
	.loc 1 315 35
	addi	a5,s0,16
	.loc 1 315 23
	sw	a5,8(s0)
	.loc 1 316 22
	li	a3,-2008510464
	li	a5,33554432
	addi	a3,a3,12
	and	a4,a5,a4
	or	a4,a4,a3
	sw	a4,12(s0)
	.loc 1 321 22
	lw	a4,28(s0)
	.loc 1 313 26
	li	a2,1073750016
	addi	a2,a2,4
	.loc 1 321 22
	and	a5,a5,a4
	or	a5,a5,a3
	.loc 1 314 27
	sw	s2,4(s0)
	.loc 1 319 39
	addi	s2,s2,48
.LVL94:
	.loc 1 313 26
	sw	a2,0(s0)
	.loc 1 314 5 is_stmt 1
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 318 5
	.loc 1 318 26 is_stmt 0
	sw	a2,16(s0)
	.loc 1 319 5 is_stmt 1
	.loc 1 321 22 is_stmt 0
	sw	a5,28(s0)
.LBE14:
.LBE13:
	.loc 1 361 5
	addi	a1,sp,12
	li	a0,1
.LBB16:
.LBB15:
	.loc 1 319 27
	sw	s2,20(s0)
	.loc 1 320 5 is_stmt 1
	.loc 1 320 23 is_stmt 0
	sw	s0,24(s0)
	.loc 1 321 5 is_stmt 1
	.loc 1 323 5
.LVL95:
.LBE15:
.LBE16:
	.loc 1 361 5
	call	DMA_LLI_Init
.LVL96:
	.loc 1 362 5
	mv	a1,s0
	li	a0,1
	call	DMA_LLI_Update
.LVL97:
	.loc 1 364 5
	.loc 1 367 5 is_stmt 0
	lui	a1,%hi(adc_data_update)
	.loc 1 364 21
	sw	s0,4(s1)
	.loc 1 365 5 is_stmt 1
	.loc 1 365 22 is_stmt 0
	sw	zero,8(s1)
	.loc 1 366 5 is_stmt 1
	.loc 1 366 29 is_stmt 0
	sw	zero,12(s1)
	.loc 1 367 5 is_stmt 1
	mv	a3,s1
	li	a2,0
	addi	a1,a1,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
.LVL98:
	.loc 1 369 5
	.loc 1 369 12 is_stmt 0
	li	a0,0
	j	.L49
	.cfi_endproc
.LFE37:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB38:
	.loc 1 373 1 is_stmt 1
	.cfi_startproc
	.loc 1 374 5
	.loc 1 373 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 374 5
	li	a2,1
	li	a1,2
	li	a0,1
	.loc 1 373 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 374 5
	call	DMA_IntMask
.LVL99:
	.loc 1 375 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
.LVL100:
	.loc 1 376 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	DMA_IntMask
.LVL101:
	.loc 1 378 5
	call	ADC_Start
.LVL102:
	.loc 1 379 5
	call	DMA_Enable
.LVL103:
	.loc 1 380 5
	li	a0,1
	call	DMA_Channel_Enable
.LVL104:
	.loc 1 382 5
	.loc 1 383 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE38:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LFB39:
	.loc 1 386 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 387 5
	.loc 1 386 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 387 13
	sb	a0,15(sp)
	.loc 1 389 5 is_stmt 1
	addi	a1,sp,15
	li	a2,1
	li	a0,10
.LVL106:
	.loc 1 386 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 389 5
	call	GLB_GPIO_Func_Init
.LVL107:
	.loc 1 391 5 is_stmt 1
	.loc 1 392 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LFB40:
	.loc 1 395 1 is_stmt 1
	.cfi_startproc
.LVL108:
	.loc 1 396 5
	.loc 1 397 5
	.loc 1 399 5
	.loc 1 395 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 395 1
	mv	s2,a2
	mv	s0,a0
	addi	s1,a0,48
.LVL109:
.L67:
	.loc 1 400 9 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	mv	a0,s0
	call	ADC_Parse_Result
.LVL110:
	.loc 1 401 9
	.loc 1 401 19 is_stmt 0
	lb	a5,8(sp)
	.loc 1 401 12
	bne	a5,s2,.L65
	.loc 1 402 13 is_stmt 1
	.loc 1 402 42 is_stmt 0
	lui	a5,%hi(.LC2)
	flw	fa5,12(sp)
	flw	fa4,%lo(.LC2)(a5)
	fmul.s	fa5,fa5,fa4
	.loc 1 402 20
	fcvt.w.s a0,fa5,rtz
.L64:
	.loc 1 407 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL111:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL112:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL113:
.L65:
	.cfi_restore_state
	addi	s0,s0,4
	.loc 1 399 5 discriminator 2
	bne	s0,s1,.L67
	.loc 1 406 12
	li	a0,-1
	j	.L64
	.cfi_endproc
.LFE40:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.globl	adcFifoCfg
	.globl	adcCfg
	.section	.data.adcCfg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adcCfg, @object
	.size	adcCfg, 14
adcCfg:
	.byte	2
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.section	.rodata.bl_adc_parse_data.cst4,"aM",@progbits,4
	.align	2
.LC2:
	.word	1148846080
	.section	.rodata.test_adc_get.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1158733824
	.section	.rodata.test_adc_get.cst8,"aM",@progbits,8
	.align	3
.LC1:
	.word	1855425872
	.word	1075774226
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 2
adcFifoCfg:
	.zero	2
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 14 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 15 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 16 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 17 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 18 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b99
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF370
	.byte	0xc
	.4byte	.LASF371
	.4byte	.LASF372
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x73
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x86
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x99
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF18
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x2c
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0x114
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0xc1
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0x114
	.byte	0
	.byte	0x8
	.4byte	0x60
	.4byte	0x124
	.byte	0x9
	.4byte	0x3a
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x148
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xf2
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0x124
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.4byte	.LASF26
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0xac
	.byte	0x4
	.4byte	.LASF27
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x162
	.byte	0xd
	.4byte	.LASF33
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1d4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1da
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x17a
	.byte	0x8
	.4byte	0x156
	.4byte	0x1ea
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF34
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x26d
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.byte	0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x2b2
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x2b2
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x2b2
	.byte	0x80
	.byte	0x11
	.4byte	.LASF47
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x156
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF48
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x156
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x154
	.4byte	0x2c2
	.byte	0x9
	.4byte	0x3a
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF49
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x305
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x305
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x30b
	.byte	0x8
	.byte	0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x26d
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c2
	.byte	0x8
	.4byte	0x31b
	.4byte	0x31b
	.byte	0x9
	.4byte	0x3a
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x321
	.byte	0x12
	.byte	0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x34a
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x34a
	.byte	0
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x60
	.byte	0xd
	.4byte	.LASF55
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x493
	.byte	0xe
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x34a
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x73
	.byte	0xc
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x73
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x322
	.byte	0x10
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x154
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x617
	.byte	0x20
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x641
	.byte	0x24
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x665
	.byte	0x28
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x67f
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x322
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x34a
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x685
	.byte	0x40
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x695
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x322
	.byte	0x44
	.byte	0xb
	.4byte	.LASF66
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF67
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0xce
	.byte	0x50
	.byte	0xb
	.4byte	.LASF68
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x4b1
	.byte	0x54
	.byte	0xb
	.4byte	.LASF69
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x16e
	.byte	0x58
	.byte	0xb
	.4byte	.LASF70
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x148
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF71
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xe6
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0x605
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x4bc
	.byte	0x15
	.4byte	0x4b1
	.byte	0x16
	.4byte	.LASF72
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x605
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6f1
	.byte	0x4
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6f1
	.byte	0x8
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6f1
	.byte	0xc
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8f1
	.byte	0x14
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x906
	.byte	0x34
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x917
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1d4
	.byte	0x40
	.byte	0x17
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.byte	0x17
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1d4
	.byte	0x48
	.byte	0x17
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x91d
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.byte	0x17
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x605
	.byte	0x54
	.byte	0x17
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8cc
	.byte	0x58
	.byte	0x18
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x305
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2c2
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x92e
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6b2
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x93a
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x60b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.byte	0x15
	.4byte	0x60b
	.byte	0xf
	.byte	0x4
	.4byte	0x493
	.byte	0x13
	.4byte	0xe6
	.4byte	0x63b
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0x63b
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x612
	.byte	0xf
	.byte	0x4
	.4byte	0x61d
	.byte	0x13
	.4byte	0xda
	.4byte	0x665
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0xda
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x647
	.byte	0x13
	.4byte	0x2c
	.4byte	0x67f
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x66b
	.byte	0x8
	.4byte	0x60
	.4byte	0x695
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x60
	.4byte	0x6a5
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x350
	.byte	0x19
	.4byte	.LASF96
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6eb
	.byte	0x17
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6eb
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6f1
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6b2
	.byte	0xf
	.byte	0x4
	.4byte	0x6a5
	.byte	0x19
	.4byte	.LASF99
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x730
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x730
	.byte	0
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x730
	.byte	0x6
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x86
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x86
	.4byte	0x740
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x855
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x3a
	.byte	0
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x605
	.byte	0x4
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x855
	.byte	0x8
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1ea
	.byte	0x24
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0xba
	.byte	0x50
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6f7
	.byte	0x58
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x148
	.byte	0x68
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x148
	.byte	0x70
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x148
	.byte	0x78
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x865
	.byte	0x80
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x875
	.byte	0x88
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x148
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x148
	.byte	0xac
	.byte	0x17
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x148
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x148
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x148
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x865
	.byte	0x9
	.4byte	0x3a
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x875
	.byte	0x9
	.4byte	0x3a
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x885
	.byte	0x9
	.4byte	0x3a
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8ac
	.byte	0x17
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8ac
	.byte	0
	.byte	0x17
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8bc
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x34a
	.4byte	0x8bc
	.byte	0x9
	.4byte	0x3a
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x3a
	.4byte	0x8cc
	.byte	0x9
	.4byte	0x3a
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8f1
	.byte	0x1c
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x740
	.byte	0x1c
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x885
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x901
	.byte	0x9
	.4byte	0x3a
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF373
	.byte	0xf
	.byte	0x4
	.4byte	0x901
	.byte	0x1e
	.4byte	0x917
	.byte	0x14
	.4byte	0x4b1
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x90c
	.byte	0xf
	.byte	0x4
	.4byte	0x1d4
	.byte	0x1e
	.4byte	0x92e
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x934
	.byte	0xf
	.byte	0x4
	.4byte	0x923
	.byte	0x8
	.4byte	0x6a5
	.4byte	0x94a
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x4b1
	.byte	0x1f
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4b7
	.byte	0x4
	.4byte	.LASF127
	.byte	0x7
	.byte	0x14
	.byte	0x12
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF128
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF129
	.byte	0x7
	.byte	0x20
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF130
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x7a
	.byte	0x4
	.4byte	.LASF131
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x8d
	.byte	0x4
	.4byte	.LASF132
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0xa0
	.byte	0x20
	.4byte	.LASF133
	.byte	0x8
	.byte	0x8
	.byte	0x11
	.4byte	0x9a0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0x9
	.byte	0x21
	.byte	0x1
	.4byte	0x9d3
	.byte	0x22
	.4byte	.LASF134
	.byte	0
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF136
	.byte	0x9
	.byte	0x24
	.byte	0x2
	.4byte	0x9b8
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0x9
	.byte	0x33
	.byte	0x1
	.4byte	0x9fa
	.byte	0x22
	.4byte	.LASF137
	.byte	0
	.byte	0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF139
	.byte	0x9
	.byte	0x7c
	.byte	0xf
	.4byte	0x321
	.byte	0x8
	.4byte	0xa11
	.4byte	0xa11
	.byte	0x23
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa17
	.byte	0xf
	.byte	0x4
	.4byte	0x9fa
	.byte	0x20
	.4byte	.LASF140
	.byte	0x9
	.byte	0x84
	.byte	0x1c
	.4byte	0xa06
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xa
	.byte	0x6f
	.byte	0x1
	.4byte	0xa74
	.byte	0x22
	.4byte	.LASF141
	.byte	0x1
	.byte	0x22
	.4byte	.LASF142
	.byte	0x2
	.byte	0x22
	.4byte	.LASF143
	.byte	0x4
	.byte	0x22
	.4byte	.LASF144
	.byte	0x6
	.byte	0x22
	.4byte	.LASF145
	.byte	0x7
	.byte	0x22
	.4byte	.LASF146
	.byte	0x8
	.byte	0x22
	.4byte	.LASF147
	.byte	0x9
	.byte	0x22
	.4byte	.LASF148
	.byte	0xa
	.byte	0x22
	.4byte	.LASF149
	.byte	0xb
	.byte	0x22
	.4byte	.LASF150
	.byte	0xe
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xb
	.byte	0xbf
	.byte	0xe
	.4byte	0xa8f
	.byte	0x22
	.4byte	.LASF151
	.byte	0
	.byte	0x22
	.4byte	.LASF152
	.byte	0x1
	.byte	0
	.byte	0x19
	.4byte	.LASF153
	.byte	0x4
	.byte	0xc
	.2byte	0x4a0
	.byte	0x10
	.4byte	0xb55
	.byte	0x24
	.4byte	.LASF154
	.byte	0xc
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x24
	.4byte	.LASF155
	.byte	0xc
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x24
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x4a3
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x24
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x4a4
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x24
	.4byte	.LASF158
	.byte	0xc
	.2byte	0x4a5
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x24
	.4byte	.LASF159
	.byte	0xc
	.2byte	0x4a6
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x24
	.4byte	.LASF160
	.byte	0xc
	.2byte	0x4a7
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x25
	.string	"SI"
	.byte	0xc
	.2byte	0x4a8
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x25
	.string	"DI"
	.byte	0xc
	.2byte	0x4a9
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x24
	.4byte	.LASF161
	.byte	0xc
	.2byte	0x4aa
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x25
	.string	"I"
	.byte	0xc
	.2byte	0x4ab
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xd
	.byte	0x49
	.byte	0xe
	.4byte	0xb76
	.byte	0x22
	.4byte	.LASF162
	.byte	0
	.byte	0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x22
	.4byte	.LASF164
	.byte	0x2
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xd
	.byte	0x52
	.byte	0xe
	.4byte	0xb9d
	.byte	0x22
	.4byte	.LASF165
	.byte	0
	.byte	0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x22
	.4byte	.LASF167
	.byte	0x2
	.byte	0x22
	.4byte	.LASF168
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF169
	.byte	0xd
	.byte	0x57
	.byte	0x2
	.4byte	0xb76
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xd
	.byte	0x5c
	.byte	0xe
	.4byte	0xbd0
	.byte	0x22
	.4byte	.LASF170
	.byte	0
	.byte	0x22
	.4byte	.LASF171
	.byte	0x1
	.byte	0x22
	.4byte	.LASF172
	.byte	0x2
	.byte	0x22
	.4byte	.LASF173
	.byte	0x3
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xd
	.byte	0x66
	.byte	0xe
	.4byte	0xc21
	.byte	0x22
	.4byte	.LASF174
	.byte	0
	.byte	0x22
	.4byte	.LASF175
	.byte	0x1
	.byte	0x22
	.4byte	.LASF176
	.byte	0x2
	.byte	0x22
	.4byte	.LASF177
	.byte	0x3
	.byte	0x22
	.4byte	.LASF178
	.byte	0x6
	.byte	0x22
	.4byte	.LASF179
	.byte	0x7
	.byte	0x22
	.4byte	.LASF180
	.byte	0xa
	.byte	0x22
	.4byte	.LASF181
	.byte	0xb
	.byte	0x22
	.4byte	.LASF182
	.byte	0x16
	.byte	0x22
	.4byte	.LASF183
	.byte	0x17
	.byte	0x22
	.4byte	.LASF184
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF185
	.byte	0xd
	.byte	0x72
	.byte	0x2
	.4byte	0xbd0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xd
	.byte	0x82
	.byte	0xe
	.4byte	0xc4e
	.byte	0x22
	.4byte	.LASF186
	.byte	0
	.byte	0x22
	.4byte	.LASF187
	.byte	0x1
	.byte	0x22
	.4byte	.LASF188
	.byte	0x2
	.byte	0
	.byte	0xa
	.byte	0x10
	.byte	0xd
	.byte	0xb0
	.byte	0x9
	.4byte	0xc8c
	.byte	0xb
	.4byte	.LASF189
	.byte	0xd
	.byte	0xb1
	.byte	0xe
	.4byte	0x9a0
	.byte	0
	.byte	0xb
	.4byte	.LASF190
	.byte	0xd
	.byte	0xb2
	.byte	0xe
	.4byte	0x9a0
	.byte	0x4
	.byte	0xb
	.4byte	.LASF191
	.byte	0xd
	.byte	0xb3
	.byte	0xe
	.4byte	0x9a0
	.byte	0x8
	.byte	0xb
	.4byte	.LASF192
	.byte	0xd
	.byte	0xb4
	.byte	0x1c
	.4byte	0xa8f
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF193
	.byte	0xd
	.byte	0xb5
	.byte	0x2
	.4byte	0xc4e
	.byte	0xa
	.byte	0x3
	.byte	0xd
	.byte	0xba
	.byte	0x9
	.4byte	0xcc9
	.byte	0xe
	.string	"dir"
	.byte	0xd
	.byte	0xbb
	.byte	0x18
	.4byte	0xb9d
	.byte	0
	.byte	0xb
	.4byte	.LASF194
	.byte	0xd
	.byte	0xbc
	.byte	0x19
	.4byte	0xc21
	.byte	0x1
	.byte	0xb
	.4byte	.LASF195
	.byte	0xd
	.byte	0xbd
	.byte	0x19
	.4byte	0xc21
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF196
	.byte	0xd
	.byte	0xbe
	.byte	0x2
	.4byte	0xc98
	.byte	0xf
	.byte	0x4
	.4byte	0xc8c
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x3a
	.byte	0xe
	.4byte	0xd7a
	.byte	0x22
	.4byte	.LASF197
	.byte	0
	.byte	0x22
	.4byte	.LASF198
	.byte	0x1
	.byte	0x22
	.4byte	.LASF199
	.byte	0x2
	.byte	0x22
	.4byte	.LASF200
	.byte	0x3
	.byte	0x22
	.4byte	.LASF201
	.byte	0x4
	.byte	0x22
	.4byte	.LASF202
	.byte	0x5
	.byte	0x22
	.4byte	.LASF203
	.byte	0x6
	.byte	0x22
	.4byte	.LASF204
	.byte	0x7
	.byte	0x22
	.4byte	.LASF205
	.byte	0x8
	.byte	0x22
	.4byte	.LASF206
	.byte	0x9
	.byte	0x22
	.4byte	.LASF207
	.byte	0xa
	.byte	0x22
	.4byte	.LASF208
	.byte	0xb
	.byte	0x22
	.4byte	.LASF209
	.byte	0xc
	.byte	0x22
	.4byte	.LASF210
	.byte	0xd
	.byte	0x22
	.4byte	.LASF211
	.byte	0xe
	.byte	0x22
	.4byte	.LASF212
	.byte	0xf
	.byte	0x22
	.4byte	.LASF213
	.byte	0x10
	.byte	0x22
	.4byte	.LASF214
	.byte	0x11
	.byte	0x22
	.4byte	.LASF215
	.byte	0x12
	.byte	0x22
	.4byte	.LASF216
	.byte	0x13
	.byte	0x22
	.4byte	.LASF217
	.byte	0x14
	.byte	0x22
	.4byte	.LASF218
	.byte	0x15
	.byte	0x22
	.4byte	.LASF219
	.byte	0x16
	.byte	0x22
	.4byte	.LASF220
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF221
	.byte	0xe
	.byte	0x53
	.byte	0x2
	.4byte	0xcdb
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x58
	.byte	0xe
	.4byte	0xdad
	.byte	0x22
	.4byte	.LASF222
	.byte	0
	.byte	0x22
	.4byte	.LASF223
	.byte	0x1
	.byte	0x22
	.4byte	.LASF224
	.byte	0x2
	.byte	0x22
	.4byte	.LASF225
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF226
	.byte	0xe
	.byte	0x5d
	.byte	0x2
	.4byte	0xd86
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x62
	.byte	0xe
	.4byte	0xde0
	.byte	0x22
	.4byte	.LASF227
	.byte	0
	.byte	0x22
	.4byte	.LASF228
	.byte	0x1
	.byte	0x22
	.4byte	.LASF229
	.byte	0x2
	.byte	0x22
	.4byte	.LASF230
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF231
	.byte	0xe
	.byte	0x67
	.byte	0x2
	.4byte	0xdb9
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x6c
	.byte	0xe
	.4byte	0xe2b
	.byte	0x22
	.4byte	.LASF232
	.byte	0
	.byte	0x22
	.4byte	.LASF233
	.byte	0x1
	.byte	0x22
	.4byte	.LASF234
	.byte	0x2
	.byte	0x22
	.4byte	.LASF235
	.byte	0x3
	.byte	0x22
	.4byte	.LASF236
	.byte	0x4
	.byte	0x22
	.4byte	.LASF237
	.byte	0x5
	.byte	0x22
	.4byte	.LASF238
	.byte	0x6
	.byte	0x22
	.4byte	.LASF239
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF240
	.byte	0xe
	.byte	0x75
	.byte	0x2
	.4byte	0xdec
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x88
	.byte	0xe
	.4byte	0xe70
	.byte	0x22
	.4byte	.LASF241
	.byte	0
	.byte	0x22
	.4byte	.LASF242
	.byte	0x1
	.byte	0x22
	.4byte	.LASF243
	.byte	0x2
	.byte	0x22
	.4byte	.LASF244
	.byte	0x3
	.byte	0x22
	.4byte	.LASF245
	.byte	0x4
	.byte	0x22
	.4byte	.LASF246
	.byte	0x5
	.byte	0x22
	.4byte	.LASF247
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF248
	.byte	0xe
	.byte	0x90
	.byte	0x2
	.4byte	0xe37
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x95
	.byte	0xe
	.4byte	0xe97
	.byte	0x22
	.4byte	.LASF249
	.byte	0
	.byte	0x22
	.4byte	.LASF250
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF251
	.byte	0xe
	.byte	0x98
	.byte	0x2
	.4byte	0xe7c
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x9d
	.byte	0xe
	.4byte	0xeca
	.byte	0x22
	.4byte	.LASF252
	.byte	0
	.byte	0x22
	.4byte	.LASF253
	.byte	0x1
	.byte	0x22
	.4byte	.LASF254
	.byte	0x2
	.byte	0x22
	.4byte	.LASF255
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF256
	.byte	0xe
	.byte	0xa2
	.byte	0x2
	.4byte	0xea3
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0xa7
	.byte	0xe
	.4byte	0xefd
	.byte	0x22
	.4byte	.LASF257
	.byte	0
	.byte	0x22
	.4byte	.LASF258
	.byte	0x1
	.byte	0x22
	.4byte	.LASF259
	.byte	0x2
	.byte	0x22
	.4byte	.LASF260
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF261
	.byte	0xe
	.byte	0xac
	.byte	0x2
	.4byte	0xed6
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0xb1
	.byte	0xe
	.4byte	0xf24
	.byte	0x22
	.4byte	.LASF262
	.byte	0
	.byte	0x22
	.4byte	.LASF263
	.byte	0x1
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0xb9
	.byte	0xe
	.4byte	0xf3f
	.byte	0x22
	.4byte	.LASF264
	.byte	0
	.byte	0x22
	.4byte	.LASF265
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF266
	.byte	0xe
	.byte	0xbc
	.byte	0x2
	.4byte	0xf24
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0xc1
	.byte	0xe
	.4byte	0xf66
	.byte	0x22
	.4byte	.LASF267
	.byte	0
	.byte	0x22
	.4byte	.LASF268
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF269
	.byte	0xe
	.byte	0xc4
	.byte	0x2
	.4byte	0xf4b
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0xc9
	.byte	0xe
	.4byte	0xf9f
	.byte	0x22
	.4byte	.LASF270
	.byte	0
	.byte	0x22
	.4byte	.LASF271
	.byte	0x1
	.byte	0x22
	.4byte	.LASF272
	.byte	0x2
	.byte	0x22
	.4byte	.LASF273
	.byte	0x3
	.byte	0x22
	.4byte	.LASF274
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF275
	.byte	0xe
	.byte	0xcf
	.byte	0x2
	.4byte	0xf72
	.byte	0xa
	.byte	0xe
	.byte	0xe
	.byte	0xfc
	.byte	0x9
	.4byte	0x1068
	.byte	0xb
	.4byte	.LASF276
	.byte	0xe
	.byte	0xfd
	.byte	0x16
	.4byte	0xdad
	.byte	0
	.byte	0xb
	.4byte	.LASF277
	.byte	0xe
	.byte	0xfe
	.byte	0x16
	.4byte	0xde0
	.byte	0x1
	.byte	0xb
	.4byte	.LASF278
	.byte	0xe
	.byte	0xff
	.byte	0x12
	.4byte	0xe2b
	.byte	0x2
	.byte	0x17
	.4byte	.LASF279
	.byte	0xe
	.2byte	0x100
	.byte	0x17
	.4byte	0xe70
	.byte	0x3
	.byte	0x17
	.4byte	.LASF280
	.byte	0xe
	.2byte	0x101
	.byte	0x17
	.4byte	0xe70
	.byte	0x4
	.byte	0x17
	.4byte	.LASF281
	.byte	0xe
	.2byte	0x102
	.byte	0x17
	.4byte	0xeca
	.byte	0x5
	.byte	0x17
	.4byte	.LASF282
	.byte	0xe
	.2byte	0x103
	.byte	0x17
	.4byte	0xe97
	.byte	0x6
	.byte	0x26
	.string	"vcm"
	.byte	0xe
	.2byte	0x104
	.byte	0x16
	.4byte	0xefd
	.byte	0x7
	.byte	0x17
	.4byte	.LASF283
	.byte	0xe
	.2byte	0x105
	.byte	0x13
	.4byte	0xf3f
	.byte	0x8
	.byte	0x17
	.4byte	.LASF284
	.byte	0xe
	.2byte	0x106
	.byte	0x18
	.4byte	0xf66
	.byte	0x9
	.byte	0x17
	.4byte	.LASF285
	.byte	0xe
	.2byte	0x107
	.byte	0x19
	.4byte	0xf9f
	.byte	0xa
	.byte	0x17
	.4byte	.LASF286
	.byte	0xe
	.2byte	0x108
	.byte	0x11
	.4byte	0x9d3
	.byte	0xb
	.byte	0x17
	.4byte	.LASF287
	.byte	0xe
	.2byte	0x109
	.byte	0xd
	.4byte	0x97c
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF288
	.byte	0xe
	.2byte	0x10a
	.byte	0x2
	.4byte	0xfab
	.byte	0x1a
	.byte	0x8
	.byte	0xe
	.2byte	0x10f
	.byte	0x9
	.4byte	0x10b8
	.byte	0x17
	.4byte	.LASF289
	.byte	0xe
	.2byte	0x110
	.byte	0xc
	.4byte	0x964
	.byte	0
	.byte	0x17
	.4byte	.LASF290
	.byte	0xe
	.2byte	0x111
	.byte	0xc
	.4byte	0x964
	.byte	0x1
	.byte	0x17
	.4byte	.LASF291
	.byte	0xe
	.2byte	0x112
	.byte	0xe
	.4byte	0x988
	.byte	0x2
	.byte	0x17
	.4byte	.LASF292
	.byte	0xe
	.2byte	0x113
	.byte	0xb
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF293
	.byte	0xe
	.2byte	0x114
	.byte	0x2
	.4byte	0x1075
	.byte	0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.2byte	0x119
	.byte	0xe
	.4byte	0x10ed
	.byte	0x22
	.4byte	.LASF294
	.byte	0
	.byte	0x22
	.4byte	.LASF295
	.byte	0x1
	.byte	0x22
	.4byte	.LASF296
	.byte	0x2
	.byte	0x22
	.4byte	.LASF297
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF298
	.byte	0xe
	.2byte	0x11e
	.byte	0x2
	.4byte	0x10c5
	.byte	0x1a
	.byte	0x2
	.byte	0xe
	.2byte	0x12f
	.byte	0x9
	.4byte	0x1121
	.byte	0x17
	.4byte	.LASF299
	.byte	0xe
	.2byte	0x130
	.byte	0x1d
	.4byte	0x10ed
	.byte	0
	.byte	0x17
	.4byte	.LASF300
	.byte	0xe
	.2byte	0x131
	.byte	0x11
	.4byte	0x9d3
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF301
	.byte	0xe
	.2byte	0x132
	.byte	0x2
	.4byte	0x10fa
	.byte	0x4
	.4byte	.LASF302
	.byte	0xf
	.byte	0x3f
	.byte	0x11
	.4byte	0x994
	.byte	0x20
	.4byte	.LASF303
	.byte	0xf
	.byte	0x54
	.byte	0x13
	.4byte	0x112e
	.byte	0xd
	.4byte	.LASF304
	.byte	0x10
	.byte	0x10
	.byte	0x24
	.byte	0x10
	.4byte	0x1188
	.byte	0xb
	.4byte	.LASF305
	.byte	0x10
	.byte	0x25
	.byte	0xf
	.4byte	0x1188
	.byte	0
	.byte	0xb
	.4byte	.LASF306
	.byte	0x10
	.byte	0x26
	.byte	0xb
	.4byte	0x154
	.byte	0x4
	.byte	0xb
	.4byte	.LASF307
	.byte	0x10
	.byte	0x27
	.byte	0x9
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF308
	.byte	0x10
	.byte	0x28
	.byte	0xe
	.4byte	0x9a0
	.byte	0xc
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9a0
	.byte	0x4
	.4byte	.LASF309
	.byte	0x10
	.byte	0x29
	.byte	0x2
	.4byte	0x1146
	.byte	0x28
	.4byte	.LASF310
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x1068
	.byte	0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0x28
	.4byte	.LASF311
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0x1121
	.byte	0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0x29
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x18a
	.byte	0x9
	.4byte	0x994
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x1247
	.byte	0x2a
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x18a
	.byte	0x25
	.4byte	0x1188
	.4byte	.LLST17
	.byte	0x2a
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x18a
	.byte	0x2f
	.4byte	0x2c
	.4byte	.LLST18
	.byte	0x2a
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x18a
	.byte	0x3d
	.4byte	0x2c
	.4byte	.LLST19
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x18c
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST20
	.byte	0x2c
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x18d
	.byte	0x15
	.4byte	0x10b8
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2d
	.4byte	.LVL110
	.4byte	0x1a42
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x181
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x129e
	.byte	0x2a
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x181
	.byte	0x1a
	.4byte	0x2c
	.4byte	.LLST16
	.byte	0x2c
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x183
	.byte	0xd
	.4byte	0x970
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x2d
	.4byte	.LVL107
	.4byte	0x1a4f
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x174
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x1332
	.byte	0x2f
	.4byte	.LVL99
	.4byte	0x1a5c
	.4byte	0x12d6
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL100
	.4byte	0x1a5c
	.4byte	0x12f3
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL101
	.4byte	0x1a5c
	.4byte	0x1310
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL102
	.4byte	0x1a69
	.byte	0x30
	.4byte	.LVL103
	.4byte	0x1a76
	.byte	0x2d
	.4byte	.LVL104
	.4byte	0x1a83
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x146
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x1465
	.byte	0x2c
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x148
	.byte	0x18
	.4byte	0xcd5
	.byte	0x1
	.byte	0x58
	.byte	0x31
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x149
	.byte	0xf
	.4byte	0x1188
	.4byte	.LLST12
	.byte	0x2c
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x14a
	.byte	0x16
	.4byte	0xcc9
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x31
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x14b
	.byte	0x10
	.4byte	0x1465
	.4byte	.LLST13
	.byte	0x32
	.4byte	0x146b
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x168
	.byte	0x5
	.4byte	0x13c1
	.byte	0x33
	.4byte	0x1486
	.4byte	.LLST14
	.byte	0x33
	.4byte	0x1479
	.4byte	.LLST15
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x35
	.4byte	0x1493
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL84
	.4byte	0x1a90
	.4byte	0x13d4
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x2f
	.4byte	.LVL88
	.4byte	0x1a90
	.4byte	0x13e8
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x2f
	.4byte	.LVL90
	.4byte	0x1a90
	.4byte	0x13fc
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.byte	0x2f
	.4byte	.LVL93
	.4byte	0x1a9c
	.4byte	0x140f
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL96
	.4byte	0x1aa9
	.4byte	0x1428
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x2f
	.4byte	.LVL97
	.4byte	0x1ab6
	.4byte	0x1441
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LVL98
	.4byte	0x1ac3
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x118e
	.byte	0x36
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x12a
	.byte	0xd
	.byte	0x1
	.4byte	0x14a1
	.byte	0x37
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x12a
	.byte	0x31
	.4byte	0xcd5
	.byte	0x38
	.string	"buf"
	.byte	0x1
	.2byte	0x12a
	.byte	0x43
	.4byte	0x1188
	.byte	0x39
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x12c
	.byte	0x1c
	.4byte	0xa8f
	.byte	0
	.byte	0x29
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x101
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x156f
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x103
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST11
	.byte	0x2c
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x104
	.byte	0x12
	.4byte	0x1068
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x2c
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x105
	.byte	0x13
	.4byte	0x156f
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2c
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x106
	.byte	0x13
	.4byte	0x156f
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2c
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x107
	.byte	0x17
	.4byte	0x1121
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x30
	.4byte	.LVL76
	.4byte	0x1acf
	.byte	0x30
	.4byte	.LVL77
	.4byte	0x1adc
	.byte	0x30
	.4byte	.LVL78
	.4byte	0x1ae9
	.byte	0x2f
	.4byte	.LVL79
	.4byte	0x1af6
	.4byte	0x153a
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x2f
	.4byte	.LVL82
	.4byte	0x1b03
	.4byte	0x155e
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0x2e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2d
	.4byte	.LVL83
	.4byte	0x1b10
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0xd7a
	.4byte	0x157f
	.byte	0x9
	.4byte	0x3a
	.byte	0xb
	.byte	0
	.byte	0x3a
	.4byte	.LASF331
	.byte	0x1
	.byte	0xf7
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x15df
	.byte	0x3b
	.4byte	.LASF332
	.byte	0x1
	.byte	0xf7
	.byte	0x1b
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x3c
	.string	"div"
	.byte	0x1
	.byte	0xf9
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST10
	.byte	0x2d
	.4byte	.LVL75
	.4byte	0x1b1d
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x196
	.byte	0x1e
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x31
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LASF374
	.byte	0x1
	.byte	0xe1
	.byte	0xd
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x1613
	.byte	0x3e
	.4byte	.LASF325
	.byte	0x1
	.byte	0xe3
	.byte	0x10
	.4byte	0x1465
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.4byte	.LVL0
	.4byte	0x1b2a
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x3a
	.4byte	.LASF333
	.byte	0x1
	.byte	0xda
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1766
	.byte	0x3f
	.4byte	0x1925
	.4byte	.LBB5
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.byte	0x34
	.4byte	.Ldebug_ranges0+0
	.byte	0x40
	.4byte	0x1932
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x40
	.4byte	0x193e
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x41
	.4byte	0x194a
	.4byte	.LLST6
	.byte	0x41
	.4byte	0x1954
	.4byte	.LLST7
	.byte	0x41
	.4byte	0x195f
	.4byte	.LLST7
	.byte	0x42
	.4byte	0x196a
	.byte	0x4
	.4byte	0
	.byte	0x30
	.4byte	.LVL50
	.4byte	0x1ae9
	.byte	0x30
	.4byte	.LVL51
	.4byte	0x1acf
	.byte	0x30
	.4byte	.LVL52
	.4byte	0x1adc
	.byte	0x2f
	.4byte	.LVL53
	.4byte	0x1af6
	.4byte	0x16a9
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x2f
	.4byte	.LVL54
	.4byte	0x1b36
	.4byte	0x16c6
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL55
	.4byte	0x1b43
	.4byte	0x16d9
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL56
	.4byte	0x1b10
	.4byte	0x16f0
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x30
	.4byte	.LVL57
	.4byte	0x1977
	.byte	0x30
	.4byte	.LVL59
	.4byte	0x1a69
	.byte	0x30
	.4byte	.LVL60
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL61
	.4byte	0x1b5d
	.byte	0x2f
	.4byte	.LVL62
	.4byte	0x1a42
	.4byte	0x1733
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x30
	.4byte	.LVL63
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL64
	.4byte	0x1b6a
	.byte	0x2f
	.4byte	.LVL66
	.4byte	0x1b77
	.4byte	0x175a
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0x30
	.4byte	.LVL69
	.4byte	0x1b83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x43
	.4byte	.LASF334
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x186f
	.byte	0x44
	.string	"tmp"
	.byte	0x1
	.byte	0xad
	.byte	0x1b
	.4byte	0x186f
	.4byte	.LLST1
	.byte	0x3e
	.4byte	.LASF315
	.byte	0x1
	.byte	0xaf
	.byte	0x15
	.4byte	0x10b8
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x3e
	.4byte	.LASF335
	.byte	0x1
	.byte	0xb0
	.byte	0xe
	.4byte	0x9a0
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x3c
	.string	"i"
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0x970
	.4byte	.LLST2
	.byte	0x3c
	.string	"v0"
	.byte	0x1
	.byte	0xb2
	.byte	0xe
	.4byte	0x9a0
	.4byte	.LLST3
	.byte	0x3c
	.string	"v1"
	.byte	0x1
	.byte	0xb2
	.byte	0x13
	.4byte	0x9a0
	.4byte	.LLST4
	.byte	0x45
	.4byte	.LASF336
	.byte	0x1
	.byte	0xb3
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x46
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x1819
	.byte	0x47
	.4byte	.LASF369
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.4byte	0x1809
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0x2d
	.4byte	.LVL46
	.4byte	0x1b90
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL27
	.4byte	0x1a69
	.byte	0x30
	.4byte	.LVL28
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL29
	.4byte	0x1b5d
	.byte	0x2f
	.4byte	.LVL30
	.4byte	0x1a42
	.4byte	0x1853
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x30
	.4byte	.LVL32
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL38
	.4byte	0x1b83
	.byte	0x30
	.4byte	.LVL48
	.4byte	0x1b6a
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x97c
	.byte	0x3a
	.4byte	.LASF337
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x1925
	.byte	0x2f
	.4byte	.LVL15
	.4byte	0x1a07
	.4byte	0x18a2
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x30
	.4byte	.LVL16
	.4byte	0x1ae9
	.byte	0x30
	.4byte	.LVL17
	.4byte	0x1acf
	.byte	0x30
	.4byte	.LVL18
	.4byte	0x1adc
	.byte	0x2f
	.4byte	.LVL19
	.4byte	0x1af6
	.4byte	0x18d4
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x2f
	.4byte	.LVL20
	.4byte	0x1b36
	.4byte	0x18f1
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x2e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL21
	.4byte	0x1b43
	.4byte	0x1904
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL22
	.4byte	0x1b10
	.4byte	0x191b
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x30
	.4byte	.LVL23
	.4byte	0x1977
	.byte	0
	.byte	0x48
	.4byte	.LASF339
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.byte	0x1
	.4byte	0x1977
	.byte	0x49
	.4byte	.LASF315
	.byte	0x1
	.byte	0x66
	.byte	0x12
	.4byte	0x10b8
	.byte	0x49
	.4byte	.LASF335
	.byte	0x1
	.byte	0x67
	.byte	0xb
	.4byte	0x9a0
	.byte	0x4a
	.string	"i"
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	0x970
	.byte	0x4a
	.string	"v0"
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x9a0
	.byte	0x4a
	.string	"v1"
	.byte	0x1
	.byte	0x69
	.byte	0x13
	.4byte	0x9a0
	.byte	0x49
	.4byte	.LASF336
	.byte	0x1
	.byte	0x6a
	.byte	0xb
	.4byte	0x25
	.byte	0
	.byte	0x4b
	.4byte	.LASF341
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a07
	.byte	0x30
	.4byte	.LVL4
	.4byte	0x1b83
	.byte	0x30
	.4byte	.LVL5
	.4byte	0x1a69
	.byte	0x2f
	.4byte	.LVL6
	.4byte	0x1b77
	.4byte	0x19b3
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x30
	.4byte	.LVL7
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL8
	.4byte	0x1b5d
	.byte	0x30
	.4byte	.LVL9
	.4byte	0x1b6a
	.byte	0x30
	.4byte	.LVL10
	.4byte	0x1a69
	.byte	0x2f
	.4byte	.LVL11
	.4byte	0x1b77
	.4byte	0x19eb
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x30
	.4byte	.LVL12
	.4byte	0x1b50
	.byte	0x30
	.4byte	.LVL13
	.4byte	0x1b5d
	.byte	0x4c
	.4byte	.LVL14
	.4byte	0x1b83
	.byte	0
	.byte	0x4b
	.4byte	.LASF342
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a42
	.byte	0x44
	.string	"div"
	.byte	0x1
	.byte	0x4d
	.byte	0x1d
	.4byte	0x970
	.4byte	.LLST0
	.byte	0x4d
	.4byte	.LVL3
	.4byte	0x1b1d
	.byte	0x2e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x4e
	.4byte	.LASF343
	.4byte	.LASF343
	.byte	0xe
	.2byte	0x1fa
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF344
	.4byte	.LASF344
	.byte	0xb
	.2byte	0x277
	.byte	0xd
	.byte	0x4e
	.4byte	.LASF345
	.4byte	.LASF345
	.byte	0xd
	.2byte	0x144
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF346
	.4byte	.LASF346
	.byte	0xe
	.2byte	0x1f3
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF347
	.4byte	.LASF347
	.byte	0xd
	.2byte	0x139
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF348
	.4byte	.LASF348
	.byte	0xd
	.2byte	0x140
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF349
	.4byte	.LASF349
	.byte	0x11
	.byte	0x91
	.byte	0x7
	.byte	0x4e
	.4byte	.LASF350
	.4byte	.LASF350
	.byte	0xd
	.2byte	0x141
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF351
	.4byte	.LASF351
	.byte	0xd
	.2byte	0x142
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF352
	.4byte	.LASF352
	.byte	0xd
	.2byte	0x143
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF353
	.4byte	.LASF353
	.byte	0x12
	.byte	0x4b
	.byte	0x5
	.byte	0x4e
	.4byte	.LASF354
	.4byte	.LASF354
	.byte	0xe
	.2byte	0x1ef
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF355
	.4byte	.LASF355
	.byte	0xe
	.2byte	0x1ee
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF356
	.4byte	.LASF356
	.byte	0xe
	.2byte	0x1ed
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF357
	.4byte	.LASF357
	.byte	0xe
	.2byte	0x1f0
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF358
	.4byte	.LASF358
	.byte	0xe
	.2byte	0x1f2
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF359
	.4byte	.LASF359
	.byte	0xe
	.2byte	0x1f5
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF360
	.4byte	.LASF360
	.byte	0xb
	.2byte	0x262
	.byte	0xd
	.byte	0x4f
	.4byte	.LASF361
	.4byte	.LASF361
	.byte	0x12
	.byte	0x4e
	.byte	0x7
	.byte	0x4e
	.4byte	.LASF362
	.4byte	.LASF362
	.byte	0xe
	.2byte	0x1f1
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF363
	.4byte	.LASF363
	.byte	0xe
	.2byte	0x202
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF364
	.4byte	.LASF364
	.byte	0xe
	.2byte	0x1f6
	.byte	0x9
	.byte	0x4e
	.4byte	.LASF365
	.4byte	.LASF365
	.byte	0xe
	.2byte	0x1f9
	.byte	0xa
	.byte	0x4e
	.4byte	.LASF366
	.4byte	.LASF366
	.byte	0xe
	.2byte	0x201
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF367
	.4byte	.LASF367
	.byte	0x9
	.byte	0x89
	.byte	0x6
	.byte	0x4e
	.4byte	.LASF368
	.4byte	.LASF368
	.byte	0xe
	.2byte	0x200
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF369
	.4byte	.LASF369
	.byte	0x1
	.byte	0xb9
	.byte	0x19
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x27
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x2c
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x39
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
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
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
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x48
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
	.byte	0x49
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
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x4f
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
.LLST17:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x79
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE40
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL94
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	.LVL96-1
	.4byte	.LFE37
	.2byte	0x3
	.byte	0x82
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xa
	.2byte	0x196
	.byte	0x1e
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x196
	.byte	0x1e
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE34
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x196
	.byte	0x1e
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL49
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL43
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0xc
	.byte	0xf5
	.byte	0x2a
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x13
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x2f
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL35-1
	.4byte	.LVL36
	.2byte	0x16
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x6
	.byte	0xf5
	.byte	0xa
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF247:
	.string	"ADC_PGA_GAIN_32"
.LASF28:
	.string	"_flock_t"
.LASF151:
	.string	"GLB_ADC_CLK_96M"
.LASF297:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF130:
	.string	"uint16_t"
.LASF231:
	.string	"ADC_V11_SEL_Type"
.LASF44:
	.string	"_on_exit_args"
.LASF61:
	.string	"_write"
.LASF112:
	.string	"_wctomb_state"
.LASF109:
	.string	"_r48"
.LASF358:
	.string	"ADC_Scan_Channel_Config"
.LASF189:
	.string	"srcDmaAddr"
.LASF114:
	.string	"_signal_buf"
.LASF2:
	.string	"unsigned int"
.LASF148:
	.string	"GPIO_FUN_ANALOG"
.LASF259:
	.string	"ADC_PGA_VCM_1P4V"
.LASF344:
	.string	"GLB_GPIO_Func_Init"
.LASF262:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF58:
	.string	"_lbfsize"
.LASF56:
	.string	"_flags"
.LASF300:
	.string	"dmaEn"
.LASF11:
	.string	"__int32_t"
.LASF284:
	.string	"inputMode"
.LASF73:
	.string	"_errno"
.LASF144:
	.string	"GPIO_FUN_I2C"
.LASF235:
	.string	"ADC_CLK_DIV_12"
.LASF236:
	.string	"ADC_CLK_DIV_16"
.LASF335:
	.string	"regVal"
.LASF19:
	.string	"_fpos_t"
.LASF330:
	.string	"adc_fifo_cfg"
.LASF352:
	.string	"DMA_LLI_Update"
.LASF184:
	.string	"DMA_REQ_NONE"
.LASF27:
	.string	"_LOCK_RECURSIVE_T"
.LASF229:
	.string	"ADC_V11_SEL_1P18V"
.LASF60:
	.string	"_read"
.LASF26:
	.string	"__ULong"
.LASF116:
	.string	"_mbrlen_state"
.LASF325:
	.string	"pstctx"
.LASF75:
	.string	"_stdout"
.LASF316:
	.string	"bl_adc_parse_data"
.LASF150:
	.string	"GPIO_FUN_JTAG"
.LASF218:
	.string	"ADC_CHAN_SENP1"
.LASF233:
	.string	"ADC_CLK_DIV_4"
.LASF217:
	.string	"ADC_CHAN_SENP2"
.LASF51:
	.string	"_fns"
.LASF331:
	.string	"bl_adc_clock_init"
.LASF59:
	.string	"_cookie"
.LASF260:
	.string	"ADC_PGA_VCM_1P6V"
.LASF237:
	.string	"ADC_CLK_DIV_20"
.LASF364:
	.string	"ADC_Get_FIFO_Count"
.LASF238:
	.string	"ADC_CLK_DIV_24"
.LASF267:
	.string	"ADC_INPUT_SINGLE_END"
.LASF33:
	.string	"_Bigint"
.LASF322:
	.string	"pstlli"
.LASF41:
	.string	"__tm_wday"
.LASF200:
	.string	"ADC_CHAN3"
.LASF143:
	.string	"GPIO_FUN_SPI"
.LASF145:
	.string	"GPIO_FUN_UART"
.LASF176:
	.string	"DMA_REQ_UART1_RX"
.LASF83:
	.string	"_result"
.LASF132:
	.string	"uint32_t"
.LASF127:
	.string	"int8_t"
.LASF37:
	.string	"__tm_hour"
.LASF269:
	.string	"ADC_SIG_INPUT_Type"
.LASF207:
	.string	"ADC_CHAN10"
.LASF160:
	.string	"reserved_25"
.LASF195:
	.string	"dstPeriph"
.LASF23:
	.string	"__count"
.LASF191:
	.string	"nextLLI"
.LASF0:
	.string	"float"
.LASF337:
	.string	"test_adc_init"
.LASF219:
	.string	"ADC_CHAN_SENP0"
.LASF371:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
.LASF287:
	.string	"offsetCalibVal"
.LASF216:
	.string	"ADC_CHAN_SENP3"
.LASF99:
	.string	"_rand48"
.LASF125:
	.string	"_impure_ptr"
.LASF122:
	.string	"_nextf"
.LASF154:
	.string	"TransferSize"
.LASF129:
	.string	"int16_t"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF239:
	.string	"ADC_CLK_DIV_32"
.LASF315:
	.string	"result"
.LASF16:
	.string	"long long unsigned int"
.LASF105:
	.string	"_asctime_buf"
.LASF312:
	.string	"parr"
.LASF55:
	.string	"__sFILE"
.LASF78:
	.string	"_emergency"
.LASF220:
	.string	"ADC_CHAN_GND"
.LASF256:
	.string	"ADC_CHOP_MOD_Type"
.LASF357:
	.string	"ADC_Init"
.LASF186:
	.string	"DMA_INT_TCOMPLETED"
.LASF190:
	.string	"destDmaAddr"
.LASF182:
	.string	"DMA_REQ_GPADC0"
.LASF183:
	.string	"DMA_REQ_GPADC1"
.LASF163:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF95:
	.string	"__FILE"
.LASF356:
	.string	"ADC_Reset"
.LASF67:
	.string	"_offset"
.LASF64:
	.string	"_ubuf"
.LASF347:
	.string	"DMA_Enable"
.LASF296:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF351:
	.string	"DMA_LLI_Init"
.LASF346:
	.string	"ADC_Start"
.LASF291:
	.string	"value"
.LASF171:
	.string	"DMA_BURST_SIZE_4"
.LASF309:
	.string	"adc_ctx_t"
.LASF303:
	.string	"TrapNetCounter"
.LASF343:
	.string	"ADC_Parse_Result"
.LASF224:
	.string	"ADC_V18_SEL_1P82V"
.LASF243:
	.string	"ADC_PGA_GAIN_2"
.LASF35:
	.string	"__tm_sec"
.LASF158:
	.string	"DWidth"
.LASF101:
	.string	"_mult"
.LASF161:
	.string	"Prot"
.LASF77:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF311:
	.string	"adcFifoCfg"
.LASF29:
	.string	"_next"
.LASF288:
	.string	"ADC_CFG_Type"
.LASF227:
	.string	"ADC_V11_SEL_1P0V"
.LASF270:
	.string	"ADC_DATA_WIDTH_12"
.LASF318:
	.string	"gpio_num"
.LASF157:
	.string	"SWidth"
.LASF24:
	.string	"__value"
.LASF155:
	.string	"SBSize"
.LASF9:
	.string	"__uint16_t"
.LASF85:
	.string	"_p5s"
.LASF230:
	.string	"ADC_V11_SEL_1P26V"
.LASF232:
	.string	"ADC_CLK_DIV_1"
.LASF240:
	.string	"ADC_CLK_Type"
.LASF333:
	.string	"test_adc_test"
.LASF110:
	.string	"_mblen_state"
.LASF234:
	.string	"ADC_CLK_DIV_8"
.LASF289:
	.string	"posChan"
.LASF94:
	.string	"char"
.LASF38:
	.string	"__tm_mday"
.LASF91:
	.string	"_sig_func"
.LASF117:
	.string	"_mbrtowc_state"
.LASF134:
	.string	"DISABLE"
.LASF275:
	.string	"ADC_Data_Width_Type"
.LASF241:
	.string	"ADC_PGA_GAIN_NONE"
.LASF340:
	.string	"dma_ctrl_reg"
.LASF228:
	.string	"ADC_V11_SEL_1P1V"
.LASF362:
	.string	"ADC_Channel_Config"
.LASF84:
	.string	"_result_k"
.LASF265:
	.string	"ADC_VREF_2V"
.LASF334:
	.string	"test_adc_get"
.LASF142:
	.string	"GPIO_FUN_FLASH"
.LASF323:
	.string	"llibuf"
.LASF21:
	.string	"__wch"
.LASF128:
	.string	"uint8_t"
.LASF304:
	.string	"adc_ctx"
.LASF146:
	.string	"GPIO_FUN_PWM"
.LASF242:
	.string	"ADC_PGA_GAIN_1"
.LASF149:
	.string	"GPIO_FUN_SWGPIO"
.LASF137:
	.string	"UNMASK"
.LASF244:
	.string	"ADC_PGA_GAIN_4"
.LASF63:
	.string	"_close"
.LASF245:
	.string	"ADC_PGA_GAIN_8"
.LASF81:
	.string	"__sdidinit"
.LASF285:
	.string	"resWidth"
.LASF197:
	.string	"ADC_CHAN0"
.LASF198:
	.string	"ADC_CHAN1"
.LASF199:
	.string	"ADC_CHAN2"
.LASF266:
	.string	"ADC_VREF_Type"
.LASF201:
	.string	"ADC_CHAN4"
.LASF202:
	.string	"ADC_CHAN5"
.LASF203:
	.string	"ADC_CHAN6"
.LASF204:
	.string	"ADC_CHAN7"
.LASF205:
	.string	"ADC_CHAN8"
.LASF206:
	.string	"ADC_CHAN9"
.LASF283:
	.string	"vref"
.LASF306:
	.string	"adc_lli"
.LASF339:
	.string	"ADC_tsen_case"
.LASF313:
	.string	"data_num"
.LASF74:
	.string	"_stdin"
.LASF147:
	.string	"GPIO_FUN_EXT_PA"
.LASF15:
	.string	"long long int"
.LASF264:
	.string	"ADC_VREF_3P3V"
.LASF274:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF278:
	.string	"clkDiv"
.LASF53:
	.string	"_base"
.LASF271:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF86:
	.string	"_freelist"
.LASF307:
	.string	"lli_flag"
.LASF348:
	.string	"DMA_Channel_Enable"
.LASF102:
	.string	"_add"
.LASF185:
	.string	"DMA_Periph_Req_Type"
.LASF119:
	.string	"_wcrtomb_state"
.LASF350:
	.string	"DMA_Channel_Disable"
.LASF302:
	.string	"BaseType_t"
.LASF57:
	.string	"_file"
.LASF222:
	.string	"ADC_V18_SEL_1P62V"
.LASF7:
	.string	"__int16_t"
.LASF32:
	.string	"_wds"
.LASF153:
	.string	"DMA_Control_Reg"
.LASF273:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF177:
	.string	"DMA_REQ_UART1_TX"
.LASF156:
	.string	"DBSize"
.LASF82:
	.string	"__cleanup"
.LASF374:
	.string	"adc_data_update"
.LASF25:
	.string	"_mbstate_t"
.LASF370:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF45:
	.string	"_fnargs"
.LASF212:
	.string	"ADC_CHAN_TSEN_N"
.LASF209:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF210:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF211:
	.string	"ADC_CHAN_TSEN_P"
.LASF43:
	.string	"__tm_isdst"
.LASF194:
	.string	"srcPeriph"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF250:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF263:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF268:
	.string	"ADC_INPUT_DIFF"
.LASF121:
	.string	"_h_errno"
.LASF327:
	.string	"adccfg"
.LASF272:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF359:
	.string	"ADC_FIFO_Cfg"
.LASF254:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF4:
	.string	"__int8_t"
.LASF92:
	.string	"__sglue"
.LASF255:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF332:
	.string	"sampling_ms"
.LASF39:
	.string	"__tm_mon"
.LASF328:
	.string	"pos_chlist_single"
.LASF226:
	.string	"ADC_V18_SEL_Type"
.LASF141:
	.string	"GPIO_FUN_SDIO"
.LASF133:
	.string	"SystemCoreClock"
.LASF281:
	.string	"chopMode"
.LASF90:
	.string	"_atexit0"
.LASF193:
	.string	"DMA_LLI_Ctrl_Type"
.LASF107:
	.string	"_gamma_signgam"
.LASF196:
	.string	"DMA_LLI_Cfg_Type"
.LASF314:
	.string	"channel"
.LASF152:
	.string	"GLB_ADC_CLK_XCLK"
.LASF108:
	.string	"_rand_next"
.LASF49:
	.string	"_atexit"
.LASF70:
	.string	"_mbstate"
.LASF286:
	.string	"offsetCalibEn"
.LASF162:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF321:
	.string	"bl_adc_dma_init"
.LASF8:
	.string	"short int"
.LASF342:
	.string	"ADC_Clock_Init"
.LASF12:
	.string	"long int"
.LASF165:
	.string	"DMA_TRNS_M2M"
.LASF166:
	.string	"DMA_TRNS_M2P"
.LASF93:
	.string	"__sf"
.LASF31:
	.string	"_sign"
.LASF329:
	.string	"neg_chlist_single"
.LASF225:
	.string	"ADC_V18_SEL_1P92V"
.LASF68:
	.string	"_data"
.LASF22:
	.string	"__wchb"
.LASF126:
	.string	"_global_impure_ptr"
.LASF192:
	.string	"dmaCtrl"
.LASF293:
	.string	"ADC_Result_Type"
.LASF40:
	.string	"__tm_year"
.LASF366:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF223:
	.string	"ADC_V18_SEL_1P72V"
.LASF138:
	.string	"MASK"
.LASF106:
	.string	"_localtime_buf"
.LASF320:
	.string	"bl_adc_start"
.LASF251:
	.string	"ADC_BIAS_SEL_Type"
.LASF124:
	.string	"_unused"
.LASF5:
	.string	"__uint8_t"
.LASF89:
	.string	"_new"
.LASF249:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF87:
	.string	"_cvtlen"
.LASF30:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF326:
	.string	"bl_adc_init"
.LASF208:
	.string	"ADC_CHAN11"
.LASF308:
	.string	"chan_init_table"
.LASF292:
	.string	"volt"
.LASF139:
	.string	"intCallback_Type"
.LASF372:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/hal_drv"
.LASF66:
	.string	"_blksize"
.LASF215:
	.string	"ADC_CHAN_VABT_HALF"
.LASF34:
	.string	"__tm"
.LASF253:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF69:
	.string	"_lock"
.LASF135:
	.string	"ENABLE"
.LASF365:
	.string	"ADC_Read_FIFO"
.LASF170:
	.string	"DMA_BURST_SIZE_1"
.LASF178:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF187:
	.string	"DMA_INT_ERR"
.LASF277:
	.string	"v11Sel"
.LASF360:
	.string	"GLB_Set_ADC_CLK"
.LASF172:
	.string	"DMA_BURST_SIZE_8"
.LASF298:
	.string	"ADC_FIFO_Threshold_Type"
.LASF97:
	.string	"_niobs"
.LASF17:
	.string	"wint_t"
.LASF131:
	.string	"int32_t"
.LASF188:
	.string	"DMA_INT_ALL"
.LASF36:
	.string	"__tm_min"
.LASF369:
	.string	"aos_msleep"
.LASF248:
	.string	"ADC_PGA_GAIN_Type"
.LASF46:
	.string	"_dso_handle"
.LASF136:
	.string	"BL_Fun_Type"
.LASF221:
	.string	"ADC_Chan_Type"
.LASF363:
	.string	"ADC_Tsen_Init"
.LASF367:
	.string	"BL602_Delay_MS"
.LASF174:
	.string	"DMA_REQ_UART0_RX"
.LASF276:
	.string	"v18Sel"
.LASF88:
	.string	"_cvtbuf"
.LASF6:
	.string	"unsigned char"
.LASF140:
	.string	"intCbfArra"
.LASF13:
	.string	"__uint32_t"
.LASF301:
	.string	"ADC_FIFO_Cfg_Type"
.LASF115:
	.string	"_getdate_err"
.LASF213:
	.string	"ADC_CHAN_VREF"
.LASF42:
	.string	"__tm_yday"
.LASF368:
	.string	"ADC_SET_TSVBE_LOW"
.LASF173:
	.string	"DMA_BURST_SIZE_16"
.LASF324:
	.string	"llicfg"
.LASF52:
	.string	"__sbuf"
.LASF246:
	.string	"ADC_PGA_GAIN_16"
.LASF319:
	.string	"adc_pin"
.LASF96:
	.string	"_glue"
.LASF167:
	.string	"DMA_TRNS_P2M"
.LASF168:
	.string	"DMA_TRNS_P2P"
.LASF354:
	.string	"ADC_Disable"
.LASF169:
	.string	"DMA_Trans_Dir_Type"
.LASF282:
	.string	"biasSel"
.LASF261:
	.string	"ADC_PGA_VCM_Type"
.LASF310:
	.string	"adcCfg"
.LASF104:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbtowc_state"
.LASF305:
	.string	"channel_data"
.LASF317:
	.string	"bl_adc_gpio_init"
.LASF290:
	.string	"negChan"
.LASF80:
	.string	"_locale"
.LASF20:
	.string	"_ssize_t"
.LASF3:
	.string	"signed char"
.LASF72:
	.string	"_reent"
.LASF10:
	.string	"short unsigned int"
.LASF179:
	.string	"DMA_REQ_I2C_TX"
.LASF345:
	.string	"DMA_IntMask"
.LASF338:
	.string	"adc_dma_lli_init"
.LASF279:
	.string	"gain1"
.LASF280:
	.string	"gain2"
.LASF214:
	.string	"ADC_CHAN_DCTEST"
.LASF47:
	.string	"_fntypes"
.LASF341:
	.string	"TSEN_Calibration"
.LASF54:
	.string	"_size"
.LASF1:
	.string	"double"
.LASF164:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF258:
	.string	"ADC_PGA_VCM_1P2V"
.LASF18:
	.string	"_off_t"
.LASF65:
	.string	"_nbuf"
.LASF103:
	.string	"_unused_rand"
.LASF175:
	.string	"DMA_REQ_UART0_TX"
.LASF79:
	.string	"_unspecified_locale_info"
.LASF159:
	.string	"SLargerD"
.LASF294:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF71:
	.string	"_flags2"
.LASF295:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF48:
	.string	"_is_cxa"
.LASF349:
	.string	"pvPortMalloc"
.LASF252:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF100:
	.string	"_seed"
.LASF180:
	.string	"DMA_REQ_SPI_RX"
.LASF361:
	.string	"bl_dma_find_ctx_by_channel"
.LASF299:
	.string	"fifoThreshold"
.LASF373:
	.string	"__locale_t"
.LASF62:
	.string	"_seek"
.LASF257:
	.string	"ADC_PGA_VCM_1V"
.LASF181:
	.string	"DMA_REQ_SPI_TX"
.LASF336:
	.string	"v_error"
.LASF76:
	.string	"_stderr"
.LASF123:
	.string	"_nmalloc"
.LASF98:
	.string	"_iobs"
.LASF353:
	.string	"bl_dma_irq_register"
.LASF355:
	.string	"ADC_Enable"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
