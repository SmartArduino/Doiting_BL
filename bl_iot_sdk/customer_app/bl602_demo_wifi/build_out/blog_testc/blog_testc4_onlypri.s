	.file	"blog_testc4_onlypri.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blog_testc4_entry,"ax",@progbits
	.align	1
	.globl	blog_testc4_entry
	.type	blog_testc4_entry, @function
blog_testc4_entry:
.LFB5:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog_testc/blog_testc4_onlypri.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 40 5
	li	a0,4096
.LVL1:
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 40 5
	addi	a0,a0,904
	.loc 1 39 1
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
	.loc 1 42 71
	lui	s0,%hi(_fsymc_level_blog_testc)
	.loc 1 40 5
	call	aos_msleep
.LVL2:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 43
	.loc 1 42 48
	.loc 1 42 51 is_stmt 0
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L2
	.loc 1 42 120 discriminator 3
	lui	a4,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 42 99 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a4)
	bleu	a4,a5,.L3
.L8:
	.loc 1 43 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 43 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,2
	bgtu	a4,a5,.L5
.L4:
	.loc 1 43 185 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 43 165 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,2
	bgtu	a4,a5,.L10
	.loc 1 43 218 is_stmt 1
.LBB22:
.LBB23:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE23:
.LBE22:
	.loc 1 43 218
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L12
	.loc 1 43 307 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL3:
.L13:
	.loc 1 43 218 discriminator 12
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,43
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL4:
	j	.L9
.L3:
	.loc 1 42 188 discriminator 5
	lui	a4,%hi(_fsymp_level_blog_testc4)
	.loc 1 42 167 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(a4)
	bgtu	a4,a5,.L4
	.loc 1 42 221 is_stmt 1
.LBB24:
.LBB25:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE25:
.LBE24:
	.loc 1 42 221
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L6
	.loc 1 42 311 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL5:
.L7:
	.loc 1 42 221 discriminator 12
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	li	a4,42
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL6:
.L2:
	.loc 1 42 418 is_stmt 1 discriminator 1
	.loc 1 43 5 discriminator 1
	.loc 1 43 43 discriminator 1
	.loc 1 43 48 discriminator 1
	.loc 1 43 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L8
.L9:
	.loc 1 43 429 is_stmt 1 discriminator 1
	.loc 1 44 5 discriminator 1
	.loc 1 44 43 discriminator 1
	.loc 1 44 48 discriminator 1
	.loc 1 44 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L14
.L5:
	.loc 1 44 118
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 44 98
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,3
	bgtu	a4,a5,.L11
.L10:
	.loc 1 44 185 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 44 165 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,3
	bgtu	a4,a5,.L15
	.loc 1 44 218 is_stmt 1
.LBB26:
.LBB27:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE27:
.LBE26:
	.loc 1 44 218
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L17
	.loc 1 44 307 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL7:
.L18:
	.loc 1 44 218 discriminator 12
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC5)
	mv	a1,a0
	lui	a0,%hi(.LC6)
	li	a4,44
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL8:
.L14:
	.loc 1 44 429 is_stmt 1 discriminator 1
	.loc 1 45 5 discriminator 1
	.loc 1 45 43 discriminator 1
	.loc 1 45 48 discriminator 1
	.loc 1 45 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L19
.L11:
	.loc 1 45 120
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 45 99
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,4
	bgtu	a4,a5,.L16
.L15:
	.loc 1 45 188 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 45 167 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,4
	bgtu	a4,a5,.L20
	.loc 1 45 221 is_stmt 1
.LBB28:
.LBB29:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE29:
.LBE28:
	.loc 1 45 221
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L22
	.loc 1 45 311 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL9:
.L23:
	.loc 1 45 221 discriminator 12
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC7)
	mv	a1,a0
	lui	a0,%hi(.LC8)
	li	a4,45
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC7)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL10:
.L19:
	.loc 1 45 433 is_stmt 1 discriminator 1
	.loc 1 46 5 discriminator 1
	.loc 1 46 43 discriminator 1
	.loc 1 46 48 discriminator 1
	.loc 1 46 51 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L24
.L16:
	.loc 1 46 122
	lui	a5,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
	.loc 1 46 100
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(a5)
	li	a5,5
	bgtu	a4,a5,.L24
