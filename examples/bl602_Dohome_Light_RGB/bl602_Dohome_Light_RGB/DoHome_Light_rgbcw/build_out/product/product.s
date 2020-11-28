	.file	"product.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dohome_status_post,"ax",@progbits
	.align	1
	.globl	dohome_status_post
	.type	dohome_status_post, @function
dohome_status_post:
.LFB20:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/product.c"
	.loc 1 280 30
	.cfi_startproc
	.loc 1 281 2
.LVL0:
.LBB30:
.LBB31:
	.loc 1 32 2
	.loc 1 32 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0+14)
.LBE31:
.LBE30:
	.loc 1 282 2
	li	a0,1
.LBB33:
.LBB32:
	.loc 1 32 29
	sb	zero,%lo(.LANCHOR0+14)(a5)
.LVL1:
.LBE32:
.LBE33:
	.loc 1 282 2 is_stmt 1
	tail	product_upload_status
.LVL2:
	.cfi_endproc
.LFE20:
	.size	dohome_status_post, .-dohome_status_post
	.section	.text.dohome_status_delay_post,"ax",@progbits
	.align	1
	.globl	dohome_status_delay_post
	.type	dohome_status_delay_post, @function
dohome_status_delay_post:
.LFB21:
	.loc 1 285 36
	.cfi_startproc
	.loc 1 286 2
.LVL3:
.LBB34:
.LBB35:
	.loc 1 32 2
	.loc 1 32 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0+14)
.LBE35:
.LBE34:
	.loc 1 287 2
	li	a0,1
.LBB37:
.LBB36:
	.loc 1 32 29
	sb	zero,%lo(.LANCHOR0+14)(a5)
.LVL4:
.LBE36:
.LBE37:
	.loc 1 287 2 is_stmt 1
	tail	product_delay_upload_status
.LVL5:
	.cfi_endproc
.LFE21:
	.size	dohome_status_delay_post, .-dohome_status_delay_post
	.section	.text.product_set_control_way,"ax",@progbits
	.align	1
	.globl	product_set_control_way
	.type	product_set_control_way, @function
product_set_control_way:
.LFB5:
	.loc 1 31 52
	.cfi_startproc
.LVL6:
	.loc 1 32 2
	.loc 1 32 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0+14)
	sb	a0,%lo(.LANCHOR0+14)(a5)
	.loc 1 33 1
	ret
	.cfi_endproc
.LFE5:
	.size	product_set_control_way, .-product_set_control_way
	.section	.text.product_get_control_way,"ax",@progbits
	.align	1
	.globl	product_get_control_way
	.type	product_get_control_way, @function
product_get_control_way:
.LFB6:
	.loc 1 35 48 is_stmt 1
	.cfi_startproc
	.loc 1 36 2
	.loc 1 37 1 is_stmt 0
	lui	a5,%hi(.LANCHOR0+14)
	lbu	a0,%lo(.LANCHOR0+14)(a5)
	ret
	.cfi_endproc
.LFE6:
	.size	product_get_control_way, .-product_get_control_way
	.section	.text.product_get_status,"ax",@progbits
	.align	1
	.globl	product_get_status
	.type	product_get_status, @function
product_get_status:
.LFB7:
	.loc 1 39 41 is_stmt 1
	.cfi_startproc
	.loc 1 40 2
	.loc 1 40 9 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	.loc 1 41 1
	addi	a0,a0,%lo(.LANCHOR0)
	ret
	.cfi_endproc
.LFE7:
	.size	product_get_status, .-product_get_status
	.section	.text.product_save_status,"ax",@progbits
	.align	1
	.globl	product_save_status
	.type	product_save_status, @function
product_save_status:
.LFB8:
	.loc 1 43 31 is_stmt 1
	.cfi_startproc
	.loc 1 44 2
	.loc 1 43 31 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	lui	a1,%hi(.LANCHOR0)
	li	a2,16
	addi	a1,a1,%lo(.LANCHOR0)
	mv	a0,sp
	sw	ra,28(sp)
	.cfi_offset 1, -4
	call	memcpy
.LVL7:
.LBB38:
.LBB39:
	.loc 1 99 2 is_stmt 1
	lui	a0,%hi(.LC0)
	mv	a1,sp
	li	a2,16
	addi	a0,a0,%lo(.LC0)
	call	ef_set_env_blob
.LVL8:
.LBE39:
.LBE38:
	.loc 1 45 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	product_save_status, .-product_save_status
	.section	.text.product_status_factory,"ax",@progbits
	.align	1
	.globl	product_status_factory
	.type	product_status_factory, @function
product_status_factory:
.LFB9:
	.loc 1 48 52 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 49 2
	.loc 1 48 52 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	.cfi_offset 1, -4
.LBB40:
	.loc 1 51 10
	mv	a1,sp
.LBE40:
	.loc 1 49 4
	beq	a0,zero,.L9
	mv	a1,a0
.L9:
.LVL10:
	.loc 1 53 2 is_stmt 1
	.loc 1 53 19 is_stmt 0
	li	a5,1
	sb	a5,10(a1)
	.loc 1 54 2 is_stmt 1
	.loc 1 57 22 is_stmt 0
	li	a5,1000
	sh	a5,6(a1)
	.loc 1 54 20
	sh	zero,4(a1)
	.loc 1 55 2 is_stmt 1
	.loc 1 55 22 is_stmt 0
	sh	zero,2(a1)
	.loc 1 56 2 is_stmt 1
	.loc 1 56 21 is_stmt 0
	sh	zero,0(a1)
	.loc 1 57 2 is_stmt 1
	.loc 1 58 2
	.loc 1 58 23 is_stmt 0
	sh	zero,8(a1)
	.loc 1 59 2 is_stmt 1
	.loc 1 60 2
	.loc 1 59 25 is_stmt 0
	sh	zero,12(a1)
	.loc 1 61 2 is_stmt 1
	li	a2,16
	addi	a0,sp,16
	call	memcpy
.LVL11:
.LBB41:
.LBB42:
	.loc 1 99 2
	lui	a0,%hi(.LC0)
	addi	a1,sp,16
	li	a2,16
	addi	a0,a0,%lo(.LC0)
	call	ef_set_env_blob
.LVL12:
.LBE42:
.LBE41:
	.loc 1 62 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	product_status_factory, .-product_status_factory
	.section	.text.product_read_status,"ax",@progbits
	.align	1
	.globl	product_read_status
	.type	product_read_status, @function
product_read_status:
.LFB11:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 83 2
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 84 5
	mv	a1,a0
	.cfi_offset 8, -8
	.loc 1 82 1
	mv	s0,a0
	.loc 1 84 5
	lui	a0,%hi(.LC0)
.LVL14:
	.loc 1 83 9
	li	a5,16
	.loc 1 84 5
	addi	a3,sp,12
	li	a2,16
	addi	a0,a0,%lo(.LC0)
	.loc 1 82 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 83 9
	sw	a5,12(sp)
	.loc 1 84 2 is_stmt 1
	.loc 1 84 5 is_stmt 0
	call	ef_get_env_blob
.LVL15:
	.loc 1 84 4
	beq	a0,zero,.L13
.LVL16:
.LBB47:
.LBB48:
	.loc 1 85 3 is_stmt 1
	.loc 1 85 7 is_stmt 0
	lh	a2,4(s0)
	lh	a3,2(s0)
	lh	a4,6(s0)
	lh	a5,8(s0)
.LVL17:
.LBB49:
.LBB50:
	.loc 1 65 2 is_stmt 1
	.loc 1 65 4 is_stmt 0
	bgt	a2,zero,.L14
	.loc 1 66 3
	bgt	a3,zero,.L15
	.loc 1 68 3
	bgt	a4,zero,.L16
	.loc 1 69 3
	bgt	a5,zero,.L17
.LVL18:
.L13:
	.loc 1 77 3 is_stmt 1
.LBE50:
.LBE49:
	.loc 1 86 4
	mv	a0,s0
	call	product_status_factory
.LVL19:
.LBE48:
.LBE47:
	.loc 1 92 1 is_stmt 0
	j	.L12
.LVL20:
.L14:
.LBB54:
.LBB53:
.LBB52:
.LBB51:
	.loc 1 70 3
	li	a1,1000
	bgt	a2,a1,.L13
.L15:
	.loc 1 71 3
	li	a2,1000
.LVL21:
	bgt	a3,a2,.L13
.L16:
	.loc 1 73 3
	li	a3,1000
.LVL22:
	bgt	a4,a3,.L13
.L17:
	.loc 1 74 3
	li	a4,1000
.LVL23:
	bgt	a5,a4,.L13
.LVL24:
.L12:
.LBE51:
.LBE52:
.LBE53:
.LBE54:
	.loc 1 92 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL25:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	product_read_status, .-product_read_status
	.section	.text.product_write_status,"ax",@progbits
	.align	1
	.globl	product_write_status
	.type	product_write_status, @function
product_write_status:
.LFB12:
	.loc 1 98 1 is_stmt 1
	.cfi_startproc
	.loc 1 99 2
	mv	a1,a0
	lui	a0,%hi(.LC0)
	.loc 1 98 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 99 2
	li	a2,16
	addi	a0,a0,%lo(.LC0)
	.loc 1 98 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 99 2
	call	ef_set_env_blob
.LVL26:
	.loc 1 100 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	product_write_status, .-product_write_status
	.section	.text.product_doit_get_status_str,"ax",@progbits
	.align	1
	.globl	product_doit_get_status_str
	.type	product_doit_get_status_str, @function
