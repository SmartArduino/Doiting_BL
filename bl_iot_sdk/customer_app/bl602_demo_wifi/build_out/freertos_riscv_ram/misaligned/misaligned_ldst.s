	.file	"misaligned_ldst.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.truly_illegal_insn,"ax",@progbits
	.align	1
	.globl	truly_illegal_insn
	.type	truly_illegal_insn, @function
truly_illegal_insn:
.LFB14:
	.file 1 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
	.loc 1 29 1
	.cfi_startproc
.LVL0:
	.loc 1 30 5
 #APP
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L2:
	.loc 1 31 5 discriminator 1
	.loc 1 31 13 discriminator 1
	.loc 1 31 5 discriminator 1
	.loc 1 31 13 discriminator 1
	j	.L2
	.cfi_endproc
.LFE14:
	.size	truly_illegal_insn, .-truly_illegal_insn
	.section	.text.misaligned_load_trap,"ax",@progbits
	.align	1
	.globl	misaligned_load_trap
	.type	misaligned_load_trap, @function
misaligned_load_trap:
.LFB15:
	.loc 1 35 1
	.cfi_startproc
.LVL1:
.LBB44:
.LBB45:
	.file 2 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h"
	.loc 2 71 22 is_stmt 0
	li	a1,655360
.LVL2:
	.loc 2 83 3
	li	a4,3
 #APP
# 83 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a6, a2, 2
bnez a6, 1f
lw a5, (a2)
and a6, a5, a4
beq a6, a4, 2f
sll a5, a5, 16
srl a5, a5, 16
j 2f
1:
lhu a5, (a2)
and a6, a5, a4
bne a6, a4, 2f
lhu a6, 2(a2)
sll a6, a6, 16
add a5, a5, a6
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
.LBE45:
.LBE44:
.LBB48:
.LBB49:
	.loc 1 25 16
	andi	a1,a5,3
.LBE49:
.LBE48:
	.loc 1 36 3 is_stmt 1
	.loc 1 37 3
	.loc 1 38 3
.LVL3:
.LBB51:
.LBB46:
	.loc 2 71 3
	.loc 2 72 3
	.loc 2 73 3
	.loc 2 74 3
	.loc 2 82 3
	.loc 2 83 3
.LBE46:
.LBE51:
	.loc 1 35 1 is_stmt 0
	mv	t4,a2
.LBB52:
.LBB47:
	.loc 2 83 3
	mv	t6,a5
.LVL4:
	.loc 2 104 3 is_stmt 1
	.loc 2 105 3
.LBE47:
.LBE52:
	.loc 1 39 3
.LBB53:
.LBB50:
	.loc 1 25 3
	.loc 1 25 33 is_stmt 0
	li	t3,4
	beq	a1,a4,.L5
	li	t3,2
.L5:
.LVL5:
.LBE50:
.LBE53:
	.loc 1 39 13
	add	t3,t4,t3
.LVL6:
	.loc 1 40 3 is_stmt 1
.LBB54:
	.loc 1 40 23
	.loc 1 40 44
 #APP
# 40 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrr t5, mbadaddr
# 0 "" 2
.LVL7:
	.loc 1 40 97
 #NO_APP
.LBE54:
	.loc 1 42 3
	.loc 1 43 3
	.loc 1 43 13 is_stmt 0
	li	a4,28672
	.loc 1 43 6
	li	a2,8192
.LVL8:
	.loc 1 43 13
	addi	a4,a4,127
	and	a4,a5,a4
	.loc 1 43 6
	addi	a1,a2,3
	beq	a4,a1,.L20
	.loc 1 56 8 is_stmt 1
	.loc 1 56 11 is_stmt 0
	addi	a2,a2,7
	beq	a4,a2,.L21
	.loc 1 59 8 is_stmt 1
	.loc 1 59 11 is_stmt 0
	li	a2,4096
	addi	a2,a2,3
	beq	a4,a2,.L18
	.loc 1 61 8 is_stmt 1
	.loc 1 61 11 is_stmt 0
	li	a2,20480
	addi	a2,a2,3
	beq	a4,a2,.L19
	.loc 1 70 8 is_stmt 1
	.loc 1 70 18 is_stmt 0
	li	a4,57344
	addi	a4,a4,3
	and	a4,a5,a4
	.loc 1 70 11
	li	a2,16384
	beq	a4,a2,.L26
	.loc 1 72 8 is_stmt 1
	.loc 1 72 11 is_stmt 0
	addi	a2,a2,2
	beq	a4,a2,.L27
	.loc 1 82 8 is_stmt 1
	.loc 1 82 11 is_stmt 0
	li	a2,24576
	beq	a4,a2,.L28
	.loc 1 84 8 is_stmt 1
	.loc 1 84 11 is_stmt 0
	addi	a2,a2,2
	beq	a4,a2,.L21
