	.file	"bl602_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ADC_Reset,"ax",@progbits
	.align	1
	.globl	ADC_Reset
	.type	ADC_Reset, @function
ADC_Reset:
.LFB8:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
	.loc 1 101 1
	.cfi_startproc
	.loc 1 102 5
	.loc 1 105 5
	.loc 1 105 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL0:
	.loc 1 106 5 is_stmt 1
	.loc 1 106 74 is_stmt 0
	ori	a3,a5,4
	.loc 1 106 61
	sw	a3,-1780(a4)
	.loc 1 107 6 is_stmt 1
 #APP
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 29
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 52
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 75
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 98
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 121
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 144
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 167
# 107 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 107 191
	.loc 1 108 5
	.loc 1 108 74 is_stmt 0
 #NO_APP
	andi	a5,a5,-5
.LVL1:
	.loc 1 108 61
	sw	a5,-1780(a4)
	.loc 1 109 1
	ret
	.cfi_endproc
.LFE8:
	.size	ADC_Reset, .-ADC_Reset
	.section	.text.ADC_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Enable
	.type	ADC_Enable, @function
ADC_Enable:
.LFB9:
	.loc 1 120 1 is_stmt 1
	.cfi_startproc
	.loc 1 121 5
	.loc 1 123 5
	.loc 1 123 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL2:
	.loc 1 124 5 is_stmt 1
	.loc 1 124 11 is_stmt 0
	ori	a5,a5,1
.LVL3:
	.loc 1 125 5 is_stmt 1
	.loc 1 125 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 126 1
	ret
	.cfi_endproc
.LFE9:
	.size	ADC_Enable, .-ADC_Enable
	.section	.text.ADC_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Disable
	.type	ADC_Disable, @function
ADC_Disable:
.LFB10:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
	.loc 1 138 5
	.loc 1 140 5
	.loc 1 140 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL4:
	.loc 1 141 5 is_stmt 1
	.loc 1 141 11 is_stmt 0
	andi	a5,a5,-2
.LVL5:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 143 1
	ret
	.cfi_endproc
.LFE10:
	.size	ADC_Disable, .-ADC_Disable
	.section	.text.ADC_Init,"ax",@progbits
	.align	1
	.globl	ADC_Init
	.type	ADC_Init, @function
ADC_Init:
.LFB11:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 156 5
	.loc 1 157 5
	.loc 1 158 5
	.loc 1 160 5
	.loc 1 161 5
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 166 5
	.loc 1 167 5
	.loc 1 168 5
	.loc 1 169 5
	.loc 1 170 5
	.loc 1 173 5
	.loc 1 173 12 is_stmt 0
	li	a4,1073807360
	lw	a5,-1776(a4)
.LVL7:
	.loc 1 174 5 is_stmt 1
	.loc 1 174 25 is_stmt 0
	li	a3,-1610612736
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL8:
	.loc 1 175 5 is_stmt 1
	.loc 1 174 57 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 181 86
	lbu	a2,11(a0)
	.loc 1 181 25
	li	a1,-131072
	.loc 1 174 80
	slli	a5,a5,29
	.loc 1 174 12
	or	a5,a5,a3
.LVL9:
	.loc 1 175 25
	li	a3,-402653184
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL10:
	.loc 1 176 5 is_stmt 1
	.loc 1 177 5
	.loc 1 178 5
	.loc 1 179 5
	.loc 1 175 57 is_stmt 0
	lbu	a3,1(a0)
	.loc 1 175 80
	slli	a3,a3,27
	.loc 1 175 12
	or	a3,a3,a5
	.loc 1 179 25
	li	a5,-133955584
.LVL11:
	addi	a5,a5,-1
	and	a5,a3,a5
.LVL12:
	.loc 1 180 5 is_stmt 1
	.loc 1 181 5
	.loc 1 179 57 is_stmt 0
	lbu	a3,2(a0)
	.loc 1 179 80
	slli	a3,a3,18
	.loc 1 179 12
	or	a3,a3,a5
	.loc 1 181 25
	addi	a5,a1,-2
.LVL13:
	and	a3,a3,a5
.LVL14:
	.loc 1 182 5 is_stmt 1
	.loc 1 181 12 is_stmt 0
	or	a3,a2,a3
.LVL15:
	.loc 1 182 25
	andi	a2,a3,-29
	.loc 1 182 56
	lbu	a3,10(a0)
.LVL16:
	.loc 1 182 81
	slli	a3,a3,2
	.loc 1 182 12
	or	a3,a3,a2
.LVL17:
	.loc 1 183 5 is_stmt 1
	.loc 1 183 61 is_stmt 0
	sw	a3,-1776(a4)
	.loc 1 184 6 is_stmt 1
 #APP
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 29
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 52
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 75
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 98
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 121
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 144
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 167
# 184 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c" 1
	nop
# 0 "" 2
	.loc 1 184 191
	.loc 1 187 5
	.loc 1 187 12 is_stmt 0
 #NO_APP
	lw	a5,-1772(a4)
.LVL18:
	.loc 1 188 5 is_stmt 1
	.loc 1 189 5
	.loc 1 189 71 is_stmt 0
	lbu	a3,3(a0)
.LVL19:
	.loc 1 189 25
	li	a4,-2113929216
.LVL20:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL21:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 71 is_stmt 0
	lbu	a2,4(a0)
	.loc 1 189 79
	slli	a4,a3,25
	.loc 1 189 12
	or	a4,a4,a5
	.loc 1 190 25
	li	a5,-29360128
.LVL22:
	addi	a5,a5,-1
	and	a5,a4,a5
.LVL23:
	.loc 1 191 5 is_stmt 1
	.loc 1 190 79 is_stmt 0
	slli	a4,a2,22
	.loc 1 190 12
	or	a4,a4,a5
	.loc 1 191 25
	addi	a5,a1,-1
.LVL24:
	and	a4,a4,a5
.LVL25:
	.loc 1 192 5 is_stmt 1
	.loc 1 191 57 is_stmt 0
	lbu	a5,6(a0)
	.loc 1 195 39
	or	a3,a3,a2
	.loc 1 191 81
	slli	a5,a5,17
	.loc 1 191 12
	or	a5,a5,a4
	.loc 1 192 25
	li	a4,-98304
.LVL26:
	addi	a4,a4,-1
	and	a4,a5,a4
	.loc 1 192 57
	lbu	a5,5(a0)
	.loc 1 192 82
	slli	a5,a5,15
	.loc 1 192 12
	or	a5,a5,a4
.LVL27:
	.loc 1 194 5 is_stmt 1
	.loc 1 195 5
	.loc 1 195 39 is_stmt 0
	beq	a3,zero,.L5
	.loc 1 196 9 is_stmt 1
	.loc 1 194 12 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL28:
	.loc 1 196 16
	li	a4,8192
	or	a5,a5,a4
.LVL29:
.L6:
	.loc 1 201 5 is_stmt 1
	.loc 1 202 5
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 202 56 is_stmt 0
	lbu	a4,7(a0)
	.loc 1 204 25
	li	a3,-8192
	addi	a3,a3,127
	.loc 1 202 76
	slli	a4,a4,7
.LVL30:
	.loc 1 204 25
	and	a5,a5,a3
.LVL31:
	or	a5,a4,a5
	.loc 1 203 56
	lbu	a4,8(a0)
	.loc 1 204 25
	andi	a5,a5,-13
	.loc 1 210 27
	li	a3,-65536
	.loc 1 203 77
	slli	a4,a4,3
	.loc 1 204 25
	or	a5,a5,a4
	li	a4,4096
	or	a5,a5,a4
	.loc 1 204 56
	lbu	a4,9(a0)
	.loc 1 204 82
	slli	a4,a4,2
	.loc 1 204 12
	or	a5,a4,a5
.LVL32:
	.loc 1 206 5 is_stmt 1
	.loc 1 206 61 is_stmt 0
	li	a4,1073807360
.LVL33:
	sw	a5,-1772(a4)
.LVL34:
	.loc 1 209 5 is_stmt 1
	.loc 1 209 13 is_stmt 0
	lw	a5,-1736(a4)
.LVL35:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 27 is_stmt 0
	and	a3,a5,a3
	.loc 1 210 90
	lh	a5,12(a0)
.LVL36:
	.loc 1 210 13
	or	a5,a5,a3
.LVL37:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 61 is_stmt 0
	sw	a5,-1736(a4)
.LVL38:
	.loc 1 216 1
	ret
.LVL39:
.L5:
	.loc 1 198 9 is_stmt 1
	.loc 1 198 16 is_stmt 0
	li	a4,-24576
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL40:
	j	.L6
	.cfi_endproc
.LFE11:
	.size	ADC_Init, .-ADC_Init
	.section	.text.ADC_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Channel_Config
	.type	ADC_Channel_Config, @function
ADC_Channel_Config:
.LFB12:
	.loc 1 229 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 230 5
	.loc 1 231 5
	.loc 1 233 5
	.loc 1 234 5
	.loc 1 237 5
	.loc 1 237 11 is_stmt 0
	li	a5,1073807360
	lw	a4,-1780(a5)
.LVL42:
	.loc 1 238 5 is_stmt 1
	.loc 1 238 23 is_stmt 0
	li	a3,-8192
	addi	a3,a3,255
	and	a4,a4,a3
.LVL43:
	.loc 1 239 5 is_stmt 1
	.loc 1 238 71 is_stmt 0
	slli	a0,a0,8
.LVL44:
	.loc 1 238 11
	or	a0,a0,a4
	.loc 1 239 23
	andi	a0,a0,-249
	.loc 1 239 71
	slli	a1,a1,3
.LVL45:
	.loc 1 239 11
	or	a0,a1,a0
.LVL46:
	.loc 1 240 5 is_stmt 1
	.loc 1 240 61 is_stmt 0
	sw	a0,-1780(a5)
	.loc 1 243 5 is_stmt 1
	.loc 1 243 12 is_stmt 0
	lw	a4,-1776(a5)
.LVL47:
	.loc 1 244 5 is_stmt 1
	.loc 1 244 74 is_stmt 0
	slli	a2,a2,1
.LVL48:
	.loc 1 244 25
	andi	a4,a4,-3
.LVL49:
	.loc 1 244 12
	or	a2,a2,a4
.LVL50:
	.loc 1 245 5 is_stmt 1
	.loc 1 245 12 is_stmt 0
	li	a4,-33554432
	addi	a4,a4,-1
	and	a2,a2,a4
.LVL51:
	.loc 1 246 5 is_stmt 1
	.loc 1 246 61 is_stmt 0
	sw	a2,-1776(a5)
	.loc 1 248 1
	ret
	.cfi_endproc
.LFE12:
	.size	ADC_Channel_Config, .-ADC_Channel_Config
	.section	.text.ADC_Scan_Channel_Config,"ax",@progbits
	.align	1
	.globl	ADC_Scan_Channel_Config
	.type	ADC_Scan_Channel_Config, @function
ADC_Scan_Channel_Config:
.LFB13:
	.loc 1 262 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 263 5
	.loc 1 264 5
	.loc 1 266 5
	.loc 1 269 5
	.loc 1 270 5
	.loc 1 270 7 is_stmt 0
	li	a4,5
	.loc 1 269 12
	li	a5,6
	.loc 1 270 7
	bgtu	a2,a4,.L9
	.loc 1 270 18
	mv	a5,a2
.L9:
.LVL53:
	.loc 1 274 5 is_stmt 1
	.loc 1 274 11 is_stmt 0
	li	a4,1073807360
	lw	a4,-1768(a4)
.LVL54:
	.loc 1 275 5 is_stmt 1
	.loc 1 275 10 is_stmt 0
	li	a6,0
	li	t4,5
	.loc 1 276 30
	li	t5,31
.LVL55:
.L10:
	.loc 1 275 5 discriminator 1
	bne	a6,a5,.L11
	.loc 1 279 5 is_stmt 1
	.loc 1 279 61 is_stmt 0
	li	a6,1073807360
.LVL56:
	sw	a4,-1768(a6)
	.loc 1 281 5 is_stmt 1
	.loc 1 281 11 is_stmt 0
	lw	a4,-1760(a6)
.LVL57:
	.loc 1 282 5 is_stmt 1
	li	t4,5
	.loc 1 282 10 is_stmt 0
	li	a6,0
	.loc 1 283 30
	li	t5,31
.LVL58:
.L12:
	.loc 1 282 5 discriminator 1
	bne	a6,a5,.L13
	.loc 1 286 5 is_stmt 1
	.loc 1 286 61 is_stmt 0
	li	a6,1073807360
.LVL59:
	sw	a4,-1760(a6)
	.loc 1 289 5 is_stmt 1
	.loc 1 289 7 is_stmt 0
	bleu	a2,a5,.L14
	.loc 1 290 9 is_stmt 1
	.loc 1 290 15 is_stmt 0
	lw	a4,-1764(a6)
.LVL60:
	.loc 1 291 9 is_stmt 1
	.loc 1 291 29 is_stmt 0
	sub	t3,a2,a5
	.loc 1 291 14
	li	a6,0
	li	t5,5
	.loc 1 292 34
	li	t6,31
.LVL61:
.L15:
	.loc 1 291 9 discriminator 1
	bgtu	t3,a6,.L16
	.loc 1 295 9 is_stmt 1
	.loc 1 295 65 is_stmt 0
	li	a0,1073807360
.LVL62:
	sw	a4,-1764(a0)
	.loc 1 297 9 is_stmt 1
	.loc 1 297 15 is_stmt 0
	lw	a4,-1756(a0)
.LVL63:
	.loc 1 298 9 is_stmt 1
	li	t4,5
	.loc 1 298 14 is_stmt 0
	li	a0,0
	.loc 1 299 34
	li	t5,31
.LVL64:
.L17:
	.loc 1 298 9 discriminator 1
	bne	t3,a0,.L18
	.loc 1 302 9 is_stmt 1
	.loc 1 302 65 is_stmt 0
	li	a5,1073807360
.LVL65:
	sw	a4,-1756(a5)
.LVL66:
.L14:
	.loc 1 306 5 is_stmt 1
	.loc 1 306 11 is_stmt 0
	li	a1,1073807360
.LVL67:
	lw	a5,-1776(a1)
.LVL68:
	.loc 1 307 5 is_stmt 1
	.loc 1 307 23 is_stmt 0
	li	a4,-31457280
	addi	a4,a4,-1
	.loc 1 307 76
	addi	a2,a2,-1
.LVL69:
	.loc 1 307 23
	and	a5,a5,a4
.LVL70:
	.loc 1 308 5 is_stmt 1
	.loc 1 307 79 is_stmt 0
	slli	a2,a2,21
	.loc 1 307 11
	or	a2,a2,a5
	.loc 1 308 72
	slli	a3,a3,1
.LVL71:
	.loc 1 308 23
	andi	a2,a2,-3
	.loc 1 308 11
	or	a2,a3,a2
.LVL72:
	.loc 1 309 5 is_stmt 1
	.loc 1 310 5
	.loc 1 310 11 is_stmt 0
	li	a3,33685504
	or	a2,a2,a3
.LVL73:
	.loc 1 311 5 is_stmt 1
	.loc 1 311 61 is_stmt 0
	sw	a2,-1776(a1)
	.loc 1 312 1
	ret
.LVL74:
.L11:
	.loc 1 276 9 is_stmt 1 discriminator 3
	mul	t3,a6,t4
	.loc 1 277 27 is_stmt 0 discriminator 3
	add	a7,a0,a6
	lbu	a7,0(a7)
	.loc 1 275 24 discriminator 3
	addi	a6,a6,1
.LVL75:
	.loc 1 276 30 discriminator 3
	sll	t1,t5,t3
	.loc 1 276 24 discriminator 3
	not	t1,t1
	.loc 1 276 15 discriminator 3
	and	a4,t1,a4
.LVL76:
	.loc 1 277 9 is_stmt 1 discriminator 3
	.loc 1 277 30 is_stmt 0 discriminator 3
	sll	a7,a7,t3
	.loc 1 277 15 discriminator 3
	or	a4,a7,a4
