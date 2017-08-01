	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08006710
sub_08006710: @ 0x08006710
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r4, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r5, r1, #6
	ldr r1, [r0]
	asr r7, r1, #11
	ldr r0, [r0, #8]
	asr r6, r0, #11
	cmp r6, #63
	bls _08006730
	mov r6, #63
_08006730:
	ldr r0, _08006764  @ =0x00000FBF
	cmp r5, r0
	bls _0800673A
	mov r5, #252
	lsl r5, r5, #4
_0800673A:
	cmp r4, r5
	bhi _0800677E
	ldr r0, _08006768  @ =0x0807820C
	mov r8, r0
	ldr r0, _0800676C  @ =0x0000400C
	mov r12, r0
_08006746:
	add r2, r4, r7
	add r3, r4, r6
	cmp r2, r3
	bhi _08006778
	mov r0, r8
	ldr r1, [r0]
	lsl r0, r2, #1
	add r0, r0, r12
	add r1, r0, r1
_08006758:
	ldrh r0, [r1]
	cmp r0, #4
	bne _08006770
	mov r0, #1
	b _08006780
	.byte 0x00
	.byte 0x00
_08006764:
	.4byte 0x00000FBF
_08006768:
	.4byte 0x0807820C
_0800676C:
	.4byte 0x0000400C
_08006770:
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r3
	bls _08006758
_08006778:
	add r4, r4, #64
	cmp r4, r5
	bls _08006746
_0800677E:
	mov r0, #0
_08006780:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08006710

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800678C
sub_0800678C: @ 0x0800678C
	push {r4-r7,lr}
	add r7, r1, #0
	ldr r1, [r0]
	asr r2, r1, #11
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r5, r1, #6
	ldr r0, [r0, #8]
	asr r3, r0, #11
	ldr r0, _080067DC  @ =0x0807820C
	ldr r0, [r0]
	ldr r1, _080067E0  @ =0x0000400C
	add r4, r0, r1
	cmp r2, r3
	beq _080067D6
	add r1, r2, r5
	ldr r2, _080067E4  @ =0x00000FFF
	cmp r1, r2
	bhi _080067D6
	lsl r0, r1, #1
	add r0, r0, r4
	ldrh r0, [r0]
	mov r6, #127
	add r1, r6, #0
	and r1, r1, r0
	cmp r1, r7
	bne _080067D6
	add r1, r3, r5
	cmp r1, r2
	bhi _080067D6
	lsl r0, r1, #1
	add r0, r0, r4
	ldrh r0, [r0]
	add r1, r6, #0
	and r1, r1, r0
	cmp r1, r7
	beq _080067E8
_080067D6:
	mov r0, #0
	b _080067EA
	.byte 0x00
	.byte 0x00
_080067DC:
	.4byte 0x0807820C
_080067E0:
	.4byte 0x0000400C
_080067E4:
	.4byte 0x00000FFF
_080067E8:
	mov r0, #1
_080067EA:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800678C

	THUMB_FUNC_START sub_080067F0
sub_080067F0: @ 0x080067F0
	push {r4-r7,lr}
	sub sp, sp, #28
	add r6, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	str r1, [sp, #4]
	cmp r1, r5
	bge _08006836
	mov r3, sp
_08006804:
	str r6, [sp]
	cmp r6, r4
	bge _0800682C
_0800680A:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #16
	str r3, [sp, #24]
	bl 0x08002390
	ldr r3, [sp, #24]
	cmp r0, #0
	beq _08006852
	ldrb r0, [r0, #4]
	cmp r0, #8
	bne _08006852
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	cmp r0, r4
	blt _0800680A
_0800682C:
	ldr r0, [r3, #4]
	add r0, r0, #8
	str r0, [r3, #4]
	cmp r0, r5
	blt _08006804
_08006836:
	str r5, [sp, #4]
	str r6, [sp]
	cmp r6, r4
	bge _08006860
_0800683E:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #20
	bl 0x08002390
	cmp r0, #0
	beq _08006852
	ldrb r0, [r0, #4]
	cmp r0, #8
	beq _08006856
_08006852:
	mov r0, #0
	b _08006862
_08006856:
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	cmp r0, r4
	blt _0800683E
_08006860:
	mov r0, #1
_08006862:
	add sp, sp, #28
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080067F0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0800686C
sub_0800686C: @ 0x0800686C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r0, [sp, #92]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #40]
	ldr r0, _08006940  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	add r2, r2, r8
	mov r0, r8
	asr r0, r0, #8
	mov r8, r0
	asr r2, r2, #8
	asr r3, r3, #8
	asr r1, r1, #8
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	sub r2, r2, r0
	sub r3, r3, r1
	add r2, r2, #7
	mov r0, #8
	neg r0, r0
	and r2, r2, r0
	add r2, r2, r8
	mov r9, r2
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	add r6, r1, #0
	cmp r6, r3
	bgt _08006934
_080068C6:
	mov r5, r8
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r5, r9
	bgt _0800692C
	add r7, sp, #24
_080068D4:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08006926
	ldrb r0, [r2, #4]
	cmp r0, #18
	bne _08006926
	ldrb r0, [r2, #15]
	cmp r0, #0
	beq _080068FA
	ldr r4, [sp, #40]
	cmp r0, r4
	bne _08006926
_080068FA:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08006926
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08006916
	neg r1, r2
_08006916:
	cmp r1, #7
	bgt _08006926
	str r0, [sp, #48]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08006926:
	add r5, r5, #8
	cmp r5, r9
	ble _080068D4
_0800692C:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _080068C6
_08006934:
	ldr r0, _08006940  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _08006944
	mov r0, #0
	b _08006956
_08006940:
	.4byte 0x7FFFFFFF
_08006944:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_08006956:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800686C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08006968
sub_08006968: @ 0x08006968
	push {r4-r6,lr}
	ldr r1, [r0, #112]
	add r0, r0, r1
	ldr r5, _080069B8  @ =0x08078210
	ldr r1, [r5]
	mov r2, #0
	bl 0x08034790
	mov r4, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r4, r0
	bcs _080069AC
	add r6, r5, #0
	mov r5, #132
	lsl r5, r5, #1
_08006988:
	ldr r2, [r6]
	lsl r3, r4, #2
	mov r1, #132
	lsl r1, r1, #1
	add r0, r2, r1
	add r0, r0, r3
	ldr r1, [r0]
	mov r0, #132
	lsl r0, r0, #1
	add r1, r1, r0
	add r0, r2, r5
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r0]
	add r4, r4, #1
	ldr r0, [r2, #4]
	cmp r4, r0
	bcc _08006988
_080069AC:
	ldr r0, _080069B8  @ =0x08078210
	ldr r0, [r0]
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080069B8:
	.4byte 0x08078210
	THUMB_FUNC_END sub_08006968

	THUMB_FUNC_START sub_080069BC
sub_080069BC: @ 0x080069BC
	push {r4,lr}
	mov r0, #175
	lsl r0, r0, #2
	bl 0x08034854
	add r4, r0, #0
	ldr r0, _080069E0  @ =0x08000430
	mov r2, #175
	lsl r2, r2, #1
	add r1, r4, #0
	bl CpuSet
	ldr r0, _080069E4  @ =0x03000964
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080069E0:
	.4byte 0x08000430
_080069E4:
	.4byte 0x03000964
	THUMB_FUNC_END sub_080069BC

	
	THUMB_FUNC_START sub_080069E8
sub_080069E8: @ 0x080069E8
	push {r4,lr}
	ldr r4, _080069FC  @ =0x03000924
	mov r0, #135
	lsl r0, r0, #3
	bl 0x08034854
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080069FC:
	.4byte 0x03000924
	THUMB_FUNC_END sub_080069E8

	THUMB_FUNC_START sub_08006A00
sub_08006A00: @ 0x08006A00
	ldr r1, _08006A08  @ =0x03000924
	mov r0, #0
	str r0, [r1]
	bx lr
_08006A08:
	.4byte 0x03000924
	THUMB_FUNC_END sub_08006A00

	THUMB_FUNC_START sub_08006A0C
sub_08006A0C: @ 0x08006A0C
	ldr r1, _08006A24  @ =0x03000934
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08006A28  @ =gUnknown_03000B74
	ldr r0, _08006A2C  @ =0x0807820C
	ldr r0, [r0]
	ldr r2, _08006A30  @ =0x0000400C
	add r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08006A24:
	.4byte 0x03000934
_08006A28:
	.4byte gUnknown_03000B74
_08006A2C:
	.4byte 0x0807820C
_08006A30:
	.4byte 0x0000400C
	THUMB_FUNC_END sub_08006A0C

	THUMB_FUNC_START sub_08006A34
sub_08006A34: @ 0x08006A34
	push {r4,lr}
	mov r4, #0
_08006A38:
	ldr r0, _08006A68  @ =0x03000924
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r0, r1
	mov r1, #210
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, [r0]
	sub r3, r3, #1
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl 0x08001DBC
	add r4, r4, #1
	cmp r4, #2
	ble _08006A38
	mov r0, #7
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08006A68:
	.4byte 0x03000924
	THUMB_FUNC_END sub_08006A34

	THUMB_FUNC_START sub_08006A6C
sub_08006A6C: @ 0x08006A6C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	asr r2, r0, #3
	str r2, [sp]
	asr r3, r1, #3
	str r3, [sp, #4]
	ldr r0, _08006AF4  @ =0x08078210
	ldr r0, [r0]
	mov r1, #194
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08006AF8  @ =0x0807820C
	ldr r0, [r0]
	ldr r4, _08006AFC  @ =0x0000800C
	add r4, r4, r0
	mov r8, r4
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08006AE4
	mov r6, #31
	mov r12, r2
	ldr r7, _08006B00  @ =0x030008E8
	mov r9, r7
	mov r10, r3
_08006AB0:
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, r10
	mov r1, #4
	ldrsh r3, [r4, r1]
	add r3, r3, r12
	asr r1, r2, #5
	mov r7, r9
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	and r2, r2, r6
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r6
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r8
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08006AB0
_08006AE4:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08006AF4:
	.4byte 0x08078210
_08006AF8:
	.4byte 0x0807820C
_08006AFC:
	.4byte 0x0000800C
_08006B00:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_08006A6C

	THUMB_FUNC_START sub_08006B04
sub_08006B04: @ 0x08006B04
	push {r4,r5,lr}
	sub sp, sp, #4
	add r5, r1, #0
	ldr r4, [r0, #32]
	asr r4, r4, #11
	ldr r1, [r0, #36]
	asr r1, r1, #11
	add r0, r0, #132
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	lsr r2, r2, #3
	add r2, r4, r2
	ldrb r3, [r0, #2]
	lsr r3, r3, #3
	add r3, r1, r3
	str r5, [sp]
	add r0, r4, #0
	bl 0x08006C5C
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08006B04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08006B34
sub_08006B34: @ 0x08006B34
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	mov r8, r0
	ldr r0, [sp, #92]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #40]
	ldr r0, _08006C08  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	add r2, r2, r8
	mov r0, r8
	asr r0, r0, #8
	mov r8, r0
	asr r2, r2, #8
	asr r3, r3, #8
	asr r1, r1, #8
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	sub r2, r2, r0
	sub r3, r3, r1
	add r2, r2, #7
	mov r0, #8
	neg r0, r0
	and r2, r2, r0
	add r2, r2, r8
	mov r9, r2
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	add r6, r1, #0
	cmp r6, r3
	bgt _08006BFC
_08006B8E:
	mov r5, r8
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r5, r9
	bgt _08006BF4
	add r7, sp, #24
_08006B9C:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08006BEE
	ldrb r0, [r2, #4]
	cmp r0, #3
	bne _08006BEE
	ldrb r0, [r2, #15]
	cmp r0, #0
	beq _08006BC2
	ldr r4, [sp, #40]
	cmp r0, r4
	bne _08006BEE
_08006BC2:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08006BEE
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08006BDE
	neg r1, r2
_08006BDE:
	cmp r1, #7
	bgt _08006BEE
	str r0, [sp, #48]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08006BEE:
	add r5, r5, #8
	cmp r5, r9
	ble _08006B9C
_08006BF4:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _08006B8E
_08006BFC:
	ldr r0, _08006C08  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _08006C0C
	mov r0, #0
	b _08006C1E
_08006C08:
	.4byte 0x7FFFFFFF
_08006C0C:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_08006C1E:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08006B34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08006C30
sub_08006C30: @ 0x08006C30
	push {lr}
	sub sp, sp, #4
	add r0, r1, #0
	add r1, r2, #0
	mov r2, sp
	bl 0x08002390
	add r1, r0, #0
	cmp r1, #0
	beq _08006C50
	ldrb r0, [r1, #4]
	sub r0, r0, #44
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #9
	bls _08006C54
_08006C50:
	mov r0, #0
	b _08006C56
_08006C54:
	ldrb r0, [r1, #4]
_08006C56:
	add sp, sp, #4
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08006C30

	THUMB_FUNC_START sub_08006C5C
sub_08006C5C: @ 0x08006C5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r12, r1
	add r4, r2, #0
	mov r9, r3
	ldr r5, [sp, #32]
	mov r0, r12
	mov r1, r8
	lsl r1, r1, #1
	mov r10, r1
_08006C78:
	mov r1, r8
	add r3, r0, #1
	cmp r1, r4
	bge _08006C9C
	ldr r6, _08006CE8  @ =0x0000400C
	lsl r0, r0, #7
	mov r7, r10
	add r2, r7, r0
	sub r1, r4, r1
_08006C8A:
	ldr r7, _08006CEC  @ =0x0807820C
	ldr r0, [r7]
	add r0, r0, r6
	add r0, r0, r2
	strh r5, [r0]
	add r2, r2, #2
	sub r1, r1, #1
	cmp r1, #0
	bne _08006C8A
_08006C9C:
	add r0, r3, #0
	cmp r0, r12
	ble _08006C78
	cmp r5, #4
	bls _08006CA8
	mov r5, #14
_08006CA8:
	cmp r0, r9
	bge _08006CDA
	mov r2, r8
	lsl r2, r2, #1
	mov r12, r2
_08006CB2:
	mov r1, r8
	add r3, r0, #1
	cmp r1, r4
	bge _08006CD4
	ldr r6, _08006CE8  @ =0x0000400C
	lsl r0, r0, #7
	mov r7, r12
	add r2, r7, r0
_08006CC2:
	ldr r7, _08006CEC  @ =0x0807820C
	ldr r0, [r7]
	add r0, r0, r6
	add r0, r0, r2
	strh r5, [r0]
	add r2, r2, #2
	add r1, r1, #1
	cmp r1, r4
	blt _08006CC2
_08006CD4:
	add r0, r3, #0
	cmp r0, r9
	blt _08006CB2
_08006CDA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08006CE8:
	.4byte 0x0000400C
_08006CEC:
	.4byte 0x0807820C
	THUMB_FUNC_END sub_08006C5C

	THUMB_FUNC_START sub_08006CF0
sub_08006CF0: @ 0x08006CF0
	push {lr}
	add r3, r0, #0
	ldr r0, _08006D18  @ =0x03000008
	str r3, [r0]
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #20]
	ldr r0, [r0, #16]
	cmp r0, #0
	beq _08006D14
	mov r2, #128
	lsl r2, r2, #2
	add r1, r3, #0
	bl 0x08076258
	ldr r1, _08006D1C  @ =0x03000968
	ldr r0, _08006D20  @ =0x080003D0
	str r0, [r1]
_08006D14:
	pop {r0}
	bx r0
_08006D18:
	.4byte 0x03000008
_08006D1C:
	.4byte 0x03000968
_08006D20:
	.4byte 0x080003D0
	THUMB_FUNC_END sub_08006CF0

	THUMB_FUNC_START sub_08006D24
sub_08006D24: @ 0x08006D24
	push {lr}
	add r3, r0, #0
	ldr r2, _08006D40  @ =0x03000008
	ldr r0, [r2, #20]
	cmp r0, #0
	bne _08006D3C
	mov r1, #1
	add r0, r1, #0
	lsl r0, r0, r3
	str r0, [r2, #8]
	str r3, [r2, #12]
	str r1, [r2, #20]
_08006D3C:
	pop {r0}
	bx r0
_08006D40:
	.4byte 0x03000008
	THUMB_FUNC_END sub_08006D24

	THUMB_FUNC_START sub_08006D44
sub_08006D44: @ 0x08006D44
	push {lr}
	ldr r2, _08006D5C  @ =0x03000008
	ldr r1, [r2, #8]
	cmp r1, #0
	ble _08006D54
	ldr r0, [r2, #20]
	cmp r0, #0
	bne _08006D60
_08006D54:
	mov r0, #0
	str r0, [r2, #20]
	b _08006D80
	.byte 0x00
	.byte 0x00
_08006D5C:
	.4byte 0x03000008
_08006D60:
	sub r0, r1, #1
	str r0, [r2, #8]
	cmp r0, #0
	bne _08006D76
	ldr r0, [r2, #16]
	ldr r1, [r2, #4]
	mov r2, #128
	lsl r2, r2, #2
	bl 0x08076258
	b _08006D80
_08006D76:
	ldr r0, _08006D84  @ =0x03000968
	ldr r1, [r0]
	add r0, r2, #0
	bl 0x080747DC
_08006D80:
	pop {r0}
	bx r0
_08006D84:
	.4byte 0x03000968
	THUMB_FUNC_END sub_08006D44

	THUMB_FUNC_START sub_08006D88
sub_08006D88: @ 0x08006D88
	ldr r1, _08006D90  @ =0x03000008
	mov r0, #0
	str r0, [r1, #20]
	bx lr
_08006D90:
	.4byte 0x03000008
	THUMB_FUNC_END sub_08006D88

	THUMB_FUNC_START sub_08006D94
sub_08006D94: @ 0x08006D94
	push {lr}
	ldr r2, _08006DB4  @ =0x03000008
	ldr r0, [r2, #20]
	cmp r0, #0
	beq _08006DB0
	ldr r1, _08006DB8  @ =0x040000B0
	ldr r0, [r2, #16]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08006DBC  @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08006DB0:
	pop {r0}
	bx r0
_08006DB4:
	.4byte 0x03000008
_08006DB8:
	.4byte 0x040000B0
_08006DBC:
	.4byte 0x80000100
	THUMB_FUNC_END sub_08006D94

	THUMB_FUNC_START sub_08006DC0
sub_08006DC0: @ 0x08006DC0
	push {lr}
	mov r1, #0
	ldr r0, _08006DD4  @ =0x03000008
	ldr r0, [r0, #20]
	cmp r0, #0
	bne _08006DCE
	mov r1, #1
_08006DCE:
	add r0, r1, #0
	pop {r1}
	bx r1
_08006DD4:
	.4byte 0x03000008
	THUMB_FUNC_END sub_08006DC0

	THUMB_FUNC_START sub_08006DD8
sub_08006DD8: @ 0x08006DD8
	ldr r0, _08006DEC  @ =0x03000B64
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08006DF0  @ =0x03000B78
	strb r1, [r0]
	ldr r1, _08006DF4  @ =gUnknown_030009C4
	mov r0, #34
	str r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08006DEC:
	.4byte 0x03000B64
_08006DF0:
	.4byte 0x03000B78
_08006DF4:
	.4byte gUnknown_030009C4
	THUMB_FUNC_END sub_08006DD8