.LVL9:
.L9:
	.loc 1 90 5 is_stmt 1
	.loc 1 91 5
	.loc 1 91 8 is_stmt 0
 #APP
# 91 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrw mcause, 5
# 0 "" 2
	.loc 1 92 5 is_stmt 1
.LVL10:
 #NO_APP
.LBB55:
.LBB56:
	.loc 1 30 5
 #APP
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L11:
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 5
	.loc 1 31 13
	j	.L11
.LVL11:
.L21:
.LBE56:
.LBE55:
	.loc 1 85 17 is_stmt 0
	li	a6,4
	.loc 1 85 8
	li	t1,1
	.loc 1 42 7
	li	a7,0
.LVL12:
.L6:
	.loc 1 95 3 is_stmt 1
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 95 13
	li	a5,0
	li	a4,0
	sw	a5,12(sp)
	.loc 1 96 3 is_stmt 1
.LBB57:
	.loc 1 96 8
.LVL13:
.LBE57:
	.loc 1 95 13 is_stmt 0
	sw	a4,8(sp)
	add	a6,a6,t5
.LVL14:
	mv	a5,t5
.LVL15:
.L12:
.LBB62:
	.loc 1 97 5 is_stmt 1 discriminator 3
.LBB58:
.LBB59:
	.loc 2 39 75 discriminator 3
.LBE59:
.LBE58:
	.loc 1 97 18 is_stmt 0 discriminator 3
	sub	a4,a5,t5
.LVL16:
	addi	a2,sp,8
	add	a4,a2,a4
.LVL17:
.LBB61:
.LBB60:
	.loc 2 39 94 discriminator 3
	li	a1,131072
	.loc 2 39 136 is_stmt 1 discriminator 3
	.loc 2 39 155 is_stmt 0 discriminator 3
	mv	a2,t4
	.loc 2 39 181 is_stmt 1 discriminator 3
	.loc 2 39 222 discriminator 3
	.loc 2 39 235 discriminator 3
	addi	a5,a5,1
.LVL18:
 #APP
# 39 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
lbu t0, -1(a5)
csrw mstatus, a3
# 0 "" 2
.LVL19:
	.loc 2 39 390 discriminator 3
 #NO_APP
.LBE60:
.LBE61:
	.loc 1 97 18 is_stmt 0 discriminator 3
	sb	t0,0(a4)
.LVL20:
	.loc 1 96 3 discriminator 3
	bne	a6,a5,.L12
.LVL21:
.LBE62:
	.loc 1 99 3 is_stmt 1
	lw	a4,8(sp)
	.loc 1 99 6 is_stmt 0
	bne	t1,zero,.L13
	.loc 1 100 5 is_stmt 1
.LBB63:
	.loc 1 100 10
.LVL22:
	.loc 1 100 46
	.loc 1 100 127 is_stmt 0
	srli	a5,t6,5
	.loc 1 100 152
	andi	a5,a5,124
.LBE63:
	.loc 1 100 189
	sll	a4,a4,a7
	.loc 1 100 167
	add	a5,a0,a5
	.loc 1 100 198
	sra	a7,a4,a7
.LVL23:
	.loc 1 100 167
	sw	a7,124(a5)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 13 is_stmt 0
	sw	t3,0(a0)
	.loc 1 112 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L13:
	.cfi_restore_state
	.loc 1 107 5 is_stmt 1
	.loc 1 108 5
	.loc 1 107 39 is_stmt 0
	srli	a5,t6,7
	.loc 1 107 9
	andi	a5,a5,31
	.loc 1 108 9
	addi	a5,a5,1
	.loc 1 108 21
	slli	a5,a5,2
	add	a5,a0,a5
	sw	a4,0(a5)
	.loc 1 111 3 is_stmt 1
	.loc 1 111 13 is_stmt 0
	sw	t3,0(a0)
	.loc 1 112 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L27:
	.loc 1 72 48 discriminator 1
	srli	a5,a5,7
