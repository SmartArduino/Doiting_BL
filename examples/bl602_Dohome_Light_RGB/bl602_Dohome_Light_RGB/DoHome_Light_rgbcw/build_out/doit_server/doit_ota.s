	.file	"doit_ota.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ota_server_task,"ax",@progbits
	.align	1
	.type	ota_server_task, @function
ota_server_task:
.LFB10:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/doit_ota.c"
	.loc 1 367 1
	.cfi_startproc
.LVL0:
	.loc 1 368 2
	.loc 1 369 2
	.loc 1 370 2
	.loc 1 367 1 is_stmt 0
	addi	sp,sp,-176
	.cfi_def_cfa_offset 176
	.loc 1 370 12
	li	a5,16
	.loc 1 367 1
	sw	s1,164(sp)
	.cfi_offset 9, -12
.LBB166:
.LBB167:
	.file 2 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 31
	lui	s1,%hi(TrapNetCounter)
.LBE167:
.LBE166:
	.loc 1 370 12
	sw	a5,32(sp)
	.loc 1 371 2 is_stmt 1
.LVL1:
	.loc 1 372 2
	.loc 1 373 2
	.loc 1 374 2
	.loc 1 374 7
.LBB169:
.LBB168:
	.loc 2 151 5
.LBE168:
.LBE169:
	.loc 1 374 7 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 367 1
	sw	ra,172(sp)
	sw	s0,168(sp)
	sw	s2,160(sp)
	sw	s3,156(sp)
	sw	s4,152(sp)
	sw	s5,148(sp)
	sw	s6,144(sp)
	sw	s7,140(sp)
	sw	s8,136(sp)
	sw	s9,132(sp)
	sw	s10,128(sp)
	sw	s11,124(sp)
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
	.loc 1 374 7
	beq	a5,zero,.L2
	.loc 1 374 114 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL2:
.L3:
	.loc 1 374 7 discriminator 4
	mv	a1,a0
	li	a3,4096
	lui	s0,%hi(.LC5)
	lui	a0,%hi(.LC6)
	addi	a3,a3,1997
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL3:
	.loc 1 375 2 is_stmt 1 discriminator 4
	.loc 1 375 21 is_stmt 0 discriminator 4
	li	a2,0
	li	a1,1
	li	a0,2
	call	lwip_socket
.LVL4:
	mv	s4,a0
.LVL5:
	.loc 1 377 2 is_stmt 1 discriminator 4
	.loc 1 377 5 is_stmt 0 discriminator 4
	bge	a0,zero,.L4
	.loc 1 378 3 is_stmt 1
	.loc 1 378 8
.LBB170:
.LBB171:
	.loc 2 151 5
.LBE171:
.LBE170:
	.loc 1 378 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L5
	.loc 1 378 116 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL6:
.L6:
	.loc 1 378 8 discriminator 4
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC8)
	mv	a5,s4
	li	a4,378
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL7:
.L4:
	.loc 1 381 2 is_stmt 1
	.loc 1 382 25 is_stmt 0
	li	a0,4096
	.loc 1 381 25
	li	a5,2
	.loc 1 382 25
	addi	a0,a0,1997
	.loc 1 381 25
	sb	a5,45(sp)
	.loc 1 382 2 is_stmt 1
	.loc 1 382 25 is_stmt 0
	call	lwip_htons
.LVL8:
	.loc 1 382 23
	sh	a0,46(sp)
	.loc 1 383 2 is_stmt 1
	.loc 1 383 32 is_stmt 0
	li	a0,0
	call	lwip_htonl
.LVL9:
	.loc 1 383 30
	sw	a0,48(sp)
	.loc 1 385 2 is_stmt 1
	.loc 1 385 6 is_stmt 0
	li	a2,16
	addi	a1,sp,44
	mv	a0,s4
	call	lwip_bind
.LVL10:
	.loc 1 385 5
	bge	a0,zero,.L7
	.loc 1 386 3 is_stmt 1
	.loc 1 386 8
.LBB172:
.LBB173:
	.loc 2 151 5
.LBE173:
.LBE172:
	.loc 1 386 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L8
	.loc 1 386 114 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL11:
.L9:
	.loc 1 386 8 discriminator 4
	mv	a1,a0
	lui	a3,%hi(.LC7)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	mv	a5,s4
	li	a4,386
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	call	bl_printk
.LVL12:
	.loc 1 387 3 is_stmt 1 discriminator 4
	mv	a0,s4
	call	lwip_close
.LVL13:
.L7:
	.loc 1 390 2
	.loc 1 390 6 is_stmt 0
	li	a1,5
	mv	a0,s4
	call	lwip_listen
.LVL14:
	.loc 1 390 5
	bge	a0,zero,.L10
	.loc 1 391 3 is_stmt 1
	.loc 1 391 8
.LBB174:
.LBB175:
	.loc 2 151 5
.LBE175:
.LBE174:
	.loc 1 391 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L11
	.loc 1 391 116 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL15:
.L12:
	.loc 1 391 8 discriminator 4
	mv	a1,a0
	lui	a3,%hi(.LC7)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	mv	a5,s4
	li	a4,391
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	call	bl_printk
.LVL16:
	.loc 1 392 3 is_stmt 1 discriminator 4
	mv	a0,s4
	call	lwip_close
.LVL17:
.L10:
	.loc 1 395 2
	.loc 1 395 13 is_stmt 0
	li	a0,256
	call	malloc
.LVL18:
	mv	s2,a0
.LVL19:
.L109:
	.loc 1 397 2 is_stmt 1
	.loc 1 398 3
	.loc 1 398 8
.LBB176:
.LBB177:
	.loc 2 151 5
.LBE177:
.LBE176:
	.loc 1 398 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L13
	.loc 1 398 100 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL20:
.L14:
	.loc 1 398 8 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC11)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL21:
	.loc 1 399 3 is_stmt 1 discriminator 4
	.loc 1 399 22 is_stmt 0 discriminator 4
	addi	a2,sp,32
	addi	a1,sp,60
	mv	a0,s4
	call	lwip_accept
.LVL22:
	mv	s6,a0
.LVL23:
	.loc 1 400 3 is_stmt 1 discriminator 4
	.loc 1 400 6 is_stmt 0 discriminator 4
	ble	a0,zero,.L15
	.loc 1 403 3 is_stmt 1
	.loc 1 403 8
.LBB178:
.LBB179:
	.loc 2 151 5
.LBE179:
.LBE178:
	.loc 1 403 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L16
	.loc 1 403 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL24:
.L17:
	.loc 1 403 8 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC12)
	mv	a3,s6
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC12)
.LBB180:
.LBB181:
.LBB182:
.LBB183:
	.loc 1 339 9 discriminator 4
	lui	s11,%hi(.LC2)
.LBE183:
.LBE182:
.LBE181:
.LBE180:
	.loc 1 403 8 discriminator 4
	call	bl_printk
.LVL25:
.LBB269:
.LBB258:
.LBB253:
.LBB197:
	.loc 1 339 9 discriminator 4
	addi	s11,s11,%lo(.LC2)
.L18:
.LBE197:
.LBE253:
.LBE258:
.LBE269:
	.loc 1 405 3 is_stmt 1
.LBB270:
	.loc 1 406 4
	li	a2,256
	li	a1,0
	mv	a0,s2
	call	memset
.LVL26:
	.loc 1 407 4
	.loc 1 407 14 is_stmt 0
	li	a3,0
	li	a2,256
	mv	a1,s2
	mv	a0,s6
	call	lwip_recv
.LVL27:
	mv	s5,a0
.LVL28:
	.loc 1 409 4 is_stmt 1
	.loc 1 409 7 is_stmt 0
	ble	a0,zero,.L19
	.loc 1 411 5 is_stmt 1
.LVL29:
.LBB259:
.LBB254:
	.loc 1 228 2
	.loc 1 228 5 is_stmt 0
	li	a5,8
	bgt	a0,a5,.L20
.LBB198:
	.loc 1 229 3 is_stmt 1
	.loc 1 229 8
.LBB199:
.LBB200:
	.loc 2 151 5
.LBE200:
.LBE199:
	.loc 1 229 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L21
	.loc 1 229 117
	call	xTaskGetTickCountFromISR
.LVL30:
.L22:
	.loc 1 229 8
	mv	a1,a0
	lui	a0,%hi(.LC13)
	mv	a3,s5
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL31:
	.loc 1 230 3 is_stmt 1
	.loc 1 231 3
	.loc 1 231 10 is_stmt 0
	li	s3,0
	.loc 1 231 36
	lui	s7,%hi(.LC14)
.LVL32:
.L25:
	.loc 1 231 31 is_stmt 1
	.loc 1 231 36
.LBB201:
.LBB202:
	.loc 2 151 5
.LBE202:
.LBE201:
	.loc 1 231 36 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L23
	.loc 1 231 119
	call	xTaskGetTickCountFromISR
.LVL33:
.L24:
	.loc 1 231 181
	add	a5,s2,s3
	.loc 1 231 36
	lbu	a3,0(a5)
	mv	a1,a0
	addi	a2,s0,%lo(.LC5)
	addi	a0,s7,%lo(.LC14)
	.loc 1 231 25
	addi	s3,s3,1
.LVL34:
	.loc 1 231 36
	call	bl_printk
.LVL35:
	.loc 1 231 3
	bne	s5,s3,.L25
	.loc 1 232 3 is_stmt 1
	.loc 1 232 8
.LBB203:
.LBB204:
	.loc 2 151 5
.LBE204:
.LBE203:
	.loc 1 232 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L26
	.loc 1 232 90
	call	xTaskGetTickCountFromISR
.LVL36:
.L27:
	.loc 1 232 8
	mv	a1,a0
	lui	a0,%hi(.LC15)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL37:
	.loc 1 233 3 is_stmt 1
.L28:
.LBE198:
	.loc 1 359 2
	addi	a0,sp,36
	call	strlen
.LVL38:
	mv	a2,a0
	addi	a1,sp,36
	mv	a0,s6
	call	lwip_write
.LVL39:
	.loc 1 360 2
	call	system_delay_reset
.LVL40:
	j	.L18
.LVL41:
.L2:
.LBE254:
.LBE259:
.LBE270:
	.loc 1 374 143 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL42:
	j	.L3
.LVL43:
.L5:
	.loc 1 378 145 discriminator 2
	call	xTaskGetTickCount
.LVL44:
	j	.L6
.L8:
	.loc 1 386 143 discriminator 2
	call	xTaskGetTickCount
.LVL45:
	j	.L9
.L11:
	.loc 1 391 145 discriminator 2
	call	xTaskGetTickCount
.LVL46:
	j	.L12
.LVL47:
.L13:
	.loc 1 398 129 discriminator 2
	call	xTaskGetTickCount
.LVL48:
	j	.L14
.LVL49:
.L16:
	.loc 1 403 140 discriminator 2
	call	xTaskGetTickCount
.LVL50:
	j	.L17
.LVL51:
.L21:
.LBB271:
.LBB260:
.LBB255:
.LBB205:
	.loc 1 229 146
	call	xTaskGetTickCount
.LVL52:
	j	.L22
.LVL53:
.L23:
	.loc 1 231 148
	call	xTaskGetTickCount
.LVL54:
	j	.L24
.L26:
	.loc 1 232 119
	call	xTaskGetTickCount
.LVL55:
	j	.L27
.LVL56:
.L20:
.LBE205:
	.loc 1 236 2 is_stmt 1
	.loc 1 236 5 is_stmt 0
	lbu	a5,0(s2)
	addi	s3,a0,-1
	li	a4,241
	add	s3,s2,s3
	bne	a5,a4,.L29
	.loc 1 236 22
	lbu	a4,1(s2)
	beq	a4,a5,.L30
.L29:
	.loc 1 237 3 is_stmt 1
	.loc 1 237 8
.LBB206:
.LBB207:
	.loc 2 151 5
.LBE207:
.LBE206:
	.loc 1 237 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L31
	.loc 1 237 204
	call	xTaskGetTickCountFromISR
.LVL57:
.L32:
	.loc 1 237 8
	sw	s5,12(sp)
	lbu	a5,0(s3)
	.loc 1 237 321
	add	s5,s2,s5
.LVL58:
	.loc 1 237 8
	lbu	a7,2(s2)
	sw	a5,8(sp)
	lbu	a5,-2(s5)
	lbu	a6,1(s2)
	mv	a1,a0
	sw	a5,4(sp)
	lbu	a5,3(s2)
	lui	a3,%hi(.LC7)
	lui	a0,%hi(.LC16)
	sw	a5,0(sp)
	lbu	a5,0(s2)
	li	a4,237
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL59:
	.loc 1 238 3 is_stmt 1
	j	.L28
.LVL60:
.L31:
	.loc 1 237 233 is_stmt 0
	call	xTaskGetTickCount
.LVL61:
	j	.L32
.LVL62:
.L30:
	.loc 1 241 2 is_stmt 1
	.loc 1 241 5 is_stmt 0
	lbu	a4,0(s3)
	li	a5,126
	beq	a4,a5,.L33
	.loc 1 242 3 is_stmt 1
	.loc 1 242 8
.LBB208:
.LBB209:
	.loc 2 151 5
.LBE209:
.LBE208:
	.loc 1 242 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L34
	.loc 1 242 117
	call	xTaskGetTickCountFromISR
.LVL63:
.L35:
	.loc 1 242 8
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC17)
	li	a4,242
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC17)
.LVL64:
.L119:
	.loc 1 353 8
	call	bl_printk
.LVL65:
	.loc 1 354 3 is_stmt 1
	j	.L28
.LVL66:
.L34:
	.loc 1 242 146 is_stmt 0
	call	xTaskGetTickCount
.LVL67:
	j	.L35
.LVL68:
.L33:
	.loc 1 246 2 is_stmt 1
	.loc 1 247 2
	.loc 1 248 5
	.loc 1 249 2
	.loc 1 250 2
	.loc 1 252 2
	.loc 1 250 11 is_stmt 0
	lbu	a5,4(s2)
.LVL69:
	.loc 1 255 7
	lbu	s3,6(s2)
	.loc 1 258 10
	lui	s9,%hi(.LANCHOR0)
	.loc 1 252 6
	slli	a4,a5,24
.LVL70:
	.loc 1 253 2 is_stmt 1
	.loc 1 254 2
	.loc 1 255 2
	.loc 1 256 2
	.loc 1 257 2
	.loc 1 253 7 is_stmt 0
	lbu	a5,5(s2)
	.loc 1 256 14
	slli	s3,s3,8
.LVL71:
	.loc 1 254 14
	slli	a5,a5,16
	.loc 1 254 6
	add	a5,a5,a4
	.loc 1 257 13
	lbu	a4,7(s2)
.LVL72:
	add	a5,a5,a4
	.loc 1 257 6
	add	s3,s3,a5
.LVL73:
	.loc 1 258 2 is_stmt 1
	.loc 1 258 5 is_stmt 0
	lw	a5,%lo(.LANCHOR0)(s9)
	addi	s9,s9,%lo(.LANCHOR0)
	beq	s3,a5,.L36
	.loc 1 259 3 is_stmt 1
	.loc 1 259 6 is_stmt 0
	lbu	a3,2(s2)
	li	a4,3
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a3,a4,.L37
	.loc 1 260 4 is_stmt 1
	.loc 1 260 9
.LBE255:
.LBE260:
.LBE271:
	.loc 2 151 5
.LBB272:
.LBB261:
.LBB256:
	.loc 1 260 9 is_stmt 0
	beq	a5,zero,.L38
	.loc 1 260 151
	call	xTaskGetTickCountFromISR
.LVL74:
.L39:
	.loc 1 260 9
	lbu	a5,7(s2)
	lbu	a7,4(s2)
	lw	a6,0(s9)
	sw	a5,8(sp)
	lbu	a5,6(s2)
	mv	a1,a0
	lui	a3,%hi(.LC7)
	sw	a5,4(sp)
	lbu	a5,5(s2)
	lui	a0,%hi(.LC18)
	li	a4,260
	sw	a5,0(sp)
	addi	a3,a3,%lo(.LC7)
	mv	a5,s3
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL75:
	.loc 1 261 4 is_stmt 1
	j	.L28
.LVL76:
.L38:
	.loc 1 260 180 is_stmt 0
	call	xTaskGetTickCount
.LVL77:
	j	.L39
.LVL78:
.L37:
	.loc 1 263 4 is_stmt 1
	.loc 1 263 9
.LBE256:
.LBE261:
.LBE272:
	.loc 2 151 5
.LBB273:
.LBB262:
.LBB257:
	.loc 1 263 9 is_stmt 0
	beq	a5,zero,.L40
	.loc 1 263 115
	call	xTaskGetTickCountFromISR
.LVL79:
.L41:
	.loc 1 263 9
	lbu	a3,2(s2)
	mv	a1,a0
	lui	a0,%hi(.LC19)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
.LVL80:
.L36:
	.loc 1 267 2 is_stmt 1
	.loc 1 269 2
	.loc 1 269 7 is_stmt 0
	lui	a1,%hi(.LC0)
	li	a2,7
	addi	a1,a1,%lo(.LC0)
	addi	a0,sp,36
	call	memcpy
.LVL81:
	.loc 1 270 2 is_stmt 1
	.loc 1 270 21 is_stmt 0
	lbu	s3,3(s2)
.LVL82:
	.loc 1 272 2 is_stmt 1
	.loc 1 272 5 is_stmt 0
	li	a5,240
	ble	s3,a5,.L42
	.loc 1 273 3 is_stmt 1
	.loc 1 273 8
.LBB210:
.LBB211:
	.loc 2 151 5
.LBE211:
.LBE210:
	.loc 1 273 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L43
	.loc 1 273 129
	call	xTaskGetTickCountFromISR
.LVL83:
.L44:
	.loc 1 273 8
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC20)
	li	a4,273
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC20)
	j	.L119
.LVL84:
.L40:
	.loc 1 263 144
	call	xTaskGetTickCount
.LVL85:
	j	.L41
.LVL86:
.L43:
	.loc 1 273 158
	call	xTaskGetTickCount
.LVL87:
	j	.L44
.L42:
	.loc 1 276 2 is_stmt 1
.LVL88:
	.loc 1 283 2
.LBB212:
.LBB213:
	.loc 1 205 2
	.loc 1 205 10 is_stmt 0
	add	s5,s2,s5
.LVL89:
	lbu	a3,-2(s5)
.LVL90:
	.loc 1 206 2 is_stmt 1
	.loc 1 207 2
	.loc 1 210 2
	.loc 1 207 13 is_stmt 0
	li	a5,0
	.loc 1 210 9
	li	a4,2
	.loc 1 210 36
	addi	a2,s3,7
.LVL91:
.L45:
	.loc 1 211 3 is_stmt 1
	.loc 1 211 14 is_stmt 0
	add	a1,s2,a4
	lbu	a1,0(a1)
	.loc 1 210 42
	addi	a4,a4,1
.LVL92:
	.loc 1 211 7
	add	a5,a5,a1
.LVL93:
	.loc 1 210 2
	ble	a4,a2,.L45
	.loc 1 220 2 is_stmt 1
.LVL94:
	.loc 1 222 2
.LBE213:
.LBE212:
	.loc 1 283 5 is_stmt 0
	andi	a5,a5,0xff
	bne	a3,a5,.L46
	.loc 1 284 3 is_stmt 1
	.loc 1 284 11 is_stmt 0
	lbu	a5,2(s2)
	.loc 1 284 6
	li	a4,3
	bne	a5,a4,.L47
	.loc 1 285 4 is_stmt 1
.LBB214:
.LBB215:
	.loc 1 173 2
.LVL95:
	.loc 1 174 2
	.loc 1 175 2
	.loc 1 177 2
	lui	a5,%hi(.LANCHOR1)
	lui	a0,%hi(.LANCHOR2)
	addi	a1,a5,%lo(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR2)
	call	utils_sha256_finish