product_doit_get_status_str:
.LFB15:
	.loc 1 160 51 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 161 2
	.loc 1 163 2
	.loc 1 160 51 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 163 32
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 160 51
	sw	s2,32(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 163 8
	lh	a0,4(s0)
.LVL28:
	.loc 1 160 51
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 163 8
	li	s1,4096
	addi	a4,s1,904
	li	a3,0
	li	a2,1000
	li	a1,0
	.loc 1 160 51
	sw	ra,44(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 163 8
	call	map
.LVL29:
	mv	s3,a0
.LVL30:
	.loc 1 164 2 is_stmt 1
	.loc 1 164 10 is_stmt 0
	lh	a0,2(s0)
.LVL31:
	addi	a4,s1,904
	li	a3,0
	li	a2,1000
	li	a1,0
	call	map
.LVL32:
	mv	s4,a0
.LVL33:
	.loc 1 165 2 is_stmt 1
	.loc 1 165 9 is_stmt 0
	lh	a0,0(s0)
.LVL34:
	addi	a4,s1,904
	li	a3,0
	li	a2,1000
	li	a1,0
	call	map
.LVL35:
	mv	s5,a0
.LVL36:
	.loc 1 171 2 is_stmt 1
	.loc 1 171 10 is_stmt 0
	lh	a0,6(s0)
.LVL37:
	addi	a4,s1,904
	li	a3,0
	li	a2,1000
	li	a1,0
	call	map
.LVL38:
	sw	a0,12(sp)
.LVL39:
	.loc 1 172 2 is_stmt 1
	.loc 1 172 11 is_stmt 0
	lh	a0,8(s0)
.LVL40:
	addi	a4,s1,904
	li	a3,0
	li	a2,1000
	li	a1,0
	call	map
.LVL41:
	.loc 1 174 2 is_stmt 1
	.loc 1 174 5 is_stmt 0
	lbu	a3,10(s0)
	li	a4,1
	lw	a5,12(sp)
	bne	a3,a4,.L26
	.loc 1 175 3 is_stmt 1
	.loc 1 180 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	.loc 1 175 3
	mv	a6,a0
	mv	a4,s5
	mv	a3,s4
	.loc 1 180 1
	lw	s5,20(sp)
	.cfi_restore 21
.LVL42:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL43:
	.loc 1 175 3
	mv	a2,s3
	mv	a0,s2
.LVL44:
	.loc 1 180 1
	lw	s3,28(sp)
	.cfi_restore 19
.LVL45:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL46:
	.loc 1 175 3
	lui	a1,%hi(.LC1)
	.loc 1 180 1
	.loc 1 175 3
	addi	a1,a1,%lo(.LC1)
	.loc 1 180 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL47:
	.loc 1 175 3
	tail	sprintf
.LVL48:
.L26:
	.cfi_restore_state
	.loc 1 178 3 is_stmt 1
	.loc 1 180 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s3,28(sp)
	.cfi_restore 19
.LVL49:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL50:
	lw	s5,20(sp)
	.cfi_restore 21
.LVL51:
	.loc 1 178 3
	mv	a0,s2
.LVL52:
	.loc 1 180 1
	lw	s2,32(sp)
	.cfi_restore 18
.LVL53:
	.loc 1 178 3
	lui	a1,%hi(.LC2)
	.loc 1 180 1
	.loc 1 178 3
	addi	a1,a1,%lo(.LC2)
	.loc 1 180 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL54:
	.loc 1 178 3
	tail	sprintf
.LVL55:
	.cfi_endproc
.LFE15:
	.size	product_doit_get_status_str, .-product_doit_get_status_str
	.section	.text.product_doit_set_status,"ax",@progbits
	.align	1
	.globl	product_doit_set_status
	.type	product_doit_set_status, @function
product_doit_set_status:
.LFB16:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 184 2
	.loc 1 185 2
	.loc 1 187 2
.LBB72:
.LBB73:
	.loc 1 122 16 is_stmt 0
	lui	a1,%hi(.LC3)
.LBE73:
.LBE72:
	.loc 1 183 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
.LBB93:
.LBB84:
	.loc 1 122 16
	addi	a1,a1,%lo(.LC3)
.LBE84:
.LBE93:
	.loc 1 183 1
	sw	s1,68(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 183 1
	mv	s1,a0
.LVL57:
.LBB94:
.LBB85:
	.loc 1 122 2 is_stmt 1
	.loc 1 122 16 is_stmt 0
	call	cJSON_GetObjectItem
.LVL58:
	.loc 1 123 2 is_stmt 1
	.loc 1 123 5 is_stmt 0
	bne	a0,zero,.L29
	.loc 1 124 3 is_stmt 1
	.loc 1 124 8
.LBB74:
.LBB75:
	.file 2 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE75:
.LBE74:
	.loc 1 124 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L30
	.loc 1 124 111
	call	xTaskGetTickCountFromISR
.LVL59:
.L31:
	.loc 1 124 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC6)
	li	a4,124
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
	call	bl_printk
.LVL60:
	.loc 1 125 3 is_stmt 1
.LBE85:
.LBE94:
	.loc 1 188 2
.LBB95:
.LBB86:
	.loc 1 125 10 is_stmt 0
	li	s0,10
.LVL61:
.L28:
.LBE86:
.LBE95:
	.loc 1 229 1
	mv	a0,s0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL62:
.L30:
	.cfi_restore_state
.LBB96:
.LBB87:
	.loc 1 124 140
	call	xTaskGetTickCount
.LVL63:
	j	.L31
.LVL64:
.L29:
	.loc 1 127 2 is_stmt 1
	.loc 1 128 17 is_stmt 0
	lui	a1,%hi(.LC7)
	.loc 1 127 26
	lw	s3,20(a0)
.LVL65:
	.loc 1 128 2 is_stmt 1
	.loc 1 128 17 is_stmt 0
	addi	a1,a1,%lo(.LC7)
	mv	a0,s1
.LVL66:
	call	cJSON_GetObjectItem
.LVL67:
	.loc 1 129 2 is_stmt 1
	.loc 1 129 5 is_stmt 0
	bne	a0,zero,.L33
	.loc 1 130 3 is_stmt 1
	.loc 1 130 8
.LBB76:
.LBB77:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE77:
.LBE76:
	.loc 1 130 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L34
	.loc 1 130 112
	call	xTaskGetTickCountFromISR
.LVL68:
.L35:
	.loc 1 130 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC8)
	li	a4,130
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL69:
	.loc 1 131 3 is_stmt 1
.LBE87:
.LBE96:
	.loc 1 188 2
.LBB97:
.LBB88:
	.loc 1 131 10 is_stmt 0
	li	s0,11
	j	.L28
.LVL70:
.L34:
	.loc 1 130 141
	call	xTaskGetTickCount
.LVL71:
	j	.L35
.LVL72:
.L33:
	.loc 1 133 2 is_stmt 1
	.loc 1 134 18 is_stmt 0
	lui	a1,%hi(.LC9)
	.loc 1 133 28
	lw	s5,20(a0)
.LVL73:
	.loc 1 134 2 is_stmt 1
	.loc 1 134 18 is_stmt 0
	addi	a1,a1,%lo(.LC9)
	mv	a0,s1
.LVL74:
	call	cJSON_GetObjectItem
.LVL75:
	.loc 1 135 2 is_stmt 1
	.loc 1 135 5 is_stmt 0
	bne	a0,zero,.L36
	.loc 1 136 3 is_stmt 1
	.loc 1 136 8
.LBB78:
.LBB79:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE79:
.LBE78:
	.loc 1 136 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L37
	.loc 1 136 113
	call	xTaskGetTickCountFromISR
.LVL76:
.L38:
	.loc 1 136 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC10)
	li	a4,136
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL77:
	.loc 1 137 3 is_stmt 1
.LBE88:
.LBE97:
	.loc 1 188 2
.LBB98:
.LBB89:
	.loc 1 137 10 is_stmt 0
	li	s0,12
	j	.L28
.LVL78:
.L37:
	.loc 1 136 142
	call	xTaskGetTickCount
.LVL79:
	j	.L38
.LVL80:
.L36:
	.loc 1 139 2 is_stmt 1
	.loc 1 145 18 is_stmt 0
	lui	a1,%hi(.LC11)
	.loc 1 139 30
	lw	s4,20(a0)
.LVL81:
	.loc 1 145 2 is_stmt 1
	.loc 1 145 18 is_stmt 0
	addi	a1,a1,%lo(.LC11)
	mv	a0,s1
.LVL82:
	call	cJSON_GetObjectItem
.LVL83:
	.loc 1 146 2 is_stmt 1
	.loc 1 146 5 is_stmt 0
	bne	a0,zero,.L39
	.loc 1 147 3 is_stmt 1
	.loc 1 147 8
.LBB80:
.LBB81:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE81:
.LBE80:
	.loc 1 147 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L40
	.loc 1 147 113
	call	xTaskGetTickCountFromISR
.LVL84:
.L41:
	.loc 1 147 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC12)
	li	a4,147
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL85:
	.loc 1 148 3 is_stmt 1
.LBE89:
.LBE98:
	.loc 1 188 2
.LBB99:
.LBB90:
	.loc 1 148 10 is_stmt 0
	li	s0,13
	j	.L28
.LVL86:
.L40:
	.loc 1 147 142
	call	xTaskGetTickCount
.LVL87:
	j	.L41
.LVL88:
.L39:
	.loc 1 150 2 is_stmt 1
	.loc 1 151 14 is_stmt 0
	lui	a1,%hi(.LC13)
	.loc 1 150 30
	lw	s6,20(a0)