.LVL26:
	.loc 1 72 54 discriminator 1
	andi	a5,a5,31
	.loc 1 72 38 discriminator 1
	beq	a5,zero,.L9
.L20:
	.loc 1 73 9
	li	a6,4
	.loc 1 42 18
	li	t1,0
	.loc 1 73 20
	li	a7,0
	j	.L6
.LVL27:
.L19:
	.loc 1 62 9
	li	a6,2
	.loc 1 42 18
	li	t1,0
	.loc 1 42 7
	li	a7,0
	j	.L6
.L18:
	.loc 1 60 9
	li	a6,2
	.loc 1 42 18
	li	t1,0
	.loc 1 60 20
	li	a7,16
	j	.L6
.L26:
	.loc 1 71 5 is_stmt 1
.LVL28:
	.loc 1 71 72 is_stmt 0
	srli	a5,a5,2
.LVL29:
	.loc 1 71 80
	andi	a5,a5,7
	.loc 1 71 61
	addi	a5,a5,8
.LVL30:
	.loc 1 71 56
	slli	t6,a5,7
.LVL31:
	.loc 1 71 9
	li	a6,4
	.loc 1 42 18
	li	t1,0
	.loc 1 71 20
	li	a7,0
	j	.L6
.LVL32:
.L28:
	.loc 1 83 5 is_stmt 1
	.loc 1 83 43 is_stmt 0
	srli	a5,a5,2
.LVL33:
	.loc 1 83 51
	andi	a5,a5,7
	.loc 1 83 32
	addi	a5,a5,8
.LVL34:
	.loc 1 83 27
	slli	t6,a5,7
.LVL35:
	.loc 1 83 17
	li	a6,4
	.loc 1 83 8
	li	t1,1
	.loc 1 42 7
	li	a7,0
	j	.L6
	.cfi_endproc
.LFE15:
	.size	misaligned_load_trap, .-misaligned_load_trap
	.section	.text.misaligned_store_trap,"ax",@progbits
	.align	1
	.globl	misaligned_store_trap
	.type	misaligned_store_trap, @function
misaligned_store_trap:
.LFB16:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL36:
.LBB64:
.LBB65:
	.loc 2 71 22 is_stmt 0
	li	a1,655360
.LVL37:
	.loc 2 83 3
	li	a4,3
 #APP
# 83 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
and a6, a2, 2
bnez a6, 1f
lw a5, (a2)
and a6, a5, a4
beq a6, a4, 2f
sll a5, a5, 16
srl a5, a5, 16
j 2f
1:
lhu a5, (a2)
and a6, a5, a4
bne a6, a4, 2f
lhu a6, 2(a2)
sll a6, a6, 16
add a5, a5, a6
2: csrw mstatus, a3
# 0 "" 2
 #NO_APP
.LBE65:
.LBE64:
.LBB67:
.LBB68:
	.loc 1 25 16
	andi	a1,a5,3
.LBE68:
.LBE67:
	.loc 1 115 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 115 1
	mv	t3,a0
	.loc 1 116 3 is_stmt 1
	.loc 1 117 3
	.loc 1 118 3
.LVL38:
.LBB71:
.LBB66:
	.loc 2 71 3
	.loc 2 72 3
	.loc 2 73 3
	.loc 2 74 3
	.loc 2 82 3
	.loc 2 83 3
	.loc 2 104 3
	.loc 2 105 3
.LBE66:
.LBE71:
	.loc 1 119 3
.LBB72:
.LBB69:
	.loc 1 25 3
.LBE69:
.LBE72:
	.loc 1 115 1 is_stmt 0
	mv	t1,a2
.LBB73:
.LBB70:
	.loc 1 25 33
	li	t4,4
	beq	a1,a4,.L30
	li	t4,2
.L30:
.LVL39:
.LBE70:
.LBE73:
.LBB74:
	.loc 1 122 138
	srli	a4,a5,18
	addi	a0,t3,124
.LVL40:
	.loc 1 122 164
	andi	a4,a4,124
.LBE74:
	.loc 1 122 15
	add	a4,a4,a0
	.loc 1 122 12
	lw	a4,0(a4)
	.loc 1 123 6
	li	a2,8192
