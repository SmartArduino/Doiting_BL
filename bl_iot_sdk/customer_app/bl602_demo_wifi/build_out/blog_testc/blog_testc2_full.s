	.file	"blog_testc2_full.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.test_buf,"ax",@progbits
	.align	1
	.globl	test_buf
	.type	test_buf, @function
test_buf:
.LFB5:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog_testc/blog_testc2_full.c"
	.loc 1 39 1
	.cfi_startproc
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 43 5
.LVL0:
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 44 16
	lui	s0,%hi(.LANCHOR0)
	.loc 1 39 1
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 43 11
	li	a5,0
	.loc 1 44 16
	addi	a2,s0,%lo(.LANCHOR0)
	.loc 1 43 5
	li	a4,256
.LVL1:
.L2:
	.loc 1 44 9 is_stmt 1 discriminator 3
	.loc 1 44 16 is_stmt 0 discriminator 3
	add	a3,a2,a5
	sb	a5,0(a3)
	.loc 1 43 34 discriminator 3
	addi	a5,a5,1
.LVL2:
	.loc 1 43 5 discriminator 3
	bne	a5,a4,.L2
	.loc 1 47 5 is_stmt 1 discriminator 1
	.loc 1 47 43 discriminator 1
	.loc 1 47 48 discriminator 1
	.loc 1 47 71 is_stmt 0 discriminator 1
	lui	s1,%hi(_fsymc_level_blog_testc)
	.loc 1 47 51 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,1
.LVL3:
	bgtu	a4,a5,.L3
	.loc 1 47 120 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 47 99 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L4
.L9:
	.loc 1 48 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 48 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bleu	a4,a5,.L5
.L6:
	.loc 1 49 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 49 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bleu	a4,a5,.L11
.L12:
	.loc 1 50 120
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 50 99
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bleu	a4,a5,.L16
.L17:
	.loc 1 51 122
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 51 100
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,5
	bleu	a4,a5,.L21
.L1:
	.loc 1 52 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L4:
	.cfi_restore_state
	.loc 1 47 168 is_stmt 1
.LBB48:
.LBB49:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE49:
.LBE48:
	.loc 1 47 168
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L7
	.loc 1 47 236 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL4:
.L8:
	.loc 1 47 168 discriminator 10
	mv	a1,a0
	lui	s2,%hi(.LC0)
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	lui	a0,%hi(.LC3)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,47
	call	bl_printk
.LVL5:
	.loc 1 47 338 is_stmt 1 discriminator 10
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL6:
.L3:
	.loc 1 47 408 discriminator 1
	.loc 1 48 5 discriminator 1
	.loc 1 48 43 discriminator 1
	.loc 1 48 48 discriminator 1
	.loc 1 48 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,2
	bleu	a4,a5,.L9
.L10:
	.loc 1 48 421 is_stmt 1 discriminator 1
	.loc 1 49 5 discriminator 1
	.loc 1 49 43 discriminator 1
	.loc 1 49 48 discriminator 1
	.loc 1 49 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,3
	bleu	a4,a5,.L6
.L15:
	.loc 1 49 421 is_stmt 1 discriminator 1
	.loc 1 50 5 discriminator 1
	.loc 1 50 43 discriminator 1
	.loc 1 50 48 discriminator 1
	.loc 1 50 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,4
	bleu	a4,a5,.L12
.L20:
	.loc 1 50 423 is_stmt 1 discriminator 1
	.loc 1 51 5 discriminator 1
	.loc 1 51 43 discriminator 1
	.loc 1 51 48 discriminator 1
	.loc 1 51 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s1)
	li	a5,5
	bgtu	a4,a5,.L1
	j	.L17
.L7:
	.loc 1 47 265 discriminator 8
	call	xTaskGetTickCount
.LVL7:
	j	.L8
.L5:
	.loc 1 48 166 is_stmt 1
.LBB50:
.LBB51:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE51:
.LBE50:
	.loc 1 48 166
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L13
	.loc 1 48 234 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL8:
.L14:
	.loc 1 48 166 discriminator 10
	lui	s2,%hi(.LC0)
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,48
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL9:
	.loc 1 48 351 is_stmt 1 discriminator 10
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL10:
	j	.L10
.L13:
	.loc 1 48 263 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL11:
	j	.L14
.L11:
	.loc 1 49 166 is_stmt 1
.LBB52:
.LBB53:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE53:
.LBE52:
	.loc 1 49 166
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L18
	.loc 1 49 234 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL12:
.L19:
	.loc 1 49 166 discriminator 10
	lui	s2,%hi(.LC0)
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,49
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL13:
	.loc 1 49 351 is_stmt 1 discriminator 10
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL14:
	j	.L15
.L18:
	.loc 1 49 263 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL15:
	j	.L19
.L16:
	.loc 1 50 168 is_stmt 1
.LBB54:
.LBB55:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE55:
.LBE54:
	.loc 1 50 168
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L23
	.loc 1 50 236 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL16:
.L24:
	.loc 1 50 168 discriminator 10
	lui	s2,%hi(.LC0)
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC3)
	addi	a5,s2,%lo(.LC0)
	li	a4,50
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL17:
	.loc 1 50 353 is_stmt 1 discriminator 10
	li	a3,256
	addi	a2,s0,%lo(.LANCHOR0)
	li	a1,16
	addi	a0,s2,%lo(.LC0)
	call	blog_hexdump_out
.LVL18:
	j	.L20
.L23:
	.loc 1 50 265 is_stmt 0 discriminator 8
	call	xTaskGetTickCount
.LVL19:
	j	.L24
.L21:
	.loc 1 51 170 is_stmt 1
.LBB56:
.LBB57:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE57:
.LBE56:
	.loc 1 51 170
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L26
	.loc 1 51 238 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL20:
.L27:
	.loc 1 51 170 discriminator 10
	lui	s1,%hi(.LC0)
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC7)
	lui	a0,%hi(.LC3)
	addi	a5,s1,%lo(.LC0)
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC3)
	li	a4,51
	call	bl_printk
.LVL21:
	.loc 1 51 355 is_stmt 1 discriminator 10
	addi	a2,s0,%lo(.LANCHOR0)
	.loc 1 52 1 is_stmt 0 discriminator 10
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s2,0(sp)
	.cfi_restore 18
	.loc 1 51 355 discriminator 10
	addi	a0,s1,%lo(.LC0)
	.loc 1 52 1 discriminator 10
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 51 355 discriminator 10
	li	a3,256
	.loc 1 52 1 discriminator 10
	.loc 1 51 355 discriminator 10
	li	a1,16
	.loc 1 52 1 discriminator 10
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 51 355 discriminator 10
	tail	blog_hexdump_out
.LVL22:
.L26:
	.cfi_restore_state
	.loc 1 51 267 discriminator 8
	call	xTaskGetTickCount
.LVL23:
	j	.L27
	.cfi_endproc
.LFE5:
	.size	test_buf, .-test_buf
	.section	.text.blog_testc2_entry,"ax",@progbits
	.align	1
	.globl	blog_testc2_entry
	.type	blog_testc2_entry, @function
blog_testc2_entry:
.LFB6:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 55 5
	li	a0,4096
.LVL25:
	.loc 1 54 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 55 5
	addi	a0,a0,904
	.loc 1 54 1
	sw	s0,40(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 57 71
	lui	s0,%hi(_fsymc_level_blog_testc)
	.loc 1 55 5
	call	aos_msleep
.LVL26:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 43
	.loc 1 57 48
	.loc 1 57 51 is_stmt 0
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L31
	.loc 1 57 120 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 57 99 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L32
.L37:
	.loc 1 58 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 58 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bleu	a4,a5,.L33
.L34:
	.loc 1 59 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 59 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bleu	a4,a5,.L39
.L40:
	.loc 1 60 120
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 60 99
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bleu	a4,a5,.L44
.L48:
	.loc 1 60 372 is_stmt 1 discriminator 1
	.loc 1 62 5 discriminator 1
	.loc 1 62 43 discriminator 1
	.loc 1 62 48 discriminator 1
	.loc 1 62 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L51
	.loc 1 62 120 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 62 99 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a4)
	bleu	a4,a5,.L52
.L57:
	.loc 1 63 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 63 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,2
	bgtu	a4,a5,.L54
.L53:
	.loc 1 63 182 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 63 162 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,2
	bgtu	a4,a5,.L59
	.loc 1 63 215 is_stmt 1
.LBB58:
.LBB59:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE59:
.LBE58:
	.loc 1 63 215
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L61
	.loc 1 63 304 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL27:
.L62:
	.loc 1 63 215 discriminator 12
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC13)
	li	a4,63
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL28:
	j	.L58
.L32:
	.loc 1 57 168 is_stmt 1
.LBB60:
.LBB61:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE61:
.LBE60:
	.loc 1 57 168
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L35
	.loc 1 57 253 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL29:
.L36:
	.loc 1 57 168 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC8)
	li	a4,57
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL30:
.L31:
	.loc 1 57 357 is_stmt 1 discriminator 1
	.loc 1 58 5 discriminator 1
	.loc 1 58 43 discriminator 1
	.loc 1 58 48 discriminator 1
	.loc 1 58 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L37
.L38:
	.loc 1 58 369 is_stmt 1 discriminator 1
	.loc 1 59 5 discriminator 1
	.loc 1 59 43 discriminator 1
	.loc 1 59 48 discriminator 1
	.loc 1 59 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bleu	a4,a5,.L34
.L43:
	.loc 1 59 369 is_stmt 1 discriminator 1
	.loc 1 60 5 discriminator 1
	.loc 1 60 43 discriminator 1
	.loc 1 60 48 discriminator 1
	.loc 1 60 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L48
	j	.L40
.L35:
	.loc 1 57 282 discriminator 8
	call	xTaskGetTickCount
.LVL31:
	j	.L36
.L33:
	.loc 1 58 166 is_stmt 1
.LBB62:
.LBB63:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE63:
.LBE62:
	.loc 1 58 166
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L41
	.loc 1 58 250 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL32:
.L42:
	.loc 1 58 166 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC9)
	li	a4,58
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL33:
	j	.L38
.L41:
	.loc 1 58 279 discriminator 8
	call	xTaskGetTickCount
.LVL34:
	j	.L42
.L39:
	.loc 1 59 166 is_stmt 1
.LBB64:
.LBB65:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE65:
.LBE64:
	.loc 1 59 166
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L46
	.loc 1 59 250 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL35:
.L47:
	.loc 1 59 166 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC10)
	li	a4,59
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL36:
	j	.L43
.L46:
	.loc 1 59 279 discriminator 8
	call	xTaskGetTickCount
.LVL37:
	j	.L47
.L44:
	.loc 1 60 168 is_stmt 1
.LBB66:
.LBB67:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE67:
.LBE66:
	.loc 1 60 168
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L49
	.loc 1 60 253 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL38:
.L50:
	.loc 1 60 168 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC6)
	lui	a0,%hi(.LC11)
	li	a4,60
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL39:
	j	.L48
.L49:
	.loc 1 60 282 discriminator 8
	call	xTaskGetTickCount
.LVL40:
	j	.L50
.L52:
	.loc 1 62 185 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc2)
	.loc 1 62 164 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a4)
	bgtu	a4,a5,.L53
	.loc 1 62 218 is_stmt 1
.LBB68:
.LBB69:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE69:
.LBE68:
	.loc 1 62 218
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L55
	.loc 1 62 308 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL41:
.L56:
	.loc 1 62 218 discriminator 12
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC12)
	li	a4,62
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL42:
.L51:
	.loc 1 62 412 is_stmt 1 discriminator 1
	.loc 1 63 5 discriminator 1
	.loc 1 63 43 discriminator 1
	.loc 1 63 48 discriminator 1
	.loc 1 63 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L57
.L58:
	.loc 1 63 423 is_stmt 1 discriminator 1
	.loc 1 64 5 discriminator 1
	.loc 1 64 43 discriminator 1
	.loc 1 64 48 discriminator 1
	.loc 1 64 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L63
.L54:
	.loc 1 64 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 64 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,3
	bgtu	a4,a5,.L60
.L59:
	.loc 1 64 182 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 64 162 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,3
	bgtu	a4,a5,.L64
	.loc 1 64 215 is_stmt 1
.LBB70:
.LBB71:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE71:
.LBE70:
	.loc 1 64 215
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L66
	.loc 1 64 304 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL43:
.L67:
	.loc 1 64 215 discriminator 12
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC5)
	mv	a1,a0
	lui	a0,%hi(.LC14)
	li	a4,64
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL44:
.L63:
	.loc 1 64 423 is_stmt 1 discriminator 1
	.loc 1 65 5 discriminator 1
	.loc 1 65 43 discriminator 1
	.loc 1 65 48 discriminator 1
	.loc 1 65 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L68
.L60:
	.loc 1 65 120
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 65 99
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,4
	bgtu	a4,a5,.L65
.L64:
	.loc 1 65 185 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 65 164 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,4
	bgtu	a4,a5,.L69
	.loc 1 65 218 is_stmt 1
.LBB72:
.LBB73:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE73:
.LBE72:
	.loc 1 65 218
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L71
	.loc 1 65 308 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL45:
.L72:
	.loc 1 65 218 discriminator 12
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC6)
	mv	a1,a0
	lui	a0,%hi(.LC15)
	li	a4,65
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC6)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL46:
.L68:
	.loc 1 65 427 is_stmt 1 discriminator 1
	.loc 1 66 5 discriminator 1
	.loc 1 66 43 discriminator 1
	.loc 1 66 48 discriminator 1
	.loc 1 66 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L73
.L65:
	.loc 1 66 122
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc2_full)
	.loc 1 66 100
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(a5)
	li	a5,5
	bgtu	a4,a5,.L73
.L69:
	.loc 1 66 188 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 66 166 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,5
	bgtu	a4,a5,.L73
	.loc 1 66 221 is_stmt 1
.LBB74:
.LBB75:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE75:
.LBE74:
	.loc 1 66 221
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L74
	.loc 1 66 312 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL47:
.L75:
	.loc 1 66 221 discriminator 12
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC16)
	li	a4,66
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL48:
.L73:
	.loc 1 76 124 discriminator 13
	lui	s2,%hi(_fsymf_level_blog_testcblog_testc2_full)
.LBB76:
.LBB77:
	.loc 2 151 31 discriminator 13
	lui	s3,%hi(TrapNetCounter)
.LBE77:
.LBE76:
	.loc 1 76 172 discriminator 13
	lui	s1,%hi(.LC1)
	lui	s4,%hi(.LC6)
	lui	s7,%hi(.LC11)
	.loc 1 75 170 discriminator 13
	lui	s5,%hi(.LC5)
	lui	s8,%hi(.LC10)
	.loc 1 74 170 discriminator 13
	lui	s6,%hi(.LC4)
.L76:
	.loc 1 66 431 is_stmt 1 discriminator 13
	.loc 1 68 5 discriminator 13
	.loc 1 69 9 discriminator 13
	li	a0,4096
	addi	a0,a0,904
	call	aos_msleep
.LVL49:
	.loc 1 71 9 discriminator 13
	call	test_buf
.LVL50:
	.loc 1 73 9 discriminator 13
	.loc 1 73 47 discriminator 13
	.loc 1 73 52 discriminator 13
	.loc 1 73 55 is_stmt 0 discriminator 13
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L77
	.loc 1 73 103 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	bleu	a4,a5,.L78
.L83:
	.loc 1 74 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,2
	bleu	a4,a5,.L79
.L80:
	.loc 1 75 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,3
	bleu	a4,a5,.L85
.L86:
	.loc 1 76 103
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,4
	bleu	a4,a5,.L90
.L94:
	.loc 1 76 376 is_stmt 1 discriminator 1
	.loc 1 78 9 discriminator 1
	.loc 1 78 47 discriminator 1
	.loc 1 78 52 discriminator 1
	.loc 1 78 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L97
	.loc 1 78 103 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	bleu	a4,a5,.L98
.L103:
	.loc 1 79 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,2
	bgtu	a4,a5,.L100
.L99:
	.loc 1 79 186 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 79 166 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,2
	bgtu	a4,a5,.L105
	.loc 1 79 219 is_stmt 1
.LBB79:
.LBB80:
	.loc 2 151 5
.LBE80:
.LBE79:
	.loc 1 79 219 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L107
	.loc 1 79 308 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL51:
.L108:
	.loc 1 79 219 discriminator 12
	mv	a1,a0
	lui	a0,%hi(.LC13)
	li	a4,79
	addi	a3,s1,%lo(.LC1)
	addi	a2,s6,%lo(.LC4)
	addi	a0,a0,%lo(.LC13)
	call	bl_printk
.LVL52:
	j	.L104
.L55:
	.loc 1 62 337 discriminator 10
	call	xTaskGetTickCount
.LVL53:
	j	.L56
.L61:
	.loc 1 63 333 discriminator 10
	call	xTaskGetTickCount
.LVL54:
	j	.L62
.L66:
	.loc 1 64 333 discriminator 10
	call	xTaskGetTickCount
.LVL55:
	j	.L67
.L71:
	.loc 1 65 337 discriminator 10
	call	xTaskGetTickCount