.LVL96:
	.loc 1 178 2
	.loc 1 178 36 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a1,%lo(.LANCHOR3)(a5)
	.loc 1 178 2
	li	a2,32
	addi	a0,sp,76
	addi	a1,a1,64
	call	memcpy
.LVL97:
	.loc 1 179 2 is_stmt 1
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	.loc 1 181 3 is_stmt 0
	lui	s7,%hi(.LC22)
	.loc 1 179 2
	call	puts
.LVL98:
	.loc 1 180 2 is_stmt 1
	.loc 1 180 9 is_stmt 0
	li	s3,0
.LVL99:
	.loc 1 180 2
	li	s8,32
	mv	s5,s7
.LVL100:
.L48:
	.loc 1 181 3 is_stmt 1
	.loc 1 181 31 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	add	a5,a5,s3
	.loc 1 181 3
	lbu	a1,0(a5)
	addi	a0,s7,%lo(.LC22)
	.loc 1 180 42
	addi	s3,s3,1
.LVL101:
	.loc 1 181 3
	call	printf
.LVL102:
	.loc 1 180 2
	bne	s3,s8,.L48
	.loc 1 183 2 is_stmt 1
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	call	puts
.LVL103:
	.loc 1 184 2
	.loc 1 184 9 is_stmt 0
	li	s3,0
	.loc 1 184 2
	li	s7,32
.LVL104:
.L49:
	.loc 1 185 3 is_stmt 1
	.loc 1 185 28 is_stmt 0
	addi	a5,sp,76
	add	a5,a5,s3
	.loc 1 185 3
	lbu	a1,0(a5)
	addi	a0,s5,%lo(.LC22)
	.loc 1 184 39
	addi	s3,s3,1
.LVL105:
	.loc 1 185 3
	call	printf
.LVL106:
	.loc 1 184 2
	bne	s3,s7,.L49
	.loc 1 187 2 is_stmt 1
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	puts
.LVL107:
	.loc 1 189 2
	.loc 1 189 6 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	li	a2,32
	addi	a1,a5,%lo(.LANCHOR1)
	addi	a0,sp,76
	call	memcmp
.LVL108:
	.loc 1 189 5
	beq	a0,zero,.L50
	.loc 1 191 3 is_stmt 1
	.loc 1 191 8
.LBB216:
.LBB217:
	.loc 2 151 5
.LBE217:
.LBE216:
	.loc 1 191 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L51
	.loc 1 191 111
	call	xTaskGetTickCountFromISR
.LVL109:
.L52:
	.loc 1 191 8
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC25)
	li	a4,191
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC25)
	call	bl_printk
.LVL110:
	.loc 1 192 3 is_stmt 1
.L53:
.LBE215:
.LBE214:
	.loc 1 286 4
	.loc 1 286 9
.LBB221:
.LBB222:
	.loc 2 151 5
.LBE222:
.LBE221:
	.loc 1 286 9 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L56
	.loc 1 286 103
	call	xTaskGetTickCountFromISR
.LVL111:
.L57:
	.loc 1 286 9
	mv	a1,a0
	lui	a0,%hi(.LC27)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC27)
	call	bl_printk
.LVL112:
	j	.L18
.LVL113:
.L51:
.LBB223:
.LBB220:
	.loc 1 191 140
	call	xTaskGetTickCount
.LVL114:
	j	.L52
.L50:
	.loc 1 195 2 is_stmt 1
	.loc 1 195 14 is_stmt 0
	lui	a4,%hi(.LANCHOR5)
	lw	a4,%lo(.LANCHOR5)(a4)
	lui	a0,%hi(.LANCHOR4)
	addi	a5,a0,%lo(.LANCHOR4)
	.loc 1 197 8
	addi	a0,a0,%lo(.LANCHOR4)
	.loc 1 195 14
	sw	a4,28(a5)
	.loc 1 197 2 is_stmt 1
	.loc 1 197 8 is_stmt 0
	call	hal_boot2_update_ptable
.LVL115:
	.loc 1 198 7
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 197 8
	mv	s3,a0
.LVL116:
	.loc 1 198 2 is_stmt 1
	.loc 1 198 7
.LBB218:
.LBB219:
	.loc 2 151 5
.LBE219:
.LBE218:
	.loc 1 198 7 is_stmt 0
	beq	a5,zero,.L54
	.loc 1 198 105
	call	xTaskGetTickCountFromISR
.LVL117:
.L55:
	.loc 1 198 7
	mv	a1,a0
	lui	a0,%hi(.LC26)
	mv	a3,s3
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC26)
	call	bl_printk
.LVL118:
	.loc 1 199 2 is_stmt 1
	call	system_delay_reboot
.LVL119:
	.loc 1 200 2
	j	.L53
.LVL120:
.L54:
	.loc 1 198 134 is_stmt 0
	call	xTaskGetTickCount
.LVL121:
	j	.L55
.LVL122:
.L56:
.LBE220:
.LBE223:
	.loc 1 286 132
	call	xTaskGetTickCount
.LVL123:
	j	.L57
.LVL124:
.L47:
	.loc 1 288 10 is_stmt 1
	.loc 1 288 13 is_stmt 0
	li	a4,1
	bne	a5,a4,.L59
.LBB224:
	.loc 1 289 4 is_stmt 1
.LBB225:
.LBB226:
	.loc 1 133 2
	.loc 1 133 7
.LBB227:
.LBB228:
	.loc 2 151 5
.LBE228:
.LBE227:
	.loc 1 133 7 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L60
	.loc 1 133 104
	call	xTaskGetTickCountFromISR
.LVL125:
.L61:
	.loc 1 133 7
	mv	a1,a0
	lui	a0,%hi(.LC28)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC28)
	call	bl_printk
.LVL126:
	.loc 1 135 2 is_stmt 1
	.loc 1 136 2
	.loc 1 136 8 is_stmt 0
	lui	s5,%hi(.LANCHOR6)
	lui	a0,%hi(.LC29)
	li	a2,1
	addi	a1,s5,%lo(.LANCHOR6)
	addi	a0,a0,%lo(.LC29)
	call	bl_mtd_open
.LVL127:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 8 is_stmt 0
	beq	a0,zero,.L62
	.loc 1 138 9 is_stmt 1
	.loc 1 138 14
.LBB229:
.LBB230:
	.loc 2 151 5
.LBE230:
.LBE229:
	.loc 1 138 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L63
	.loc 1 138 131
	call	xTaskGetTickCountFromISR
.LVL128:
.L64:
	.loc 1 138 14
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC30)
	li	a4,138
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC30)
	call	bl_printk
.LVL129:
	.loc 1 139 9 is_stmt 1
.L65:
.LBE226:
.LBE225:
	.loc 1 290 4
	.loc 1 290 9 is_stmt 0
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	lw	a4,0(a5)
	lw	a5,4(a5)
	sw	a4,76(sp)
	sw	a5,80(sp)
	.loc 1 291 4 is_stmt 1
.L98:
.LBE224:
.LBB243:
	.loc 1 345 5
	.loc 1 346 5
	.loc 1 347 5
	addi	a0,sp,76
	call	strlen
.LVL130:
	mv	a2,a0
	addi	a1,sp,76
	mv	a0,s6
	call	lwip_write
.LVL131:
	j	.L18
.LVL132:
.L60:
.LBE243:
.LBB244:
.LBB242:
.LBB241:
	.loc 1 133 133 is_stmt 0
	call	xTaskGetTickCount
.LVL133:
	j	.L61
.LVL134:
.L63:
	.loc 1 138 160
	call	xTaskGetTickCount
.LVL135:
	j	.L64
.LVL136:
.L62:
	.loc 1 142 2 is_stmt 1
	.loc 1 143 2
	.loc 1 143 13 is_stmt 0
	call	hal_boot2_get_active_partition
.LVL137:
	.loc 1 144 7
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 143 13
	mv	s3,a0
.LVL138:
	.loc 1 144 2 is_stmt 1
	.loc 1 144 7
.LBB231:
.LBB232:
	.loc 2 151 5
.LBE232:
.LBE231:
	.loc 1 144 7 is_stmt 0
	beq	a5,zero,.L66
	.loc 1 144 99
	call	xTaskGetTickCountFromISR
.LVL139:
.L67:
	.loc 1 144 7
	mv	a1,a0
	lui	a0,%hi(.LC31)
	mv	a3,s3
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC31)
	call	bl_printk
.LVL140:
	.loc 1 147 2 is_stmt 1
	.loc 1 147 6 is_stmt 0
	lui	s3,%hi(.LANCHOR4)
.LVL141:
	addi	a1,s3,%lo(.LANCHOR4)
	li	a0,0
	call	hal_boot2_get_active_entries
.LVL142:
	addi	s3,s3,%lo(.LANCHOR4)
	.loc 1 147 5
	beq	a0,zero,.L68
	.loc 1 148 9 is_stmt 1
	.loc 1 148 14
.LBB233:
.LBB234:
	.loc 2 151 5
.LBE234:
.LBE233:
	.loc 1 148 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L69
	.loc 1 148 130
	call	xTaskGetTickCountFromISR
.LVL143:
.L70:
	.loc 1 148 14
	mv	a1,a0
	lui	a3,%hi(.LC7)
	lui	a0,%hi(.LC32)
	li	a4,148
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC32)
	call	bl_printk
.LVL144:
	.loc 1 149 9 is_stmt 1
	lw	a0,%lo(.LANCHOR6)(s5)
	call	bl_mtd_close
.LVL145:
	.loc 1 150 9
	j	.L65
.LVL146:
.L66:
	.loc 1 144 128 is_stmt 0
	call	xTaskGetTickCount
.LVL147:
	j	.L67
.LVL148:
.L69:
	.loc 1 148 159
	call	xTaskGetTickCount
.LVL149:
	j	.L70
.L68:
	.loc 1 153 2 is_stmt 1
	.loc 1 154 2
	.loc 1 155 2
	.loc 1 155 29 is_stmt 0
	lbu	a5,2(s3)
	seqz	a5,a5
	.loc 1 155 11
	slli	a4,a5,2
	.loc 1 156 14
	addi	a5,a5,4
	slli	a5,a5,2
	add	a5,s3,a5
	lw	s5,4(a5)
	.loc 1 159 10
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 155 11
	add	a4,s3,a4
	lw	s7,12(a4)
.LVL150:
	.loc 1 156 5 is_stmt 1
	.loc 1 157 5
	.loc 1 158 5
	.loc 1 159 5
	.loc 1 159 10
.LBB235:
.LBB236:
	.loc 2 151 5
.LBE236:
.LBE235:
	.loc 1 159 10 is_stmt 0
	beq	a5,zero,.L71
	.loc 1 159 126
	call	xTaskGetTickCountFromISR
.LVL151:
.L72:
	.loc 1 159 10
	mv	a1,a0
	lui	a0,%hi(.LC33)
	mv	a3,s5
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC33)
	call	bl_printk
.LVL152:
	.loc 1 160 5 is_stmt 1
	.loc 1 160 10
.LBB237:
.LBB238:
	.loc 2 151 5
.LBE238:
.LBE237:
	.loc 1 160 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L73
	.loc 1 160 131
	call	xTaskGetTickCountFromISR
.LVL153:
.L74:
	.loc 1 160 10
	lbu	a3,2(s3)
	mv	a1,a0
	lui	a0,%hi(.LC34)
	mv	a4,s7
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC34)
	call	bl_printk
.LVL154:
	.loc 1 161 5 is_stmt 1
	.loc 1 161 10
.LBB239:
.LBB240:
	.loc 2 151 5
.LBE240:
.LBE239:
	.loc 1 161 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L75
	.loc 1 161 116
	call	xTaskGetTickCountFromISR
.LVL155:
.L76:
	.loc 1 161 10
	mv	a1,a0
	lui	a0,%hi(.LC35)
	mv	a3,s5
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC35)
	call	bl_printk
.LVL156:
	.loc 1 163 2 is_stmt 1
	lui	s3,%hi(.LANCHOR2)
	addi	a0,s3,%lo(.LANCHOR2)
	call	utils_sha256_init
.LVL157:
	.loc 1 164 5
	addi	a0,s3,%lo(.LANCHOR2)
	call	utils_sha256_starts
.LVL158:
	.loc 1 165 2
	lui	a5,%hi(.LANCHOR1)
	addi	a0,a5,%lo(.LANCHOR1)
	li	a2,32
	li	a1,0
	call	memset
.LVL159:
	.loc 1 167 2
	.loc 1 167 22 is_stmt 0
	li	a0,512
	call	pvPortMalloc
.LVL160:
	.loc 1 167 20
	lui	a5,%hi(.LANCHOR7)
	sw	a0,%lo(.LANCHOR7)(a5)
	.loc 1 168 2 is_stmt 1
	j	.L65
.L71:
	.loc 1 159 155 is_stmt 0
	call	xTaskGetTickCount
.LVL161:
	j	.L72
.L73:
	.loc 1 160 160
	call	xTaskGetTickCount
.LVL162:
	j	.L74
.L75:
	.loc 1 161 145
	call	xTaskGetTickCount
.LVL163:
	j	.L76
.LVL164:
.L59:
.LBE241:
.LBE242:
.LBE244:
	.loc 1 293 10 is_stmt 1
	.loc 1 293 13 is_stmt 0
	li	a4,5
	bne	a5,a4,.L77
.LBB245:
	.loc 1 295 4 is_stmt 1
.LVL165:
	.loc 1 296 4
	.loc 1 297 4
	.loc 1 297 9 is_stmt 0
	li	a5,17231872
	addi	a5,a5,754
	sw	a5,76(sp)
	li	a5,8261632
	addi	a5,a5,-2047
	.loc 1 298 4
	addi	a0,sp,76
	.loc 1 297 9
	sw	a5,80(sp)
	.loc 1 298 4 is_stmt 1
	call	strlen
.LVL166:
	mv	a2,a0
	addi	a1,sp,76
	mv	a0,s6
	call	lwip_write
.LVL167:
	.loc 1 299 4
	.loc 1 299 9
.LBB246:
.LBB247:
	.loc 2 151 5
.LBE247:
.LBE246:
	.loc 1 299 9 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L78
	.loc 1 299 113
	call	xTaskGetTickCountFromISR
.LVL168:
.L117:
	sw	a0,24(sp)
	.loc 1 299 9
	addi	a0,sp,76
	call	strlen
.LVL169:
	lw	a1,24(sp)
	mv	a3,a0
	lui	a0,%hi(.LC36)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC36)
	call	bl_printk
.LVL170:
	j	.L18
.L78:
	.loc 1 299 142
	call	xTaskGetTickCount
.LVL171:
	j	.L117
.LVL172:
.L77:
.LBE245:
	.loc 1 301 10 is_stmt 1
	.loc 1 301 13 is_stmt 0
	li	a4,2
	beq	a5,a4,.L80
	.loc 1 301 30
	li	a4,9
	bne	a5,a4,.L81
.L80:
.LBB248:
	.loc 1 303 4 is_stmt 1
	.loc 1 303 9 is_stmt 0
	lui	a5,%hi(.LANCHOR8)
	lw	s10,%lo(.LANCHOR8)(a5)
	addi	a5,a5,%lo(.LANCHOR8)
	sw	a5,24(sp)
	addi	a3,s2,8
	.loc 1 303 6
	bne	s10,zero,.L82
	.loc 1 304 5 is_stmt 1
	.loc 1 304 26 is_stmt 0
	lui	s5,%hi(.LANCHOR9)
	lw	a5,%lo(.LANCHOR9)(s5)
	lui	s7,%hi(.LANCHOR7)
	lw	a0,%lo(.LANCHOR7)(s7)
	add	a4,s3,a5
	.loc 1 304 7
	li	a2,512
	add	a0,a0,a5
	addi	s7,s7,%lo(.LANCHOR7)
	addi	s5,s5,%lo(.LANCHOR9)
	ble	a4,a2,.L83
	.loc 1 305 6 is_stmt 1
	sub	a2,a2,a5
.L118:
	.loc 1 308 6 is_stmt 0
	mv	a1,a3
	call	memcpy
.LVL173:
	.loc 1 309 6 is_stmt 1
	.loc 1 309 24 is_stmt 0
	lw	a5,0(s5)
	add	a5,a5,s3
	sw	a5,0(s5)
	.loc 1 311 5 is_stmt 1
	.loc 1 311 10
.LBB184:
.LBB185:
	.loc 2 151 5
.LBE185:
.LBE184:
	.loc 1 311 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L85
	.loc 1 311 114
	call	xTaskGetTickCountFromISR
.LVL174:
.L86:
	.loc 1 311 10
	lw	a4,0(s5)
	mv	a1,a0
	lui	a0,%hi(.LC37)
	li	a3,512
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC37)
	call	bl_printk
.LVL175:
	.loc 1 313 5 is_stmt 1
	.loc 1 313 7 is_stmt 0
	lw	a4,0(s5)
	li	a5,511
	ble	a4,a5,.L88
	.loc 1 314 6 is_stmt 1
	.loc 1 314 11
.LBB186:
.LBB187:
	.loc 2 151 5
.LBE187:
.LBE186:
	.loc 1 314 11 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L89
	.loc 1 314 107
	call	xTaskGetTickCountFromISR
.LVL176:
.L90:
	.loc 1 314 11
	mv	a1,a0
	lui	a0,%hi(.LC38)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC38)
	call	bl_printk
.LVL177:
	.loc 1 315 6 is_stmt 1
	.loc 1 315 17 is_stmt 0
	lw	s8,0(s7)
	lui	a5,%hi(.LANCHOR3)
.LBB188:
.LBB189:
	.loc 1 84 5
	li	a2,16
	mv	a1,s8
	addi	a0,sp,76
.LBE189:
.LBE188:
	.loc 1 315 17
	sw	s8,%lo(.LANCHOR3)(a5)
	.loc 1 316 6 is_stmt 1
.LVL178:
.LBB191:
.LBB190:
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 84 5
	call	memcpy
.LVL179:
	.loc 1 85 5
	.loc 1 86 5 is_stmt 0
	lui	a0,%hi(.LC39)
	addi	a0,a0,%lo(.LC39)
	.loc 1 85 41
	sb	zero,92(sp)
	.loc 1 86 5 is_stmt 1
	call	puts
.LVL180:
	.loc 1 87 5
	addi	a0,sp,76
	call	puts
.LVL181:
	.loc 1 88 5
	lui	s7,%hi(.LC24)
	addi	a0,s7,%lo(.LC24)
	call	puts
.LVL182:
	.loc 1 90 5
	li	a2,4
	addi	a1,s8,16
	addi	a0,sp,76
	call	memcpy
.LVL183:
	.loc 1 91 5
	.loc 1 92 5 is_stmt 0
	lui	a0,%hi(.LC40)
	addi	a0,a0,%lo(.LC40)
	.loc 1 91 39
	sb	zero,80(sp)
	.loc 1 92 5 is_stmt 1
	call	puts
.LVL184:
	.loc 1 93 5
	addi	a0,sp,76
	call	puts
.LVL185:
	.loc 1 94 5
	addi	a0,s7,%lo(.LC24)
	call	puts
.LVL186:
	.loc 1 95 5
	.loc 1 95 9 is_stmt 0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	addi	a0,sp,76
	call	strstr
.LVL187:
	.loc 1 101 5 is_stmt 1
	lui	a3,%hi(.LANCHOR10)
	lui	a4,%hi(.LANCHOR5)
	.loc 1 95 8 is_stmt 0
	snez	a0,a0
	sw	a0,%lo(.LANCHOR10)(a3)
	.loc 1 101 5
	li	a2,4
	addi	a0,a4,%lo(.LANCHOR5)
	addi	a1,s8,20
	call	memcpy
.LVL188:
	.loc 1 102 5 is_stmt 1
	lui	a5,%hi(.LANCHOR5)
	addi	a5,a5,%lo(.LANCHOR5)
	lw	a1,0(a5)
	lui	a0,%hi(.LC41)
	addi	a0,a0,%lo(.LC41)
	call	printf