.LVL41:
	addi	a1,a2,35
	.loc 1 122 12
	sw	a4,8(sp)
	.loc 1 123 13
	li	a4,28672
	addi	a4,a4,127
	and	a4,a5,a4
	.loc 1 119 13
	add	t4,t1,t4
.LVL42:
	.loc 1 120 3 is_stmt 1
	.loc 1 122 3
.LBB75:
	.loc 1 122 19
	.loc 1 122 55
.LBE75:
	.loc 1 123 3
	.loc 1 123 6 is_stmt 0
	beq	a4,a1,.L40
	.loc 1 134 8 is_stmt 1
	.loc 1 134 11 is_stmt 0
	addi	a2,a2,39
	beq	a4,a2,.L48
	.loc 1 137 8 is_stmt 1
	.loc 1 137 11 is_stmt 0
	li	a2,4096
	addi	a2,a2,35
	beq	a4,a2,.L41
	.loc 1 146 8 is_stmt 1
	.loc 1 146 18 is_stmt 0
	li	a2,57344
	addi	a4,a2,3
	and	a4,a5,a4
	.loc 1 146 11
	li	a1,49152
	beq	a4,a1,.L49
	.loc 1 148 8 is_stmt 1
	.loc 1 148 11 is_stmt 0
	addi	a1,a1,2
	beq	a4,a1,.L50
	.loc 1 158 8 is_stmt 1
	.loc 1 158 11 is_stmt 0
	beq	a4,a2,.L51
	.loc 1 160 8 is_stmt 1
	.loc 1 160 11 is_stmt 0
	addi	a2,a2,2
	beq	a4,a2,.L52
.L35:
	.loc 1 166 5 is_stmt 1
.LVL43:
	.loc 1 167 5
	.loc 1 167 8 is_stmt 0
 #APP
# 167 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrw mcause, 7
# 0 "" 2
	.loc 1 168 5 is_stmt 1
.LVL44:
 #NO_APP
.LBB76:
.LBB77:
	.loc 1 30 5
 #APP
# 30 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	ebreak
# 0 "" 2
 #NO_APP
.L37:
	.loc 1 31 5
	.loc 1 31 13
	.loc 1 31 5
	.loc 1 31 13
	j	.L37
.LVL45:
.L48:
.LBE77:
.LBE76:
	.loc 1 135 5
.LBB78:
	.loc 1 135 29
	.loc 1 135 102 is_stmt 0
	srli	a5,a5,17
.LVL46:
	.loc 1 135 126
	andi	a0,a5,248
	.loc 1 135 134 is_stmt 1
	.loc 1 135 149
.LBE78:
	.loc 1 135 9 is_stmt 0
	li	a4,4
.LBB79:
	.loc 1 135 149
 #APP
# 135 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL47:
	.loc 1 135 275 is_stmt 1
 #NO_APP
.LBE79:
	.loc 1 135 23 is_stmt 0
	sw	a0,8(sp)
.LVL48:
.L31:
	.loc 1 171 3 is_stmt 1
.LBB80:
	.loc 1 171 23
	.loc 1 171 44
 #APP
# 171 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	csrr a7, mbadaddr
# 0 "" 2
.LVL49:
	.loc 1 171 97
 #NO_APP
.LBE80:
	.loc 1 172 3
.LBB81:
	.loc 1 172 8
.LBE81:
.LBB84:
	.loc 1 171 44 is_stmt 0
	addi	a5,sp,8
	add	a4,a4,a5
.LVL50:
	sub	a7,a7,a5
.LVL51:
.L38:
.LBE84:
.LBB85:
	.loc 1 173 5 is_stmt 1 discriminator 3
	add	a6,a7,a5
	lbu	a0,0(a5)
.LVL52:
.LBB82:
.LBB83:
	.loc 2 44 80 discriminator 3
	.loc 2 44 99 is_stmt 0 discriminator 3
	li	a1,131072
	.loc 2 44 141 is_stmt 1 discriminator 3
	.loc 2 44 160 is_stmt 0 discriminator 3
	mv	a2,t1
	.loc 2 44 186 is_stmt 1 discriminator 3
	.loc 2 44 227 discriminator 3
 #APP
# 44 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/unprivileged_memory.h" 1
	csrrs a3, mstatus, a1
