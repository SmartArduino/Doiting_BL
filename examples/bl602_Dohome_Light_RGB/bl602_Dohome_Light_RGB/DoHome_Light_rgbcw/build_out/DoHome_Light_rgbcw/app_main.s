	.file	"app_main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.main_task,"ax",@progbits
	.align	1
	.globl	main_task
	.type	main_task, @function
main_task:
.LFB8:
	.file 1 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/app_main.c"
	.loc 1 67 26
	.cfi_startproc
.LVL0:
	.loc 1 69 5
	.loc 1 67 26 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s8,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 24, -40
	.loc 1 69 5
	call	doit_device_info_init
.LVL1:
	.loc 1 70 5 is_stmt 1
	call	flash_storage_init
.LVL2:
	.loc 1 71 5
	lui	a1,%hi(manytimes_restart_cb)
	lui	a0,%hi(not_manytimes_res_cb)
	addi	a1,a1,%lo(manytimes_restart_cb)
	addi	a0,a0,%lo(not_manytimes_res_cb)
	call	flash_reg_manytimes_restart_cb
.LVL3:
	.loc 1 73 5
	call	product_init
.LVL4:
	.loc 1 75 5
	lui	a0,%hi(wifi_event_handler)
	addi	a0,a0,%lo(wifi_event_handler)
.LBB28:
.LBB29:
	.loc 1 88 18 is_stmt 0
	li	s0,-28672
.LBE29:
.LBE28:
	.loc 1 75 5
	call	wifi_init
.LVL5:
	.loc 1 77 5 is_stmt 1
.LBB36:
	.loc 1 83 17 is_stmt 0
	lui	s5,%hi(.LANCHOR0)
.LBE36:
	.loc 1 77 5
	call	doit_sntp_init
.LVL6:
	.loc 1 78 5 is_stmt 1
.LBB37:
	.loc 1 83 11 is_stmt 0
	li	s6,10
.LBE37:
	.loc 1 78 5
	call	doit_timer_init
.LVL7:
.LBB38:
.LBB34:
.LBB30:
.LBB31:
	.file 2 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 31
	lui	s7,%hi(TrapNetCounter)
.LBE31:
.LBE30:
	.loc 1 88 18
	addi	s0,s0,-128
	lui	s2,%hi(.LC0)
	lui	s1,%hi(.LC1)
.L2:
.LBE34:
.LBE38:
	.loc 1 80 5 is_stmt 1
.LBB39:
	.loc 1 81 9
	.loc 1 82 9
	li	a0,1000
	call	vTaskDelay
.LVL8:
	.loc 1 83 9
	.loc 1 83 17 is_stmt 0
	addi	a5,s5,%lo(.LANCHOR0)
	lw	a4,0(a5)
	addi	a3,a4,1
	sw	a3,0(a5)
	.loc 1 83 11
	ble	a4,s6,.L2
.LBB35:
	.loc 1 84 13 is_stmt 1
	.loc 1 84 19 is_stmt 0
	sw	zero,0(a5)
	.loc 1 85 13 is_stmt 1
	.loc 1 85 31 is_stmt 0
	call	hal_timer_now_ms
.LVL9:
	mv	s3,a0
.LVL10:
	.loc 1 86 13 is_stmt 1
	.loc 1 86 30 is_stmt 0
	call	time_get_curr_sec
.LVL11:
	mv	s8,a0
.LVL12:
	.loc 1 87 13 is_stmt 1
	.loc 1 87 32 is_stmt 0
	call	xPortGetFreeHeapSize
.LVL13:
	.loc 1 88 18
	lw	a5,%lo(TrapNetCounter)(s7)
	.loc 1 87 32
	mv	s4,a0
.LVL14:
	.loc 1 88 13 is_stmt 1
	.loc 1 88 18
.LBB33:
.LBB32:
	.loc 2 151 5
.LBE32:
.LBE33:
	.loc 1 88 18 is_stmt 0
	beq	a5,zero,.L3
	.loc 1 88 141 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL15:
.L4:
	.loc 1 88 18 discriminator 4
	li	a3,1000
	div	a3,s3,a3
	mv	a1,a0
	add	a5,s8,s0
	mv	a4,s4
	addi	a2,s2,%lo(.LC0)
	addi	a0,s1,%lo(.LC1)
	call	bl_printk
.LVL16:
	j	.L2
.LVL17:
.L3:
	.loc 1 88 170 discriminator 2
	call	xTaskGetTickCount
.LVL18:
	j	.L4
.LBE35:
.LBE39:
	.cfi_endproc
.LFE8:
	.size	main_task, .-main_task
	.section	.text.manytimes_restart_cb,"ax",@progbits
	.align	1
	.type	manytimes_restart_cb, @function
manytimes_restart_cb:
.LFB7:
	.loc 1 60 48 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 62 5
	.loc 1 62 10
.LBB40:
.LBB41:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE41:
.LBE40:
	.loc 1 62 10
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 60 48
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 60 48
	mv	s0,a0
	.loc 1 62 10
	beq	a5,zero,.L9
	.loc 1 62 115 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL20:
.L10:
	.loc 1 62 10 discriminator 4
	mv	a1,a0
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC2)
	mv	a3,s0
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL21:
	.loc 1 63 5 is_stmt 1 discriminator 4
	call	wifi_setup_ap
.LVL22:
	.loc 1 64 5 discriminator 4
	.loc 1 65 1 is_stmt 0 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 64 5 discriminator 4
	tail	start_tcp_config
.LVL23:
.L9:
	.cfi_restore_state
	.loc 1 62 144 discriminator 2
	call	xTaskGetTickCount
.LVL24:
	j	.L10
	.cfi_endproc
.LFE7:
	.size	manytimes_restart_cb, .-manytimes_restart_cb
	.section	.text.not_manytimes_res_cb,"ax",@progbits
	.align	1
	.type	not_manytimes_res_cb, @function
not_manytimes_res_cb:
.LFB6:
	.loc 1 53 39 is_stmt 1
	.cfi_startproc
	.loc 1 55 5
	.loc 1 55 10
.LBB42:
.LBB43:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE43:
.LBE42:
	.loc 1 55 10
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 53 39
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 55 10
	beq	a5,zero,.L13
	.loc 1 55 108 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL25:
.L14:
	.loc 1 55 10 discriminator 4
	mv	a1,a0
	lui	a2,%hi(.LC0)
	lui	a0,%hi(.LC3)
	addi	a2,a2,%lo(.LC0)
	addi	a0,a0,%lo(.LC3)
	call	bl_printk
.LVL26:
	.loc 1 56 5 is_stmt 1 discriminator 4
	.loc 1 57 1 is_stmt 0 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 56 5 discriminator 4
	tail	wifi_setup_sta
.LVL27:
.L13:
	.cfi_restore_state
	.loc 1 55 137 discriminator 2
	call	xTaskGetTickCount
.LVL28:
	j	.L14
	.cfi_endproc
