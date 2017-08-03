	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08032814
sub_08032814: @ 0x08032814
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	mov r8, r0
	str r1, [sp]
	mov r0, #130
	lsl r0, r0, #5
	str r0, [sp, #4]
	ldr r0, _08032A5C  @ =0x030012A4
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08032A60  @ =0x030012EC
	strh r1, [r0]
	bl sub_0801B3C0
	mov r1, #0
	mov r9, r1
	mov r2, r8
	add r2, r2, #32
	str r2, [sp, #8]
_08032842:
	mov r0, r8
	add r0, r0, #32
	add r0, r0, r9
	ldrb r0, [r0]
	lsl r0, r0, #3
	mov r1, r8
	add r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _080328A0
	mov r2, r9
	add r2, r2, #1
	mov r1, r9
	bl sub_08032E24
	lsl r0, r0, #8
	ldr r2, [sp, #4]
	orr r2, r2, r0
	lsl r0, r2, #16
	lsr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r9
	lsl r1, r0, #1
	ldr r2, _08032A64  @ =0x04000008
	add r3, r1, r2
	ldr r0, [r4]
	add r0, r0, #56
	add r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	mov r0, r8
	add r0, r0, #36
	mov r4, r9
	add r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080328A0
	ldrh r2, [r3]
	ldr r4, _08032A68  @ =0x0000FFFC
	add r0, r4, #0
	and r2, r2, r0
	ldrb r0, [r1]
	sub r0, r0, #1
	mov r1, #3
	and r0, r0, r1
	orr r2, r2, r0
	strh r2, [r3]
_080328A0:
	mov r0, #1
	add r9, r9, r0
	mov r1, r9
	cmp r1, #3
	ble _08032842
	mov r2, #0
	mov r9, r2
	mov r4, r8
	add r4, r4, #50
	str r4, [sp, #24]
	mov r0, r8
	add r0, r0, #51
	str r0, [sp, #28]
	mov r1, r8
	add r1, r1, #48
	str r1, [sp, #20]
	mov r2, r8
	add r2, r2, #47
	str r2, [sp, #16]
	sub r4, r4, #4
	str r4, [sp, #12]
	mov r4, r8
	mov r10, r8
_080328CE:
	ldr r3, [r4]
	cmp r3, #0
	beq _08032978
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08032978
	ldrb r7, [r4, #4]
	ldrh r1, [r4, #4]
	ldr r2, [sp, #8]
	add r0, r2, r1
	ldrb r0, [r0]
	lsl r0, r0, #3
	mov r2, r8
	add r5, r2, r0
	lsl r1, r1, #1
	ldr r0, _08032A64  @ =0x04000008
	add r6, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	bne _080328F8
	mov r5, r10
_080328F8:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0803291E
	sub r0, r0, #1
	lsl r0, r0, #24
	lsr r7, r0, #24
	ldrh r2, [r6]
	ldr r1, _08032A6C  @ =0x0000FFF3
	add r0, r1, #0
	and r2, r2, r0
	lsl r1, r7, #1
	add r0, r3, #0
	add r0, r0, #56
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #12
	and r0, r0, r1
	orr r2, r2, r0
	strh r2, [r6]
_0803291E:
	ldr r3, [r4]
	ldr r1, _08032A70  @ =0x03000E88
	ldr r0, [r3, #8]
	add r0, r3, r0
	str r0, [r1]
	add r0, r0, #4
	ldr r1, [r5]
	lsl r2, r7, #2
	add r1, r1, #80
	add r1, r1, r2
	ldrh r2, [r3, #44]
	lsl r2, r2, #6
	ldr r1, [r1]
	add r1, r1, r2
	mov r2, #1
	bl sub_08034790
	ldrh r0, [r6]
	ldr r1, _08032A74  @ =0x0000FF7F
	add r2, r1, #0
	and r2, r2, r0
	ldr r5, [r4]
	ldrh r0, [r4, #4]
	lsl r0, r0, #1
	add r3, r5, #0
	add r3, r3, #56
	add r0, r3, r0
	ldrh r1, [r0]
	mov r0, #128
	and r0, r0, r1
	orr r2, r2, r0
	strh r2, [r6]
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08032978
	lsl r0, r7, #1
	add r0, r3, r0
	ldrh r0, [r0]
	lsr r0, r0, #7
	mov r1, #1
	bic r1, r1, r0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_0801B3DC
_08032978:
	add r4, r4, #8
	mov r2, #8
	add r10, r10, r2
	mov r0, #1
	add r9, r9, r0
	mov r1, r9
	cmp r1, #3
	ble _080328CE
	ldr r2, [sp, #24]
	ldrb r0, [r2]
	ldr r4, [sp, #8]
	add r0, r4, r0
	ldrb r0, [r0]
	lsl r0, r0, #3
	mov r1, r8
	add r4, r1, r0
	ldr r2, [r4]
	cmp r2, #0
	beq _080329DC
	ldr r1, _08032A78  @ =0x030012E4
	ldrh r0, [r2, #46]
	strh r0, [r1]
	ldr r4, [sp, #24]
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r0, r2, #0
	add r0, r0, #12
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080329DC
	cmp r0, #0
	ble _080329DC
	add r2, r2, r0
	ldr r1, _08032A7C  @ =gUnknown_03001720
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _08032A80  @ =gUnknown_0300170C
	ldrh r0, [r2, #6]
	strh r0, [r1]
	ldr r1, _08032A5C  @ =0x030012A4
	ldr r0, _08032A84  @ =0x03000E70
	ldr r2, [r0, #4]
	mov r0, #8
	ldrsb r0, [r2, r0]
	strh r0, [r1]
	ldr r1, _08032A60  @ =0x030012EC
	mov r0, #12
	ldrsb r0, [r2, r0]
	strh r0, [r1]
_080329DC:
	mov r1, r8
	ldr r0, [r1, #40]
	add r6, r0, #0
	cmp r6, #0
	beq _08032A98
	mov r4, r8
	add r4, r4, #44
	ldrb r1, [r4]
	ldr r2, [sp, #8]
	add r0, r2, r1
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r2, [r0]
	mov r0, r8
	add r0, r0, #45
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r5, [r0]
	ldr r3, _08032A88  @ =0x03000E80
	lsl r1, r1, #2
	add r2, r2, #64
	add r1, r2, r1
	ldr r0, [r1]
	str r0, [r3]
	ldr r1, _08032A8C  @ =0x03000E90
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r2, r0
	ldr r0, [r2]
	str r0, [r1]
	ldr r2, _08032A90  @ =0x03000E60
	ldrh r0, [r5, #44]
	strh r0, [r2]
	ldrh r1, [r5, #56]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _08032A34
	ldrh r0, [r2]
	lsl r0, r0, #1
	strh r0, [r2]
_08032A34:
	ldr r4, [sp, #28]
	ldrb r1, [r4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08032A94
	add r0, r6, #0
	bl sub_08004428
	add r0, r5, #0
	bl sub_080041B8
	add r0, r5, #0
	bl sub_08006968
	mov r0, #1
	bl sub_08004634
	b _08032A98
	.byte 0x00
	.byte 0x00
_08032A5C:
	.4byte 0x030012A4
_08032A60:
	.4byte 0x030012EC
_08032A64:
	.4byte 0x04000008
_08032A68:
	.4byte 0x0000FFFC
_08032A6C:
	.4byte 0x0000FFF3
_08032A70:
	.4byte 0x03000E88
_08032A74:
	.4byte 0x0000FF7F
_08032A78:
	.4byte 0x030012E4
_08032A7C:
	.4byte gUnknown_03001720
_08032A80:
	.4byte gUnknown_0300170C
_08032A84:
	.4byte 0x03000E70
_08032A88:
	.4byte 0x03000E80
_08032A8C:
	.4byte 0x03000E90
_08032A90:
	.4byte 0x03000E60
_08032A94:
	bl sub_08006388
_08032A98:
	ldr r1, [sp, #20]
	ldrb r0, [r1]
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r0, [r0]
	bl sub_0802C0B8
	ldr r2, [sp, #16]
	ldrb r0, [r2]
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r0, [r0]
	ldr r1, [sp]
	bl sub_0802BCA4
	ldr r4, [sp, #12]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _08032ACA
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r0, [r0]
	bl sub_08032E80
_08032ACA:
	ldr r0, [sp, #28]
	ldrb r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08032B1E
	mov r0, r8
	add r0, r0, #49
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r8
	ldr r4, [r0]
	cmp r4, #0
	beq _08032B1E
	ldr r0, _08032B08  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _08032AFC
	ldr r0, _08032B0C  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08032B10
_08032AFC:
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	b _08032B1E
_08032B08:
	.4byte gUnknown_03000B90
_08032B0C:
	.4byte gUnknown_030009D0
_08032B10:
	ldrh r1, [r4, #48]
	mov r0, #64
	orr r0, r0, r1
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
_08032B1E:
	ldr r0, [sp, #4]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08032814

	THUMB_FUNC_START sub_08032B30
sub_08032B30: @ 0x08032B30
	push {r4,lr}
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r3, r2, #0
	lsl r1, r1, #16
	lsr r1, r1, #16
	add r4, r1, #0
	ldr r0, _08032B68  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08032BC4
	ldr r0, _08032B6C  @ =gMainState
	ldr r0, [r0]
	cmp r0, #5
	bne _08032B84
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #5
	bgt _08032B74
	ldr r0, _08032B70  @ =gUnknown_0807DD34
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
	.byte 0x00
	.byte 0x00
_08032B68:
	.4byte gUnknown_03000B80
_08032B6C:
	.4byte gMainState
_08032B70:
	.4byte gUnknown_0807DD34
_08032B74:
	ldr r0, _08032B80  @ =gUnknown_0807DD4C
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032B80:
	.4byte gUnknown_0807DD4C
_08032B84:
	lsl r0, r2, #16
	asr r0, r0, #16
	cmp r0, #11
	bgt _08032B9C
	ldr r0, _08032B98  @ =gUnknown_0807DD34
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032B98:
	.4byte gUnknown_0807DD34
_08032B9C:
	cmp r0, #12
	bne _08032BB0
	ldr r0, _08032BAC  @ =gUnknown_0807DD4C
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032BAC:
	.4byte gUnknown_0807DD4C
_08032BB0:
	cmp r0, #13
	bne _08032C3E
	ldr r0, _08032BC0  @ =gUnknown_0807DD64
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032BC0:
	.4byte gUnknown_0807DD64
_08032BC4:
	cmp r0, #1
	bne _08032BFC
	lsl r0, r3, #16
	asr r0, r0, #16
	cmp r0, #5
	bgt _08032BE0
	ldr r0, _08032BDC  @ =gUnknown_0807DD7C
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032BDC:
	.4byte gUnknown_0807DD7C
_08032BE0:
	lsl r0, r1, #16
	asr r1, r0, #16
	cmp r1, #2
	bne _08032BEC
	mov r0, #58
	b _08032C2A
_08032BEC:
	ldr r0, _08032BF8  @ =gUnknown_0807DD64
	lsl r1, r1, #2
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
	.byte 0x00
	.byte 0x00
_08032BF8:
	.4byte gUnknown_0807DD64
_08032BFC:
	cmp r0, #2
	bne _08032C10
	ldr r0, _08032C0C  @ =gUnknown_0807DD34
	lsl r1, r1, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032C0C:
	.4byte gUnknown_0807DD34
_08032C10:
	cmp r0, #3
	bne _08032C24
	ldr r0, _08032C20  @ =gUnknown_0807DD7C
	lsl r1, r4, #16
	asr r1, r1, #14
	add r1, r1, r0
	ldr r0, [r1]
	b _08032C2A
_08032C20:
	.4byte gUnknown_0807DD7C
_08032C24:
	cmp r0, #4
	bne _08032C32
	mov r0, #62
_08032C2A:
	mov r1, #1
	bl sub_08032788
	b _08032C3E
_08032C32:
	cmp r0, #5
	bne _08032C3E
	mov r0, #63
	mov r1, #1
	bl sub_08032788
_08032C3E:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08032B30

	THUMB_FUNC_START sub_08032C44
sub_08032C44: @ 0x08032C44
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #52
	add r5, r0, #0
	mov r0, sp
	mov r1, #0
	mov r2, #52
	bl memset
	ldr r6, [r5]
	ldr r7, [r6]
	str r7, [sp]
	mov r1, sp
	mov r4, #0
	mov r0, #0
	mov r9, r0
	mov r0, #2
	strh r0, [r1, #4]
	ldr r3, [r5, #4]
	str r3, [sp, #8]
	mov r2, #1
	mov r8, r2
	mov r0, #1
	strh r0, [r1, #12]
	mov r2, sp
	add r2, r2, #51
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
	mov r0, sp
	add r0, r0, #46
	strb r4, [r0]
	sub r0, r0, #11
	strb r4, [r0]
	sub r0, r0, #1
	strb r4, [r0]
	sub r0, r0, #1
	strb r4, [r0]
	add r2, sp, #32
	strb r4, [r2]
	mov r0, sp
	mov r1, r9
	strh r1, [r0, #20]
	str r3, [sp, #16]
	mov r1, r8
	strb r1, [r0, #22]
	ldr r3, _08032D48  @ =gUnknown_030009D0
	ldrb r1, [r3]
	mov r0, #24
	mov r12, r0
	and r0, r0, r1
	cmp r0, #0
	beq _08032CCC
	add r0, sp, #36
	strb r4, [r0]
	strb r4, [r2]
	mov r0, sp
	mov r1, r9
	strh r1, [r0, #20]
	str r7, [sp, #16]
	mov r1, sp
	mov r0, #4
	strb r0, [r1, #23]
	mov r0, sp
	mov r2, r8
	strb r2, [r0, #22]
_08032CCC:
	ldr r0, [r5, #8]
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _08032CF6
	cmp r0, #1
	bne _08032CF6
	mov r1, sp
	add r1, r1, #38
	mov r0, #2
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #4
	strb r0, [r1]
	ldrb r1, [r3]
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	beq _08032CF6
	add r1, sp, #36
	mov r0, #3
	strb r0, [r1]
_08032CF6:
	ldr r0, [r6, #4]
	str r0, [sp, #40]
	add r0, sp, #44
	mov r1, #1
	strb r1, [r0]
	add r0, r0, #1
	strb r1, [r0]
	mov r1, #0
	ldr r0, _08032D4C  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne _08032D12
	mov r1, #1
_08032D12:
	mov r0, sp
	bl sub_08032814
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	orr r1, r1, r0
	strh r1, [r2]
	mov r1, #16
	ldrsh r0, [r5, r1]
	mov r2, #18
	ldrsh r1, [r5, r2]
	bl sub_08032B30
	ldr r0, [r5, #4]
	mov r1, #18
	ldrsh r2, [r5, r1]
	add r1, r6, #0
	bl sub_080319BC
	add sp, sp, #52
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_08032D48:
	.4byte gUnknown_030009D0
_08032D4C:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END sub_08032C44

	THUMB_FUNC_START sub_08032D50
sub_08032D50: @ 0x08032D50
	push {r4,lr}
	add r3, r0, #0
	mov r0, #78
	add r0, r0, r3
	mov r12, r0
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08032D70
	ldr r0, _08032E08  @ =0x04000008
	add r1, r3, #0
	add r1, r1, #80
	ldrh r1, [r1]
	strh r1, [r0]
_08032D70:
	mov r2, r12
	ldrh r1, [r2]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08032D98
	ldr r2, _08032E0C  @ =0x0400000A
	add r0, r3, #0
	add r0, r0, #82
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08032E10  @ =0x0000FFFC
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	mov r1, #2
	orr r0, r0, r1
	strh r0, [r2]
_08032D98:
	mov r4, r12
	ldrh r1, [r4]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	beq _08032DC2
	ldr r2, _08032E14  @ =0x0400000C
	add r0, r3, #0
	add r0, r0, #84
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08032E10  @ =0x0000FFFC
	and r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r4, _08032E18  @ =0x00002001
	add r1, r4, #0
	orr r0, r0, r1
	strh r0, [r2]
_08032DC2:
	mov r0, r12
	ldrh r1, [r0]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08032DDA
	ldr r1, _08032E1C  @ =0x0400000E
	add r0, r3, #0
	add r0, r0, #86
	ldrh r0, [r0]
	strh r0, [r1]
_08032DDA:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, r12
	ldrh r0, [r2]
	strh r0, [r1]
	mov r0, #0
	ldr r2, [r3, #64]
_08032DE8:
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bls _08032DE8
	cmp r2, #0
	beq _08032E00
	ldr r1, _08032E20  @ =0x03000E94
	mov r0, #108
	mul r0, r2, r0
	add r0, r3, r0
	str r0, [r1]
_08032E00:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032E08:
	.4byte 0x04000008
_08032E0C:
	.4byte 0x0400000A
_08032E10:
	.4byte 0x0000FFFC
_08032E14:
	.4byte 0x0400000C
_08032E18:
	.4byte 0x00002001
_08032E1C:
	.4byte 0x0400000E
_08032E20:
	.4byte 0x03000E94
	THUMB_FUNC_END sub_08032D50

	THUMB_FUNC_START sub_08032E24
sub_08032E24: @ 0x08032E24
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r5, r0, #0
	mov r9, r2
	mov r8, r5
	mov r7, #0
	add r4, r1, #0
	cmp r4, r9
	bge _08032E6E
_08032E3A:
	lsl r2, r4, #2
	add r0, r5, #0
	add r0, r0, #12
	add r0, r0, r2
	ldr r3, [r0]
	cmp r3, #0
	ble _08032E68
	mov r0, #1
	lsl r0, r0, r4
	orr r7, r7, r0
	ldr r1, _08032E7C  @ =0x03000E70
	add r1, r2, r1
	mov r6, r8
	add r0, r6, r3
	str r0, [r1]
	add r0, r0, #40
	add r1, r5, #0
	add r1, r1, #64
	add r1, r1, r2
	ldr r1, [r1]
	mov r2, #1
	bl sub_08034790
_08032E68:
	add r4, r4, #1
	cmp r4, r9
	blt _08032E3A
_08032E6E:
	add r0, r7, #0
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_08032E7C:
	.4byte 0x03000E70
	THUMB_FUNC_END sub_08032E24

	THUMB_FUNC_START sub_08032E80
sub_08032E80: @ 0x08032E80
	push {r4,lr}
	add r1, r0, #0
	ldr r4, [r1, #28]
	cmp r4, #0
	beq _08032EAA
	ldr r0, _08032EB0  @ =0x03000E8C
	add r4, r1, r4
	str r4, [r0]
	add r4, r4, #4
	add r0, r4, #0
	mov r1, #160
	lsl r1, r1, #19
	mov r2, #128
	lsl r2, r2, #1
	bl CpuSet
	mov r0, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0802C104
_08032EAA:
	pop {r4}
	pop {r0}
	bx r0
_08032EB0:
	.4byte 0x03000E8C
	THUMB_FUNC_END sub_08032E80

	THUMB_FUNC_START sub_08032EB4
sub_08032EB4: @ 0x08032EB4
	mov r0, #0
	bx lr
	THUMB_FUNC_END sub_08032EB4

	THUMB_FUNC_START sub_08032EB8
sub_08032EB8: @ 0x08032EB8
	push {r4,lr}
	sub sp, sp, #52
	add r4, r0, #0
	mov r0, sp
	mov r1, #0
	mov r2, #52
	bl memset
	str r4, [sp]
	mov r1, sp
	mov r0, #2
	strh r0, [r1, #4]
	mov r0, sp
	mov r1, #0
	bl sub_08032814
	lsl r0, r0, #16
	lsr r0, r0, #16
	add sp, sp, #52
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08032EB8

	THUMB_FUNC_START sub_08032EE4
sub_08032EE4: @ 0x08032EE4
	push {r4,r5,lr}
	sub sp, sp, #52
	add r4, r0, #0
	mov r0, sp
	mov r1, #0
	mov r2, #52
	bl memset
	add r5, r4, #0
	mov r2, #0
	mov r4, sp
	add r3, sp, #32
	mov r1, sp
_08032EFE:
	str r5, [r1]
	strh r2, [r4, #4]
	add r0, r3, r2
	strb r2, [r0]
	add r1, r1, #8
	add r2, r2, #1
	cmp r2, #3
	ble _08032EFE
	mov r0, sp
	mov r1, #0
	bl sub_08032814
	lsl r0, r0, #16
	lsr r0, r0, #16
	add sp, sp, #52
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08032EE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08032F24
sub_08032F24: @ 0x08032F24
	push {r4-r6,lr}
	sub sp, sp, #52
	add r4, r0, #0
	add r6, r1, #0
	mov r0, sp
	mov r1, #0
	mov r2, #52
	bl memset
	mov r2, #0
	mov r5, sp
	add r5, r5, #46
	add r3, sp, #32
	mov r1, sp
_08032F40:
	strh r2, [r1, #4]
	ldm r4!, {r0}
	str r0, [r1]
	add r0, r3, r2
	strb r2, [r0]
	add r1, r1, #8
	add r2, r2, #1
	cmp r2, #3
	ble _08032F40
	strb r6, [r5]
	mov r0, sp
	mov r1, #0
	bl sub_08032814
	lsl r0, r0, #16
	lsr r0, r0, #16
	add sp, sp, #52
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08032F24

	THUMB_FUNC_START sub_08032F68
sub_08032F68: @ 0x08032F68
	push {r4,r5,lr}
	bl sub_08033D1C
	mov r0, #0
	mov r1, #0
	bl sub_0802BCA4
	bl sub_0802C1B0
	ldr r4, _08032FA4  @ =0x04000200
	mov r5, #1
	strh r5, [r4]
	bl sub_0802BF28
	ldr r2, _08032FA8  @ =0x04000004
	mov r0, #8
	strh r0, [r2]
	ldrh r0, [r4]
	mov r1, #4
	orr r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _08032FAC  @ =0x04000208
	strh r5, [r0]
	pop {r4,r5}
	pop {r0}
	bx r0
_08032FA4:
	.4byte 0x04000200
_08032FA8:
	.4byte 0x04000004
_08032FAC:
	.4byte 0x04000208
THUMB_FUNC_END sub_08032F68