.L20:
	.loc 1 46 191 discriminator 5
	lui	a5,%hi(_fsymp_level_blog_testc4)
	.loc 1 46 169 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(a5)
	li	a5,5
	bgtu	a4,a5,.L24
	.loc 1 46 224 is_stmt 1
.LBB30:
.LBB31:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE31:
.LBE30:
	.loc 1 46 224
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L25
	.loc 1 46 315 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL11:
.L26:
	.loc 1 46 224 discriminator 12
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC9)
	mv	a1,a0
	lui	a0,%hi(.LC10)
	li	a4,46
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC9)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL12:
.L24:
	.loc 1 54 195 discriminator 13
	lui	s2,%hi(_fsymp_level_blog_testc4)
.LBB32:
.LBB33:
	.loc 2 151 31 discriminator 13
	lui	s3,%hi(TrapNetCounter)
.LBE33:
.LBE32:
	.loc 1 54 228 discriminator 13
	lui	s1,%hi(.LC0)
	lui	s6,%hi(.LC9)
	lui	s5,%hi(.LC10)
	.loc 1 53 225 discriminator 13
	lui	s7,%hi(.LC7)
	lui	s8,%hi(.LC8)
	.loc 1 54 126 discriminator 13
	lui	s4,%hi(_fsymf_level_blog_testcblog_testc4_onlypri)
.L27:
	.loc 1 46 437 is_stmt 1 discriminator 13
	.loc 1 48 5 discriminator 13
	.loc 1 49 9 discriminator 13
	li	a0,4096
	addi	a0,a0,904
	call	aos_msleep
.LVL13:
	.loc 1 50 9 discriminator 13
	.loc 1 50 47 discriminator 13
	.loc 1 50 52 discriminator 13
	.loc 1 50 55 is_stmt 0 discriminator 13
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,1
	bgtu	a4,a5,.L28
	.loc 1 50 103 discriminator 3
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s4)
	bleu	a4,a5,.L29
.L34:
	.loc 1 51 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s4)
	li	a5,2
	bgtu	a4,a5,.L31
.L30:
	.loc 1 51 169 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,2
	bgtu	a4,a5,.L36
	.loc 1 51 222 is_stmt 1
.LBB35:
.LBB36:
	.loc 2 151 5
.LBE36:
.LBE35:
	.loc 1 51 222 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L38
	.loc 1 51 311 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL14:
.L39:
	.loc 1 51 222 discriminator 12
	mv	a1,a0
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	li	a4,51
	addi	a3,s1,%lo(.LC0)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL15:
	j	.L35
.L6:
	.loc 1 42 340 discriminator 10
	call	xTaskGetTickCount
.LVL16:
	j	.L7
.L12:
	.loc 1 43 336 discriminator 10
	call	xTaskGetTickCount
.LVL17:
	j	.L13
.L17:
	.loc 1 44 336 discriminator 10
	call	xTaskGetTickCount
.LVL18:
	j	.L18
.L22:
	.loc 1 45 340 discriminator 10
	call	xTaskGetTickCount
.LVL19:
	j	.L23
.L25:
	.loc 1 46 344 discriminator 10
	call	xTaskGetTickCount
.LVL20:
	j	.L26
.L29:
	.loc 1 50 171 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(s2)
	bgtu	a4,a5,.L30
	.loc 1 50 225 is_stmt 1
.LBB37:
.LBB38:
	.loc 2 151 5
.LBE38:
.LBE37:
	.loc 1 50 225 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L32
	.loc 1 50 315 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL21:
.L33:
	.loc 1 50 225 discriminator 12
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC2)
	li	a4,50
	addi	a3,s1,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL22:
.L28:
	.loc 1 50 422 is_stmt 1 discriminator 1
	.loc 1 51 9 discriminator 1
	.loc 1 51 47 discriminator 1
	.loc 1 51 52 discriminator 1
	.loc 1 51 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,2
	bleu	a4,a5,.L34
.L35:
	.loc 1 51 433 is_stmt 1 discriminator 1
	.loc 1 52 9 discriminator 1
	.loc 1 52 47 discriminator 1
	.loc 1 52 52 discriminator 1
	.loc 1 52 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,3
	bgtu	a4,a5,.L40