.LFE6:
	.size	not_manytimes_res_cb, .-not_manytimes_res_cb
	.section	.text.wifi_event_handler,"ax",@progbits
	.align	1
	.globl	wifi_event_handler
	.type	wifi_event_handler, @function
wifi_event_handler:
.LFB5:
	.loc 1 33 53 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 34 5
	.loc 1 33 53 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	lui	a5,%hi(TrapNetCounter)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	lw	a5,%lo(TrapNetCounter)(a5)
	lui	s0,%hi(.LC0)
	.loc 1 34 5
	beq	a0,zero,.L17
	li	a4,1
	mv	s1,a0
	beq	a0,a4,.L18
	.loc 1 47 13 is_stmt 1
	.loc 1 47 18
	.loc 2 151 5
	.loc 1 47 18 is_stmt 0
	beq	a5,zero,.L24
	.loc 1 47 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL30:
.L25:
	.loc 1 47 18 discriminator 4
	addi	a2,s0,%lo(.LC0)
	.loc 1 50 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 47 18 discriminator 4
	mv	a3,s1
	.loc 1 50 1 discriminator 4
	lw	s1,4(sp)
	.cfi_restore 9
.LVL31:
	.loc 1 47 18 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC6)
	.loc 1 50 1 discriminator 4
	.loc 1 47 18 discriminator 4
	addi	a0,a0,%lo(.LC6)
	.loc 1 50 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 47 18 discriminator 4
	tail	bl_printk
.LVL32:
.L17:
	.cfi_restore_state
.LBB56:
.LBB57:
	.loc 1 37 13 is_stmt 1
	.loc 1 37 18
.LBE57:
.LBE56:
	.loc 2 151 5
.LBB60:
.LBB58:
	.loc 1 37 18 is_stmt 0
	beq	a5,zero,.L20
	.loc 1 37 108
	call	xTaskGetTickCountFromISR
.LVL33:
.L21:
	.loc 1 37 18
	mv	a1,a0
	lui	a0,%hi(.LC4)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC4)
	call	bl_printk
.LVL34:
	.loc 1 38 13 is_stmt 1
	call	doit_udp_control_init
.LVL35:
	.loc 1 39 13
	call	doit_tcp_client_init
.LVL36:
	.loc 1 40 13
	call	doit_ota_server_init
.LVL37:
	.loc 1 41 13
.LBE58:
.LBE60:
	.loc 1 50 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB61:
.LBB59:
	.loc 1 41 13
	tail	start_tcp_config
.LVL38:
.L20:
	.cfi_restore_state
	.loc 1 37 137
	call	xTaskGetTickCount
.LVL39:
	j	.L21
.LVL40:
.L18:
.LBE59:
.LBE61:
	.loc 1 44 13 is_stmt 1
	.loc 1 44 18
	.loc 2 151 5
	.loc 1 44 18 is_stmt 0
	beq	a5,zero,.L22
	.loc 1 44 111 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL41:
.L23:
	.loc 1 44 18 discriminator 4
	addi	a2,s0,%lo(.LC0)
	.loc 1 50 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL42:
	.loc 1 44 18 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC5)
	.loc 1 50 1 discriminator 4
	.loc 1 44 18 discriminator 4
	addi	a0,a0,%lo(.LC5)
	.loc 1 50 1 discriminator 4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 44 18 discriminator 4
	tail	bl_printk
.LVL43:
.L22:
	.cfi_restore_state
	.loc 1 44 140 discriminator 2
	call	xTaskGetTickCount
.LVL44:
	j	.L23
.L24:
	.loc 1 47 139 discriminator 2
	call	xTaskGetTickCount
.LVL45:
	j	.L25
	.cfi_endproc
.LFE5:
	.size	wifi_event_handler, .-wifi_event_handler
	.section	.text.user_main,"ax",@progbits
	.align	1
	.globl	user_main
	.type	user_main, @function
user_main:
.LFB9:
	.loc 1 94 21 is_stmt 1
	.cfi_startproc
	.loc 1 95 5
	.loc 1 95 10
.LBB62:
.LBB63:
	.loc 2 151 5
.LBE63:
.LBE62:
	.loc 1 94 21 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
.LBB65:
.LBB64:
	.loc 2 151 31
	lui	s1,%hi(TrapNetCounter)
.LBE64:
.LBE65:
	.loc 1 95 10
	lw	a5,%lo(TrapNetCounter)(s1)
	.loc 1 94 21
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 95 10
	beq	a5,zero,.L29
	.loc 1 95 103 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL46:
.L30:
	.loc 1 95 10 discriminator 4
	mv	a1,a0
	lui	s0,%hi(.LC0)
	lui	a0,%hi(.LC7)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL47:
	.loc 1 97 5 is_stmt 1 discriminator 4
	.loc 1 97 9 is_stmt 0 discriminator 4
	lui	a1,%hi(.LC8)
	lui	a0,%hi(main_task)
	li	a5,0
	li	a4,6
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(main_task)
	call	xTaskCreate
.LVL48:
	.loc 1 97 8 discriminator 4
	li	a5,1
	bne	a0,a5,.L31
	.loc 1 98 9 is_stmt 1
	.loc 1 98 14
.LBB66:
.LBB67:
	.loc 2 151 5
.LBE67:
.LBE66:
	.loc 1 98 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L32
	.loc 1 98 126 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL49:
.L33:
	.loc 1 98 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC9)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC9)
.L37:
	.loc 1 103 1 discriminator 4
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 100 14 discriminator 4
	tail	bl_printk
.LVL50:
.L29:
	.cfi_restore_state
	.loc 1 95 132 discriminator 2
	call	xTaskGetTickCount
.LVL51:
	j	.L30
.L32:
	.loc 1 98 155 discriminator 2
	call	xTaskGetTickCount
.LVL52:
	j	.L33
.L31:
	.loc 1 100 9 is_stmt 1
	.loc 1 100 14
.LBB68:
.LBB69:
	.loc 2 151 5
.LBE69:
.LBE68:
	.loc 1 100 14 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s1)
	beq	a5,zero,.L34
	.loc 1 100 121 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL53:
.L35:
	.loc 1 100 14 discriminator 4
	mv	a1,a0
	lui	a0,%hi(.LC10)
	addi	a2,s0,%lo(.LC0)
	addi	a0,a0,%lo(.LC10)
	j	.L37
.L34:
	.loc 1 100 150 discriminator 2
	call	xTaskGetTickCount
.LVL54:
	j	.L35
	.cfi_endproc
.LFE9:
	.size	user_main, .-user_main
	.globl	_fsymf_info_DoHome_Light_rgbcwapp_main
	.comm	_fsymf_level_DoHome_Light_rgbcwapp_main,1,1
	.comm	_fsymc_level_DoHome_Light_rgbcw,1,1
	.section	.rodata.main_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"app_main"
	.zero	3