.LVL56:
	j	.L72
.L74:
	.loc 1 66 341 discriminator 10
	call	xTaskGetTickCount
.LVL57:
	j	.L75
.L78:
	.loc 1 73 172 is_stmt 1
.LBB81:
.LBB82:
	.loc 2 151 5
.LBE82:
.LBE81:
	.loc 1 73 172 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L81
	.loc 1 73 257 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL58:
.L82:
	.loc 1 73 172 discriminator 10
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC8)
	li	a4,73
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL59:
.L77:
	.loc 1 73 361 is_stmt 1 discriminator 1
	.loc 1 74 9 discriminator 1
	.loc 1 74 47 discriminator 1
	.loc 1 74 52 discriminator 1
	.loc 1 74 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L83
.L84:
	.loc 1 74 373 is_stmt 1 discriminator 1
	.loc 1 75 9 discriminator 1
	.loc 1 75 47 discriminator 1
	.loc 1 75 52 discriminator 1
	.loc 1 75 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bleu	a4,a5,.L80
.L89:
	.loc 1 75 373 is_stmt 1 discriminator 1
	.loc 1 76 9 discriminator 1
	.loc 1 76 47 discriminator 1
	.loc 1 76 52 discriminator 1
	.loc 1 76 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L94
	j	.L86
.L81:
	.loc 1 73 286 discriminator 8
	call	xTaskGetTickCount
.LVL60:
	j	.L82
.L79:
	.loc 1 74 170 is_stmt 1
.LBB83:
.LBB84:
	.loc 2 151 5
.LBE84:
.LBE83:
	.loc 1 74 170 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L87
	.loc 1 74 254 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL61:
.L88:
	.loc 1 74 170 discriminator 10
	mv	a1,a0
	lui	a0,%hi(.LC9)
	li	a4,74
	addi	a3,s1,%lo(.LC1)
	addi	a2,s6,%lo(.LC4)
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL62:
	j	.L84
.L87:
	.loc 1 74 283 discriminator 8
	call	xTaskGetTickCount
.LVL63:
	j	.L88
.L85:
	.loc 1 75 170 is_stmt 1
.LBB85:
.LBB86:
	.loc 2 151 5
.LBE86:
.LBE85:
	.loc 1 75 170 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L92
	.loc 1 75 254 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL64:
.L93:
	.loc 1 75 170 discriminator 10
	mv	a1,a0
	li	a4,75
	addi	a3,s1,%lo(.LC1)
	addi	a2,s5,%lo(.LC5)
	addi	a0,s8,%lo(.LC10)
	call	bl_printk
.LVL65:
	j	.L89
.L92:
	.loc 1 75 283 discriminator 8
	call	xTaskGetTickCount
.LVL66:
	j	.L93
.L90:
	.loc 1 76 172 is_stmt 1
.LBB87:
.LBB78:
	.loc 2 151 5
.LBE78:
.LBE87:
	.loc 1 76 172 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L95
	.loc 1 76 257 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL67:
.L96:
	.loc 1 76 172 discriminator 10
	mv	a1,a0
	li	a4,76
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,s7,%lo(.LC11)
	call	bl_printk
.LVL68:
	j	.L94
.L95:
	.loc 1 76 286 discriminator 8
	call	xTaskGetTickCount
.LVL69:
	j	.L96
.L98:
	.loc 1 78 189 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc2)
	.loc 1 78 168 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a4)
	bgtu	a4,a5,.L99
	.loc 1 78 222 is_stmt 1
.LBB88:
.LBB89:
	.loc 2 151 5
.LBE89:
.LBE88:
	.loc 1 78 222 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L101
	.loc 1 78 312 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL70:
.L102:
	.loc 1 78 222 discriminator 12
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC12)
	li	a4,78
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL71:
.L97:
	.loc 1 78 416 is_stmt 1 discriminator 1
	.loc 1 79 9 discriminator 1
	.loc 1 79 47 discriminator 1
	.loc 1 79 52 discriminator 1
	.loc 1 79 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L103
.L104:
	.loc 1 79 427 is_stmt 1 discriminator 1
	.loc 1 80 9 discriminator 1
	.loc 1 80 47 discriminator 1
	.loc 1 80 52 discriminator 1
	.loc 1 80 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L109
.L100:
	.loc 1 80 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,3
	bgtu	a4,a5,.L106
.L105:
	.loc 1 80 186 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 80 166 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,3
	bgtu	a4,a5,.L110
	.loc 1 80 219 is_stmt 1
.LBB90:
.LBB91:
	.loc 2 151 5
.LBE91:
.LBE90:
	.loc 1 80 219 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L112
	.loc 1 80 308 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL72:
.L113:
	.loc 1 80 219 discriminator 12
	mv	a1,a0
	lui	a0,%hi(.LC14)
	li	a4,80
	addi	a3,s1,%lo(.LC1)
	addi	a2,s5,%lo(.LC5)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL73:
.L109:
	.loc 1 80 427 is_stmt 1 discriminator 1
	.loc 1 81 9 discriminator 1
	.loc 1 81 47 discriminator 1
	.loc 1 81 52 discriminator 1
	.loc 1 81 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L114
.L106:
	.loc 1 81 103
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,4
	bgtu	a4,a5,.L111
.L110:
	.loc 1 81 189 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 81 168 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,4
	bgtu	a4,a5,.L115
	.loc 1 81 222 is_stmt 1
.LBB92:
.LBB93:
	.loc 2 151 5
.LBE93:
.LBE92:
	.loc 1 81 222 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L117
	.loc 1 81 312 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL74:
.L118:
	.loc 1 81 222 discriminator 12
	mv	a1,a0
	lui	a0,%hi(.LC15)
	li	a4,81
	addi	a3,s1,%lo(.LC1)
	addi	a2,s4,%lo(.LC6)
	addi	a0,a0,%lo(.LC15)
	call	bl_printk