.L31:
	.loc 1 52 102
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s4)
	li	a5,3
	bgtu	a4,a5,.L37
.L36:
	.loc 1 52 169 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,3
	bgtu	a4,a5,.L41
	.loc 1 52 222 is_stmt 1
.LBB39:
.LBB40:
	.loc 2 151 5
.LBE40:
.LBE39:
	.loc 1 52 222 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L43
	.loc 1 52 311 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL23:
.L44:
	.loc 1 52 222 discriminator 12
	lui	a2,%hi(.LC5)
	mv	a1,a0
	lui	a0,%hi(.LC6)
	li	a4,52
	addi	a3,s1,%lo(.LC0)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL24:
.L40:
	.loc 1 52 433 is_stmt 1 discriminator 1
	.loc 1 53 9 discriminator 1
	.loc 1 53 47 discriminator 1
	.loc 1 53 52 discriminator 1
	.loc 1 53 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,4
	bgtu	a4,a5,.L45
.L37:
	.loc 1 53 103
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s4)
	li	a5,4
	bgtu	a4,a5,.L42
.L41:
	.loc 1 53 171 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 53 225 is_stmt 1
.LBB41:
.LBB42:
	.loc 2 151 5
.LBE42:
.LBE41:
	.loc 1 53 225 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L48
	.loc 1 53 315 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL25:
.L49:
	.loc 1 53 225 discriminator 12
	mv	a1,a0
	li	a4,53
	addi	a3,s1,%lo(.LC0)
	addi	a2,s7,%lo(.LC7)
	addi	a0,s8,%lo(.LC8)
	call	bl_printk
.LVL26:
.L45:
	.loc 1 53 437 is_stmt 1 discriminator 1
	.loc 1 54 9 discriminator 1
	.loc 1 54 47 discriminator 1
	.loc 1 54 52 discriminator 1
	.loc 1 54 55 is_stmt 0 discriminator 1
	lbu	a4,%lo(_fsymc_level_blog_testc)(s0)
	li	a5,5
	bgtu	a4,a5,.L27
.L42:
	.loc 1 54 104
	lbu	a4,%lo(_fsymf_level_blog_testcblog_testc4_onlypri)(s4)
	li	a5,5
	bgtu	a4,a5,.L27
.L46:
	.loc 1 54 173 discriminator 5
	lbu	a4,%lo(_fsymp_level_blog_testc4)(s2)
	li	a5,5
	bgtu	a4,a5,.L27
	.loc 1 54 228 is_stmt 1
.LBB43:
.LBB34:
	.loc 2 151 5
.LBE34:
.LBE43:
	.loc 1 54 228 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s3)
	beq	a5,zero,.L50
	.loc 1 54 319 discriminator 9
	call	xTaskGetTickCountFromISR
.LVL27:
.L51:
	.loc 1 54 228 discriminator 12
	mv	a1,a0
	li	a4,54
	addi	a3,s1,%lo(.LC0)
	addi	a2,s6,%lo(.LC9)
	addi	a0,s5,%lo(.LC10)
	call	bl_printk
.LVL28:
	j	.L27
.L32:
	.loc 1 50 344 discriminator 10
	call	xTaskGetTickCount
.LVL29:
	j	.L33
.L38:
	.loc 1 51 340 discriminator 10
	call	xTaskGetTickCount
.LVL30:
	j	.L39
.L43:
	.loc 1 52 340 discriminator 10
	call	xTaskGetTickCount
.LVL31:
	j	.L44
.L48:
	.loc 1 53 344 discriminator 10
	call	xTaskGetTickCount
.LVL32:
	j	.L49
.L50:
	.loc 1 54 348 discriminator 10
	call	xTaskGetTickCount
.LVL33:
	j	.L51
	.cfi_endproc
.LFE5:
	.size	blog_testc4_entry, .-blog_testc4_entry
	.section	.text.blog_testc4_init,"ax",@progbits
	.align	1
	.globl	blog_testc4_init
	.type	blog_testc4_init, @function