.LVL189:
	.loc 1 104 5
	addi	a1,s8,32
	li	a2,16
	addi	a0,sp,76
	call	memcpy
.LVL190:
	.loc 1 105 5
	.loc 1 106 5 is_stmt 0
	lui	a0,%hi(.LC42)
	addi	a0,a0,%lo(.LC42)
	.loc 1 105 47
	sb	zero,92(sp)
	.loc 1 106 5 is_stmt 1
	call	puts
.LVL191:
	.loc 1 107 5
	addi	a0,sp,76
	call	puts
.LVL192:
	.loc 1 108 5
	addi	a0,s7,%lo(.LC24)
	call	puts
.LVL193:
	.loc 1 110 5
	addi	a1,s8,48
	li	a2,16
	addi	a0,sp,76
	call	memcpy
.LVL194:
	.loc 1 111 5
	.loc 1 112 5 is_stmt 0
	lui	a0,%hi(.LC43)
	addi	a0,a0,%lo(.LC43)
	.loc 1 111 47
	sb	zero,92(sp)
	.loc 1 112 5 is_stmt 1
	call	puts
.LVL195:
	.loc 1 113 5
	addi	a0,sp,76
	call	puts
.LVL196:
	.loc 1 114 5
	addi	a0,s7,%lo(.LC24)
	call	puts
.LVL197:
	.loc 1 116 5
	li	a2,32
	addi	a1,s8,64
	addi	a0,sp,76
	call	memcpy
.LVL198:
	.loc 1 117 5
	.loc 1 118 2 is_stmt 0
	lui	a0,%hi(.LC44)
	li	a1,32
	addi	a0,a0,%lo(.LC44)
	.loc 1 117 41
	sb	zero,108(sp)
	.loc 1 118 2 is_stmt 1
	call	printf
.LVL199:
	.loc 1 119 5
	lui	a0,%hi(.LC45)
	addi	a0,a0,%lo(.LC45)
	call	puts
.LVL200:
	.loc 1 120 5
	lui	a3,%hi(.LANCHOR10)
	addi	a5,a3,%lo(.LANCHOR10)
	lui	a4,%hi(.LANCHOR5)
	addi	s8,a4,%lo(.LANCHOR5)
.LVL201:
	sw	a5,28(sp)
	.loc 1 121 9 is_stmt 0
	lui	a3,%hi(.LC22)
.LVL202:
.L91:
	.loc 1 121 9 is_stmt 1
	.loc 1 121 27 is_stmt 0
	addi	a5,sp,76
	add	a2,a5,s10
	.loc 1 121 9
	lbu	a1,0(a2)
	addi	a0,a3,%lo(.LC22)
	.loc 1 120 54
	addi	s10,s10,1
.LVL203:
	.loc 1 121 9
	call	printf
.LVL204:
	.loc 1 120 5
	li	a4,32
	lui	a3,%hi(.LC22)
	bne	s10,a4,.L91
	.loc 1 123 5 is_stmt 1
	addi	a0,s7,%lo(.LC24)
	call	puts
.LVL205:
	.loc 1 124 5
	lui	a0,%hi(.LC46)
	addi	a0,a0,%lo(.LC46)
	call	puts
.LVL206:
	.loc 1 126 5
.LBE190:
.LBE191:
	.loc 1 320 6
	.loc 1 320 23 is_stmt 0
	lw	a4,24(sp)
	li	a5,1
	sw	a5,0(a4)
	.loc 1 321 6 is_stmt 1
	.loc 1 321 11
.LBB192:
.LBB193:
	.loc 2 151 5
.LBE193:
.LBE192:
	.loc 1 321 11 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L92
	.loc 1 321 138
	call	xTaskGetTickCountFromISR
.LVL207:
.L93:
	.loc 1 321 11
	lw	a5,28(sp)
	lui	a4,%hi(.LC3)
	lw	a3,0(s8)
	lw	a5,0(a5)
	addi	a4,a4,%lo(.LC3)
	bne	a5,zero,.L94
	lui	a4,%hi(.LC4)
	addi	a4,a4,%lo(.LC4)
.L94:
	mv	a1,a0
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC47)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC47)
	call	bl_printk
.LVL208:
	.loc 1 322 6 is_stmt 1
	.loc 1 322 27 is_stmt 0
	lw	s5,0(s5)
	.loc 1 322 8
	li	a5,512
	ble	s5,a5,.L88
.LBB194:
	.loc 1 323 7 is_stmt 1
.LVL209:
	.loc 1 324 7
	.loc 1 323 11 is_stmt 0
	addi	s5,s5,-512
.LVL210:
	.loc 1 324 54
	sub	s3,s3,s5
.LVL211:
	addi	s3,s3,8
	add	s3,s2,s3
	.loc 1 324 7
	lui	a0,%hi(.LANCHOR2)
	mv	a2,s5
	mv	a1,s3
	addi	a0,a0,%lo(.LANCHOR2)
	call	utils_sha256_update
.LVL212:
	.loc 1 325 7 is_stmt 1
	lui	s7,%hi(.LANCHOR11)
	addi	s7,s7,%lo(.LANCHOR11)
	lui	a5,%hi(.LANCHOR6)
	lw	a0,%lo(.LANCHOR6)(a5)
	lw	a1,0(s7)
	mv	a2,s5
	mv	a3,s3
	call	bl_mtd_write
.LVL213:
	.loc 1 326 7
	.loc 1 326 20 is_stmt 0
	lw	a5,0(s7)
	add	s5,a5,s5
.LVL214:
	sw	s5,0(s7)
.L88:
.LBE194:
	.loc 1 336 4 is_stmt 1
	.loc 1 336 16 is_stmt 0
	lw	a5,0(s9)
	.loc 1 340 7
	lbu	a4,2(s2)
	.loc 1 336 16
	addi	a5,a5,1
	sw	a5,0(s9)
	.loc 1 339 4 is_stmt 1
	.loc 1 339 9 is_stmt 0
	lw	a5,0(s11)
	sw	a5,76(sp)
	lw	a5,4(s11)
	sw	a5,80(sp)
	.loc 1 340 4 is_stmt 1
	.loc 1 340 7 is_stmt 0
	li	a5,9
	bne	a4,a5,.L98
	.loc 1 341 5 is_stmt 1
	.loc 1 341 13 is_stmt 0
	li	a5,10
	sb	a5,78(sp)
	.loc 1 342 5 is_stmt 1
	.loc 1 342 13 is_stmt 0
	li	a5,12
	sb	a5,81(sp)
	.loc 1 343 5 is_stmt 1
	j	.L98
.LVL215:
.L83:
	.loc 1 308 6
	mv	a2,s3
	j	.L118
.L85:
	.loc 1 311 143 is_stmt 0
	call	xTaskGetTickCount
.LVL216:
	j	.L86
.L89:
	.loc 1 314 136
	call	xTaskGetTickCount
.LVL217:
	j	.L90
.L92:
	.loc 1 321 167
	call	xTaskGetTickCount
.LVL218:
	j	.L93
.L82:
	.loc 1 330 5 is_stmt 1
	lui	a0,%hi(.LANCHOR2)
	mv	a2,s3
	mv	a1,a3
	addi	a0,a0,%lo(.LANCHOR2)
	sw	a3,24(sp)
	.loc 1 331 5 is_stmt 0
	lui	s7,%hi(.LANCHOR11)
	.loc 1 330 5
	call	utils_sha256_update
.LVL219:
	.loc 1 331 5 is_stmt 1
	addi	s5,s7,%lo(.LANCHOR11)
	lui	a5,%hi(.LANCHOR6)
	lw	a0,%lo(.LANCHOR6)(a5)
	lw	a3,24(sp)
	lw	a1,0(s5)
	mv	a2,s3
	addi	s7,s7,%lo(.LANCHOR11)
	call	bl_mtd_write
.LVL220:
	.loc 1 332 5
	.loc 1 332 17 is_stmt 0
	lw	a5,0(s5)
	add	s3,a5,s3
.LVL221:
	.loc 1 333 10
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 332 17
	sw	s3,0(s5)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 10
.LBB195:
.LBB196:
	.loc 2 151 5
.LBE196:
.LBE195:
	.loc 1 333 10 is_stmt 0
	beq	a5,zero,.L96
	.loc 1 333 124
	call	xTaskGetTickCountFromISR
.LVL222:
.L97:
	.loc 1 333 10
	lui	a5,%hi(.LANCHOR5)
	lw	a4,0(s7)
	lw	a3,%lo(.LANCHOR5)(a5)
	mv	a1,a0
	lui	a0,%hi(.LC48)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC48)
	call	bl_printk
.LVL223:
	j	.L88
.L96:
	.loc 1 333 153
	call	xTaskGetTickCount
.LVL224:
	j	.L97
.LVL225:
.L81:
.LBE248:
	.loc 1 350 4 is_stmt 1
	.loc 1 350 9
.LBB249:
.LBB250:
	.loc 2 151 5
.LBE250:
.LBE249:
	.loc 1 350 9 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L100
	.loc 1 350 136
	call	xTaskGetTickCountFromISR
.LVL226:
.L101:
	.loc 1 350 9
	mv	a1,a0
	lui	a3,%hi(.LC7)
	lui	a0,%hi(.LC49)
	li	a4,350
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC49)
	call	bl_printk
.LVL227:
	j	.L18
.L100:
	.loc 1 350 165
	call	xTaskGetTickCount
.LVL228:
	j	.L101
.L46:
	.loc 1 353 3 is_stmt 1
	.loc 1 353 8
.LBB251:
.LBB252:
	.loc 2 151 5
.LBE252:
.LBE251:
	.loc 1 353 8 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L102
	.loc 1 353 118
	call	xTaskGetTickCountFromISR
.LVL229:
.L103:
	.loc 1 353 8
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC50)
	li	a4,353
	addi	a3,a3,%lo(.LC7)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC50)
	j	.L119
.L102:
	.loc 1 353 147
	call	xTaskGetTickCount
.LVL230:
	j	.L103
.LVL231:
.L19:
.LBE257:
.LBE262:
.LBB263:
	.loc 1 414 5 is_stmt 1
	.loc 1 414 10
.LBB264:
.LBB265:
	.loc 2 151 5
.LBE265:
.LBE264:
	.loc 1 414 10 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L105
	.loc 1 414 109 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL232:
.L106:
	.loc 1 414 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC51)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC51)
	call	bl_printk
.LVL233:
	.loc 1 415 5 is_stmt 1 discriminator 4
	.loc 1 415 15 is_stmt 0 discriminator 4
	mv	a0,s6
	call	lwip_close
.LVL234:
	.loc 1 416 10 discriminator 4
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 415 15 discriminator 4
	mv	s3,a0
.LVL235:
	.loc 1 416 5 is_stmt 1 discriminator 4
	.loc 1 416 10 discriminator 4
.LBB266:
.LBB267:
	.loc 2 151 5 discriminator 4
.LBE267:
.LBE266:
	.loc 1 416 10 is_stmt 0 discriminator 4
	beq	a5,zero,.L107
	.loc 1 416 101 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL236:
.L108:
	.loc 1 416 10 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC52)
	mv	a3,s3
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC52)
	call	bl_printk
.LVL237:
	.loc 1 417 5 is_stmt 1 discriminator 4
.LBE263:
.LBE273:
	.loc 1 398 8 is_stmt 0 discriminator 4
	j	.L109
.LVL238:
.L105:
.LBB274:
.LBB268:
	.loc 1 414 138 discriminator 2
	call	xTaskGetTickCount
.LVL239:
	j	.L106
.LVL240:
.L107:
	.loc 1 416 130 discriminator 2
	call	xTaskGetTickCount
.LVL241:
	j	.L108
.LVL242:
.L15:
.LBE268:
.LBE274:
	.loc 1 422 2 is_stmt 1
	mv	a0,s2
.LVL243:
	call	free
.LVL244:
	.loc 1 423 2
	mv	a0,s4
	call	lwip_close
.LVL245:
	.loc 1 424 2
	li	a0,0
	call	vTaskDelete
.LVL246:
	.loc 1 425 2
	.loc 1 426 1 is_stmt 0
	lw	ra,172(sp)
	.cfi_restore 1
	lw	s0,168(sp)
	.cfi_restore 8
	.loc 1 425 18
	lui	a5,%hi(.LANCHOR12)
	sw	zero,%lo(.LANCHOR12)(a5)
	.loc 1 426 1
	lw	s1,164(sp)
	.cfi_restore 9
	lw	s2,160(sp)
	.cfi_restore 18
.LVL247:
	lw	s3,156(sp)
	.cfi_restore 19
	lw	s4,152(sp)
	.cfi_restore 20
.LVL248:
	lw	s5,148(sp)
	.cfi_restore 21
	lw	s6,144(sp)
	.cfi_restore 22
.LVL249:
	lw	s7,140(sp)
	.cfi_restore 23
	lw	s8,136(sp)
	.cfi_restore 24
	lw	s9,132(sp)
	.cfi_restore 25
	lw	s10,128(sp)
	.cfi_restore 26
	lw	s11,124(sp)
	.cfi_restore 27
	addi	sp,sp,176
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	ota_server_task, .-ota_server_task
	.section	.text.doit_ota_server_init,"ax",@progbits
	.align	1
	.globl	doit_ota_server_init
	.type	doit_ota_server_init, @function
doit_ota_server_init:
.LFB11:
	.loc 1 430 1 is_stmt 1
	.cfi_startproc
	.loc 1 431 2
	.loc 1 431 7
.LBB275:
.LBB276:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE276:
.LBE275:
	.loc 1 431 7
	lw	a4,%lo(TrapNetCounter)(a5)
	.loc 1 430 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s1,a5
	.loc 1 431 7
	beq	a4,zero,.L121
	.loc 1 431 106 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL250:
.L122:
	.loc 1 431 7 discriminator 4
	mv	a1,a0
	lui	s0,%hi(.LC5)
	lui	a0,%hi(.LC53)
	addi	a2,s0,%lo(.LC5)
	addi	a0,a0,%lo(.LC53)
	call	bl_printk
.LVL251:
	.loc 1 433 2 is_stmt 1 discriminator 4
	.loc 1 433 5 is_stmt 0 discriminator 4
	lui	a5,%hi(.LANCHOR12)
	.loc 1 433 4 discriminator 4
	lw	a4,%lo(.LANCHOR12)(a5)
	bne	a4,zero,.L120
	.loc 1 434 3 is_stmt 1
	.loc 1 434 7 is_stmt 0
	lui	a1,%hi(.LC54)
	lui	a0,%hi(ota_server_task)
	addi	a5,a5,%lo(.LANCHOR12)
	li	a4,10
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC54)
	addi	a0,a0,%lo(ota_server_task)
	call	xTaskCreate
.LVL252:
	.loc 1 434 6
	li	a5,1
	beq	a0,a5,.L120
	.loc 1 435 4 is_stmt 1
	.loc 1 435 9
.LBB277:
.LBB278:
	.loc 2 151 5
.LBE278:
.LBE277:
	.loc 1 435 9 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L126
	.loc 1 435 121 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL253:
.L127:
	.loc 1 435 9 discriminator 4
	addi	a2,s0,%lo(.LC5)
	.loc 1 438 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 435 9 discriminator 4
	lui	a3,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC55)
	.loc 1 438 1 discriminator 4
	.loc 1 435 9 discriminator 4
	li	a4,435
	addi	a3,a3,%lo(.LC7)
	addi	a0,a0,%lo(.LC55)
	.loc 1 438 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 435 9 discriminator 4
	tail	bl_printk
.LVL254:
.L121:
	.cfi_restore_state
	.loc 1 431 135 discriminator 2
	call	xTaskGetTickCount
.LVL255:
	j	.L122
.L126:
	.loc 1 435 150 discriminator 2
	call	xTaskGetTickCount
.LVL256:
	j	.L127
.L120:
	.loc 1 438 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	doit_ota_server_init, .-doit_ota_server_init
	.globl	ota_task_handle
	.globl	written_data
	.comm	sig_backup,32,4
	.section	.bss.ctx,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	ctx, @object
	.size	ctx, 108
ctx:
	.zero	108
	.section	.bss.ptEntry,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	ptEntry, @object
	.size	ptEntry, 36
ptEntry:
	.zero	36
	.section	.bss.sha256_result,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	sha256_result, @object
	.size	sha256_result, 32
sha256_result:
	.zero	32
	.section	.bss.written_data,"aw",@nobits
	.align	2
	.type	written_data, @object
	.size	written_data, 256
written_data:
	.zero	256
	.section	.rodata.doit_ota_server_init.str1.4,"aMS",@progbits,1
	.align	2
.LC53:
	.string	"\033[32m[%10u][%s] doit_ota_server_init.\033[0m\r\n"
.LC54:
	.string	"ota_server_task"
.LC55:
	.string	"\033[31m[%10u][%s %s:%4d] create ota_server_task fail\033[0m\r\n"
	.section	.rodata.ota_server_task.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"XZ"
	.zero	1
.LC4:
	.string	"RAW"
.LC5:
	.string	"ota"
.LC6:
	.string	"\033[32m[%10u][%s] ota server socket....,port=%d\033[0m\r\n"
.LC7:
	.string	"doit_ota.c"
	.zero	1
.LC8:
	.string	"\033[31m[%10u][%s %s:%4d] create_server error: %d\033[0m\r\n"
	.zero	3
.LC9:
	.string	"\033[31m[%10u][%s %s:%4d] bind_server error: %d\033[0m\r\n"
	.zero	1
.LC10:
	.string	"\033[31m[%10u][%s %s:%4d] listen_server error: %d\033[0m\r\n"
	.zero	3
.LC11:
	.string	"\033[32m[%10u][%s] start accept\n\033[0m\r\n"
.LC12:
	.string	"\033[32m[%10u][%s] new client connected %d\n\033[0m\r\n"
	.zero	1
.LC13:
	.string	"\033[32m[%10u][%s] error package len<9, len=%d\r\n\033[0m\r\n"
.LC14:
	.string	"\033[32m[%10u][%s] %02x \033[0m\r\n"
.LC15:
	.string	"\033[32m[%10u][%s] \r\n\033[0m\r\n"
	.zero	3
.LC16:
	.string	"\033[31m[%10u][%s %s:%4d] error package prefix, pkg[0]=%02x, pkg[1]=%02x, pkg[2]=%02x, pkg[3]=%02x, chksum=%02x, last=%02x, pkgLen=%d\r\n\033[0m\r\n"
	.zero	1
.LC17:
	.string	"\033[31m[%10u][%s %s:%4d] error package suffix\r\n\033[0m\r\n"
.LC18:
	.string	"\033[31m[%10u][%s %s:%4d] error sequence number:%d %d, buf:%d %d %d %d, reboot!\r\n\033[0m\r\n"
	.zero	3
.LC19:
	.string	"\033[32m[%10u][%s] skip cmd package, cmd=%d\r\n\033[0m\r\n"
	.zero	3
.LC20:
	.string	"\033[31m[%10u][%s %s:%4d] error OTA pkg size > 240, reboot\r\n\033[0m\r\n"
.LC21:
	.string	"\r\nCalculated SHA256 Checksum:"
	.zero	2
.LC22:
	.string	"%02X"
	.zero	3
.LC23:
	.string	"\r\nHeader SET SHA256 Checksum:"
	.zero	2
.LC24:
	.string	"\r\n"
	.zero	1
.LC25:
	.string	"\033[31m[%10u][%s %s:%4d] SHA256 NOT Correct\033[0m\r\n"
.LC26:
	.string	"\033[32m[%10u][%s] boot2_update ret: %d\033[0m\r\n"
	.zero	1
.LC27:
	.string	"\033[32m[%10u][%s] OTA complete\r\n\033[0m\r\n"
	.zero	3