.LVL75:
.L114:
	.loc 1 81 431 is_stmt 1 discriminator 1
	.loc 1 82 9 discriminator 1
	.loc 1 82 47 discriminator 1
	.loc 1 82 52 discriminator 1
	.loc 1 82 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L76
.L111:
	.loc 1 82 104
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc2_full)(s2)
	li	a5,5
	bgtu	a4,a5,.L76
.L115:
	.loc 1 82 192 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc2)
	.loc 1 82 170 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc2)(a5)
	li	a5,5
	bgtu	a4,a5,.L76
	.loc 1 82 225 is_stmt 1
.LBB94:
.LBB95:
	.loc 2 151 5
.LBE95:
.LBE94:
	.loc 1 82 225 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L119
	.loc 1 82 316 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL76:
.L120:
	.loc 1 82 225 discriminator 12
	mv	a1,a0
	lui	a2,%hi(.LC7)
	lui	a0,%hi(.LC16)
	li	a4,82
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC16)
	call	bl_printk
.LVL77:
	j	.L76
.L101:
	.loc 1 78 341 discriminator 10
	call	xTaskGetTickCount
.LVL78:
	j	.L102
.L107:
	.loc 1 79 337 discriminator 10
	call	xTaskGetTickCount
.LVL79:
	j	.L108
.L112:
	.loc 1 80 337 discriminator 10
	call	xTaskGetTickCount
.LVL80:
	j	.L113
.L117:
	.loc 1 81 341 discriminator 10
	call	xTaskGetTickCount
.LVL81:
	j	.L118
.L119:
	.loc 1 82 345 discriminator 10
	call	xTaskGetTickCount
.LVL82:
	j	.L120
	.cfi_endproc
.LFE6:
	.size	blog_testc2_entry, .-blog_testc2_entry
	.section	.text.blog_testc2_init,"ax",@progbits
	.align	1
	.globl	blog_testc2_init
	.type	blog_testc2_init, @function
blog_testc2_init:
.LFB7:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
	.loc 1 88 5
	li	a3,4096
	lui	a1,%hi(blog_testc2_entry)
	lui	a0,%hi(.LC17)
	.loc 1 87 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 88 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc2_entry)
	addi	a0,a0,%lo(.LC17)
	.loc 1 87 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 88 5
	call	aos_task_new
.LVL83:
	.loc 1 90 5 is_stmt 1
	.loc 1 91 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	blog_testc2_init, .-blog_testc2_init
	.globl	_fsymp_info_blog_testc2
	.comm	_fsymp_level_blog_testc2,1,1
	.globl	_fsymf_info_blog_testcblog_testc2_full
	.comm	_fsymf_level_blog_testcblog_testc2_full,1,1
	.comm	_fsymc_level_blog_testc,1,1
	.section	.bss.buf.2793,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	buf.2793, @object
	.size	buf.2793, 256
buf.2793:
	.zero	256
	.section	.rodata.blog_testc2_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d] blog_testc2 debug\r\n"
	.zero	1
.LC9:
	.string	"[%10u][%s: %s:%4d] blog_testc2 info\r\n"
	.zero	2
.LC10:
	.string	"[%10u][%s: %s:%4d] blog_testc2 warn\r\n"
	.zero	2
.LC11:
	.string	"[%10u][%s: %s:%4d] blog_testc2 error\r\n"
	.zero	1
.LC12:
	.string	"[%10u][%s: %s:%4d] blog_testc2 debug user\r\n"
.LC13:
	.string	"[%10u][%s: %s:%4d] blog_testc2 info user\r\n"
	.zero	1
.LC14:
	.string	"[%10u][%s: %s:%4d] blog_testc2 warn user\r\n"
	.zero	1
.LC15:
	.string	"[%10u][%s: %s:%4d] blog_testc2 error user\r\n"
.LC16:
	.string	"[%10u][%s: %s:%4d] blog_testc2 assert user\r\n"
	.section	.rodata.blog_testc2_init.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"blog_testc2"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"blog_testc.blog_testc2_full.blog_testc2"
.LC19:
	.string	"blog_testc.blog_testc2_full"
.LC20:
	.string	"blog_testc"
	.section	.rodata.test_buf.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hexdumpbuf"
	.zero	1
.LC1:
	.string	"blog_testc2_full.c"
	.zero	1
.LC2:
	.string	"DEBUG "
	.zero	1
.LC3:
	.string	"[%10u][%s: %s:%4d] %s:\r\n"
	.zero	3
.LC4:
	.string	"\033[32mINFO  \033[0m"
.LC5:
	.string	"\033[33mWARN  \033[0m"
.LC6:
	.string	"\033[31mERROR \033[0m"
.LC7:
	.string	"\033[35mASSERT\033[0m"
	.section	.sdata2.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.blog_testc,"a"
	.align	2
	.type	_fsymc_info_blog_testc, @object
	.size	_fsymc_info_blog_testc, 8
_fsymc_info_blog_testc:
	.word	_fsymc_level_blog_testc
	.word	.LC20
	.section	.static_blogfile_code.blog_testcblog_testc2_full,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc2_full, @object
	.size	_fsymf_info_blog_testcblog_testc2_full, 8
_fsymf_info_blog_testcblog_testc2_full:
	.word	_fsymf_level_blog_testcblog_testc2_full
	.word	.LC19
	.section	.static_blogpri_code.blog_testc2,"a"
	.align	2
	.type	_fsymp_info_blog_testc2, @object
	.size	_fsymp_info_blog_testc2, 8
_fsymp_info_blog_testc2:
	.word	_fsymp_level_blog_testc2
	.word	.LC18
	.text