.LVL89:
	.loc 1 151 2 is_stmt 1
	.loc 1 151 14 is_stmt 0
	addi	a1,a1,%lo(.LC13)
	mv	a0,s1
.LVL90:
	call	cJSON_GetObjectItem
.LVL91:
	.loc 1 152 2 is_stmt 1
	.loc 1 152 5 is_stmt 0
	bne	a0,zero,.L42
	.loc 1 153 3 is_stmt 1
	.loc 1 153 8
.LBB82:
.LBB83:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE83:
.LBE82:
	.loc 1 153 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L43
	.loc 1 153 109
	call	xTaskGetTickCountFromISR
.LVL92:
.L44:
	.loc 1 153 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC14)
	li	a4,153
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC14)
	call	bl_printk
.LVL93:
	.loc 1 154 3 is_stmt 1
.LBE90:
.LBE99:
	.loc 1 188 2
.LBB100:
.LBB91:
	.loc 1 154 10 is_stmt 0
	li	s0,14
	j	.L28
.LVL94:
.L43:
	.loc 1 153 138
	call	xTaskGetTickCount
.LVL95:
	j	.L44
.LVL96:
.L42:
	.loc 1 156 2 is_stmt 1
.LBE91:
.LBE100:
	.loc 1 191 15 is_stmt 0
	lui	a1,%hi(.LC15)
.LBB101:
.LBB92:
	.loc 1 156 27
	lw	s7,20(a0)
.LVL97:
	.loc 1 157 2 is_stmt 1
.LBE92:
.LBE101:
	.loc 1 188 2
	.loc 1 191 2
	.loc 1 191 15 is_stmt 0
	addi	a1,a1,%lo(.LC15)
	mv	a0,s1
	call	cJSON_GetObjectItem
.LVL98:
	.loc 1 192 2 is_stmt 1
	.loc 1 192 5 is_stmt 0
	beq	a0,zero,.L45
.LBB102:
	.loc 1 195 3 is_stmt 1
.LVL99:
	.loc 1 196 3
	.loc 1 196 6 is_stmt 0
	lw	a4,20(a0)
	li	a5,1
	.loc 1 197 4
	li	a0,1
.LVL100:
	.loc 1 196 6
	beq	a4,a5,.L56
	.loc 1 199 4 is_stmt 1
	li	a0,0
.L56:
	call	send_light_onoff
.LVL101:
.L55:
.LBE102:
	.loc 1 228 9 is_stmt 0 discriminator 4
	li	s0,0
	j	.L28
.LVL102:
.L45:
	.loc 1 194 2 is_stmt 1
	.loc 1 203 2
	.loc 1 203 19 is_stmt 0
	lui	a1,%hi(.LC16)
	addi	a1,a1,%lo(.LC16)
	mv	a0,s1
.LVL103:
	call	cJSON_GetObjectItem
.LVL104:
	.loc 1 204 2 is_stmt 1
	.loc 1 205 2
	.loc 1 204 6 is_stmt 0
	li	s0,1
	.loc 1 205 5
	beq	a0,zero,.L47
	.loc 1 206 3 is_stmt 1
	.loc 1 206 12 is_stmt 0
	lw	s0,20(a0)
.LVL105:
.L47:
	.loc 1 210 2 is_stmt 1
.LBB103:
.LBB104:
	.loc 1 106 2
	.loc 1 106 13 is_stmt 0
	li	s2,4096
	slli	a0,s3,16
.LVL106:
	addi	a2,s2,904
	li	a4,1000
	li	a3,0
	li	a1,0
	srai	a0,a0,16
	call	map
.LVL107:
	.loc 1 106 11
	slli	s3,a0,16
.LVL108:
	.loc 1 107 15
	slli	a0,s4,16
	addi	a2,s2,904
	li	a4,1000
	li	a3,0
	li	a1,0
	.loc 1 106 11
	srai	s3,s3,16
	.loc 1 107 15
	srai	a0,a0,16
	.loc 1 106 11
	sh	s3,24(sp)
	.loc 1 107 2 is_stmt 1
	.loc 1 107 15 is_stmt 0
	call	map
.LVL109:
	.loc 1 107 13
	slli	s4,a0,16
.LVL110:
	.loc 1 108 14
	slli	a0,s5,16
	addi	a2,s2,904
	li	a4,1000
	li	a3,0
	li	a1,0
	.loc 1 107 13
	srai	s4,s4,16
	.loc 1 108 14
	srai	a0,a0,16
	.loc 1 107 13
	sh	s4,22(sp)
	.loc 1 108 2 is_stmt 1
	.loc 1 108 14 is_stmt 0
	call	map
.LVL111:
	.loc 1 108 12
	slli	s5,a0,16
.LVL112:
	.loc 1 114 15
	slli	a0,s6,16
	addi	a2,s2,904
	li	a4,1000
	li	a3,0
	li	a1,0
	.loc 1 108 12
	srai	s5,s5,16
	.loc 1 114 15
	srai	a0,a0,16
	.loc 1 108 12
	sh	s5,20(sp)
	.loc 1 114 2 is_stmt 1
	.loc 1 114 15 is_stmt 0
	call	map
.LVL113:
	.loc 1 114 13
	slli	s6,a0,16
.LVL114:
	.loc 1 115 16
	slli	a0,s7,16
	addi	a2,s2,904
	li	a4,1000
	li	a3,0
	li	a1,0
	.loc 1 114 13
	srai	s6,s6,16
	.loc 1 115 16
	srai	a0,a0,16
	.loc 1 114 13
	sh	s6,26(sp)
	.loc 1 115 2 is_stmt 1
	.loc 1 115 16 is_stmt 0
	call	map
.LVL115:
	.loc 1 115 14
	slli	s2,a0,16
.LBE104:
.LBE103:
	.loc 1 212 14
	lui	a1,%hi(.LC17)
	mv	a0,s1
.LBB107:
.LBB105:
	.loc 1 115 14
	srai	s2,s2,16
.LBE105:
.LBE107:
	.loc 1 212 14
	addi	a1,a1,%lo(.LC17)
.LBB108:
.LBB106:
	.loc 1 115 14
	sh	s2,28(sp)
	.loc 1 116 5 is_stmt 1
.LVL116:
.LBE106:
.LBE108:
	.loc 1 212 2
	.loc 1 212 14 is_stmt 0
	call	cJSON_GetObjectItem
.LVL117:
	.loc 1 213 2 is_stmt 1
	.loc 1 214 2
	.loc 1 213 6 is_stmt 0
	li	s1,0
.LVL118:
	.loc 1 214 5
	beq	a0,zero,.L48
	.loc 1 215 3 is_stmt 1
	.loc 1 215 4 is_stmt 0
	lw	s1,20(a0)
.LVL119:
.L48:
	.loc 1 218 2 is_stmt 1
	.loc 1 218 4 is_stmt 0
	beq	s0,zero,.L49
	.loc 1 219 3 is_stmt 1
	.loc 1 219 8
.LBB109:
.LBB110:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE110:
.LBE109:
	.loc 1 219 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L50
	.loc 1 219 138 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL120:
.L51:
	.loc 1 219 8 discriminator 4
	mv	a1,a0
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC18)
	mv	a5,s5
	mv	a4,s4
	mv	a3,s3
	mv	a7,s2
	mv	a6,s6
	addi	a2,a2,%lo(.LC5)
	addi	a0,a0,%lo(.LC18)
	call	bl_printk
.LVL121:
	.loc 1 220 3 is_stmt 1 discriminator 4
	li	a0,2
	call	set_light_work_mode
.LVL122:
	.loc 1 221 3 discriminator 4
	mv	a5,s1
	mv	a4,s2
	mv	a3,s6
	mv	a2,s5
	mv	a1,s4
	mv	a0,s3
	call	send_light_data
.LVL123:
	j	.L55
.LVL124:
.L50:
	.loc 1 219 167 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL125:
	j	.L51
.LVL126:
.L49:
	.loc 1 223 3 is_stmt 1
	li	a0,0
.LVL127:
	call	set_light_work_mode
.LVL128:
	.loc 1 224 3
	.loc 1 224 16 is_stmt 0
	li	a5,1
	.loc 1 225 3
	li	a2,12
	addi	a1,sp,20
	mv	a0,sp
	.loc 1 224 16
	sb	a5,30(sp)
	.loc 1 225 3 is_stmt 1
	call	memcpy
.LVL129:
	mv	a0,sp
	call	send_light_data_pwm
.LVL130:
	j	.L28
	.cfi_endproc
.LFE16:
	.size	product_doit_set_status, .-product_doit_set_status
	.section	.text.product_dohomoe_update_status,"ax",@progbits
	.align	1
	.globl	product_dohomoe_update_status
	.type	product_dohomoe_update_status, @function
product_dohomoe_update_status:
.LFB17:
	.loc 1 231 40
	.cfi_startproc
	.loc 1 233 2
	.loc 1 234 5
	.loc 1 235 5
	.loc 1 231 40 is_stmt 0
	addi	sp,sp,-672
	.cfi_def_cfa_offset 672
	.loc 1 235 5
	mv	a0,sp
	.loc 1 231 40
	sw	ra,668(sp)
	.cfi_offset 1, -4
	.loc 1 235 5
	call	product_doit_get_status_str
.LVL131:
	.loc 1 236 5 is_stmt 1
	lui	a3,%hi(dev_key)
	lui	a2,%hi(dev_id)
	lui	a1,%hi(.LC19)
	mv	a4,sp
	addi	a3,a3,%lo(dev_key)
	addi	a2,a2,%lo(dev_id)
	addi	a1,a1,%lo(.LC19)
	addi	a0,sp,256
	call	sprintf
