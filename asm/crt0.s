	.INCLUDE "gba.inc"

	.GLOBAL _start

	.text

_start:
	b init

	.INCLUDE "asm/rom_header.s"

init:
	mov r0, #18			@ switch to IRQ mode
	msr cpsr, r0
	ldr sp, sp_irq		@ set IRQ mode stack pointer
	mov r0, #31
	msr cpsr, r0
	ldr sp, sp_usr		@ set USR mode stack pointer
	ldr r1, _08000230 @=0x03007FFC
	adr r0, interrupt_main
	str r0, [r1]
	ldr r1, _08000234 @=AgbMain+1
	mov lr, pc
	bx r1
	b init

	.ALIGN 2
sp_usr: .4byte IWRAM_END - 0x100
sp_irq: .4byte IWRAM_END - 0x60



	stmfd sp!, {r0}
	mrs r0, cpsr
	bic r0, r0, #128
	msr cpsr, r0
	ldmia sp!, {r0}
	bx lr


	stmfd sp!, {r0}
	mrs r0, cpsr
	orr r0, r0, #128
	msr cpsr, r0
	ldmia sp!, {r0}
	bx lr

	.ALIGN 2
interrupt_main:
	stmdb sp!, {lr}
	mrs r0, spsr
	stmdb sp!, {r0}
	mrs r0, cpsr
	bic r1, r0, #18
	orr r1, r0, #31
	msr cpsr, r1
	push {r0,lr}
	ldr r3, _0800022C  @ =0x04000200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
	mov r2, #0
	ands r0, r1, #1
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #128
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #2
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #4
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #8
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #16
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #32
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #64
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #256
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #512
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #1024
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #2048
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #4096
	bne found_interrupt
	add r2, r2, #4
	ands r0, r1, #0x2000
  found_interrupt:
	strh r0, [r3, #2]
	ldr r1, _08000238  @ =0x08076D58
	add r1, r1, r2
	ldr r0, [r1]
	mov lr, pc
	bx r0



	pop {r0, lr}
	msr cpsr, r0
	ldmia sp!, {r0}
	msr spsr, r0
	ldmia sp!, {lr}
	bx lr
		
_0800022C:
	.4byte 0x04000200
_08000230:
	.4byte 0x03007FFC
_08000234:
	.4byte AgbMain+1
_08000238:
	.4byte 0x08076D58