.Letext0:
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 9 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 10 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog/blog.h"
	.file 11 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/yloop/include/aos/kernel.h"
	.file 12 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 13 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/utils/include/utils_log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x140c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x81
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0xe2
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x8f
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xe2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0xf2
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x116
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xf2
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x130
	.byte	0xd
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1a2
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x81
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1a8
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x148
	.byte	0x8
	.4byte	0x124
	.4byte	0x1b8
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x23b
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x81
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x280
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x280
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x280
	.byte	0x80
	.byte	0x11
	.4byte	.LASF42
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x124
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF43
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x124
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x122
	.4byte	0x290
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2d3
	.byte	0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2d3
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2d9
	.byte	0x8
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x23b
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x290
	.byte	0x8
	.4byte	0x2e9
	.4byte	0x2e9
	.byte	0x9
	.4byte	0x88
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2ef
	.byte	0x12
	.byte	0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x318
	.byte	0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x318
	.byte	0
	.byte	0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38
	.byte	0xd
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x461
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x318
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f0
	.byte	0x10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x122
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x5e5
	.byte	0x20
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x60f
	.byte	0x24
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x633
	.byte	0x28
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x64d
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f0
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x318
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x81
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x653
	.byte	0x40
	.byte	0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x663
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f0
	.byte	0x44
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x81
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0x9c
	.byte	0x50
	.byte	0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x47f
	.byte	0x54
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x13c
	.byte	0x58
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x116
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x81
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xb4
	.4byte	0x47f
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x5d3
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x48a
	.byte	0x15
	.4byte	0x47f
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d3
	.byte	0x17
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6bf
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6bf
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8bf
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x81
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d4
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x81
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8e5
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a2
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x81
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a2
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8eb
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x81
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d3
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89a
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d3
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x290
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8fc
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x680
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x908
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5d9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x15
	.4byte	0x5d9
	.byte	0xf
	.byte	0x4
	.4byte	0x461
	.byte	0x13
	.4byte	0xb4
	.4byte	0x609
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0x609
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5e0
	.byte	0xf
	.byte	0x4
	.4byte	0x5eb
	.byte	0x13
	.4byte	0xa8
	.4byte	0x633
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0x14
	.4byte	0xa8
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x615
	.byte	0x13
	.4byte	0x81
	.4byte	0x64d
	.byte	0x14
	.4byte	0x47f
	.byte	0x14
	.4byte	0x122
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x639
	.byte	0x8
	.4byte	0x38
	.4byte	0x663
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x673
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x31e
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b9
	.byte	0x17
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b9
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6bf
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x680
	.byte	0xf
	.byte	0x4
	.4byte	0x673
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x6fe
	.byte	0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x6fe
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x6fe
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0x70e
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x823
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x88
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d3
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x823
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b8
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6c5
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x116
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x116
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x116
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x833
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x843
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x81
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x116
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x116
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x116
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x116
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x116
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x833
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x843
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x853
	.byte	0x9
	.4byte	0x88
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87a
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87a
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88a
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x318
	.4byte	0x88a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x89a
	.byte	0x9
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8bf
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x70e
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x853
	.byte	0
	.byte	0x8
	.4byte	0x5d9
	.4byte	0x8cf
	.byte	0x9
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF157
	.byte	0xf
	.byte	0x4
	.4byte	0x8cf
	.byte	0x1e
	.4byte	0x8e5
	.byte	0x14
	.4byte	0x47f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8da
	.byte	0xf
	.byte	0x4
	.4byte	0x1a2
	.byte	0x1e
	.4byte	0x8fc
	.byte	0x14
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x902
	.byte	0xf
	.byte	0x4
	.4byte	0x8f1
	.byte	0x8
	.4byte	0x673
	.4byte	0x918
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x47f
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x485
	.byte	0x3
	.4byte	.LASF122
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF123
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x15
	.4byte	0x94a
	.byte	0x3
	.4byte	.LASF125
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x93e
	.byte	0x20
	.4byte	.LASF126
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x95b
	.byte	0x21
	.4byte	.LASF158
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x9
	.byte	0x21
	.byte	0xe
	.4byte	0x9b0
	.byte	0x22
	.4byte	.LASF127
	.byte	0
	.byte	0x22
	.4byte	.LASF128
	.byte	0x1
	.byte	0x22
	.4byte	.LASF129
	.byte	0x2
	.byte	0x22
	.4byte	.LASF130
	.byte	0x3
	.byte	0x22
	.4byte	.LASF131
	.byte	0x4
	.byte	0x22
	.4byte	.LASF132
	.byte	0x5
	.byte	0x22
	.4byte	.LASF133
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF134
	.byte	0x9
	.byte	0x29
	.byte	0x3
	.4byte	0x973
	.byte	0xd
	.4byte	.LASF135
	.byte	0x8
	.byte	0x9
	.byte	0x2b
	.byte	0x10
	.4byte	0x9e4
	.byte	0xb
	.4byte	.LASF136
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x9e4
	.byte	0
	.byte	0xb
	.4byte	.LASF137
	.byte	0x9
	.byte	0x2d
	.byte	0xb
	.4byte	0x5d3
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9b0
	.byte	0x3
	.4byte	.LASF138
	.byte	0x9
	.byte	0x2e
	.byte	0x3
	.4byte	0x9bc
	.byte	0x15
	.4byte	0x9ea
	.byte	0x23
	.4byte	.LASF140
	.byte	0xa
	.byte	0x37
	.byte	0x17
	.4byte	0x956
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF139
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.4byte	0x9b0
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_blog_testc
	.byte	0x23
	.4byte	.LASF141
	.byte	0xa
	.byte	0x45
	.byte	0x1a
	.4byte	0x9f6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_blog_testc
	.byte	0x24
	.4byte	.LASF142
	.byte	0xa
	.byte	0x52
	.byte	0xe
	.4byte	0x9b0
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_blog_testcblog_testc2_full
	.byte	0x24
	.4byte	.LASF143
	.byte	0xa
	.byte	0x53
	.byte	0x13
	.4byte	0x9f6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc2_full
	.byte	0x24
	.4byte	.LASF144
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0x9b0
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_level_blog_testc2
	.byte	0x24
	.4byte	.LASF145
	.byte	0x1
	.byte	0x24
	.byte	0x3a
	.4byte	0x9f6
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_info_blog_testc2
	.byte	0x25
	.4byte	.LASF159
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xabc
	.byte	0x26
	.4byte	.LVL83
	.4byte	0x13c4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc2_entry
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF146
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x10d2
	.byte	0x29
	.string	"arg"
	.byte	0x1
	.byte	0x35
	.byte	0x1e
	.4byte	0x122
	.4byte	.LLST1
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0x3f
	.2byte	0x115
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0x39
	.byte	0xe2
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0x3a
	.byte	0xdf
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.byte	0x3b
	.byte	0xdf
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x3c
	.byte	0xe2
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0x3e
	.2byte	0x119
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB70
	.4byte	.LBE70-.LBB70
	.byte	0x1
	.byte	0x40
	.2byte	0x115
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.byte	0x41
	.2byte	0x119
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0x42
	.2byte	0x11d
	.byte	0x2c
	.4byte	0x13b7
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4c
	.byte	0xe6
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB79
	.4byte	.LBE79-.LBB79
	.byte	0x1
	.byte	0x4f
	.2byte	0x119
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB81
	.4byte	.LBE81-.LBB81
	.byte	0x1
	.byte	0x49
	.byte	0xe6
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x1
	.byte	0x4a
	.byte	0xe3
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB85
	.4byte	.LBE85-.LBB85
	.byte	0x1
	.byte	0x4b
	.byte	0xe3
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.byte	0x4e
	.2byte	0x11d
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.byte	0x50
	.2byte	0x119
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.byte	0x51
	.2byte	0x11d
	.byte	0x2a
	.4byte	0x13b7
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.byte	0x52
	.2byte	0x121
	.byte	0x2d
	.4byte	.LVL26
	.4byte	0x13d0
	.4byte	0xc21
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x2e
	.4byte	.LVL27
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL28
	.4byte	0x13ea
	.4byte	0xc59
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.byte	0x2e
	.4byte	.LVL29
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL30
	.4byte	0x13ea
	.4byte	0xc91
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x39
	.byte	0
	.byte	0x2e
	.4byte	.LVL31
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL32
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL33
	.4byte	0x13ea
	.4byte	0xcd2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.byte	0x2e
	.4byte	.LVL34
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL35
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL36
	.4byte	0x13ea
	.4byte	0xd13
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3b
	.byte	0
	.byte	0x2e
	.4byte	.LVL37
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL38
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL39
	.4byte	0x13ea
	.4byte	0xd54
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0x2e
	.4byte	.LVL40
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL41
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL42
	.4byte	0x13ea
	.4byte	0xd95
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x3e
	.byte	0
	.byte	0x2e
	.4byte	.LVL43
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL44
	.4byte	0x13ea
	.4byte	0xdcd
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x2e
	.4byte	.LVL45
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL46
	.4byte	0x13ea
	.4byte	0xe05
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0x2e
	.4byte	.LVL47
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL48
	.4byte	0x13ea
	.4byte	0xe3d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x42
	.byte	0
	.byte	0x2d
	.4byte	.LVL49
	.4byte	0x13d0
	.4byte	0xe52
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x2e
	.4byte	.LVL50
	.4byte	0x10d2
	.byte	0x2e
	.4byte	.LVL51
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL52
	.4byte	0x13ea
	.4byte	0xe93
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4f
	.byte	0
	.byte	0x2e
	.4byte	.LVL53
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL54
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL55
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL56
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL57
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL58
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL59
	.4byte	0x13ea
	.4byte	0xef8
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x49
	.byte	0
	.byte	0x2e
	.4byte	.LVL60
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL61
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL62
	.4byte	0x13ea
	.4byte	0xf39
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4a
	.byte	0
	.byte	0x2e
	.4byte	.LVL63
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL64
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL65
	.4byte	0x13ea
	.4byte	0xf7a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4b
	.byte	0
	.byte	0x2e
	.4byte	.LVL66
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL67
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL68
	.4byte	0x13ea
	.4byte	0xfbb
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4c
	.byte	0
	.byte	0x2e
	.4byte	.LVL69
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL70
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL71
	.4byte	0x13ea
	.4byte	0xffc
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x4e
	.byte	0
	.byte	0x2e
	.4byte	.LVL72
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL73
	.4byte	0x13ea
	.4byte	0x1034
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x2e
	.4byte	.LVL74
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL75
	.4byte	0x13ea
	.4byte	0x106c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x51
	.byte	0
	.byte	0x2e
	.4byte	.LVL76
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL77
	.4byte	0x13ea
	.4byte	0x10a4
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x52
	.byte	0
	.byte	0x2e
	.4byte	.LVL78
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL79
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL80
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL81
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL82
	.4byte	0x13f6
	.byte	0
	.byte	0x28
	.4byte	.LASF147
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x13a7
	.byte	0x2f
	.string	"i"
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x30
	.string	"buf"
	.byte	0x1
	.byte	0x29
	.byte	0x14
	.4byte	0x13a7
	.byte	0x5
	.byte	0x3
	.4byte	buf.2793
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0x2f
	.byte	0xd1
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x30
	.byte	0xcf
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x31
	.byte	0xcf
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0x32
	.byte	0xd1
	.byte	0x2b
	.4byte	0x13b7
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x33
	.byte	0xd3
	.byte	0x2e
	.4byte	.LVL4
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL5
	.4byte	0x13ea
	.4byte	0x1199
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2f
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2d
	.4byte	.LVL6
	.4byte	0x1403
	.4byte	0x11c5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2e
	.4byte	.LVL7
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL8
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL9
	.4byte	0x13ea
	.4byte	0x120f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2d
	.4byte	.LVL10
	.4byte	0x1403
	.4byte	0x123b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2e
	.4byte	.LVL11
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL12
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL13
	.4byte	0x13ea
	.4byte	0x1285
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x31
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2d
	.4byte	.LVL14
	.4byte	0x1403
	.4byte	0x12b1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2e
	.4byte	.LVL15
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL16
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL17
	.4byte	0x13ea
	.4byte	0x12fb
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2d
	.4byte	.LVL18
	.4byte	0x1403
	.4byte	0x1327
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2e
	.4byte	.LVL19
	.4byte	0x13f6
	.byte	0x2e
	.4byte	.LVL20
	.4byte	0x13dd
	.byte	0x2d
	.4byte	.LVL21
	.4byte	0x13ea
	.4byte	0x1371
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x31
	.4byte	.LVL22
	.4byte	0x1403
	.4byte	0x139d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xa
	.2byte	0x100
	.byte	0
	.byte	0x2e
	.4byte	.LVL23
	.4byte	0x13f6
	.byte	0
	.byte	0x8
	.4byte	0x932
	.4byte	0x13b7
	.byte	0x9
	.4byte	0x88
	.byte	0xff
	.byte	0
	.byte	0x32
	.4byte	.LASF160
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x95b
	.byte	0x3
	.byte	0x33
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xb
	.byte	0x47
	.byte	0x9
	.byte	0x34
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xb
	.2byte	0x207
	.byte	0xa
	.byte	0x34
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xc
	.2byte	0x558
	.byte	0xc
	.byte	0x33
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xd
	.byte	0x9e
	.byte	0x6
	.byte	0x34
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xc
	.2byte	0x547
	.byte	0xc
	.byte	0x33
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0xca
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
.LLST1:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
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
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF137:
	.string	"name"