.LVL132:
	.loc 1 237 2
	.loc 1 237 9 is_stmt 0
	addi	a0,sp,256
	call	dohome_http_post
.LVL133:
	.loc 1 238 1
	lw	ra,668(sp)
	.cfi_restore 1
	addi	sp,sp,672
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	product_dohomoe_update_status, .-product_dohomoe_update_status
	.section	.text.set_preset_mode,"ax",@progbits
	.align	1
	.globl	set_preset_mode
	.type	set_preset_mode, @function
set_preset_mode:
.LFB18:
	.loc 1 240 33 is_stmt 1
	.cfi_startproc
.LVL134:
	.loc 1 241 2
	.loc 1 241 18 is_stmt 0
	lui	a1,%hi(.LC20)
	.loc 1 240 33
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 241 18
	addi	a1,a1,%lo(.LC20)
	.loc 1 240 33
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 241 18
	call	cJSON_GetObjectItem
.LVL135:
	.loc 1 242 2 is_stmt 1
	.loc 1 242 5 is_stmt 0
	bne	a0,zero,.L60
.LVL136:
.LBB115:
.LBB116:
	.loc 1 243 3 is_stmt 1
	.loc 1 243 8
.LBB117:
.LBB118:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE118:
.LBE117:
	.loc 1 243 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L61
	.loc 1 243 114
	call	xTaskGetTickCountFromISR
.LVL137:
.L62:
	.loc 1 243 8
	mv	a1,a0
	lui	a3,%hi(.LC4)
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	li	a4,243
	addi	a3,a3,%lo(.LC4)
	addi	a2,a2,%lo(.LC5)
	call	bl_printk
.LVL138:
	.loc 1 244 3 is_stmt 1
	.loc 1 243 8 is_stmt 0
	li	a0,101
.L59:
.LBE116:
.LBE115:
	.loc 1 250 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL139:
.L61:
	.cfi_restore_state
.LBB120:
.LBB119:
	.loc 1 243 143
	call	xTaskGetTickCount
.LVL140:
	j	.L62
.LVL141:
.L60:
.LBE119:
.LBE120:
	.loc 1 246 2 is_stmt 1
	.loc 1 246 6 is_stmt 0
	lw	s0,20(a0)
.LVL142:
	.loc 1 247 2 is_stmt 1
	li	a0,3
.LVL143:
	call	set_light_work_mode
.LVL144:
	.loc 1 248 2
	andi	a0,s0,0xff
	call	set_ambilight_mode
.LVL145:
	.loc 1 249 2
	.loc 1 249 9 is_stmt 0
	li	a0,0
	j	.L59
	.cfi_endproc
.LFE18:
	.size	set_preset_mode, .-set_preset_mode
	.section	.text.dohome_product_run_cmd,"ax",@progbits
	.align	1
	.globl	dohome_product_run_cmd
	.type	dohome_product_run_cmd, @function
dohome_product_run_cmd:
.LFB19:
	.loc 1 256 64 is_stmt 1
	.cfi_startproc
.LVL146:
	.loc 1 257 2
	.loc 1 258 2
	li	a4,7
	beq	a0,a4,.L66
	.loc 1 256 64 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a5,a0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 258 2
	li	a4,25
	mv	a0,a2
.LVL147:
	beq	a5,a4,.L67
	li	a4,6
	bne	a5,a4,.L68
	.loc 1 261 3 is_stmt 1
	.loc 1 278 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 261 12
	mv	a0,a1
	.loc 1 278 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 261 12
	tail	product_doit_set_status
.LVL148:
.L67:
	.cfi_restore_state
	.loc 1 265 3 is_stmt 1
	call	product_doit_get_status_str
.LVL149:
	.loc 1 266 3
	.loc 1 257 6 is_stmt 0
	li	a0,200
.LVL150:
.L65:
	.loc 1 278 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL151:
.L66:
	.loc 1 269 3 is_stmt 1
	.loc 1 269 12 is_stmt 0
	mv	a0,a1
.LVL152:
	tail	set_preset_mode
.LVL153:
.L68:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.loc 1 273 3 is_stmt 1
	.loc 1 273 8
.LBB121:
.LBB122:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LVL154:
.LBE122:
.LBE121:
	.loc 1 273 8
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L70
	.loc 1 273 102 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL155:
.L71:
	.loc 1 273 8 discriminator 4
	mv	a1,a0
	lui	a2,%hi(.LC5)
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	addi	a2,a2,%lo(.LC5)
	call	bl_printk
.LVL156:
	.loc 1 274 3 is_stmt 1 discriminator 4
	.loc 1 275 3 discriminator 4
	.loc 1 274 10 is_stmt 0 discriminator 4
	li	a0,26
	.loc 1 277 2 is_stmt 1 discriminator 4
	.loc 1 277 9 is_stmt 0 discriminator 4
	j	.L65
.LVL157:
.L70:
	.loc 1 273 131 discriminator 2
	call	xTaskGetTickCount
.LVL158:
	j	.L71
	.cfi_endproc
.LFE19:
	.size	dohome_product_run_cmd, .-dohome_product_run_cmd
	.section	.text.product_init,"ax",@progbits
	.align	1
	.globl	product_init
	.type	product_init, @function
product_init:
.LFB22:
	.loc 1 290 24 is_stmt 1
	.cfi_startproc
	.loc 1 292 2
	.loc 1 290 24 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 292 2
	call	light_init
.LVL159:
	.loc 1 294 2 is_stmt 1
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	product_read_status
.LVL160:
	.loc 1 296 2
	call	product_status_upload_init
.LVL161:
	.loc 1 298 5
	lui	a0,%hi(dohome_status_delay_post)
	addi	a0,a0,%lo(dohome_status_delay_post)
	call	dohome_reg_delay_post_cb
.LVL162:
	.loc 1 299 5
	.loc 1 300 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 299 5
	lui	a0,%hi(dohome_status_post)
	.loc 1 300 1
	.loc 1 299 5
	addi	a0,a0,%lo(dohome_status_post)
	.loc 1 300 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 299 5
	tail	dohome_reg_post_cb
.LVL163:
	.cfi_endproc
.LFE22:
	.size	product_init, .-product_init
	.section	.bss.product_status,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	product_status, @object
	.size	product_status, 16
product_status:
	.zero	16
	.section	.rodata.dohome_product_run_cmd.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"\033[32m[%10u][%s] unknown command!\033[0m\r\n"
	.section	.rodata.product_dohomoe_update_status.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"cmd=stat&device_id=%s&device_key=%s&status=%s"
	.section	.rodata.product_doit_get_status_str.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"{\"res\":0,\"cmd\":25,\"r\":%d,\"g\":%d,\"b\":%d,\"w\":%d,\"m\":%d,\"type\":1}\r\n"
	.zero	3
.LC2:
	.string	"{\"res\":0,\"cmd\":25,\"r\":0,\"g\":0,\"b\":0,\"w\":0,\"m\":0,\"type\":1}\r\n"
	.section	.rodata.product_doit_set_status.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"r"
	.zero	2
.LC4:
	.string	"product.c"
	.zero	2
.LC5:
	.string	"product"
.LC6:
	.string	"\033[31m[%10u][%s %s:%4d] get red failed\r\n\033[0m\r\n"
	.zero	2
.LC7:
	.string	"b"
	.zero	2
.LC8:
	.string	"\033[31m[%10u][%s %s:%4d] get blue failed\r\n\033[0m\r\n"
	.zero	1
.LC9:
	.string	"g"
	.zero	2
.LC10:
	.string	"\033[31m[%10u][%s %s:%4d] get green failed\r\n\033[0m\r\n"
.LC11:
	.string	"w"
	.zero	2
.LC12:
	.string	"\033[31m[%10u][%s %s:%4d] get white failed\r\n\033[0m\r\n"
.LC13:
	.string	"m"
	.zero	2
.LC14:
	.string	"\033[31m[%10u][%s %s:%4d] get m failed\r\n\033[0m\r\n"
.LC15:
	.string	"on"
	.zero	1
.LC16:
	.string	"smooth"
	.zero	1
.LC17:
	.string	"t"
	.zero	2
.LC18:
	.string	"\033[32m[%10u][%s] \n--------r: %d    g: %d    b: %d    w: %d     y: %d\033[0m\r\n"
	.section	.rodata.product_save_status.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"product_status"
	.section	.rodata.set_preset_mode.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"index"
	.zero	2
