	.INCLUDE "macro.inc"

THUMB_FUNC_START sub_08006FF0
sub_08006FF0:
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r2, _08007038  @ =0x030009C0
	ldr r3, _0800703C  @ =0x030009C4
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, _08007040  @ =0x03000B70
	mov r0, #0
	str r0, [r1]
	ldr r6, _08007044  @ =0x03000020
	mov r8, r2
	add r7, r3, #0
	ldr r0, _08007048  @ =0x03000024
	mov r9, r0
_08007010:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r6]
	ldr r1, _0800704C  @ =0x0807823C
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08007026
	bl _call_via_r0
_08007026:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #19
	beq _08007032
	cmp r0, #15
	bne _08007050
_08007032:
	mov r0, #13
	b _08007056
	.byte 0x00
	.byte 0x00
_08007038:
	.4byte 0x030009C0
_0800703C:
	.4byte 0x030009C4
_08007040:
	.4byte 0x03000B70
_08007044:
	.4byte 0x03000020
_08007048:
	.4byte 0x03000024
_0800704C:
	.4byte 0x0807823C
_08007050:
	cmp r0, #6
	bne _0800705E
	mov r0, #5
_08007056:
	mov r1, r8
	str r0, [r1]
	str r0, [r6]
	str r0, [r7]
_0800705E:
	ldr r1, _080070D4  @ =0x0807846C
	ldr r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl 0x0801500C
	ldr r1, _080070D8  @ =0x08078354
	ldr r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	bl 0x08033EA0
	ldr r1, [r7]
	ldr r0, [r6]
	cmp r1, r0
	bne _080070B2
	mov r1, r9
	ldr r0, [r1]
	cmp r0, #0
	bne _080070B2
	ldr r5, _080070DC  @ =0x080782C8
	ldr r4, _080070E0  @ =0x03000020
_0800708E:
	ldr r0, [r4]
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0800709E
	bl 0x080747D8
_0800709E:
	bl 0x08033EE0
	ldr r1, [r7]
	ldr r0, [r4]
	cmp r1, r0
	bne _080070B2
	mov r1, r9
	ldr r0, [r1]
	cmp r0, #0
	beq _0800708E
_080070B2:
	mov r0, #0
	mov r1, r9
	str r0, [r1]
	ldr r1, _080070E4  @ =0x080783E0
	ldr r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080070CA
	bl 0x080747D8
_080070CA:
	ldr r0, [r7]
	mov r1, r8
	str r0, [r1]
	b _08007010
	.byte 0x00
	.byte 0x00
_080070D4:
	.4byte 0x0807846C
_080070D8:
	.4byte 0x08078354
_080070DC:
	.4byte 0x080782C8
_080070E0:
	.4byte 0x03000020
_080070E4:
	.4byte 0x080783E0
THUMB_FUNC_END sub_08006FF0
	
_080070E8:
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _08007114  @ =0x030009C4
	ldr r1, [r0]
	add r3, r0, #0
	cmp r1, #31
	beq _0800713A
	ldr r0, _08007118  @ =0x03000BB4
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
	.4byte 0x030009C4
_08007118:
	.4byte 0x03000BB4
_0800711C:
	ldr r0, _08007140  @ =0x030009CC
	str r2, [r0]
	ldr r1, _08007144  @ =0x030009C8
	ldr r0, [r3]
	str r0, [r1]
	mov r0, #31
	str r0, [r3]
_0800712A:
	ldr r1, _08007148  @ =0x03000024
	mov r0, #1
	str r0, [r1]
	ldr r2, _0800714C  @ =0x030012E8
	ldr r1, _08007150  @ =0x03001708
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
	.4byte 0x03000024
_0800714C:
	.4byte 0x030012E8
_08007150:
	.4byte 0x03001708