sb a0, 0(a6)
csrw mstatus, a3
# 0 "" 2
.LVL53:
 #NO_APP
	addi	a5,a5,1
.LVL54:
.LBE83:
.LBE82:
	.loc 1 172 3 is_stmt 0 discriminator 3
	bne	a4,a5,.L38
.LBE85:
	.loc 1 175 3 is_stmt 1
	.loc 1 175 13 is_stmt 0
	sw	t4,0(t3)
	.loc 1 176 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
.LVL55:
	jr	ra
.LVL56:
.L40:
	.cfi_restore_state
	.loc 1 124 9
	li	a4,4
	j	.L31
.L49:
	.loc 1 147 5 is_stmt 1
.LVL57:
.LBB86:
	.loc 1 147 30
	.loc 1 147 66
	.loc 1 147 129 is_stmt 0
	andi	a5,a5,28
.LVL58:
.LBE86:
	.loc 1 147 26
	add	a5,a0,a5
	.loc 1 147 23
	lw	a5,32(a5)
	.loc 1 147 9
	li	a4,4
	.loc 1 147 23
	sw	a5,8(sp)
	j	.L31
.LVL59:
.L41:
	.loc 1 138 9
	li	a4,2
	j	.L31
.L51:
	.loc 1 159 5 is_stmt 1
.LVL60:
.LBB87:
	.loc 1 159 29
	.loc 1 159 95 is_stmt 0
	srli	a0,a5,2
	.loc 1 159 103
	andi	a0,a0,7
	.loc 1 159 84
	addi	a0,a0,8
	.loc 1 159 138
	slli	a0,a0,3
	.loc 1 159 207 is_stmt 1
	.loc 1 159 222
.LBE87:
	.loc 1 159 9 is_stmt 0
	li	a4,4
.LBB88:
	.loc 1 159 222
 #APP
# 159 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL61:
	.loc 1 159 348 is_stmt 1
 #NO_APP
.LBE88:
	.loc 1 159 23 is_stmt 0
	sw	a0,8(sp)
	j	.L31
.LVL62:
.L50:
	.loc 1 148 48 discriminator 1
	srli	a4,a5,7
	.loc 1 148 54 discriminator 1
	andi	a4,a4,31
	.loc 1 148 38 discriminator 1
	beq	a4,zero,.L35
	.loc 1 149 5 is_stmt 1
.LVL63:
.LBB89:
	.loc 1 149 30
	.loc 1 149 66
	.loc 1 149 172 is_stmt 0
	andi	a5,a5,124
.LVL64:
.LBE89:
	.loc 1 149 26
	add	a5,a5,a0
	.loc 1 149 23
	lw	a5,0(a5)
	.loc 1 149 9
	li	a4,4
	.loc 1 149 23
	sw	a5,8(sp)
	.loc 1 149 12
	j	.L31
.LVL65:
.L52:
	.loc 1 161 5 is_stmt 1
.LBB90:
	.loc 1 161 29
	.loc 1 161 100 is_stmt 0
	slli	a5,a5,1
.LVL66:
	.loc 1 161 123
	andi	a0,a5,248
	.loc 1 161 131 is_stmt 1
	.loc 1 161 146
.LBE90:
	.loc 1 161 9 is_stmt 0
	li	a4,4
.LBB91:
	.loc 1 161 146
 #APP
# 161 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c" 1
	1: auipc a5, %pcrel_hi(get_f32_reg); add a5, a5, a0; jalr t0, a5, %pcrel_lo(1b)
# 0 "" 2
.LVL67:
	.loc 1 161 272 is_stmt 1
 #NO_APP
.LBE91:
	.loc 1 161 23 is_stmt 0
	sw	a0,8(sp)
	j	.L31
	.cfi_endproc
.LFE16:
	.size	misaligned_store_trap, .-misaligned_store_trap
	.text
