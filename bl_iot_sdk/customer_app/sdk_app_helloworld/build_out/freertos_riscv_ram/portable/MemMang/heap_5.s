	.file	"heap_5.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.prvInsertBlockIntoFreeList,"ax",@progbits
	.align	1
	.type	prvInsertBlockIntoFreeList, @function
prvInsertBlockIntoFreeList:
.LFB7:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/MemMang/heap_5.c"
	.loc 1 345 1
	.cfi_startproc
.LVL0:
	.loc 1 346 1
	.loc 1 347 1
	.loc 1 351 2
	.loc 1 351 18 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 351 2
	j	.L2
.LVL1:
.L8:
	mv	a4,a5
.LVL2:
.L2:
	.loc 1 351 39 discriminator 1
	lw	a5,0(a4)
	.loc 1 351 2 discriminator 1
	bltu	a5,a0,.L8
	.loc 1 358 2 is_stmt 1
.LVL3:
	.loc 1 359 2
	.loc 1 359 24 is_stmt 0
	lw	a2,4(a4)
	lw	a3,4(a0)
	.loc 1 359 12
	add	a1,a4,a2
	.loc 1 359 4
	beq	a0,a1,.L10
.L3:
	.loc 1 366 3 is_stmt 1
	.loc 1 371 2
.LVL4:
	.loc 1 372 2
	.loc 1 372 12 is_stmt 0
	add	a2,a0,a3
	.loc 1 372 4
	beq	a5,a2,.L11
.L4:
	.loc 1 387 3 is_stmt 1
	.loc 1 387 36 is_stmt 0
	sw	a5,0(a0)
.L6:
	.loc 1 394 2 is_stmt 1
	.loc 1 394 4 is_stmt 0
	beq	a0,a4,.L1
	.loc 1 396 3 is_stmt 1
	.loc 1 396 31 is_stmt 0
	sw	a0,0(a4)
	.loc 1 400 3 is_stmt 1
.L1:
	.loc 1 402 1 is_stmt 0
	ret
.L11:
	.loc 1 374 3 is_stmt 1
	.loc 1 374 35 is_stmt 0
	lui	a2,%hi(.LANCHOR1)
	lw	a2,%lo(.LANCHOR1)(a2)
	.loc 1 374 5
	beq	a5,a2,.L4
	.loc 1 377 4 is_stmt 1
	.loc 1 377 32 is_stmt 0
	lw	a5,4(a5)
	add	a3,a5,a3
	sw	a3,4(a0)
	.loc 1 378 4 is_stmt 1
	.loc 1 378 66 is_stmt 0
	lw	a5,0(a4)
	lw	a5,0(a5)
	.loc 1 378 37
	sw	a5,0(a0)
	j	.L6
.LVL5:
.L10:
	.loc 1 361 3 is_stmt 1
	.loc 1 361 26 is_stmt 0
	add	a3,a3,a2
	sw	a3,4(a4)
	.loc 1 362 3 is_stmt 1
.LVL6:
	mv	a0,a4
	j	.L3
	.cfi_endproc
.LFE7:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.text.pvPortMalloc,"ax",@progbits
	.align	1
	.globl	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
.LFB2:
	.loc 1 134 1
	.cfi_startproc
.LVL7:
	.loc 1 135 1
	.loc 1 136 1
	.loc 1 140 2
	.loc 1 134 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 140 16
	lui	s1,%hi(.LANCHOR1)
	.loc 1 134 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 140 16
	addi	s1,s1,%lo(.LANCHOR1)
	.loc 1 140 4
	lw	a5,0(s1)
	.loc 1 134 1
	mv	s0,a0
	.loc 1 140 4
	beq	a5,zero,.L34
.LVL8:
.L13:
	.loc 1 142 2 is_stmt 1
	call	vTaskSuspendAll
.LVL9:
	.loc 1 148 3
	.loc 1 148 21 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	s2,%lo(.LANCHOR2)(a5)
	and	a5,s2,s0
	.loc 1 148 5
	bne	a5,zero,.L16
	.loc 1 152 4 is_stmt 1
	.loc 1 152 6 is_stmt 0
	bne	s0,zero,.L35
.LVL10:
.L16:
	.loc 1 248 4 is_stmt 1
	.loc 1 251 3
	.loc 1 253 2
	.loc 1 253 11 is_stmt 0
	call	xTaskResumeAll
.LVL11:
	.loc 1 257 3 is_stmt 1
.L15:
.LBB2:
	.loc 1 259 4
	.loc 1 260 4
	call	vApplicationMallocFailedHook
.LVL12:
.LBE2:
	li	s1,0
	.loc 1 264 4
	.loc 1 269 2
.L12:
	.loc 1 270 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L35:
	.cfi_restore_state
	.loc 1 154 5 is_stmt 1
	.loc 1 154 17 is_stmt 0
	addi	a5,s0,8
.LVL14:
	.loc 1 158 5 is_stmt 1
	.loc 1 158 23 is_stmt 0
	andi	a4,a5,7
	.loc 1 158 7
	bne	a4,zero,.L36
.L17:
	.loc 1 170 5 is_stmt 1
	.loc 1 173 4
	.loc 1 173 6 is_stmt 0
	beq	a5,zero,.L16
	.loc 1 173 45 discriminator 1
	lui	s3,%hi(.LANCHOR3)
	addi	s3,s3,%lo(.LANCHOR3)
	lw	s4,0(s3)
	.loc 1 173 28 discriminator 1
	bltu	s4,a5,.L16
	.loc 1 177 5 is_stmt 1
.LVL15:
	.loc 1 178 5
	.loc 1 178 13 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	lw	s0,%lo(.LANCHOR0)(a3)
.LVL16:
	.loc 1 179 5 is_stmt 1
	.loc 1 177 21 is_stmt 0
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 179 10
	j	.L19
