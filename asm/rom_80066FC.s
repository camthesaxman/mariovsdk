	.INCLUDE "macro.inc"

THUMB_FUNC_START sub_080066FC
sub_080066FC:
	push {r4,lr}
	ldr r4, _0800670C  @ =0x03000964
	ldr r4, [r4]
	bl 0x080747E8
	pop {r4}
	pop {r1}
	bx r1
_0800670C:
	.4byte 0x03000964
THUMB_FUNC_END sub_080066FC

	.INCBIN "baserom.gba", 0x6710, 0x6DF8-0x6710