blog_testc4_init:
.LFB6:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
	.loc 1 60 5
	li	a3,4096
	lui	a1,%hi(blog_testc4_entry)
	lui	a0,%hi(.LC11)
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 60 5
	addi	a3,a3,-2048
	li	a2,0
	addi	a1,a1,%lo(blog_testc4_entry)
	addi	a0,a0,%lo(.LC11)
	.loc 1 59 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 60 5
	call	aos_task_new
.LVL34:
	.loc 1 62 5 is_stmt 1
	.loc 1 63 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	blog_testc4_init, .-blog_testc4_init
	.globl	_fsymp_info_blog_testc4
	.comm	_fsymp_level_blog_testc4,1,1
	.globl	_fsymf_info_blog_testcblog_testc4_onlypri
	.comm	_fsymf_level_blog_testcblog_testc4_onlypri,1,1
	.comm	_fsymc_level_blog_testc,1,1
	.section	.rodata.blog_testc4_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"blog_testc4_onlypri.c"
	.zero	2
.LC1:
	.string	"DEBUG "
	.zero	1
.LC2:
	.string	"[%10u][%s: %s:%4d] blog_testc4 debug user\r\n"
.LC3:
	.string	"\033[32mINFO  \033[0m"
.LC4:
	.string	"[%10u][%s: %s:%4d] blog_testc4 info user\r\n"
	.zero	1
.LC5:
	.string	"\033[33mWARN  \033[0m"
.LC6:
	.string	"[%10u][%s: %s:%4d] blog_testc4 warn user\r\n"
	.zero	1
.LC7:
	.string	"\033[31mERROR \033[0m"
.LC8:
	.string	"[%10u][%s: %s:%4d] blog_testc4 error user\r\n"
.LC9:
	.string	"\033[35mASSERT\033[0m"
.LC10:
	.string	"[%10u][%s: %s:%4d] blog_testc4 assert user\r\n"
	.section	.rodata.blog_testc4_init.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"blog_testc4"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"blog_testc.blog_testc4_onlypri.blog_testc4"
	.zero	1
.LC13:
	.string	"blog_testc.blog_testc4_onlypri"
	.zero	1
.LC14:
	.string	"blog_testc"
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
	.word	.LC14
	.section	.static_blogfile_code.blog_testcblog_testc4_onlypri,"a"
	.align	2
	.type	_fsymf_info_blog_testcblog_testc4_onlypri, @object
	.size	_fsymf_info_blog_testcblog_testc4_onlypri, 8
_fsymf_info_blog_testcblog_testc4_onlypri:
	.word	_fsymf_level_blog_testcblog_testc4_onlypri
	.word	.LC13
	.section	.static_blogpri_code.blog_testc4,"a"
	.align	2
	.type	_fsymp_info_blog_testc4, @object
	.size	_fsymp_info_blog_testc4, 8