.LVL77:
	j	.L10
.L13:
	.loc 1 283 9 is_stmt 1 discriminator 3
	mul	t3,a6,t4
	.loc 1 284 27 is_stmt 0 discriminator 3
	add	a7,a1,a6
	lbu	a7,0(a7)
	.loc 1 282 24 discriminator 3
	addi	a6,a6,1
.LVL78:
	.loc 1 283 30 discriminator 3
	sll	t1,t5,t3
	.loc 1 283 24 discriminator 3
	not	t1,t1
	.loc 1 283 15 discriminator 3
	and	a4,t1,a4
.LVL79:
	.loc 1 284 9 is_stmt 1 discriminator 3
	.loc 1 284 30 is_stmt 0 discriminator 3
	sll	a7,a7,t3
	.loc 1 284 15 discriminator 3
	or	a4,a7,a4
.LVL80:
	j	.L12
.L16:
	.loc 1 292 13 is_stmt 1 discriminator 3
	mul	t4,a6,t5
	.loc 1 292 34 is_stmt 0 discriminator 3
	sll	t1,t6,t4
	.loc 1 292 28 discriminator 3
	not	t1,t1
	.loc 1 292 19 discriminator 3
	and	a4,t1,a4
.LVL81:
	.loc 1 293 13 is_stmt 1 discriminator 3
	.loc 1 293 31 is_stmt 0 discriminator 3
	add	t1,a6,a5
	add	t1,a0,t1
	lbu	a7,0(t1)
	.loc 1 291 39 discriminator 3
	addi	a6,a6,1
.LVL82:
	.loc 1 293 42 discriminator 3
	sll	a7,a7,t4
	.loc 1 293 19 discriminator 3
	or	a4,a7,a4
.LVL83:
	j	.L15
.LVL84:
.L18:
	.loc 1 299 13 is_stmt 1 discriminator 3
	mul	t1,a0,t4
	.loc 1 299 34 is_stmt 0 discriminator 3
	sll	a7,t5,t1
	.loc 1 299 28 discriminator 3
	not	a7,a7
	.loc 1 299 19 discriminator 3
	and	a4,a7,a4
.LVL85:
	.loc 1 300 13 is_stmt 1 discriminator 3
	.loc 1 300 31 is_stmt 0 discriminator 3
	add	a7,a0,a5
	add	a7,a1,a7
	lbu	a6,0(a7)
	.loc 1 298 39 discriminator 3
	addi	a0,a0,1
.LVL86:
	.loc 1 300 42 discriminator 3
	sll	a6,a6,t1
	.loc 1 300 19 discriminator 3
	or	a4,a6,a4
.LVL87:
	j	.L17
	.cfi_endproc
.LFE13:
	.size	ADC_Scan_Channel_Config, .-ADC_Scan_Channel_Config
	.section	.text.ADC_Start,"ax",@progbits
	.align	1
	.globl	ADC_Start
	.type	ADC_Start, @function
ADC_Start:
.LFB14:
	.loc 1 323 1 is_stmt 1
	.cfi_startproc
	.loc 1 324 5
	.loc 1 327 5
	.loc 1 323 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 327 11
	li	s0,1073807360
	lw	a5,-1780(s0)
.LVL88:
	.loc 1 328 5 is_stmt 1
	.loc 1 331 5 is_stmt 0
	li	a0,100
	.loc 1 328 11
	andi	a5,a5,-3
.LVL89:
	.loc 1 329 5 is_stmt 1
	.loc 1 329 61 is_stmt 0
	sw	a5,-1780(s0)
	.loc 1 331 5 is_stmt 1
	call	BL602_Delay_US
.LVL90:
	.loc 1 334 5
	.loc 1 334 11 is_stmt 0
	lw	a5,-1780(s0)
.LVL91:
	.loc 1 335 5 is_stmt 1
	.loc 1 335 11 is_stmt 0
	ori	a5,a5,2
.LVL92:
	.loc 1 336 5 is_stmt 1
	.loc 1 336 61 is_stmt 0
	sw	a5,-1780(s0)
	.loc 1 338 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	ADC_Start, .-ADC_Start
	.section	.text.ADC_Stop,"ax",@progbits
	.align	1
	.globl	ADC_Stop
	.type	ADC_Stop, @function
ADC_Stop:
.LFB15:
	.loc 1 349 1 is_stmt 1
	.cfi_startproc
	.loc 1 350 5
	.loc 1 353 5
	.loc 1 353 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL93:
	.loc 1 354 5 is_stmt 1
	.loc 1 354 11 is_stmt 0
	andi	a5,a5,-3
.LVL94:
	.loc 1 355 5 is_stmt 1
	.loc 1 355 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 356 1
	ret
	.cfi_endproc
.LFE15:
	.size	ADC_Stop, .-ADC_Stop
	.section	.text.ADC_FIFO_Cfg,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Cfg
	.type	ADC_FIFO_Cfg, @function
ADC_FIFO_Cfg:
.LFB16:
	.loc 1 367 1 is_stmt 1
	.cfi_startproc
.LVL95:
	.loc 1 368 5
	.loc 1 371 5
	.loc 1 378 5
	.loc 1 378 11 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL96:
	.loc 1 379 5 is_stmt 1
	.loc 1 379 23 is_stmt 0
	li	a3,-12582912
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL97:
	.loc 1 382 5 is_stmt 1
	.loc 1 379 55 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 379 89
	slli	a5,a5,22
	.loc 1 379 11
	or	a5,a5,a3
.LVL98:
	.loc 1 382 80
	lbu	a3,1(a0)
	.loc 1 382 23
	andi	a5,a5,-2
.LVL99:
	.loc 1 382 11
	or	a5,a3,a5
.LVL100:
	.loc 1 384 5 is_stmt 1
	.loc 1 384 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 387 5 is_stmt 1
	.loc 1 387 11 is_stmt 0
	lw	a5,0(a4)
.LVL101:
	.loc 1 388 5 is_stmt 1
	.loc 1 388 11 is_stmt 0
	ori	a5,a5,2
.LVL102:
	.loc 1 389 5 is_stmt 1
	.loc 1 389 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 391 1
	ret
	.cfi_endproc
.LFE16:
	.size	ADC_FIFO_Cfg, .-ADC_FIFO_Cfg
	.section	.text.ADC_Get_FIFO_Count,"ax",@progbits
	.align	1
	.globl	ADC_Get_FIFO_Count
	.type	ADC_Get_FIFO_Count, @function
ADC_Get_FIFO_Count:
.LFB17:
	.loc 1 402 1 is_stmt 1
	.cfi_startproc
	.loc 1 403 5
	.loc 1 405 5
	.loc 1 405 11 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL103:
	.loc 1 407 5 is_stmt 1
	.loc 1 407 51 is_stmt 0
	srli	a0,a0,16
.LVL104:
	.loc 1 408 1
	andi	a0,a0,63
	ret
	.cfi_endproc
.LFE17:
	.size	ADC_Get_FIFO_Count, .-ADC_Get_FIFO_Count
	.section	.text.ADC_FIFO_Is_Full,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Full
	.type	ADC_FIFO_Is_Full, @function
ADC_FIFO_Is_Full:
.LFB18:
	.loc 1 419 1 is_stmt 1
	.cfi_startproc
	.loc 1 420 5
	.loc 1 422 5
	.loc 1 422 11 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL105:
	.loc 1 424 5 is_stmt 1
	.loc 1 424 7 is_stmt 0
	srli	a0,a0,3
.LVL106:
	.loc 1 429 1
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE18:
	.size	ADC_FIFO_Is_Full, .-ADC_FIFO_Is_Full
	.section	.text.ADC_FIFO_Is_Empty,"ax",@progbits
	.align	1
	.globl	ADC_FIFO_Is_Empty
	.type	ADC_FIFO_Is_Empty, @function
ADC_FIFO_Is_Empty:
.LFB19:
	.loc 1 440 1 is_stmt 1
	.cfi_startproc
	.loc 1 441 5
	.loc 1 443 5
	.loc 1 443 11 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL107:
	.loc 1 445 5 is_stmt 1
	.loc 1 445 7 is_stmt 0
	srli	a0,a0,2
.LVL108:
	xori	a0,a0,1
	.loc 1 450 1
	andi	a0,a0,1
	ret
	.cfi_endproc
.LFE19:
	.size	ADC_FIFO_Is_Empty, .-ADC_FIFO_Is_Empty
	.section	.text.ADC_Read_FIFO,"ax",@progbits
	.align	1
	.globl	ADC_Read_FIFO
	.type	ADC_Read_FIFO, @function
ADC_Read_FIFO:
.LFB20:
	.loc 1 461 1 is_stmt 1
	.cfi_startproc
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 11 is_stmt 0
	li	a5,1073750016
	lw	a0,4(a5)
.LVL109:
	.loc 1 466 5 is_stmt 1
	.loc 1 467 1 is_stmt 0
	ret
	.cfi_endproc
.LFE20:
	.size	ADC_Read_FIFO, .-ADC_Read_FIFO
	.globl	__floatsidf
	.globl	__muldf3
	.globl	__extendsfdf2
	.globl	__truncdfsf2
	.section	.text.ADC_Parse_Result,"ax",@progbits
	.align	1
	.globl	ADC_Parse_Result
	.type	ADC_Parse_Result, @function
ADC_Parse_Result:
.LFB21:
	.loc 1 480 1 is_stmt 1
	.cfi_startproc