.LC1:
	.string	"\033[32m[%10u][%s] run_time: %d    os_heap: %d    timestamp: %lu\033[0m\r\n"
	.section	.rodata.manytimes_restart_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"\033[32m[%10u][%s] manytimes_restart_count: %d\033[0m\r\n"
	.section	.rodata.not_manytimes_res_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"\033[32m[%10u][%s] not_manytimes_res_cb\033[0m\r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC11:
	.string	"DoHome_Light_rgbcw.app_main"
.LC12:
	.string	"DoHome_Light_rgbcw"
	.section	.rodata.user_main.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"\033[32m[%10u][%s] user_main_start\033[0m\r\n"
	.zero	2
.LC8:
	.string	"main_task"
	.zero	2
.LC9:
	.string	"\033[32m[%10u][%s] xTaskCreate main_task successfully\033[0m\r\n"
	.zero	3
.LC10:
	.string	"\033[32m[%10u][%s] xTaskCreate(main_task) failed\033[0m\r\n"
	.section	.rodata.wifi_event_handler.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"\033[32m[%10u][%s] wifi_connect\033[0m\r\n"
	.zero	1
.LC5:
	.string	"\033[32m[%10u][%s] wifi_disconnect\033[0m\r\n"
	.zero	2
.LC6:
	.string	"\033[32m[%10u][%s] wifi_event: %d\033[0m\r\n"
	.section	.sbss.count.3139,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	count.3139, @object
	.size	count.3139, 4
count.3139:
	.zero	4
	.section	.sdata2.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.DoHome_Light_rgbcw,"a"
	.align	2
	.type	_fsymc_info_DoHome_Light_rgbcw, @object
	.size	_fsymc_info_DoHome_Light_rgbcw, 8
_fsymc_info_DoHome_Light_rgbcw:
	.word	_fsymc_level_DoHome_Light_rgbcw
	.word	.LC12
	.section	.static_blogfile_code.DoHome_Light_rgbcwapp_main,"a"
	.align	2
	.type	_fsymf_info_DoHome_Light_rgbcwapp_main, @object
	.size	_fsymf_info_DoHome_Light_rgbcwapp_main, 8
_fsymf_info_DoHome_Light_rgbcwapp_main:
	.word	_fsymf_level_DoHome_Light_rgbcwapp_main
	.word	.LC11
	.text