.LC21:
	.string	"\033[31m[%10u][%s %s:%4d] get offset failed\r\n\033[0m\r\n"
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/cjson/include/cJSON.h"
	.file 10 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_driver.h"
	.file 11 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h"
	.file 12 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_device_info.h"
	.file 13 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product_upload.h"
	.file 14 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 15 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 16 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 17 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_upload.h"
	.file 18 "/b-l/bl_iot_sdk/components/stage/easyflash4/inc/easyflash.h"
	.file 19 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/driver/include/doit_light_Ambilight.h"
	.file 20 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_utils.h"
	.file 21 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1a3e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF211
	.byte	0xc
	.4byte	.LASF212
	.4byte	.LASF213
	.4byte	.Ldebug_ranges0+0xf0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
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
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0xd8
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x81
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
	.4byte	0x9b
	.byte	0x7
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xee
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0xfe
	.byte	0x9
	.4byte	0x88
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
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xcc
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xfe
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x81
	.byte	0x3
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
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF28
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
	.4byte	0x88
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
	.4byte	0x81
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x81
	.byte	0x4
	.byte	0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x81
	.byte	0x10
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x81
	.byte	0x18
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x81
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x81
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
	.4byte	0x88
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
	.4byte	0x81
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
	.4byte	0x88
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
	.4byte	0x81
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x38
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
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x4b
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
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
	.4byte	0x81
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x621
	.byte	0x13
	.4byte	0x81
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
	.4byte	0x38
	.4byte	0x66f
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x67f
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x5
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
	.4byte	0x81
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
	.4byte	0x52
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x52
	.4byte	0x71a
	.byte	0x9
	.4byte	0x88
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
	.4byte	0x88
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
	.4byte	0x81
	.byte	0x48
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
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
	.4byte	0x81
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
	.4byte	0x81
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x83f
	.byte	0x9
	.4byte	0x88
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x84f
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0x85f
	.byte	0x9
	.4byte	0x88
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
	.4byte	0x88
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x8a6
	.byte	0x9
	.4byte	0x88
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
	.4byte	0x88
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF214
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
	.4byte	0x81
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
	.4byte	0x88
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
	.byte	0x3
	.4byte	.LASF123
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0x20
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF125
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0xd
	.4byte	.LASF126
	.byte	0x28
	.byte	0x9
	.byte	0x2e
	.byte	0x10
	.4byte	0x9d8
	.byte	0xb
	.4byte	.LASF127
	.byte	0x9
	.byte	0x2f
	.byte	0x10
	.4byte	0x9d8
	.byte	0
	.byte	0xb
	.4byte	.LASF128
	.byte	0x9
	.byte	0x2f
	.byte	0x16
	.4byte	0x9d8
	.byte	0x4
	.byte	0xb
	.4byte	.LASF129
	.byte	0x9
	.byte	0x30
	.byte	0x10
	.4byte	0x9d8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF130
	.byte	0x9
	.byte	0x32
	.byte	0x6
	.4byte	0x81
	.byte	0xc
	.byte	0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0x34
	.byte	0x8
	.4byte	0x5df
	.byte	0x10
	.byte	0xb
	.4byte	.LASF132
	.byte	0x9
	.byte	0x35
	.byte	0x6
	.4byte	0x81
	.byte	0x14
	.byte	0xb
	.4byte	.LASF133
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.4byte	0x9de
	.byte	0x18
	.byte	0xb
	.4byte	.LASF134
	.byte	0x9
	.byte	0x38
	.byte	0x8
	.4byte	0x5df
	.byte	0x20
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x962
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF135
	.byte	0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0x39
	.byte	0x3
	.4byte	0x962
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.byte	0xa
	.byte	0x9
	.4byte	0xa48
	.byte	0xb
	.4byte	.LASF136
	.byte	0xa
	.byte	0xb
	.byte	0xa
	.4byte	0x94a
	.byte	0
	.byte	0xb
	.4byte	.LASF137
	.byte	0xa
	.byte	0xc
	.byte	0xa
	.4byte	0x94a
	.byte	0x2
	.byte	0xe
	.string	"red"
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.4byte	0x94a
	.byte	0x4
	.byte	0xb
	.4byte	.LASF138
	.byte	0xa
	.byte	0xe
	.byte	0xa
	.4byte	0x94a
	.byte	0x6
	.byte	0xb
	.4byte	.LASF139
	.byte	0xa
	.byte	0xf
	.byte	0xa
	.4byte	0x94a
	.byte	0x8
	.byte	0xe
	.string	"on"
	.byte	0xa
	.byte	0x10
	.byte	0xa
	.4byte	0x93e
	.byte	0xa
	.byte	0
	.byte	0x3
	.4byte	.LASF140
	.byte	0xa
	.byte	0x11
	.byte	0x3
	.4byte	0x9f1
	.byte	0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xb
	.byte	0xd
	.byte	0xe
	.4byte	0xa69
	.byte	0x21
	.4byte	.LASF142
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF141
	.byte	0xb
	.byte	0xf
	.byte	0x2
	.4byte	0xa54
	.byte	0x20
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xb
	.byte	0x11
	.byte	0xe
	.4byte	0xa96
	.byte	0x21
	.4byte	.LASF143
	.byte	0x6
	.byte	0x21
	.4byte	.LASF144
	.byte	0x19
	.byte	0x21
	.4byte	.LASF145
	.byte	0x7
	.byte	0
	.byte	0xa
	.byte	0x10
	.byte	0xb
	.byte	0x18
	.byte	0x9
	.4byte	0xad4
	.byte	0xb
	.4byte	.LASF146
	.byte	0xb
	.byte	0x19
	.byte	0xe
	.4byte	0xa48
	.byte	0
	.byte	0xb
	.4byte	.LASF147
	.byte	0xb
	.byte	0x1a
	.byte	0x7
	.4byte	0x5e5
	.byte	0xc
	.byte	0xb
	.4byte	.LASF148
	.byte	0xb
	.byte	0x1b
	.byte	0x7
	.4byte	0x5e5
	.byte	0xd
	.byte	0xb
	.4byte	.LASF149
	.byte	0xb
	.byte	0x1c
	.byte	0x7
	.4byte	0x5e5
	.byte	0xe
	.byte	0
	.byte	0x3
	.4byte	.LASF150
	.byte	0xb
	.byte	0x1d
	.byte	0x3
	.4byte	0xa96
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF151
	.byte	0x8
	.4byte	0x5e5
	.4byte	0xaf7
	.byte	0x9
	.4byte	0x88
	.byte	0x3f
	.byte	0
	.byte	0x22
	.4byte	.LASF152
	.byte	0xc
	.byte	0x6
	.byte	0xd
	.4byte	0xae7
	.byte	0x8
	.4byte	0x5e5
	.4byte	0xb13
	.byte	0x9
	.4byte	0x88
	.byte	0x20
	.byte	0
	.byte	0x22
	.4byte	.LASF153
	.byte	0xc
	.byte	0x7
	.byte	0xd
	.4byte	0xb03
	.byte	0x8
	.4byte	0x93e
	.4byte	0xb2f
	.byte	0x9
	.4byte	0x88
	.byte	0x5
	.byte	0
	.byte	0x22
	.4byte	.LASF154
	.byte	0xc
	.byte	0x8
	.byte	0x10
	.4byte	0xb1f
	.byte	0x3
	.4byte	.LASF155
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x956
	.byte	0x22
	.4byte	.LASF156
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0xb3b
	.byte	0x23
	.4byte	.LASF162
	.byte	0x1
	.byte	0x1d
	.byte	0x17
	.4byte	0xad4
	.byte	0x5
	.byte	0x3
	.4byte	product_status
	.byte	0x24
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x122
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xbd0
	.byte	0x25
	.4byte	.LVL159
	.4byte	0x1944
	.byte	0x26
	.4byte	.LVL160
	.4byte	0x15db
	.4byte	0xb9c
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x25
	.4byte	.LVL161
	.4byte	0x1950
	.byte	0x26
	.4byte	.LVL162
	.4byte	0x195c
	.4byte	0xbbc
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	dohome_status_delay_post
	.byte	0
	.byte	0x28
	.4byte	.LVL163
	.4byte	0x1968
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	dohome_status_post
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x11d
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xc16
	.byte	0x29
	.4byte	0x174f
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x11e
	.byte	0x2
	.4byte	0xc06
	.byte	0x2a
	.4byte	0x175c
	.4byte	.LLST1
	.byte	0
	.byte	0x28
	.4byte	.LVL5
	.4byte	0x1974
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x118
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xc5c
	.byte	0x29
	.4byte	0x174f
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x119
	.byte	0x2
	.4byte	0xc4c
	.byte	0x2a
	.4byte	0x175c
	.4byte	.LLST0
	.byte	0
	.byte	0x28
	.4byte	.LVL2
	.4byte	0x1980
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2b
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x100
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xd32
	.byte	0x2c
	.string	"cmd"
	.byte	0x1
	.2byte	0x100
	.byte	0x20
	.4byte	0x81
	.4byte	.LLST32
	.byte	0x2d
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x100
	.byte	0x2c
	.4byte	0xd32
	.4byte	.LLST33
	.byte	0x2d
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x100
	.byte	0x38
	.4byte	0x5df
	.4byte	.LLST34
	.byte	0x2e
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x101
	.byte	0x6
	.4byte	0x81
	.4byte	.LLST35
	.byte	0x2f
	.4byte	0x1769
	.4byte	.LBB121
	.4byte	.LBE121-.LBB121
	.byte	0x1
	.2byte	0x111
	.byte	0x4b
	.byte	0x30
	.4byte	.LVL148
	.4byte	0xe13
	.4byte	0xce1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x25
	.4byte	.LVL149
	.4byte	0x13b2
	.byte	0x30
	.4byte	.LVL153
	.4byte	0xd38
	.4byte	0xcff
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x25
	.4byte	.LVL155
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL156
	.4byte	0x1999
	.4byte	0xd28
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x25
	.4byte	.LVL158
	.4byte	0x19a5
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9e5
	.byte	0x31
	.4byte	.LASF215
	.byte	0x1
	.byte	0xf0
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0xd6e
	.byte	0x32
	.4byte	.LASF160
	.byte	0x1
	.byte	0xf0
	.byte	0x1c
	.4byte	0xd32
	.byte	0x33
	.4byte	.LASF164
	.byte	0x1
	.byte	0xf1
	.byte	0x9
	.4byte	0xd32
	.byte	0x33
	.4byte	.LASF165
	.byte	0x1
	.byte	0xf6
	.byte	0x6
	.4byte	0x81
	.byte	0
	.byte	0x34
	.4byte	.LASF167
	.byte	0x1
	.byte	0xe7
	.byte	0x5
	.4byte	0xae0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xdf2
	.byte	0x23
	.4byte	.LASF168
	.byte	0x1
	.byte	0xe9
	.byte	0x7
	.4byte	0xdf2
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7a
	.byte	0x23
	.4byte	.LASF169
	.byte	0x1
	.byte	0xea
	.byte	0xa
	.4byte	0xe02
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x26
	.4byte	.LVL131
	.4byte	0x13b2
	.4byte	0xdbc
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL132
	.4byte	0x19b2
	.4byte	0xde0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL133
	.4byte	0x19be
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7c
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0xe02
	.byte	0x9
	.4byte	0x88
	.byte	0xff
	.byte	0
	.byte	0x8
	.4byte	0x5e5
	.4byte	0xe13
	.byte	0x36
	.4byte	0x88
	.2byte	0x18f
	.byte	0
	.byte	0x34
	.4byte	.LASF170
	.byte	0x1
	.byte	0xb6
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x13b2
	.byte	0x37
	.4byte	.LASF160
	.byte	0x1
	.byte	0xb6
	.byte	0x24
	.4byte	0xd32
	.4byte	.LLST11
	.byte	0x23
	.4byte	.LASF171
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0xa48
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x38
	.4byte	.LASF162
	.byte	0x1
	.byte	0xb9
	.byte	0x11
	.4byte	0xad4
	.4byte	.LLST12
	.byte	0x39
	.string	"err"
	.byte	0x1
	.byte	0xbb
	.byte	0x6
	.4byte	0x81
	.4byte	.LLST13
	.byte	0x39
	.string	"pon"
	.byte	0x1
	.byte	0xbf
	.byte	0x9
	.4byte	0xd32
	.4byte	.LLST14
	.byte	0x38
	.4byte	.LASF172
	.byte	0x1
	.byte	0xcb
	.byte	0x9
	.4byte	0xd32
	.4byte	.LLST15
	.byte	0x38
	.4byte	.LASF173
	.byte	0x1
	.byte	0xcc
	.byte	0x6
	.4byte	0x81
	.4byte	.LLST16
	.byte	0x39
	.string	"p_t"
	.byte	0x1
	.byte	0xd4
	.byte	0x9
	.4byte	0xd32
	.4byte	.LLST17
	.byte	0x39
	.string	"t"
	.byte	0x1
	.byte	0xd5
	.byte	0x6
	.4byte	0x81
	.4byte	.LLST18
	.byte	0x3a
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0xee0
	.byte	0x39
	.string	"on"
	.byte	0x1
	.byte	0xc3
	.byte	0x7
	.4byte	0x81
	.4byte	.LLST26
	.byte	0x25
	.4byte	.LVL101
	.4byte	0x19ca
	.byte	0
	.byte	0x3b
	.4byte	0x1526
	.4byte	.LBB72
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xbb
	.byte	0xc
	.4byte	0x1160
	.byte	0x2a
	.4byte	0x1543
	.4byte	.LLST19
	.byte	0x2a
	.4byte	0x1537
	.4byte	.LLST20
	.byte	0x3c
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x3d
	.4byte	0x154f
	.4byte	.LLST21
	.byte	0x3d
	.4byte	0x155b
	.4byte	.LLST22
	.byte	0x3d
	.4byte	0x1567
	.4byte	.LLST23
	.byte	0x3d
	.4byte	0x1573
	.4byte	.LLST24
	.byte	0x3d
	.4byte	0x157f
	.4byte	.LLST25
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB74
	.4byte	.LBE74-.LBB74
	.byte	0x1
	.byte	0x7c
	.byte	0x54
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.byte	0x82
	.byte	0x55
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.byte	0x88
	.byte	0x56
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.byte	0x93
	.byte	0x56
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.byte	0x99
	.byte	0x52
	.byte	0x26
	.4byte	.LVL58
	.4byte	0x19d6
	.4byte	0xfa5
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x25
	.4byte	.LVL59
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL60
	.4byte	0x1999
	.4byte	0xfdd
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
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x25
	.4byte	.LVL63
	.4byte	0x19a5
	.byte	0x26
	.4byte	.LVL67
	.4byte	0x19d6
	.4byte	0x1003
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x25
	.4byte	.LVL68
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL69
	.4byte	0x1999
	.4byte	0x103b
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
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x82
	.byte	0
	.byte	0x25
	.4byte	.LVL71
	.4byte	0x19a5
	.byte	0x26
	.4byte	.LVL75
	.4byte	0x19d6
	.4byte	0x1061
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x25
	.4byte	.LVL76
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL77
	.4byte	0x1999
	.4byte	0x1099
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
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x88
	.byte	0
	.byte	0x25
	.4byte	.LVL79
	.4byte	0x19a5
	.byte	0x26
	.4byte	.LVL83
	.4byte	0x19d6
	.4byte	0x10bf
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x25
	.4byte	.LVL84
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL85
	.4byte	0x1999
	.4byte	0x10f7
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
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x93
	.byte	0
	.byte	0x25
	.4byte	.LVL87
	.4byte	0x19a5
	.byte	0x26
	.4byte	.LVL91
	.4byte	0x19d6
	.4byte	0x111d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x25
	.4byte	.LVL92
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL93
	.4byte	0x1999
	.4byte	0x1155
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
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x99
	.byte	0
	.byte	0x25
	.4byte	.LVL95
	.4byte	0x19a5
	.byte	0
	.byte	0
	.byte	0x3b
	.4byte	0x1591
	.4byte	.LBB103
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xd2
	.byte	0x2
	.4byte	0x1273
	.byte	0x2a
	.4byte	0x15ae
	.4byte	.LLST27
	.byte	0x2a
	.4byte	0x15a2
	.4byte	.LLST28
	.byte	0x26
	.4byte	.LVL107
	.4byte	0x19e2
	.4byte	0x11b6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x83
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x26
	.4byte	.LVL109
	.4byte	0x19e2
	.4byte	0x11e6
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x26
	.4byte	.LVL111
	.4byte	0x19e2
	.4byte	0x1216
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x26
	.4byte	.LVL113
	.4byte	0x19e2
	.4byte	0x1246
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x86
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x35
	.4byte	.LVL115
	.4byte	0x19e2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x87
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x82
	.byte	0x88,0x7
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.byte	0xdb
	.byte	0x6f
	.byte	0x26
	.4byte	.LVL98
	.4byte	0x19d6
	.4byte	0x12a0
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x26
	.4byte	.LVL104
	.4byte	0x19d6
	.4byte	0x12bd
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x26
	.4byte	.LVL117
	.4byte	0x19d6
	.4byte	0x12da
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x25
	.4byte	.LVL120
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL121
	.4byte	0x1999
	.4byte	0x1321
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x61
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL122
	.4byte	0x19ee
	.4byte	0x1334
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x26
	.4byte	.LVL123
	.4byte	0x19fa
	.4byte	0x1366
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL125
	.4byte	0x19a5
	.byte	0x26
	.4byte	.LVL128
	.4byte	0x19ee
	.4byte	0x1382
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL129
	.4byte	0x1a06
	.4byte	0x13a1
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x35
	.4byte	.LVL130
	.4byte	0x1a11
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LASF174
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x1526
	.byte	0x37
	.4byte	.LASF175
	.byte	0x1
	.byte	0xa0
	.byte	0x28
	.4byte	0x5df
	.4byte	.LLST5
	.byte	0x39
	.string	"red"
	.byte	0x1
	.byte	0xa1
	.byte	0x6
	.4byte	0x81
	.4byte	.LLST6
	.byte	0x38
	.4byte	.LASF137
	.byte	0x1
	.byte	0xa1
	.byte	0xb
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x38
	.4byte	.LASF136
	.byte	0x1
	.byte	0xa1
	.byte	0x12
	.4byte	0x81
	.4byte	.LLST8
	.byte	0x38
	.4byte	.LASF138
	.byte	0x1
	.byte	0xa1
	.byte	0x18
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x38
	.4byte	.LASF139
	.byte	0x1
	.byte	0xa1
	.byte	0x1f
	.4byte	0x81
	.4byte	.LLST10
	.byte	0x26
	.4byte	.LVL29
	.4byte	0x19e2
	.4byte	0x144e
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x26
	.4byte	.LVL32
	.4byte	0x19e2
	.4byte	0x1474
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x26
	.4byte	.LVL35
	.4byte	0x19e2
	.4byte	0x149a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x26
	.4byte	.LVL38
	.4byte	0x19e2
	.4byte	0x14c0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x26
	.4byte	.LVL41
	.4byte	0x19e2
	.4byte	0x14e6
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x79
	.byte	0x88,0x7
	.byte	0
	.byte	0x30
	.4byte	.LVL48
	.4byte	0x19b2
	.4byte	0x150b
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x27
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x72
	.byte	0x5c
	.byte	0x6
	.byte	0
	.byte	0x28
	.4byte	.LVL55
	.4byte	0x19b2
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	.LASF181
	.byte	0x1
	.byte	0x77
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0x158b
	.byte	0x32
	.4byte	.LASF160
	.byte	0x1
	.byte	0x77
	.byte	0x2e
	.4byte	0xd32
	.byte	0x32
	.4byte	.LASF176
	.byte	0x1
	.byte	0x77
	.byte	0x44
	.4byte	0x158b
	.byte	0x33
	.4byte	.LASF177
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0xd32
	.byte	0x33
	.4byte	.LASF178
	.byte	0x1
	.byte	0x80
	.byte	0x9
	.4byte	0xd32
	.byte	0x33
	.4byte	.LASF179
	.byte	0x1
	.byte	0x86
	.byte	0x9
	.4byte	0xd32
	.byte	0x33
	.4byte	.LASF180
	.byte	0x1
	.byte	0x91
	.byte	0x9
	.4byte	0xd32
	.byte	0x41
	.string	"pm"
	.byte	0x1
	.byte	0x97
	.byte	0x9
	.4byte	0xd32
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xad4
	.byte	0x40
	.4byte	.LASF182
	.byte	0x1
	.byte	0x67
	.byte	0xc
	.4byte	0x81
	.byte	0x1
	.4byte	0x15bb
	.byte	0x32
	.4byte	.LASF162
	.byte	0x1
	.byte	0x67
	.byte	0x31
	.4byte	0x158b
	.byte	0x42
	.string	"pwm"
	.byte	0x1
	.byte	0x67
	.byte	0x4e
	.4byte	0x15bb
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa48
	.byte	0x43
	.4byte	.LASF183
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.byte	0x1
	.4byte	0x15db
	.byte	0x32
	.4byte	.LASF176
	.byte	0x1
	.byte	0x61
	.byte	0x2a
	.4byte	0xad4
	.byte	0
	.byte	0x43
	.4byte	.LASF184
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.byte	0x1
	.4byte	0x1601
	.byte	0x32
	.4byte	.LASF176
	.byte	0x1
	.byte	0x51
	.byte	0x2a
	.4byte	0x158b
	.byte	0x33
	.4byte	.LASF185
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.byte	0x40
	.4byte	.LASF186
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0x5e5
	.byte	0x1
	.4byte	0x161f
	.byte	0x32
	.4byte	.LASF176
	.byte	0x1
	.byte	0x40
	.byte	0x35
	.4byte	0xad4
	.byte	0
	.byte	0x3f
	.4byte	.LASF187
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x16b3
	.byte	0x37
	.4byte	.LASF176
	.byte	0x1
	.byte	0x30
	.byte	0x2d
	.4byte	0x158b
	.4byte	.LLST2
	.byte	0x3a
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.4byte	0x1662
	.byte	0x23
	.4byte	.LASF162
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.4byte	0xad4
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x44
	.4byte	0x15c1
	.4byte	.LBB41
	.4byte	.LBE41-.LBB41
	.byte	0x1
	.byte	0x3d
	.byte	0x2
	.4byte	0x169d
	.byte	0x45
	.4byte	0x15ce
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x35
	.4byte	.LVL12
	.4byte	0x1a1d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL11
	.4byte	0x1a06
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LASF188
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1723
	.byte	0x44
	.4byte	0x15c1
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0x2c
	.byte	0x2
	.4byte	0x1704
	.byte	0x45
	.4byte	0x15ce
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x35
	.4byte	.LVL8
	.4byte	0x1a1d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL7
	.4byte	0x1a06
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x46
	.4byte	.LASF189
	.byte	0x1
	.byte	0x27
	.byte	0x11
	.4byte	0x158b
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.byte	0x46
	.4byte	.LASF190
	.byte	0x1
	.byte	0x23
	.byte	0x13
	.4byte	0xa69
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x43
	.4byte	.LASF191
	.byte	0x1
	.byte	0x1f
	.byte	0x6
	.byte	0x1
	.4byte	0x1769
	.byte	0x42
	.string	"way"
	.byte	0x1
	.byte	0x1f
	.byte	0x30
	.4byte	0xa69
	.byte	0
	.byte	0x47
	.4byte	.LASF216
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0xb3b
	.byte	0x3
	.byte	0x48
	.4byte	0x174f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1791
	.byte	0x45
	.4byte	0x175c
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x48
	.4byte	0x15db
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1823
	.byte	0x2a
	.4byte	0x15e8
	.4byte	.LLST3
	.byte	0x49
	.4byte	0x15f4
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x3b
	.4byte	0x15db
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	0x17fe
	.byte	0x2a
	.4byte	0x15e8
	.4byte	.LLST4
	.byte	0x3c
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x4a
	.4byte	0x15f4
	.byte	0x4b
	.4byte	0x1601
	.4byte	.LBB49
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x55
	.byte	0x7
	.byte	0x35
	.4byte	.LVL19
	.4byte	0x161f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LVL15
	.4byte	0x1a29
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	0x15c1
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x1857
	.byte	0x45
	.4byte	0x15ce
	.byte	0x2
	.byte	0x7a
	.byte	0
	.byte	0x35
	.4byte	.LVL26
	.4byte	0x1a1d
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x48
	.4byte	0xd38
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x1944
	.byte	0x2a
	.4byte	0xd49
	.4byte	.LLST29
	.byte	0x3d
	.4byte	0xd55
	.4byte	.LLST30
	.byte	0x49
	.4byte	0xd61
	.byte	0x1
	.byte	0x58
	.byte	0x3b
	.4byte	0xd38
	.4byte	.LBB115
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0xf0
	.byte	0x5
	.4byte	0x1902
	.byte	0x2a
	.4byte	0xd49
	.4byte	.LLST31
	.byte	0x3c
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x4a
	.4byte	0xd55
	.byte	0x4a
	.4byte	0xd61
	.byte	0x3e
	.4byte	0x1769
	.4byte	.LBB117
	.4byte	.LBE117-.LBB117
	.byte	0x1
	.byte	0xf3
	.byte	0x57
	.byte	0x25
	.4byte	.LVL137
	.4byte	0x198c
	.byte	0x26
	.4byte	.LVL138
	.4byte	0x1999
	.4byte	0x18f7
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
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
	.4byte	.LC4
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xf3
	.byte	0
	.byte	0x25
	.4byte	.LVL140
	.4byte	0x19a5
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL135
	.4byte	0x19d6
	.4byte	0x1920
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x26
	.4byte	.LVL144
	.4byte	0x19ee
	.4byte	0x1933
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x35
	.4byte	.LVL145
	.4byte	0x1a35
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4c
	.4byte	.LASF192
	.4byte	.LASF192
	.byte	0xa
	.byte	0x39
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF193
	.4byte	.LASF193
	.byte	0xd
	.byte	0xb
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF194
	.4byte	.LASF194
	.byte	0xa
	.byte	0x34
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF195
	.4byte	.LASF195
	.byte	0xa
	.byte	0x35
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF196
	.4byte	.LASF196
	.byte	0xd
	.byte	0x9
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF197
	.4byte	.LASF197
	.byte	0xd
	.byte	0x8
	.byte	0x6
	.byte	0x4d
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xe
	.2byte	0x558
	.byte	0xc
	.byte	0x4c
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0xf
	.byte	0x9e
	.byte	0x6
	.byte	0x4d
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0xe
	.2byte	0x547
	.byte	0xc
	.byte	0x4c
	.4byte	.LASF201
	.4byte	.LASF201
	.byte	0x10
	.byte	0xf4
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0x11
	.byte	0x9
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xa
	.byte	0x2b
	.byte	0x5
	.byte	0x4c
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0x9
	.byte	0x54
	.byte	0xf
	.byte	0x4e
	.string	"map"
	.string	"map"
	.byte	0x14
	.byte	0x7
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xa
	.byte	0x1f
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0xa
	.byte	0x29
	.byte	0x6
	.byte	0x4f
	.4byte	.LASF217
	.4byte	.LASF218
	.byte	0x15
	.byte	0
	.byte	0x4c
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0xa
	.byte	0x30
	.byte	0x6
	.byte	0x4c
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x12
	.byte	0x33
	.byte	0xb
	.byte	0x4c
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x12
	.byte	0x30
	.byte	0x8
	.byte	0x4c
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x13
	.byte	0x2b
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
	.byte	0x21
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
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
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x1
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
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
	.byte	0x3c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
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
	.byte	0x42
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x44
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
	.byte	0x45
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x46
	.byte	0x2e
	.byte	0
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
	.byte	0x47
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
	.byte	0x48
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
	.byte	0x49
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4d
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
	.byte	0x4e
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0x8
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL148-1
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL149-1
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL154
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL146
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL148-1
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL149-1
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL153-1
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155-1
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL158-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL146
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL148-1
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149-1
	.4byte	.LVL151
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL153-1
	.4byte	.LVL153
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155-1
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL158-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x8
	.byte	0xc8
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL156
	.2byte	0x3
	.byte	0x8
	.byte	0xc8
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LFE19
	.2byte	0x3
	.byte	0x8
	.byte	0xc8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL56
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x7
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	.LVL73
	.4byte	.LVL81
	.2byte	0xa
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	.LVL81
	.4byte	.LVL89
	.2byte	0xb
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0xa
	.4byte	.LVL89
	.4byte	.LVL97
	.2byte	0xe
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x8
	.4byte	.LVL97
	.4byte	.LVL101
	.2byte	0x11
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x7
	.byte	0x93
	.byte	0x8
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL102
	.4byte	.LVL108
	.2byte	0x11
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x63
	.byte	0x93
	.byte	0x2
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x10
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x64
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x2
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0xd
	.byte	0x65
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x4
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0xa
	.byte	0x93
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x2
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	.LVL114
	.4byte	.LFE16
	.2byte	0x7
	.byte	0x93
	.byte	0x8
	.byte	0x67
	.byte	0x93
	.byte	0x2
	.byte	0x93
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x3d
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x3e
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL117
	.4byte	.LVL120-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL124
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x7a
	.byte	0x14
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL67
	.4byte	.LVL68-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL83
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94
	.4byte	.LVL95-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL105
	.4byte	.LVL116
	.2byte	0x3
	.byte	0x91
	.byte	0x44
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL105
	.4byte	.LVL116
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+3660
	.byte	0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-1
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL53
	.4byte	.LVL55-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL43
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL42
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL134
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL135
	.4byte	.LVL137-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
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
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	0
	.4byte	0
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
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
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF204:
	.string	"cJSON_GetObjectItem"
