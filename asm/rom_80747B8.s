	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"
	
	THUMB_FUNC_START sub_080747B8
sub_080747B8: @ 0x080747B8
	ldr r3, =(ROM + 0xB2)	@ address of magic value in ROM header
	ldrb r0, [r3]
	sub r0, r0, #0x96		
	beq done
	ldr r2, =REG_RCNT
	ldrh r0, [r2]
	lsr r0, r0, #14
	cmp r0, #3				@ check to see if we are in JOYBUS mode
	bne done
	swi #0x26				@ reboot system
done:
	bx lr
	.POOL
	THUMB_FUNC_END sub_080747B8