.LC28:
	.string	"\033[32m[%10u][%s] --------->ota_start\033[0m\r\n"
	.zero	2
.LC29:
	.string	"FW"
	.zero	1
.LC30:
	.string	"\033[31m[%10u][%s %s:%4d] Open Default FW partition failed\033[0m\r\n"
	.zero	2
.LC31:
	.string	"\033[32m[%10u][%s] activeID is %u\033[0m\r\n"
	.zero	3
.LC32:
	.string	"\033[31m[%10u][%s %s:%4d] PtTable_Get_Active_Entries fail\033[0m\r\n"
	.zero	3
.LC33:
	.string	"\033[32m[%10u][%s] Starting OTA test. OTA size is %lu\r\n\033[0m\r\n"
	.zero	1
.LC34:
	.string	"\033[32m[%10u][%s] activeIndex is %u, use OTA address=%08x\r\n\033[0m\r\n"
.LC35:
	.string	"\033[32m[%10u][%s] Erase flash with size %lu...\033[0m\r\n"
	.zero	1
.LC36:
	.string	"\033[32m[%10u][%s] send slot info, len=%d\r\n\033[0m\r\n"
	.zero	1
.LC37:
	.string	"\033[32m[%10u][%s] header size = %d, ret = %d\033[0m\r\n"
	.zero	3
.LC38:
	.string	"\033[32m[%10u][%s] start check header\033[0m\r\n"
	.zero	3
.LC39:
	.string	"[OTA] [HEADER] ota header is "
	.zero	2
.LC40:
	.string	"[OTA] [HEADER] file type is "
	.zero	3
.LC41:
	.string	"[OTA] [HEADER] file length (exclude ota header) is %lu\r\n"
	.zero	3
.LC42:
	.string	"[OTA] [HEADER] ver_hardware is "
.LC43:
	.string	"[OTA] [HEADER] ver_software is "
.LC44:
	.string	"[OTA] [HEADER] sha256 len: %d\r\n"
.LC45:
	.string	"[OTA] [HEADER] sha256 is "
	.zero	2
.LC46:
	.string	"[OTA] [HEADER] OK!!!\r\n"
	.zero	1
.LC47:
	.string	"\033[32m[%10u][%s] check_ota_header ok bin_size: %lu, file status %s\033[0m\r\n"
.LC48:
	.string	"\033[32m[%10u][%s] bin ota_header_offset = %d, ret = %d\033[0m\r\n"
	.zero	1
.LC49:
	.string	"\033[31m[%10u][%s %s:%4d] unknown message! unknown package type!\r\n\033[0m\r\n"
	.zero	2
.LC50:
	.string	"\033[31m[%10u][%s %s:%4d] ~~> checksum failed!!\r\n\033[0m\r\n"
	.zero	3
.LC51:
	.string	"\033[32m[%10u][%s] client disconnected\n\033[0m\r\n"
	.zero	1
.LC52:
	.string	"\033[32m[%10u][%s] close res: %d\033[0m\r\n"
	.section	.sbss.flash_offset.4187,"aw",@nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	flash_offset.4187, @object
	.size	flash_offset.4187, 4
flash_offset.4187:
	.zero	4
	.section	.sbss.handle,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	handle, @object
	.size	handle, 4
handle:
	.zero	4
	.section	.sbss.ota_bin_size,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	ota_bin_size, @object
	.size	ota_bin_size, 4
ota_bin_size:
	.zero	4
	.section	.sbss.ota_header,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	ota_header, @object
	.size	ota_header, 4
ota_header:
	.zero	4
	.section	.sbss.ota_header_buffer,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	ota_header_buffer, @object
	.size	ota_header_buffer, 4
ota_header_buffer:
	.zero	4
	.section	.sbss.ota_header_found.4188,"aw",@nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	ota_header_found.4188, @object
	.size	ota_header_found.4188, 4
ota_header_found.4188:
	.zero	4
	.section	.sbss.ota_header_offset.4186,"aw",@nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	ota_header_offset.4186, @object
	.size	ota_header_offset.4186, 4
ota_header_offset.4186:
	.zero	4
	.section	.sbss.ota_task_handle,"aw",@nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	ota_task_handle, @object
	.size	ota_task_handle, 4
ota_task_handle:
	.zero	4
	.section	.sbss.sequence_num,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sequence_num, @object
	.size	sequence_num, 4
sequence_num:
	.zero	4
	.section	.sbss.use_xz,"aw",@nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	use_xz, @object
	.size	use_xz, 4
use_xz:
	.zero	4
	.section	.srodata,"a"
	.align	2
.LC2:
	.byte	-14
	.byte	-14
	.byte	8
	.byte	1
	.byte	1
	.byte	10
	.byte	126
	.byte	0
.LC0:
	.byte	-14
	.byte	-14
	.byte	32
	.byte	0
	.byte	32
	.byte	126
	.byte	0
	.zero	1