.Letext0:
	.file 3 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/emulation.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x74e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0x130
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x5e
	.byte	0x4
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0x7f
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x53
	.byte	0xd
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x56
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.4byte	0xa0
	.byte	0x6
	.byte	0x4
	.4byte	0xa0
	.byte	0x7
	.4byte	.LASF40
	.byte	0x8
	.byte	0x1
	.byte	0x11
	.byte	0x7
	.4byte	0xf0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0xb
	.4byte	0xf0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0xa0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.4byte	0x73
	.byte	0
	.byte	0x9
	.4byte	0x4d
	.4byte	0x100
	.byte	0xa
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x386
	.byte	0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x72
	.byte	0x27
	.4byte	0xb8
	.4byte	.LLST19
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.byte	0x37
	.4byte	0xa0
	.4byte	.LLST20
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x72
	.byte	0x49
	.4byte	0xa0
	.4byte	.LLST21
	.byte	0xd
	.string	"val"
	.byte	0x1
	.byte	0x74
	.byte	0x14
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST22
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x76
	.byte	0xa
	.4byte	0xac
	.4byte	.LLST23
	.byte	0xd
	.string	"npc"
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x6d
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x78
	.byte	0x7
	.4byte	0x86
	.4byte	.LLST24
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST25
	.byte	0x10
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x1ba
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7a
	.byte	0x17
	.4byte	0x86
	.byte	0x7c
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x1de
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x87
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x87
	.byte	0x90
	.4byte	0xa0
	.byte	0
	.byte	0x14
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.4byte	0x1fc
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x93
	.byte	0x22
	.4byte	0x86
	.4byte	.LLST37
	.byte	0
	.byte	0x14
	.4byte	.LBB89
	.4byte	.LBE89-.LBB89
	.4byte	0x21a
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x95
	.byte	0x22
	.4byte	0x86
	.4byte	.LLST38
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0x100
	.4byte	0x23e
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x9f
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x9f
	.byte	0xd9
	.4byte	0xa0
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0x118
	.4byte	0x262
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa1
	.byte	0x2e
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0xa1
	.byte	0x8d
	.4byte	0xa0
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x27c
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0xab
	.byte	0x25
	.4byte	0x6c
	.4byte	.LLST25
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0x2df
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0xac
	.byte	0xc
	.4byte	0x86
	.4byte	.LLST33
	.byte	0x15
	.4byte	0x662
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.byte	0x16
	.4byte	0x687
	.4byte	.LLST34
	.byte	0x16
	.4byte	0x67b
	.4byte	.LLST35
	.byte	0x16
	.4byte	0x66f
	.4byte	.LLST36
	.byte	0x17
	.4byte	.LBB83
	.4byte	.LBE83-.LBB83
	.byte	0x18
	.4byte	0x693
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x69f
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x6ab
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5f0
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x76
	.byte	0x11
	.4byte	0x329
	.byte	0x1a
	.4byte	0x60d
	.byte	0x1a
	.4byte	0x601
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x18
	.4byte	0x619
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x625
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x631
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x63d
	.byte	0x1d
	.4byte	0x649
	.byte	0x3
	.byte	0x1c
	.4byte	0x655
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5d2
	.4byte	.LBB67
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x77
	.byte	0x1a
	.4byte	0x347
	.byte	0x16
	.4byte	0x5e3
	.4byte	.LLST26
	.byte	0
	.byte	0x15
	.4byte	0x588
	.4byte	.LBB76
	.4byte	.LBE76-.LBB76
	.byte	0x1
	.byte	0xa8
	.byte	0xc
	.byte	0x16
	.4byte	0x5c5
	.4byte	.LLST27
	.byte	0x16
	.4byte	0x5b9
	.4byte	.LLST28
	.byte	0x16
	.4byte	0x5ad
	.4byte	.LLST29
	.byte	0x16
	.4byte	0x5a1
	.4byte	.LLST30
	.byte	0x16
	.4byte	0x595
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x588
	.byte	0x1e
	.4byte	.LASF18
	.byte	0x1
	.byte	0x22
	.byte	0x26
	.4byte	0xb8
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x22
	.byte	0x36
	.4byte	0xa0
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x22
	.byte	0x48
	.4byte	0xa0
	.4byte	.LLST1
	.byte	0xd
	.string	"val"
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	0xbe
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x25
	.byte	0xd
	.4byte	0xa0
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x26
	.byte	0xa
	.4byte	0xac
	.4byte	.LLST3
	.byte	0xd
	.string	"npc"
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x6c
	.byte	0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0xa0
	.byte	0x1
	.byte	0x6e
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x2a
	.byte	0x7
	.4byte	0x86
	.4byte	.LLST4
	.byte	0xf
	.string	"fp"
	.byte	0x1
	.byte	0x2a
	.byte	0x12
	.4byte	0x86
	.4byte	.LLST5
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x2a
	.byte	0x1a
	.4byte	0x86
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.4byte	0x460
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x28
	.byte	0x25
	.4byte	0x6c
	.byte	0x1
	.byte	0x6e
	.byte	0
	.byte	0x10
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x4bb
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x60
	.byte	0x11
	.4byte	0x94
	.4byte	.LLST15
	.byte	0x1f
	.4byte	0x6be
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x61
	.byte	0x14
	.byte	0x16
	.4byte	0x6db
	.4byte	.LLST16
	.byte	0x16
	.4byte	0x6cf
	.4byte	.LLST17
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x18
	.4byte	0x6e7
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x6f3
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x6ff
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x70b
	.byte	0
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.4byte	0x4d9
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x64
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST18
	.byte	0
	.byte	0x19
	.4byte	0x5f0
	.4byte	.LBB44
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x26
	.byte	0x11
	.4byte	0x52b
	.byte	0x16
	.4byte	0x60d
	.4byte	.LLST7
	.byte	0x16
	.4byte	0x601
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.4byte	0x619
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.4byte	0x625
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	0x631
	.byte	0x1
	.byte	0x5d
	.byte	0x1c
	.4byte	0x63d
	.byte	0x1d
	.4byte	0x649
	.byte	0x3
	.byte	0x1c
	.4byte	0x655
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	0x5d2
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x27
	.byte	0x1a
	.4byte	0x549
	.byte	0x16
	.4byte	0x5e3
	.4byte	.LLST9
	.byte	0
	.byte	0x15
	.4byte	0x588
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.byte	0x16
	.4byte	0x5c5
	.4byte	.LLST10
	.byte	0x16
	.4byte	0x5b9
	.4byte	.LLST11
	.byte	0x16
	.4byte	0x5ad
	.4byte	.LLST12
	.byte	0x16
	.4byte	0x5a1
	.4byte	.LLST13
	.byte	0x16
	.4byte	0x595
	.4byte	.LLST14
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.byte	0x1
	.4byte	0x5d2
	.byte	0x21
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.byte	0x24
	.4byte	0xb8
	.byte	0x21
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1c
	.byte	0x34
	.4byte	0xa0
	.byte	0x21
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1c
	.byte	0x46
	.4byte	0xa0
	.byte	0x21
	.4byte	.LASF21
	.byte	0x1
	.byte	0x1c
	.byte	0x56
	.4byte	0xa0
	.byte	0x21
	.4byte	.LASF22
	.byte	0x1
	.byte	0x1c
	.byte	0x66
	.4byte	0xac
	.byte	0
	.byte	0x22
	.4byte	.LASF30
	.byte	0x1
	.byte	0x17
	.byte	0x13
	.4byte	0x86
	.byte	0x3
	.4byte	0x5f0
	.byte	0x21
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.byte	0x21
	.4byte	0x3f
	.byte	0
	.byte	0x22
	.4byte	.LASF31
	.byte	0x2
	.byte	0x45
	.byte	0x38
	.4byte	0xa0
	.byte	0x3
	.4byte	0x662
	.byte	0x21
	.4byte	.LASF20
	.byte	0x2
	.byte	0x45
	.byte	0x4b
	.4byte	0xa0
	.byte	0x21
	.4byte	.LASF21
	.byte	0x2
	.byte	0x45
	.byte	0x5c
	.4byte	0xb8
	.byte	0x23
	.4byte	.LASF32
	.byte	0x2
	.byte	0x47
	.byte	0x16
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF33
	.byte	0x2
	.byte	0x48
	.byte	0x16
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF34
	.byte	0x2
	.byte	0x49
	.byte	0x16
	.4byte	0xa0
	.byte	0x13
	.string	"val"
	.byte	0x2
	.byte	0x4a
	.byte	0xd
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF35
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.4byte	0xa0
	.byte	0x13
	.string	"tmp"
	.byte	0x2
	.byte	0x52
	.byte	0x1b
	.4byte	0xa0
	.byte	0
	.byte	0x24
	.4byte	.LASF42
	.byte	0x2
	.byte	0x2c
	.byte	0x14
	.byte	0x3
	.4byte	0x6b8
	.byte	0x21
	.4byte	.LASF23
	.byte	0x2
	.byte	0x2c
	.byte	0x2b
	.4byte	0x6b8
	.byte	0x25
	.string	"val"
	.byte	0x2
	.byte	0x2c
	.byte	0x39
	.4byte	0x4d
	.byte	0x21
	.4byte	.LASF20
	.byte	0x2
	.byte	0x2c
	.byte	0x48
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF32
	.byte	0x2
	.byte	0x2c
	.byte	0x63
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF33
	.byte	0x2
	.byte	0x2c
	.byte	0xa0
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF34
	.byte	0x2
	.byte	0x2c
	.byte	0xcd
	.4byte	0xa0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4d
	.byte	0x22
	.4byte	.LASF36
	.byte	0x2
	.byte	0x27
	.byte	0x17
	.4byte	0x4d
	.byte	0x3
	.4byte	0x718
	.byte	0x21
	.4byte	.LASF23
	.byte	0x2
	.byte	0x27
	.byte	0x33
	.4byte	0x718
	.byte	0x21
	.4byte	.LASF20
	.byte	0x2
	.byte	0x27
	.byte	0x43
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF32
	.byte	0x2
	.byte	0x27
	.byte	0x5e
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF33
	.byte	0x2
	.byte	0x27
	.byte	0x9b
	.4byte	0xa0
	.byte	0x23
	.4byte	.LASF34
	.byte	0x2
	.byte	0x27
	.byte	0xc8
	.4byte	0xa0
	.byte	0x13
	.string	"val"
	.byte	0x2
	.byte	0x27
	.byte	0xe6
	.4byte	0x4d
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x59
	.byte	0x26
	.4byte	0x588
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.byte	0x27
	.4byte	0x595
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.4byte	0x5a1
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.4byte	0x5ad
	.byte	0x1
	.byte	0x5c
	.byte	0x27
	.4byte	0x5b9
	.byte	0x1
	.byte	0x5d
	.byte	0x27
	.4byte	0x5c5
	.byte	0x1
	.byte	0x5e
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
	.byte	0x17
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST19:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL41
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL56
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE16
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x9
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x91
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x72
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x37
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL25
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL25
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x7
	.byte	0x8f
	.byte	0
	.byte	0x37
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x7
	.byte	0x8e
	.byte	0
	.byte	0x20
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL15
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x8
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+985
	.byte	0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	0
	.4byte	0
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"truly_illegal_insn"
.LASF16:
	.string	"intx"
