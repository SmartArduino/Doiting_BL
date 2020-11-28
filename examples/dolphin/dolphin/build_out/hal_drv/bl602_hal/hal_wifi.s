	.file	"hal_wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.hal_wifi_start_firmware_task,"ax",@progbits
	.align	1
	.globl	hal_wifi_start_firmware_task
	.type	hal_wifi_start_firmware_task, @function
hal_wifi_start_firmware_task:
.LFB1:
	.file 1 "/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_wifi.c"
	.loc 1 41 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 43 5
	.loc 1 45 5
	lui	a6,%hi(.LANCHOR0)
	lui	a5,%hi(wifi_fw_stack.1421)
	lui	a1,%hi(.LC0)
	lui	a0,%hi(wifi_main)
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 45 5
	addi	a6,a6,%lo(.LANCHOR0)
	addi	a5,a5,%lo(wifi_fw_stack.1421)
	li	a4,30
	li	a3,0
	li	a2,1536
	addi	a1,a1,%lo(.LC0)
	addi	a0,a0,%lo(wifi_main)
	.loc 1 41 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 45 5
	call	xTaskCreateStatic
.LVL0:
	.loc 1 47 5 is_stmt 1
	.loc 1 48 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	hal_wifi_start_firmware_task, .-hal_wifi_start_firmware_task
	.section	.bss.wifi_fw_stack.1421,"aw",@nobits
	.align	2
	.type	wifi_fw_stack.1421, @object
	.size	wifi_fw_stack.1421, 6144
wifi_fw_stack.1421:
	.zero	6144
	.section	.bss.wifi_fw_task.1422,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wifi_fw_task.1422, @object
	.size	wifi_fw_task.1422, 96
wifi_fw_task.1422:
	.zero	96
	.section	.rodata.hal_wifi_start_firmware_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"fw"
	.text
.Letext0:
	.file 2 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 3 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 5 "/b-l/bl_iot_sdk_new/components/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x292
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x4d
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3e
	.byte	0x12
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x40
	.byte	0x12
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF39
	.byte	0x3
	.byte	0x54
	.byte	0x13
	.4byte	0x9d
	.byte	0x7
	.4byte	.LASF19
	.byte	0x14
	.byte	0x4
	.2byte	0x414
	.byte	0x8
	.4byte	0xf8
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x419
	.byte	0xd
	.4byte	0xb5
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x41a
	.byte	0x8
	.4byte	0xf8
	.byte	0x4
	.byte	0
	.byte	0x9
	.4byte	0x8f
	.4byte	0x108
	.byte	0xa
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x41f
	.byte	0x22
	.4byte	0xcd
	.byte	0x7
	.4byte	.LASF20
	.byte	0x60
	.byte	0x4
	.2byte	0x447
	.byte	0x10
	.4byte	0x1be
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x449
	.byte	0x8
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x44d
	.byte	0x13
	.4byte	0x1be
	.byte	0x4
	.byte	0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x44e
	.byte	0xe
	.4byte	0xa9
	.byte	0x2c
	.byte	0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x44f
	.byte	0x8
	.4byte	0x8f
	.byte	0x30
	.byte	0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x450
	.byte	0xa
	.4byte	0x1ce
	.byte	0x34
	.byte	0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x455
	.byte	0xf
	.4byte	0xa9
	.byte	0x44
	.byte	0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x458
	.byte	0xf
	.4byte	0x1de
	.byte	0x48
	.byte	0x8
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x45b
	.byte	0xf
	.4byte	0x1de
	.byte	0x50
	.byte	0x8
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x46a
	.byte	0xc
	.4byte	0x75
	.byte	0x58
	.byte	0x8
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x46b
	.byte	0xb
	.4byte	0x5b
	.byte	0x5c
	.byte	0x8
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x46e
	.byte	0xb
	.4byte	0x5b
	.byte	0x5d
	.byte	0
	.byte	0x9
	.4byte	0x108
	.4byte	0x1ce
	.byte	0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	0x5b
	.4byte	0x1de
	.byte	0xa
	.4byte	0x2c
	.byte	0xf
	.byte	0
	.byte	0x9
	.4byte	0xa9
	.4byte	0x1ee
	.byte	0xa
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x477
	.byte	0x3
	.4byte	0x115
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x277
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2a
	.byte	0x18
	.4byte	0x277
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_stack.1421
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0x1ee
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_task.1422
	.byte	0xe
	.4byte	.LVL0
	.4byte	0x288
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x600
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4e
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	wifi_fw_stack.1421
	.byte	0xf
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	0x91
	.4byte	0x288
	.byte	0x10
	.4byte	0x2c
	.2byte	0x5ff
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x1be
	.byte	0xf
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x11
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"StaticTask_t"
.LASF40:
	.string	"hal_wifi_start_firmware_task"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"uxDummy20"
.LASF30:
	.string	"ucDummy19"
.LASF39:
	.string	"TrapNetCounter"
.LASF6:
	.string	"uint8_t"
.LASF16:
	.string	"xDummy2"
.LASF22:
	.string	"xDummy3"
.LASF18:
	.string	"StaticListItem_t"
.LASF4:
	.string	"long long int"
.LASF15:
	.string	"TickType_t"
.LASF3:
	.string	"long int"
.LASF36:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"xSTATIC_LIST_ITEM"
.LASF38:
	.string	"/b-l/dolphin/build_out/hal_drv"
.LASF7:
	.string	"unsigned char"
.LASF1:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF9:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF13:
	.string	"BaseType_t"
.LASF8:
	.string	"short unsigned int"
.LASF33:
	.string	"char"
.LASF5:
	.string	"int32_t"
.LASF34:
	.string	"wifi_fw_stack"
.LASF23:
	.string	"uxDummy5"
.LASF26:
	.string	"uxDummy9"
.LASF10:
	.string	"long unsigned int"
.LASF14:
	.string	"UBaseType_t"
.LASF12:
	.string	"StackType_t"
.LASF29:
	.string	"ulDummy18"
.LASF25:
	.string	"ucDummy7"
.LASF41:
	.string	"xTaskCreateStatic"
.LASF20:
	.string	"xSTATIC_TCB"
.LASF17:
	.string	"pvDummy3"
.LASF35:
	.string	"wifi_fw_task"
.LASF27:
	.string	"uxDummy10"
.LASF28:
	.string	"uxDummy12"
.LASF37:
	.string	"/b-l/bl_iot_sdk_new/components/hal_drv/bl602_hal/hal_wifi.c"
.LASF21:
	.string	"pxDummy1"
.LASF24:
	.string	"pxDummy6"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