.LVL17:
.L37:
	.loc 1 179 62 discriminator 1
	lw	a4,0(s0)
	.loc 1 179 50 discriminator 1
	beq	a4,zero,.L18
	mv	a3,s0
.LVL18:
	mv	s0,a4
.LVL19:
.L19:
	.loc 1 179 10
	lw	a4,4(s0)
	bltu	a4,a5,.L37
.L18:
	.loc 1 187 5 is_stmt 1
	.loc 1 187 7 is_stmt 0
	lw	a4,0(s1)
	beq	a4,s0,.L16
	.loc 1 191 6 is_stmt 1
	.loc 1 195 48 is_stmt 0
	lw	a4,0(s0)
	.loc 1 191 15
	lw	s1,0(a3)
	.loc 1 199 8
	li	a2,16
	.loc 1 195 39
	sw	a4,0(a3)
	.loc 1 199 19
	lw	a4,4(s0)
	.loc 1 191 15
	addi	s1,s1,8
.LVL20:
	.loc 1 195 6 is_stmt 1
	.loc 1 199 6
	.loc 1 199 32 is_stmt 0
	sub	a3,a4,a5
.LVL21:
	.loc 1 199 8
	bgtu	a3,a2,.L38
.LVL22:
.L20:
	.loc 1 217 7 is_stmt 1
	.loc 1 220 6
	.loc 1 222 30 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	.loc 1 222 8
	lw	a3,0(a5)
	.loc 1 220 26
	sub	s4,s4,a4
	sw	s4,0(s3)
	.loc 1 222 6 is_stmt 1
	.loc 1 222 8 is_stmt 0
	bgeu	s4,a3,.L21
	.loc 1 224 7 is_stmt 1
	.loc 1 224 38 is_stmt 0
	sw	s4,0(a5)
.L21:
	.loc 1 228 7 is_stmt 1
	.loc 1 233 6
	.loc 1 233 26 is_stmt 0
	or	s2,s2,a4
	sw	s2,4(s0)
	.loc 1 234 6 is_stmt 1
	.loc 1 234 31 is_stmt 0
	sw	zero,0(s0)
	.loc 1 248 4 is_stmt 1
	.loc 1 251 3
	.loc 1 253 2
	.loc 1 253 11 is_stmt 0
	call	xTaskResumeAll
.LVL23:
	.loc 1 257 3 is_stmt 1
	.loc 1 257 5 is_stmt 0
	bne	s1,zero,.L12
	j	.L15
.LVL24:
.L36:
	.loc 1 161 6 is_stmt 1
	.loc 1 161 18 is_stmt 0
	andi	a5,a5,-8
.LVL25:
	addi	a5,a5,8
.LVL26:
	j	.L17
.LVL27:
.L38:
	.loc 1 205 7 is_stmt 1
	.loc 1 205 22 is_stmt 0
	add	a0,s0,a5
.LVL28:
	.loc 1 209 7 is_stmt 1
	.loc 1 209 34 is_stmt 0
	sw	a3,4(a0)
	.loc 1 210 7 is_stmt 1
	.loc 1 210 27 is_stmt 0
	sw	a5,4(s0)
	.loc 1 213 7 is_stmt 1
	call	prvInsertBlockIntoFreeList
.LVL29:
	lw	a4,4(s0)
	j	.L20
.LVL30:
.L34:
	.loc 1 140 23 discriminator 1
	call	vAssertCalled
.LVL31:
	j	.L13
	.cfi_endproc
.LFE2:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.pvPortCalloc,"ax",@progbits
	.align	1
	.globl	pvPortCalloc
	.type	pvPortCalloc, @function
pvPortCalloc:
.LFB3:
	.loc 1 274 1
	.cfi_startproc
.LVL32:
	.loc 1 275 5
	.loc 1 277 5
	.loc 1 274 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 277 8
	mul	s1,a0,a1
	.loc 1 274 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 277 8
	mv	a0,s1
.LVL33:
	call	pvPortMalloc
.LVL34:
	mv	s0,a0
.LVL35:
	.loc 1 278 5 is_stmt 1
	.loc 1 278 7 is_stmt 0
	beq	a0,zero,.L39
	.loc 1 279 9 is_stmt 1
	mv	a2,s1
	li	a1,0
	call	memset
.LVL36:
	.loc 1 281 5
.L39:
	.loc 1 282 1 is_stmt 0
	mv	a0,s0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	pvPortCalloc, .-pvPortCalloc
	.section	.text.vPortFree,"ax",@progbits
	.align	1
	.globl	vPortFree
	.type	vPortFree, @function
vPortFree:
.LFB4:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 286 1
	.loc 1 287 1
	.loc 1 289 2
	.loc 1 289 4 is_stmt 0
	beq	a0,zero,.L59
	.loc 1 285 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 299 30
	lui	s1,%hi(.LANCHOR2)
	.loc 1 285 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 299 30
	addi	s1,s1,%lo(.LANCHOR2)
	lw	a4,-4(a0)
	lw	a5,0(s1)
	mv	s0,a0
	.loc 1 293 3 is_stmt 1
.LVL39:
	.loc 1 296 3
	.loc 1 299 3
	.loc 1 299 30 is_stmt 0
	and	a3,a4,a5
	.loc 1 299 5
	beq	a3,zero,.L62
	.loc 1 300 3 is_stmt 1
	.loc 1 300 5 is_stmt 0
	lw	a3,-8(a0)
	beq	a3,zero,.L51
.LVL40:
.L52:
	.loc 1 300 11 is_stmt 1 discriminator 1
	call	vAssertCalled
.LVL41:
	.loc 1 302 3 discriminator 1
	.loc 1 302 15 is_stmt 0 discriminator 1
	lw	a4,-4(s0)
	.loc 1 302 28 discriminator 1
	lw	a5,0(s1)
	and	a3,a4,a5
	.loc 1 302 5 discriminator 1
	beq	a3,zero,.L45
	.loc 1 304 4 is_stmt 1
	.loc 1 304 6 is_stmt 0
	lw	a3,-8(s0)
	beq	a3,zero,.L51