.LC1:
	.byte	-14
	.byte	-14
	.byte	7
	.byte	1
	.byte	1
	.byte	9
	.byte	126
	.byte	0
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/b-l/bl_iot_sdk/components/network/lwip/lwip-port/arch/cc.h"
	.file 10 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 11 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h"
	.file 12 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h"
	.file 13 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/mem.h"
	.file 14 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/priv/memp_priv.h"
	.file 15 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/stats.h"
	.file 16 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/memp.h"
	.file 17 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 18 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 19 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 20 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/pbuf.h"
	.file 21 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/netif.h"
	.file 22 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/inet.h"
	.file 23 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/errno.h"
	.file 24 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/sockets.h"
	.file 25 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/netdb.h"
	.file 26 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 27 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_boot2.h"
	.file 28 "/b-l/bl_iot_sdk/components/utils/include/utils_sha256.h"
	.file 29 "/b-l/bl_iot_sdk/components/sys/blmtd/include/bl_mtd.h"
	.file 30 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 31 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 32 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 33 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_system.h"
	.file 34 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 35 "/b-l/bl_iot_sdk/components/network/lwip/src/include/lwip/def.h"
	.file 36 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2dc2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF352
	.byte	0xc
	.4byte	.LASF353
	.4byte	.LASF354
	.4byte	.Ldebug_ranges0+0x148
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF2
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x25
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x2b
	.byte	0x17
	.4byte	0x53
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.byte	0x39
	.byte	0x1c
	.4byte	0x6d
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x80
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4f
	.byte	0x1b
	.4byte	0x93
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x80
	.byte	0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x80
	.byte	0x5
	.4byte	.LASF16
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x2c
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0xee
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x33
	.byte	0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xee
	.byte	0
	.byte	0x8
	.4byte	0x53
	.4byte	0xfe
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x122
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xfe
	.byte	0xc
	.byte	0x4
	.byte	0x5
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x93
	.byte	0x5
	.4byte	.LASF23
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x2c
	.byte	0x5
	.4byte	.LASF24
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x13c
	.byte	0xd
	.4byte	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1ae
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1ae
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x2c
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1b4
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x154
	.byte	0x8
	.4byte	0x130
	.4byte	0x1c4
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x247
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x2c
	.byte	0xc
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x2c
	.byte	0x14
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x2c
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x2c
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF40
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x28c
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x28c
	.byte	0
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x28c
	.byte	0x80
	.byte	0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x130
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF44
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x130
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x12e
	.4byte	0x29c
	.byte	0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF45
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2df
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2df
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2e5
	.byte	0x8
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x247
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x29c
	.byte	0x8
	.4byte	0x2f5
	.4byte	0x2f5
	.byte	0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2fb
	.byte	0x12
	.byte	0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x324
	.byte	0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x324
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x53
	.byte	0xd
	.4byte	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x46d
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x324
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x2c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x5a
	.byte	0xc
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x5a
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x2fc
	.byte	0x10
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x2c
	.byte	0x18
	.byte	0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x12e
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x5f1
	.byte	0x20
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x61b
	.byte	0x24
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x63f
	.byte	0x28
	.byte	0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x659
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x2fc
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x324
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x65f
	.byte	0x40
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x66f
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x2fc
	.byte	0x44
	.byte	0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x2c
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xa8
	.byte	0x50
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x48b
	.byte	0x54
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x148
	.byte	0x58
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x122
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x2c
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xc0
	.4byte	0x48b
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0x5df
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x496
	.byte	0x15
	.4byte	0x48b
	.byte	0x16
	.4byte	.LASF68
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5df
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6cb
	.byte	0x4
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6cb
	.byte	0x8
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6cb
	.byte	0xc
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x2c
	.byte	0x10
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8cb
	.byte	0x14
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x2c
	.byte	0x30
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8e0
	.byte	0x34
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8f1
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1ae
	.byte	0x40
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x2c
	.byte	0x44
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1ae
	.byte	0x48
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8f7
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x2c
	.byte	0x50
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5df
	.byte	0x54
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8a6
	.byte	0x58
	.byte	0x18
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2df
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x29c
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x908
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x68c
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x914
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF90
	.byte	0x15
	.4byte	0x5e5
	.byte	0xf
	.byte	0x4
	.4byte	0x46d
	.byte	0x13
	.4byte	0xc0
	.4byte	0x615
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0x615
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5ec
	.byte	0xf
	.byte	0x4
	.4byte	0x5f7
	.byte	0x13
	.4byte	0xb4
	.4byte	0x63f
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0x14
	.4byte	0xb4
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x621
	.byte	0x13
	.4byte	0x2c
	.4byte	0x659
	.byte	0x14
	.4byte	0x48b
	.byte	0x14
	.4byte	0x12e
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x645
	.byte	0x8
	.4byte	0x53
	.4byte	0x66f
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x53
	.4byte	0x67f
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x32a
	.byte	0x19
	.4byte	.LASF92
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6c5
	.byte	0x17
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6c5
	.byte	0
	.byte	0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x2c
	.byte	0x4
	.byte	0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6cb
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x68c
	.byte	0xf
	.byte	0x4
	.4byte	0x67f
	.byte	0x19
	.4byte	.LASF95
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x70a
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x70a
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x70a
	.byte	0x6
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x6d
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x6d
	.4byte	0x71a
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x82f
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5df
	.byte	0x4
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x82f
	.byte	0x8
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1c4
	.byte	0x24
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x2c
	.byte	0x48
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0xa1
	.byte	0x50
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6d1
	.byte	0x58
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x122
	.byte	0x68
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x122
	.byte	0x70
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x122
	.byte	0x78
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x83f
	.byte	0x80
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x84f
	.byte	0x88
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x2c
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x122
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x122
	.byte	0xac
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x122
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x122
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x122
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x2c
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x83f
	.byte	0x9
	.4byte	0x25
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x84f
	.byte	0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x85f
	.byte	0x9
	.4byte	0x25
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x886
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x886
	.byte	0
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x896
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x324
	.4byte	0x896
	.byte	0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x25
	.4byte	0x8a6
	.byte	0x9
	.4byte	0x25
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8cb
	.byte	0x1c
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x71a
	.byte	0x1c
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x85f
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x8db
	.byte	0x9
	.4byte	0x25
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF255
	.byte	0xf
	.byte	0x4
	.4byte	0x8db
	.byte	0x1e
	.4byte	0x8f1
	.byte	0x14
	.4byte	0x48b
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8e6
	.byte	0xf
	.byte	0x4
	.4byte	0x1ae
	.byte	0x1e
	.4byte	0x908
	.byte	0x14
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x90e
	.byte	0xf
	.byte	0x4
	.4byte	0x8fd
	.byte	0x8
	.4byte	0x67f
	.4byte	0x924
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x48b
	.byte	0x1f
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x491
	.byte	0x20
	.4byte	.LASF123
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x5df
	.byte	0x5
	.4byte	.LASF124
	.byte	0x9
	.byte	0x25
	.byte	0x17
	.4byte	0x53
	.byte	0x5
	.4byte	.LASF125
	.byte	0x9
	.byte	0x26
	.byte	0x15
	.4byte	0x40
	.byte	0x5
	.4byte	.LASF126
	.byte	0x9
	.byte	0x27
	.byte	0x18
	.4byte	0x6d
	.byte	0x5
	.4byte	.LASF127
	.byte	0x9
	.byte	0x29
	.byte	0x17
	.4byte	0x93
	.byte	0x5
	.4byte	.LASF128
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.4byte	0x47
	.byte	0x5
	.4byte	.LASF129
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x74
	.byte	0x5
	.4byte	.LASF130
	.byte	0xa
	.byte	0x30
	.byte	0x14
	.4byte	0x87
	.byte	0x5
	.4byte	.LASF131
	.byte	0xb
	.byte	0x37
	.byte	0x14
	.4byte	0x87
	.byte	0x5
	.4byte	.LASF132
	.byte	0xb
	.byte	0x3c
	.byte	0x14
	.4byte	0x61
	.byte	0x8
	.4byte	0x5ec
	.4byte	0x9c1
	.byte	0x21
	.byte	0
	.byte	0x15
	.4byte	0x9b6
	.byte	0x20
	.4byte	.LASF133
	.byte	0xc
	.byte	0xae
	.byte	0x13
	.4byte	0x9c1
	.byte	0x5
	.4byte	.LASF134
	.byte	0xd
	.byte	0x43
	.byte	0xf
	.4byte	0x962
	.byte	0x22
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x10
	.byte	0x34
	.byte	0xe
	.4byte	0xa41
	.byte	0x23
	.4byte	.LASF135
	.byte	0
	.byte	0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x23
	.4byte	.LASF137
	.byte	0x2
	.byte	0x23
	.4byte	.LASF138
	.byte	0x3
	.byte	0x23
	.4byte	.LASF139
	.byte	0x4
	.byte	0x23
	.4byte	.LASF140
	.byte	0x5
	.byte	0x23
	.4byte	.LASF141
	.byte	0x6
	.byte	0x23
	.4byte	.LASF142
	.byte	0x7
	.byte	0x23
	.4byte	.LASF143
	.byte	0x8
	.byte	0x23
	.4byte	.LASF144
	.byte	0x9
	.byte	0x23
	.4byte	.LASF145
	.byte	0xa
	.byte	0x23
	.4byte	.LASF146
	.byte	0xb
	.byte	0x23
	.4byte	.LASF147
	.byte	0xc
	.byte	0x23
	.4byte	.LASF148
	.byte	0xd
	.byte	0
	.byte	0xd
	.4byte	.LASF149
	.byte	0x4
	.byte	0xe
	.byte	0x45
	.byte	0x8
	.4byte	0xa5c
	.byte	0xb
	.4byte	.LASF150
	.byte	0xe
	.byte	0x46
	.byte	0x10
	.4byte	0xa5c
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa41
	.byte	0xd
	.4byte	.LASF151
	.byte	0x10
	.byte	0xe
	.byte	0x6c
	.byte	0x8
	.4byte	0xab1
	.byte	0xb
	.4byte	.LASF152
	.byte	0xe
	.byte	0x73
	.byte	0x15
	.4byte	0xb05
	.byte	0
	.byte	0xb
	.4byte	.LASF153
	.byte	0xe
	.byte	0x77
	.byte	0x9
	.4byte	0x962
	.byte	0x4
	.byte	0xe
	.string	"num"
	.byte	0xe
	.byte	0x7b
	.byte	0x9
	.4byte	0x962
	.byte	0x6
	.byte	0xb
	.4byte	.LASF154
	.byte	0xe
	.byte	0x7e
	.byte	0x9
	.4byte	0xb0b
	.byte	0x8
	.byte	0xe
	.string	"tab"
	.byte	0xe
	.byte	0x81
	.byte	0x11
	.4byte	0xb11
	.byte	0xc
	.byte	0
	.byte	0x15
	.4byte	0xa62
	.byte	0xd
	.4byte	.LASF155
	.byte	0xa
	.byte	0xf
	.byte	0x62
	.byte	0x8
	.4byte	0xb05
	.byte	0xe
	.string	"err"
	.byte	0xf
	.byte	0x66
	.byte	0x9
	.4byte	0x962
	.byte	0
	.byte	0xb
	.4byte	.LASF156
	.byte	0xf
	.byte	0x67
	.byte	0xe
	.4byte	0x9d2
	.byte	0x2
	.byte	0xb
	.4byte	.LASF157
	.byte	0xf
	.byte	0x68
	.byte	0xe
	.4byte	0x9d2
	.byte	0x4
	.byte	0xe
	.string	"max"
	.byte	0xf
	.byte	0x69
	.byte	0xe
	.4byte	0x9d2
	.byte	0x6
	.byte	0xb
	.4byte	.LASF158
	.byte	0xf
	.byte	0x6a
	.byte	0x9
	.4byte	0x962
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xab6
	.byte	0xf
	.byte	0x4
	.4byte	0x94a
	.byte	0xf
	.byte	0x4
	.4byte	0xa5c
	.byte	0xd
	.4byte	.LASF159
	.byte	0x18
	.byte	0xf
	.byte	0x40
	.byte	0x8
	.4byte	0xbc0
	.byte	0xb
	.4byte	.LASF160
	.byte	0xf
	.byte	0x41
	.byte	0x9
	.4byte	0x962
	.byte	0
	.byte	0xb
	.4byte	.LASF161
	.byte	0xf
	.byte	0x42
	.byte	0x9
	.4byte	0x962
	.byte	0x2
	.byte	0xe
	.string	"fw"
	.byte	0xf
	.byte	0x43
	.byte	0x9
	.4byte	0x962
	.byte	0x4
	.byte	0xb
	.4byte	.LASF162
	.byte	0xf
	.byte	0x44
	.byte	0x9
	.4byte	0x962
	.byte	0x6
	.byte	0xb
	.4byte	.LASF163
	.byte	0xf
	.byte	0x45
	.byte	0x9
	.4byte	0x962
	.byte	0x8
	.byte	0xb
	.4byte	.LASF164
	.byte	0xf
	.byte	0x46
	.byte	0x9
	.4byte	0x962
	.byte	0xa
	.byte	0xb
	.4byte	.LASF165
	.byte	0xf
	.byte	0x47
	.byte	0x9
	.4byte	0x962
	.byte	0xc
	.byte	0xb
	.4byte	.LASF166
	.byte	0xf
	.byte	0x48
	.byte	0x9
	.4byte	0x962
	.byte	0xe
	.byte	0xb
	.4byte	.LASF167
	.byte	0xf
	.byte	0x49
	.byte	0x9
	.4byte	0x962
	.byte	0x10
	.byte	0xb
	.4byte	.LASF168
	.byte	0xf
	.byte	0x4a
	.byte	0x9
	.4byte	0x962
	.byte	0x12
	.byte	0xe
	.string	"err"
	.byte	0xf
	.byte	0x4b
	.byte	0x9
	.4byte	0x962
	.byte	0x14
	.byte	0xb
	.4byte	.LASF169
	.byte	0xf
	.byte	0x4c
	.byte	0x9
	.4byte	0x962
	.byte	0x16
	.byte	0
	.byte	0xd
	.4byte	.LASF170
	.byte	0x1c
	.byte	0xf
	.byte	0x50
	.byte	0x8
	.4byte	0xc84
	.byte	0xb
	.4byte	.LASF160
	.byte	0xf
	.byte	0x51
	.byte	0x9
	.4byte	0x962
	.byte	0
	.byte	0xb
	.4byte	.LASF161
	.byte	0xf
	.byte	0x52
	.byte	0x9
	.4byte	0x962
	.byte	0x2
	.byte	0xb
	.4byte	.LASF162
	.byte	0xf
	.byte	0x53
	.byte	0x9
	.4byte	0x962
	.byte	0x4
	.byte	0xb
	.4byte	.LASF163
	.byte	0xf
	.byte	0x54
	.byte	0x9
	.4byte	0x962
	.byte	0x6
	.byte	0xb
	.4byte	.LASF164
	.byte	0xf
	.byte	0x55
	.byte	0x9
	.4byte	0x962
	.byte	0x8
	.byte	0xb
	.4byte	.LASF165
	.byte	0xf
	.byte	0x56
	.byte	0x9
	.4byte	0x962
	.byte	0xa
	.byte	0xb
	.4byte	.LASF167
	.byte	0xf
	.byte	0x57
	.byte	0x9
	.4byte	0x962
	.byte	0xc
	.byte	0xb
	.4byte	.LASF171
	.byte	0xf
	.byte	0x58
	.byte	0x9
	.4byte	0x962
	.byte	0xe
	.byte	0xb
	.4byte	.LASF172
	.byte	0xf
	.byte	0x59
	.byte	0x9
	.4byte	0x962
	.byte	0x10
	.byte	0xb
	.4byte	.LASF173
	.byte	0xf
	.byte	0x5a
	.byte	0x9
	.4byte	0x962
	.byte	0x12
	.byte	0xb
	.4byte	.LASF174
	.byte	0xf
	.byte	0x5b
	.byte	0x9
	.4byte	0x962
	.byte	0x14
	.byte	0xb
	.4byte	.LASF175
	.byte	0xf
	.byte	0x5c
	.byte	0x9
	.4byte	0x962
	.byte	0x16
	.byte	0xb
	.4byte	.LASF176
	.byte	0xf
	.byte	0x5d
	.byte	0x9
	.4byte	0x962
	.byte	0x18
	.byte	0xb
	.4byte	.LASF177
	.byte	0xf
	.byte	0x5e
	.byte	0x9
	.4byte	0x962
	.byte	0x1a
	.byte	0
	.byte	0xd
	.4byte	.LASF178
	.byte	0x6
	.byte	0xf
	.byte	0x6e
	.byte	0x8
	.4byte	0xcb9
	.byte	0xb
	.4byte	.LASF157
	.byte	0xf
	.byte	0x6f
	.byte	0x9
	.4byte	0x962
	.byte	0
	.byte	0xe
	.string	"max"
	.byte	0xf
	.byte	0x70
	.byte	0x9
	.4byte	0x962
	.byte	0x2
	.byte	0xe
	.string	"err"
	.byte	0xf
	.byte	0x71
	.byte	0x9
	.4byte	0x962
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	.LASF179
	.byte	0x12
	.byte	0xf
	.byte	0x75
	.byte	0x8
	.4byte	0xcee
	.byte	0xe
	.string	"sem"
	.byte	0xf
	.byte	0x76
	.byte	0x18
	.4byte	0xc84
	.byte	0
	.byte	0xb
	.4byte	.LASF180
	.byte	0xf
	.byte	0x77
	.byte	0x18
	.4byte	0xc84
	.byte	0x6
	.byte	0xb
	.4byte	.LASF181
	.byte	0xf
	.byte	0x78
	.byte	0x18
	.4byte	0xc84
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	.LASF182
	.2byte	0x100
	.byte	0xf
	.byte	0xe8
	.byte	0x8
	.4byte	0xd83
	.byte	0xb
	.4byte	.LASF183
	.byte	0xf
	.byte	0xeb
	.byte	0x16
	.4byte	0xb17
	.byte	0
	.byte	0xb
	.4byte	.LASF184
	.byte	0xf
	.byte	0xef
	.byte	0x16
	.4byte	0xb17
	.byte	0x18
	.byte	0xe
	.string	"ip"
	.byte	0xf
	.byte	0xf7
	.byte	0x16
	.4byte	0xb17
	.byte	0x30
	.byte	0xb
	.4byte	.LASF185
	.byte	0xf
	.byte	0xfb
	.byte	0x16
	.4byte	0xb17
	.byte	0x48
	.byte	0xb
	.4byte	.LASF186
	.byte	0xf
	.byte	0xff
	.byte	0x15
	.4byte	0xbc0
	.byte	0x60
	.byte	0x24
	.string	"udp"
	.byte	0xf
	.2byte	0x103
	.byte	0x16
	.4byte	0xb17
	.byte	0x7c
	.byte	0x24
	.string	"tcp"
	.byte	0xf
	.2byte	0x107
	.byte	0x16
	.4byte	0xb17
	.byte	0x94
	.byte	0x24
	.string	"mem"
	.byte	0xf
	.2byte	0x10b
	.byte	0x14
	.4byte	0xab6
	.byte	0xac
	.byte	0x17
	.4byte	.LASF149
	.byte	0xf
	.2byte	0x10f
	.byte	0x15
	.4byte	0xd83
	.byte	0xb8
	.byte	0x24
	.string	"sys"
	.byte	0xf
	.2byte	0x113
	.byte	0x14
	.4byte	0xcb9
	.byte	0xec
	.byte	0
	.byte	0x8
	.4byte	0xb05
	.4byte	0xd93
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x1f
	.4byte	.LASF187
	.byte	0xf
	.2byte	0x130
	.byte	0x16
	.4byte	0xcee
	.byte	0x8
	.4byte	0xdbb
	.4byte	0xdb0
	.byte	0x9
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x15
	.4byte	0xda0
	.byte	0xf
	.byte	0x4
	.4byte	0xab1
	.byte	0x15
	.4byte	0xdb5
	.byte	0x20
	.4byte	.LASF188
	.byte	0x10
	.byte	0x3d
	.byte	0x26
	.4byte	0xdb0
	.byte	0xd
	.4byte	.LASF189
	.byte	0x4
	.byte	0x11
	.byte	0x33
	.byte	0x8
	.4byte	0xde7
	.byte	0xb
	.4byte	.LASF190
	.byte	0x11
	.byte	0x34
	.byte	0x9
	.4byte	0x96e
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF191
	.byte	0x11
	.byte	0x39
	.byte	0x19
	.4byte	0xdcc
	.byte	0x15
	.4byte	0xde7
	.byte	0x4
	.4byte	.LASF192
	.byte	0x12
	.2byte	0x10e
	.byte	0x14
	.4byte	0xde7
	.byte	0x15
	.4byte	0xdf8
	.byte	0x1f
	.4byte	.LASF193
	.byte	0x12
	.2byte	0x171
	.byte	0x18
	.4byte	0xe05
	.byte	0x1f
	.4byte	.LASF194
	.byte	0x12
	.2byte	0x172
	.byte	0x18
	.4byte	0xe05
	.byte	0x5
	.4byte	.LASF195
	.byte	0x13
	.byte	0x60
	.byte	0xe
	.4byte	0x956
	.byte	0xd
	.4byte	.LASF196
	.byte	0x10
	.byte	0x14
	.byte	0xba
	.byte	0x8
	.4byte	0xea6
	.byte	0xb
	.4byte	.LASF150
	.byte	0x14
	.byte	0xbc
	.byte	0x10
	.4byte	0xea6
	.byte	0
	.byte	0xb
	.4byte	.LASF197
	.byte	0x14
	.byte	0xbf
	.byte	0x9
	.4byte	0x12e
	.byte	0x4
	.byte	0xb
	.4byte	.LASF198
	.byte	0x14
	.byte	0xc8
	.byte	0x9
	.4byte	0x962
	.byte	0x8
	.byte	0xe
	.string	"len"
	.byte	0x14
	.byte	0xcb
	.byte	0x9
	.4byte	0x962
	.byte	0xa
	.byte	0xb
	.4byte	.LASF199
	.byte	0x14
	.byte	0xd0
	.byte	0x8
	.4byte	0x94a
	.byte	0xc
	.byte	0xb
	.4byte	.LASF200
	.byte	0x14
	.byte	0xd3
	.byte	0x8
	.4byte	0x94a
	.byte	0xd
	.byte	0xe
	.string	"ref"
	.byte	0x14
	.byte	0xda
	.byte	0x8
	.4byte	0x94a
	.byte	0xe
	.byte	0xb
	.4byte	.LASF201
	.byte	0x14
	.byte	0xdd
	.byte	0x8
	.4byte	0x94a
	.byte	0xf
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xe30
	.byte	0x25
	.4byte	.LASF205
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x15
	.byte	0x71
	.byte	0x6
	.4byte	0xed1
	.byte	0x23
	.4byte	.LASF202
	.byte	0
	.byte	0x23
	.4byte	.LASF203
	.byte	0x1
	.byte	0x23
	.4byte	.LASF204
	.byte	0x2
	.byte	0
	.byte	0x25
	.4byte	.LASF206
	.byte	0x7
	.byte	0x1
	.4byte	0x53
	.byte	0x15
	.byte	0x9c
	.byte	0x6
	.4byte	0xef0
	.byte	0x23
	.4byte	.LASF207
	.byte	0
	.byte	0x23
	.4byte	.LASF208
	.byte	0x1
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xef6
	.byte	0x19
	.4byte	.LASF209
	.byte	0x4c
	.byte	0x15
	.2byte	0x104
	.byte	0x8
	.4byte	0x101c
	.byte	0x17
	.4byte	.LASF150
	.byte	0x15
	.2byte	0x107
	.byte	0x11
	.4byte	0xef0
	.byte	0
	.byte	0x17
	.4byte	.LASF210
	.byte	0x15
	.2byte	0x10c
	.byte	0xd
	.4byte	0xdf8
	.byte	0x4
	.byte	0x17
	.4byte	.LASF211
	.byte	0x15
	.2byte	0x10d
	.byte	0xd
	.4byte	0xdf8
	.byte	0x8
	.byte	0x24
	.string	"gw"
	.byte	0x15
	.2byte	0x10e
	.byte	0xd
	.4byte	0xdf8
	.byte	0xc
	.byte	0x17
	.4byte	.LASF212
	.byte	0x15
	.2byte	0x120
	.byte	0x12
	.4byte	0x101c
	.byte	0x10
	.byte	0x17
	.4byte	.LASF213
	.byte	0x15
	.2byte	0x126
	.byte	0x13
	.4byte	0x1042
	.byte	0x14
	.byte	0x17
	.4byte	.LASF214
	.byte	0x15
	.2byte	0x12b
	.byte	0x17
	.4byte	0x1073
	.byte	0x18
	.byte	0x17
	.4byte	.LASF215
	.byte	0x15
	.2byte	0x136
	.byte	0x1c
	.4byte	0x1099
	.byte	0x1c
	.byte	0x17
	.4byte	.LASF216
	.byte	0x15
	.2byte	0x13b
	.byte	0x1c
	.4byte	0x1099
	.byte	0x20
	.byte	0x17
	.4byte	.LASF217
	.byte	0x15
	.2byte	0x143
	.byte	0x9
	.4byte	0x12e
	.byte	0x24
	.byte	0x17
	.4byte	.LASF218
	.byte	0x15
	.2byte	0x145
	.byte	0x9
	.4byte	0x10e1
	.byte	0x28
	.byte	0x17
	.4byte	.LASF219
	.byte	0x15
	.2byte	0x149
	.byte	0xf
	.4byte	0x615
	.byte	0x34
	.byte	0x24
	.string	"mtu"
	.byte	0x15
	.2byte	0x14f
	.byte	0x9
	.4byte	0x962
	.byte	0x38
	.byte	0x17
	.4byte	.LASF220
	.byte	0x15
	.2byte	0x155
	.byte	0x8
	.4byte	0x10f1
	.byte	0x3a
	.byte	0x17
	.4byte	.LASF221
	.byte	0x15
	.2byte	0x157
	.byte	0x8
	.4byte	0x94a
	.byte	0x40
	.byte	0x17
	.4byte	.LASF200
	.byte	0x15
	.2byte	0x159
	.byte	0x8
	.4byte	0x94a
	.byte	0x41
	.byte	0x17
	.4byte	.LASF222
	.byte	0x15
	.2byte	0x15b
	.byte	0x8
	.4byte	0x1101
	.byte	0x42
	.byte	0x24
	.string	"num"
	.byte	0x15
	.2byte	0x15e
	.byte	0x8
	.4byte	0x94a
	.byte	0x44
	.byte	0x17
	.4byte	.LASF223
	.byte	0x15
	.2byte	0x165
	.byte	0x8
	.4byte	0x94a
	.byte	0x45
	.byte	0x17
	.4byte	.LASF224
	.byte	0x15
	.2byte	0x174
	.byte	0x1c
	.4byte	0x10b6
	.byte	0x48
	.byte	0
	.byte	0x5
	.4byte	.LASF225
	.byte	0x15
	.byte	0xb2
	.byte	0x11
	.4byte	0x1028
	.byte	0xf
	.byte	0x4
	.4byte	0x102e
	.byte	0x13
	.4byte	0xe24
	.4byte	0x1042
	.byte	0x14
	.4byte	0xea6
	.byte	0x14
	.4byte	0xef0
	.byte	0
	.byte	0x5
	.4byte	.LASF226
	.byte	0x15
	.byte	0xbd
	.byte	0x11
	.4byte	0x104e
	.byte	0xf
	.byte	0x4
	.4byte	0x1054
	.byte	0x13
	.4byte	0xe24
	.4byte	0x106d
	.byte	0x14
	.4byte	0xef0
	.byte	0x14
	.4byte	0xea6
	.byte	0x14
	.4byte	0x106d
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xdf3
	.byte	0x5
	.4byte	.LASF227
	.byte	0x15
	.byte	0xd4
	.byte	0x11
	.4byte	0x107f
	.byte	0xf
	.byte	0x4
	.4byte	0x1085
	.byte	0x13
	.4byte	0xe24
	.4byte	0x1099
	.byte	0x14
	.4byte	0xef0
	.byte	0x14
	.4byte	0xea6
	.byte	0
	.byte	0x5
	.4byte	.LASF228
	.byte	0x15
	.byte	0xd6
	.byte	0x10
	.4byte	0x10a5
	.byte	0xf
	.byte	0x4
	.4byte	0x10ab
	.byte	0x1e
	.4byte	0x10b6
	.byte	0x14
	.4byte	0xef0
	.byte	0
	.byte	0x5
	.4byte	.LASF229
	.byte	0x15
	.byte	0xd9
	.byte	0x11
	.4byte	0x10c2
	.byte	0xf
	.byte	0x4
	.4byte	0x10c8
	.byte	0x13
	.4byte	0xe24
	.4byte	0x10e1
	.byte	0x14
	.4byte	0xef0
	.byte	0x14
	.4byte	0x106d
	.byte	0x14
	.4byte	0xed1
	.byte	0
	.byte	0x8
	.4byte	0x12e
	.4byte	0x10f1
	.byte	0x9
	.4byte	0x25
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x94a
	.4byte	0x1101
	.byte	0x9
	.4byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x1111
	.byte	0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0x1f
	.4byte	.LASF230
	.byte	0x15
	.2byte	0x195
	.byte	0x16
	.4byte	0xef0
	.byte	0x1f
	.4byte	.LASF231
	.byte	0x15
	.2byte	0x199
	.byte	0x16
	.4byte	0xef0
	.byte	0xd
	.4byte	.LASF232
	.byte	0x4
	.byte	0x16
	.byte	0x3a
	.byte	0x8
	.4byte	0x1146
	.byte	0xb
	.4byte	.LASF233
	.byte	0x16
	.byte	0x3b
	.byte	0xd
	.4byte	0x99e
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x10
	.byte	0x16
	.byte	0x3f
	.byte	0x3
	.4byte	0x1168
	.byte	0x7
	.4byte	.LASF234
	.byte	0x16
	.byte	0x40
	.byte	0xb
	.4byte	0x1168
	.byte	0x7
	.4byte	.LASF235
	.byte	0x16
	.byte	0x41
	.byte	0xa
	.4byte	0x1178
	.byte	0
	.byte	0x8
	.4byte	0x96e
	.4byte	0x1178
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0x94a
	.4byte	0x1188
	.byte	0x9
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0xd
	.4byte	.LASF236
	.byte	0x10
	.byte	0x16
	.byte	0x3e
	.byte	0x8
	.4byte	0x11a2
	.byte	0xe
	.string	"un"
	.byte	0x16
	.byte	0x42
	.byte	0x5
	.4byte	0x1146
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0x1188
	.byte	0x20
	.4byte	.LASF237
	.byte	0x16
	.byte	0x56
	.byte	0x1e
	.4byte	0x11a2
	.byte	0x20
	.4byte	.LASF238
	.byte	0x17
	.byte	0xb1
	.byte	0xc
	.4byte	0x2c
	.byte	0x5
	.4byte	.LASF239
	.byte	0x18
	.byte	0x3d
	.byte	0xe
	.4byte	0x94a
	.byte	0xd
	.4byte	.LASF240
	.byte	0x10
	.byte	0x18
	.byte	0x47
	.byte	0x8
	.4byte	0x121a
	.byte	0xb
	.4byte	.LASF241
	.byte	0x18
	.byte	0x48
	.byte	0x8
	.4byte	0x94a
	.byte	0
	.byte	0xb
	.4byte	.LASF242
	.byte	0x18
	.byte	0x49
	.byte	0xf
	.4byte	0x11bf
	.byte	0x1
	.byte	0xb
	.4byte	.LASF243
	.byte	0x18
	.byte	0x4a
	.byte	0xd
	.4byte	0x9aa
	.byte	0x2
	.byte	0xb
	.4byte	.LASF244
	.byte	0x18
	.byte	0x4b
	.byte	0x12
	.4byte	0x112b
	.byte	0x4
	.byte	0xb
	.4byte	.LASF245
	.byte	0x18
	.byte	0x4d
	.byte	0x8
	.4byte	0x83f
	.byte	0x8
	.byte	0
	.byte	0xd
	.4byte	.LASF246
	.byte	0x10
	.byte	0x18
	.byte	0x5c
	.byte	0x8
	.4byte	0x124f
	.byte	0xb
	.4byte	.LASF247
	.byte	0x18
	.byte	0x5d
	.byte	0x8
	.4byte	0x94a
	.byte	0
	.byte	0xb
	.4byte	.LASF248
	.byte	0x18
	.byte	0x5e
	.byte	0xf
	.4byte	0x11bf
	.byte	0x1
	.byte	0xb
	.4byte	.LASF249
	.byte	0x18
	.byte	0x5f
	.byte	0x8
	.4byte	0x124f
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x125f
	.byte	0x9
	.4byte	0x25
	.byte	0xd
	.byte	0
	.byte	0x5
	.4byte	.LASF250
	.byte	0x18
	.byte	0x6f
	.byte	0xf
	.4byte	0x96e
	.byte	0x20
	.4byte	.LASF251
	.byte	0x19
	.byte	0x77
	.byte	0xc
	.4byte	0x2c
	.byte	0x5
	.4byte	.LASF252
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x986
	.byte	0x20
	.4byte	.LASF253
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x1277
	.byte	0xf
	.byte	0x4
	.4byte	0x97a
	.byte	0x8
	.4byte	0x97a
	.4byte	0x12a5
	.byte	0x9
	.4byte	0x25
	.byte	0xf
	.byte	0
	.byte	0x5
	.4byte	.LASF254
	.byte	0x1a
	.byte	0x46
	.byte	0x25
	.4byte	0x12b1
	.byte	0xf
	.byte	0x4
	.4byte	0x12b7
	.byte	0x1d
	.4byte	.LASF256
	.byte	0xa
	.byte	0x24
	.byte	0x1b
	.byte	0x26
	.byte	0x9
	.4byte	0x132e
	.byte	0xb
	.4byte	.LASF257
	.byte	0x1b
	.byte	0x27
	.byte	0xd
	.4byte	0x97a
	.byte	0
	.byte	0xb
	.4byte	.LASF258
	.byte	0x1b
	.byte	0x28
	.byte	0xd
	.4byte	0x97a
	.byte	0x1
	.byte	0xb
	.4byte	.LASF259
	.byte	0x1b
	.byte	0x29
	.byte	0xd
	.4byte	0x97a
	.byte	0x2
	.byte	0xb
	.4byte	.LASF222
	.byte	0x1b
	.byte	0x2a
	.byte	0xd
	.4byte	0x132e
	.byte	0x3
	.byte	0xb
	.4byte	.LASF260
	.byte	0x1b
	.byte	0x2b
	.byte	0xe
	.4byte	0x133e
	.byte	0xc
	.byte	0xb
	.4byte	.LASF261
	.byte	0x1b
	.byte	0x2c
	.byte	0xe
	.4byte	0x133e
	.byte	0x14
	.byte	0xe
	.string	"len"
	.byte	0x1b
	.byte	0x2d
	.byte	0xe
	.4byte	0x992
	.byte	0x1c
	.byte	0xe
	.string	"age"
	.byte	0x1b
	.byte	0x2e
	.byte	0xe
	.4byte	0x992
	.byte	0x20
	.byte	0
	.byte	0x8
	.4byte	0x97a
	.4byte	0x133e
	.byte	0x9
	.4byte	0x25
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0x992
	.4byte	0x134e
	.byte	0x9
	.4byte	0x25
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF262
	.byte	0x1b
	.byte	0x2f
	.byte	0x3
	.4byte	0x12bc
	.byte	0xa
	.byte	0x6c
	.byte	0x1c
	.byte	0x2f
	.byte	0x9
	.4byte	0x1398
	.byte	0xb
	.4byte	.LASF263
	.byte	0x1c
	.byte	0x30
	.byte	0xe
	.4byte	0x133e
	.byte	0
	.byte	0xb
	.4byte	.LASF217
	.byte	0x1c
	.byte	0x31
	.byte	0xe
	.4byte	0x1398
	.byte	0x8
	.byte	0xb
	.4byte	.LASF264
	.byte	0x1c
	.byte	0x32
	.byte	0x13
	.4byte	0x13a8
	.byte	0x28
	.byte	0xb
	.4byte	.LASF265
	.byte	0x1c
	.byte	0x33
	.byte	0x9
	.4byte	0x2c
	.byte	0x68
	.byte	0
	.byte	0x8
	.4byte	0x992
	.4byte	0x13a8
	.byte	0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x53
	.4byte	0x13b8
	.byte	0x9
	.4byte	0x25
	.byte	0x3f
	.byte	0
	.byte	0x5
	.4byte	.LASF266
	.byte	0x1c
	.byte	0x34
	.byte	0x3
	.4byte	0x135a
	.byte	0x5
	.4byte	.LASF267
	.byte	0x1d
	.byte	0x22
	.byte	0xf
	.4byte	0x12e
	.byte	0xa
	.byte	0x60
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x1435
	.byte	0xb
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2a
	.byte	0x15
	.4byte	0x1295
	.byte	0
	.byte	0xb
	.4byte	.LASF257
	.byte	0x1
	.byte	0x2c
	.byte	0x15
	.4byte	0x1435
	.byte	0x10
	.byte	0xe
	.string	"len"
	.byte	0x1
	.byte	0x2d
	.byte	0x16
	.4byte	0x992
	.byte	0x14
	.byte	0xb
	.4byte	.LASF269
	.byte	0x1
	.byte	0x2e
	.byte	0x15
	.4byte	0x1445
	.byte	0x18
	.byte	0xb
	.4byte	.LASF270
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.4byte	0x1295
	.byte	0x20
	.byte	0xb
	.4byte	.LASF271
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.4byte	0x1295
	.byte	0x30
	.byte	0xb
	.4byte	.LASF272
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.4byte	0x1455
	.byte	0x40
	.byte	0
	.byte	0x8
	.4byte	0x97a
	.4byte	0x1445
	.byte	0x9
	.4byte	0x25
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0x97a
	.4byte	0x1455
	.byte	0x9
	.4byte	0x25
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x97a
	.4byte	0x1465
	.byte	0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x26
	.2byte	0x200
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x1486
	.byte	0x27
	.string	"s"
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x13d0
	.byte	0x7
	.4byte	.LASF273
	.byte	0x1
	.byte	0x35
	.byte	0x11
	.4byte	0x1486
	.byte	0
	.byte	0x8
	.4byte	0x97a
	.4byte	0x1497
	.byte	0x28
	.4byte	0x25
	.2byte	0x1ff
	.byte	0
	.byte	0x10
	.4byte	.LASF274
	.2byte	0x200
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.4byte	0x14b1
	.byte	0xe
	.string	"u"
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.4byte	0x1465
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF275
	.byte	0x1
	.byte	0x37
	.byte	0x3
	.4byte	0x1497
	.byte	0x8
	.4byte	0x53
	.4byte	0x14cd
	.byte	0x9
	.4byte	0x25
	.byte	0x1f
	.byte	0
	.byte	0x29
	.4byte	.LASF276
	.byte	0x1
	.byte	0x3a
	.byte	0xf
	.4byte	0x14bd
	.byte	0x5
	.byte	0x3
	.4byte	sig_backup
	.byte	0x8
	.4byte	0x97a
	.4byte	0x14ef
	.byte	0x9
	.4byte	0x25
	.byte	0xff
	.byte	0
	.byte	0x29
	.4byte	.LASF277
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x14df
	.byte	0x5
	.byte	0x3
	.4byte	written_data
	.byte	0x2a
	.4byte	.LASF278
	.byte	0x1
	.byte	0x3e
	.byte	0x18
	.4byte	0x13c4
	.byte	0x5
	.byte	0x3
	.4byte	handle
	.byte	0x2a
	.4byte	.LASF279
	.byte	0x1
	.byte	0x3f
	.byte	0x22
	.4byte	0x134e
	.byte	0x5
	.byte	0x3
	.4byte	ptEntry
	.byte	0x2a
	.4byte	.LASF280
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	use_xz
	.byte	0x2a
	.4byte	.LASF274
	.byte	0x1
	.byte	0x42
	.byte	0x16
	.4byte	0x1549
	.byte	0x5
	.byte	0x3
	.4byte	ota_header
	.byte	0xf
	.byte	0x4
	.4byte	0x14b1
	.byte	0x2a
	.4byte	.LASF281
	.byte	0x1
	.byte	0x43
	.byte	0x11
	.4byte	0x992
	.byte	0x5
	.byte	0x3
	.4byte	ota_bin_size
	.byte	0x2b
	.string	"ctx"
	.byte	0x1
	.byte	0x45
	.byte	0x1b
	.4byte	0x13b8
	.byte	0x5
	.byte	0x3
	.4byte	ctx
	.byte	0x2a
	.4byte	.LASF282
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0x1455
	.byte	0x5
	.byte	0x3
	.4byte	sha256_result
	.byte	0x2a
	.4byte	.LASF283
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.4byte	0x128f
	.byte	0x5
	.byte	0x3
	.4byte	ota_header_buffer
	.byte	0x2a
	.4byte	.LASF284
	.byte	0x1
	.byte	0x4b
	.byte	0x11
	.4byte	0x992
	.byte	0x5
	.byte	0x3
	.4byte	sequence_num
	.byte	0x2c
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x16c
	.byte	0xe
	.4byte	0x12a5
	.byte	0x5
	.byte	0x3
	.4byte	ota_task_handle
	.byte	0x2d
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x1ad
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x16a4
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB275
	.4byte	.LBE275-.LBB275
	.byte	0x1
	.2byte	0x1af
	.byte	0x4f
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB277
	.4byte	.LBE277-.LBB277
	.byte	0x1
	.2byte	0x1b3
	.byte	0x5e
	.byte	0x2f
	.4byte	.LVL250
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL251
	.4byte	0x2c0c
	.4byte	0x161e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC53
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x30
	.4byte	.LVL252
	.4byte	0x2c18
	.4byte	0x1658
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	ota_server_task
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC54
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3a
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR12
	.byte	0
	.byte	0x2f
	.4byte	.LVL253
	.4byte	0x2bff
	.byte	0x32
	.4byte	.LVL254
	.4byte	0x2c0c
	.4byte	0x1691
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC55
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1b3
	.byte	0
	.byte	0x2f
	.4byte	.LVL255
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL256
	.4byte	0x2c25
	.byte	0
	.byte	0x33
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x16e
	.byte	0xd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2976
	.byte	0x34
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x16e
	.byte	0x23
	.4byte	0x12e
	.4byte	.LLST0
	.byte	0x35
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x170
	.byte	0x15
	.4byte	0x11cb
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x35
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x171
	.byte	0x15
	.4byte	0x11cb
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x35
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x172
	.byte	0xc
	.4byte	0x125f
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0x36
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x173
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x36
	.4byte	.LASF290
	.byte	0x1
	.2byte	0x174
	.byte	0x6
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x36
	.4byte	.LASF291
	.byte	0x1
	.2byte	0x175
	.byte	0xb
	.4byte	0x128f
	.4byte	.LLST3
	.byte	0x37
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x2680
	.byte	0x38
	.string	"len"
	.byte	0x1
	.2byte	0x197
	.byte	0x8
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x37
	.4byte	.Ldebug_ranges0+0x130
	.4byte	0x1807
	.byte	0x38
	.string	"res"
	.byte	0x1
	.2byte	0x19f
	.byte	0x9
	.4byte	0x2c
	.4byte	.LLST33
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB264
	.4byte	.LBE264-.LBB264
	.byte	0x1
	.2byte	0x19e
	.byte	0x52
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB266
	.4byte	.LBE266-.LBB266
	.byte	0x1
	.2byte	0x1a0
	.byte	0x4a
	.byte	0x2f
	.4byte	.LVL232
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL233
	.4byte	0x2c0c
	.4byte	0x17b1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC51
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x30
	.4byte	.LVL234
	.4byte	0x2c32
	.4byte	0x17c5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL236
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL237
	.4byte	0x2c0c
	.4byte	0x17f4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC52
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL239
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL241
	.4byte	0x2c25
	.byte	0
	.byte	0x39
	.4byte	0x2976
	.4byte	.LBB181
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x19b
	.byte	0x5
	.4byte	0x263d
	.byte	0x3a
	.4byte	0x299b
	.4byte	.LLST5
	.byte	0x3a
	.4byte	0x298f
	.4byte	.LLST6
	.byte	0x3a
	.4byte	0x2983
	.4byte	.LLST7
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x3c
	.4byte	0x29a7
	.4byte	.L28
	.byte	0x3d
	.4byte	0x29e6
	.4byte	.LLST8
	.byte	0x3d
	.4byte	0x29f2
	.4byte	.LLST9
	.byte	0x3e
	.4byte	0x29fe
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x3d
	.4byte	0x2a0b
	.4byte	.LLST10
	.byte	0x3d
	.4byte	0x2a18
	.4byte	.LLST11
	.byte	0x3f
	.4byte	0x2a75
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x1d38
	.byte	0x3e
	.4byte	0x2a76
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB184
	.4byte	.LBE184-.LBB184
	.byte	0x1
	.2byte	0x137
	.byte	0x57
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB186
	.4byte	.LBE186-.LBB186
	.byte	0x1
	.2byte	0x13a
	.byte	0x50
	.byte	0x39
	.4byte	0x2b8a
	.4byte	.LBB188
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x13c
	.byte	0xa
	.4byte	0x1b6d
	.byte	0x3a
	.4byte	0x2ba7
	.4byte	.LLST12
	.byte	0x3a
	.4byte	0x2bb3
	.4byte	.LLST13
	.byte	0x3a
	.4byte	0x2b9b
	.4byte	.LLST14
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x3e
	.4byte	0x2bbf
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x3d
	.4byte	0x2bcb
	.4byte	.LLST15
	.byte	0x30
	.4byte	.LVL179
	.4byte	0x2c3f
	.4byte	0x1911
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x30
	.4byte	.LVL180
	.4byte	0x2c4b
	.4byte	0x1928
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.byte	0x30
	.4byte	.LVL181
	.4byte	0x2c4b
	.4byte	0x193d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL182
	.4byte	0x2c4b
	.4byte	0x1954
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x30
	.4byte	.LVL183
	.4byte	0x2c3f
	.4byte	0x1974
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0x10
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x30
	.4byte	.LVL184
	.4byte	0x2c4b
	.4byte	0x198b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC40
	.byte	0
	.byte	0x30
	.4byte	.LVL185
	.4byte	0x2c4b
	.4byte	0x19a0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL186
	.4byte	0x2c4b
	.4byte	0x19b7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x30
	.4byte	.LVL187
	.4byte	0x2c57
	.4byte	0x19d5
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x30
	.4byte	.LVL188
	.4byte	0x2c3f
	.4byte	0x19f7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0x14
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x30
	.4byte	.LVL189
	.4byte	0x2c63
	.4byte	0x1a0e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC41
	.byte	0
	.byte	0x30
	.4byte	.LVL190
	.4byte	0x2c3f
	.4byte	0x1a2e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0x20
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x30
	.4byte	.LVL191
	.4byte	0x2c4b
	.4byte	0x1a45
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC42
	.byte	0
	.byte	0x30
	.4byte	.LVL192
	.4byte	0x2c4b
	.4byte	0x1a5a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL193
	.4byte	0x2c4b
	.4byte	0x1a71
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x30
	.4byte	.LVL194
	.4byte	0x2c3f
	.4byte	0x1a91
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x30
	.4byte	.LVL195
	.4byte	0x2c4b
	.4byte	0x1aa8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC43
	.byte	0
	.byte	0x30
	.4byte	.LVL196
	.4byte	0x2c4b
	.4byte	0x1abd
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL197
	.4byte	0x2c4b
	.4byte	0x1ad4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x30
	.4byte	.LVL198
	.4byte	0x2c3f
	.4byte	0x1af6
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x88
	.byte	0xc0,0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x30
	.4byte	.LVL199
	.4byte	0x2c63
	.4byte	0x1b13
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC44
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x30
	.4byte	.LVL200
	.4byte	0x2c4b
	.4byte	0x1b2a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC45
	.byte	0
	.byte	0x30
	.4byte	.LVL204
	.4byte	0x2c63
	.4byte	0x1b41
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x30
	.4byte	.LVL205
	.4byte	0x2c4b
	.4byte	0x1b58
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x40
	.4byte	.LVL206
	.4byte	0x2c4b
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC46
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.byte	0x1
	.2byte	0x141
	.byte	0x6f
	.byte	0x41
	.4byte	0x2a83
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.4byte	0x1bd2
	.byte	0x3d
	.4byte	0x2a84
	.4byte	.LLST16
	.byte	0x30
	.4byte	.LVL212
	.4byte	0x2c6f
	.4byte	0x1bbb
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	.LVL213
	.4byte	0x2c7b
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB195
	.4byte	.LBE195-.LBB195
	.byte	0x1
	.2byte	0x14d
	.byte	0x61
	.byte	0x30
	.4byte	.LVL130
	.4byte	0x2c87
	.4byte	0x1bf8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL131
	.4byte	0x2c93
	.4byte	0x1c13
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL173
	.4byte	0x2c3f
	.4byte	0x1c27
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0x8
	.byte	0
	.byte	0x2f
	.4byte	.LVL174
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL175
	.4byte	0x2c0c
	.4byte	0x1c57
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x2f
	.4byte	.LVL176
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL177
	.4byte	0x2c0c
	.4byte	0x1c80
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL207
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL208
	.4byte	0x2c0c
	.4byte	0x1ca9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC47
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL216
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL217
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL218
	.4byte	0x2c25
	.byte	0x30
	.4byte	.LVL219
	.4byte	0x2c6f
	.4byte	0x1ce9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL220
	.4byte	0x2c7b
	.4byte	0x1d05
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0
	.byte	0x2f
	.4byte	.LVL222
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL223
	.4byte	0x2c0c
	.4byte	0x1d2e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC48
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL224
	.4byte	0x2c25
	.byte	0
	.byte	0x3f
	.4byte	0x2a25
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x1e1b
	.byte	0x3d
	.4byte	0x2a2a
	.4byte	.LLST17
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB199
	.4byte	.LBE199-.LBB199
	.byte	0x1
	.byte	0xe5
	.byte	0x5a
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB201
	.4byte	.LBE201-.LBB201
	.byte	0x1
	.byte	0xe7
	.byte	0x5c
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.byte	0x1
	.byte	0xe8
	.byte	0x3f
	.byte	0x2f
	.4byte	.LVL30
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL31
	.4byte	0x2c0c
	.4byte	0x1dad
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL33
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL35
	.4byte	0x2c0c
	.4byte	0x1dd6
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL36
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL37
	.4byte	0x2c0c
	.4byte	0x1dff
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL52
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL54
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL55
	.4byte	0x2c25
	.byte	0
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.byte	0x1
	.byte	0xed
	.byte	0xb1
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.byte	0x1
	.byte	0xf2
	.byte	0x5a
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.byte	0x1
	.2byte	0x111
	.byte	0x66
	.byte	0x43
	.4byte	0x2aa4
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.byte	0x1
	.2byte	0x11b
	.byte	0x6
	.4byte	0x1ea7
	.byte	0x3a
	.4byte	0x2ac1
	.4byte	.LLST18
	.byte	0x3a
	.4byte	0x2ab5
	.4byte	.LLST19
	.byte	0x44
	.4byte	.LBB213
	.4byte	.LBE213-.LBB213
	.byte	0x3d
	.4byte	0x2acd
	.4byte	.LLST20
	.byte	0x3d
	.4byte	0x2ad9
	.4byte	.LLST21
	.byte	0x3d
	.4byte	0x2ae5
	.4byte	.LLST22
	.byte	0x3d
	.4byte	0x2aef
	.4byte	.LLST23
	.byte	0x45
	.4byte	0x2afb
	.byte	0
	.byte	0
	.byte	0x39
	.4byte	0x2b08
	.4byte	.LBB214
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x11d
	.byte	0x4
	.4byte	0x2069
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x3d
	.4byte	0x2b19
	.4byte	.LLST24
	.byte	0x3d
	.4byte	0x2b23
	.4byte	.LLST25
	.byte	0x3e
	.4byte	0x2b2f
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.byte	0x1
	.byte	0xbf
	.byte	0x54
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x1
	.byte	0xc6
	.byte	0x4e
	.byte	0x30
	.4byte	.LVL96
	.4byte	0x2ca0
	.4byte	0x1f1c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x30
	.4byte	.LVL97
	.4byte	0x2c3f
	.4byte	0x1f37
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x30
	.4byte	.LVL98
	.4byte	0x2c4b
	.4byte	0x1f4e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x30
	.4byte	.LVL102
	.4byte	0x2c63
	.4byte	0x1f65
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x30
	.4byte	.LVL103
	.4byte	0x2c4b
	.4byte	0x1f7c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x30
	.4byte	.LVL106
	.4byte	0x2c63
	.4byte	0x1f93
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x30
	.4byte	.LVL107
	.4byte	0x2c4b
	.4byte	0x1faa
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x30
	.4byte	.LVL108
	.4byte	0x2cac
	.4byte	0x1fce
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL109
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL110
	.4byte	0x2c0c
	.4byte	0x2006
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xbf
	.byte	0
	.byte	0x2f
	.4byte	.LVL114
	.4byte	0x2c25
	.byte	0x30
	.4byte	.LVL115
	.4byte	0x2cb8
	.4byte	0x2026
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x2f
	.4byte	.LVL117
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL118
	.4byte	0x2c0c
	.4byte	0x2055
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL119
	.4byte	0x2cc4
	.byte	0x2f
	.4byte	.LVL121
	.4byte	0x2c25
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB221
	.4byte	.LBE221-.LBB221
	.byte	0x1
	.2byte	0x11e
	.byte	0x4c
	.byte	0x3f
	.4byte	0x2a35
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x2392
	.byte	0x3e
	.4byte	0x2a3a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x46
	.4byte	0x2b3c
	.4byte	.LBB225
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x1
	.2byte	0x121
	.byte	0x4
	.byte	0x3b
	.4byte	.Ldebug_ranges0+0x118
	.byte	0x3d
	.4byte	0x2b4d
	.4byte	.LLST26
	.byte	0x3d
	.4byte	0x2b59
	.4byte	.LLST27
	.byte	0x3d
	.4byte	0x2b65
	.4byte	.LLST28
	.byte	0x3d
	.4byte	0x2b71
	.4byte	.LLST29
	.byte	0x3d
	.4byte	0x2b7d
	.4byte	.LLST29
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB227
	.4byte	.LBE227-.LBB227
	.byte	0x1
	.byte	0x85
	.byte	0x4d
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB229
	.4byte	.LBE229-.LBB229
	.byte	0x1
	.byte	0x8a
	.byte	0x68
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB231
	.4byte	.LBE231-.LBB231
	.byte	0x1
	.byte	0x90
	.byte	0x48
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB233
	.4byte	.LBE233-.LBB233
	.byte	0x1
	.byte	0x94
	.byte	0x67
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB235
	.4byte	.LBE235-.LBB235
	.byte	0x1
	.byte	0x9f
	.byte	0x63
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB237
	.4byte	.LBE237-.LBB237
	.byte	0x1
	.byte	0xa0
	.byte	0x68
	.byte	0x42
	.4byte	0x2bf2
	.4byte	.LBB239
	.4byte	.LBE239-.LBB239
	.byte	0x1
	.byte	0xa1
	.byte	0x59
	.byte	0x2f
	.4byte	.LVL125
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL126
	.4byte	0x2c0c
	.4byte	0x216c
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x30
	.4byte	.LVL127
	.4byte	0x2cd0
	.4byte	0x2191
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2f
	.4byte	.LVL128
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL129
	.4byte	0x2c0c
	.4byte	0x21c9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x8a
	.byte	0
	.byte	0x2f
	.4byte	.LVL133
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL135
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL137
	.4byte	0x2cdc
	.byte	0x2f
	.4byte	.LVL139
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL140
	.4byte	0x2c0c
	.4byte	0x2213
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC31
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL142
	.4byte	0x2ce8
	.4byte	0x222f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x2f
	.4byte	.LVL143
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL144
	.4byte	0x2c0c
	.4byte	0x2267
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC32
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x94
	.byte	0
	.byte	0x2f
	.4byte	.LVL145
	.4byte	0x2cf4
	.byte	0x2f
	.4byte	.LVL147
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL149
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL151
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL152
	.4byte	0x2c0c
	.4byte	0x22b1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC33
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL153
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL154
	.4byte	0x2c0c
	.4byte	0x22e0
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC34
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL155
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL156
	.4byte	0x2c0c
	.4byte	0x230f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC35
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL157
	.4byte	0x2d00
	.4byte	0x2326
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x30
	.4byte	.LVL158
	.4byte	0x2d0c
	.4byte	0x233d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0x30
	.4byte	.LVL159
	.4byte	0x2d18
	.4byte	0x235f
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x30
	.4byte	.LVL160
	.4byte	0x2d24
	.4byte	0x2374
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x2f
	.4byte	.LVL161
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL162
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL163
	.4byte	0x2c25
	.byte	0
	.byte	0
	.byte	0
	.byte	0x41
	.4byte	0x2a48
	.4byte	.LBB245
	.4byte	.LBE245-.LBB245
	.4byte	0x244f
	.byte	0x3d
	.4byte	0x2a4d
	.4byte	.LLST31
	.byte	0x3d
	.4byte	0x2a5a
	.4byte	.LLST32
	.byte	0x3e
	.4byte	0x2a67
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB246
	.4byte	.LBE246-.LBB246
	.byte	0x1
	.2byte	0x12b
	.byte	0x56
	.byte	0x30
	.4byte	.LVL166
	.4byte	0x2c87
	.4byte	0x23e4
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL167
	.4byte	0x2c93
	.4byte	0x23ff
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x2f
	.4byte	.LVL168
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL169
	.4byte	0x2c87
	.4byte	0x241d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x30
	.4byte	.LVL170
	.4byte	0x2c0c
	.4byte	0x2445
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC36
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xe8,0x7e
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL171
	.4byte	0x2c25
	.byte	0
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB249
	.4byte	.LBE249-.LBB249
	.byte	0x1
	.2byte	0x15e
	.byte	0x6d
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB251
	.4byte	.LBE251-.LBB251
	.byte	0x1
	.2byte	0x161
	.byte	0x5b
	.byte	0x30
	.4byte	.LVL38
	.4byte	0x2c87
	.4byte	0x2486
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x30
	.4byte	.LVL39
	.4byte	0x2c93
	.4byte	0x24a1
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x2f
	.4byte	.LVL40
	.4byte	0x2d30
	.byte	0x2f
	.4byte	.LVL57
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL59
	.4byte	0x2c0c
	.4byte	0x24e2
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xed
	.byte	0
	.byte	0x2f
	.4byte	.LVL61
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL63
	.4byte	0x2bff
	.byte	0x2f
	.4byte	.LVL65
	.4byte	0x2c0c
	.byte	0x2f
	.4byte	.LVL67
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL74
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL75
	.4byte	0x2c0c
	.4byte	0x2545
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x104
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL77
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL79
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL80
	.4byte	0x2c0c
	.4byte	0x2577
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x30
	.4byte	.LVL81
	.4byte	0x2d3c
	.4byte	0x259a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x2f
	.4byte	.LVL83
	.4byte	0x2bff
	.byte	0x2f
	.4byte	.LVL85
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL87
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL111
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL112
	.4byte	0x2c0c
	.4byte	0x25de
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x2f
	.4byte	.LVL123
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL226
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL227
	.4byte	0x2c0c
	.4byte	0x2620
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC49
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x15e
	.byte	0
	.byte	0x2f
	.4byte	.LVL228
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL229
	.4byte	0x2bff
	.byte	0x2f
	.4byte	.LVL230
	.4byte	0x2c25
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL26
	.4byte	0x2d18
	.4byte	0x265d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x40
	.4byte	.LVL27
	.4byte	0x2d47
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x47
	.4byte	0x2bf2
	.4byte	.LBB166
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x176
	.byte	0x57
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB170
	.4byte	.LBE170-.LBB170
	.byte	0x1
	.2byte	0x17a
	.byte	0x59
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.byte	0x1
	.2byte	0x182
	.byte	0x57
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.byte	0x1
	.2byte	0x187
	.byte	0x59
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.byte	0x1
	.2byte	0x18e
	.byte	0x49
	.byte	0x2e
	.4byte	0x2bf2
	.4byte	.LBB178
	.4byte	.LBE178-.LBB178
	.byte	0x1
	.2byte	0x193
	.byte	0x54
	.byte	0x2f
	.4byte	.LVL2
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL3
	.4byte	0x2c0c
	.4byte	0x2716
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x17cd
	.byte	0
	.byte	0x30
	.4byte	.LVL4
	.4byte	0x2d54
	.4byte	0x2733
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2f
	.4byte	.LVL6
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL7
	.4byte	0x2c0c
	.4byte	0x2772
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x17a
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL8
	.4byte	0x2d61
	.4byte	0x2787
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x17cd
	.byte	0
	.byte	0x30
	.4byte	.LVL9
	.4byte	0x2d6d
	.4byte	0x279a
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x30
	.4byte	.LVL10
	.4byte	0x2d79
	.4byte	0x27ba
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x2f
	.4byte	.LVL11
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL12
	.4byte	0x2c0c
	.4byte	0x27f9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x182
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL13
	.4byte	0x2c32
	.4byte	0x280d
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL14
	.4byte	0x2d86
	.4byte	0x2826
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x2f
	.4byte	.LVL15
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL16
	.4byte	0x2c0c
	.4byte	0x2865
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x31
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x187
	.byte	0x31
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL17
	.4byte	0x2c32
	.4byte	0x2879
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL18
	.4byte	0x2d93
	.4byte	0x288e
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2f
	.4byte	.LVL20
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL21
	.4byte	0x2c0c
	.4byte	0x28b7
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x30
	.4byte	.LVL22
	.4byte	0x2d9f
	.4byte	0x28d9
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x31
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf0,0x7e
	.byte	0
	.byte	0x2f
	.4byte	.LVL24
	.4byte	0x2bff
	.byte	0x30
	.4byte	.LVL25
	.4byte	0x2c0c
	.4byte	0x2908
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x31
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x31
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL42
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL44
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL45
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL46
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL48
	.4byte	0x2c25
	.byte	0x2f
	.4byte	.LVL50
	.4byte	0x2c25
	.byte	0x30
	.4byte	.LVL244
	.4byte	0x2dac
	.4byte	0x2952
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LVL245
	.4byte	0x2c32
	.4byte	0x2966
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	.LVL246
	.4byte	0x2db8
	.byte	0x31
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	.LASF358
	.byte	0x1
	.byte	0xe1
	.byte	0xd
	.byte	0x1
	.4byte	0x2a94
	.byte	0x49
	.4byte	.LASF292
	.byte	0x1
	.byte	0xe1
	.byte	0x20
	.4byte	0x2c
	.byte	0x49
	.4byte	.LASF293
	.byte	0x1
	.byte	0xe1
	.byte	0x31
	.4byte	0x128f
	.byte	0x4a
	.string	"len"
	.byte	0x1
	.byte	0xe1
	.byte	0x3b
	.4byte	0x2c
	.byte	0x4b
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x166
	.byte	0x1
	.byte	0x2a
	.4byte	.LASF294
	.byte	0x1
	.byte	0xf6
	.byte	0xd
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	ota_header_offset.4186
	.byte	0x2a
	.4byte	.LASF295
	.byte	0x1
	.byte	0xf7
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	flash_offset.4187
	.byte	0x2a
	.4byte	.LASF296
	.byte	0x1
	.byte	0xf8
	.byte	0x10
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	ota_header_found.4188
	.byte	0x4c
	.string	"seq"
	.byte	0x1
	.byte	0xf9
	.byte	0xb
	.4byte	0x992
	.byte	0x4d
	.4byte	.LASF297
	.byte	0x1
	.byte	0xfa
	.byte	0xb
	.4byte	0x992
	.byte	0x4e
	.4byte	.LASF298
	.byte	0x1
	.2byte	0x10d
	.byte	0x7
	.4byte	0x2a94
	.byte	0x4e
	.4byte	.LASF299
	.byte	0x1
	.2byte	0x10e
	.byte	0x6
	.4byte	0x2c
	.byte	0x4e
	.4byte	.LASF300
	.byte	0x1
	.2byte	0x114
	.byte	0x6
	.4byte	0x2c
	.byte	0x4f
	.4byte	0x2a35
	.byte	0x4c
	.string	"i"
	.byte	0x1
	.byte	0xe6
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.byte	0x4f
	.4byte	0x2a48
	.byte	0x4e
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x122
	.byte	0x9
	.4byte	0x83f
	.byte	0
	.byte	0x4f
	.4byte	0x2a75
	.byte	0x4e
	.4byte	.LASF302
	.byte	0x1
	.2byte	0x127
	.byte	0xc
	.4byte	0x97a
	.byte	0x4e
	.4byte	.LASF303
	.byte	0x1
	.2byte	0x128
	.byte	0xc
	.4byte	0x97a
	.byte	0x4e
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x129
	.byte	0x9
	.4byte	0x83f
	.byte	0
	.byte	0x50
	.byte	0x4e
	.4byte	.LASF301
	.byte	0x1
	.2byte	0x153
	.byte	0x9
	.4byte	0x83f
	.byte	0x50
	.byte	0x4e
	.4byte	.LASF304
	.byte	0x1
	.2byte	0x143
	.byte	0xb
	.4byte	0x2c
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x2aa4
	.byte	0x9
	.4byte	0x25
	.byte	0x6
	.byte	0
	.byte	0x51
	.4byte	.LASF306
	.byte	0x1
	.byte	0xcb
	.byte	0x10
	.4byte	0x97a
	.byte	0x1
	.4byte	0x2b08
	.byte	0x49
	.4byte	.LASF293
	.byte	0x1
	.byte	0xcb
	.byte	0x22
	.4byte	0x128f
	.byte	0x4a
	.string	"len"
	.byte	0x1
	.byte	0xcb
	.byte	0x2c
	.4byte	0x2c
	.byte	0x4d
	.4byte	.LASF303
	.byte	0x1
	.byte	0xcd
	.byte	0xa
	.4byte	0x97a
	.byte	0x4d
	.4byte	.LASF299
	.byte	0x1
	.byte	0xce
	.byte	0x6
	.4byte	0x2c
	.byte	0x4c
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.byte	0x6
	.4byte	0x2c
	.byte	0x4c
	.string	"sum"
	.byte	0x1
	.byte	0xcf
	.byte	0xd
	.4byte	0x2c
	.byte	0x4d
	.4byte	.LASF305
	.byte	0x1
	.byte	0xdc
	.byte	0xa
	.4byte	0x97a
	.byte	0
	.byte	0x51
	.4byte	.LASF307
	.byte	0x1
	.byte	0xab
	.byte	0xc
	.4byte	0x2c
	.byte	0x1
	.4byte	0x2b3c
	.byte	0x4c
	.string	"i"
	.byte	0x1
	.byte	0xad
	.byte	0x6
	.4byte	0x2c
	.byte	0x4c
	.string	"ret"
	.byte	0x1
	.byte	0xae
	.byte	0x6
	.4byte	0x2c
	.byte	0x4d
	.4byte	.LASF308
	.byte	0x1
	.byte	0xaf
	.byte	0xa
	.4byte	0x1455
	.byte	0
	.byte	0x51
	.4byte	.LASF309
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x2c
	.byte	0x1
	.4byte	0x2b8a
	.byte	0x4c
	.string	"ret"
	.byte	0x1
	.byte	0x87
	.byte	0x6
	.4byte	0x2c
	.byte	0x4d
	.4byte	.LASF310
	.byte	0x1
	.byte	0x8e
	.byte	0xa
	.4byte	0x97a
	.byte	0x4d
	.4byte	.LASF311
	.byte	0x1
	.byte	0x99
	.byte	0xf
	.4byte	0x25
	.byte	0x4d
	.4byte	.LASF312
	.byte	0x1
	.byte	0x9a
	.byte	0xb
	.4byte	0x992
	.byte	0x4d
	.4byte	.LASF313
	.byte	0x1
	.byte	0x9a
	.byte	0x15
	.4byte	0x992
	.byte	0
	.byte	0x51
	.4byte	.LASF314
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.4byte	0x2c
	.byte	0x1
	.4byte	0x2bd6
	.byte	0x49
	.4byte	.LASF274
	.byte	0x1
	.byte	0x4f
	.byte	0x2c
	.4byte	0x1549
	.byte	0x49
	.4byte	.LASF315
	.byte	0x1
	.byte	0x4f
	.byte	0x42
	.4byte	0x2bd6
	.byte	0x49
	.4byte	.LASF280
	.byte	0x1
	.byte	0x4f
	.byte	0x50
	.4byte	0x2bdc
	.byte	0x4c
	.string	"str"
	.byte	0x1
	.byte	0x51
	.byte	0xa
	.4byte	0x2be2
	.byte	0x4c
	.string	"i"
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x992
	.byte	0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x2bf2
	.byte	0x9
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x52
	.4byte	.LASF360
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x1277
	.byte	0x3
	.byte	0x53
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x1a
	.2byte	0x558
	.byte	0xc
	.byte	0x54
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x1e
	.byte	0x9e
	.byte	0x6
	.byte	0x53
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x1a
	.2byte	0x14a
	.byte	0xd
	.byte	0x53
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x1a
	.2byte	0x547
	.byte	0xc
	.byte	0x53
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x18
	.2byte	0x247
	.byte	0x6
	.byte	0x54
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x1f
	.byte	0x1f
	.byte	0x8
	.byte	0x54
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0x20
	.byte	0xdd
	.byte	0x5
	.byte	0x54
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0x1f
	.byte	0x30
	.byte	0x7
	.byte	0x54
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x20
	.byte	0xc8
	.byte	0x5
	.byte	0x54
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x1c
	.byte	0x60
	.byte	0x6
	.byte	0x54
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x1d
	.byte	0x33
	.byte	0x5
	.byte	0x54
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0x1f
	.byte	0x29
	.byte	0x8
	.byte	0x53
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x18
	.2byte	0x255
	.byte	0x9
	.byte	0x54
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x1c
	.byte	0x68
	.byte	0x6
	.byte	0x54
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x1f
	.byte	0x1e
	.byte	0x5
	.byte	0x54
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x1b
	.byte	0x52
	.byte	0x5
	.byte	0x54
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x21
	.byte	0x9
	.byte	0x6
	.byte	0x54
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0x1d
	.byte	0x2e
	.byte	0x5
	.byte	0x54
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0x1b
	.byte	0x50
	.byte	0x9
	.byte	0x54
	.4byte	.LASF335
	.4byte	.LASF335
	.byte	0x1b
	.byte	0x51
	.byte	0x5
	.byte	0x54
	.4byte	.LASF336
	.4byte	.LASF336
	.byte	0x1d
	.byte	0x2f
	.byte	0x5
	.byte	0x54
	.4byte	.LASF337
	.4byte	.LASF337
	.byte	0x1c
	.byte	0x40
	.byte	0x6
	.byte	0x54
	.4byte	.LASF338
	.4byte	.LASF338
	.byte	0x1c
	.byte	0x57
	.byte	0x6
	.byte	0x54
	.4byte	.LASF339
	.4byte	.LASF339
	.byte	0x1f
	.byte	0x21
	.byte	0x8
	.byte	0x54
	.4byte	.LASF340
	.4byte	.LASF340
	.byte	0x22
	.byte	0x91
	.byte	0x7
	.byte	0x54
	.4byte	.LASF341
	.4byte	.LASF341
	.byte	0x21
	.byte	0x8
	.byte	0x6
	.byte	0x55
	.4byte	.LASF321
	.4byte	.LASF361
	.byte	0x24
	.byte	0
	.byte	0x53
	.4byte	.LASF342
	.4byte	.LASF342
	.byte	0x18
	.2byte	0x24a
	.byte	0x9
	.byte	0x53
	.4byte	.LASF343
	.4byte	.LASF343
	.byte	0x18
	.2byte	0x254
	.byte	0x5
	.byte	0x54
	.4byte	.LASF344
	.4byte	.LASF344
	.byte	0x23
	.byte	0x60
	.byte	0x7
	.byte	0x54
	.4byte	.LASF345
	.4byte	.LASF345
	.byte	0x23
	.byte	0x65
	.byte	0x7
	.byte	0x53
	.4byte	.LASF346
	.4byte	.LASF346
	.byte	0x18
	.2byte	0x241
	.byte	0x5
	.byte	0x53
	.4byte	.LASF347
	.4byte	.LASF347
	.byte	0x18
	.2byte	0x249
	.byte	0x5
	.byte	0x54
	.4byte	.LASF348
	.4byte	.LASF348
	.byte	0x8
	.byte	0x6c
	.byte	0x7
	.byte	0x53
	.4byte	.LASF349
	.4byte	.LASF349
	.byte	0x18
	.2byte	0x240
	.byte	0x5
	.byte	0x54
	.4byte	.LASF350
	.4byte	.LASF350
	.byte	0x8
	.byte	0x5e
	.byte	0x6
	.byte	0x53
	.4byte	.LASF351
	.4byte	.LASF351
	.byte	0x1a
	.2byte	0x2c2
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
	.byte	0x5
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
	.byte	0xb
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
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x17
	.byte	0x1
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
	.byte	0x27
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
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3f
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
	.byte	0x40
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x1d
	.byte	0
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
	.byte	0x43
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
	.byte	0x44
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x45
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x46
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
	.byte	0
	.byte	0
	.byte	0x47
	.byte	0x1d
	.byte	0
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
	.byte	0x4a
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
	.byte	0x4b
	.byte	0xa
	.byte	0
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
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x4e
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
	.byte	0x4f
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x50
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x51
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
	.byte	0x52
	.byte	0x2e
	.byte	0
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
	.byte	0x53
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
	.byte	0x54
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
	.byte	0x55
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44-1
	.4byte	.LVL248
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL243
	.4byte	.LVL249
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL41
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL68
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77-1
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85-1
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL231
	.4byte	.LVL232-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL232-1
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL238
	.4byte	.LVL239-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL239-1
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL235
	.4byte	.LVL236-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL236-1
	.4byte	.LVL238
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL240
	.4byte	.LVL241-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241-1
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57-1
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL68
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77-1
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85-1
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL51
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL29
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL51
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x17
	.byte	0x82
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1e
	.byte	0x82
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x82
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x22
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x8
	.byte	0x82
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x8
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LVL77-1
	.2byte	0x8
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x8
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85-1
	.2byte	0x8
	.byte	0x82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL86
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL164
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL215
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL88
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL124
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL132
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL164
	.4byte	.LVL211
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL215
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL225
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL178
	.4byte	.LVL206
	.2byte	0x6
	.byte	0x3
	.4byte	ota_bin_size
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL178
	.4byte	.LVL206
	.2byte	0x6
	.byte	0x3
	.4byte	use_xz
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL178
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL179-1
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL200
	.4byte	.LVL202
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x3
	.byte	0x8a
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL204
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL209
	.4byte	.LVL210
	.2byte	0x4
	.byte	0x85
	.byte	0x80,0x7c
	.byte	0x9f
	.4byte	.LVL210
	.4byte	.LVL214
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL90
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL95
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL95
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117-1
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121-1
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL127
	.4byte	.LVL128-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL138
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL146
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL150
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL150
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL165
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL165
	.4byte	.LVL172
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB166
	.4byte	.LBE166
	.4byte	.LBB169
	.4byte	.LBE169
	.4byte	0
	.4byte	0
	.4byte	.LBB180
	.4byte	.LBE180
	.4byte	.LBB269
	.4byte	.LBE269
	.4byte	.LBB270
	.4byte	.LBE270
	.4byte	.LBB271
	.4byte	.LBE271
	.4byte	.LBB272
	.4byte	.LBE272
	.4byte	.LBB273
	.4byte	.LBE273
	.4byte	.LBB274
	.4byte	.LBE274
	.4byte	0
	.4byte	0
	.4byte	.LBB181
	.4byte	.LBE181
	.4byte	.LBB258
	.4byte	.LBE258
	.4byte	.LBB259
	.4byte	.LBE259
	.4byte	.LBB260
	.4byte	.LBE260
	.4byte	.LBB261
	.4byte	.LBE261
	.4byte	.LBB262
	.4byte	.LBE262
	.4byte	0
	.4byte	0
	.4byte	.LBB183
	.4byte	.LBE183
	.4byte	.LBB197
	.4byte	.LBE197
	.4byte	.LBB243
	.4byte	.LBE243
	.4byte	.LBB248
	.4byte	.LBE248
	.4byte	0
	.4byte	0
	.4byte	.LBB188
	.4byte	.LBE188
	.4byte	.LBB191
	.4byte	.LBE191
	.4byte	0
	.4byte	0
	.4byte	.LBB198
	.4byte	.LBE198
	.4byte	.LBB205
	.4byte	.LBE205
	.4byte	0
	.4byte	0
	.4byte	.LBB214
	.4byte	.LBE214
	.4byte	.LBB223
	.4byte	.LBE223
	.4byte	0
	.4byte	0
	.4byte	.LBB224
	.4byte	.LBE224
	.4byte	.LBB244
	.4byte	.LBE244
	.4byte	0
	.4byte	0
	.4byte	.LBB225
	.4byte	.LBE225
	.4byte	.LBB242
	.4byte	.LBE242
	.4byte	0
	.4byte	0
	.4byte	.LBB263
	.4byte	.LBE263
	.4byte	.LBB268
	.4byte	.LBE268
	.4byte	0
	.4byte	0
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF250:
	.string	"socklen_t"