.LVL110:
	.loc 1 481 5
	.loc 1 482 5
	.loc 1 483 5
	.loc 1 484 5
	.loc 1 485 5
	.loc 1 486 5
	.loc 1 488 5
	.loc 1 480 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s1,100(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s4,88(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	fsw	fs0,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 40, -68
	.loc 1 488 12
	li	a5,1073807360
	lw	s0,-1776(a5)
.LVL111:
	.loc 1 489 5 is_stmt 1
	.loc 1 489 12 is_stmt 0
	lw	a3,-1772(a5)
.LVL112:
	.loc 1 490 5 is_stmt 1
	.loc 1 490 53 is_stmt 0
	srli	s0,s0,2
.LVL113:
	.loc 1 491 52
	srli	s1,a3,2
	.loc 1 493 56
	andi	a3,a3,8
.LVL114:
	.loc 1 490 13
	andi	s0,s0,7
.LVL115:
	.loc 1 491 5 is_stmt 1
	.loc 1 491 12 is_stmt 0
	andi	s1,s1,1
.LVL116:
	.loc 1 493 5 is_stmt 1
	.loc 1 493 7 is_stmt 0
	bne	a3,zero,.L44
	.loc 1 494 12
	lui	a5,%hi(.LC1)
	flw	fs0,%lo(.LC1)(a5)
.L29:
.LVL117:
	.loc 1 496 5 is_stmt 1
	slli	a1,a1,2
.LVL118:
	.loc 1 496 7 is_stmt 0
	beq	s1,zero,.L30
	add	a5,a0,a1
	.loc 1 528 21
	addi	a3,s0,-2
	sw	a5,8(sp)
	andi	a5,a3,253
	.loc 1 530 47
	lui	a3,%hi(.LC7)
	lw	a6,%lo(.LC7+4)(a3)
	.loc 1 528 21
	sw	a5,12(sp)
	.loc 1 530 47
	lw	a5,%lo(.LC7)(a3)
	.loc 1 527 47
	lui	a3,%hi(.LC6)
	.loc 1 530 47
	sw	a6,20(sp)
	sw	a5,16(sp)
	.loc 1 527 47
	lw	a6,%lo(.LC6+4)(a3)
	lw	a5,%lo(.LC6)(a3)
	.loc 1 524 47
	lui	a3,%hi(.LC5)
	lw	s6,%lo(.LC5)(a3)
	lw	s7,%lo(.LC5+4)(a3)
	.loc 1 530 41
	li	s11,65536
	.loc 1 526 51
	li	s10,16384
	.loc 1 523 51
	li	s2,4096
	mv	s5,a2
	mv	s4,a0
	.loc 1 530 41
	addi	s11,s11,-1
	.loc 1 526 51
	addi	s10,s10,-1
	.loc 1 527 47
	sw	a5,24(sp)
	sw	a6,28(sp)
	.loc 1 523 51
	addi	s2,s2,-1
.LVL119:
.L31:
	.loc 1 512 9 discriminator 1
	lw	a5,8(sp)
	beq	s4,a5,.L28
	.loc 1 513 13 is_stmt 1
.LVL120:
	.loc 1 514 13
	.loc 1 514 40 is_stmt 0
	lw	a3,0(s4)
	.loc 1 513 17
	li	s3,0
	.loc 1 514 40
	srli	a3,a3,21
	.loc 1 514 30
	sb	a3,0(s5)
	.loc 1 515 13 is_stmt 1
	.loc 1 515 41 is_stmt 0
	lhu	a3,2(s4)
	.loc 1 515 46
	andi	a3,a3,31
	.loc 1 515 30
	sb	a3,1(s5)
	.loc 1 517 13 is_stmt 1
	.loc 1 517 22 is_stmt 0
	lw	a3,0(s4)
	.loc 1 517 15
	slli	a5,a3,16
	bge	a5,zero,.L37
	.loc 1 518 17 is_stmt 1
	.loc 1 519 17
	.loc 1 519 27 is_stmt 0
	neg	a3,a3
	sw	a3,0(s4)
	.loc 1 520 17 is_stmt 1
.LVL121:
	.loc 1 520 21 is_stmt 0
	mv	s3,s1
.LVL122:
.L37:
	.loc 1 522 13 is_stmt 1
	.loc 1 522 15 is_stmt 0
	bne	s0,zero,.L38
	.loc 1 523 17 is_stmt 1
	.loc 1 523 51 is_stmt 0
	lw	a0,0(s4)
	srli	a0,a0,4
	and	a0,a0,s2
	slli	a0,a0,16
	srli	a0,a0,16
	.loc 1 523 32
	sh	a0,2(s5)
	.loc 1 524 17 is_stmt 1
	.loc 1 524 47 is_stmt 0
	call	__floatsidf
.LVL123:
	mv	a2,s6
	mv	a3,s7
.L52:
	.loc 1 530 47
	call	__muldf3
.LVL124:
	.loc 1 530 55
	fmv.s	fa0,fs0
	.loc 1 530 47
	mv	s8,a0
	mv	s9,a1
	.loc 1 530 55
	call	__extendsfdf2
.LVL125:
	mv	a2,a0
	mv	a3,a1
	mv	a0,s8
	mv	a1,s9
	call	__muldf3
.LVL126:
	call	__truncdfsf2
.LVL127:
	fsw	fa0,4(s5)
.L39:
	.loc 1 532 13 is_stmt 1
	.loc 1 532 15 is_stmt 0
	beq	s3,zero,.L41
	.loc 1 533 17 is_stmt 1
	.loc 1 533 34 is_stmt 0
	flw	fa5,4(s5)
	fneg.s	fa5,fa5
	.loc 1 533 32
	fsw	fa5,4(s5)
.L41:
	addi	s5,s5,8
	addi	s4,s4,4
	j	.L31
.LVL128:
.L44:
	.loc 1 485 11
	lui	a5,%hi(.LC0)
	flw	fs0,%lo(.LC0)(a5)
	j	.L29
.LVL129:
.L30:
	add	a5,a0,a1
	.loc 1 506 21
	addi	a3,s0,-2
	sw	a5,8(sp)
	andi	a5,a3,253
	.loc 1 508 47
	lui	a3,%hi(.LC4)
	lw	a6,%lo(.LC4+4)(a3)
	.loc 1 506 21
	sw	a5,12(sp)
	.loc 1 508 47
	lw	a5,%lo(.LC4)(a3)
	.loc 1 505 47
	lui	a3,%hi(.LC3)
	lw	s4,%lo(.LC3)(a3)
	lw	s5,%lo(.LC3+4)(a3)
	.loc 1 502 47
	lui	a3,%hi(.LC2)
	lw	s6,%lo(.LC2)(a3)
	lw	s7,%lo(.LC2+4)(a3)
	.loc 1 508 41
	li	s9,65536
	.loc 1 504 51
	li	s1,16384
.LVL130:
	.loc 1 501 51
	li	s8,4096
	mv	s2,a0
	mv	s3,a2
	.loc 1 508 41
	addi	s9,s9,-1
	.loc 1 508 47
	sw	a5,16(sp)
	sw	a6,20(sp)
	.loc 1 504 51
	addi	s1,s1,-1
	.loc 1 501 51
	addi	s8,s8,-1
.LVL131:
.L32:
	.loc 1 497 9 discriminator 1
	lw	a5,8(sp)
	bne	a5,s2,.L36
.LVL132:
.L28:
	.loc 1 537 1
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
.LVL133:
	lw	s1,100(sp)
	.cfi_restore 9
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	flw	fs0,44(sp)
	.cfi_restore 40
.LVL134:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL135:
.L36:
	.cfi_restore_state
	.loc 1 498 13 is_stmt 1
	.loc 1 498 40 is_stmt 0
	lw	a3,0(s2)
	.loc 1 499 30
	li	a5,-1
	sb	a5,1(s3)
	.loc 1 498 40
	srli	a3,a3,21
	.loc 1 498 30
	sb	a3,0(s3)
	.loc 1 499 13 is_stmt 1
	.loc 1 500 13
	.loc 1 500 15 is_stmt 0
	bne	s0,zero,.L33
	.loc 1 501 17 is_stmt 1
	.loc 1 501 51 is_stmt 0
	lw	a0,0(s2)
	srli	a0,a0,4
	and	a0,a0,s8
	slli	a0,a0,16
	srli	a0,a0,16
	.loc 1 501 32
	sh	a0,2(s3)
	.loc 1 502 17 is_stmt 1
	.loc 1 502 47 is_stmt 0
	call	__floatsidf
.LVL136:
	mv	a2,s6
	mv	a3,s7
.L51:
	.loc 1 508 47
	call	__muldf3
.LVL137:
	.loc 1 508 55
	fmv.s	fa0,fs0
	.loc 1 508 47
	mv	s10,a0
	mv	s11,a1
	.loc 1 508 55
	call	__extendsfdf2
.LVL138:
	mv	a2,a0
	mv	a3,a1
	mv	a0,s10
	mv	a1,s11
	call	__muldf3
.LVL139:
	call	__truncdfsf2
.LVL140:
	fsw	fa0,4(s3)
.L34:
	addi	s2,s2,4
	addi	s3,s3,8
	j	.L32
.L33:
	.loc 1 503 19 is_stmt 1
	.loc 1 503 21 is_stmt 0
	li	a5,1
	bne	s0,a5,.L35
	.loc 1 504 17 is_stmt 1
	.loc 1 504 51 is_stmt 0
	lw	a0,0(s2)
	srli	a0,a0,2
	and	a0,a0,s1
	slli	a0,a0,16
	srli	a0,a0,16
	.loc 1 504 32
	sh	a0,2(s3)
	.loc 1 505 17 is_stmt 1
	.loc 1 505 47 is_stmt 0
	call	__floatsidf
.LVL141:
	mv	a2,s4
	mv	a3,s5
	j	.L51
.L35:
	.loc 1 506 19 is_stmt 1
	.loc 1 506 21 is_stmt 0
	lw	a5,12(sp)
	bne	a5,zero,.L34
	.loc 1 507 17 is_stmt 1
	.loc 1 507 40 is_stmt 0
	lw	a0,0(s2)
	.loc 1 507 32
	sh	a0,2(s3)
	.loc 1 508 17 is_stmt 1
	.loc 1 508 47 is_stmt 0
	and	a0,a0,s9
	call	__floatsidf
.LVL142:
	lw	a2,16(sp)
	lw	a3,20(sp)
	j	.L51
.LVL143:
.L38:
	.loc 1 525 19 is_stmt 1
	.loc 1 525 21 is_stmt 0
	li	a5,1
	bne	s0,a5,.L40
	.loc 1 526 17 is_stmt 1
	.loc 1 526 51 is_stmt 0
	lw	a0,0(s4)
	srli	a0,a0,2
	and	a0,a0,s10
	slli	a0,a0,16
	srli	a0,a0,16
	.loc 1 526 32
	sh	a0,2(s5)
	.loc 1 527 17 is_stmt 1
	.loc 1 527 47 is_stmt 0
	call	__floatsidf
.LVL144:
	lw	a2,24(sp)
	lw	a3,28(sp)
	j	.L52
.L40:
	.loc 1 528 19 is_stmt 1
	.loc 1 528 21 is_stmt 0
	lw	a5,12(sp)
	bne	a5,zero,.L39
	.loc 1 529 17 is_stmt 1
	.loc 1 529 40 is_stmt 0
	lw	a0,0(s4)
	.loc 1 529 32
	sh	a0,2(s5)
	.loc 1 530 17 is_stmt 1
	.loc 1 530 47 is_stmt 0
	and	a0,a0,s11
	call	__floatsidf
.LVL145:
	lw	a2,16(sp)
	lw	a3,20(sp)
	j	.L52
	.cfi_endproc
.LFE21:
	.size	ADC_Parse_Result, .-ADC_Parse_Result
	.section	.text.ADC_IntMask,"ax",@progbits
	.align	1
	.globl	ADC_IntMask
	.type	ADC_IntMask, @function
ADC_IntMask:
.LFB22:
	.loc 1 549 1 is_stmt 1
	.cfi_startproc
.LVL146:
	.loc 1 550 5
	.loc 1 553 5
	.loc 1 554 5
	.loc 1 556 5
	li	a5,5
	bgtu	a0,a5,.L53
	lui	a5,%hi(.L56)
	addi	a5,a5,%lo(.L56)
	slli	a0,a0,2
.LVL147:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_IntMask,"a",@progbits
	.align	2
	.align	2
.L56:
	.word	.L61
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L57
	.word	.L55
	.section	.text.ADC_IntMask
.L61:
	.loc 1 559 13
	.loc 1 559 19 is_stmt 0
	li	a5,1073807360
	lw	a4,-1748(a5)
.LVL148:
	.loc 1 560 13 is_stmt 1
	.loc 1 565 23 is_stmt 0
	ori	a5,a4,512
	.loc 1 560 15
	bne	a1,zero,.L65
	.loc 1 562 17 is_stmt 1
	.loc 1 562 23 is_stmt 0
	andi	a5,a4,-513
.LVL149:
	.loc 1 567 13 is_stmt 1
.L65:
	.loc 1 578 13
	.loc 1 578 69 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 579 13 is_stmt 1
	ret
.LVL150:
.L60:
	.loc 1 570 13
	.loc 1 570 19 is_stmt 0
	li	a5,1073807360
	lw	a4,-1748(a5)
.LVL151:
	.loc 1 571 13 is_stmt 1
	.loc 1 576 23 is_stmt 0
	ori	a5,a4,256
	.loc 1 571 15
	bne	a1,zero,.L65
	.loc 1 573 17 is_stmt 1
	.loc 1 573 23 is_stmt 0
	andi	a5,a4,-257
.LVL152:
	j	.L65
.LVL153:
.L59:
	.loc 1 581 13 is_stmt 1
	.loc 1 581 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL154:
	.loc 1 582 13 is_stmt 1
	.loc 1 584 23 is_stmt 0
	li	a4,-16384
	.loc 1 582 15
	beq	a1,zero,.L75
	.loc 1 587 17 is_stmt 1
	.loc 1 587 23 is_stmt 0
	li	a4,16384
.L74:
	.loc 1 609 23
	or	a5,a5,a4
.LVL155:
	j	.L71
.LVL156:
.L58:
	.loc 1 592 13 is_stmt 1
	.loc 1 592 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL157:
	.loc 1 593 13 is_stmt 1
	.loc 1 595 23 is_stmt 0
	li	a4,-8192
	.loc 1 593 15
	beq	a1,zero,.L75
	.loc 1 598 17 is_stmt 1
	.loc 1 598 23 is_stmt 0
	li	a4,8192
	j	.L74
.LVL158:
.L57:
	.loc 1 603 13 is_stmt 1
	.loc 1 603 19 is_stmt 0
	li	a5,1073750016
	lw	a5,0(a5)
.LVL159:
	.loc 1 604 13 is_stmt 1
	.loc 1 604 15 is_stmt 0
	bne	a1,zero,.L70
	.loc 1 606 17 is_stmt 1
	.loc 1 606 23 is_stmt 0
	li	a4,-4096
.L75:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL160:
.L71:
	.loc 1 611 13 is_stmt 1
	.loc 1 611 67 is_stmt 0
	li	a4,1073750016
.LVL161:
.L73:
	.loc 1 637 17 is_stmt 1
	.loc 1 637 71 is_stmt 0
	sw	a5,0(a4)
.LVL162:
.L53:
	.loc 1 643 1
	ret
.LVL163:
.L70:
	.loc 1 609 17 is_stmt 1
	.loc 1 609 23 is_stmt 0
	li	a4,4096
	j	.L74
.LVL164:
.L55:
	.loc 1 614 13 is_stmt 1
	.loc 1 616 23 is_stmt 0
	li	a5,1073754112
	lw	a5,-1748(a5)
	.loc 1 614 15
	bne	a1,zero,.L72
	.loc 1 616 17 is_stmt 1
.LVL165:
	.loc 1 617 17
	.loc 1 618 17
	.loc 1 618 23 is_stmt 0
	andi	a5,a5,-769
.LVL166:
	.loc 1 619 17 is_stmt 1
	.loc 1 619 73 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 621 17 is_stmt 1
	.loc 1 621 23 is_stmt 0
	li	a3,1073750016
	lw	a5,0(a3)
.LVL167:
	.loc 1 622 17 is_stmt 1
	.loc 1 623 17
	.loc 1 624 17
	.loc 1 624 23 is_stmt 0
	li	a4,-28672
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL168:
	.loc 1 625 17 is_stmt 1
	.loc 1 625 71 is_stmt 0
	sw	a5,0(a3)
	ret
.LVL169:
.L72:
	.loc 1 628 17 is_stmt 1
	.loc 1 629 17
	.loc 1 630 17
	.loc 1 630 23 is_stmt 0
	ori	a5,a5,768
.LVL170:
	.loc 1 631 17 is_stmt 1
	.loc 1 631 73 is_stmt 0
	li	a4,1073807360
	sw	a5,-1748(a4)
	.loc 1 633 17 is_stmt 1
	.loc 1 633 23 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL171:
	.loc 1 634 17 is_stmt 1
	.loc 1 635 17
	.loc 1 636 17
	.loc 1 636 23 is_stmt 0
	li	a3,28672
	or	a5,a5,a3
.LVL172:
	j	.L73
	.cfi_endproc
.LFE22:
	.size	ADC_IntMask, .-ADC_IntMask
	.section	.text.ADC_IntClr,"ax",@progbits
	.align	1
	.globl	ADC_IntClr
	.type	ADC_IntClr, @function
ADC_IntClr:
.LFB23:
	.loc 1 654 1 is_stmt 1
	.cfi_startproc
.LVL173:
	.loc 1 655 5
	.loc 1 658 5
	.loc 1 660 5
	li	a5,5
	bgtu	a0,a5,.L76
	lui	a5,%hi(.L79)
	addi	a5,a5,%lo(.L79)
	slli	a0,a0,2
.LVL174:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_IntClr,"a",@progbits
	.align	2
	.align	2
.L79:
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L78
	.section	.text.ADC_IntClr
.L84:
	.loc 1 663 13
	.loc 1 663 19 is_stmt 0
	li	a4,1073807360
	lw	a5,-1748(a4)
.LVL175:
	.loc 1 664 13 is_stmt 1
	.loc 1 664 19 is_stmt 0
	andi	a5,a5,-33
.LVL176:
	.loc 1 665 13 is_stmt 1
	.loc 1 665 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 667 13 is_stmt 1
	.loc 1 667 19 is_stmt 0
	ori	a5,a5,32
.LVL177:
	.loc 1 668 13 is_stmt 1
	.loc 1 668 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 671 13 is_stmt 1
	.loc 1 671 19 is_stmt 0
	lw	a5,-1748(a4)
.LVL178:
	.loc 1 672 13 is_stmt 1
	.loc 1 672 19 is_stmt 0
	andi	a5,a5,-33
.LVL179:
	.loc 1 673 13 is_stmt 1
.L85:
	.loc 1 687 13
	.loc 1 687 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 689 13 is_stmt 1
	ret
.LVL180:
.L83:
	.loc 1 677 13
	.loc 1 677 19 is_stmt 0
	li	a4,1073807360
	lw	a5,-1748(a4)
.LVL181:
	.loc 1 678 13 is_stmt 1
	.loc 1 678 19 is_stmt 0
	andi	a5,a5,-17
.LVL182:
	.loc 1 679 13 is_stmt 1
	.loc 1 679 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 681 13 is_stmt 1
	.loc 1 681 19 is_stmt 0
	ori	a5,a5,16
.LVL183:
	.loc 1 682 13 is_stmt 1
	.loc 1 682 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 685 13 is_stmt 1
	.loc 1 685 19 is_stmt 0
	lw	a5,-1748(a4)
.LVL184:
	.loc 1 686 13 is_stmt 1
	.loc 1 686 19 is_stmt 0
	andi	a5,a5,-17
.LVL185:
	j	.L85
.L82:
	.loc 1 691 13 is_stmt 1
	.loc 1 691 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL186:
	.loc 1 692 13 is_stmt 1
	.loc 1 692 19 is_stmt 0
	andi	a5,a5,-1025
.LVL187:
	.loc 1 693 13 is_stmt 1
	.loc 1 693 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 695 13 is_stmt 1
	.loc 1 695 19 is_stmt 0
	ori	a5,a5,1024
.LVL188:
	.loc 1 696 13 is_stmt 1
	.loc 1 696 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 699 13 is_stmt 1
	.loc 1 699 19 is_stmt 0
	lw	a5,0(a4)
.LVL189:
	.loc 1 700 13 is_stmt 1
	.loc 1 700 19 is_stmt 0
	andi	a5,a5,-1025
.LVL190:
	.loc 1 701 13 is_stmt 1
.L86:
	.loc 1 765 13
	.loc 1 765 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 768 13 is_stmt 1
.LVL191:
.L76:
	.loc 1 772 1 is_stmt 0
	ret
.L81:
	.loc 1 705 13 is_stmt 1
	.loc 1 705 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL192:
	.loc 1 706 13 is_stmt 1
	.loc 1 706 19 is_stmt 0
	andi	a5,a5,-513
.LVL193:
	.loc 1 707 13 is_stmt 1
	.loc 1 707 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 709 13 is_stmt 1
	.loc 1 709 19 is_stmt 0
	ori	a5,a5,512
.LVL194:
	.loc 1 710 13 is_stmt 1
	.loc 1 710 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 713 13 is_stmt 1
	.loc 1 713 19 is_stmt 0
	lw	a5,0(a4)
.LVL195:
	.loc 1 714 13 is_stmt 1
	.loc 1 714 19 is_stmt 0
	andi	a5,a5,-513
.LVL196:
	.loc 1 715 13 is_stmt 1
	j	.L86
.LVL197:
.L80:
	.loc 1 719 13
	.loc 1 719 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL198:
	.loc 1 720 13 is_stmt 1
	.loc 1 720 19 is_stmt 0
	andi	a5,a5,-257
.LVL199:
	.loc 1 721 13 is_stmt 1
	.loc 1 721 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 723 13 is_stmt 1
	.loc 1 723 19 is_stmt 0
	ori	a5,a5,256
.LVL200:
	.loc 1 724 13 is_stmt 1
	.loc 1 724 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 727 13 is_stmt 1
	.loc 1 727 19 is_stmt 0
	lw	a5,0(a4)
.LVL201:
	.loc 1 728 13 is_stmt 1
	.loc 1 728 19 is_stmt 0
	andi	a5,a5,-257
.LVL202:
	.loc 1 729 13 is_stmt 1
	j	.L86
.LVL203:
.L78:
	.loc 1 733 13
	.loc 1 733 19 is_stmt 0
	li	a4,1073807360
	lw	a5,-1748(a4)
.LVL204:
	.loc 1 734 13 is_stmt 1
	.loc 1 735 13
	.loc 1 735 19 is_stmt 0
	andi	a5,a5,-49
.LVL205:
	.loc 1 736 13 is_stmt 1
	.loc 1 736 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 738 13 is_stmt 1
.LVL206:
	.loc 1 739 13
	.loc 1 739 19 is_stmt 0
	ori	a5,a5,48
.LVL207:
	.loc 1 740 13 is_stmt 1
	.loc 1 740 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 743 13 is_stmt 1
	.loc 1 743 19 is_stmt 0
	lw	a5,-1748(a4)
.LVL208:
	.loc 1 744 13 is_stmt 1
	.loc 1 745 13
	.loc 1 745 19 is_stmt 0
	andi	a5,a5,-49
.LVL209:
	.loc 1 746 13 is_stmt 1
	.loc 1 746 69 is_stmt 0
	sw	a5,-1748(a4)
	.loc 1 749 13 is_stmt 1
	.loc 1 749 19 is_stmt 0
	li	a4,1073750016
	lw	a5,0(a4)
.LVL210:
	.loc 1 750 13 is_stmt 1
	.loc 1 751 13
	.loc 1 752 13
	.loc 1 752 19 is_stmt 0
	andi	a5,a5,-1793
.LVL211:
	.loc 1 753 13 is_stmt 1
	.loc 1 753 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 755 13 is_stmt 1
.LVL212:
	.loc 1 756 13
	.loc 1 757 13
	.loc 1 757 19 is_stmt 0
	ori	a5,a5,1792
.LVL213:
	.loc 1 758 13 is_stmt 1
	.loc 1 758 67 is_stmt 0
	sw	a5,0(a4)
	.loc 1 761 13 is_stmt 1
	.loc 1 761 19 is_stmt 0
	lw	a5,0(a4)
.LVL214:
	.loc 1 762 13 is_stmt 1
	.loc 1 763 13
	.loc 1 764 13
	.loc 1 764 19 is_stmt 0
	andi	a5,a5,-1793
.LVL215:
	j	.L86
	.cfi_endproc
.LFE23:
	.size	ADC_IntClr, .-ADC_IntClr
	.section	.text.ADC_GetIntStatus,"ax",@progbits
	.align	1
	.globl	ADC_GetIntStatus
	.type	ADC_GetIntStatus, @function
ADC_GetIntStatus:
.LFB24:
	.loc 1 783 1 is_stmt 1
	.cfi_startproc
.LVL216:
	.loc 1 784 5
	.loc 1 785 5
	.loc 1 788 5
	.loc 1 790 5
	li	a5,4
	bgtu	a0,a5,.L95
	lui	a5,%hi(.L90)
	addi	a5,a5,%lo(.L90)
	slli	a0,a0,2
.LVL217:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.ADC_GetIntStatus,"a",@progbits
	.align	2
	.align	2
.L90:
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L91
	.word	.L89
	.section	.text.ADC_GetIntStatus
.L94:
	.loc 1 793 13
	.loc 1 793 19 is_stmt 0
	li	a5,1073807360
	lw	a0,-1748(a5)
.LVL218:
	.loc 1 794 13 is_stmt 1
	.loc 1 794 62 is_stmt 0
	srli	a0,a0,1
.LVL219:
.L96:
	.loc 1 798 13 is_stmt 1
	.loc 1 798 23 is_stmt 0
	andi	a0,a0,1
.LVL220:
	.loc 1 799 13 is_stmt 1
	ret
.LVL221:
.L93:
	.loc 1 797 13
	.loc 1 797 19 is_stmt 0
	li	a5,1073807360
	lw	a0,-1748(a5)
	j	.L96
.L92:
	.loc 1 801 13 is_stmt 1
	.loc 1 801 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL222:
	.loc 1 802 13 is_stmt 1
	.loc 1 802 65 is_stmt 0
	srli	a0,a0,6
.LVL223:
	j	.L96
.L91:
	.loc 1 805 13 is_stmt 1
	.loc 1 805 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL224:
	.loc 1 806 13 is_stmt 1
	.loc 1 806 65 is_stmt 0
	srli	a0,a0,5
.LVL225:
	j	.L96
.L89:
	.loc 1 809 13 is_stmt 1
	.loc 1 809 19 is_stmt 0
	li	a5,1073750016
	lw	a0,0(a5)
.LVL226:
	.loc 1 810 13 is_stmt 1
	.loc 1 810 65 is_stmt 0
	srli	a0,a0,4
.LVL227:
	j	.L96
.LVL228:
.L95:
	.loc 1 785 17
	li	a0,0
.LVL229:
	.loc 1 818 5 is_stmt 1
	.loc 1 819 1 is_stmt 0
	ret
	.cfi_endproc
.LFE24:
	.size	ADC_GetIntStatus, .-ADC_GetIntStatus
	.section	.text.ADC_Int_Callback_Install,"ax",@progbits
	.align	1
	.globl	ADC_Int_Callback_Install
	.type	ADC_Int_Callback_Install, @function
ADC_Int_Callback_Install:
.LFB25:
	.loc 1 831 1 is_stmt 1
	.cfi_startproc
.LVL230:
	.loc 1 833 5
	.loc 1 835 5
	.loc 1 836 1 is_stmt 0
	ret
	.cfi_endproc
.LFE25:
	.size	ADC_Int_Callback_Install, .-ADC_Int_Callback_Install
	.section	.text.ADC_Vbat_Enable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Enable
	.type	ADC_Vbat_Enable, @function
ADC_Vbat_Enable:
.LFB26:
	.loc 1 894 1 is_stmt 1
	.cfi_startproc
	.loc 1 895 5
	.loc 1 897 5
	.loc 1 897 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL231:
	.loc 1 898 5 is_stmt 1
	.loc 1 898 11 is_stmt 0
	ori	a5,a5,16
.LVL232:
	.loc 1 899 5 is_stmt 1
	.loc 1 899 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 900 1
	ret
	.cfi_endproc
.LFE26:
	.size	ADC_Vbat_Enable, .-ADC_Vbat_Enable
	.section	.text.ADC_Vbat_Disable,"ax",@progbits
	.align	1
	.globl	ADC_Vbat_Disable
	.type	ADC_Vbat_Disable, @function
ADC_Vbat_Disable:
.LFB27:
	.loc 1 911 1 is_stmt 1
	.cfi_startproc
	.loc 1 912 5
	.loc 1 914 5
	.loc 1 914 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL233:
	.loc 1 915 5 is_stmt 1
	.loc 1 915 11 is_stmt 0
	andi	a5,a5,-17
.LVL234:
	.loc 1 916 5 is_stmt 1
	.loc 1 916 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 917 1
	ret
	.cfi_endproc
.LFE27:
	.size	ADC_Vbat_Disable, .-ADC_Vbat_Disable
	.section	.text.ADC_Tsen_Init,"ax",@progbits
	.align	1
	.globl	ADC_Tsen_Init
	.type	ADC_Tsen_Init, @function
ADC_Tsen_Init:
.LFB28:
	.loc 1 928 1 is_stmt 1
	.cfi_startproc
.LVL235:
	.loc 1 929 5
	.loc 1 931 5
	.loc 1 934 5
	.loc 1 934 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL236:
	.loc 1 936 5 is_stmt 1
	.loc 1 938 5
	.loc 1 940 5
	.loc 1 940 11 is_stmt 0
	li	a3,-2013265920
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL237:
	.loc 1 942 5 is_stmt 1
	.loc 1 942 11 is_stmt 0
	li	a3,262144
	or	a5,a5,a3
.LVL238:
	.loc 1 943 5 is_stmt 1
	.loc 1 943 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 946 5 is_stmt 1
	.loc 1 946 11 is_stmt 0
	lw	a5,-1772(a4)
.LVL239:
	.loc 1 948 5 is_stmt 1
	.loc 1 950 5
	.loc 1 952 5
	.loc 1 954 5
	.loc 1 956 5
	.loc 1 958 5
	.loc 1 960 5
	.loc 1 962 5
	.loc 1 964 5
	li	a3,264503296
	addi	a3,a3,-33
	and	a5,a5,a3
.LVL240:
	.loc 1 958 73 is_stmt 0
	slli	a0,a0,5
.LVL241:
	or	a5,a5,a0
	li	a0,-24576
	addi	a0,a0,127
	and	a5,a5,a0
	.loc 1 964 11
	li	a0,536870912
	addi	a0,a0,320
	or	a5,a5,a0
.LVL242:
	.loc 1 966 5 is_stmt 1
	.loc 1 966 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 969 5 is_stmt 1
	.loc 1 969 11 is_stmt 0
	lw	a5,-1776(a4)
.LVL243:
	.loc 1 971 5 is_stmt 1
	.loc 1 971 12 is_stmt 0
	li	a3,67108864
	or	a5,a5,a3
.LVL244:
	.loc 1 972 5 is_stmt 1
	.loc 1 972 61 is_stmt 0
	sw	a5,-1776(a4)
	.loc 1 973 1
	ret
	.cfi_endproc
.LFE28:
	.size	ADC_Tsen_Init, .-ADC_Tsen_Init
	.section	.sclock_rlt_code,"ax",@progbits
	.align	1
	.globl	ADC_Trim_TSEN
	.type	ADC_Trim_TSEN, @function
ADC_Trim_TSEN:
.LFB29:
	.loc 1 984 1 is_stmt 1
	.cfi_startproc
.LVL245:
	.loc 1 985 5
	.loc 1 987 5
	.loc 1 984 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 987 5
	addi	a0,sp,12
.LVL246:
	.loc 1 984 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 987 5
	call	EF_Ctrl_Read_TSEN_Trim
.LVL247:
	.loc 1 989 5 is_stmt 1
	.loc 1 989 8 is_stmt 0
	lw	a0,12(sp)
	.loc 1 989 7
	slli	a5,a0,18
	blt	a5,zero,.L102
.L104:
	.loc 1 996 12
	li	a0,1
.L103:
	.loc 1 997 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL248:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL249:
.L102:
	.cfi_restore_state
	.loc 1 990 9 is_stmt 1
	.loc 1 990 70 is_stmt 0
	li	s0,4096
	addi	s0,s0,-1
	.loc 1 990 16
	srli	s1,a0,12
	.loc 1 990 70
	and	a0,a0,s0
	.loc 1 990 42
	slli	a0,a0,16
	li	a1,12
	srli	a0,a0,16
	.loc 1 990 16
	andi	s1,s1,1
	.loc 1 990 42
	call	EF_Ctrl_Get_Trim_Parity
.LVL250:
	.loc 1 990 11
	bne	s1,a0,.L104
	.loc 1 991 13 is_stmt 1
	.loc 1 991 32 is_stmt 0
	lw	a5,12(sp)
	.loc 1 992 20
	li	a0,0
	.loc 1 991 32
	and	s0,a5,s0
	.loc 1 991 26
	sh	s0,0(s2)
	.loc 1 992 13 is_stmt 1
	.loc 1 992 20 is_stmt 0
	j	.L103
	.cfi_endproc
.LFE29:
	.size	ADC_Trim_TSEN, .-ADC_Trim_TSEN
	.section	.text.ADC_SET_TSVBE_LOW,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_LOW
	.type	ADC_SET_TSVBE_LOW, @function
ADC_SET_TSVBE_LOW:
.LFB30:
	.loc 1 1009 1 is_stmt 1
	.cfi_startproc
	.loc 1 1010 5
	.loc 1 1011 5
	.loc 1 1011 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL251:
	.loc 1 1012 5 is_stmt 1
	.loc 1 1012 11 is_stmt 0
	slli	a5,a5,1
.LVL252:
	srli	a5,a5,1
.LVL253:
	.loc 1 1013 5 is_stmt 1
	.loc 1 1013 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 1014 1
	ret
	.cfi_endproc
.LFE30:
	.size	ADC_SET_TSVBE_LOW, .-ADC_SET_TSVBE_LOW
	.section	.text.ADC_SET_TSVBE_HIGH,"ax",@progbits
	.align	1
	.globl	ADC_SET_TSVBE_HIGH
	.type	ADC_SET_TSVBE_HIGH, @function
ADC_SET_TSVBE_HIGH:
.LFB31:
	.loc 1 1025 1 is_stmt 1
	.cfi_startproc
	.loc 1 1026 5
	.loc 1 1027 5
	.loc 1 1027 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1772(a4)
.LVL254:
	.loc 1 1028 5 is_stmt 1
	.loc 1 1028 11 is_stmt 0
	li	a3,-2147483648
	or	a5,a5,a3
.LVL255:
	.loc 1 1029 5 is_stmt 1
	.loc 1 1029 61 is_stmt 0
	sw	a5,-1772(a4)
	.loc 1 1030 1
	ret
	.cfi_endproc
.LFE31:
	.size	ADC_SET_TSVBE_HIGH, .-ADC_SET_TSVBE_HIGH
	.globl	__divdf3
	.section	.text.TSEN_Get_Temp,"ax",@progbits
	.align	1
	.globl	TSEN_Get_Temp
	.type	TSEN_Get_Temp, @function
TSEN_Get_Temp:
.LFB32:
	.loc 1 1041 1 is_stmt 1
	.cfi_startproc
.LVL256:
	.loc 1 1042 5
	.loc 1 1043 5
	.loc 1 1044 5
	.loc 1 1041 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.loc 1 1049 12
	li	a4,1073750016
	.loc 1 1041 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 1044 14
	sw	zero,4(sp)
	.loc 1 1045 5 is_stmt 1
	.loc 1 1046 5
	.loc 1 1049 5
	.loc 1 1049 12 is_stmt 0
	lw	a5,0(a4)
.LVL257:
	.loc 1 1050 5 is_stmt 1
	.loc 1 1041 1 is_stmt 0
	mv	s0,a0
	.loc 1 1050 12
	ori	a5,a5,2
.LVL258:
	.loc 1 1051 5 is_stmt 1
	.loc 1 1051 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 1053 5 is_stmt 1
	call	ADC_SET_TSVBE_LOW
.LVL259:
	.loc 1 1055 5
	call	ADC_Start
.LVL260:
	.loc 1 1056 5
.L109:
	.loc 1 1057 9 discriminator 1
	.loc 1 1056 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL261:
	.loc 1 1056 11 discriminator 1
	beq	a0,zero,.L109
	.loc 1 1058 5 is_stmt 1
.LBB6:
.LBB7:
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 11 is_stmt 0
	li	s1,1073750016
	lw	a5,4(s1)
.LVL262:
	.loc 1 466 5 is_stmt 1
.LBE7:
.LBE6:
	.loc 1 1059 5 is_stmt 0
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	.loc 1 1058 12
	sw	a5,4(sp)
	.loc 1 1059 5 is_stmt 1
	call	ADC_Parse_Result
.LVL263:
	.loc 1 1060 5
	.loc 1 1063 12 is_stmt 0
	lw	a5,0(s1)
	.loc 1 1060 16
	lhu	s2,10(sp)
.LVL264:
	.loc 1 1063 5 is_stmt 1
	.loc 1 1064 5
	.loc 1 1064 12 is_stmt 0
	ori	a5,a5,2
.LVL265:
	.loc 1 1065 5 is_stmt 1
	.loc 1 1065 59 is_stmt 0
	sw	a5,0(s1)
	.loc 1 1068 5 is_stmt 1
	call	ADC_SET_TSVBE_HIGH
.LVL266:
	.loc 1 1070 5
	call	ADC_Start
.LVL267:
	.loc 1 1071 5
.L110:
	.loc 1 1072 9 discriminator 1
	.loc 1 1071 12 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL268:
	.loc 1 1071 11 discriminator 1
	beq	a0,zero,.L110
	.loc 1 1073 5 is_stmt 1
.LBB8:
.LBB9:
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 11 is_stmt 0
	li	a5,1073750016
	lw	a5,4(a5)
.LVL269:
	.loc 1 466 5 is_stmt 1
.LBE9:
.LBE8:
	.loc 1 1074 5 is_stmt 0
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	.loc 1 1073 12
	sw	a5,4(sp)
	.loc 1 1074 5 is_stmt 1
	call	ADC_Parse_Result
.LVL270:
	.loc 1 1075 5
	.loc 1 1075 16 is_stmt 0
	lhu	a5,10(sp)
.LVL271:
	.loc 1 1077 5 is_stmt 1
	fcvt.s.wu	fa5,s0
	fcvt.s.wu	fa4,s2
	fcvt.s.wu	fa0,a5
	lui	s0,%hi(.LC8)
.LVL272:
	.loc 1 1077 8 is_stmt 0
	bleu	s2,a5,.L111
	.loc 1 1079 9 is_stmt 1
	.loc 1 1079 28 is_stmt 0
	fsub.s	fa0,fa4,fa0
.L118:
	.loc 1 1083 41
	fsub.s	fa0,fa0,fa5
	call	__extendsfdf2
.LVL273:
	.loc 1 1083 63
	lw	a2,%lo(.LC8)(s0)
	lw	a3,%lo(.LC8+4)(s0)
	call	__divdf3
.LVL274:
	.loc 1 1083 14
	call	__truncdfsf2
.LVL275:
	.loc 1 1086 5 is_stmt 1
	.loc 1 1087 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL276:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL277:
.L111:
	.cfi_restore_state
	.loc 1 1083 9 is_stmt 1
	.loc 1 1083 28 is_stmt 0
	fsub.s	fa0,fa0,fa4
	j	.L118
	.cfi_endproc
.LFE32:
	.size	TSEN_Get_Temp, .-TSEN_Get_Temp
	.section	.text.ADC_Mic_Init,"ax",@progbits
	.align	1
	.globl	ADC_Mic_Init
	.type	ADC_Mic_Init, @function
ADC_Mic_Init:
.LFB33:
	.loc 1 1099 1 is_stmt 1
	.cfi_startproc
.LVL278:
	.loc 1 1100 5
	.loc 1 1102 5
	.loc 1 1103 5
	.loc 1 1104 5
	.loc 1 1105 5
	.loc 1 1106 5
	.loc 1 1107 5
	.loc 1 1108 5
	.loc 1 1109 5
	.loc 1 1111 5
	.loc 1 1111 13 is_stmt 0
	li	a5,1073807360
	lw	a3,-1772(a5)
.LVL279:
	.loc 1 1113 5 is_stmt 1
	.loc 1 1113 12 is_stmt 0
	lw	a5,-1780(a5)
.LVL280:
	.loc 1 1114 5 is_stmt 1
	.loc 1 1114 25 is_stmt 0
	li	a4,-8388608
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL281:
	.loc 1 1115 5 is_stmt 1
	.loc 1 1114 57 is_stmt 0
	lbu	a4,0(a0)
	.loc 1 1121 7
	slli	a2,a3,18
	.loc 1 1114 95
	slli	a4,a4,23
	.loc 1 1114 12
	or	a4,a4,a5
.LVL282:
	.loc 1 1115 25
	li	a5,-6291456
	addi	a5,a5,-1
	and	a5,a4,a5
.LVL283:
	.loc 1 1116 5 is_stmt 1
	.loc 1 1115 57 is_stmt 0
	lbu	a4,1(a0)
	.loc 1 1115 96
	slli	a4,a4,21
	.loc 1 1115 12
	or	a4,a4,a5
	.loc 1 1116 25
	li	a5,-1048576
.LVL284:
	addi	a5,a5,-1
	and	a4,a4,a5
.LVL285:
	.loc 1 1117 5 is_stmt 1
	.loc 1 1116 57 is_stmt 0
	lbu	a5,2(a0)
	.loc 1 1116 93
	slli	a5,a5,20
	.loc 1 1116 12
	or	a5,a5,a4
	.loc 1 1117 25
	li	a4,-524288
.LVL286:
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL287:
	.loc 1 1118 5 is_stmt 1
	.loc 1 1117 57 is_stmt 0
	lbu	a5,3(a0)
	.loc 1 1117 93
	slli	a5,a5,19
	.loc 1 1117 12
	or	a5,a5,a4
	.loc 1 1118 25
	li	a4,-262144
.LVL288:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL289:
	.loc 1 1119 5 is_stmt 1
	.loc 1 1118 57 is_stmt 0
	lbu	a4,4(a0)
	.loc 1 1118 90
	slli	a4,a4,18
	.loc 1 1118 12
	or	a4,a4,a5
	.loc 1 1119 25
	li	a5,-65536
.LVL290:
	addi	a5,a5,-1
	and	a5,a4,a5
	.loc 1 1119 57
	lbu	a4,5(a0)
	.loc 1 1119 101
	slli	a4,a4,16
	.loc 1 1119 12
	or	a4,a4,a5
.LVL291:
	.loc 1 1121 5 is_stmt 1
	lbu	a5,6(a0)
	.loc 1 1121 7 is_stmt 0
	bge	a2,zero,.L120
	.loc 1 1121 42 discriminator 1
	li	a3,1
.LVL292:
	beq	a5,a3,.L121
.L120:
	.loc 1 1125 9 is_stmt 1
	.loc 1 1125 29 is_stmt 0
	li	a3,-32768
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL293:
	.loc 1 1128 5 is_stmt 1
	.loc 1 1125 97 is_stmt 0
	slli	a5,a5,15
.LVL294:
	.loc 1 1125 16
	or	a5,a5,a4
	.loc 1 1128 25
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
	.loc 1 1128 57
	lbu	a4,7(a0)
	.loc 1 1128 94
	slli	a4,a4,14
	.loc 1 1128 12
	or	a5,a4,a5
.LVL295:
	.loc 1 1130 5 is_stmt 1
	.loc 1 1130 61 is_stmt 0
	li	a4,1073807360
	sw	a5,-1780(a4)
	.loc 1 1132 5 is_stmt 1
	.loc 1 1132 12 is_stmt 0
	li	a5,0
.LVL296:
.L121:
	.loc 1 1134 1
	mv	a0,a5
.LVL297:
	ret
	.cfi_endproc
.LFE33:
	.size	ADC_Mic_Init, .-ADC_Mic_Init
	.section	.text.ADC_MIC_Bias_Enable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Enable
	.type	ADC_MIC_Bias_Enable, @function
ADC_MIC_Bias_Enable:
.LFB34:
	.loc 1 1146 1 is_stmt 1
	.cfi_startproc
	.loc 1 1147 5
	.loc 1 1149 5
	.loc 1 1149 11 is_stmt 0
	li	a4,1073807360
	lw	a5,-1780(a4)
.LVL298:
	.loc 1 1150 5 is_stmt 1
	.loc 1 1150 11 is_stmt 0
	li	a3,16384
	or	a5,a5,a3
.LVL299:
	.loc 1 1151 5 is_stmt 1
	.loc 1 1151 61 is_stmt 0
	sw	a5,-1780(a4)
	.loc 1 1152 1
	ret
	.cfi_endproc
.LFE34:
	.size	ADC_MIC_Bias_Enable, .-ADC_MIC_Bias_Enable
	.section	.text.ADC_MIC_Bias_Disable,"ax",@progbits
	.align	1
	.globl	ADC_MIC_Bias_Disable
	.type	ADC_MIC_Bias_Disable, @function
ADC_MIC_Bias_Disable:
.LFB35:
	.loc 1 1164 1 is_stmt 1
	.cfi_startproc
	.loc 1 1165 5
	.loc 1 1167 5
	.loc 1 1167 11 is_stmt 0
	li	a3,1073807360
	lw	a5,-1780(a3)
.LVL300:
	.loc 1 1168 5 is_stmt 1
	.loc 1 1168 11 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL301:
	.loc 1 1169 5 is_stmt 1
	.loc 1 1169 61 is_stmt 0
	sw	a5,-1780(a3)
	.loc 1 1170 1
	ret
	.cfi_endproc
.LFE35:
	.size	ADC_MIC_Bias_Disable, .-ADC_MIC_Bias_Disable
	.section	.rodata.ADC_Parse_Result.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1073741824
.LC1:
	.word	1079194419
	.section	.rodata.ADC_Parse_Result.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	0
	.word	1060110336
.LC3:
	.word	0
	.word	1058013184
.LC4:
	.word	0
	.word	1055916032
.LC5:
	.word	0
	.word	1061158912
.LC6:
	.word	0
	.word	1059061760
.LC7:
	.word	0
	.word	1056964608
	.section	.rodata.TSEN_Get_Temp.cst8,"aM",@progbits,8
	.align	3
.LC8:
	.word	1855425872
	.word	1075774226
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_ef_ctrl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1886
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF338
	.byte	0xc
	.4byte	.LASF339
	.4byte	.LASF340
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x78
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.4byte	.LASF122
	.byte	0x7
	.byte	0x8
	.byte	0x11
	.4byte	0x7f
	.byte	0x6
	.4byte	.LASF14
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0xa0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x52
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x52
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x99
	.byte	0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0x106
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0xb3
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0x106
	.byte	0
	.byte	0x9
	.4byte	0x25
	.4byte	0x116
	.byte	0xa
	.4byte	0xa0
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x13a
	.byte	0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xe4
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0x116
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x8b
	.byte	0x3
	.4byte	.LASF24
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x99
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x154
	.byte	0xe
	.4byte	.LASF30
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1c6
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1c6
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.4byte	.LASF27
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x99
	.byte	0x8
	.byte	0xc
	.4byte	.LASF28
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x99
	.byte	0xc
	.byte	0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x99
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1cc
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x16c
	.byte	0x9
	.4byte	0x148
	.4byte	0x1dc
	.byte	0xa
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF31
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x25f
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x99
	.byte	0xc
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x99
	.byte	0x14
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x99
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x99
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x2a4
	.byte	0xc
	.4byte	.LASF42
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x2a4
	.byte	0
	.byte	0xc
	.4byte	.LASF43
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x2a4
	.byte	0x80
	.byte	0x12
	.4byte	.LASF44
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x148
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF45
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x148
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x146
	.4byte	0x2b4
	.byte	0xa
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF46
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2f7
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2f7
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2fd
	.byte	0x8
	.byte	0xc
	.4byte	.LASF41
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x25f
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2b4
	.byte	0x9
	.4byte	0x30d
	.4byte	0x30d
	.byte	0xa
	.4byte	0xa0
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x313
	.byte	0x13
	.byte	0xe
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x33c
	.byte	0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x33c
	.byte	0
	.byte	0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x99
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x25
	.byte	0xe
	.4byte	.LASF52
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x485
	.byte	0xf
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x33c
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x314
	.byte	0x10
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x99
	.byte	0x18
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x146
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x609
	.byte	0x20
	.byte	0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x633
	.byte	0x24
	.byte	0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x657
	.byte	0x28
	.byte	0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x671
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x314
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x33c
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x99
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x677
	.byte	0x40
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x687
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x314
	.byte	0x44
	.byte	0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x99
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0xc0
	.byte	0x50
	.byte	0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x4a3
	.byte	0x54
	.byte	0xc
	.4byte	.LASF66
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x160
	.byte	0x58
	.byte	0xc
	.4byte	.LASF67
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x13a
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF68
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x99
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xd8
	.4byte	0x4a3
	.byte	0x15
	.4byte	0x4a3
	.byte	0x15
	.4byte	0x146
	.byte	0x15
	.4byte	0x5f7
	.byte	0x15
	.4byte	0x99
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x4ae
	.byte	0x16
	.4byte	0x4a3
	.byte	0x17
	.4byte	.LASF69
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5f7
	.byte	0x18
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x99
	.byte	0
	.byte	0x18
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6e3
	.byte	0x4
	.byte	0x18
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6e3
	.byte	0x8
	.byte	0x18
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6e3
	.byte	0xc
	.byte	0x18
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x99
	.byte	0x10
	.byte	0x18
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8e3
	.byte	0x14
	.byte	0x18
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x99
	.byte	0x30
	.byte	0x18
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8f8
	.byte	0x34
	.byte	0x18
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x99
	.byte	0x38
	.byte	0x18
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x909
	.byte	0x3c
	.byte	0x18
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1c6
	.byte	0x40
	.byte	0x18
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x99
	.byte	0x44
	.byte	0x18
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1c6
	.byte	0x48
	.byte	0x18
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x90f
	.byte	0x4c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x99
	.byte	0x50
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5f7
	.byte	0x54
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8be
	.byte	0x58
	.byte	0x19
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2f7
	.2byte	0x148
	.byte	0x19
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2b4
	.2byte	0x14c
	.byte	0x19
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x920
	.2byte	0x2dc
	.byte	0x19
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6a4
	.2byte	0x2e0
	.byte	0x19
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x92c
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5fd
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF91
	.byte	0x16
	.4byte	0x5fd
	.byte	0x10
	.byte	0x4
	.4byte	0x485
	.byte	0x14
	.4byte	0xd8
	.4byte	0x62d
	.byte	0x15
	.4byte	0x4a3
	.byte	0x15
	.4byte	0x146
	.byte	0x15
	.4byte	0x62d
	.byte	0x15
	.4byte	0x99
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x604
	.byte	0x10
	.byte	0x4
	.4byte	0x60f
	.byte	0x14
	.4byte	0xcc
	.4byte	0x657
	.byte	0x15
	.4byte	0x4a3
	.byte	0x15
	.4byte	0x146
	.byte	0x15
	.4byte	0xcc
	.byte	0x15
	.4byte	0x99
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x639
	.byte	0x14
	.4byte	0x99
	.4byte	0x671
	.byte	0x15
	.4byte	0x4a3
	.byte	0x15
	.4byte	0x146
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x65d
	.byte	0x9
	.4byte	0x25
	.4byte	0x687
	.byte	0xa
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x25
	.4byte	0x697
	.byte	0xa
	.4byte	0xa0
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x342
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6dd
	.byte	0x18
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6dd
	.byte	0
	.byte	0x18
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x99
	.byte	0x4
	.byte	0x18
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6e3
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6a4
	.byte	0x10
	.byte	0x4
	.4byte	0x697
	.byte	0x1a
	.4byte	.LASF96
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x722
	.byte	0x18
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x722
	.byte	0
	.byte	0x18
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x722
	.byte	0x6
	.byte	0x18
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x78
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x78
	.4byte	0x732
	.byte	0xa
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x847
	.byte	0x18
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0xa0
	.byte	0
	.byte	0x18
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5f7
	.byte	0x4
	.byte	0x18
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x847
	.byte	0x8
	.byte	0x18
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1dc
	.byte	0x24
	.byte	0x18
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x99
	.byte	0x48
	.byte	0x18
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x92
	.byte	0x50
	.byte	0x18
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6e9
	.byte	0x58
	.byte	0x18
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x13a
	.byte	0x68
	.byte	0x18
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x13a
	.byte	0x70
	.byte	0x18
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x13a
	.byte	0x78
	.byte	0x18
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x857
	.byte	0x80
	.byte	0x18
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x867
	.byte	0x88
	.byte	0x18
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x99
	.byte	0xa0
	.byte	0x18
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x13a
	.byte	0xa4
	.byte	0x18
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x13a
	.byte	0xac
	.byte	0x18
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x13a
	.byte	0xb4
	.byte	0x18
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x13a
	.byte	0xbc
	.byte	0x18
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x13a
	.byte	0xc4
	.byte	0x18
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x99
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5fd
	.4byte	0x857
	.byte	0xa
	.4byte	0xa0
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5fd
	.4byte	0x867
	.byte	0xa
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5fd
	.4byte	0x877
	.byte	0xa
	.4byte	0xa0
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x89e
	.byte	0x18
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x89e
	.byte	0
	.byte	0x18
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8ae
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x33c
	.4byte	0x8ae
	.byte	0xa
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0xa0
	.4byte	0x8be
	.byte	0xa
	.4byte	0xa0
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8e3
	.byte	0x1d
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x732
	.byte	0x1d
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x877
	.byte	0
	.byte	0x9
	.4byte	0x5fd
	.4byte	0x8f3
	.byte	0xa
	.4byte	0xa0
	.byte	0x18
	.byte	0
	.byte	0x1e
	.4byte	.LASF341
	.byte	0x10
	.byte	0x4
	.4byte	0x8f3
	.byte	0x1f
	.4byte	0x909
	.byte	0x15
	.4byte	0x4a3
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8fe
	.byte	0x10
	.byte	0x4
	.4byte	0x1c6
	.byte	0x1f
	.4byte	0x920
	.byte	0x15
	.4byte	0x99
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x926
	.byte	0x10
	.byte	0x4
	.4byte	0x915
	.byte	0x9
	.4byte	0x697
	.4byte	0x93c
	.byte	0xa
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0x20
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x4a3
	.byte	0x20
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4a9
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x8
	.byte	0x17
	.byte	0x1
	.4byte	0x977
	.byte	0x22
	.4byte	.LASF125
	.byte	0
	.byte	0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x22
	.4byte	.LASF127
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF128
	.byte	0x8
	.byte	0x1b
	.byte	0x2
	.4byte	0x956
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x8
	.byte	0x21
	.byte	0x1
	.4byte	0x99e
	.byte	0x22
	.4byte	.LASF129
	.byte	0
	.byte	0x22
	.4byte	.LASF130
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0x24
	.byte	0x2
	.4byte	0x983
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x8
	.byte	0x2a
	.byte	0x1
	.4byte	0x9c5
	.byte	0x22
	.4byte	.LASF132
	.byte	0
	.byte	0x23
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF133
	.byte	0x8
	.byte	0x2d
	.byte	0x2
	.4byte	0x9aa
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x8
	.byte	0x33
	.byte	0x1
	.4byte	0x9ec
	.byte	0x22
	.4byte	.LASF134
	.byte	0
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF136
	.byte	0x8
	.byte	0x36
	.byte	0x2
	.4byte	0x9d1
	.byte	0x3
	.4byte	.LASF137
	.byte	0x8
	.byte	0x7c
	.byte	0xf
	.4byte	0x313
	.byte	0x9
	.4byte	0xa0f
	.4byte	0xa0f
	.byte	0x24
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xa15
	.byte	0x10
	.byte	0x4
	.4byte	0x9f8
	.byte	0x5
	.4byte	.LASF138
	.byte	0x8
	.byte	0x84
	.byte	0x1c
	.4byte	0xa04
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x3a
	.byte	0xe
	.4byte	0xac6
	.byte	0x22
	.4byte	.LASF139
	.byte	0
	.byte	0x22
	.4byte	.LASF140
	.byte	0x1
	.byte	0x22
	.4byte	.LASF141
	.byte	0x2
	.byte	0x22
	.4byte	.LASF142
	.byte	0x3
	.byte	0x22
	.4byte	.LASF143
	.byte	0x4
	.byte	0x22
	.4byte	.LASF144
	.byte	0x5
	.byte	0x22
	.4byte	.LASF145
	.byte	0x6
	.byte	0x22
	.4byte	.LASF146
	.byte	0x7
	.byte	0x22
	.4byte	.LASF147
	.byte	0x8
	.byte	0x22
	.4byte	.LASF148
	.byte	0x9
	.byte	0x22
	.4byte	.LASF149
	.byte	0xa
	.byte	0x22
	.4byte	.LASF150
	.byte	0xb
	.byte	0x22
	.4byte	.LASF151
	.byte	0xc
	.byte	0x22
	.4byte	.LASF152
	.byte	0xd
	.byte	0x22
	.4byte	.LASF153
	.byte	0xe
	.byte	0x22
	.4byte	.LASF154
	.byte	0xf
	.byte	0x22
	.4byte	.LASF155
	.byte	0x10
	.byte	0x22
	.4byte	.LASF156
	.byte	0x11
	.byte	0x22
	.4byte	.LASF157
	.byte	0x12
	.byte	0x22
	.4byte	.LASF158
	.byte	0x13
	.byte	0x22
	.4byte	.LASF159
	.byte	0x14
	.byte	0x22
	.4byte	.LASF160
	.byte	0x15
	.byte	0x22
	.4byte	.LASF161
	.byte	0x16
	.byte	0x22
	.4byte	.LASF162
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF163
	.byte	0x9
	.byte	0x53
	.byte	0x2
	.4byte	0xa27
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x58
	.byte	0xe
	.4byte	0xaf9
	.byte	0x22
	.4byte	.LASF164
	.byte	0
	.byte	0x22
	.4byte	.LASF165
	.byte	0x1
	.byte	0x22
	.4byte	.LASF166
	.byte	0x2
	.byte	0x22
	.4byte	.LASF167
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF168
	.byte	0x9
	.byte	0x5d
	.byte	0x2
	.4byte	0xad2
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x62
	.byte	0xe
	.4byte	0xb2c
	.byte	0x22
	.4byte	.LASF169
	.byte	0
	.byte	0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x22
	.4byte	.LASF171
	.byte	0x2
	.byte	0x22
	.4byte	.LASF172
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF173
	.byte	0x9
	.byte	0x67
	.byte	0x2
	.4byte	0xb05
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x6c
	.byte	0xe
	.4byte	0xb77
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
	.byte	0x4
	.byte	0x22
	.4byte	.LASF179
	.byte	0x5
	.byte	0x22
	.4byte	.LASF180
	.byte	0x6
	.byte	0x22
	.4byte	.LASF181
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF182
	.byte	0x9
	.byte	0x75
	.byte	0x2
	.4byte	0xb38
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x88
	.byte	0xe
	.4byte	0xbbc
	.byte	0x22
	.4byte	.LASF183
	.byte	0
	.byte	0x22
	.4byte	.LASF184
	.byte	0x1
	.byte	0x22
	.4byte	.LASF185
	.byte	0x2
	.byte	0x22
	.4byte	.LASF186
	.byte	0x3
	.byte	0x22
	.4byte	.LASF187
	.byte	0x4
	.byte	0x22
	.4byte	.LASF188
	.byte	0x5
	.byte	0x22
	.4byte	.LASF189
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF190
	.byte	0x9
	.byte	0x90
	.byte	0x2
	.4byte	0xb83
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x95
	.byte	0xe
	.4byte	0xbe3
	.byte	0x22
	.4byte	.LASF191
	.byte	0
	.byte	0x22
	.4byte	.LASF192
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF193
	.byte	0x9
	.byte	0x98
	.byte	0x2
	.4byte	0xbc8
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0x9d
	.byte	0xe
	.4byte	0xc16
	.byte	0x22
	.4byte	.LASF194
	.byte	0
	.byte	0x22
	.4byte	.LASF195
	.byte	0x1
	.byte	0x22
	.4byte	.LASF196
	.byte	0x2
	.byte	0x22
	.4byte	.LASF197
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF198
	.byte	0x9
	.byte	0xa2
	.byte	0x2
	.4byte	0xbef
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xa7
	.byte	0xe
	.4byte	0xc49
	.byte	0x22
	.4byte	.LASF199
	.byte	0
	.byte	0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0x22
	.4byte	.LASF201
	.byte	0x2
	.byte	0x22
	.4byte	.LASF202
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF203
	.byte	0x9
	.byte	0xac
	.byte	0x2
	.4byte	0xc22
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0xc70
	.byte	0x22
	.4byte	.LASF204
	.byte	0
	.byte	0x22
	.4byte	.LASF205
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF206
	.byte	0x9
	.byte	0xb4
	.byte	0x2
	.4byte	0xc55
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xb9
	.byte	0xe
	.4byte	0xc97
	.byte	0x22
	.4byte	.LASF207
	.byte	0
	.byte	0x22
	.4byte	.LASF208
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF209
	.byte	0x9
	.byte	0xbc
	.byte	0x2
	.4byte	0xc7c
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xc1
	.byte	0xe
	.4byte	0xcbe
	.byte	0x22
	.4byte	.LASF210
	.byte	0
	.byte	0x22
	.4byte	.LASF211
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF212
	.byte	0x9
	.byte	0xc4
	.byte	0x2
	.4byte	0xca3
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xc9
	.byte	0xe
	.4byte	0xcf7
	.byte	0x22
	.4byte	.LASF213
	.byte	0
	.byte	0x22
	.4byte	.LASF214
	.byte	0x1
	.byte	0x22
	.4byte	.LASF215
	.byte	0x2
	.byte	0x22
	.4byte	.LASF216
	.byte	0x3
	.byte	0x22
	.4byte	.LASF217
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF218
	.byte	0x9
	.byte	0xcf
	.byte	0x2
	.4byte	0xcca
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xd4
	.byte	0xe
	.4byte	0xd1e
	.byte	0x22
	.4byte	.LASF219
	.byte	0
	.byte	0x22
	.4byte	.LASF220
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF221
	.byte	0x9
	.byte	0xd7
	.byte	0x2
	.4byte	0xd03
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xdc
	.byte	0xe
	.4byte	0xd51
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
	.byte	0x3
	.4byte	.LASF226
	.byte	0x9
	.byte	0xe1
	.byte	0x2
	.4byte	0xd2a
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.byte	0xe6
	.byte	0xe
	.4byte	0xd78
	.byte	0x22
	.4byte	.LASF227
	.byte	0
	.byte	0x22
	.4byte	.LASF228
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF229
	.byte	0x9
	.byte	0xe9
	.byte	0x2
	.4byte	0xd5d
	.byte	0xb
	.byte	0x8
	.byte	0x9
	.byte	0xee
	.byte	0x9
	.4byte	0xdf6
	.byte	0xc
	.4byte	.LASF230
	.byte	0x9
	.byte	0xef
	.byte	0x1a
	.4byte	0xd1e
	.byte	0
	.byte	0xc
	.4byte	.LASF231
	.byte	0x9
	.byte	0xf0
	.byte	0x18
	.4byte	0xd51
	.byte	0x1
	.byte	0xc
	.4byte	.LASF232
	.byte	0x9
	.byte	0xf1
	.byte	0x17
	.4byte	0xd78
	.byte	0x2
	.byte	0xc
	.4byte	.LASF233
	.byte	0x9
	.byte	0xf2
	.byte	0x17
	.4byte	0xd78
	.byte	0x3
	.byte	0xc
	.4byte	.LASF234
	.byte	0x9
	.byte	0xf3
	.byte	0x11
	.4byte	0x99e
	.byte	0x4
	.byte	0xc
	.4byte	.LASF235
	.byte	0x9
	.byte	0xf4
	.byte	0x11
	.4byte	0x99e
	.byte	0x5
	.byte	0xc
	.4byte	.LASF236
	.byte	0x9
	.byte	0xf5
	.byte	0x11
	.4byte	0x99e
	.byte	0x6
	.byte	0xc
	.4byte	.LASF237
	.byte	0x9
	.byte	0xf6
	.byte	0x11
	.4byte	0x99e
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF238
	.byte	0x9
	.byte	0xf7
	.byte	0x2
	.4byte	0xd84
	.byte	0xb
	.byte	0xe
	.byte	0x9
	.byte	0xfc
	.byte	0x9
	.4byte	0xebf
	.byte	0xc
	.4byte	.LASF239
	.byte	0x9
	.byte	0xfd
	.byte	0x16
	.4byte	0xaf9
	.byte	0
	.byte	0xc
	.4byte	.LASF240
	.byte	0x9
	.byte	0xfe
	.byte	0x16
	.4byte	0xb2c
	.byte	0x1
	.byte	0xc
	.4byte	.LASF241
	.byte	0x9
	.byte	0xff
	.byte	0x12
	.4byte	0xb77
	.byte	0x2
	.byte	0x18
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x100
	.byte	0x17
	.4byte	0xbbc
	.byte	0x3
	.byte	0x18
	.4byte	.LASF243
	.byte	0x9
	.2byte	0x101
	.byte	0x17
	.4byte	0xbbc
	.byte	0x4
	.byte	0x18
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x102
	.byte	0x17
	.4byte	0xc16
	.byte	0x5
	.byte	0x18
	.4byte	.LASF245
	.byte	0x9
	.2byte	0x103
	.byte	0x17
	.4byte	0xbe3
	.byte	0x6
	.byte	0x25
	.string	"vcm"
	.byte	0x9
	.2byte	0x104
	.byte	0x16
	.4byte	0xc49
	.byte	0x7
	.byte	0x18
	.4byte	.LASF246
	.byte	0x9
	.2byte	0x105
	.byte	0x13
	.4byte	0xc97
	.byte	0x8
	.byte	0x18
	.4byte	.LASF247
	.byte	0x9
	.2byte	0x106
	.byte	0x18
	.4byte	0xcbe
	.byte	0x9
	.byte	0x18
	.4byte	.LASF248
	.byte	0x9
	.2byte	0x107
	.byte	0x19
	.4byte	0xcf7
	.byte	0xa
	.byte	0x18
	.4byte	.LASF249
	.byte	0x9
	.2byte	0x108
	.byte	0x11
	.4byte	0x99e
	.byte	0xb
	.byte	0x18
	.4byte	.LASF250
	.byte	0x9
	.2byte	0x109
	.byte	0xd
	.4byte	0x3f
	.byte	0xc
	.byte	0
	.byte	0x6
	.4byte	.LASF251
	.byte	0x9
	.2byte	0x10a
	.byte	0x2
	.4byte	0xe02
	.byte	0x1b
	.byte	0x8
	.byte	0x9
	.2byte	0x10f
	.byte	0x9
	.4byte	0xf0f
	.byte	0x18
	.4byte	.LASF252
	.byte	0x9
	.2byte	0x110
	.byte	0xc
	.4byte	0x2c
	.byte	0
	.byte	0x18
	.4byte	.LASF253
	.byte	0x9
	.2byte	0x111
	.byte	0xc
	.4byte	0x2c
	.byte	0x1
	.byte	0x18
	.4byte	.LASF254
	.byte	0x9
	.2byte	0x112
	.byte	0xe
	.4byte	0x6c
	.byte	0x2
	.byte	0x18
	.4byte	.LASF255
	.byte	0x9
	.2byte	0x113
	.byte	0xb
	.4byte	0xf0f
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF256
	.byte	0x6
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x114
	.byte	0x2
	.4byte	0xecc
	.byte	0x26
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.2byte	0x119
	.byte	0xe
	.4byte	0xf4b
	.byte	0x22
	.4byte	.LASF258
	.byte	0
	.byte	0x22
	.4byte	.LASF259
	.byte	0x1
	.byte	0x22
	.4byte	.LASF260
	.byte	0x2
	.byte	0x22
	.4byte	.LASF261
	.byte	0x3
	.byte	0
	.byte	0x6
	.4byte	.LASF262
	.byte	0x9
	.2byte	0x11e
	.byte	0x2
	.4byte	0xf23
	.byte	0x26
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x9
	.2byte	0x123
	.byte	0xe
	.4byte	0xf8c
	.byte	0x22
	.4byte	.LASF263
	.byte	0
	.byte	0x22
	.4byte	.LASF264
	.byte	0x1
	.byte	0x22
	.4byte	.LASF265
	.byte	0x2
	.byte	0x22
	.4byte	.LASF266
	.byte	0x3
	.byte	0x22
	.4byte	.LASF267
	.byte	0x4
	.byte	0x22
	.4byte	.LASF268
	.byte	0x5
	.byte	0
	.byte	0x6
	.4byte	.LASF269
	.byte	0x9
	.2byte	0x12a
	.byte	0x2
	.4byte	0xf58
	.byte	0x1b
	.byte	0x2
	.byte	0x9
	.2byte	0x12f
	.byte	0x9
	.4byte	0xfc0
	.byte	0x18
	.4byte	.LASF270
	.byte	0x9
	.2byte	0x130
	.byte	0x1d
	.4byte	0xf4b
	.byte	0
	.byte	0x18
	.4byte	.LASF271
	.byte	0x9
	.2byte	0x131
	.byte	0x11
	.4byte	0x99e
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x132
	.byte	0x2
	.4byte	0xf99
	.byte	0xb
	.byte	0x4
	.byte	0xa
	.byte	0x98
	.byte	0x9
	.4byte	0x1017
	.byte	0x27
	.4byte	.LASF273
	.byte	0xa
	.byte	0x99
	.byte	0xe
	.4byte	0x7f
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x27
	.4byte	.LASF274
	.byte	0xa
	.byte	0x9a
	.byte	0xe
	.4byte	0x7f
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0x27
	.4byte	.LASF275
	.byte	0xa
	.byte	0x9b
	.byte	0xe
	.4byte	0x7f
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.byte	0x27
	.4byte	.LASF276
	.byte	0xa
	.byte	0x9c
	.byte	0xe
	.4byte	0x7f
	.byte	0x4
	.byte	0x12
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF277
	.byte	0xa
	.byte	0x9d
	.byte	0x2
	.4byte	0xfcd
	.byte	0x9
	.4byte	0xa15
	.4byte	0x1033
	.byte	0xa
	.4byte	0xa0
	.byte	0x4
	.byte	0
	.byte	0x28
	.4byte	.LASF310
	.byte	0x1
	.byte	0x42
	.byte	0x1b
	.4byte	0x1023
	.byte	0x29
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x48b
	.byte	0x6
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x1066
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x48d
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x479
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x108d
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x47b
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x2b
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x44a
	.byte	0xd
	.4byte	0x977
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x10dc
	.byte	0x2c
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x44a
	.byte	0x29
	.4byte	0x10dc
	.4byte	.LLST47
	.byte	0x2d
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x44c
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST48
	.byte	0x2d
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x44c
	.byte	0x18
	.4byte	0x7f
	.4byte	.LLST49
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xdf6
	.byte	0x2e
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x410
	.byte	0x7
	.4byte	0xf0f
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x122b
	.byte	0x2c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x410
	.byte	0x1e
	.4byte	0x7f
	.4byte	.LLST42
	.byte	0x2f
	.string	"v0"
	.byte	0x1
	.2byte	0x412
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST43
	.byte	0x2f
	.string	"v1"
	.byte	0x1
	.2byte	0x412
	.byte	0x16
	.4byte	0x7f
	.4byte	.LLST44
	.byte	0x2d
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x413
	.byte	0xb
	.4byte	0xf0f
	.4byte	.LLST45
	.byte	0x2a
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x414
	.byte	0xe
	.4byte	0x7f
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x2a
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x415
	.byte	0x15
	.4byte	0xf16
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x416
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST46
	.byte	0x30
	.4byte	0x153d
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.2byte	0x422
	.byte	0xe
	.4byte	0x1195
	.byte	0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x32
	.4byte	0x154f
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	0x153d
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.2byte	0x431
	.byte	0xe
	.4byte	0x11ba
	.byte	0x31
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.byte	0x32
	.4byte	0x154f
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LVL259
	.4byte	0x1252
	.byte	0x33
	.4byte	.LVL260
	.4byte	0x1649
	.byte	0x33
	.4byte	.LVL261
	.4byte	0x15b7
	.byte	0x34
	.4byte	.LVL263
	.4byte	0x1471
	.4byte	0x11f4
	.byte	0x35
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x35
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x35
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x33
	.4byte	.LVL266
	.4byte	0x122b
	.byte	0x33
	.4byte	.LVL267
	.4byte	0x1649
	.byte	0x33
	.4byte	.LVL268
	.4byte	0x15b7
	.byte	0x36
	.4byte	.LVL270
	.4byte	0x1471
	.byte	0x35
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x35
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x35
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x400
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1252
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x402
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x3f0
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x127b
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x3f2
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST41
	.byte	0
	.byte	0x2b
	.4byte	.LASF292
	.byte	0x1
	.2byte	0x3d7
	.byte	0x3a
	.4byte	0x977
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x12db
	.byte	0x2c
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x3d7
	.byte	0x53
	.4byte	0x12db
	.4byte	.LLST40
	.byte	0x2a
	.4byte	.LASF293
	.byte	0x1
	.2byte	0x3d9
	.byte	0x24
	.4byte	0x1017
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x34
	.4byte	.LVL247
	.4byte	0x1863
	.4byte	0x12cb
	.byte	0x35
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x36
	.4byte	.LVL250
	.4byte	0x1870
	.byte	0x35
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x6c
	.byte	0x29
	.4byte	.LASF294
	.byte	0x1
	.2byte	0x39f
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x131b
	.byte	0x2c
	.4byte	.LASF295
	.byte	0x1
	.2byte	0x39f
	.byte	0x26
	.4byte	0xc70
	.4byte	.LLST38
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x3a1
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST39
	.byte	0
	.byte	0x29
	.4byte	.LASF296
	.byte	0x1
	.2byte	0x38e
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x1342
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x390
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF297
	.byte	0x1
	.2byte	0x37d
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x1369
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x37f
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x33e
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x139f
	.byte	0x37
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x33e
	.byte	0x2c
	.4byte	0xf8c
	.byte	0x1
	.byte	0x5a
	.byte	0x37
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x33e
	.byte	0x46
	.4byte	0xa15
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x2b
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x30e
	.byte	0xd
	.4byte	0x9c5
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x13ee
	.byte	0x2c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x30e
	.byte	0x2b
	.4byte	0xf8c
	.4byte	.LLST35
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x310
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST36
	.byte	0x2d
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x311
	.byte	0x11
	.4byte	0x9c5
	.4byte	.LLST37
	.byte	0
	.byte	0x29
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x28d
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x1428
	.byte	0x2c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x28d
	.byte	0x1e
	.4byte	0xf8c
	.4byte	.LLST33
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x28f
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST34
	.byte	0
	.byte	0x29
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x224
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x1471
	.byte	0x2c
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x224
	.byte	0x1f
	.4byte	0xf8c
	.4byte	.LLST31
	.byte	0x37
	.4byte	.LASF305
	.byte	0x1
	.2byte	0x224
	.byte	0x35
	.4byte	0x9ec
	.byte	0x1
	.byte	0x5b
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x226
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST32
	.byte	0
	.byte	0x38
	.4byte	.LASF306
	.byte	0x1
	.2byte	0x1df
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x1531
	.byte	0x2c
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x1df
	.byte	0x21
	.4byte	0x1531
	.4byte	.LLST21
	.byte	0x39
	.string	"len"
	.byte	0x1
	.2byte	0x1df
	.byte	0x31
	.4byte	0x7f
	.4byte	.LLST22
	.byte	0x2c
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x1df
	.byte	0x46
	.4byte	0x1537
	.4byte	.LLST23
	.byte	0x2f
	.string	"neg"
	.byte	0x1
	.2byte	0x1e1
	.byte	0xd
	.4byte	0x60
	.4byte	.LLST24
	.byte	0x2d
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x1e2
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST25
	.byte	0x2d
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x1e2
	.byte	0x18
	.4byte	0x7f
	.4byte	.LLST26
	.byte	0x2d
	.4byte	.LASF308
	.byte	0x1
	.2byte	0x1e3
	.byte	0x19
	.4byte	0xcf7
	.4byte	.LLST27
	.byte	0x2d
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x1e4
	.byte	0x18
	.4byte	0xcbe
	.4byte	.LLST28
	.byte	0x2f
	.string	"ref"
	.byte	0x1
	.2byte	0x1e5
	.byte	0xb
	.4byte	0xf0f
	.4byte	.LLST29
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x1e6
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST30
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x7f
	.byte	0x10
	.byte	0x4
	.4byte	0xf16
	.byte	0x3a
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x1cc
	.byte	0xa
	.4byte	0x7f
	.byte	0x1
	.4byte	0x155d
	.byte	0x3b
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x7f
	.byte	0
	.byte	0x2b
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x1b7
	.byte	0xd
	.4byte	0x9c5
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x158a
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1b9
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST20
	.byte	0
	.byte	0x2b
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x1a2
	.byte	0xd
	.4byte	0x9c5
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x15b7
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1a4
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST19
	.byte	0
	.byte	0x2b
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x191
	.byte	0x9
	.4byte	0x60
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x15e4
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x193
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST18
	.byte	0
	.byte	0x29
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x16e
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x161c
	.byte	0x37
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x16e
	.byte	0x26
	.4byte	0x161c
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x170
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST17
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xfc0
	.byte	0x29
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x15c
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x1649
	.byte	0x2a
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x15e
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x142
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1682
	.byte	0x2d
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x144
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST16
	.byte	0x36
	.4byte	.LVL90
	.4byte	0x187d
	.byte	0x35
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x170f
	.byte	0x2c
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x105
	.byte	0x2c
	.4byte	0x170f
	.4byte	.LLST9
	.byte	0x2c
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x105
	.byte	0x46
	.4byte	0x170f
	.4byte	.LLST10
	.byte	0x2c
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x105
	.byte	0x5a
	.4byte	0x60
	.4byte	.LLST11
	.byte	0x2c
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x105
	.byte	0x71
	.4byte	0x99e
	.4byte	.LLST12
	.byte	0x2d
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x107
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST13
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x107
	.byte	0x15
	.4byte	0x7f
	.4byte	.LLST14
	.byte	0x2d
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x108
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST15
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xac6
	.byte	0x3c
	.4byte	.LASF325
	.byte	0x1
	.byte	0xe4
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x177c
	.byte	0x3d
	.4byte	.LASF326
	.byte	0x1
	.byte	0xe4
	.byte	0x27
	.4byte	0xac6
	.4byte	.LLST4
	.byte	0x3d
	.4byte	.LASF327
	.byte	0x1
	.byte	0xe4
	.byte	0x3b
	.4byte	0xac6
	.4byte	.LLST5
	.byte	0x3d
	.4byte	.LASF323
	.byte	0x1
	.byte	0xe4
	.byte	0x4d
	.4byte	0x99e
	.4byte	.LLST6
	.byte	0x3e
	.4byte	.LASF317
	.byte	0x1
	.byte	0xe6
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST7
	.byte	0x3e
	.4byte	.LASF328
	.byte	0x1
	.byte	0xe7
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST8
	.byte	0
	.byte	0x3c
	.4byte	.LASF329
	.byte	0x1
	.byte	0x9a
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x17d1
	.byte	0x3f
	.string	"cfg"
	.byte	0x1
	.byte	0x9a
	.byte	0x1d
	.4byte	0x17d1
	.byte	0x1
	.byte	0x5a
	.byte	0x3e
	.4byte	.LASF328
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST1
	.byte	0x3e
	.4byte	.LASF330
	.byte	0x1
	.byte	0x9d
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST2
	.byte	0x3e
	.4byte	.LASF331
	.byte	0x1
	.byte	0x9e
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xebf
	.byte	0x3c
	.4byte	.LASF332
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x17fc
	.byte	0x40
	.4byte	.LASF280
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x3c
	.4byte	.LASF333
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1821
	.byte	0x40
	.4byte	.LASF280
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.4byte	0x7f
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x3c
	.4byte	.LASF334
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1848
	.byte	0x3e
	.4byte	.LASF317
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0x7f
	.4byte	.LLST0
	.byte	0
	.byte	0x41
	.4byte	0x153d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x1863
	.byte	0x42
	.4byte	0x154f
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x43
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0xa
	.2byte	0x10e
	.byte	0x6
	.byte	0x43
	.4byte	.LASF336
	.4byte	.LASF336
	.byte	0xa
	.2byte	0x109
	.byte	0x9
	.byte	0x44
	.4byte	.LASF337
	.4byte	.LASF337
	.byte	0x8
	.byte	0x88
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x21
	.byte	0
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x5
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
	.byte	0x3b
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
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x44
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
.LLST47:
	.4byte	.LVL278
	.4byte	.LVL297
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL297
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL278
	.4byte	.LVL280
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL280
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL281
	.4byte	.LVL282
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x47
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL282
	.4byte	.LVL283
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL283
	.4byte	.LVL284
	.2byte	0xd
	.byte	0x7a
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x45
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0xd
	.byte	0x7a
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL287
	.4byte	.LVL288
	.2byte	0xd
	.byte	0x7a
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x43
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL289
	.4byte	.LVL290
	.2byte	0xd
	.byte	0x7a
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL291
	.4byte	.LVL293
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL293
	.4byte	.LVL294
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3f
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL295
	.4byte	.LVL296
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL278
	.4byte	.LVL279
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL292
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL256
	.4byte	.LVL259-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL259-1
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL272
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL256
	.4byte	.LVL264
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264
	.4byte	.LVL276
	.2byte	0x7
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LFE32
	.2byte	0x7
	.byte	0x82
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL256
	.4byte	.LVL271
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LVL273-1
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL277
	.4byte	.LFE32
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL256
	.4byte	.LVL275
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL275
	.4byte	.LVL277
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL277
	.4byte	.LFE32
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL257
	.4byte	.LVL259-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL264
	.4byte	.LVL266-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL253
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL245
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL246
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL248
	.4byte	.LVL249
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL235
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x78
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL237
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL239
	.4byte	.LVL240
	.2byte	0x1b
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0xfc3ffdf
	.byte	0x1a
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0xb
	.2byte	0xbe7f
	.byte	0x1a
	.byte	0xc
	.4byte	0x20000140
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LFE28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL216
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL217
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL229
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL218
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL224
	.4byte	.LVL225
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL216
	.4byte	.LVL220
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL220
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL221
	.4byte	.LVL229
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL174
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL175
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL181
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL186
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL192
	.4byte	.LVL197
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL198
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL210
	.4byte	.LVL211
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf9ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL212
	.4byte	.LVL213
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x600
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL214
	.4byte	.LVL215
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf9ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL159
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xfdff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0x9fff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x200
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x6000
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL110
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL129
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL119
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL131
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL128
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL115
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL116
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL143
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL110
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x40000000
	.4byte	.LVL117
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x40000000
	.4byte	.LVL129
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL135
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL110
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x46
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL88
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL91
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL52
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL52
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL54
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x7c
	.byte	0
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x80
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x7a
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL50
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xd
	.byte	0x7a
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4d
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x13
	.byte	0x7a
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4b
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0x40
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x12
	.byte	0x7a
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0x77
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xb
	.byte	0x7a
	.byte	0xb
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x7e
	.byte	0x90,0x72
	.4byte	.LVL20
	.4byte	.LVL33
	.2byte	0x5
	.byte	0xc
	.4byte	0x4000f910
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x3
	.byte	0x7e
	.byte	0x90,0x72
	.4byte	.LVL39
	.4byte	.LFE11
	.2byte	0x5
	.byte	0xc
	.4byte	0x4000f910
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x78
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xb
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x49
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x46
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0xd
	.byte	0x7a
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x41
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe07f
	.byte	0x1a
	.byte	0x7a
	.byte	0x7
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xf7
	.byte	0x1a
	.byte	0x7a
	.byte	0x8
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1b
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe07f
	.byte	0x1a
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9
	.byte	0xf7
	.byte	0x1a
	.byte	0x7a
	.byte	0x8
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x21
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x7e
	.byte	0x94,0x72
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF237:
	.string	"micBiasEn"
.LASF271:
	.string	"dmaEn"
.LASF2:
	.string	"int8_t"
.LASF17:
	.string	"_ssize_t"
.LASF341:
	.string	"__locale_t"
.LASF21:
	.string	"__value"
.LASF173:
	.string	"ADC_V11_SEL_Type"
.LASF90:
	.string	"__sf"
.LASF57:
	.string	"_read"
.LASF58:
	.string	"_write"
.LASF227:
	.string	"ADC_MIC_MODE_SINGLE"
.LASF102:
	.string	"_asctime_buf"
.LASF84:
	.string	"_cvtlen"
.LASF266:
	.string	"ADC_INT_FIFO_OVERRUN"
.LASF283:
	.string	"ADC_Mic_Init"
.LASF340:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/bl602_std"
.LASF136:
	.string	"BL_Mask_Type"
.LASF234:
	.string	"dwaEn"
.LASF121:
	.string	"_unused"
.LASF31:
	.string	"__tm"
.LASF117:
	.string	"_wcsrtombs_state"
.LASF62:
	.string	"_nbuf"
.LASF32:
	.string	"__tm_sec"
.LASF110:
	.string	"_l64a_buf"
.LASF270:
	.string	"fifoThreshold"
.LASF151:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF152:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF284:
	.string	"TSEN_Get_Temp"
.LASF184:
	.string	"ADC_PGA_GAIN_1"
.LASF185:
	.string	"ADC_PGA_GAIN_2"
.LASF186:
	.string	"ADC_PGA_GAIN_4"
.LASF187:
	.string	"ADC_PGA_GAIN_8"
.LASF314:
	.string	"ADC_FIFO_Cfg"
.LASF66:
	.string	"_lock"
.LASF245:
	.string	"biasSel"
.LASF139:
	.string	"ADC_CHAN0"
.LASF140:
	.string	"ADC_CHAN1"
.LASF141:
	.string	"ADC_CHAN2"
.LASF142:
	.string	"ADC_CHAN3"
.LASF143:
	.string	"ADC_CHAN4"
.LASF144:
	.string	"ADC_CHAN5"
.LASF145:
	.string	"ADC_CHAN6"
.LASF147:
	.string	"ADC_CHAN8"
.LASF148:
	.string	"ADC_CHAN9"
.LASF98:
	.string	"_mult"
.LASF275:
	.string	"tsenRefcodeCornerEn"
.LASF193:
	.string	"ADC_BIAS_SEL_Type"
.LASF328:
	.string	"regCfg1"
.LASF330:
	.string	"regCfg2"
.LASF18:
	.string	"__wch"
.LASF54:
	.string	"_file"
.LASF289:
	.string	"result"
.LASF41:
	.string	"_on_exit_args"
.LASF281:
	.string	"tmpVal1"
.LASF282:
	.string	"tmpVal2"
.LASF166:
	.string	"ADC_V18_SEL_1P82V"
.LASF156:
	.string	"ADC_CHAN_DCTEST"
.LASF113:
	.string	"_mbrlen_state"
.LASF5:
	.string	"long int"
.LASF204:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF123:
	.string	"_impure_ptr"
.LASF228:
	.string	"ADC_MIC_MODE_DIFF"
.LASF81:
	.string	"_result_k"
.LASF51:
	.string	"_size"
.LASF217:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF216:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF103:
	.string	"_localtime_buf"
.LASF317:
	.string	"regCmd"
.LASF258:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF259:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF260:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF241:
	.string	"clkDiv"
.LASF191:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF264:
	.string	"ADC_INT_NEG_SATURATION"
.LASF36:
	.string	"__tm_mon"
.LASF206:
	.string	"ADC_TSEN_MOD_Type"
.LASF100:
	.string	"_unused_rand"
.LASF1:
	.string	"signed char"
.LASF7:
	.string	"uint8_t"
.LASF261:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF273:
	.string	"tsenRefcodeCorner"
.LASF180:
	.string	"ADC_CLK_DIV_24"
.LASF215:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF291:
	.string	"ADC_SET_TSVBE_LOW"
.LASF292:
	.string	"ADC_Trim_TSEN"
.LASF0:
	.string	"unsigned char"
.LASF257:
	.string	"ADC_Result_Type"
.LASF301:
	.string	"ADC_GetIntStatus"
.LASF233:
	.string	"mic2Mode"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF338:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF157:
	.string	"ADC_CHAN_VABT_HALF"
.LASF69:
	.string	"_reent"
.LASF124:
	.string	"_global_impure_ptr"
.LASF199:
	.string	"ADC_PGA_VCM_1V"
.LASF247:
	.string	"inputMode"
.LASF312:
	.string	"ADC_FIFO_Is_Full"
.LASF337:
	.string	"BL602_Delay_US"
.LASF254:
	.string	"value"
.LASF310:
	.string	"adcIntCbfArra"
.LASF91:
	.string	"char"
.LASF307:
	.string	"orgVal"
.LASF296:
	.string	"ADC_Vbat_Disable"
.LASF48:
	.string	"_fns"
.LASF218:
	.string	"ADC_Data_Width_Type"
.LASF188:
	.string	"ADC_PGA_GAIN_16"
.LASF221:
	.string	"ADC_MICBOOST_DB_Type"
.LASF60:
	.string	"_close"
.LASF213:
	.string	"ADC_DATA_WIDTH_12"
.LASF210:
	.string	"ADC_INPUT_SINGLE_END"
.LASF315:
	.string	"fifoCfg"
.LASF305:
	.string	"intMask"
.LASF71:
	.string	"_stdin"
.LASF316:
	.string	"ADC_Stop"
.LASF149:
	.string	"ADC_CHAN10"
.LASF150:
	.string	"ADC_CHAN11"
.LASF229:
	.string	"ADC_MIC_MODE_Type"
.LASF304:
	.string	"ADC_IntMask"
.LASF183:
	.string	"ADC_PGA_GAIN_NONE"
.LASF214:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF322:
	.string	"scanLength"
.LASF208:
	.string	"ADC_VREF_2V"
.LASF192:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF246:
	.string	"vref"
.LASF225:
	.string	"ADC_PGA2_GAIN_12DB"
.LASF189:
	.string	"ADC_PGA_GAIN_32"
.LASF167:
	.string	"ADC_V18_SEL_1P92V"
.LASF331:
	.string	"regCalib"
.LASF56:
	.string	"_cookie"
.LASF294:
	.string	"ADC_Tsen_Init"
.LASF267:
	.string	"ADC_INT_ADC_READY"
.LASF336:
	.string	"EF_Ctrl_Get_Trim_Parity"
.LASF29:
	.string	"_wds"
.LASF88:
	.string	"_sig_func"
.LASF64:
	.string	"_offset"
.LASF85:
	.string	"_cvtbuf"
.LASF232:
	.string	"mic1Mode"
.LASF335:
	.string	"EF_Ctrl_Read_TSEN_Trim"
.LASF286:
	.string	"tsen_offset"
.LASF298:
	.string	"ADC_Int_Callback_Install"
.LASF242:
	.string	"gain1"
.LASF243:
	.string	"gain2"
.LASF134:
	.string	"UNMASK"
.LASF248:
	.string	"resWidth"
.LASF249:
	.string	"offsetCalibEn"
.LASF82:
	.string	"_p5s"
.LASF11:
	.string	"long unsigned int"
.LASF171:
	.string	"ADC_V11_SEL_1P18V"
.LASF52:
	.string	"__sFILE"
.LASF78:
	.string	"__sdidinit"
.LASF68:
	.string	"_flags2"
.LASF122:
	.string	"SystemCoreClock"
.LASF297:
	.string	"ADC_Vbat_Enable"
.LASF268:
	.string	"ADC_INT_ALL"
.LASF212:
	.string	"ADC_SIG_INPUT_Type"
.LASF24:
	.string	"_LOCK_RECURSIVE_T"
.LASF198:
	.string	"ADC_CHOP_MOD_Type"
.LASF70:
	.string	"_errno"
.LASF324:
	.string	"dealLen"
.LASF111:
	.string	"_signal_buf"
.LASF293:
	.string	"trim"
.LASF288:
	.string	"regVal"
.LASF135:
	.string	"MASK"
.LASF126:
	.string	"ERROR"
.LASF30:
	.string	"_Bigint"
.LASF27:
	.string	"_maxwds"
.LASF342:
	.string	"ADC_Read_FIFO"
.LASF79:
	.string	"__cleanup"
.LASF87:
	.string	"_atexit0"
.LASF290:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF75:
	.string	"_emergency"
.LASF6:
	.string	"long long int"
.LASF94:
	.string	"_niobs"
.LASF252:
	.string	"posChan"
.LASF89:
	.string	"__sglue"
.LASF120:
	.string	"_nmalloc"
.LASF104:
	.string	"_gamma_signgam"
.LASF239:
	.string	"v18Sel"
.LASF131:
	.string	"BL_Fun_Type"
.LASF128:
	.string	"BL_Err_Type"
.LASF160:
	.string	"ADC_CHAN_SENP1"
.LASF159:
	.string	"ADC_CHAN_SENP2"
.LASF83:
	.string	"_freelist"
.LASF95:
	.string	"_iobs"
.LASF211:
	.string	"ADC_INPUT_DIFF"
.LASF93:
	.string	"_glue"
.LASF308:
	.string	"dataType"
.LASF28:
	.string	"_sign"
.LASF205:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF321:
	.string	"negChList"
.LASF256:
	.string	"float"
.LASF162:
	.string	"ADC_CHAN_GND"
.LASF240:
	.string	"v11Sel"
.LASF327:
	.string	"negCh"
.LASF172:
	.string	"ADC_V11_SEL_1P26V"
.LASF332:
	.string	"ADC_Disable"
.LASF13:
	.string	"unsigned int"
.LASF295:
	.string	"tsenMod"
.LASF299:
	.string	"intType"
.LASF277:
	.string	"Efuse_TSEN_Refcode_Corner_Type"
.LASF118:
	.string	"_h_errno"
.LASF137:
	.string	"intCallback_Type"
.LASF244:
	.string	"chopMode"
.LASF306:
	.string	"ADC_Parse_Result"
.LASF138:
	.string	"intCbfArra"
.LASF231:
	.string	"micPga2Gain"
.LASF116:
	.string	"_wcrtomb_state"
.LASF35:
	.string	"__tm_mday"
.LASF320:
	.string	"posChList"
.LASF86:
	.string	"_new"
.LASF61:
	.string	"_ubuf"
.LASF73:
	.string	"_stderr"
.LASF334:
	.string	"ADC_Reset"
.LASF109:
	.string	"_wctomb_state"
.LASF67:
	.string	"_mbstate"
.LASF313:
	.string	"ADC_Get_FIFO_Count"
.LASF105:
	.string	"_rand_next"
.LASF53:
	.string	"_flags"
.LASF177:
	.string	"ADC_CLK_DIV_12"
.LASF178:
	.string	"ADC_CLK_DIV_16"
.LASF46:
	.string	"_atexit"
.LASF197:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF230:
	.string	"micboostDb"
.LASF20:
	.string	"__count"
.LASF219:
	.string	"ADC_MICBOOST_DB_16DB"
.LASF179:
	.string	"ADC_CLK_DIV_20"
.LASF127:
	.string	"TIMEOUT"
.LASF163:
	.string	"ADC_Chan_Type"
.LASF38:
	.string	"__tm_wday"
.LASF129:
	.string	"DISABLE"
.LASF39:
	.string	"__tm_yday"
.LASF269:
	.string	"ADC_INT_Type"
.LASF278:
	.string	"ADC_MIC_Bias_Disable"
.LASF97:
	.string	"_seed"
.LASF59:
	.string	"_seek"
.LASF181:
	.string	"ADC_CLK_DIV_32"
.LASF16:
	.string	"_fpos_t"
.LASF19:
	.string	"__wchb"
.LASF309:
	.string	"sigType"
.LASF108:
	.string	"_mbtowc_state"
.LASF174:
	.string	"ADC_CLK_DIV_1"
.LASF175:
	.string	"ADC_CLK_DIV_4"
.LASF222:
	.string	"ADC_PGA2_GAIN_0DB"
.LASF176:
	.string	"ADC_CLK_DIV_8"
.LASF12:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF43:
	.string	"_dso_handle"
.LASF96:
	.string	"_rand48"
.LASF72:
	.string	"_stdout"
.LASF326:
	.string	"posCh"
.LASF146:
	.string	"ADC_CHAN7"
.LASF279:
	.string	"ADC_MIC_Bias_Enable"
.LASF323:
	.string	"contEn"
.LASF196:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF164:
	.string	"ADC_V18_SEL_1P62V"
.LASF63:
	.string	"_blksize"
.LASF50:
	.string	"_base"
.LASF125:
	.string	"SUCCESS"
.LASF101:
	.string	"_strtok_last"
.LASF300:
	.string	"cbFun"
.LASF114:
	.string	"_mbrtowc_state"
.LASF272:
	.string	"ADC_FIFO_Cfg_Type"
.LASF25:
	.string	"_flock_t"
.LASF92:
	.string	"__FILE"
.LASF325:
	.string	"ADC_Channel_Config"
.LASF132:
	.string	"RESET"
.LASF22:
	.string	"_mbstate_t"
.LASF168:
	.string	"ADC_V18_SEL_Type"
.LASF209:
	.string	"ADC_VREF_Type"
.LASF106:
	.string	"_r48"
.LASF14:
	.string	"wint_t"
.LASF161:
	.string	"ADC_CHAN_SENP0"
.LASF154:
	.string	"ADC_CHAN_TSEN_N"
.LASF153:
	.string	"ADC_CHAN_TSEN_P"
.LASF158:
	.string	"ADC_CHAN_SENP3"
.LASF26:
	.string	"_next"
.LASF262:
	.string	"ADC_FIFO_Threshold_Type"
.LASF65:
	.string	"_data"
.LASF203:
	.string	"ADC_PGA_VCM_Type"
.LASF226:
	.string	"ADC_PGA2_GAIN_Type"
.LASF224:
	.string	"ADC_PGA2_GAIN_N6DB"
.LASF200:
	.string	"ADC_PGA_VCM_1P2V"
.LASF194:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF133:
	.string	"BL_Sts_Type"
.LASF207:
	.string	"ADC_VREF_3P3V"
.LASF285:
	.string	"adc_mic_config"
.LASF251:
	.string	"ADC_CFG_Type"
.LASF303:
	.string	"ADC_IntClr"
.LASF107:
	.string	"_mblen_state"
.LASF318:
	.string	"ADC_Start"
.LASF4:
	.string	"short int"
.LASF253:
	.string	"negChan"
.LASF220:
	.string	"ADC_MICBOOST_DB_32DB"
.LASF3:
	.string	"int16_t"
.LASF44:
	.string	"_fntypes"
.LASF263:
	.string	"ADC_INT_POS_SATURATION"
.LASF329:
	.string	"ADC_Init"
.LASF130:
	.string	"ENABLE"
.LASF37:
	.string	"__tm_year"
.LASF250:
	.string	"offsetCalibVal"
.LASF319:
	.string	"ADC_Scan_Channel_Config"
.LASF238:
	.string	"ADC_MIC_Type"
.LASF201:
	.string	"ADC_PGA_VCM_1P4V"
.LASF333:
	.string	"ADC_Enable"
.LASF55:
	.string	"_lbfsize"
.LASF74:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF49:
	.string	"__sbuf"
.LASF45:
	.string	"_is_cxa"
.LASF119:
	.string	"_nextf"
.LASF236:
	.string	"micPgaEn"
.LASF265:
	.string	"ADC_INT_FIFO_UNDERRUN"
.LASF223:
	.string	"ADC_PGA2_GAIN_6DB"
.LASF182:
	.string	"ADC_CLK_Type"
.LASF77:
	.string	"_locale"
.LASF23:
	.string	"__ULong"
.LASF302:
	.string	"bitStatus"
.LASF10:
	.string	"uint32_t"
.LASF195:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF80:
	.string	"_result"
.LASF276:
	.string	"reserved"
.LASF15:
	.string	"_off_t"
.LASF202:
	.string	"ADC_PGA_VCM_1P6V"
.LASF99:
	.string	"_add"
.LASF9:
	.string	"short unsigned int"
.LASF34:
	.string	"__tm_hour"
.LASF274:
	.string	"tsenRefcodeCornerParity"
.LASF165:
	.string	"ADC_V18_SEL_1P72V"
.LASF190:
	.string	"ADC_PGA_GAIN_Type"
.LASF311:
	.string	"ADC_FIFO_Is_Empty"
.LASF115:
	.string	"_mbsrtowcs_state"
.LASF155:
	.string	"ADC_CHAN_VREF"
.LASF255:
	.string	"volt"
.LASF169:
	.string	"ADC_V11_SEL_1P0V"
.LASF287:
	.string	"temp"
.LASF339:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_adc.c"
.LASF42:
	.string	"_fnargs"
.LASF40:
	.string	"__tm_isdst"
.LASF33:
	.string	"__tm_min"
.LASF112:
	.string	"_getdate_err"
.LASF280:
	.string	"tmpVal"
.LASF170:
	.string	"ADC_V11_SEL_1P1V"
.LASF235:
	.string	"micboostBypassEn"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