.L45:
	.loc 1 329 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL42:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L62:
	.cfi_restore_state
	.loc 1 299 67 is_stmt 1 discriminator 1
	call	vAssertCalled
.LVL44:
	.loc 1 300 3 discriminator 1
	.loc 1 300 5 is_stmt 0 discriminator 1
	lw	a5,-8(s0)
	bne	a5,zero,.L52
	.loc 1 302 3 is_stmt 1
	.loc 1 302 15 is_stmt 0
	lw	a4,-4(s0)
	.loc 1 302 28
	lw	a5,0(s1)
	and	a3,a4,a5
	.loc 1 302 5
	beq	a3,zero,.L45
.L51:
	.loc 1 308 5 is_stmt 1
	.loc 1 308 27 is_stmt 0
	not	a5,a5
	.loc 1 308 24
	and	a5,a5,a4
	sw	a5,-4(s0)
	.loc 1 310 5 is_stmt 1
	call	vTaskSuspendAll
.LVL45:
	.loc 1 313 6
	.loc 1 313 26 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lw	a3,0(a5)
	lw	a4,-4(s0)
	.loc 1 315 6
	addi	a0,s0,-8
	.loc 1 313 26
	add	a4,a4,a3
	sw	a4,0(a5)
	.loc 1 314 6 is_stmt 1
	.loc 1 315 6
	call	prvInsertBlockIntoFreeList
.LVL46:
	.loc 1 317 5
	.loc 1 329 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL47:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 317 14
	tail	xTaskResumeAll
.LVL48:
.L59:
	ret
	.cfi_endproc
.LFE4:
	.size	vPortFree, .-vPortFree
	.section	.text.xPortGetFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetFreeHeapSize
	.type	xPortGetFreeHeapSize, @function
xPortGetFreeHeapSize:
.LFB5:
	.loc 1 333 1 is_stmt 1
	.cfi_startproc
	.loc 1 334 2
	.loc 1 334 9 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	.loc 1 335 1
	lw	a0,%lo(.LANCHOR3)(a5)
	ret
	.cfi_endproc
.LFE5:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",@progbits
	.align	1
	.globl	xPortGetMinimumEverFreeHeapSize
	.type	xPortGetMinimumEverFreeHeapSize, @function
xPortGetMinimumEverFreeHeapSize:
.LFB6:
	.loc 1 339 1 is_stmt 1
	.cfi_startproc
	.loc 1 340 2
	.loc 1 340 9 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	.loc 1 341 1
	lw	a0,%lo(.LANCHOR4)(a5)
	ret
	.cfi_endproc
.LFE6:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.text.vPortDefineHeapRegions,"ax",@progbits
	.align	1
	.globl	vPortDefineHeapRegions
	.type	vPortDefineHeapRegions, @function