.Letext0:
	.file 3 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 5 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_wifi.h"
	.file 6 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h"
	.file 7 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h"
	.file 8 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h"
	.file 9 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_device_info.h"
	.file 10 "/b-l/bl_iot_sdk/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h"
	.file 11 "/b-l/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 12 "/b-l/bl_iot_sdk/components/stage/blog/blog.h"
	.file 13 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 14 "/b-l/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 15 "/b-l/bl_iot_sdk/components/hal_drv/bl602_hal/hal_timer.h"
	.file 16 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_sntp.h"
	.file 17 "/b-l/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 18 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_flash.h"
	.file 19 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/product/include/product.h"
	.file 20 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_timer.h"
	.file 21 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_tcp_config.h"
	.file 22 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_udp_control.h"
	.file 23 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_tcp_client.h"
	.file 24 "/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/components/doit_server/include/doit_ota.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1050
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF185
	.byte	0xc
	.4byte	.LASF186
	.4byte	.LASF187
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0xd8
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x28
	.byte	0x12
	.4byte	0x59
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x73
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x92
	.byte	0x5
	.4byte	0x81
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x41
	.byte	0x12
	.4byte	0x81
	.byte	0x7
	.4byte	.LASF127
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0xa2
	.byte	0x8
	.byte	0x4
	.4byte	0xd3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.4byte	0xcc
	.byte	0x9
	.4byte	.LASF137
	.byte	0x7
	.byte	0x1
	.4byte	0x73
	.byte	0x5
	.byte	0x5
	.byte	0x6
	.4byte	0xfd
	.byte	0xa
	.4byte	.LASF16
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0xa
	.4byte	.LASF18
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa
	.byte	0x17
	.4byte	0x92
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x38
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2e
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF22
	.byte	0x6
	.byte	0x74
	.byte	0xe
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.4byte	0x15c
	.byte	0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0xa7
	.byte	0xc
	.4byte	0x109
	.byte	0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa8
	.byte	0x13
	.4byte	0x15c
	.byte	0
	.byte	0xe
	.4byte	0x73
	.4byte	0x16c
	.byte	0xf
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x10
	.byte	0x8
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x190
	.byte	0x11
	.4byte	.LASF26
	.byte	0x6
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x11
	.4byte	.LASF27
	.byte	0x6
	.byte	0xa9
	.byte	0x5
	.4byte	0x13a
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0xaa
	.byte	0x3
	.4byte	0x16c
	.byte	0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x16
	.byte	0x17
	.4byte	0x92
	.byte	0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x23
	.byte	0x1b
	.4byte	0x1a8
	.byte	0x12
	.4byte	.LASF36
	.byte	0x18
	.byte	0x7
	.byte	0x34
	.byte	0x8
	.4byte	0x21a
	.byte	0x11
	.4byte	.LASF32
	.byte	0x7
	.byte	0x36
	.byte	0x13
	.4byte	0x21a
	.byte	0
	.byte	0x13
	.string	"_k"
	.byte	0x7
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.4byte	.LASF33
	.byte	0x7
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0x11
	.4byte	.LASF34
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0x11
	.4byte	.LASF35
	.byte	0x7
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x13
	.string	"_x"
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x220
	.byte	0x14
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1c0
	.byte	0xe
	.4byte	0x19c
	.4byte	0x230
	.byte	0xf
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF37
	.byte	0x24
	.byte	0x7
	.byte	0x3c
	.byte	0x8
	.4byte	0x2b3
	.byte	0x11
	.4byte	.LASF38
	.byte	0x7
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x11
	.4byte	.LASF39
	.byte	0x7
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.4byte	.LASF40
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x11
	.4byte	.LASF41
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0x11
	.4byte	.LASF42
	.byte	0x7
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x11
	.4byte	.LASF43
	.byte	0x7
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0x11
	.4byte	.LASF44
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x11
	.4byte	.LASF45
	.byte	0x7
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x11
	.4byte	.LASF46
	.byte	0x7
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x14
	.4byte	.LASF47
	.2byte	0x108
	.byte	0x7
	.byte	0x4f
	.byte	0x8
	.4byte	0x2f8
	.byte	0x11
	.4byte	.LASF48
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x2f8
	.byte	0
	.byte	0x11
	.4byte	.LASF49
	.byte	0x7
	.byte	0x51
	.byte	0x9
	.4byte	0x2f8
	.byte	0x80
	.byte	0x15
	.4byte	.LASF50
	.byte	0x7
	.byte	0x53
	.byte	0xa
	.4byte	0x19c
	.2byte	0x100
	.byte	0x15
	.4byte	.LASF51
	.byte	0x7
	.byte	0x56
	.byte	0xa
	.4byte	0x19c
	.2byte	0x104
	.byte	0
	.byte	0xe
	.4byte	0xa0
	.4byte	0x308
	.byte	0xf
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x14
	.4byte	.LASF52
	.2byte	0x190
	.byte	0x7
	.byte	0x62
	.byte	0x8
	.4byte	0x34b
	.byte	0x11
	.4byte	.LASF32
	.byte	0x7
	.byte	0x63
	.byte	0x12
	.4byte	0x34b
	.byte	0
	.byte	0x11
	.4byte	.LASF53
	.byte	0x7
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0x11
	.4byte	.LASF54
	.byte	0x7
	.byte	0x66
	.byte	0x9
	.4byte	0x351
	.byte	0x8
	.byte	0x11
	.4byte	.LASF47
	.byte	0x7
	.byte	0x67
	.byte	0x1e
	.4byte	0x2b3
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x308
	.byte	0xe
	.4byte	0x361
	.4byte	0x361
	.byte	0xf
	.4byte	0x38
	.byte	0x1f
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x367
	.byte	0x16
	.byte	0x12
	.4byte	.LASF55
	.byte	0x8
	.byte	0x7
	.byte	0x7a
	.byte	0x8
	.4byte	0x390
	.byte	0x11
	.4byte	.LASF56
	.byte	0x7
	.byte	0x7b
	.byte	0x11
	.4byte	0x390
	.byte	0
	.byte	0x11
	.4byte	.LASF57
	.byte	0x7
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x73
	.byte	0x12
	.4byte	.LASF58
	.byte	0x68
	.byte	0x7
	.byte	0xba
	.byte	0x8
	.4byte	0x4d9
	.byte	0x13
	.string	"_p"
	.byte	0x7
	.byte	0xbb
	.byte	0x12
	.4byte	0x390
	.byte	0
	.byte	0x13
	.string	"_r"
	.byte	0x7
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x13
	.string	"_w"
	.byte	0x7
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0x11
	.4byte	.LASF59
	.byte	0x7
	.byte	0xbe
	.byte	0x9
	.4byte	0x46
	.byte	0xc
	.byte	0x11
	.4byte	.LASF60
	.byte	0x7
	.byte	0xbf
	.byte	0x9
	.4byte	0x46
	.byte	0xe
	.byte	0x13
	.string	"_bf"
	.byte	0x7
	.byte	0xc0
	.byte	0x11
	.4byte	0x368
	.byte	0x10
	.byte	0x11
	.4byte	.LASF61
	.byte	0x7
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0x11
	.4byte	.LASF62
	.byte	0x7
	.byte	0xc8
	.byte	0xa
	.4byte	0xa0
	.byte	0x1c
	.byte	0x11
	.4byte	.LASF63
	.byte	0x7
	.byte	0xca
	.byte	0xe
	.4byte	0x651
	.byte	0x20
	.byte	0x11
	.4byte	.LASF64
	.byte	0x7
	.byte	0xcc
	.byte	0xe
	.4byte	0x675
	.byte	0x24
	.byte	0x11
	.4byte	.LASF65
	.byte	0x7
	.byte	0xcf
	.byte	0xd
	.4byte	0x699
	.byte	0x28
	.byte	0x11
	.4byte	.LASF66
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0x6b3
	.byte	0x2c
	.byte	0x13
	.string	"_ub"
	.byte	0x7
	.byte	0xd3
	.byte	0x11
	.4byte	0x368
	.byte	0x30
	.byte	0x13
	.string	"_up"
	.byte	0x7
	.byte	0xd4
	.byte	0x12
	.4byte	0x390
	.byte	0x38
	.byte	0x13
	.string	"_ur"
	.byte	0x7
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0x11
	.4byte	.LASF67
	.byte	0x7
	.byte	0xd8
	.byte	0x11
	.4byte	0x6b9
	.byte	0x40
	.byte	0x11
	.4byte	.LASF68
	.byte	0x7
	.byte	0xd9
	.byte	0x11
	.4byte	0x6c9
	.byte	0x43
	.byte	0x13
	.string	"_lb"
	.byte	0x7
	.byte	0xdc
	.byte	0x11
	.4byte	0x368
	.byte	0x44
	.byte	0x11
	.4byte	.LASF69
	.byte	0x7
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0x11
	.4byte	.LASF70
	.byte	0x7
	.byte	0xe0
	.byte	0xa
	.4byte	0x116
	.byte	0x50
	.byte	0x11
	.4byte	.LASF71
	.byte	0x7
	.byte	0xe3
	.byte	0x12
	.4byte	0x4f7
	.byte	0x54
	.byte	0x11
	.4byte	.LASF72
	.byte	0x7
	.byte	0xe7
	.byte	0xc
	.4byte	0x1b4
	.byte	0x58
	.byte	0x11
	.4byte	.LASF73
	.byte	0x7
	.byte	0xe9
	.byte	0xe
	.4byte	0x190
	.byte	0x5c
	.byte	0x11
	.4byte	.LASF74
	.byte	0x7
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x17
	.4byte	0x12e
	.4byte	0x4f7
	.byte	0x18
	.4byte	0x4f7
	.byte	0x18
	.4byte	0xa0
	.byte	0x18
	.4byte	0x64b
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x502
	.byte	0x5
	.4byte	0x4f7
	.byte	0x19
	.4byte	.LASF75
	.2byte	0x428
	.byte	0x7
	.2byte	0x265
	.byte	0x8
	.4byte	0x64b
	.byte	0x1a
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x1a
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x26c
	.byte	0xb
	.4byte	0x725
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x26c
	.byte	0x14
	.4byte	0x725
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x725
	.byte	0xc
	.byte	0x1a
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x1a
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x26f
	.byte	0x8
	.4byte	0x925
	.byte	0x14
	.byte	0x1a
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x1a
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x273
	.byte	0x16
	.4byte	0x93a
	.byte	0x34
	.byte	0x1a
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x1a
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x277
	.byte	0xa
	.4byte	0x94b
	.byte	0x3c
	.byte	0x1a
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x27a
	.byte	0x13
	.4byte	0x21a
	.byte	0x40
	.byte	0x1a
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x1a
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x27c
	.byte	0x13
	.4byte	0x21a
	.byte	0x48
	.byte	0x1a
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x27d
	.byte	0x14
	.4byte	0x951
	.byte	0x4c
	.byte	0x1a
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x1a
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x281
	.byte	0x9
	.4byte	0x64b
	.byte	0x54
	.byte	0x1a
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x900
	.byte	0x58
	.byte	0x1b
	.4byte	.LASF52
	.byte	0x7
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x34b
	.2byte	0x148
	.byte	0x1b
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x308
	.2byte	0x14c
	.byte	0x1b
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x962
	.2byte	0x2dc
	.byte	0x1b
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6e6
	.2byte	0x2e0
	.byte	0x1b
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x96e
	.2byte	0x2ec
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xcc
	.byte	0x8
	.byte	0x4
	.4byte	0x4d9
	.byte	0x17
	.4byte	0x12e
	.4byte	0x675
	.byte	0x18
	.4byte	0x4f7
	.byte	0x18
	.4byte	0xa0
	.byte	0x18
	.4byte	0xc6
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x657
	.byte	0x17
	.4byte	0x122
	.4byte	0x699
	.byte	0x18
	.4byte	0x4f7
	.byte	0x18
	.4byte	0xa0
	.byte	0x18
	.4byte	0x122
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x67b
	.byte	0x17
	.4byte	0x25
	.4byte	0x6b3
	.byte	0x18
	.4byte	0x4f7
	.byte	0x18
	.4byte	0xa0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x69f
	.byte	0xe
	.4byte	0x73
	.4byte	0x6c9
	.byte	0xf
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0xe
	.4byte	0x73
	.4byte	0x6d9
	.byte	0xf
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x124
	.byte	0x18
	.4byte	0x396
	.byte	0x1c
	.4byte	.LASF98
	.byte	0xc
	.byte	0x7
	.2byte	0x128
	.byte	0x8
	.4byte	0x71f
	.byte	0x1a
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x12a
	.byte	0x11
	.4byte	0x71f
	.byte	0
	.byte	0x1a
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x12c
	.byte	0xb
	.4byte	0x725
	.byte	0x8
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x6e6
	.byte	0x8
	.byte	0x4
	.4byte	0x6d9
	.byte	0x1c
	.4byte	.LASF101
	.byte	0xe
	.byte	0x7
	.2byte	0x144
	.byte	0x8
	.4byte	0x764
	.byte	0x1a
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x145
	.byte	0x12
	.4byte	0x764
	.byte	0
	.byte	0x1a
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x146
	.byte	0x12
	.4byte	0x764
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x147
	.byte	0x12
	.4byte	0x7a
	.byte	0xc
	.byte	0
	.byte	0xe
	.4byte	0x7a
	.4byte	0x774
	.byte	0xf
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0x1d
	.byte	0xd0
	.byte	0x7
	.2byte	0x285
	.byte	0x7
	.4byte	0x889
	.byte	0x1a
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x287
	.byte	0x18
	.4byte	0x38
	.byte	0
	.byte	0x1a
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x288
	.byte	0x12
	.4byte	0x64b
	.byte	0x4
	.byte	0x1a
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x289
	.byte	0x10
	.4byte	0x889
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x28a
	.byte	0x17
	.4byte	0x230
	.byte	0x24
	.byte	0x1a
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x1a
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x99
	.byte	0x50
	.byte	0x1a
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x72b
	.byte	0x58
	.byte	0x1a
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x28e
	.byte	0x16
	.4byte	0x190
	.byte	0x68
	.byte	0x1a
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x28f
	.byte	0x16
	.4byte	0x190
	.byte	0x70
	.byte	0x1a
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x290
	.byte	0x16
	.4byte	0x190
	.byte	0x78
	.byte	0x1a
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x291
	.byte	0x10
	.4byte	0x899
	.byte	0x80
	.byte	0x1a
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x292
	.byte	0x10
	.4byte	0x8a9
	.byte	0x88
	.byte	0x1a
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x1a
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x294
	.byte	0x16
	.4byte	0x190
	.byte	0xa4
	.byte	0x1a
	.4byte	.LASF119
	.byte	0x7
	.2byte	0x295
	.byte	0x16
	.4byte	0x190
	.byte	0xac
	.byte	0x1a
	.4byte	.LASF120
	.byte	0x7
	.2byte	0x296
	.byte	0x16
	.4byte	0x190
	.byte	0xb4
	.byte	0x1a
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x297
	.byte	0x16
	.4byte	0x190
	.byte	0xbc
	.byte	0x1a
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x298
	.byte	0x16
	.4byte	0x190
	.byte	0xc4
	.byte	0x1a
	.4byte	.LASF123
	.byte	0x7
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0xe
	.4byte	0xcc
	.4byte	0x899
	.byte	0xf
	.4byte	0x38
	.byte	0x19
	.byte	0
	.byte	0xe
	.4byte	0xcc
	.4byte	0x8a9
	.byte	0xf
	.4byte	0x38
	.byte	0x7
	.byte	0
	.byte	0xe
	.4byte	0xcc
	.4byte	0x8b9
	.byte	0xf
	.4byte	0x38
	.byte	0x17
	.byte	0
	.byte	0x1d
	.byte	0xf0
	.byte	0x7
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8e0
	.byte	0x1a
	.4byte	.LASF124
	.byte	0x7
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8e0
	.byte	0
	.byte	0x1a
	.4byte	.LASF125
	.byte	0x7
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8f0
	.byte	0x78
	.byte	0
	.byte	0xe
	.4byte	0x390
	.4byte	0x8f0
	.byte	0xf
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0xe
	.4byte	0x38
	.4byte	0x900
	.byte	0xf
	.4byte	0x38
	.byte	0x1d
	.byte	0
	.byte	0x1e
	.byte	0xf0
	.byte	0x7
	.2byte	0x283
	.byte	0x3
	.4byte	0x925
	.byte	0x1f
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x29a
	.byte	0xb
	.4byte	0x774
	.byte	0x1f
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x8b9
	.byte	0
	.byte	0xe
	.4byte	0xcc
	.4byte	0x935
	.byte	0xf
	.4byte	0x38
	.byte	0x18
	.byte	0
	.byte	0x20
	.4byte	.LASF188
	.byte	0x8
	.byte	0x4
	.4byte	0x935
	.byte	0x21
	.4byte	0x94b
	.byte	0x18
	.4byte	0x4f7
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x940
	.byte	0x8
	.byte	0x4
	.4byte	0x21a
	.byte	0x21
	.4byte	0x962
	.byte	0x18
	.4byte	0x25
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x968
	.byte	0x8
	.byte	0x4
	.4byte	0x957
	.byte	0xe
	.4byte	0x6d9
	.4byte	0x97e
	.byte	0xf
	.4byte	0x38
	.byte	0x2
	.byte	0
	.byte	0x22
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x333
	.byte	0x17
	.4byte	0x4f7
	.byte	0x22
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4fd
	.byte	0xe
	.4byte	0xcc
	.4byte	0x9a8
	.byte	0xf
	.4byte	0x38
	.byte	0x3f
	.byte	0
	.byte	0x7
	.4byte	.LASF130
	.byte	0x9
	.byte	0x6
	.byte	0xd
	.4byte	0x998
	.byte	0xe
	.4byte	0xcc
	.4byte	0x9c4
	.byte	0xf
	.4byte	0x38
	.byte	0x20
	.byte	0
	.byte	0x7
	.4byte	.LASF131
	.byte	0x9
	.byte	0x7
	.byte	0xd
	.4byte	0x9b4
	.byte	0xe
	.4byte	0x67
	.4byte	0x9e0
	.byte	0xf
	.4byte	0x38
	.byte	0x5
	.byte	0
	.byte	0x7
	.4byte	.LASF132
	.byte	0x9
	.byte	0x8
	.byte	0x10
	.4byte	0x9d0
	.byte	0x7
	.4byte	.LASF133
	.byte	0xa
	.byte	0x9a
	.byte	0xd
	.4byte	0x59
	.byte	0x7
	.4byte	.LASF134
	.byte	0xa
	.byte	0x9b
	.byte	0xc
	.4byte	0x25
	.byte	0xe
	.4byte	0x64b
	.4byte	0xa14
	.byte	0xf
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x7
	.4byte	.LASF135
	.byte	0xa
	.byte	0x9e
	.byte	0xe
	.4byte	0xa04
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF136
	.byte	0x9
	.4byte	.LASF138
	.byte	0x7
	.byte	0x1
	.4byte	0x73
	.byte	0xb
	.byte	0x21
	.byte	0xe
	.4byte	0xa64
	.byte	0xa
	.4byte	.LASF139
	.byte	0
	.byte	0xa
	.4byte	.LASF140
	.byte	0x1
	.byte	0xa
	.4byte	.LASF141
	.byte	0x2
	.byte	0xa
	.4byte	.LASF142
	.byte	0x3
	.byte	0xa
	.4byte	.LASF143
	.byte	0x4
	.byte	0xa
	.4byte	.LASF144
	.byte	0x5
	.byte	0xa
	.4byte	.LASF145
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF146
	.byte	0xb
	.byte	0x29
	.byte	0x3
	.4byte	0xa27
	.byte	0x12
	.4byte	.LASF147
	.byte	0x8
	.byte	0xb
	.byte	0x2b
	.byte	0x10
	.4byte	0xa98
	.byte	0x11
	.4byte	.LASF148
	.byte	0xb
	.byte	0x2c
	.byte	0x13
	.4byte	0xa98
	.byte	0
	.byte	0x11
	.4byte	.LASF149
	.byte	0xb
	.byte	0x2d
	.byte	0xb
	.4byte	0x64b
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xa64
	.byte	0x3
	.4byte	.LASF150
	.byte	0xb
	.byte	0x2e
	.byte	0x3
	.4byte	0xa70
	.byte	0x5
	.4byte	0xa9e
	.byte	0x23
	.4byte	.LASF152
	.byte	0xc
	.byte	0x37
	.byte	0x17
	.4byte	0x8d
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF151
	.byte	0xc
	.byte	0x44
	.byte	0xe
	.4byte	0xa64
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_DoHome_Light_rgbcw
	.byte	0x23
	.4byte	.LASF153
	.byte	0xc
	.byte	0x45
	.byte	0x1a
	.4byte	0xaaa
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_DoHome_Light_rgbcw
	.byte	0x24
	.4byte	.LASF154
	.byte	0xc
	.byte	0x52
	.byte	0xe
	.4byte	0xa64
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_DoHome_Light_rgbcwapp_main
	.byte	0x24
	.4byte	.LASF155
	.byte	0xc
	.byte	0x53
	.byte	0x13
	.4byte	0xaaa
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_DoHome_Light_rgbcwapp_main
	.byte	0x25
	.4byte	.LASF156
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xbe5
	.byte	0x26
	.4byte	0xe4a
	.4byte	.LBB62
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x5f
	.byte	0x4c
	.byte	0x27
	.4byte	0xe4a
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x62
	.byte	0x63
	.byte	0x27
	.4byte	0xe4a
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0x64
	.byte	0x5e
	.byte	0x28
	.4byte	.LVL46
	.4byte	0xf53
	.byte	0x29
	.4byte	.LVL47
	.4byte	0xf60
	.4byte	0xb78
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x29
	.4byte	.LVL48
	.4byte	0xf6c
	.4byte	0xbae
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	main_task
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x36
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x28
	.4byte	.LVL49
	.4byte	0xf53
	.byte	0x2b
	.4byte	.LVL50
	.4byte	0xf60
	.byte	0x28
	.4byte	.LVL51
	.4byte	0xf79
	.byte	0x28
	.4byte	.LVL52
	.4byte	0xf79
	.byte	0x28
	.4byte	.LVL53
	.4byte	0xf53
	.byte	0x28
	.4byte	.LVL54
	.4byte	0xf79
	.byte	0
	.byte	0x25
	.4byte	.LASF157
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xd4d
	.byte	0x2c
	.string	"arg"
	.byte	0x1
	.byte	0x43
	.byte	0x16
	.4byte	0xa0
	.4byte	.LLST0
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0
	.4byte	0xce8
	.byte	0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x51
	.byte	0x14
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	count.3139
	.byte	0x2d
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xcd6
	.byte	0x2e
	.4byte	.LASF159
	.byte	0x1
	.byte	0x55
	.byte	0x11
	.4byte	0x25
	.4byte	.LLST1
	.byte	0x2e
	.4byte	.LASF160
	.byte	0x1
	.byte	0x56
	.byte	0x12
	.4byte	0x59
	.4byte	.LLST2
	.byte	0x2e
	.4byte	.LASF161
	.byte	0x1
	.byte	0x57
	.byte	0x14
	.4byte	0x2c
	.4byte	.LLST3
	.byte	0x26
	.4byte	0xe4a
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x58
	.byte	0x72
	.byte	0x28
	.4byte	.LVL9
	.4byte	0xf86
	.byte	0x28
	.4byte	.LVL11
	.4byte	0xf92
	.byte	0x28
	.4byte	.LVL13
	.4byte	0xf9e
	.byte	0x28
	.4byte	.LVL15
	.4byte	0xf53
	.byte	0x29
	.4byte	.LVL16
	.4byte	0xf60
	.4byte	0xccc
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.byte	0x83
	.byte	0
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1b
	.byte	0x2a
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x2a
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x88
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0x28
	.4byte	.LVL18
	.4byte	0xf79
	.byte	0
	.byte	0x2f
	.4byte	.LVL8
	.4byte	0xfaa
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL1
	.4byte	0xfb7
	.byte	0x28
	.4byte	.LVL2
	.4byte	0xfc3
	.byte	0x29
	.4byte	.LVL3
	.4byte	0xfcf
	.4byte	0xd1a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	not_manytimes_res_cb
	.byte	0x2a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	manytimes_restart_cb
	.byte	0
	.byte	0x28
	.4byte	.LVL4
	.4byte	0xfdb
	.byte	0x29
	.4byte	.LVL5
	.4byte	0xfe7
	.4byte	0xd3a
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	wifi_event_handler
	.byte	0
	.byte	0x28
	.4byte	.LVL6
	.4byte	0xff3
	.byte	0x28
	.4byte	.LVL7
	.4byte	0xfff
	.byte	0
	.byte	0x30
	.4byte	.LASF162
	.byte	0x1
	.byte	0x3c
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xdce
	.byte	0x31
	.4byte	.LASF158
	.byte	0x1
	.byte	0x3c
	.byte	0x2a
	.4byte	0x67
	.4byte	.LLST4
	.byte	0x27
	.4byte	0xe4a
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x3e
	.byte	0x58
	.byte	0x28
	.4byte	.LVL20
	.4byte	0xf53
	.byte	0x29
	.4byte	.LVL21
	.4byte	0xf60
	.4byte	0xdb2
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL22
	.4byte	0x100b
	.byte	0x2b
	.4byte	.LVL23
	.4byte	0x1017
	.byte	0x28
	.4byte	.LVL24
	.4byte	0xf79
	.byte	0
	.byte	0x30
	.4byte	.LASF163
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xe30
	.byte	0x27
	.4byte	0xe4a
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x37
	.byte	0x51
	.byte	0x28
	.4byte	.LVL25
	.4byte	0xf53
	.byte	0x29
	.4byte	.LVL26
	.4byte	0xf60
	.4byte	0xe1d
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x2b
	.4byte	.LVL27
	.4byte	0x1023
	.byte	0x28
	.4byte	.LVL28
	.4byte	0xf79
	.byte	0
	.byte	0x32
	.4byte	.LASF189
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.byte	0x1
	.4byte	0xe4a
	.byte	0x33
	.4byte	.LASF190
	.byte	0x1
	.byte	0x21
	.byte	0x2f
	.4byte	0xfd
	.byte	0
	.byte	0x34
	.4byte	.LASF191
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0xa2
	.byte	0x3
	.byte	0x35
	.4byte	0xe30
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xf53
	.byte	0x36
	.4byte	0xe3d
	.4byte	.LLST5
	.byte	0x37
	.4byte	0xe30
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0xee7
	.byte	0x36
	.4byte	0xe3d
	.4byte	.LLST6
	.byte	0x28
	.4byte	.LVL33
	.4byte	0xf53
	.byte	0x29
	.4byte	.LVL34
	.4byte	0xf60
	.4byte	0xeb9
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x28
	.4byte	.LVL35
	.4byte	0x102f
	.byte	0x28
	.4byte	.LVL36
	.4byte	0x103b
	.byte	0x28
	.4byte	.LVL37
	.4byte	0x1047
	.byte	0x2b
	.4byte	.LVL38
	.4byte	0x1017
	.byte	0x28
	.4byte	.LVL39
	.4byte	0xf79
	.byte	0
	.byte	0x28
	.4byte	.LVL30
	.4byte	0xf53
	.byte	0x38
	.4byte	.LVL32
	.4byte	0xf60
	.4byte	0xf17
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2a
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x28
	.4byte	.LVL41
	.4byte	0xf53
	.byte	0x38
	.4byte	.LVL43
	.4byte	0xf60
	.4byte	0xf40
	.byte	0x2a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x2a
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x28
	.4byte	.LVL44
	.4byte	0xf79
	.byte	0x28
	.4byte	.LVL45
	.4byte	0xf79
	.byte	0
	.byte	0x39
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x558
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xe
	.byte	0x9e
	.byte	0x6
	.byte	0x39
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xd
	.2byte	0x14a
	.byte	0xd
	.byte	0x39
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xd
	.2byte	0x547
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xf
	.byte	0x24
	.byte	0x9
	.byte	0x3a
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x10
	.byte	0x10
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x11
	.byte	0x94
	.byte	0x8
	.byte	0x39
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xd
	.2byte	0x2f6
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0x9
	.byte	0x12
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x12
	.byte	0x49
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x12
	.byte	0x4b
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x13
	.byte	0x30
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x5
	.byte	0x15
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x10
	.byte	0x17
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0x14
	.byte	0x2b
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x5
	.byte	0x11
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x15
	.byte	0x6
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x5
	.byte	0x12
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF182
	.4byte	.LASF182
	.byte	0x16
	.byte	0x5
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF183
	.4byte	.LASF183
	.byte	0x17
	.byte	0x5
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF184
	.4byte	.LASF184
	.byte	0x18
	.byte	0x10
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
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
	.byte	0x27
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
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32-1
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33-1
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF170:
	.string	"xPortGetFreeHeapSize"