_fsymp_info_blog_testc4:
	.word	_fsymp_level_blog_testc4
	.word	.LC12
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
	.4byte	0xe72
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF149
	.byte	0xc
	.4byte	.LASF150
	.4byte	.LASF151
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x75
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0xd6
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x83
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xd6
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0xe6
	.byte	0x9
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x10a
	.byte	0xb
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xb4
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xe6
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF21
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x124
	.byte	0xd
	.4byte	.LASF27
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x196
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x196
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x75
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x75
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x19c
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x13c
	.byte	0x8
	.4byte	0x118
	.4byte	0x1ac
	.byte	0x9
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x22f
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x75
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x75
	.byte	0x14
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x75
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x75
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x274
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x274
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x274
	.byte	0x80
	.byte	0x11
	.4byte	.LASF41
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x118
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF42
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x118
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x116
	.4byte	0x284
	.byte	0x9
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2c7
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2c7
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2cd
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x22f
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x284
	.byte	0x8
	.4byte	0x2dd
	.4byte	0x2dd
	.byte	0x9
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2e3
	.byte	0x12
	.byte	0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x30c
	.byte	0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x30c
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.4byte	.LASF49
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x455
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x30c
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x33
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x2e4
	.byte	0x10
	.byte	0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x116
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x5d9
	.byte	0x20
	.byte	0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x603
	.byte	0x24
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x627
	.byte	0x28
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x641
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x2e4
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x30c
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x75
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x647
	.byte	0x40
	.byte	0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x657
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x2e4
	.byte	0x44
	.byte	0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x75
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0x90
	.byte	0x50
	.byte	0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x473
	.byte	0x54
	.byte	0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x130
	.byte	0x58
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x10a
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x75
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xa8
	.4byte	0x473
	.byte	0x14
	.4byte	0x473
	.byte	0x14
	.4byte	0x116
	.byte	0x14
	.4byte	0x5c7
	.byte	0x14
	.4byte	0x75
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x47e
	.byte	0x15
	.4byte	0x473
	.byte	0x16
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5c7
	.byte	0x17
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0x17
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6b3
	.byte	0x4
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6b3
	.byte	0x8
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6b3
	.byte	0xc
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8b3
	.byte	0x14
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x75
	.byte	0x30
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8c8
	.byte	0x34
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x75
	.byte	0x38
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8d9
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x196
	.byte	0x40
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x75
	.byte	0x44
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x196
	.byte	0x48
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8df
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x75
	.byte	0x50
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5c7
	.byte	0x54
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x88e
	.byte	0x58
	.byte	0x18
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2c7
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x284
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8f0
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x674
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x8fc
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5cd
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x15
	.4byte	0x5cd
	.byte	0xf
	.byte	0x4
	.4byte	0x455
	.byte	0x13
	.4byte	0xa8
	.4byte	0x5fd
	.byte	0x14
	.4byte	0x473
	.byte	0x14
	.4byte	0x116
	.byte	0x14
	.4byte	0x5fd
	.byte	0x14
	.4byte	0x75
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x5d4
	.byte	0xf
	.byte	0x4
	.4byte	0x5df
	.byte	0x13
	.4byte	0x9c
	.4byte	0x627
	.byte	0x14
	.4byte	0x473
	.byte	0x14
	.4byte	0x116
	.byte	0x14
	.4byte	0x9c
	.byte	0x14
	.4byte	0x75
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x609
	.byte	0x13
	.4byte	0x75
	.4byte	0x641
	.byte	0x14
	.4byte	0x473
	.byte	0x14
	.4byte	0x116
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x62d
	.byte	0x8
	.4byte	0x2c
	.4byte	0x657
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x667
	.byte	0x9
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x312
	.byte	0x19
	.4byte	.LASF90
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6ad
	.byte	0x17
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6ad
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0x17
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6b3
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x674
	.byte	0xf
	.byte	0x4
	.4byte	0x667
	.byte	0x19
	.4byte	.LASF93
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x6f2
	.byte	0x17
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x6f2
	.byte	0
	.byte	0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x6f2
	.byte	0x6
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x3a
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x3a
	.4byte	0x702
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x817
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x7c
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5c7
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x817
	.byte	0x8
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1ac
	.byte	0x24
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x75
	.byte	0x48
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x6e
	.byte	0x50
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6b9
	.byte	0x58
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x10a
	.byte	0x68
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x10a
	.byte	0x70
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x10a
	.byte	0x78
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x827
	.byte	0x80
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x837
	.byte	0x88
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x75
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x10a
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x10a
	.byte	0xac
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x10a
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x10a
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x10a
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x75
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5cd
	.4byte	0x827
	.byte	0x9
	.4byte	0x7c
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5cd
	.4byte	0x837
	.byte	0x9
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5cd
	.4byte	0x847
	.byte	0x9
	.4byte	0x7c
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x86e
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x86e
	.byte	0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x87e
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x30c
	.4byte	0x87e
	.byte	0x9
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0x88e
	.byte	0x9
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8b3
	.byte	0x1c
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x702
	.byte	0x1c
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x847
	.byte	0
	.byte	0x8
	.4byte	0x5cd
	.4byte	0x8c3
	.byte	0x9
	.4byte	0x7c
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF152
	.byte	0xf
	.byte	0x4
	.4byte	0x8c3
	.byte	0x1e
	.4byte	0x8d9
	.byte	0x14
	.4byte	0x473
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8ce
	.byte	0xf
	.byte	0x4
	.4byte	0x196
	.byte	0x1e
	.4byte	0x8f0
	.byte	0x14
	.4byte	0x75
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x8f6
	.byte	0xf
	.byte	0x4
	.4byte	0x8e5
	.byte	0x8
	.4byte	0x667
	.4byte	0x90c
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x473
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x479
	.byte	0x3
	.4byte	.LASF121
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF122
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x15
	.4byte	0x932
	.byte	0x3
	.4byte	.LASF123
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x926
	.byte	0x20
	.4byte	.LASF124
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x943
	.byte	0x21
	.4byte	.LASF153
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x9
	.byte	0x21
	.byte	0xe
	.4byte	0x998
	.byte	0x22
	.4byte	.LASF125
	.byte	0
	.byte	0x22
	.4byte	.LASF126
	.byte	0x1
	.byte	0x22
	.4byte	.LASF127
	.byte	0x2
	.byte	0x22
	.4byte	.LASF128
	.byte	0x3
	.byte	0x22
	.4byte	.LASF129
	.byte	0x4
	.byte	0x22
	.4byte	.LASF130
	.byte	0x5
	.byte	0x22
	.4byte	.LASF131
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF132
	.byte	0x9
	.byte	0x29
	.byte	0x3
	.4byte	0x95b
	.byte	0xd
	.4byte	.LASF133
	.byte	0x8
	.byte	0x9
	.byte	0x2b
	.byte	0x10
	.4byte	0x9cc
	.byte	0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x9cc
	.byte	0
	.byte	0xb
	.4byte	.LASF135
	.byte	0x9
	.byte	0x2d
	.byte	0xb
	.4byte	0x5c7
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x998
	.byte	0x3
	.4byte	.LASF136
	.byte	0x9
	.byte	0x2e
	.byte	0x3
	.4byte	0x9a4
	.byte	0x15
	.4byte	0x9d2
	.byte	0x23
	.4byte	.LASF138
	.byte	0xa
	.byte	0x37
	.byte	0x17
	.4byte	0x93e
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF137
	.byte	0xa
	.byte	0x44
	.byte	0xe
	.4byte	0x998
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_blog_testc
	.byte	0x23
	.4byte	.LASF139
	.byte	0xa
	.byte	0x45
	.byte	0x1a
	.4byte	0x9de
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_blog_testc
	.byte	0x24
	.4byte	.LASF140
	.byte	0xa
	.byte	0x52
	.byte	0xe
	.4byte	0x998
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_blog_testcblog_testc4_onlypri
	.byte	0x24
	.4byte	.LASF141
	.byte	0xa
	.byte	0x53
	.byte	0x13
	.4byte	0x9de
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_blog_testcblog_testc4_onlypri
	.byte	0x24
	.4byte	.LASF142
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0x998
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_level_blog_testc4
	.byte	0x24
	.4byte	.LASF143
	.byte	0x1
	.byte	0x24
	.byte	0x3a
	.4byte	0x9de
	.byte	0x5
	.byte	0x3
	.4byte	_fsymp_info_blog_testc4
	.byte	0x25
	.4byte	.LASF154
	.byte	0x1
	.byte	0x3a
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa4
	.byte	0x26
	.4byte	.LVL34
	.4byte	0xe36
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	blog_testc4_entry
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
	.4byte	.LASF155
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xe29
	.byte	0x29
	.string	"arg"
	.byte	0x1
	.byte	0x26
	.byte	0x1e
	.4byte	0x116
	.4byte	.LLST0
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0x2b
	.2byte	0x118
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x2a
	.2byte	0x11c
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x2c
	.2byte	0x118
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x2d
	.2byte	0x11c
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x2e
	.2byte	0x120
	.byte	0x2b
	.4byte	0xe29
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x36
	.2byte	0x124
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.byte	0x33
	.2byte	0x11c
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0x32
	.2byte	0x120
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB39
	.4byte	.LBE39-.LBB39
	.byte	0x1
	.byte	0x34
	.2byte	0x11c
	.byte	0x2a
	.4byte	0xe29
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x35
	.2byte	0x120
	.byte	0x2c
	.4byte	.LVL2
	.4byte	0xe42
	.4byte	0xb89
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x2d
	.4byte	.LVL3
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL4
	.4byte	0xe5c
	.4byte	0xbc1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2b
	.byte	0
	.byte	0x2d
	.4byte	.LVL5
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL6
	.4byte	0xe5c
	.4byte	0xbf9
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2a
	.byte	0
	.byte	0x2d
	.4byte	.LVL7
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL8
	.4byte	0xe5c
	.4byte	0xc31
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
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
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x2d
	.4byte	.LVL9
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL10
	.4byte	0xe5c
	.4byte	0xc69
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
	.4byte	.LC7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0
	.byte	0x2d
	.4byte	.LVL11
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL12
	.4byte	0xe5c
	.4byte	0xca1
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
	.4byte	.LC9
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.byte	0x2c
	.4byte	.LVL13
	.4byte	0xe42
	.4byte	0xcb6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.byte	0x2d
	.4byte	.LVL14
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL15
	.4byte	0xe5c
	.4byte	0xcee
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x33
	.byte	0
	.byte	0x2d
	.4byte	.LVL16
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL17
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL18
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL19
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL20
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL21
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL22
	.4byte	0xe5c
	.4byte	0xd53
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0x2d
	.4byte	.LVL23
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL24
	.4byte	0xe5c
	.4byte	0xd8b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
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
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x2d
	.4byte	.LVL25
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0xe5c
	.4byte	0xdc3
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
	.4byte	.LC7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.byte	0x2d
	.4byte	.LVL27
	.4byte	0xe4f
	.byte	0x2c
	.4byte	.LVL28
	.4byte	0xe5c
	.4byte	0xdfb
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
	.4byte	.LC9
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.byte	0x2d
	.4byte	.LVL29
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL30
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL31
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL32
	.4byte	0xe68
	.byte	0x2d
	.4byte	.LVL33
	.4byte	0xe68
	.byte	0
	.byte	0x2e
	.4byte	.LASF156
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x943
	.byte	0x3
	.byte	0x2f
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xb
	.byte	0x47
	.byte	0x9
	.byte	0x30
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x207
	.byte	0xa
	.byte	0x30
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.2byte	0x558
	.byte	0xc
	.byte	0x2f
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xd
	.byte	0x9e
	.byte	0x6
	.byte	0x30
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.2byte	0x547
	.byte	0xc
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
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF135:
	.string	"name"