vPortDefineHeapRegions:
.LFB8:
	.loc 1 406 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 407 1
	.loc 1 408 1
	.loc 1 409 1
	.loc 1 410 1
	.loc 1 411 1
	.loc 1 412 1
	.loc 1 415 2
	.loc 1 406 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s6,16(sp)
	.cfi_offset 22, -32
	.loc 1 415 3
	lui	s6,%hi(.LANCHOR1)
	addi	s6,s6,%lo(.LANCHOR1)
	lw	a5,0(s6)
	.loc 1 406 1
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s7,12(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.loc 1 406 1
	mv	s3,a0
	.loc 1 415 4
	beq	a5,zero,.L66
	.loc 1 415 10 is_stmt 1 discriminator 1
	call	vAssertCalled
.LVL50:
	.loc 1 419 21 is_stmt 0 discriminator 1
	lw	s0,4(s3)
	.loc 1 419 7 discriminator 1
	beq	s0,zero,.L70
	lw	a5,0(s6)
.L69:
	.loc 1 441 27
	lui	s7,%hi(.LANCHOR0)
	.loc 1 406 1
	li	s4,0
	li	s5,0
	.loc 1 441 27
	addi	s7,s7,%lo(.LANCHOR0)
.LVL51:
.L76:
	.loc 1 421 3 is_stmt 1
	.loc 1 424 3
	.loc 1 424 37 is_stmt 0
	lw	s1,0(s3)
	.loc 1 425 18
	andi	a4,s1,7
	.loc 1 424 12
	mv	s2,s1
.LVL52:
	.loc 1 425 3 is_stmt 1
	.loc 1 425 5 is_stmt 0
	beq	a4,zero,.L71
	.loc 1 427 4 is_stmt 1
	.loc 1 427 13 is_stmt 0
	addi	a4,s1,7
.LVL53:
	.loc 1 428 4 is_stmt 1
	.loc 1 428 13 is_stmt 0
	andi	a4,a4,-8
.LVL54:
	.loc 1 431 4 is_stmt 1
	.loc 1 431 21 is_stmt 0
	add	s0,s1,s0
.LVL55:
	sub	s0,s0,a4
.LVL56:
	mv	s1,a4
	.loc 1 428 13
	mv	s2,a4
.LVL57:
.L71:
	.loc 1 434 3 is_stmt 1
	.loc 1 437 3
	.loc 1 437 5 is_stmt 0
	bne	s4,zero,.L72
	.loc 1 441 4 is_stmt 1
	.loc 1 441 27 is_stmt 0
	sw	s1,0(s7)
	.loc 1 442 4 is_stmt 1
	.loc 1 442 22 is_stmt 0
	sw	zero,4(s7)
	mv	a4,a5
.L73:
	.loc 1 456 3 is_stmt 1
.LVL58:
	.loc 1 460 3
	.loc 1 460 12 is_stmt 0
	add	s0,s0,s2
.LVL59:
	.loc 1 461 3 is_stmt 1
	.loc 1 461 12 is_stmt 0
	addi	s0,s0,-8
.LVL60:
	.loc 1 462 3 is_stmt 1
	.loc 1 462 12 is_stmt 0
	andi	a5,s0,-8
.LVL61:
	.loc 1 463 3 is_stmt 1
	.loc 1 464 21 is_stmt 0
	sw	zero,4(a5)
	.loc 1 465 26
	sw	zero,0(a5)
	.loc 1 471 51
	sub	s2,a5,s2
	.loc 1 463 9
	sw	a5,0(s6)
.LVL62:
	.loc 1 464 3 is_stmt 1
	.loc 1 465 3
	.loc 1 470 3
	.loc 1 471 3
	.loc 1 471 40 is_stmt 0
	sw	s2,4(s1)
	.loc 1 472 3 is_stmt 1
	.loc 1 472 45 is_stmt 0
	sw	a5,0(s1)
	.loc 1 476 3 is_stmt 1
	.loc 1 476 5 is_stmt 0
	beq	a4,zero,.L75
	.loc 1 478 4 is_stmt 1
	.loc 1 478 41 is_stmt 0
	sw	s1,0(a4)
	lw	s2,4(s1)
.L75:
	.loc 1 481 3 is_stmt 1
	addi	s3,s3,8
.LVL63:
	.loc 1 419 21 is_stmt 0
	lw	s0,4(s3)
	.loc 1 481 18
	add	s5,s5,s2
.LVL64:
	.loc 1 484 3 is_stmt 1
	.loc 1 484 18 is_stmt 0
	addi	s4,s4,1
.LVL65:
	.loc 1 485 3 is_stmt 1
	.loc 1 419 7 is_stmt 0
	bne	s0,zero,.L76
	.loc 1 488 2 is_stmt 1
	.loc 1 488 33 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	s5,%lo(.LANCHOR4)(a5)
	.loc 1 489 2 is_stmt 1
	.loc 1 489 22 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	s5,%lo(.LANCHOR3)(a5)
	.loc 1 492 2 is_stmt 1
	.loc 1 492 4 is_stmt 0
	beq	s5,zero,.L68
.LVL66:
.L77:
	.loc 1 495 2 is_stmt 1
	.loc 1 496 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.loc 1 495 21
	lui	a5,%hi(.LANCHOR2)
	li	a4,-2147483648
	sw	a4,%lo(.LANCHOR2)(a5)
	.loc 1 496 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL67:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL68:
.L72:
	.cfi_restore_state
	.loc 1 448 4 is_stmt 1
	.loc 1 448 6 is_stmt 0
	beq	a5,zero,.L87
.L74:
	.loc 1 451 4 is_stmt 1
	mv	a4,a5
	.loc 1 451 6 is_stmt 0
	bltu	a5,s2,.L73
	.loc 1 451 47 is_stmt 1 discriminator 1
	call	vAssertCalled
.LVL69:
	lw	a4,0(s6)
	j	.L73
.L87:
	.loc 1 448 12 discriminator 1
	call	vAssertCalled
.LVL70:
	lw	a5,0(s6)
	j	.L74
.LVL71:
.L66:
	.loc 1 419 21 is_stmt 0
	lw	s0,4(a0)
	.loc 1 419 7
	bne	s0,zero,.L69
.LVL72:
.L70:
	.loc 1 488 2 is_stmt 1
	.loc 1 488 33 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	sw	zero,%lo(.LANCHOR4)(a5)
	.loc 1 489 2 is_stmt 1
	.loc 1 489 22 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	zero,%lo(.LANCHOR3)(a5)
	.loc 1 492 2 is_stmt 1
.LVL73:
.L68:
	.loc 1 492 32 discriminator 1
	call	vAssertCalled
.LVL74:
	j	.L77
	.cfi_endproc
.LFE8:
	.size	vPortDefineHeapRegions, .-vPortDefineHeapRegions
	.section	.sbss.pxEnd,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pxEnd, @object
	.size	pxEnd, 4
pxEnd:
	.zero	4
	.section	.sbss.xBlockAllocatedBit,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xBlockAllocatedBit, @object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.zero	4
	.section	.sbss.xFreeBytesRemaining,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	xFreeBytesRemaining, @object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.zero	4
	.section	.sbss.xMinimumEverFreeBytesRemaining,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	xMinimumEverFreeBytesRemaining, @object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.zero	4
	.section	.sbss.xStart,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xStart, @object
	.size	xStart, 8
xStart:
	.zero	8
	.text
.Letext0:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd8d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x36
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x165
	.byte	0x16
	.4byte	0x36
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x6d
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x6d
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x3d
	.byte	0x7
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xcf
	.byte	0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x44
	.byte	0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xcf
	.byte	0
	.byte	0x9
	.4byte	0x58
	.4byte	0xdf
	.byte	0xa
	.4byte	0x36
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0x103
	.byte	0xc
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x3d
	.byte	0
	.byte	0xc
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0xad
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xdf
	.byte	0xd
	.byte	0x4
	.byte	0x2
	.4byte	.LASF19
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x74
	.byte	0x2
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x3d
	.byte	0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x23
	.byte	0x1b
	.4byte	0x11d
	.byte	0xe
	.4byte	.LASF26
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x18f
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x18f
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x3d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x3d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x3d
	.byte	0xc
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x3d
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x195
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x135
	.byte	0x9
	.4byte	0x111
	.4byte	0x1a5
	.byte	0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x228
	.byte	0xc
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x3d
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x3d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF30
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x3d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF31
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x3d
	.byte	0xc
	.byte	0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x42
	.byte	0x7
	.4byte	0x3d
	.byte	0x10
	.byte	0xc
	.4byte	.LASF33
	.byte	0x4
	.byte	0x43
	.byte	0x7
	.4byte	0x3d
	.byte	0x14
	.byte	0xc
	.4byte	.LASF34
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0x3d
	.byte	0x18
	.byte	0xc
	.4byte	.LASF35
	.byte	0x4
	.byte	0x45
	.byte	0x7
	.4byte	0x3d
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF36
	.byte	0x4
	.byte	0x46
	.byte	0x7
	.4byte	0x3d
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF37
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x26d
	.byte	0xc
	.4byte	.LASF38
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x26d
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x26d
	.byte	0x80
	.byte	0x12
	.4byte	.LASF40
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0x111
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0x111
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x10f
	.4byte	0x27d
	.byte	0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF42
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2c0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2c0
	.byte	0
	.byte	0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x3d
	.byte	0x4
	.byte	0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2c6
	.byte	0x8
	.byte	0xc
	.4byte	.LASF37
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x228
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x27d
	.byte	0x9
	.4byte	0x2d6
	.4byte	0x2d6
	.byte	0xa
	.4byte	0x36
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2dc
	.byte	0x13
	.byte	0xe
	.4byte	.LASF45
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x305
	.byte	0xc
	.4byte	.LASF46
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x305
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x3d
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x58
	.byte	0xe
	.4byte	.LASF48
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x44e
	.byte	0xf
	.string	"_p"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x305
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x3d
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x3d
	.byte	0x8
	.byte	0xc
	.4byte	.LASF49
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x5f
	.byte	0xc
	.byte	0xc
	.4byte	.LASF50
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x5f
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2dd
	.byte	0x10
	.byte	0xc
	.4byte	.LASF51
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x3d
	.byte	0x18
	.byte	0xc
	.4byte	.LASF52
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0x10f
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF53
	.byte	0x4
	.byte	0xca
	.byte	0xe
	.4byte	0x5d2
	.byte	0x20
	.byte	0xc
	.4byte	.LASF54
	.byte	0x4
	.byte	0xcc
	.byte	0xe
	.4byte	0x5fc
	.byte	0x24
	.byte	0xc
	.4byte	.LASF55
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x620
	.byte	0x28
	.byte	0xc
	.4byte	.LASF56
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x63a
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2dd
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x305
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x3d
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x640
	.byte	0x40
	.byte	0xc
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x650
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2dd
	.byte	0x44
	.byte	0xc
	.4byte	.LASF59
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x3d
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF60
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x89
	.byte	0x50
	.byte	0xc
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x46c
	.byte	0x54
	.byte	0xc
	.4byte	.LASF62
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x129
	.byte	0x58
	.byte	0xc
	.4byte	.LASF63
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0x103
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF64
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x3d
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xa1
	.4byte	0x46c
	.byte	0x15
	.4byte	0x46c
	.byte	0x15
	.4byte	0x10f
	.byte	0x15
	.4byte	0x5c0
	.byte	0x15
	.4byte	0x3d
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x477
	.byte	0x3
	.4byte	0x46c
	.byte	0x16
	.4byte	.LASF65
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5c0
	.byte	0x17
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x3d
	.byte	0
	.byte	0x17
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6ac
	.byte	0x4
	.byte	0x17
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6ac
	.byte	0x8
	.byte	0x17
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6ac
	.byte	0xc
	.byte	0x17
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x26e
	.byte	0x7
	.4byte	0x3d
	.byte	0x10
	.byte	0x17
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8ac
	.byte	0x14
	.byte	0x17
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x3d
	.byte	0x30
	.byte	0x17
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8c1
	.byte	0x34
	.byte	0x17
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x3d
	.byte	0x38
	.byte	0x17
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8d2
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x18f
	.byte	0x40
	.byte	0x17
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x3d
	.byte	0x44
	.byte	0x17
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x18f
	.byte	0x48
	.byte	0x17
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8d8
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x3d
	.byte	0x50
	.byte	0x17
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5c0
	.byte	0x54
	.byte	0x17
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x887
	.byte	0x58
	.byte	0x18
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2c0
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x27d
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8e9
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x66d
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8f5
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5c6
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF87
	.byte	0x3
	.4byte	0x5c6
	.byte	0x10
	.byte	0x4
	.4byte	0x44e
	.byte	0x14
	.4byte	0xa1
	.4byte	0x5f6
	.byte	0x15
	.4byte	0x46c
	.byte	0x15
	.4byte	0x10f
	.byte	0x15
	.4byte	0x5f6
	.byte	0x15
	.4byte	0x3d
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5cd
	.byte	0x10
	.byte	0x4
	.4byte	0x5d8
	.byte	0x14
	.4byte	0x95
	.4byte	0x620
	.byte	0x15
	.4byte	0x46c
	.byte	0x15
	.4byte	0x10f
	.byte	0x15
	.4byte	0x95
	.byte	0x15
	.4byte	0x3d
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x602
	.byte	0x14
	.4byte	0x3d
	.4byte	0x63a
	.byte	0x15
	.4byte	0x46c
	.byte	0x15
	.4byte	0x10f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x626
	.byte	0x9
	.4byte	0x58
	.4byte	0x650
	.byte	0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x58
	.4byte	0x660
	.byte	0xa
	.4byte	0x36
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x124
	.byte	0x18
	.4byte	0x30b
	.byte	0x19
	.4byte	.LASF89
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x6a6
	.byte	0x17
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6a6
	.byte	0
	.byte	0x17
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x3d
	.byte	0x4
	.byte	0x17
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6ac
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x66d
	.byte	0x10
	.byte	0x4
	.4byte	0x660
	.byte	0x19
	.4byte	.LASF92
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6eb
	.byte	0x17
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6eb
	.byte	0
	.byte	0x17
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6eb
	.byte	0x6
	.byte	0x17
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x66
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x66
	.4byte	0x6fb
	.byte	0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x810
	.byte	0x17
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x36
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5c0
	.byte	0x4
	.byte	0x17
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x810
	.byte	0x8
	.byte	0x17
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1a5
	.byte	0x24
	.byte	0x17
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x3d
	.byte	0x48
	.byte	0x17
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x82
	.byte	0x50
	.byte	0x17
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6b2
	.byte	0x58
	.byte	0x17
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0x103
	.byte	0x68
	.byte	0x17
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0x103
	.byte	0x70
	.byte	0x17
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0x103
	.byte	0x78
	.byte	0x17
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x820
	.byte	0x80
	.byte	0x17
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x830
	.byte	0x88
	.byte	0x17
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x3d
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0x103
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0x103
	.byte	0xac
	.byte	0x17
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0x103
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0x103
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0x103
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x3d
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5c6
	.4byte	0x820
	.byte	0xa
	.4byte	0x36
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5c6
	.4byte	0x830
	.byte	0xa
	.4byte	0x36
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5c6
	.4byte	0x840
	.byte	0xa
	.4byte	0x36
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x867
	.byte	0x17
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x867
	.byte	0
	.byte	0x17
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x877
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x305
	.4byte	0x877
	.byte	0xa
	.4byte	0x36
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x36
	.4byte	0x887
	.byte	0xa
	.4byte	0x36
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x8ac
	.byte	0x1c
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x6fb
	.byte	0x1c
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x840
	.byte	0
	.byte	0x9
	.4byte	0x5c6
	.4byte	0x8bc
	.byte	0xa
	.4byte	0x36
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF172
	.byte	0x10
	.byte	0x4
	.4byte	0x8bc
	.byte	0x1e
	.4byte	0x8d2
	.byte	0x15
	.4byte	0x46c
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8c7
	.byte	0x10
	.byte	0x4
	.4byte	0x18f
	.byte	0x1e
	.4byte	0x8e9
	.byte	0x15
	.4byte	0x3d
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8ef
	.byte	0x10
	.byte	0x4
	.4byte	0x8de
	.byte	0x9
	.4byte	0x660
	.4byte	0x905
	.byte	0xa
	.4byte	0x36
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x333
	.byte	0x17
	.4byte	0x46c
	.byte	0x1f
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x334
	.byte	0x1d
	.4byte	0x472
	.byte	0x20
	.4byte	.LASF120
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x5c0
	.byte	0x2
	.4byte	.LASF121
	.byte	0x7
	.byte	0x28
	.byte	0x12
	.4byte	0x6d
	.byte	0x2
	.4byte	.LASF122
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x58
	.byte	0x2
	.4byte	.LASF123
	.byte	0x8
	.byte	0x3f
	.byte	0x11
	.4byte	0x92b
	.byte	0x20
	.4byte	.LASF124
	.byte	0x8
	.byte	0x54
	.byte	0x13
	.4byte	0x943
	.byte	0xe
	.4byte	.LASF125
	.byte	0x8
	.byte	0x9
	.byte	0x7a
	.byte	0x10
	.4byte	0x983
	.byte	0xc
	.4byte	.LASF126
	.byte	0x9
	.byte	0x7c
	.byte	0xb
	.4byte	0x983
	.byte	0
	.byte	0xc
	.4byte	.LASF127
	.byte	0x9
	.byte	0x7d
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x937
	.byte	0x2
	.4byte	.LASF128
	.byte	0x9
	.byte	0x7e
	.byte	0x3
	.4byte	0x95b
	.byte	0x3
	.4byte	0x989
	.byte	0xe
	.4byte	.LASF129
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	0x9c2
	.byte	0xc
	.4byte	.LASF130
	.byte	0x1
	.byte	0x61
	.byte	0x17
	.4byte	0x9c2
	.byte	0
	.byte	0xc
	.4byte	.LASF131
	.byte	0x1
	.byte	0x62
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x99a
	.byte	0x2
	.4byte	.LASF132
	.byte	0x1
	.byte	0x63
	.byte	0x3
	.4byte	0x99a
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x73
	.byte	0x15
	.4byte	0x31
	.byte	0x8
	.byte	0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0x76
	.byte	0x14
	.4byte	0x9c8
	.byte	0x5
	.byte	0x3
	.4byte	xStart
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x76
	.byte	0x1d
	.4byte	0xa05
	.byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.byte	0x10
	.byte	0x4
	.4byte	0x9c8
	.byte	0x22
	.4byte	.LASF136
	.byte	0x1
	.byte	0x7a
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.byte	0x22
	.4byte	.LASF137
	.byte	0x1
	.byte	0x7b
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.byte	0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0x81
	.byte	0xf
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.byte	0x23
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x195
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb16
	.byte	0x24
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x195
	.byte	0x39
	.4byte	0xb1c
	.4byte	.LLST14
	.byte	0x25
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x197
	.byte	0xe
	.4byte	0xa05
	.4byte	.LLST15
	.byte	0x25
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x197
	.byte	0x2f
	.4byte	0xa05
	.4byte	.LLST16
	.byte	0x25
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x198
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST17
	.byte	0x25
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x199
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST18
	.byte	0x25
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x199
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST19
	.byte	0x25
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x19a
	.byte	0xc
	.4byte	0x943
	.4byte	.LLST20
	.byte	0x25
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x19b
	.byte	0x8
	.4byte	0x25
	.4byte	.LLST21
	.byte	0x25
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x19c
	.byte	0x15
	.4byte	0xb16
	.4byte	.LLST22
	.byte	0x26
	.4byte	.LVL50
	.4byte	0xd51
	.byte	0x26
	.4byte	.LVL69
	.4byte	0xd51
	.byte	0x26
	.4byte	.LVL70
	.4byte	0xd51
	.byte	0x26
	.4byte	.LVL74
	.4byte	0xd51
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x995
	.byte	0x3
	.4byte	0xb16
	.byte	0x27
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x158
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6c
	.byte	0x24
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x158
	.byte	0x36
	.4byte	0xa05
	.4byte	.LLST0
	.byte	0x25
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x15a
	.byte	0xe
	.4byte	0xa05
	.4byte	.LLST1
	.byte	0x28
	.string	"puc"
	.byte	0x1
	.2byte	0x15b
	.byte	0xa
	.4byte	0x983
	.4byte	.LLST2
	.byte	0
	.byte	0x29
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x152
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x29
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x14c
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x23
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1c
	.byte	0x2a
	.string	"pv"
	.byte	0x1
	.2byte	0x11c
	.byte	0x17
	.4byte	0x10f
	.4byte	.LLST11
	.byte	0x28
	.string	"puc"
	.byte	0x1
	.2byte	0x11e
	.byte	0xa
	.4byte	0x983
	.4byte	.LLST12
	.byte	0x25
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x11f
	.byte	0xe
	.4byte	0xa05
	.4byte	.LLST13
	.byte	0x26
	.4byte	.LVL41
	.4byte	0xd51
	.byte	0x26
	.4byte	.LVL44
	.4byte	0xd51
	.byte	0x26
	.4byte	.LVL45
	.4byte	0xd5d
	.byte	0x2b
	.4byte	.LVL46
	.4byte	0xb21
	.4byte	0xc12
	.byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x78
	.byte	0
	.byte	0x2d
	.4byte	.LVL48
	.4byte	0xd6a
	.byte	0
	.byte	0x2e
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x111
	.byte	0x7
	.4byte	0x10f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0xc99
	.byte	0x24
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x111
	.byte	0x1b
	.4byte	0x25
	.4byte	.LLST8
	.byte	0x24
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x111
	.byte	0x2f
	.4byte	0x25
	.4byte	.LLST9
	.byte	0x28
	.string	"pv"
	.byte	0x1
	.2byte	0x113
	.byte	0xb
	.4byte	0x10f
	.4byte	.LLST10
	.byte	0x2b
	.4byte	.LVL34
	.4byte	0xc99
	.4byte	0xc7d
	.byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LVL36
	.4byte	0xd77
	.byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x2c
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x2c
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
	.4byte	.LASF158
	.byte	0x1
	.byte	0x85
	.byte	0x7
	.4byte	0x10f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0xd51
	.byte	0x31
	.4byte	.LASF159
	.byte	0x1
	.byte	0x85
	.byte	0x1c
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x32
	.4byte	.LASF160
	.byte	0x1
	.byte	0x87
	.byte	0xe
	.4byte	0xa05
	.4byte	.LLST4
	.byte	0x32
	.4byte	.LASF161
	.byte	0x1
	.byte	0x87
	.byte	0x18
	.4byte	0xa05
	.4byte	.LLST5
	.byte	0x32
	.4byte	.LASF162
	.byte	0x1
	.byte	0x87
	.byte	0x2a
	.4byte	0xa05
	.4byte	.LLST6
	.byte	0x32
	.4byte	.LASF163
	.byte	0x1
	.byte	0x88
	.byte	0x7
	.4byte	0x10f
	.4byte	.LLST7
	.byte	0x33
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xd23
	.byte	0x34
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x103
	.byte	0x10
	.byte	0x26
	.4byte	.LVL12
	.4byte	0xd83
	.byte	0
	.byte	0x26
	.4byte	.LVL9
	.4byte	0xd5d
	.byte	0x26
	.4byte	.LVL11
	.4byte	0xd6a
	.byte	0x26
	.4byte	.LVL23
	.4byte	0xd6a
	.byte	0x26
	.4byte	.LVL29
	.4byte	0xb21
	.byte	0x26
	.4byte	.LVL31
	.4byte	0xd51
	.byte	0
	.byte	0x35
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xa
	.byte	0x95
	.byte	0x6
	.byte	0x36
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x502
	.byte	0x6
	.byte	0x36
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xb
	.2byte	0x538
	.byte	0xc
	.byte	0x35
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x36
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x103
	.byte	0x10
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
	.byte	0xe
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL51
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL58
	.4byte	.LVL62
	.2byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL50
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x83
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x7a
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL28
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LFE2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"xPortGetFreeHeapSize"
.LASF143:
	.string	"xTotalHeapSize"
.LASF37:
	.string	"_on_exit_args"
.LASF105:
	.string	"_wctomb_state"
.LASF99:
	.string	"_localtime_buf"
.LASF102:
	.string	"_r48"
.LASF107:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF169:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF51:
	.string	"_lbfsize"
.LASF49:
	.string	"_flags"
.LASF66:
	.string	"_errno"
.LASF132:
	.string	"BlockLink_t"
.LASF20:
	.string	"_LOCK_RECURSIVE_T"
.LASF53:
	.string	"_read"
.LASF109:
	.string	"_mbrlen_state"
.LASF68:
	.string	"_stdout"
.LASF12:
	.string	"_fpos_t"
.LASF44:
	.string	"_fns"
.LASF52:
	.string	"_cookie"
.LASF134:
	.string	"xStart"
.LASF26:
	.string	"_Bigint"
.LASF34:
	.string	"__tm_wday"
.LASF76:
	.string	"_result"
.LASF30:
	.string	"__tm_hour"
.LASF157:
	.string	"pvPortCalloc"
.LASF16:
	.string	"__count"
.LASF29:
	.string	"__tm_min"
.LASF118:
	.string	"_impure_ptr"
.LASF115:
	.string	"_nextf"
.LASF92:
	.string	"_rand48"
.LASF149:
	.string	"pxIterator"
.LASF77:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF98:
	.string	"_asctime_buf"
.LASF48:
	.string	"__sFILE"
.LASF25:
	.string	"_wds"
.LASF142:
	.string	"xTotalRegionSize"
.LASF163:
	.string	"pvReturn"
.LASF88:
	.string	"__FILE"
.LASF60:
	.string	"_offset"
.LASF165:
	.string	"vTaskSuspendAll"
.LASF136:
	.string	"xFreeBytesRemaining"
.LASF71:
	.string	"_emergency"
.LASF146:
	.string	"pxHeapRegion"
.LASF154:
	.string	"pxLink"
.LASF124:
	.string	"TrapNetCounter"
.LASF1:
	.string	"size_t"
.LASF28:
	.string	"__tm_sec"
.LASF120:
	.string	"suboptarg"
.LASF35:
	.string	"__tm_yday"
.LASF70:
	.string	"_inc"
.LASF43:
	.string	"_ind"
.LASF22:
	.string	"_next"
.LASF111:
	.string	"_mbsrtowcs_state"
.LASF127:
	.string	"xSizeInBytes"
.LASF129:
	.string	"A_BLOCK_LINK"
.LASF17:
	.string	"__value"
.LASF78:
	.string	"_p5s"
.LASF113:
	.string	"_wcsrtombs_state"
.LASF103:
	.string	"_mblen_state"
.LASF87:
	.string	"char"
.LASF31:
	.string	"__tm_mday"
.LASF84:
	.string	"_sig_func"
.LASF110:
	.string	"_mbrtowc_state"
.LASF83:
	.string	"_atexit0"
.LASF140:
	.string	"pxPreviousFreeBlock"
.LASF168:
	.string	"vApplicationMallocFailedHook"
.LASF21:
	.string	"_flock_t"
.LASF14:
	.string	"__wch"
.LASF91:
	.string	"_iobs"
.LASF122:
	.string	"uint8_t"
.LASF156:
	.string	"sizeOfElement"
.LASF56:
	.string	"_close"
.LASF144:
	.string	"xDefinedRegions"
.LASF145:
	.string	"xAddress"
.LASF74:
	.string	"__sdidinit"
.LASF67:
	.string	"_stdin"
.LASF100:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF46:
	.string	"_base"
.LASF164:
	.string	"vAssertCalled"
.LASF79:
	.string	"_freelist"
.LASF94:
	.string	"_mult"
.LASF19:
	.string	"__ULong"
.LASF112:
	.string	"_wcrtomb_state"
.LASF123:
	.string	"BaseType_t"
.LASF50:
	.string	"_file"
.LASF167:
	.string	"memset"
.LASF133:
	.string	"xHeapStructSize"
.LASF75:
	.string	"__cleanup"
.LASF18:
	.string	"_mbstate_t"
.LASF38:
	.string	"_fnargs"
.LASF126:
	.string	"pucStartAddress"
.LASF36:
	.string	"__tm_isdst"
.LASF160:
	.string	"pxBlock"
.LASF114:
	.string	"_h_errno"
.LASF162:
	.string	"pxNewBlockLink"
.LASF161:
	.string	"pxPreviousBlock"
.LASF148:
	.string	"pxBlockToInsert"
.LASF137:
	.string	"xMinimumEverFreeBytesRemaining"
.LASF32:
	.string	"__tm_mon"
.LASF138:
	.string	"xBlockAllocatedBit"
.LASF54:
	.string	"_write"
.LASF42:
	.string	"_atexit"
.LASF63:
	.string	"_mbstate"
.LASF173:
	.string	"prvInsertBlockIntoFreeList"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF166:
	.string	"xTaskResumeAll"
.LASF86:
	.string	"__sf"
.LASF24:
	.string	"_sign"
.LASF147:
	.string	"pxHeapRegions"
.LASF61:
	.string	"_data"
.LASF15:
	.string	"__wchb"
.LASF119:
	.string	"_global_impure_ptr"
.LASF33:
	.string	"__tm_year"
.LASF153:
	.string	"vPortFree"
.LASF97:
	.string	"_strtok_last"
.LASF171:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/freertos_riscv_ram"
.LASF117:
	.string	"_unused"
.LASF82:
	.string	"_new"
.LASF80:
	.string	"_cvtlen"
.LASF23:
	.string	"_maxwds"
.LASF106:
	.string	"_l64a_buf"
.LASF59:
	.string	"_blksize"
.LASF27:
	.string	"__tm"
.LASF62:
	.string	"_lock"
.LASF150:
	.string	"xPortGetMinimumEverFreeHeapSize"
.LASF8:
	.string	"long unsigned int"
.LASF90:
	.string	"_niobs"
.LASF2:
	.string	"wint_t"
.LASF121:
	.string	"int32_t"
.LASF39:
	.string	"_dso_handle"
.LASF81:
	.string	"_cvtbuf"
.LASF135:
	.string	"pxEnd"
.LASF4:
	.string	"unsigned char"
.LASF155:
	.string	"numElements"
.LASF141:
	.string	"xAlignedHeap"
.LASF108:
	.string	"_getdate_err"
.LASF95:
	.string	"_add"
.LASF139:
	.string	"pxFirstFreeBlockInRegion"
.LASF45:
	.string	"__sbuf"
.LASF89:
	.string	"_glue"
.LASF85:
	.string	"__sglue"
.LASF170:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/MemMang/heap_5.c"
.LASF104:
	.string	"_mbtowc_state"
.LASF73:
	.string	"_locale"
.LASF13:
	.string	"_ssize_t"
.LASF3:
	.string	"signed char"
.LASF65:
	.string	"_reent"
.LASF6:
	.string	"short unsigned int"
.LASF130:
	.string	"pxNextFreeBlock"
.LASF159:
	.string	"xWantedSize"
.LASF152:
	.string	"vPortDefineHeapRegions"
.LASF40:
	.string	"_fntypes"
.LASF125:
	.string	"HeapRegion"
.LASF47:
	.string	"_size"
.LASF11:
	.string	"_off_t"
.LASF58:
	.string	"_nbuf"
.LASF96:
	.string	"_unused_rand"
.LASF72:
	.string	"_unspecified_locale_info"
.LASF64:
	.string	"_flags2"
.LASF41:
	.string	"_is_cxa"
.LASF158:
	.string	"pvPortMalloc"
.LASF128:
	.string	"HeapRegion_t"
.LASF93:
	.string	"_seed"
.LASF101:
	.string	"_rand_next"
.LASF172:
	.string	"__locale_t"
.LASF55:
	.string	"_seek"
.LASF131:
	.string	"xBlockSize"
.LASF69:
	.string	"_stderr"
.LASF116:
	.string	"_nmalloc"
.LASF57:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