.LASF149:
	.string	"name"
.LASF47:
	.string	"_on_exit_args"
.LASF142:
	.string	"BLOG_LEVEL_WARN"
.LASF134:
	.string	"_daylight"
.LASF114:
	.string	"_wctomb_state"
.LASF137:
	.string	"_WIFI_EVENT_INDICATE"
.LASF111:
	.string	"_r48"
.LASF143:
	.string	"BLOG_LEVEL_ERROR"
.LASF116:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF153:
	.string	"_fsymc_info_DoHome_Light_rgbcw"
.LASF61:
	.string	"_lbfsize"
.LASF59:
	.string	"_flags"
.LASF76:
	.string	"_errno"
.LASF148:
	.string	"level"
.LASF17:
	.string	"WIFI_EVENT_DISCONNECT"
.LASF119:
	.string	"_mbrtowc_state"
.LASF63:
	.string	"_read"
.LASF118:
	.string	"_mbrlen_state"
.LASF78:
	.string	"_stdout"
.LASF22:
	.string	"_fpos_t"
.LASF54:
	.string	"_fns"
.LASF62:
	.string	"_cookie"
.LASF18:
	.string	"WIFI_EVENT_CLIENT_ONLINE"
.LASF36:
	.string	"_Bigint"
.LASF44:
	.string	"__tm_wday"