.LASF40:
	.string	"_on_exit_args"
.LASF108:
	.string	"_wctomb_state"
.LASF190:
	.string	"product_get_control_way"
.LASF105:
	.string	"_r48"
.LASF131:
	.string	"valuestring"
.LASF178:
	.string	"pblue"
.LASF110:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF127:
	.string	"next"
.LASF139:
	.string	"yellow"
.LASF54:
	.string	"_lbfsize"
.LASF52:
	.string	"_flags"
.LASF158:
	.string	"dohome_status_delay_post"
.LASF6:
	.string	"__int32_t"
.LASF69:
	.string	"_errno"
.LASF136:
	.string	"blue"
.LASF177:
	.string	"pred"
.LASF140:
	.string	"rgb_pixel_t"
.LASF23:
	.string	"_LOCK_RECURSIVE_T"
.LASF56:
	.string	"_read"
.LASF112:
	.string	"_mbrlen_state"
.LASF128:
	.string	"prev"
.LASF218:
	.string	"__builtin_memcpy"
.LASF71:
	.string	"_stdout"
.LASF15:
	.string	"_fpos_t"
.LASF47:
	.string	"_fns"
.LASF55:
	.string	"_cookie"
.LASF143:
	.string	"PRODUCT_CMD_SET_STATUS"