.LASF13:
	.string	"uintptr_t"
.LASF34:
	.string	"__mstatus"
.LASF23:
	.string	"addr"
.LASF32:
	.string	"__mstatus_adjust"
.LASF35:
	.string	"rvc_mask"
.LASF9:
	.string	"uint64_t"
.LASF40:
	.string	"byte_array"
.LASF28:
	.string	"misaligned_load_trap"
.LASF22:
	.string	"insn"
.LASF30:
	.string	"insn_len"
.LASF6:
	.string	"unsigned char"
.LASF33:
	.string	"__mepc"
.LASF8:
	.string	"long unsigned int"
.LASF19:
	.string	"mcause"
.LASF7:
	.string	"short unsigned int"
.LASF18:
	.string	"regs"
.LASF20:
	.string	"mepc"
.LASF27:
	.string	"misaligned_store_trap"
.LASF36:
	.string	"load_uint8_t"
.LASF12:
	.string	"intptr_t"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF5:
	.string	"uint8_t"
.LASF38:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/components/bl602/freertos_riscv_ram/misaligned/misaligned_ldst.c"
.LASF4:
	.string	"int32_t"
.LASF3:
	.string	"long long int"
.LASF14:
	.string	"insn_t"
.LASF24:
	.string	"mask"
.LASF25:
	.string	"value"
.LASF39:
	.string	"/home/hogc/build-tools/sdk/bl/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/freertos_riscv_ram"
.LASF26:
	.string	"__tmp"
.LASF1:
	.string	"short int"
.LASF31:
	.string	"get_insn"
.LASF21:
	.string	"mstatus"
.LASF29:
	.string	"shift"
.LASF2:
	.string	"long int"
.LASF15:
	.string	"bytes"
.LASF42:
	.string	"store_uint8_t"
.LASF0:
	.string	"signed char"
.LASF37:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF17:
	.string	"int64"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