.LASF86:
	.string	"_result"
.LASF10:
	.string	"uint32_t"
.LASF40:
	.string	"__tm_hour"
.LASF177:
	.string	"doit_sntp_init"
.LASF26:
	.string	"__count"
.LASF146:
	.string	"blog_level_t"
.LASF190:
	.string	"event"
.LASF39:
	.string	"__tm_min"
.LASF128:
	.string	"_impure_ptr"
.LASF124:
	.string	"_nextf"
.LASF101:
	.string	"_rand48"
.LASF87:
	.string	"_result_k"
.LASF12:
	.string	"long long unsigned int"
.LASF131:
	.string	"dev_key"
.LASF164:
	.string	"xTaskGetTickCountFromISR"
.LASF107:
	.string	"_asctime_buf"
.LASF58:
	.string	"__sFILE"
.LASF35:
	.string	"_wds"
.LASF186:
	.string	"/b-l/DoHome_Light_rgbcw/DoHome_Light_rgbcw/app_main.c"
.LASF97:
	.string	"__FILE"
.LASF165:
	.string	"bl_printk"
.LASF70:
	.string	"_offset"
.LASF147:
	.string	"_blog_info"
.LASF168:
	.string	"hal_timer_now_ms"
.LASF81:
	.string	"_emergency"