.LASF38:
	.string	"_on_exit_args"
.LASF128:
	.string	"BLOG_LEVEL_WARN"
.LASF106:
	.string	"_wctomb_state"
.LASF154:
	.string	"blog_testc4_init"
.LASF103:
	.string	"_r48"
.LASF129:
	.string	"BLOG_LEVEL_ERROR"
.LASF108:
	.string	"_signal_buf"
.LASF10:
	.string	"unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF50:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF67:
	.string	"_errno"
.LASF134:
	.string	"level"
.LASF21:
	.string	"_LOCK_RECURSIVE_T"
.LASF54:
	.string	"_read"
.LASF110:
	.string	"_mbrlen_state"
.LASF69:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF142:
	.string	"_fsymp_level_blog_testc4"
.LASF45:
	.string	"_fns"
.LASF53:
	.string	"_cookie"
.LASF27:
	.string	"_Bigint"
.LASF35:
	.string	"__tm_wday"
.LASF77:
	.string	"_result"
.LASF122:
	.string	"uint32_t"
.LASF31:
	.string	"__tm_hour"
.LASF144:
	.string	"aos_task_new"
.LASF17:
	.string	"__count"
.LASF132:
	.string	"blog_level_t"
.LASF30:
	.string	"__tm_min"
.LASF119:
	.string	"_impure_ptr"