.LASF167:
	.string	"proterr"
.LASF16:
	.string	"_ssize_t"
.LASF248:
	.string	"sa_family"
.LASF255:
	.string	"__locale_t"
.LASF20:
	.string	"__value"
.LASF89:
	.string	"__sf"
.LASF280:
	.string	"use_xz"
.LASF56:
	.string	"_read"
.LASF157:
	.string	"used"
.LASF137:
	.string	"MEMP_TCP_PCB"
.LASF188:
	.string	"memp_pools"
.LASF224:
	.string	"igmp_mac_filter"
.LASF316:
	.string	"xTaskGetTickCountFromISR"
.LASF57:
	.string	"_write"
.LASF129:
	.string	"int32_t"
.LASF242:
	.string	"sin_family"
.LASF101:
	.string	"_asctime_buf"
.LASF228:
	.string	"netif_status_callback_fn"
.LASF83:
	.string	"_cvtlen"
.LASF244:
	.string	"sin_addr"
.LASF320:
	.string	"lwip_close"
.LASF259:
	.string	"activeIndex"
.LASF230:
	.string	"netif_list"
.LASF144:
	.string	"MEMP_SYS_TIMEOUT"
.LASF120:
	.string	"_unused"
.LASF30:
	.string	"__tm"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF61:
	.string	"_nbuf"
