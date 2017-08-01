	.INCLUDE "macro.inc"

THUMB_FUNC_START sub_080070E8
sub_080070E8:
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _08007114  @ =gUnknown_030009C4
	ldr r1, [r0]
	add r3, r0, #0
	cmp r1, #31
	beq _0800713A
	ldr r0, _08007118  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0800710A
	cmp r2, #8
	bne _0800710A
	mov r2, #24
_0800710A:
	cmp r4, #0
	bne _0800711C
	str r2, [r3]
	b _0800712A
	.byte 0x00
	.byte 0x00
_08007114:
	.4byte gUnknown_030009C4
_08007118:
	.4byte gUnknown_03000BB4
_0800711C:
	ldr r0, _08007140  @ =0x030009CC
	str r2, [r0]
	ldr r1, _08007144  @ =0x030009C8
	ldr r0, [r3]
	str r0, [r1]
	mov r0, #31
	str r0, [r3]
_0800712A:
	ldr r1, _08007148  @ =gUnknown_03000024
	mov r0, #1
	str r0, [r1]
	ldr r2, _0800714C  @ =gUnknown_030012E8
	ldr r1, _08007150  @ =gUnknown_03001708
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
_0800713A:
	pop {r4}
	pop {r0}
	bx r0
_08007140:
	.4byte 0x030009CC
_08007144:
	.4byte 0x030009C8
_08007148:
	.4byte gUnknown_03000024
_0800714C:
	.4byte gUnknown_030012E8
_08007150:
	.4byte gUnknown_03001708
THUMB_FUNC_END sub_080070E8