.LASF116:
	.string	"_nextf"
.LASF93:
	.string	"_rand48"
.LASF78:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF146:
	.string	"xTaskGetTickCountFromISR"
.LASF99:
	.string	"_asctime_buf"
.LASF49:
	.string	"__sFILE"
.LASF26:
	.string	"_wds"
.LASF89:
	.string	"__FILE"
.LASF147:
	.string	"bl_printk"
.LASF61:
	.string	"_offset"
.LASF133:
	.string	"_blog_info"
.LASF72:
	.string	"_emergency"
.LASF141:
	.string	"_fsymf_info_blog_testcblog_testc4_onlypri"
.LASF124:
	.string	"TrapNetCounter"
.LASF137:
	.string	"_fsymc_level_blog_testc"
.LASF29:
	.string	"__tm_sec"
.LASF127:
	.string	"BLOG_LEVEL_INFO"
.LASF36:
	.string	"__tm_yday"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF131:
	.string	"BLOG_LEVEL_NEVER"
.LASF23:
	.string	"_next"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF18:
	.string	"__value"
.LASF79:
	.string	"_p5s"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF104:
	.string	"_mblen_state"
.LASF88:
	.string	"char"
.LASF32:
	.string	"__tm_mday"
.LASF85:
	.string	"_sig_func"
