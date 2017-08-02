	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .text
	.GLOBAL _start
	.ARM
_start:					@ Entry point of the ROM on startup
	b init				@ Skip over the header information

	.INCLUDE "asm/rom_header.s"

	.ALIGN 2, 0
init:
	mov r0, #PSR_IRQ_MODE	@ switch to IRQ mode
	msr cpsr, r0
	ldr sp, sp_irq			@ set IRQ mode stack pointer
	mov r0, #PSR_SYS_MODE
	msr cpsr, r0
	ldr sp, sp_usr			@ set USR mode stack pointer
	ldr r1, _08000230 @=gUnknown_03007FFC
	adr r0, interrupt_main
	str r0, [r1]
	ldr r1, _08000234 @=AgbMain
	mov lr, pc
	bx r1
	b init

	.ALIGN 2, 0
sp_usr: .4byte IWRAM_END - 0x100
sp_irq: .4byte IWRAM_END - 0x60


	ARM_FUNC_START irq_enable
irq_enable:
	stmfd sp!, {r0}
	mrs r0, cpsr
	bic r0, r0, #PSR_IRQ_DISABLE_BIT
	msr cpsr, r0
	ldmia sp!, {r0}
	bx lr
ARM_FUNC_END irq_enable
THUMB_INTERWORK_VENEER irq_enable


	ARM_FUNC_START irq_disable
irq_disable:
	stmfd sp!, {r0}
	mrs r0, cpsr
	orr r0, r0, #PSR_IRQ_DISABLE_BIT
	msr cpsr, r0
	ldmia sp!, {r0}
	bx lr
ARM_FUNC_END irq_disable
THUMB_INTERWORK_VENEER irq_disable


	ARM_FUNC_START interrupt_main
interrupt_main:
	stmdb sp!, {lr}
	mrs r0, spsr
	stmdb sp!, {r0}
	mrs r0, cpsr
	bic r1, r0, #PSR_IRQ_MODE
	orr r1, r0, #PSR_SYS_MODE
	msr cpsr, r1
	push {r0,lr}
	ldr r3, _0800022C  @ =REG_IE
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #INTR_FLAG_VBLANK
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_SERIAL
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_HBLANK
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_VCOUNT
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER0
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER1
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER2
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_TIMER3
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA0
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA1
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA2
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_DMA3
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_KEYPAD
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #INTR_FLAG_GAMEPAK
  found_interrupt:
	strh r0, [r3, #2]
	ldr r1, _08000238  @ =gUnknown_08076D58
	add r1, r1, r2
	ldr r0, [r1]
	mov lr, pc
	bx r0
ARM_FUNC_END interrupt_main


ARM_FUNC_START sub_08000214
sub_08000214:
	pop {r0, lr}
	msr cpsr, r0
	ldmia sp!, {r0}
	msr spsr, r0
	ldmia sp!, {lr}
	bx lr
ARM_FUNC_END sub_08000214


	.pool
_0800022C:
	.4byte REG_IE
_08000230:
	.4byte gUnknown_03007FFC
_08000234:
	.4byte AgbMain
_08000238:
	.4byte gUnknown_08076D58