.LASF161:
	.string	"heap_size"
.LASF127:
	.string	"TrapNetCounter"
.LASF3:
	.string	"size_t"
.LASF38:
	.string	"__tm_sec"
.LASF141:
	.string	"BLOG_LEVEL_INFO"
.LASF45:
	.string	"__tm_yday"
.LASF80:
	.string	"_inc"
.LASF53:
	.string	"_ind"
.LASF145:
	.string	"BLOG_LEVEL_NEVER"
.LASF32:
	.string	"_next"
.LASF184:
	.string	"doit_ota_server_init"
.LASF120:
	.string	"_mbsrtowcs_state"
.LASF135:
	.string	"_tzname"
.LASF171:
	.string	"vTaskDelay"
.LASF27:
	.string	"__value"
.LASF88:
	.string	"_p5s"
.LASF158:
	.string	"count"
.LASF122:
	.string	"_wcsrtombs_state"
.LASF112:
	.string	"_mblen_state"
.LASF15:
	.string	"char"
.LASF41:
	.string	"__tm_mday"
.LASF94:
	.string	"_sig_func"
.LASF19:
	.string	"wifi_event_indicate_t"
.LASF93:
	.string	"_atexit0"
.LASF31:
	.string	"_flock_t"
.LASF166:
	.string	"xTaskCreate"