.LASF29:
	.string	"_Bigint"
.LASF212:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/product.c"
.LASF37:
	.string	"__tm_wday"
.LASF132:
	.string	"valueint"
.LASF79:
	.string	"_result"
.LASF180:
	.string	"pwhite"
.LASF161:
	.string	"ret_buf"
.LASF33:
	.string	"__tm_hour"
.LASF166:
	.string	"dohome_product_run_cmd"
.LASF19:
	.string	"__count"
.LASF147:
	.string	"led_effect_set"
.LASF32:
	.string	"__tm_min"
.LASF121:
	.string	"_impure_ptr"
.LASF118:
	.string	"_nextf"
.LASF213:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/product"
.LASF95:
	.string	"_rand48"
.LASF80:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF153:
	.string	"dev_key"
.LASF187:
	.string	"product_status_factory"
.LASF101:
	.string	"_asctime_buf"
.LASF51:
	.string	"__sFILE"
.LASF28:
	.string	"_wds"
.LASF159:
	.string	"dohome_status_post"
.LASF154:
	.string	"station_mac"
.LASF91:
	.string	"__FILE"
.LASF199:
	.string	"bl_printk"
.LASF63:
	.string	"_offset"
.LASF129:
	.string	"child"
.LASF205:
	.string	"set_light_work_mode"