.LASF39:
	.string	"_on_exit_args"
.LASF130:
	.string	"BLOG_LEVEL_WARN"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF131:
	.string	"BLOG_LEVEL_ERROR"
.LASF109:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF68:
	.string	"_errno"
.LASF136:
	.string	"level"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF55:
	.string	"_read"
.LASF111:
	.string	"_mbrlen_state"
.LASF70:
	.string	"_stdout"
.LASF142:
	.string	"_fsymf_level_blog_testcblog_testc2_full"
.LASF14:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF54:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF124:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF148:
	.string	"aos_task_new"
.LASF18:
	.string	"__count"
.LASF134:
	.string	"blog_level_t"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"_impure_ptr"
.LASF117:
	.string	"_nextf"
.LASF94:
	.string	"_rand48"
.LASF79:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF150:
	.string	"xTaskGetTickCountFromISR"
.LASF100:
	.string	"_asctime_buf"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF90:
	.string	"__FILE"
.LASF151:
	.string	"bl_printk"
.LASF62:
	.string	"_offset"
.LASF135:
	.string	"_blog_info"
.LASF73:
	.string	"_emergency"
.LASF126:
	.string	"TrapNetCounter"
.LASF139:
	.string	"_fsymc_level_blog_testc"
.LASF30:
	.string	"__tm_sec"