.LASF111:
	.string	"_mbrtowc_state"
.LASF84:
	.string	"_atexit0"
.LASF22:
	.string	"_flock_t"
.LASF15:
	.string	"__wch"
.LASF92:
	.string	"_iobs"
.LASF57:
	.string	"_close"
.LASF75:
	.string	"__sdidinit"
.LASF155:
	.string	"blog_testc4_entry"
.LASF153:
	.string	"_blog_leve"
.LASF148:
	.string	"xTaskGetTickCount"
.LASF68:
	.string	"_stdin"
.LASF101:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF47:
	.string	"_base"
.LASF80:
	.string	"_freelist"
.LASF95:
	.string	"_mult"
.LASF20:
	.string	"__ULong"
.LASF138:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF113:
	.string	"_wcrtomb_state"
.LASF123:
	.string	"BaseType_t"
.LASF125:
	.string	"BLOG_LEVEL_ALL"
.LASF51:
	.string	"_file"
.LASF76:
	.string	"__cleanup"
.LASF150:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/stage/blog_testc/blog_testc4_onlypri.c"
.LASF19:
	.string	"_mbstate_t"
.LASF149:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF39:
	.string	"_fnargs"
.LASF37:
	.string	"__tm_isdst"
.LASF156:
	.string	"xPortIsInsideInterrupt"
.LASF115:
	.string	"_h_errno"
.LASF151:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/blog_testc"
.LASF33:
	.string	"__tm_mon"
.LASF55:
	.string	"_write"
.LASF43:
	.string	"_atexit"
.LASF64:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF87:
	.string	"__sf"
.LASF25:
	.string	"_sign"
.LASF140:
	.string	"_fsymf_level_blog_testcblog_testc4_onlypri"
.LASF62:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF120:
	.string	"_global_impure_ptr"
.LASF34:
	.string	"__tm_year"
.LASF143:
	.string	"_fsymp_info_blog_testc4"
.LASF100:
	.string	"_localtime_buf"
.LASF118:
	.string	"_unused"
.LASF83:
	.string	"_new"
.LASF81:
	.string	"_cvtlen"
.LASF24:
	.string	"_maxwds"
.LASF107:
	.string	"_l64a_buf"
.LASF60:
	.string	"_blksize"
.LASF28:
	.string	"__tm"
.LASF63:
	.string	"_lock"
.LASF7:
	.string	"long unsigned int"
.LASF91:
	.string	"_niobs"
.LASF11:
	.string	"wint_t"
.LASF121:
	.string	"int32_t"
.LASF145:
	.string	"aos_msleep"
.LASF40:
	.string	"_dso_handle"
.LASF130:
	.string	"BLOG_LEVEL_ASSERT"
.LASF82:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF109:
	.string	"_getdate_err"
.LASF96:
	.string	"_add"
.LASF46:
	.string	"__sbuf"
.LASF90:
	.string	"_glue"
.LASF86:
	.string	"__sglue"
.LASF98:
	.string	"_strtok_last"
.LASF105:
	.string	"_mbtowc_state"
.LASF139:
	.string	"_fsymc_info_blog_testc"
.LASF74:
	.string	"_locale"
.LASF14:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF126:
	.string	"BLOG_LEVEL_DEBUG"
.LASF41:
	.string	"_fntypes"
.LASF48:
	.string	"_size"
.LASF12:
	.string	"_off_t"
.LASF136:
	.string	"blog_info_t"
.LASF59:
	.string	"_nbuf"
.LASF97:
	.string	"_unused_rand"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF65:
	.string	"_flags2"
.LASF42:
	.string	"_is_cxa"
.LASF94:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF152:
	.string	"__locale_t"
.LASF56:
	.string	"_seek"
.LASF70:
	.string	"_stderr"
.LASF117:
	.string	"_nmalloc"
.LASF58:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