.LASF74:
	.string	"_emergency"
.LASF146:
	.string	"color"
.LASF160:
	.string	"root"
.LASF156:
	.string	"TrapNetCounter"
.LASF202:
	.string	"dohome_http_post"
.LASF12:
	.string	"size_t"
.LASF126:
	.string	"cJSON"
.LASF31:
	.string	"__tm_sec"
.LASF168:
	.string	"post_str"
.LASF38:
	.string	"__tm_yday"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF144:
	.string	"PRODUCT_CMD_GET_STATUS"
.LASF172:
	.string	"psmooth"
.LASF25:
	.string	"_next"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF20:
	.string	"__value"
.LASF207:
	.string	"send_light_data_pwm"
.LASF173:
	.string	"smoothen"
.LASF81:
	.string	"_p5s"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF106:
	.string	"_mblen_state"
.LASF197:
	.string	"product_upload_status"
.LASF141:
	.string	"product_control_t"
.LASF90:
	.string	"char"
.LASF34:
	.string	"__tm_mday"
.LASF87:
	.string	"_sig_func"
.LASF113:
	.string	"_mbrtowc_state"
.LASF86:
	.string	"_atexit0"
.LASF134:
	.string	"string"
.LASF24:
	.string	"_flock_t"
.LASF17:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF123:
	.string	"uint8_t"
.LASF176:
	.string	"status"
.LASF142:
	.string	"PRODUCT_CONTROL_DOHOME"
.LASF183:
	.string	"product_write_status"
.LASF59:
	.string	"_close"
.LASF77:
	.string	"__sdidinit"
.LASF215:
	.string	"set_preset_mode"
.LASF200:
	.string	"xTaskGetTickCount"
.LASF162:
	.string	"product_status"
.LASF70:
	.string	"_stdin"
.LASF103:
	.string	"_gamma_signgam"
.LASF9:
	.string	"long long int"
.LASF49:
	.string	"_base"
.LASF82:
	.string	"_freelist"
.LASF97:
	.string	"_mult"
.LASF22:
	.string	"__ULong"
.LASF115:
	.string	"_wcrtomb_state"
.LASF155:
	.string	"BaseType_t"
.LASF53:
	.string	"_file"
.LASF3:
	.string	"__int16_t"
.LASF78:
	.string	"__cleanup"
.LASF21:
	.string	"_mbstate_t"
.LASF211:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF193:
	.string	"product_status_upload_init"
.LASF41:
	.string	"_fnargs"
.LASF185:
	.string	"size"
.LASF39:
	.string	"__tm_isdst"
.LASF206:
	.string	"send_light_data"
.LASF175:
	.string	"status_str"
.LASF133:
	.string	"valuedouble"
.LASF216:
	.string	"xPortIsInsideInterrupt"
.LASF203:
	.string	"send_light_onoff"
.LASF117:
	.string	"_h_errno"
.LASF164:
	.string	"pindex"
.LASF184:
	.string	"product_read_status"
.LASF151:
	.string	"_Bool"
.LASF171:
	.string	"color_pwm"
.LASF189:
	.string	"product_get_status"
.LASF35:
	.string	"__tm_mon"
.LASF152:
	.string	"dev_id"
.LASF137:
	.string	"green"
.LASF201:
	.string	"sprintf"
.LASF57:
	.string	"_write"
.LASF169:
	.string	"post_buf"
.LASF163:
	.string	"err_no"
.LASF45:
	.string	"_atexit"
.LASF66:
	.string	"_mbstate"
.LASF182:
	.string	"get_color_pulsewidth"
.LASF198:
	.string	"xTaskGetTickCountFromISR"
.LASF4:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF195:
	.string	"dohome_reg_post_cb"
.LASF124:
	.string	"int16_t"
.LASF89:
	.string	"__sf"
.LASF27:
	.string	"_sign"
.LASF209:
	.string	"ef_get_env_blob"
.LASF157:
	.string	"product_init"
.LASF192:
	.string	"light_init"
.LASF64:
	.string	"_data"
.LASF18:
	.string	"__wchb"
.LASF122:
	.string	"_global_impure_ptr"
.LASF186:
	.string	"app_product_status_check"
.LASF36:
	.string	"__tm_year"
.LASF138:
	.string	"white"
.LASF102:
	.string	"_localtime_buf"
.LASF120:
	.string	"_unused"
.LASF2:
	.string	"__uint8_t"
.LASF85:
	.string	"_new"
.LASF83:
	.string	"_cvtlen"
.LASF26:
	.string	"_maxwds"
.LASF109:
	.string	"_l64a_buf"
.LASF62:
	.string	"_blksize"
.LASF191:
	.string	"product_set_control_way"
.LASF30:
	.string	"__tm"
.LASF194:
	.string	"dohome_reg_delay_post_cb"
.LASF65:
	.string	"_lock"
.LASF145:
	.string	"PRODUCT_CMD_SET_STATIC_MODE"
.LASF170:
	.string	"product_doit_set_status"
.LASF8:
	.string	"long unsigned int"
.LASF93:
	.string	"_niobs"
.LASF13:
	.string	"wint_t"
.LASF125:
	.string	"int32_t"
.LASF196:
	.string	"product_delay_upload_status"
.LASF42:
	.string	"_dso_handle"
.LASF210:
	.string	"set_ambilight_mode"
.LASF174:
	.string	"product_doit_get_status_str"
.LASF130:
	.string	"type"
.LASF84:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF188:
	.string	"product_save_status"
.LASF149:
	.string	"control_way"
.LASF111:
	.string	"_getdate_err"
.LASF98:
	.string	"_add"
.LASF181:
	.string	"get_product_status_to_json"
.LASF208:
	.string	"ef_set_env_blob"
.LASF48:
	.string	"__sbuf"
.LASF92:
	.string	"_glue"
.LASF148:
	.string	"led_effect_type"
.LASF88:
	.string	"__sglue"
.LASF100:
	.string	"_strtok_last"
.LASF107:
	.string	"_mbtowc_state"
.LASF167:
	.string	"product_dohomoe_update_status"
.LASF76:
	.string	"_locale"
.LASF16:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF68:
	.string	"_reent"
.LASF5:
	.string	"short unsigned int"
.LASF217:
	.string	"memcpy"
.LASF43:
	.string	"_fntypes"
.LASF50:
	.string	"_size"
.LASF135:
	.string	"double"
.LASF150:
	.string	"product_mode_t"
.LASF14:
	.string	"_off_t"
.LASF61:
	.string	"_nbuf"
.LASF99:
	.string	"_unused_rand"
.LASF165:
	.string	"index"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF67:
	.string	"_flags2"
.LASF44:
	.string	"_is_cxa"
.LASF96:
	.string	"_seed"
.LASF104:
	.string	"_rand_next"
.LASF214:
	.string	"__locale_t"
.LASF179:
	.string	"pgreen"
.LASF58:
	.string	"_seek"
.LASF72:
	.string	"_stderr"
.LASF119:
	.string	"_nmalloc"
.LASF60:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