.LASF129:
	.string	"BLOG_LEVEL_INFO"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF133:
	.string	"BLOG_LEVEL_NEVER"
.LASF24:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF19:
	.string	"__value"
.LASF80:
	.string	"_p5s"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF89:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF85:
	.string	"_atexit0"
.LASF23:
	.string	"_flock_t"
.LASF16:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF122:
	.string	"uint8_t"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF158:
	.string	"_blog_leve"
.LASF152:
	.string	"xTaskGetTickCount"
.LASF69:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF48:
	.string	"_base"
.LASF81:
	.string	"_freelist"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF140:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF114:
	.string	"_wcrtomb_state"
.LASF125:
	.string	"BaseType_t"
.LASF127:
	.string	"BLOG_LEVEL_ALL"
.LASF52:
	.string	"_file"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF154:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF40:
	.string	"_fnargs"
.LASF38:
	.string	"__tm_isdst"
.LASF146:
	.string	"blog_testc2_entry"
.LASF160:
	.string	"xPortIsInsideInterrupt"
.LASF116:
	.string	"_h_errno"
.LASF156:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/blog_testc"
.LASF34:
	.string	"__tm_mon"
.LASF144:
	.string	"_fsymp_level_blog_testc2"
.LASF56:
	.string	"_write"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF63:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF145:
	.string	"_fsymp_info_blog_testc2"
.LASF35:
	.string	"__tm_year"
.LASF153:
	.string	"blog_hexdump_out"
.LASF101:
	.string	"_localtime_buf"
.LASF119:
	.string	"_unused"
.LASF4:
	.string	"__uint8_t"
.LASF84:
	.string	"_new"
.LASF82:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF108:
	.string	"_l64a_buf"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF159:
	.string	"blog_testc2_init"
.LASF64:
	.string	"_lock"
.LASF8:
	.string	"long unsigned int"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF155:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog_testc/blog_testc2_full.c"
.LASF123:
	.string	"int32_t"
.LASF149:
	.string	"aos_msleep"
.LASF41:
	.string	"_dso_handle"
.LASF132:
	.string	"BLOG_LEVEL_ASSERT"
.LASF83:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF91:
	.string	"_glue"
.LASF87:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF141:
	.string	"_fsymc_info_blog_testc"
.LASF75:
	.string	"_locale"
.LASF15:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF143:
	.string	"_fsymf_info_blog_testcblog_testc2_full"
.LASF128:
	.string	"BLOG_LEVEL_DEBUG"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF13:
	.string	"_off_t"
.LASF138:
	.string	"blog_info_t"
.LASF60:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF147:
	.string	"test_buf"
.LASF66:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF157:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