.LASF31:
	.string	"__tm_sec"
.LASF252:
	.string	"BaseType_t"
.LASF174:
	.string	"rx_report"
.LASF109:
	.string	"_l64a_buf"
.LASF332:
	.string	"system_delay_reboot"
.LASF314:
	.string	"_check_ota_header"
.LASF295:
	.string	"flash_offset"
.LASF360:
	.string	"xPortIsInsideInterrupt"
.LASF217:
	.string	"state"
.LASF65:
	.string	"_lock"
.LASF322:
	.string	"puts"
.LASF152:
	.string	"stats"
.LASF205:
	.string	"lwip_internal_netif_client_data_index"
.LASF257:
	.string	"type"
.LASF97:
	.string	"_mult"
.LASF333:
	.string	"bl_mtd_open"
.LASF329:
	.string	"utils_sha256_finish"
.LASF271:
	.string	"ver_software"
.LASF306:
	.string	"checksum"
.LASF149:
	.string	"memp"
.LASF229:
	.string	"netif_igmp_mac_filter_fn"
.LASF184:
	.string	"etharp"
.LASF299:
	.string	"data_len"
.LASF276:
	.string	"sig_backup"
.LASF361:
	.string	"__builtin_memcpy"
.LASF17:
	.string	"__wch"
.LASF290:
	.string	"client_socket_fd"