.LASF24:
	.string	"__wch"
.LASF100:
	.string	"_iobs"
.LASF7:
	.string	"uint8_t"
.LASF66:
	.string	"_close"
.LASF84:
	.string	"__sdidinit"
.LASF133:
	.string	"_timezone"
.LASF138:
	.string	"_blog_leve"
.LASF167:
	.string	"xTaskGetTickCount"
.LASF77:
	.string	"_stdin"
.LASF109:
	.string	"_gamma_signgam"
.LASF6:
	.string	"long long int"
.LASF56:
	.string	"_base"
.LASF89:
	.string	"_freelist"
.LASF103:
	.string	"_mult"
.LASF29:
	.string	"__ULong"
.LASF155:
	.string	"_fsymf_info_DoHome_Light_rgbcwapp_main"
.LASF152:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF189:
	.string	"wifi_event_handler"
.LASF121:
	.string	"_wcrtomb_state"
.LASF13:
	.string	"BaseType_t"
.LASF139:
	.string	"BLOG_LEVEL_ALL"
.LASF60:
	.string	"_file"
.LASF187:
	.string	"/b-l/DoHome_Light_rgbcw/build_out/DoHome_Light_rgbcw"
.LASF181:
	.string	"wifi_setup_sta"
.LASF85:
	.string	"__cleanup"
.LASF173:
	.string	"flash_storage_init"
.LASF28:
	.string	"_mbstate_t"
.LASF185:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF154:
	.string	"_fsymf_level_DoHome_Light_rgbcwapp_main"
.LASF48:
	.string	"_fnargs"
.LASF169:
	.string	"time_get_curr_sec"
.LASF46:
	.string	"__tm_isdst"
.LASF191:
	.string	"xPortIsInsideInterrupt"
.LASF123:
	.string	"_h_errno"
.LASF14:
	.string	"TickType_t"
.LASF159:
	.string	"run_time_ms"
.LASF182:
	.string	"doit_udp_control_init"
.LASF42:
	.string	"__tm_mon"
.LASF130:
	.string	"dev_id"
.LASF174:
	.string	"flash_reg_manytimes_restart_cb"
.LASF157:
	.string	"main_task"
.LASF160:
	.string	"timestamp"
.LASF64:
	.string	"_write"
.LASF52:
	.string	"_atexit"
.LASF73:
	.string	"_mbstate"
.LASF172:
	.string	"doit_device_info_init"
.LASF163:
	.string	"not_manytimes_res_cb"
.LASF2:
	.string	"short int"
.LASF5:
	.string	"long int"
.LASF183:
	.string	"doit_tcp_client_init"
.LASF96:
	.string	"__sf"
.LASF34:
	.string	"_sign"
.LASF175:
	.string	"product_init"
.LASF71:
	.string	"_data"
.LASF25:
	.string	"__wchb"
.LASF129:
	.string	"_global_impure_ptr"
.LASF43:
	.string	"__tm_year"
.LASF162:
	.string	"manytimes_restart_cb"
.LASF179:
	.string	"wifi_setup_ap"
.LASF108:
	.string	"_localtime_buf"
.LASF126:
	.string	"_unused"
.LASF92:
	.string	"_new"
.LASF90:
	.string	"_cvtlen"
.LASF33:
	.string	"_maxwds"
.LASF115:
	.string	"_l64a_buf"
.LASF69:
	.string	"_blksize"
.LASF37:
	.string	"__tm"
.LASF72:
	.string	"_lock"
.LASF11:
	.string	"long unsigned int"
.LASF99:
	.string	"_niobs"
.LASF20:
	.string	"wint_t"
.LASF4:
	.string	"int32_t"
.LASF49:
	.string	"_dso_handle"
.LASF144:
	.string	"BLOG_LEVEL_ASSERT"
.LASF91:
	.string	"_cvtbuf"
.LASF8:
	.string	"unsigned char"
.LASF30:
	.string	"_LOCK_RECURSIVE_T"
.LASF151:
	.string	"_fsymc_level_DoHome_Light_rgbcw"
.LASF104:
	.string	"_add"
.LASF55:
	.string	"__sbuf"
.LASF98:
	.string	"_glue"
.LASF176:
	.string	"wifi_init"
.LASF95:
	.string	"__sglue"
.LASF117:
	.string	"_getdate_err"
.LASF106:
	.string	"_strtok_last"
.LASF113:
	.string	"_mbtowc_state"
.LASF83:
	.string	"_locale"
.LASF180:
	.string	"start_tcp_config"
.LASF23:
	.string	"_ssize_t"
.LASF1:
	.string	"signed char"
.LASF75:
	.string	"_reent"
.LASF9:
	.string	"short unsigned int"
.LASF178:
	.string	"doit_timer_init"
.LASF140:
	.string	"BLOG_LEVEL_DEBUG"
.LASF16:
	.string	"WIFI_EVENT_CONNECT"
.LASF50:
	.string	"_fntypes"
.LASF57:
	.string	"_size"
.LASF136:
	.string	"double"
.LASF21:
	.string	"_off_t"
.LASF150:
	.string	"blog_info_t"
.LASF68:
	.string	"_nbuf"
.LASF105:
	.string	"_unused_rand"
.LASF132:
	.string	"station_mac"
.LASF82:
	.string	"_unspecified_locale_info"
.LASF74:
	.string	"_flags2"
.LASF156:
	.string	"user_main"
.LASF51:
	.string	"_is_cxa"
.LASF102:
	.string	"_seed"
.LASF110:
	.string	"_rand_next"
.LASF188:
	.string	"__locale_t"
.LASF65:
	.string	"_seek"
.LASF79:
	.string	"_stderr"
.LASF125:
	.string	"_nmalloc"
.LASF67:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