.LASF3:
	.string	"__uint8_t"
.LASF53:
	.string	"_file"
.LASF40:
	.string	"_on_exit_args"
.LASF238:
	.string	"errno"
.LASF112:
	.string	"_mbrlen_state"
.LASF9:
	.string	"long int"
.LASF121:
	.string	"_impure_ptr"
.LASF344:
	.string	"lwip_htons"
.LASF301:
	.string	"resp"
.LASF80:
	.string	"_result_k"
.LASF272:
	.string	"sha256"
.LASF50:
	.string	"_size"
.LASF102:
	.string	"_localtime_buf"
.LASF319:
	.string	"xTaskGetTickCount"
.LASF253:
	.string	"TrapNetCounter"
.LASF189:
	.string	"ip4_addr"
.LASF336:
	.string	"bl_mtd_close"
.LASF241:
	.string	"sin_len"
.LASF35:
	.string	"__tm_mon"
.LASF156:
	.string	"avail"
.LASF214:
	.string	"linkoutput"
.LASF221:
	.string	"hwaddr_len"
.LASF340:
	.string	"pvPortMalloc"
.LASF99:
	.string	"_unused_rand"
.LASF1:
	.string	"signed char"
.LASF128:
	.string	"uint8_t"
.LASF247:
	.string	"sa_len"
.LASF262:
	.string	"HALPartition_Entry_Config"
.LASF274:
	.string	"ota_header"
.LASF4:
	.string	"unsigned char"
.LASF164:
	.string	"lenerr"
.LASF325:
	.string	"utils_sha256_update"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF352:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF68:
	.string	"_reent"
.LASF122:
	.string	"_global_impure_ptr"
.LASF162:
	.string	"drop"
.LASF254:
	.string	"TaskHandle_t"
.LASF268:
	.string	"header"
.LASF298:
	.string	"exception_resp"
.LASF243:
	.string	"sin_port"
.LASF90:
	.string	"char"
.LASF339:
	.string	"memset"
.LASF47:
	.string	"_fns"
.LASF213:
	.string	"output"
.LASF196:
	.string	"pbuf"
.LASF59:
	.string	"_close"
.LASF288:
	.string	"socklen"
.LASF359:
	.string	"EXCEPTION_OCCUR"
.LASF227:
	.string	"netif_linkoutput_fn"
.LASF135:
	.string	"MEMP_RAW_PCB"
.LASF6:
	.string	"__uint16_t"
.LASF240:
	.string	"sockaddr_in"
.LASF70:
	.string	"_stdin"
.LASF351:
	.string	"vTaskDelete"
.LASF345:
	.string	"lwip_htonl"
.LASF200:
	.string	"flags"
.LASF134:
	.string	"mem_size_t"
.LASF284:
	.string	"sequence_num"
.LASF210:
	.string	"ip_addr"
.LASF245:
	.string	"sin_zero"
.LASF310:
	.string	"activeID"
.LASF212:
	.string	"input"
.LASF309:
	.string	"ota_start"
.LASF334:
	.string	"hal_boot2_get_active_partition"
.LASF237:
	.string	"in6addr_any"
.LASF281:
	.string	"ota_bin_size"
.LASF169:
	.string	"cachehit"
.LASF165:
	.string	"memerr"
.LASF182:
	.string	"stats_"
.LASF324:
	.string	"printf"
.LASF142:
	.string	"MEMP_TCPIP_MSG_API"
.LASF264:
	.string	"buffer"
.LASF141:
	.string	"MEMP_NETCONN"
.LASF55:
	.string	"_cookie"
.LASF335:
	.string	"hal_boot2_get_active_entries"
.LASF131:
	.string	"in_addr_t"
.LASF28:
	.string	"_wds"
.LASF215:
	.string	"status_callback"
.LASF87:
	.string	"_sig_func"
.LASF63:
	.string	"_offset"
.LASF296:
	.string	"ota_header_found"
.LASF84:
	.string	"_cvtbuf"
.LASF331:
	.string	"hal_boot2_update_ptable"
.LASF312:
	.string	"bin_size"
.LASF260:
	.string	"Address"
.LASF81:
	.string	"_p5s"
.LASF11:
	.string	"long unsigned int"
.LASF209:
	.string	"netif"
.LASF51:
	.string	"__sFILE"
.LASF77:
	.string	"__sdidinit"
.LASF67:
	.string	"_flags2"
.LASF220:
	.string	"hwaddr"
.LASF199:
	.string	"type_internal"
.LASF282:
	.string	"sha256_result"
.LASF23:
	.string	"_LOCK_RECURSIVE_T"
.LASF183:
	.string	"link"
.LASF69:
	.string	"_errno"
.LASF176:
	.string	"tx_leave"
.LASF353:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/doit_ota.c"
.LASF110:
	.string	"_signal_buf"
.LASF349:
	.string	"lwip_accept"
.LASF251:
	.string	"h_errno"
.LASF197:
	.string	"payload"
.LASF170:
	.string	"stats_igmp"
.LASF29:
	.string	"_Bigint"
.LASF206:
	.string	"netif_mac_filter_action"
.LASF160:
	.string	"xmit"
.LASF26:
	.string	"_maxwds"
.LASF291:
	.string	"databuff"
.LASF78:
	.string	"__cleanup"
.LASF86:
	.string	"_atexit0"
.LASF347:
	.string	"lwip_listen"
.LASF308:
	.string	"sha256_img"
.LASF269:
	.string	"pad0"
.LASF186:
	.string	"igmp"
.LASF10:
	.string	"__uint32_t"
.LASF74:
	.string	"_emergency"
.LASF341:
	.string	"system_delay_reset"
.LASF12:
	.string	"long long int"
.LASF177:
	.string	"tx_report"
.LASF203:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF93:
	.string	"_niobs"
.LASF191:
	.string	"ip4_addr_t"
.LASF88:
	.string	"__sglue"
.LASF356:
	.string	"ota_server_task"
.LASF133:
	.string	"_ctype_"
.LASF119:
	.string	"_nmalloc"
.LASF103:
	.string	"_gamma_signgam"
.LASF211:
	.string	"netmask"
.LASF287:
	.string	"client_addr"
.LASF286:
	.string	"server_addr"
.LASF82:
	.string	"_freelist"
.LASF94:
	.string	"_iobs"
.LASF180:
	.string	"mutex"
.LASF92:
	.string	"_glue"
.LASF27:
	.string	"_sign"
.LASF178:
	.string	"stats_syselem"
.LASF293:
	.string	"buff"
.LASF159:
	.string	"stats_proto"
.LASF355:
	.string	"doit_ota_server_init"
.LASF190:
	.string	"addr"
.LASF234:
	.string	"u32_addr"
.LASF151:
	.string	"memp_desc"
.LASF0:
	.string	"unsigned int"
.LASF126:
	.string	"u16_t"
.LASF117:
	.string	"_h_errno"
.LASF181:
	.string	"mbox"
.LASF267:
	.string	"bl_mtd_handle_t"
.LASF223:
	.string	"rs_count"
.LASF115:
	.string	"_wcrtomb_state"
.LASF277:
	.string	"written_data"
.LASF34:
	.string	"__tm_mday"
.LASF261:
	.string	"maxLen"
.LASF85:
	.string	"_new"
.LASF225:
	.string	"netif_input_fn"
.LASF60:
	.string	"_ubuf"
.LASF72:
	.string	"_stderr"
.LASF108:
	.string	"_wctomb_state"
.LASF66:
	.string	"_mbstate"
.LASF104:
	.string	"_rand_next"
.LASF263:
	.string	"total"
.LASF52:
	.string	"_flags"
.LASF194:
	.string	"ip_addr_broadcast"
.LASF45:
	.string	"_atexit"
.LASF318:
	.string	"xTaskCreate"
.LASF307:
	.string	"ota_end"
.LASF343:
	.string	"lwip_socket"
.LASF236:
	.string	"in6_addr"
.LASF19:
	.string	"__count"
.LASF226:
	.string	"netif_output_fn"
.LASF161:
	.string	"recv"
.LASF198:
	.string	"tot_len"
.LASF37:
	.string	"__tm_wday"
.LASF192:
	.string	"ip_addr_t"
.LASF38:
	.string	"__tm_yday"
.LASF313:
	.string	"part_size"
.LASF207:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF195:
	.string	"err_t"
.LASF96:
	.string	"_seed"
.LASF303:
	.string	"chksum"
.LASF278:
	.string	"handle"
.LASF58:
	.string	"_seek"
.LASF179:
	.string	"stats_sys"
.LASF15:
	.string	"_fpos_t"
.LASF18:
	.string	"__wchb"
.LASF256:
	.string	"tskTaskControlBlock"
.LASF283:
	.string	"ota_header_buffer"
.LASF107:
	.string	"_mbtowc_state"
.LASF201:
	.string	"if_idx"
.LASF185:
	.string	"icmp"
.LASF258:
	.string	"device"
.LASF153:
	.string	"size"
.LASF13:
	.string	"long long unsigned int"
.LASF136:
	.string	"MEMP_UDP_PCB"
.LASF239:
	.string	"sa_family_t"
.LASF175:
	.string	"tx_join"
.LASF139:
	.string	"MEMP_TCP_SEG"
.LASF42:
	.string	"_dso_handle"
.LASF266:
	.string	"iot_sha256_context"
.LASF95:
	.string	"_rand48"
.LASF71:
	.string	"_stdout"
.LASF285:
	.string	"ota_task_handle"
.LASF249:
	.string	"sa_data"
.LASF62:
	.string	"_blksize"
.LASF216:
	.string	"link_callback"
.LASF158:
	.string	"illegal"
.LASF305:
	.string	"cal_sum"
.LASF49:
	.string	"_base"
.LASF193:
	.string	"ip_addr_any"
.LASF168:
	.string	"opterr"
.LASF100:
	.string	"_strtok_last"
.LASF304:
	.string	"bin_offset"
.LASF204:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF315:
	.string	"ota_len"
.LASF113:
	.string	"_mbrtowc_state"
.LASF246:
	.string	"sockaddr"
.LASF145:
	.string	"MEMP_NETDB"
.LASF219:
	.string	"hostname"
.LASF24:
	.string	"_flock_t"
.LASF163:
	.string	"chkerr"
.LASF91:
	.string	"__FILE"
.LASF279:
	.string	"ptEntry"
.LASF172:
	.string	"rx_group"
.LASF311:
	.string	"ota_addr"
.LASF275:
	.string	"ota_header_t"
.LASF21:
	.string	"_mbstate_t"
.LASF105:
	.string	"_r48"
.LASF2:
	.string	"wint_t"
.LASF148:
	.string	"MEMP_MAX"
.LASF348:
	.string	"malloc"
.LASF25:
	.string	"_next"
.LASF64:
	.string	"_data"
.LASF232:
	.string	"in_addr"
.LASF127:
	.string	"u32_t"
.LASF323:
	.string	"strstr"
.LASF330:
	.string	"memcmp"
.LASF208:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF354:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/doit_server"
.LASF342:
	.string	"lwip_recv"
.LASF155:
	.string	"stats_mem"
.LASF328:
	.string	"lwip_write"
.LASF222:
	.string	"name"
.LASF146:
	.string	"MEMP_PBUF"
.LASF106:
	.string	"_mblen_state"
.LASF5:
	.string	"short int"
.LASF187:
	.string	"lwip_stats"
.LASF147:
	.string	"MEMP_PBUF_POOL"
.LASF123:
	.string	"suboptarg"
.LASF43:
	.string	"_fntypes"
.LASF173:
	.string	"rx_general"
.LASF358:
	.string	"ota_pkg_parser"
.LASF36:
	.string	"__tm_year"
.LASF202:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF273:
	.string	"_pad"
.LASF337:
	.string	"utils_sha256_init"
.LASF54:
	.string	"_lbfsize"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF327:
	.string	"strlen"
.LASF346:
	.string	"lwip_bind"
.LASF292:
	.string	"socket"
.LASF48:
	.string	"__sbuf"
.LASF321:
	.string	"memcpy"
.LASF44:
	.string	"_is_cxa"
.LASF118:
	.string	"_nextf"
.LASF171:
	.string	"rx_v1"
.LASF143:
	.string	"MEMP_IGMP_GROUP"
.LASF357:
	.string	"pvParameters"
.LASF233:
	.string	"s_addr"
.LASF76:
	.string	"_locale"
.LASF22:
	.string	"__ULong"
.LASF130:
	.string	"uint32_t"
.LASF79:
	.string	"_result"
.LASF270:
	.string	"ver_hardware"
.LASF294:
	.string	"ota_header_offset"
.LASF326:
	.string	"bl_mtd_write"
.LASF14:
	.string	"_off_t"
.LASF350:
	.string	"free"
.LASF98:
	.string	"_add"
.LASF7:
	.string	"short unsigned int"
.LASF125:
	.string	"s8_t"
.LASF33:
	.string	"__tm_hour"
.LASF265:
	.string	"is224"
.LASF140:
	.string	"MEMP_NETBUF"
.LASF154:
	.string	"base"
.LASF302:
	.string	"slot"
.LASF235:
	.string	"u8_addr"
.LASF124:
	.string	"u8_t"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF218:
	.string	"client_data"
.LASF8:
	.string	"__int32_t"
.LASF317:
	.string	"bl_printk"
.LASF297:
	.string	"temp"
.LASF41:
	.string	"_fnargs"
.LASF39:
	.string	"__tm_isdst"
.LASF166:
	.string	"rterr"
.LASF150:
	.string	"next"
.LASF338:
	.string	"utils_sha256_starts"
.LASF300:
	.string	"align_data_len"
.LASF138:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF32:
	.string	"__tm_min"
.LASF289:
	.string	"server_socket_fd"
.LASF111:
	.string	"_getdate_err"
.LASF231:
	.string	"netif_default"
.LASF132:
	.string	"in_port_t"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
