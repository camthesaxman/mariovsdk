	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08001BA4
sub_08001BA4: @ 0x08001BA4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	add r4, r1, #0
	mov r5, #16
	mov r7, #0
	ldrb r0, [r4, #4]
	add r1, r0, #0
	cmp r1, #1
	bne _08001BC0
	mov r5, #4
	b _08001C62
_08001BC0:
	cmp r1, #37
	bne _08001BC8
	mov r5, #3
	b _08001C62
_08001BC8:
	cmp r1, #2
	bne _08001BD0
	mov r5, #5
	b _08001C64
_08001BD0:
	cmp r1, #27
	bne _08001BD8
	mov r5, #1
	b _08001C64
_08001BD8:
	sub r0, r0, #40
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08001BE6
	mov r5, #4
	b _08001C64
_08001BE6:
	cmp r1, #42
	bne _08001BEE
	mov r5, #2
	b _08001C64
_08001BEE:
	cmp r1, #24
	bne _08001BFE
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _08001C64
	mov r5, #8
	mov r7, #3
	b _08001C64
_08001BFE:
	cmp r1, #25
	bne _08001C0E
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _08001C64
	mov r5, #9
	mov r7, #3
	b _08001C64
_08001C0E:
	cmp r1, #26
	bne _08001C1E
	ldrb r0, [r4, #10]
	cmp r0, #3
	bne _08001C64
	mov r5, #10
	mov r7, #3
	b _08001C64
_08001C1E:
	cmp r1, #11
	beq _08001C50
	ldrb r0, [r4, #4]
	cmp r0, #10
	beq _08001C5C
	cmp r0, #43
	bne _08001C30
	mov r5, #6
	b _08001C64
_08001C30:
	cmp r0, #35
	bne _08001C40
	ldr r5, _08001C3C  @ =0x00000187
	mov r7, #2
	b _08001C64
	.byte 0x00
	.byte 0x00
_08001C3C:
	.4byte 0x00000187
_08001C40:
	cmp r0, #0
	bne _08001C48
	mov r5, #0
	b _08001C62
_08001C48:
	cmp r0, #57
	beq _08001C50
	cmp r0, #59
	bne _08001C54
_08001C50:
	mov r5, #13
	b _08001C64
_08001C54:
	cmp r0, #58
	beq _08001C5C
	cmp r0, #60
	bne _08001C60
_08001C5C:
	mov r5, #12
	b _08001C64
_08001C60:
	mov r5, #16
_08001C62:
	mov r7, #1
_08001C64:
	add r0, r4, #0
	bl 0x080064A0
	add r3, r0, #0
	ldrh r0, [r4, #24]
	lsl r0, r0, #3
	add r0, r0, r3
	mov r9, r0
	cmp r3, r9
	bcs _08001CCC
	ldr r0, _08001CD8  @ =gUnknown_0807820C
	mov r12, r0
_08001C7C:
	add r4, r5, #0
	mov r1, #6
	ldrsh r0, [r3, r1]
	ldrh r1, [r3, #6]
	cmp r0, #0
	beq _08001C8E
	cmp r7, #0
	bne _08001C8E
	mov r4, #14
_08001C8E:
	cmp r7, #3
	bne _08001C98
	cmp r1, #0
	beq _08001C98
	mov r4, #16
_08001C98:
	cmp r7, #2
	bne _08001CA2
	cmp r1, #1
	beq _08001CA2
	mov r4, #16
_08001CA2:
	mov r2, #6
	ldrsh r1, [r3, r2]
	mov r6, r8
	ldr r0, [r6, #4]
	add r1, r1, r0
	mov r0, #4
	ldrsh r2, [r3, r0]
	ldr r0, [r6]
	add r2, r2, r0
	lsl r1, r1, #6
	add r1, r1, r2
	mov r2, r12
	ldr r0, [r2]
	lsl r1, r1, #1
	ldr r6, _08001CDC  @ =0x0000400C
	add r0, r0, r6
	add r0, r0, r1
	strh r4, [r0]
	add r3, r3, #8
	cmp r3, r9
	bcc _08001C7C
_08001CCC:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08001CD8:
	.4byte gUnknown_0807820C
_08001CDC:
	.4byte 0x0000400C
	THUMB_FUNC_END sub_08001BA4

	THUMB_FUNC_START sub_08001CE0
sub_08001CE0: @ 0x08001CE0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r6, r1, #0
	mov r8, r2
	mov r5, #0
	ldr r0, _08001D3C  @ =gUnknown_0807820C
	mov r9, r0
	cmp r2, #0
	ble _08001D64
	mov r1, #128
	lsl r1, r1, #8
	add r0, r6, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08001D40
	sub r0, r6, #1
	asr r2, r0, #7
	mov r0, #255
	and r2, r2, r0
	mov r12, r1
	mov r3, r9
	ldr r1, [r3]
	mov r4, #128
	lsl r4, r4, #5
_08001D18:
	ldrh r3, [r1, #12]
	add r0, r3, #0
	mov r7, r12
	and r0, r0, r7
	cmp r0, #0
	beq _08001D32
	sub r0, r3, #1
	asr r0, r0, #7
	mov r3, #255
	and r0, r0, r3
	cmp r0, r2
	bne _08001D32
	add r5, r5, #1
_08001D32:
	add r1, r1, #4
	sub r4, r4, #1
	cmp r4, #0
	bne _08001D18
	b _08001D5A
_08001D3C:
	.4byte gUnknown_0807820C
_08001D40:
	add r1, r6, #1
	mov r7, r9
	ldr r3, [r7]
	mov r4, #128
	lsl r4, r4, #5
_08001D4A:
	ldrh r0, [r3, #12]
	cmp r0, r1
	bne _08001D52
	add r5, r5, #1
_08001D52:
	add r3, r3, #4
	sub r4, r4, #1
	cmp r4, #0
	bne _08001D4A
_08001D5A:
	cmp r5, r8
	blt _08001D64
	mov r0, #1
	neg r0, r0
	b _08001DAC
_08001D64:
	mov r4, #0
	mov r0, r9
	ldr r2, [r0]
	ldrh r0, [r2, #12]
	add r6, r6, #1
	mov r1, r10
	ldr r5, [r1]
	cmp r0, #0
	beq _08001D82
	add r1, r2, #0
_08001D78:
	add r1, r1, #4
	add r4, r4, #1
	ldrh r0, [r1, #12]
	cmp r0, #0
	bne _08001D78
_08001D82:
	mov r2, r9
	ldr r1, [r2]
	lsl r3, r4, #2
	add r1, r1, r3
	mov r0, #127
	and r5, r5, r0
	ldrb r2, [r1, #14]
	sub r0, r0, #255
	and r0, r0, r2
	orr r0, r0, r5
	strb r0, [r1, #14]
	mov r7, r9
	ldr r0, [r7]
	add r0, r0, r3
	mov r2, r10
	ldr r1, [r2, #4]
	strb r1, [r0, #15]
	ldr r0, [r7]
	add r0, r0, r3
	strh r6, [r0, #12]
	add r0, r4, #1
_08001DAC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08001CE0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08001DBC
sub_08001DBC: @ 0x08001DBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r9, r1
	mov r10, r2
	lsl r3, r3, #24
	lsr r6, r3, #24
	add r0, r6, #0
	bl 0x08038BA4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r0, #0
	bne _08001DE2
	b _08001EEE
_08001DE2:
	mov r7, #0
	mov r2, #0
	ldr r0, _08001E5C  @ =0x03000940
	ldr r3, [r0, #8]
	cmp r7, r3
	bcs _08001E16
	add r1, r6, #1
	mov r0, #128
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r5, _08001E60  @ =0x03000924
	ldr r0, [r5]
	ldr r0, [r0, #120]
	cmp r1, r0
	beq _08001E16
	add r4, r3, #0
	add r3, r1, #0
_08001E04:
	add r2, r2, #1
	cmp r2, r4
	bcs _08001E16
	ldr r0, [r5]
	lsl r1, r2, #2
	add r1, r1, r0
	ldr r0, [r1, #120]
	cmp r3, r0
	bne _08001E04
_08001E16:
	mov r2, #0
	ldr r0, _08001E64  @ =gUnknown_0807820C
	ldr r3, [r0]
	ldr r4, _08001E5C  @ =0x03000940
_08001E1E:
	lsl r0, r2, #2
	add r0, r3, r0
	ldrh r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	add r2, r2, #1
	cmp r0, #0
	beq _08001E4C
	sub r0, r1, #1
	asr r0, r0, #7
	mov r1, #255
	and r0, r0, r1
	cmp r0, r6
	bne _08001E3E
	add r7, r7, #1
_08001E3E:
	mov r1, #0
	ldr r0, [r4, #4]
	cmp r1, r0
	bcs _08001E4C
_08001E46:
	add r1, r1, #1
	cmp r1, r0
	bcc _08001E46
_08001E4C:
	ldr r0, _08001E68  @ =0x00000FFF
	cmp r2, r0
	ble _08001E1E
	cmp r7, r12
	blt _08001E6C
_08001E56:
	mov r0, #0
	b _08001EF0
	.byte 0x00
	.byte 0x00
_08001E5C:
	.4byte 0x03000940
_08001E60:
	.4byte 0x03000924
_08001E64:
	.4byte gUnknown_0807820C
_08001E68:
	.4byte 0x00000FFF
_08001E6C:
	mov r0, r8
	cmp r0, #0
	beq _08001EEE
	ldr r0, _08001F00  @ =0x03000924
	ldr r1, [r0]
	mov r2, #210
	lsl r2, r2, #2
	add r0, r1, r2
	ldr r0, [r0]
	ldr r2, _08001F04  @ =0xFFFF7FFF
	and r0, r0, r2
	add r3, r6, #1
	cmp r0, r3
	beq _08001E96
	mov r4, #211
	lsl r4, r4, #2
	add r0, r1, r4
	ldr r0, [r0]
	and r0, r0, r2
	cmp r0, r3
	bne _08001EEE
_08001E96:
	mov r6, r8
	ldr r0, [r6, #4]
	add r0, r0, r10
	lsl r2, r0, #6
	mov r3, #0
	cmp r3, r9
	bge _08001EEE
	ldr r0, _08001F08  @ =gUnknown_0807820C
	ldr r4, [r0]
	ldr r0, _08001F0C  @ =0x0000600C
	add r5, r4, r0
_08001EAC:
	add r0, r2, r3
	mov r6, r8
	ldr r1, [r6]
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r5, r0
	ldrh r1, [r0]
	cmp r1, #0
	beq _08001E56
	sub r0, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldrh r1, [r0, #12]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _08001E56
	sub r1, r1, #1
	ldr r0, _08001F10  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r6, #132
	lsl r6, r6, #1
	add r0, r0, r6
	add r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #2
	bhi _08001E56
	add r3, r3, #1
	cmp r3, r9
	blt _08001EAC
_08001EEE:
	mov r0, #1
_08001EF0:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08001F00:
	.4byte 0x03000924
_08001F04:
	.4byte 0xFFFF7FFF
_08001F08:
	.4byte gUnknown_0807820C
_08001F0C:
	.4byte 0x0000600C
_08001F10:
	.4byte gUnknown_08078210
	THUMB_FUNC_END sub_08001DBC

	THUMB_FUNC_START sub_08001F14
sub_08001F14: @ 0x08001F14
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	lsl r0, r0, #3
	str r0, [sp]
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	str r0, [sp, #4]
	add r4, sp, #8
	mov r0, sp
	add r1, r4, #0
	mov r2, #0
	bl 0x08002390
	add r1, r0, #0
	cmp r1, #0
	beq _08001FCE
	ldr r0, [r4, #4]
	asr r0, r0, #3
	str r0, [r4, #4]
	ldr r0, [sp, #8]
	asr r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	lsl r6, r0, #6
	cmp r6, #0
	blt _08001FCE
	mov r3, #0
	ldrh r5, [r1]
	cmp r3, r5
	bge _08001FCE
	ldr r0, _08001FB8  @ =gUnknown_0807820C
	ldr r4, [r0]
	ldr r0, _08001FBC  @ =0x0000600C
	add r0, r0, r4
	mov r12, r0
_08001F66:
	add r0, r6, r3
	ldr r1, [sp, #8]
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r12
	ldrh r1, [r0]
	cmp r1, #0
	beq _08001FC8
	sub r0, r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	ldrh r1, [r0, #12]
	mov r2, #128
	lsl r2, r2, #8
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _08001FC8
	ldr r0, _08001FC0  @ =0xFFFF7FFF
	and r1, r1, r0
	sub r1, r1, #1
	asr r1, r1, #7
	mov r0, #255
	and r1, r1, r0
	add r1, r1, #1
	orr r1, r1, r2
	ldr r0, _08001FC4  @ =0x03000924
	ldr r2, [r0]
	mov r7, #210
	lsl r7, r7, #2
	add r0, r2, r7
	ldr r0, [r0]
	cmp r1, r0
	beq _08001FB4
	add r7, r7, #4
	add r0, r2, r7
	ldr r0, [r0]
	cmp r1, r0
	bne _08001FC8
_08001FB4:
	mov r0, #0
	b _08001FD0
_08001FB8:
	.4byte gUnknown_0807820C
_08001FBC:
	.4byte 0x0000600C
_08001FC0:
	.4byte 0xFFFF7FFF
_08001FC4:
	.4byte 0x03000924
_08001FC8:
	add r3, r3, #1
	cmp r3, r5
	blt _08001F66
_08001FCE:
	mov r0, #1
_08001FD0:
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08001F14

	THUMB_FUNC_START sub_08001FD8
sub_08001FD8: @ 0x08001FD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	add r5, r1, #0
	ldr r0, _08002090  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r5, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r4, [r0]
	add r0, r4, #0
	bl 0x080064A0
	add r6, r0, #0
	ldrh r0, [r4, #24]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r8, r0
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0
	bl 0x08001CE0
	str r0, [sp]
	cmp r0, #0
	blt _0800207E
	cmp r6, r8
	bcs _0800207E
	mov r3, #31
	mov r12, r3
	ldr r5, _08002094  @ =0x030008E8
	mov r10, r5
	ldr r0, _08002098  @ =gUnknown_0807820C
	mov r9, r0
_08002028:
	mov r1, #6
	ldrsh r2, [r6, r1]
	ldr r0, [r7, #4]
	add r2, r2, r0
	mov r5, #4
	ldrsh r3, [r6, r5]
	ldr r0, [r7]
	add r3, r3, r0
	lsl r4, r2, #6
	add r4, r4, r3
	asr r1, r2, #5
	mov r5, r10
	ldrb r0, [r5]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, r12
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, r12
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	mov r3, r9
	ldr r2, [r3]
	lsl r1, r1, #1
	ldr r5, _0800209C  @ =0x0000800C
	add r0, r2, r5
	add r0, r0, r1
	ldrh r1, [r6]
	strh r1, [r0]
	lsl r4, r4, #1
	ldr r0, _080020A0  @ =0x0000600C
	add r2, r2, r0
	add r2, r2, r4
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r2]
	add r6, r6, #8
	cmp r6, r8
	bcc _08002028
_0800207E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08002090:
	.4byte gUnknown_08078210
_08002094:
	.4byte 0x030008E8
_08002098:
	.4byte gUnknown_0807820C
_0800209C:
	.4byte 0x0000800C
_080020A0:
	.4byte 0x0000600C
	THUMB_FUNC_END sub_08001FD8

	THUMB_FUNC_START sub_080020A4
sub_080020A4: @ 0x080020A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r4, r1, #0
	add r0, r4, #0
	bl 0x080064A0
	add r5, r0, #0
	ldrh r0, [r4, #24]
	lsl r0, r0, #3
	add r0, r5, r0
	str r0, [sp]
	cmp r5, r0
	bcs _08002138
	mov r0, #31
	mov r8, r0
	mov r1, #0
	mov r12, r1
	ldr r2, _08002148  @ =gUnknown_0807820C
	mov r10, r2
	ldr r3, _0800214C  @ =0x03000E60
	mov r9, r3
_080020D8:
	mov r7, #6
	ldrsh r2, [r5, r7]
	ldr r0, [r6, #4]
	add r2, r2, r0
	mov r0, #4
	ldrsh r3, [r5, r0]
	ldr r0, [r6]
	add r3, r3, r0
	lsl r4, r2, #6
	add r4, r4, r3
	asr r1, r2, #5
	ldr r7, _08002150  @ =0x030008E8
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, r8
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, r8
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	mov r3, r10
	ldr r2, [r3]
	lsl r1, r1, #1
	ldr r7, _08002154  @ =0x0000800C
	add r0, r2, r7
	add r0, r0, r1
	mov r3, r9
	ldrh r1, [r3]
	strh r1, [r0]
	lsl r4, r4, #1
	ldr r7, _08002158  @ =0x0000600C
	add r0, r2, r7
	add r0, r0, r4
	mov r1, r12
	strh r1, [r0]
	ldr r3, _0800215C  @ =0x0000400C
	add r2, r2, r3
	add r2, r2, r4
	strh r1, [r2]
	add r5, r5, #8
	ldr r7, [sp]
	cmp r5, r7
	bcc _080020D8
_08002138:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08002148:
	.4byte gUnknown_0807820C
_0800214C:
	.4byte 0x03000E60
_08002150:
	.4byte 0x030008E8
_08002154:
	.4byte 0x0000800C
_08002158:
	.4byte 0x0000600C
_0800215C:
	.4byte 0x0000400C
	THUMB_FUNC_END sub_080020A4

	THUMB_FUNC_START sub_08002160
sub_08002160: @ 0x08002160
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	ldr r1, [r0, #4]
	lsl r1, r1, #6
	ldr r0, [r0]
	add r1, r1, r0
	ldr r7, _08002248  @ =gUnknown_0807820C
	ldr r2, [r7]
	lsl r1, r1, #1
	ldr r3, _0800224C  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08002188
	b _08002292
_08002188:
	sub r0, r0, #1
	lsl r0, r0, #16
	lsr r5, r0, #14
	add r1, r2, r5
	ldrb r0, [r1, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r1, #15]
	str r0, [sp, #4]
	ldrh r2, [r1, #12]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _0800225C
	ldr r0, _08002250  @ =0x00007FFF
	and r2, r2, r0
	sub r0, r2, #1
	lsl r0, r0, #16
	mov r4, #254
	lsl r4, r4, #15
	and r4, r4, r0
	lsr r4, r4, #16
	add r0, r4, #0
	bl 0x08040D94
	mov r9, r0
	add r0, r4, #0
	bl 0x08040DCC
	str r0, [sp, #8]
	add r0, r4, #0
	bl 0x08039B64
	mov r12, sp
	mov r6, #0
	str r5, [sp, #12]
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _08002276
_080021DA:
	mov r1, r12
	ldr r0, [r1, #4]
	add r0, r6, r0
	lsl r0, r0, #6
	ldr r1, [r1]
	add r4, r0, r1
	mov r5, #0
	add r2, r6, #1
	mov r8, r2
	cmp r5, r9
	bge _0800223C
	ldr r3, _08002254  @ =0x03000E60
	mov r10, r3
_080021F4:
	mov r7, r12
	ldr r0, [r7, #4]
	add r0, r6, r0
	asr r2, r0, #5
	lsl r2, r2, #5
	mov r1, #31
	and r0, r0, r1
	add r2, r2, r0
	lsl r2, r2, #5
	ldr r1, [r7]
	add r1, r5, r1
	asr r0, r1, #5
	lsl r0, r0, #10
	mov r3, #31
	and r1, r1, r3
	add r0, r0, r1
	add r2, r2, r0
	ldr r7, _08002248  @ =gUnknown_0807820C
	ldr r3, [r7]
	lsl r1, r4, #1
	ldr r7, _0800224C  @ =0x0000600C
	add r0, r3, r7
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0]
	lsl r2, r2, #1
	ldr r0, _08002258  @ =0x0000800C
	add r3, r3, r0
	add r3, r3, r2
	mov r1, r10
	ldrh r0, [r1]
	strh r0, [r3]
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, r9
	blt _080021F4
_0800223C:
	mov r6, r8
	ldr r2, [sp, #8]
	cmp r6, r2
	blt _080021DA
	b _08002276
	.byte 0x00
	.byte 0x00
_08002248:
	.4byte gUnknown_0807820C
_0800224C:
	.4byte 0x0000600C
_08002250:
	.4byte 0x00007FFF
_08002254:
	.4byte 0x03000E60
_08002258:
	.4byte 0x0000800C
_0800225C:
	ldr r0, _080022A4  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r2, #1
	lsl r0, r0, #2
	mov r3, #132
	lsl r3, r3, #1
	add r1, r1, r3
	add r1, r1, r0
	ldr r1, [r1]
	mov r0, sp
	bl 0x080020A4
	str r5, [sp, #12]
_08002276:
	ldr r3, _080022A8  @ =gUnknown_0807820C
	ldr r1, [r3]
	ldr r7, [sp, #12]
	add r1, r1, r7
	mov r4, #0
	mov r0, #0
	strh r0, [r1, #12]
	ldrb r2, [r1, #14]
	sub r0, r0, #128
	and r0, r0, r2
	strb r0, [r1, #14]
	ldr r0, [r3]
	add r0, r0, r7
	strb r4, [r0, #15]
_08002292:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080022A4:
	.4byte gUnknown_08078210
_080022A8:
	.4byte gUnknown_0807820C
	THUMB_FUNC_END sub_08002160

	THUMB_FUNC_START sub_080022AC
sub_080022AC: @ 0x080022AC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	add r5, r0, #0
	mov r8, r1
	mov r12, r2
	str r3, [sp, #32]
	ldr r4, [r1]
	str r4, [sp]
	ldrh r1, [r2]
	lsl r1, r1, #3
	add r1, r4, r1
	str r1, [sp, #8]
	mov r0, r8
	ldr r3, [r0, #4]
	str r3, [sp, #4]
	ldrh r0, [r2, #2]
	lsl r0, r0, #3
	add r0, r3, r0
	str r0, [sp, #12]
	sub r1, r1, r4
	ldr r2, [r5, #8]
	add r1, r1, r2
	ldr r2, [r5]
	sub r1, r1, r2
	mov r10, r1
	sub r0, r0, r3
	ldr r1, [r5, #12]
	add r0, r0, r1
	ldr r1, [r5, #4]
	sub r0, r0, r1
	str r0, [sp, #36]
	cmp r2, r4
	bge _080022F8
	str r2, [sp]
_080022F8:
	ldr r1, [r5, #8]
	mov r9, r1
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _08002304
	str r1, [sp, #8]
_08002304:
	ldr r3, [r5, #4]
	ldr r0, [sp, #4]
	add r1, r3, #0
	cmp r1, r0
	bge _08002310
	str r1, [sp, #4]
_08002310:
	ldr r4, [r5, #12]
	ldr r0, [sp, #12]
	add r1, r4, #0
	cmp r1, r0
	ble _0800231C
	str r1, [sp, #12]
_0800231C:
	ldr r0, [sp, #8]
	ldr r1, [sp]
	sub r0, r0, r1
	cmp r0, r10
	bge _0800237A
	ldr r0, [sp, #12]
	ldr r1, [sp, #4]
	sub r0, r0, r1
	ldr r2, [sp, #36]
	cmp r0, r2
	bge _0800237A
	mov r1, r12
	ldrh r0, [r1]
	lsl r0, r0, #2
	mov r2, r8
	ldr r1, [r2]
	add r6, r1, r0
	mov r1, r12
	ldrh r0, [r1, #2]
	lsl r0, r0, #2
	ldr r1, [r2, #4]
	add r7, r1, r0
	ldr r2, [r5]
	mov r1, r9
	sub r0, r1, r2
	lsr r1, r0, #31
	add r0, r0, r1
	asr r0, r0, #1
	add r2, r2, r0
	sub r2, r6, r2
	ldr r0, [sp, #32]
	str r2, [r0]
	sub r1, r4, r3
	lsr r0, r1, #31
	add r1, r1, r0
	asr r1, r1, #1
	add r1, r3, r1
	sub r1, r7, r1
	ldr r0, [sp, #32]
	str r1, [r0, #4]
	add r0, r2, #0
	mul r0, r2, r0
	add r2, r1, #0
	mul r2, r1, r2
	add r1, r2, #0
	add r0, r0, r1
	b _0800237C
_0800237A:
	ldr r0, _0800238C  @ =0x7FFFFFFF
_0800237C:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_0800238C:
	.4byte 0x7FFFFFFF
	THUMB_FUNC_END sub_080022AC

	THUMB_FUNC_START sub_08002390
sub_08002390: @ 0x08002390
	push {r4,r5,lr}
	add r3, r1, #0
	add r4, r2, #0
	ldr r1, [r0]
	asr r1, r1, #3
	ldr r0, [r0, #4]
	asr r2, r0, #3
	cmp r4, #0
	beq _080023A6
	mov r0, #0
	str r0, [r4]
_080023A6:
	lsl r0, r2, #6
	add r1, r0, r1
	ldr r0, _080023F0  @ =0x00000FFF
	cmp r1, r0
	bhi _080023EA
	ldr r0, _080023F4  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsl r1, r1, #1
	ldr r5, _080023F8  @ =0x0000600C
	add r0, r2, r5
	add r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _080023EA
	sub r1, r1, #1
	lsl r1, r1, #16
	lsr r1, r1, #14
	add r1, r2, r1
	ldrb r0, [r1, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [r3]
	ldrb r2, [r1, #15]
	lsl r0, r0, #3
	str r0, [r3]
	lsl r2, r2, #3
	str r2, [r3, #4]
	ldrh r1, [r1, #12]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	sub r1, r1, #1
	cmp r0, #0
	beq _080023FC
_080023EA:
	mov r0, #0
	b _08002412
	.byte 0x00
	.byte 0x00
_080023F0:
	.4byte 0x00000FFF
_080023F4:
	.4byte gUnknown_0807820C
_080023F8:
	.4byte 0x0000600C
_080023FC:
	cmp r4, #0
	beq _08002402
	str r1, [r4]
_08002402:
	ldr r0, _08002418  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r0, [r0]
_08002412:
	pop {r4,r5}
	pop {r1}
	bx r1
_08002418:
	.4byte gUnknown_08078210
	THUMB_FUNC_END sub_08002390

	THUMB_FUNC_START sub_0800241C
sub_0800241C: @ 0x0800241C
	push {r4,r5,lr}
	add r3, r1, #0
	add r4, r2, #0
	ldr r1, [r0]
	asr r1, r1, #11
	ldr r0, [r0, #4]
	asr r2, r0, #11
	cmp r4, #0
	beq _08002432
	mov r0, #0
	str r0, [r4]
_08002432:
	lsl r0, r2, #6
	add r0, r0, r1
	ldr r1, _08002474  @ =gUnknown_0807820C
	ldr r2, [r1]
	lsl r0, r0, #1
	ldr r5, _08002478  @ =0x0000600C
	add r1, r2, r5
	add r1, r1, r0
	ldrh r1, [r1]
	cmp r1, #0
	beq _08002470
	sub r1, r1, #1
	lsl r1, r1, #16
	lsr r1, r1, #14
	add r1, r2, r1
	ldrb r0, [r1, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [r3]
	ldrb r2, [r1, #15]
	lsl r0, r0, #11
	str r0, [r3]
	lsl r2, r2, #11
	str r2, [r3, #4]
	ldrh r1, [r1, #12]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	sub r1, r1, #1
	cmp r0, #0
	beq _0800247C
_08002470:
	mov r0, #0
	b _08002492
_08002474:
	.4byte gUnknown_0807820C
_08002478:
	.4byte 0x0000600C
_0800247C:
	cmp r4, #0
	beq _08002482
	str r1, [r4]
_08002482:
	ldr r0, _08002498  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r0, [r0]
_08002492:
	pop {r4,r5}
	pop {r1}
	bx r1
_08002498:
	.4byte gUnknown_08078210
	THUMB_FUNC_END sub_0800241C

	THUMB_FUNC_START sub_0800249C
sub_0800249C: @ 0x0800249C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	add r5, r0, #0
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp]
	ldr r1, [r5, #36]
	asr r1, r1, #8
	ldrb r0, [r2, #2]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	add r6, sp, #8
	add r0, sp, #16
	mov r8, r0
	b _080024FC
_080024CA:
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _080024E8
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080024DE
	ldr r0, [r6, #4]
	add r0, r0, #8
	b _080024E2
_080024DE:
	ldr r0, [r6, #4]
	sub r0, r0, #4
_080024E2:
	lsl r0, r0, #8
	str r0, [r5, #20]
	b _0800250A
_080024E8:
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _080024F6
	ldr r0, [sp, #4]
	sub r0, r0, #8
	b _080024FA
_080024F6:
	ldr r0, [sp, #4]
	add r0, r0, #8
_080024FA:
	str r0, [sp, #4]
_080024FC:
	mov r0, sp
	add r1, r6, #0
	mov r2, r8
	bl 0x08002390
	cmp r0, #0
	bne _080024CA
_0800250A:
	ldr r1, [r5, #32]
	asr r1, r1, #8
	add r0, r5, #0
	add r0, r0, #132
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp]
	ldr r1, [r5, #36]
	asr r1, r1, #8
	ldrb r0, [r2, #2]
	lsr r0, r0, #1
	add r1, r1, r0
	str r1, [sp, #4]
	mov r4, sp
	add r7, r5, #0
	add r7, r7, #146
_0800252E:
	mov r0, sp
	add r1, r6, #0
	mov r2, r8
	bl 0x08002390
	cmp r0, #0
	beq _08002572
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800255A
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08002552
	ldr r0, [r6, #4]
	add r0, r0, #8
	strh r0, [r7]
	b _08002572
_08002552:
	ldr r0, [r6, #4]
	sub r0, r0, #4
	strh r0, [r7]
	b _08002572
_0800255A:
	mov r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0800256A
	ldr r0, [r4, #4]
	sub r0, r0, #8
	str r0, [r4, #4]
	b _0800252E
_0800256A:
	ldr r0, [r4, #4]
	add r0, r0, #8
	str r0, [r4, #4]
	b _0800252E
_08002572:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0800249C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08002580
sub_08002580: @ 0x08002580
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	mov r10, r0
	ldr r0, [sp, #96]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #40]
	ldr r0, _0800264C  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	add r2, r2, r10
	mov r0, r10
	asr r0, r0, #8
	mov r10, r0
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
	add r2, r2, r10
	mov r8, r2
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	ldr r3, [sp, #40]
	cmp r3, #0
	bne _08002650
	add r6, r1, #0
	ldr r4, [sp, #44]
	cmp r6, r4
	bgt _080026C8
_080025E2:
	mov r5, r10
	mov r0, #8
	add r0, r0, r6
	mov r9, r0
	cmp r5, r8
	bgt _08002640
	add r7, sp, #24
_080025F0:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, sp, #24
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _0800263A
	ldrb r0, [r2, #4]
	cmp r0, #15
	beq _08002612
	cmp r0, #77
	beq _08002612
	cmp r0, #78
	bne _0800263A
_08002612:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _0800263A
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r3, [sp, #92]
	str r0, [r3]
	ldr r0, [sp, #32]
	ldr r1, [sp, #84]
	str r0, [r1]
	ldr r0, [r4, #4]
	ldr r3, [sp, #88]
	str r0, [r3]
_0800263A:
	add r5, r5, #8
	cmp r5, r8
	ble _080025F0
_08002640:
	mov r6, r9
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _080025E2
	b _080026C8
	.byte 0x00
	.byte 0x00
_0800264C:
	.4byte 0x7FFFFFFF
_08002650:
	add r6, r1, #0
	b _080026C2
_08002654:
	mov r5, r10
	mov r1, #8
	add r1, r1, r6
	mov r9, r1
	cmp r5, r8
	bgt _080026C0
	add r7, sp, #24
_08002662:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, sp, #24
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _080026BA
	ldrb r0, [r2, #4]
	cmp r0, #15
	beq _08002684
	cmp r0, #77
	beq _08002684
	cmp r0, #78
	bne _080026BA
_08002684:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl 0x080022AC
	ldr r3, [sp, #48]
	cmp r0, r3
	bge _080026BA
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _080026A0
	neg r1, r2
_080026A0:
	ldr r3, [sp, #40]
	cmp r1, r3
	bge _080026BA
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r1, [sp, #92]
	str r0, [r1]
	ldr r3, [sp, #84]
	str r2, [r3]
	ldr r0, [r4, #4]
	ldr r4, [sp, #88]
	str r0, [r4]
_080026BA:
	add r5, r5, #8
	cmp r5, r8
	ble _08002662
_080026C0:
	mov r6, r9
_080026C2:
	ldr r0, [sp, #44]
	cmp r6, r0
	ble _08002654
_080026C8:
	ldr r0, _080026D4  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _080026D8
	mov r0, #0
	b _080026F2
_080026D4:
	.4byte 0x7FFFFFFF
_080026D8:
	ldr r3, [sp, #84]
	ldr r0, [r3]
	lsl r0, r0, #8
	str r0, [r3]
	ldr r4, [sp, #88]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #92]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_080026F2:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08002580

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08002704
sub_08002704: @ 0x08002704
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	str r0, [sp, #40]
	ldr r0, [sp, #96]
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r0, _080027D0  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	ldr r0, [sp, #40]
	add r2, r0, r2
	asr r0, r0, #8
	str r0, [sp, #40]
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
	ldr r4, [sp, #40]
	add r4, r4, r2
	mov r9, r4
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	mov r0, r8
	cmp r0, #0
	bne _080027D4
	add r6, r1, #0
	cmp r6, r3
	bgt _0800284A
_08002766:
	ldr r4, [sp, #40]
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r4, r9
	bgt _080027C6
	add r0, sp, #16
	mov r8, r0
	add r7, sp, #24
_08002778:
	str r4, [sp, #16]
	mov r1, r8
	str r6, [r1, #4]
	mov r0, r8
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _080027C0
	ldrb r0, [r2, #4]
	cmp r0, #15
	beq _08002798
	cmp r0, #77
	bne _080027C0
_08002798:
	add r5, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r5, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _080027C0
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r1, [sp, #92]
	str r0, [r1]
	ldr r0, [sp, #32]
	ldr r1, [sp, #84]
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_080027C0:
	add r4, r4, #8
	cmp r4, r9
	ble _08002778
_080027C6:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _08002766
	b _0800284A
_080027D0:
	.4byte 0x7FFFFFFF
_080027D4:
	add r6, r1, #0
	ldr r0, [sp, #44]
	cmp r6, r0
	bgt _0800284A
_080027DC:
	ldr r4, [sp, #40]
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r4, r9
	bgt _08002842
	add r7, sp, #24
_080027EA:
	str r4, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _0800283C
	ldrb r0, [r2, #4]
	cmp r0, #15
	beq _08002808
	cmp r0, #77
	bne _0800283C
_08002808:
	add r5, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r5, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _0800283C
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08002824
	neg r1, r2
_08002824:
	cmp r1, r8
	bge _0800283C
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r1, [sp, #92]
	str r0, [r1]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r5, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_0800283C:
	add r4, r4, #8
	cmp r4, r9
	ble _080027EA
_08002842:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _080027DC
_0800284A:
	ldr r0, _08002858  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _0800285C
	mov r0, #0
	b _08002876
	.byte 0x00
	.byte 0x00
_08002858:
	.4byte 0x7FFFFFFF
_0800285C:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	ldr r4, [sp, #92]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	mov r0, #1
_08002876:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08002704

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08002888
sub_08002888: @ 0x08002888
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #52
	str r0, [sp, #40]
	ldr r0, [sp, #96]
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	ldr r0, _08002950  @ =0x7FFFFFFF
	str r0, [sp, #48]
	mov r0, #0
	ldr r4, [sp, #88]
	str r0, [r4]
	ldr r4, [sp, #84]
	str r0, [r4]
	add r3, r1, r3
	ldr r0, [sp, #40]
	add r2, r0, r2
	asr r0, r0, #8
	str r0, [sp, #40]
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
	ldr r4, [sp, #40]
	add r4, r4, r2
	mov r9, r4
	add r3, r3, #7
	and r3, r3, r0
	add r3, r1, r3
	str r3, [sp, #44]
	mov r0, r8
	cmp r0, #0
	bne _08002954
	add r6, r1, #0
	cmp r6, r3
	bgt _080029C6
_080028EA:
	ldr r4, [sp, #40]
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r4, r9
	bgt _08002946
	add r0, sp, #16
	mov r8, r0
	add r7, sp, #24
_080028FC:
	str r4, [sp, #16]
	mov r1, r8
	str r6, [r1, #4]
	mov r0, r8
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08002940
	ldrb r0, [r2, #4]
	cmp r0, #15
	bne _08002940
	add r5, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r5, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08002940
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r1, [sp, #92]
	str r0, [r1]
	ldr r0, [sp, #32]
	ldr r1, [sp, #84]
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08002940:
	add r4, r4, #8
	cmp r4, r9
	ble _080028FC
_08002946:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _080028EA
	b _080029C6
_08002950:
	.4byte 0x7FFFFFFF
_08002954:
	add r6, r1, #0
	ldr r0, [sp, #44]
	cmp r6, r0
	bgt _080029C6
_0800295C:
	ldr r4, [sp, #40]
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r4, r9
	bgt _080029BE
	add r7, sp, #24
_0800296A:
	str r4, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _080029B8
	ldrb r0, [r2, #4]
	cmp r0, #15
	bne _080029B8
	add r5, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r5, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _080029B8
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _080029A0
	neg r1, r2
_080029A0:
	cmp r1, r8
	bge _080029B8
	str r0, [sp, #48]
	ldr r0, [sp, #24]
	sub r0, r0, #12
	ldr r1, [sp, #92]
	str r0, [r1]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r5, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_080029B8:
	add r4, r4, #8
	cmp r4, r9
	ble _0800296A
_080029BE:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _0800295C
_080029C6:
	ldr r0, _080029D4  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _080029D8
	mov r0, #0
	b _080029F2
	.byte 0x00
	.byte 0x00
_080029D4:
	.4byte 0x7FFFFFFF
_080029D8:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	ldr r4, [sp, #92]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	mov r0, #1
_080029F2:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08002888

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08002A04
sub_08002A04: @ 0x08002A04
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
	ldr r0, _08002ADC  @ =0x7FFFFFFF
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
	bgt _08002AD0
_08002A5E:
	mov r5, r8
	mov r1, #8
	add r1, r1, r6
	mov r10, r1
	cmp r5, r9
	bgt _08002AC8
	add r7, sp, #24
_08002A6C:
	str r5, [sp, #16]
	add r0, sp, #16
	str r6, [r0, #4]
	add r1, r7, #0
	mov r2, #0
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08002AC2
	ldrb r0, [r2, #4]
	cmp r0, #3
	beq _08002A8A
	cmp r0, #18
	bne _08002AC2
_08002A8A:
	ldrb r0, [r2, #15]
	cmp r0, #0
	beq _08002A96
	ldr r4, [sp, #40]
	cmp r0, r4
	bne _08002AC2
_08002A96:
	add r4, sp, #32
	mov r0, sp
	add r1, r7, #0
	add r3, r4, #0
	bl 0x080022AC
	ldr r1, [sp, #48]
	cmp r0, r1
	bge _08002AC2
	ldr r2, [sp, #32]
	add r1, r2, #0
	cmp r2, #0
	bge _08002AB2
	neg r1, r2
_08002AB2:
	cmp r1, #7
	bgt _08002AC2
	str r0, [sp, #48]
	ldr r0, [sp, #84]
	str r2, [r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #88]
	str r0, [r1]
_08002AC2:
	add r5, r5, #8
	cmp r5, r9
	ble _08002A6C
_08002AC8:
	mov r6, r10
	ldr r4, [sp, #44]
	cmp r6, r4
	ble _08002A5E
_08002AD0:
	ldr r0, _08002ADC  @ =0x7FFFFFFF
	ldr r1, [sp, #48]
	cmp r1, r0
	bne _08002AE0
	mov r0, #0
	b _08002AF2
_08002ADC:
	.4byte 0x7FFFFFFF
_08002AE0:
	ldr r4, [sp, #84]
	ldr r0, [r4]
	lsl r0, r0, #8
	str r0, [r4]
	ldr r1, [sp, #88]
	ldr r0, [r1]
	lsl r0, r0, #8
	str r0, [r1]
	mov r0, #1
_08002AF2:
	add sp, sp, #52
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08002A04

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08002B04
sub_08002B04: @ 0x08002B04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #56
	ldr r4, [sp, #88]
	mov r10, r4
	ldr r4, _08002C18  @ =0x7FFFFFFF
	mov r9, r4
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	str r0, [sp, #48]
	str r1, [sp, #52]
	add r5, r2, #0
	add r6, r3, #0
	add r0, sp, #16
	str r1, [r0, #4]
	mov r8, r0
	cmp r1, r6
	bge _08002BA4
_08002B32:
	ldr r0, [sp, #48]
	str r0, [sp, #16]
	add r1, r0, #0
	cmp r1, r5
	bge _08002B98
	add r7, sp, #24
_08002B3E:
	mov r0, r8
	add r1, sp, #24
	add r2, sp, #32
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _08002B8E
	ldrb r0, [r4, #4]
	cmp r0, #23
	beq _08002B5C
	cmp r0, #9
	beq _08002B5C
	cmp r0, #14
	bne _08002B8E
_08002B5C:
	mov r0, sp
	add r1, r7, #0
	add r2, r4, #0
	add r3, sp, #36
	bl 0x080022AC
	cmp r0, r9
	bge _08002B7A
	ldr r1, [sp, #36]
	cmp r1, #0
	bge _08002B74
	neg r1, r1
_08002B74:
	cmp r1, #7
	bgt _08002B7A
	mov r9, r0
_08002B7A:
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r4, [sp, #52]
	cmp r0, r4
	blt _08002B8E
	cmp r0, r6
	ble _08002C04
_08002B8E:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	blt _08002B3E
_08002B98:
	mov r1, r8
	ldr r0, [r1, #4]
	add r0, r0, #8
	str r0, [r1, #4]
	cmp r0, r6
	blt _08002B32
_08002BA4:
	mov r4, r8
	str r6, [r4, #4]
	ldr r0, [sp, #48]
	str r0, [sp, #16]
	add r1, r0, #0
	cmp r1, r5
	bge _08002C26
	add r7, sp, #24
_08002BB4:
	mov r0, r8
	add r1, sp, #24
	add r2, sp, #44
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _08002C1C
	ldrb r0, [r4, #4]
	cmp r0, #23
	beq _08002BD2
	cmp r0, #9
	beq _08002BD2
	cmp r0, #14
	bne _08002C1C
_08002BD2:
	mov r0, sp
	add r1, r7, #0
	add r2, r4, #0
	add r3, sp, #36
	bl 0x080022AC
	cmp r0, r9
	bge _08002BF0
	ldr r1, [sp, #36]
	cmp r1, #0
	bge _08002BEA
	neg r1, r1
_08002BEA:
	cmp r1, #7
	bgt _08002BF0
	mov r9, r0
_08002BF0:
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r4, [sp, #52]
	cmp r0, r4
	blt _08002C1C
	cmp r0, r6
	bgt _08002C1C
_08002C04:
	ldr r0, [sp, #24]
	mov r1, r10
	str r0, [r1]
	ldr r0, [r7, #4]
	sub r0, r0, #12
	str r0, [r1, #4]
	ldr r0, [r7, #4]
	ldr r4, [sp, #52]
	sub r0, r0, r4
	b _08002C28
_08002C18:
	.4byte 0x7FFFFFFF
_08002C1C:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	blt _08002BB4
_08002C26:
	ldr r0, _08002C38  @ =0xFFFFEC78
_08002C28:
	add sp, sp, #56
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_08002C38:
	.4byte 0xFFFFEC78
	THUMB_FUNC_END sub_08002B04

	THUMB_FUNC_START sub_08002C3C
sub_08002C3C: @ 0x08002C3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #104
	ldr r4, _08002D7C  @ =0x7FFFFFFF
	str r4, [sp, #92]
	str r4, [sp, #88]
	mov r4, #0
	str r4, [sp, #96]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	str r0, [sp, #80]
	str r1, [sp, #84]
	add r5, r2, #0
	add r6, r3, #0
	add r0, sp, #16
	str r1, [r0, #4]
	cmp r1, r6
	blt _08002C6C
	b _08002DBA
_08002C6C:
	ldr r0, [sp, #80]
	str r0, [sp, #16]
	add r1, r0, #0
	cmp r1, r5
	blt _08002C78
	b _08002DAE
_08002C78:
	add r2, sp, #24
	mov r9, r2
_08002C7C:
	add r0, sp, #16
	add r1, sp, #24
	add r2, sp, #32
	bl 0x08002390
	add r7, r0, #0
	cmp r7, #0
	bne _08002C8E
	b _08002DA2
_08002C8E:
	ldrb r0, [r7, #4]
	cmp r0, #8
	beq _08002C96
	b _08002DA2
_08002C96:
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	str r0, [sp, #36]
	str r1, [sp, #40]
	ldr r0, [sp, #36]
	add r0, r0, #8
	str r0, [sp, #36]
	add r0, sp, #36
	add r1, sp, #44
	add r2, sp, #52
	bl 0x08002390
	add r2, r0, #0
	add r3, sp, #36
	mov r8, r3
	add r4, sp, #44
	add r0, sp, #52
	mov r10, r0
	cmp r2, #0
	beq _08002CEE
	ldrb r0, [r2, #4]
	cmp r0, #23
	beq _08002CCC
	cmp r0, #9
	beq _08002CCC
	cmp r0, #14
	bne _08002CEE
_08002CCC:
	mov r1, #2
	str r1, [sp, #96]
	mov r0, sp
	add r1, r4, #0
	add r3, sp, #56
	bl 0x080022AC
	ldr r2, [sp, #92]
	cmp r0, r2
	bge _08002CEE
	ldr r1, [sp, #56]
	cmp r1, #0
	bge _08002CE8
	neg r1, r1
_08002CE8:
	cmp r1, #7
	bgt _08002CEE
	str r0, [sp, #92]
_08002CEE:
	ldr r0, [sp, #36]
	sub r0, r0, #16
	str r0, [sp, #36]
	mov r0, r8
	add r1, r4, #0
	mov r2, r10
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08002D34
	ldrb r0, [r2, #4]
	cmp r0, #23
	beq _08002D12
	cmp r0, #9
	beq _08002D12
	cmp r0, #14
	bne _08002D34
_08002D12:
	mov r3, #1
	str r3, [sp, #96]
	mov r0, sp
	add r1, r4, #0
	add r3, sp, #56
	bl 0x080022AC
	ldr r4, [sp, #92]
	cmp r0, r4
	bge _08002D34
	ldr r1, [sp, #56]
	cmp r1, #0
	bge _08002D2E
	neg r1, r1
_08002D2E:
	cmp r1, #7
	bgt _08002D34
	str r0, [sp, #92]
_08002D34:
	mov r0, sp
	mov r1, r9
	add r2, r7, #0
	add r3, sp, #64
	bl 0x080022AC
	add r2, r0, #0
	ldr r0, [sp, #88]
	cmp r2, r0
	bge _08002D56
	ldr r0, [sp, #64]
	cmp r0, #0
	bge _08002D50
	neg r0, r0
_08002D50:
	cmp r0, #7
	bgt _08002D56
	str r2, [sp, #88]
_08002D56:
	ldrh r0, [r7]
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3, #4]
	add r0, r1, r0
	str r0, [r3, #4]
	ldr r4, [sp, #84]
	cmp r0, r4
	blt _08002DA2
	cmp r0, r6
	bgt _08002DA2
	ldr r0, [sp, #96]
	cmp r0, #0
	beq _08002D80
	ldr r0, [sp, #64]
	ldr r1, [sp, #136]
	str r0, [r1]
	b _08002D86
	.byte 0x00
	.byte 0x00
_08002D7C:
	.4byte 0x7FFFFFFF
_08002D80:
	ldr r3, [sp, #96]
	ldr r4, [sp, #136]
	str r3, [r4]
_08002D86:
	mov r1, r9
	ldr r0, [r1, #4]
	sub r0, r0, #12
	ldr r3, [sp, #136]
	str r0, [r3, #4]
	ldr r4, [sp, #92]
	cmp r2, r4
	blt _08002D98
	b _08002EFC
_08002D98:
	ldr r0, [r1, #4]
	ldr r1, [sp, #84]
	sub r0, r0, r1
	sub r0, r0, #6
	b _08002EFE
_08002DA2:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	bge _08002DAE
	b _08002C7C
_08002DAE:
	ldr r0, [sp, #20]
	add r0, r0, #8
	str r0, [sp, #20]
	cmp r0, r6
	bge _08002DBA
	b _08002C6C
_08002DBA:
	str r6, [sp, #20]
	ldr r2, [sp, #80]
	str r2, [sp, #16]
	add r3, r2, #0
	cmp r3, r5
	blt _08002DC8
	b _08002EFC
_08002DC8:
	add r4, sp, #24
	mov r9, r4
_08002DCC:
	add r0, sp, #16
	add r1, sp, #24
	add r2, sp, #72
	bl 0x08002390
	add r7, r0, #0
	cmp r7, #0
	bne _08002DDE
	b _08002EF0
_08002DDE:
	ldrb r0, [r7, #4]
	cmp r0, #8
	beq _08002DE6
	b _08002EF0
_08002DE6:
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	str r0, [sp, #36]
	str r1, [sp, #40]
	ldr r0, [sp, #36]
	add r0, r0, #8
	str r0, [sp, #36]
	add r0, sp, #36
	add r1, sp, #44
	add r2, sp, #76
	bl 0x08002390
	add r2, r0, #0
	add r0, sp, #36
	mov r8, r0
	add r4, sp, #44
	add r1, sp, #76
	mov r10, r1
	cmp r2, #0
	beq _08002E3E
	ldrb r0, [r2, #4]
	cmp r0, #23
	beq _08002E1C
	cmp r0, #9
	beq _08002E1C
	cmp r0, #14
	bne _08002E3E
_08002E1C:
	mov r3, #2
	str r3, [sp, #96]
	mov r0, sp
	add r1, r4, #0
	add r3, sp, #56
	bl 0x080022AC
	ldr r1, [sp, #92]
	cmp r0, r1
	bge _08002E3E
	ldr r1, [sp, #56]
	cmp r1, #0
	bge _08002E38
	neg r1, r1
_08002E38:
	cmp r1, #7
	bgt _08002E3E
	str r0, [sp, #92]
_08002E3E:
	ldr r0, [sp, #36]
	sub r0, r0, #16
	str r0, [sp, #36]
	mov r0, r8
	add r1, r4, #0
	mov r2, r10
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _08002E86
	ldrb r0, [r2, #4]
	cmp r0, #23
	beq _08002E62
	cmp r0, #9
	beq _08002E62
	cmp r0, #14
	bne _08002E86
_08002E62:
	mov r3, #1
	str r3, [sp, #96]
	mov r0, sp
	add r1, r4, #0
	add r3, sp, #56
	bl 0x080022AC
	ldr r4, [sp, #92]
	cmp r0, r4
	bge _08002E86
	ldr r0, [sp, #56]
	cmp r0, #0
	bge _08002E7E
	neg r0, r0
_08002E7E:
	cmp r0, #7
	bgt _08002E86
	ldr r0, [sp, #100]
	str r0, [sp, #92]
_08002E86:
	mov r0, sp
	mov r1, r9
	add r2, r7, #0
	add r3, sp, #64
	bl 0x080022AC
	str r0, [sp, #100]
	ldr r1, [sp, #88]
	cmp r0, r1
	bge _08002EAA
	ldr r0, [sp, #64]
	cmp r0, #0
	bge _08002EA2
	neg r0, r0
_08002EA2:
	cmp r0, #7
	bgt _08002EAA
	ldr r2, [sp, #100]
	str r2, [sp, #88]
_08002EAA:
	ldrh r0, [r7]
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3, #4]
	add r0, r1, r0
	str r0, [r3, #4]
	ldr r4, [sp, #84]
	cmp r0, r4
	blt _08002EF0
	cmp r0, r6
	bgt _08002EF0
	ldr r0, [sp, #96]
	cmp r0, #0
	beq _08002ECE
	ldr r0, [sp, #64]
	ldr r1, [sp, #136]
	str r0, [r1]
	b _08002ED4
_08002ECE:
	ldr r2, [sp, #96]
	ldr r3, [sp, #136]
	str r2, [r3]
_08002ED4:
	mov r4, r9
	ldr r0, [r4, #4]
	sub r0, r0, #12
	ldr r1, [sp, #136]
	str r0, [r1, #4]
	ldr r2, [sp, #100]
	ldr r3, [sp, #92]
	cmp r2, r3
	bge _08002EFC
	ldr r0, [r4, #4]
	ldr r4, [sp, #84]
	sub r0, r0, r4
	sub r0, r0, #6
	b _08002EFE
_08002EF0:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	bge _08002EFC
	b _08002DCC
_08002EFC:
	ldr r0, _08002F10  @ =0xFFFFEC78
_08002EFE:
	add sp, sp, #104
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08002F10:
	.4byte 0xFFFFEC78
	THUMB_FUNC_END sub_08002C3C

	THUMB_FUNC_START sub_08002F14
sub_08002F14: @ 0x08002F14
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #56
	ldr r4, _0800301C  @ =0x7FFFFFFF
	mov r10, r4
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	str r0, [sp, #48]
	str r1, [sp, #52]
	add r5, r2, #0
	add r6, r3, #0
	add r0, sp, #16
	str r1, [r0, #4]
	mov r9, r0
	cmp r1, r6
	bge _08002FAA
_08002F3E:
	ldr r0, [sp, #48]
	str r0, [sp, #16]
	add r1, r0, #0
	cmp r1, r5
	bge _08002F9E
	add r7, sp, #24
	mov r8, r7
_08002F4C:
	mov r0, r9
	mov r1, r8
	add r2, sp, #32
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _08002F94
	ldrb r0, [r4, #4]
	cmp r0, #8
	bne _08002F94
	mov r0, sp
	mov r1, r8
	add r2, r4, #0
	add r3, sp, #36
	bl 0x080022AC
	cmp r0, r10
	bge _08002F80
	ldr r1, [sp, #36]
	cmp r1, #0
	bge _08002F7A
	neg r1, r1
_08002F7A:
	cmp r1, #7
	bgt _08002F80
	mov r10, r0
_08002F80:
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r4, [sp, #52]
	cmp r0, r4
	blt _08002F94
	cmp r0, r6
	ble _08003004
_08002F94:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	blt _08002F4C
_08002F9E:
	mov r1, r9
	ldr r0, [r1, #4]
	add r0, r0, #8
	str r0, [r1, #4]
	cmp r0, r6
	blt _08002F3E
_08002FAA:
	mov r4, r9
	str r6, [r4, #4]
	ldr r0, [sp, #48]
	str r0, [sp, #16]
	add r1, r0, #0
	cmp r1, r5
	bge _0800302A
	add r7, sp, #24
	mov r8, r7
_08002FBC:
	mov r0, r9
	mov r1, r8
	add r2, sp, #44
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _08003020
	ldrb r0, [r4, #4]
	cmp r0, #8
	bne _08003020
	mov r0, sp
	mov r1, r8
	add r2, r4, #0
	add r3, sp, #36
	bl 0x080022AC
	cmp r0, r10
	bge _08002FF0
	ldr r1, [sp, #36]
	cmp r1, #0
	bge _08002FEA
	neg r1, r1
_08002FEA:
	cmp r1, #7
	bgt _08002FF0
	mov r10, r0
_08002FF0:
	ldrh r0, [r4]
	lsl r0, r0, #3
	ldr r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r4, [sp, #52]
	cmp r0, r4
	blt _08003020
	cmp r0, r6
	bgt _08003020
_08003004:
	ldr r0, [sp, #24]
	ldr r1, [sp, #88]
	str r0, [r1]
	ldr r0, [r7, #4]
	sub r0, r0, #12
	str r0, [r1, #4]
	ldr r0, [r7, #4]
	ldr r4, [sp, #52]
	sub r0, r0, r4
	sub r0, r0, #6
	b _0800302C
	.byte 0x00
	.byte 0x00
_0800301C:
	.4byte 0x7FFFFFFF
_08003020:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r5
	blt _08002FBC
_0800302A:
	ldr r0, _0800303C  @ =0xFFFFEC78
_0800302C:
	add sp, sp, #56
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_0800303C:
	.4byte 0xFFFFEC78
	THUMB_FUNC_END sub_08002F14

	THUMB_FUNC_START sub_08003040
sub_08003040: @ 0x08003040
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #48
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #0
	mov r9, r0
	ldr r0, _08003108  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08003064
	b _08003256
_08003064:
	asr r4, r4, #8
	str r4, [sp, #32]
	asr r0, r5, #8
	str r0, [sp, #36]
	asr r2, r2, #8
	str r2, [sp, #40]
	asr r3, r3, #8
	str r3, [sp, #44]
	str r0, [sp, #16]
	add r1, r3, #0
	cmp r0, r1
	blt _0800307E
	b _08003244
_0800307E:
	mov r3, #128
	mov r8, r3
	ldr r0, _0800310C  @ =gUnknown_08078214
	mov r10, r0
_08003086:
	ldr r1, [sp, #32]
	str r1, [sp, #12]
	add r3, r1, #0
	ldr r0, [sp, #40]
	cmp r3, r0
	blt _08003094
	b _08003236
_08003094:
	add r5, sp, #20
	mov r7, #0
_08003098:
	add r0, sp, #12
	add r1, sp, #20
	add r2, sp, #28
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _080030B2
	ldrb r0, [r4, #4]
	cmp r0, #27
	bls _080030B2
	cmp r0, #30
	bls _0800311C
_080030B2:
	ldrb r0, [r4, #4]
	cmp r0, #7
	beq _080030BA
	b _08003228
_080030BA:
	ldr r1, _08003110  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #20]
	asr r0, r0, #3
	str r0, [sp, #20]
	ldr r0, [r5, #4]
	asr r0, r0, #3
	str r0, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl 0x080020A4
	str r7, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r0, _08003114  @ =0x030009C0
	ldr r0, [r0]
	cmp r0, #2
	bne _080030F2
	b _08003228
_080030F2:
	ldr r0, _08003118  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	ble _08003100
	b _08003228
_08003100:
	mov r0, #1
	bl 0x08014A58
	b _08003228
_08003108:
	.4byte gUnknown_03001A1C
_0800310C:
	.4byte gUnknown_08078214
_08003110:
	.4byte gUnknown_030009EC
_08003114:
	.4byte 0x030009C0
_08003118:
	.4byte gUnknown_03000BBC
_0800311C:
	ldr r2, _08003164  @ =gUnknown_03001A30
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	add r0, r0, r2
	ldrb r1, [r0]
	add r1, r1, #1
	mov r6, #0
	strb r1, [r0]
	ldrb r1, [r4, #4]
	add r0, r1, #0
	sub r0, r0, #28
	add r3, r2, #0
	cmp r0, #2
	ble _08003146
	ldr r2, _08003168  @ =0x030008E4
	sub r1, r1, #31
	mov r0, #1
	lsl r0, r0, r1
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
_08003146:
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800316C
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0800316C
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _0800316C
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r6, [sp, #8]
	mov r0, #41
	b _080031A6
_08003164:
	.4byte gUnknown_03001A30
_08003168:
	.4byte 0x030008E4
_0800316C:
	ldrb r0, [r3, #3]
	cmp r0, #0
	beq _08003190
	ldrb r0, [r3, #4]
	cmp r0, #0
	beq _0800318A
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _0800318A
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #82
	b _080031A6
_0800318A:
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _0800319C
_08003190:
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne _0800319C
	ldrb r2, [r3, #5]
	cmp r2, #0
	beq _080031B2
_0800319C:
	str r7, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r0, #81
_080031A6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _080031C6
_080031B2:
	str r2, [sp]
	mov r3, r8
	str r3, [sp, #4]
	str r2, [sp, #8]
	mov r0, #13
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
_080031C6:
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bhi _080031FC
	ldr r2, _08003268  @ =gUnknown_03000B4C
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #2
	add r0, r0, r10
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #2
	ldr r1, _0800326C  @ =gUnknown_08078216
	add r0, r0, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, [sp, #20]
	ldr r2, [r5, #4]
	bl 0x08031A64
_080031FC:
	ldr r1, _08003270  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #20]
	asr r0, r0, #3
	str r0, [sp, #20]
	ldr r0, [r5, #4]
	asr r0, r0, #3
	str r0, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl 0x080020A4
	mov r0, r9
	cmp r0, #0
	bne _08003224
	mov r0, #1
	neg r0, r0
	bl 0x080316D0
_08003224:
	mov r1, #1
	mov r9, r1
_08003228:
	ldr r0, [sp, #12]
	add r0, r0, #8
	str r0, [sp, #12]
	ldr r3, [sp, #40]
	cmp r0, r3
	bge _08003236
	b _08003098
_08003236:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	ldr r1, [sp, #44]
	cmp r0, r1
	bge _08003244
	b _08003086
_08003244:
	mov r3, r9
	cmp r3, #0
	beq _08003256
	bl 0x08031714
	mov r0, #1
	neg r0, r0
	bl 0x080314D8
_08003256:
	add sp, sp, #48
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08003268:
	.4byte gUnknown_03000B4C
_0800326C:
	.4byte gUnknown_08078216
_08003270:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_08003040

	THUMB_FUNC_START sub_08003274
sub_08003274: @ 0x08003274
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	mov r4, #0
	mov r10, r4
	asr r0, r0, #8
	str r0, [sp, #32]
	asr r1, r1, #8
	str r1, [sp, #36]
	asr r6, r2, #8
	asr r7, r3, #8
	str r1, [sp, #16]
	cmp r1, r7
	blt _08003298
	b _08003422
_08003298:
	mov r9, r4
_0800329A:
	ldr r0, [sp, #32]
	str r0, [sp, #12]
	add r1, r0, #0
	cmp r1, r6
	blt _080032A6
	b _08003416
_080032A6:
	add r5, sp, #20
	mov r3, #128
	mov r8, r3
_080032AC:
	add r0, sp, #12
	add r1, sp, #20
	add r2, sp, #28
	bl 0x08002390
	add r4, r0, #0
	cmp r4, #0
	beq _080032C6
	ldrb r0, [r4, #4]
	cmp r0, #27
	bls _080032C6
	cmp r0, #33
	bls _0800331C
_080032C6:
	ldrb r0, [r4, #4]
	cmp r0, #7
	beq _080032CE
	b _0800340A
_080032CE:
	ldr r1, _08003314  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #20]
	asr r0, r0, #3
	str r0, [sp, #20]
	ldr r0, [r5, #4]
	asr r0, r0, #3
	str r0, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl 0x080020A4
	mov r4, r9
	str r4, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r0, _08003318  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	ble _0800330C
	b _0800340A
_0800330C:
	mov r0, #1
	bl 0x08014A58
	b _0800340A
_08003314:
	.4byte gUnknown_030009EC
_08003318:
	.4byte gUnknown_03000BBC
_0800331C:
	ldr r2, _0800334C  @ =gUnknown_03001A30
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	add r0, r0, r2
	ldrb r1, [r0]
	add r1, r1, #1
	mov r3, #0
	strb r1, [r0]
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _08003356
	ldrb r0, [r2, #4]
	cmp r0, #0
	beq _08003350
	ldrb r0, [r2, #5]
	cmp r0, #0
	beq _08003350
	str r3, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r0, #82
	b _0800336E
	.byte 0x00
	.byte 0x00
_0800334C:
	.4byte gUnknown_03001A30
_08003350:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _08003362
_08003356:
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08003362
	ldrb r2, [r2, #5]
	cmp r2, #0
	beq _0800337A
_08003362:
	mov r3, r9
	str r3, [sp]
	mov r0, r8
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #81
_0800336E:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _0800338E
_0800337A:
	str r2, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r0, #13
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
_0800338E:
	ldr r0, _08003444  @ =gUnknown_030009EC
	mov r1, #1
	strb r1, [r0]
	ldrb r1, [r4, #4]
	add r0, r1, #0
	sub r0, r0, #28
	cmp r0, #2
	ble _080033AC
	ldr r2, _08003448  @ =0x030008E4
	sub r1, r1, #31
	mov r0, #1
	lsl r0, r0, r1
	ldrb r1, [r2]
	orr r0, r0, r1
	strb r0, [r2]
_080033AC:
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #5
	bhi _080033E4
	ldr r2, _0800344C  @ =gUnknown_03000B4C
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #2
	ldr r3, _08003450  @ =gUnknown_08078214
	add r0, r0, r3
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldrb r0, [r4, #4]
	sub r0, r0, #28
	lsl r0, r0, #2
	ldr r1, _08003454  @ =gUnknown_08078216
	add r0, r0, r1
	mov r3, #0
	ldrsh r0, [r0, r3]
	ldr r1, [sp, #20]
	ldr r2, [r5, #4]
	bl 0x08031A64
_080033E4:
	ldr r0, [sp, #20]
	asr r0, r0, #3
	str r0, [sp, #20]
	ldr r0, [r5, #4]
	asr r0, r0, #3
	str r0, [r5, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl 0x080020A4
	mov r4, r10
	cmp r4, #0
	beq _08003406
	mov r0, #1
	neg r0, r0
	bl 0x080316D0
_08003406:
	mov r0, #1
	mov r10, r0
_0800340A:
	ldr r0, [sp, #12]
	add r0, r0, #8
	str r0, [sp, #12]
	cmp r0, r6
	bge _08003416
	b _080032AC
_08003416:
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
	cmp r0, r7
	bge _08003422
	b _0800329A
_08003422:
	mov r1, r10
	cmp r1, #0
	beq _08003434
	bl 0x08031714
	mov r0, #1
	neg r0, r0
	bl 0x080314D8
_08003434:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08003444:
	.4byte gUnknown_030009EC
_08003448:
	.4byte 0x030008E4
_0800344C:
	.4byte gUnknown_03000B4C
_08003450:
	.4byte gUnknown_08078214
_08003454:
	.4byte gUnknown_08078216
	THUMB_FUNC_END sub_08003274

	THUMB_FUNC_START sub_08003458
sub_08003458: @ 0x08003458
	push {r4-r7,lr}
	sub sp, sp, #20
	asr r6, r0, #8
	asr r1, r1, #8
	mov r12, r1
	mov r7, r12
	asr r4, r2, #8
	asr r5, r3, #8
	ldr r0, _080034CC  @ =0x030019AC
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #132
	ldr r0, [r0]
	ldr r0, [r0, #12]
	mov r1, #128
	lsl r1, r1, #17
	and r0, r0, r1
	cmp r0, #0
	beq _08003480
	b _080035A4
_08003480:
	mov r1, #50
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0800348A
	b _080035A4
_0800348A:
	mov r0, r12
	str r0, [sp, #4]
	cmp r12, r5
	blt _08003494
	b _080035A4
_08003494:
	str r6, [sp]
	cmp r6, r4
	blt _0800349C
	b _08003598
_0800349C:
	add r1, sp, #8
	add r2, sp, #16
	mov r0, sp
	bl 0x08002390
	add r2, r0, #0
	cmp r2, #0
	beq _0800358C
	ldrb r1, [r2, #4]
	add r0, r1, #0
	sub r0, r0, #68
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _080034D4
	cmp r1, #79
	bne _0800358C
	ldr r0, _080034D0  @ =0x03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #7
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_080034CC:
	.4byte 0x030019AC
_080034D0:
	.4byte 0x03001938
_080034D4:
	ldrb r0, [r2, #4]
	sub r0, r0, #68
	cmp r0, #7
	bhi _0800358C
	lsl r0, r0, #2
	ldr r1, _080034E8  @ =0x080034EC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_080034E8:
	.4byte 0x080034EC
	.4byte _0800350C
	.4byte _0800351C
	.4byte _0800352C
	.4byte _0800353C
	.4byte _0800354C
	.4byte _0800355C
	.4byte _0800356C
	.4byte _0800357C
_0800350C:
	ldr r0, _08003518  @ =0x03001938
	ldr r1, [r0]
	mov r2, #2
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003518:
	.4byte 0x03001938
_0800351C:
	ldr r0, _08003528  @ =0x03001938
	ldr r1, [r0]
	mov r2, #4
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003528:
	.4byte 0x03001938
_0800352C:
	ldr r0, _08003538  @ =0x03001938
	ldr r1, [r0]
	mov r2, #8
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003538:
	.4byte 0x03001938
_0800353C:
	ldr r0, _08003548  @ =0x03001938
	ldr r1, [r0]
	mov r2, #16
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003548:
	.4byte 0x03001938
_0800354C:
	ldr r0, _08003558  @ =0x03001938
	ldr r1, [r0]
	mov r2, #32
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003558:
	.4byte 0x03001938
_0800355C:
	ldr r0, _08003568  @ =0x03001938
	ldr r1, [r0]
	mov r2, #64
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003568:
	.4byte 0x03001938
_0800356C:
	ldr r0, _08003578  @ =0x03001938
	ldr r1, [r0]
	mov r2, #128
	orr r1, r1, r2
	b _080035AC
	.byte 0x00
	.byte 0x00
_08003578:
	.4byte 0x03001938
_0800357C:
	ldr r0, _08003588  @ =0x03001938
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #5
	orr r1, r1, r2
	b _080035AC
_08003588:
	.4byte 0x03001938
_0800358C:
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	cmp r0, r4
	bge _08003598
	b _0800349C
_08003598:
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, r5
	bge _080035A4
	b _08003494
_080035A4:
	ldr r0, _080035B8  @ =0x03001938
	ldr r1, [r0]
	ldr r2, _080035BC  @ =0xFFFFAF00
	and r1, r1, r2
_080035AC:
	str r1, [r0]
	add sp, sp, #20
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080035B8:
	.4byte 0x03001938
_080035BC:
	.4byte 0xFFFFAF00
	THUMB_FUNC_END sub_08003458

	THUMB_FUNC_START sub_080035C0
sub_080035C0: @ 0x080035C0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #72
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #16]
	ldr r0, _08003690  @ =0x03001720
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	lsl r0, r0, #16
	lsr r5, r0, #16
	ldr r0, _08003694  @ =0x0300170C
	ldrh r4, [r0]
	lsl r4, r4, #16
	asr r4, r4, #19
	lsl r4, r4, #16
	lsr r4, r4, #16
	mov r0, #1
	neg r0, r0
	bl 0x080316D0
	mov r1, #0
	lsl r4, r4, #16
	mov r0, #0
	str r0, [sp, #20]
	cmp r4, #0
	bgt _08003600
	b _080039DA
_08003600:
	lsl r0, r5, #16
	asr r0, r0, #16
	str r0, [sp, #48]
	str r4, [sp, #64]
_08003608:
	mov r2, #0
	lsl r1, r1, #16
	str r1, [sp, #60]
	ldr r1, [sp, #48]
	cmp r2, r1
	blt _08003616
	b _080039C8
_08003616:
	ldr r3, [sp, #60]
	asr r1, r3, #10
	lsl r2, r2, #16
	asr r0, r2, #16
	add r1, r1, r0
	ldr r4, _08003698  @ =gUnknown_0807820C
	ldr r7, [r4]
	lsl r1, r1, #1
	ldr r3, _0800369C  @ =0x0000600C
	add r0, r7, r3
	add r0, r0, r1
	ldrh r0, [r0]
	str r2, [sp, #56]
	cmp r0, #0
	bne _08003636
	b _080039B4
_08003636:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r3, r7, r0
	ldrh r6, [r3, #12]
	ldr r2, _080036A0  @ =gUnknown_08078210
	ldr r1, [r2]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r0, r1, r0
	ldr r5, [r0]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _0800365C
	b _080039B4
_0800365C:
	ldrb r0, [r5, #15]
	cmp r0, #0
	bne _08003664
	b _080039B4
_08003664:
	ldrb r0, [r3, #14]
	lsl r0, r0, #25
	lsr r2, r0, #25
	str r2, [sp]
	ldrb r3, [r3, #15]
	str r3, [sp, #4]
	ldrb r0, [r5, #10]
	cmp r0, #3
	beq _08003678
	b _0800377C
_08003678:
	ldrb r0, [r5, #15]
	sub r0, r0, #8
	ldr r7, [sp, #16]
	cmp r0, r7
	beq _0800371C
	mov r7, sp
	ldrb r0, [r5, #4]
	cmp r0, #24
	bne _080036A8
	ldr r0, _080036A4  @ =0x00004A08
	str r0, [sp, #24]
	b _080036C0
_08003690:
	.4byte 0x03001720
_08003694:
	.4byte 0x0300170C
_08003698:
	.4byte gUnknown_0807820C
_0800369C:
	.4byte 0x0000600C
_080036A0:
	.4byte gUnknown_08078210
_080036A4:
	.4byte 0x00004A08
_080036A8:
	cmp r0, #25
	bne _080036B8
	ldr r1, _080036B4  @ =0x00004A09
	str r1, [sp, #24]
	b _080036C0
	.byte 0x00
	.byte 0x00
_080036B4:
	.4byte 0x00004A09
_080036B8:
	cmp r0, #26
	bne _080036C0
	ldr r2, _08003710  @ =0x00004A0A
	str r2, [sp, #24]
_080036C0:
	mov r3, #16
	mov r8, r3
	add r0, r5, #0
	bl 0x080064A0
	add r3, r0, #0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r3, r0
	cmp r3, r6
	bcc _080036D8
	b _080039B4
_080036D8:
	ldr r4, _08003714  @ =gUnknown_0807820C
_080036DA:
	ldr r5, [sp, #24]
	mov r1, #6
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080036E6
	mov r5, r8
_080036E6:
	mov r2, #6
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #4]
	add r1, r1, r0
	mov r0, #4
	ldrsh r2, [r3, r0]
	ldr r0, [r7]
	add r2, r2, r0
	lsl r1, r1, #6
	add r1, r1, r2
	ldr r0, [r4]
	lsl r1, r1, #1
	ldr r2, _08003718  @ =0x0000400C
	add r0, r0, r2
	add r0, r0, r1
	strh r5, [r0]
	add r3, r3, #8
	cmp r3, r6
	bcc _080036DA
	b _080039B4
	.byte 0x00
	.byte 0x00
_08003710:
	.4byte 0x00004A0A
_08003714:
	.4byte gUnknown_0807820C
_08003718:
	.4byte 0x0000400C
_0800371C:
	mov r7, sp
	ldr r3, _08003770  @ =0x0000020B
	mov r9, r3
	mov r4, #0
	mov r8, r4
	add r0, r5, #0
	bl 0x080064A0
	add r3, r0, #0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r3, r0
	cmp r3, r6
	bcc _0800373A
	b _080039B4
_0800373A:
	ldr r4, _08003774  @ =gUnknown_0807820C
_0800373C:
	mov r5, r9
	mov r1, #6
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _08003748
	mov r5, r8
_08003748:
	mov r2, #6
	ldrsh r1, [r3, r2]
	ldr r0, [r7, #4]
	add r1, r1, r0
	mov r0, #4
	ldrsh r2, [r3, r0]
	ldr r0, [r7]
	add r2, r2, r0
	lsl r1, r1, #6
	add r1, r1, r2
	ldr r0, [r4]
	lsl r1, r1, #1
	ldr r2, _08003778  @ =0x0000400C
	add r0, r0, r2
	add r0, r0, r1
	strh r5, [r0]
	add r3, r3, #8
	cmp r3, r6
	bcc _0800373C
	b _080039B4
_08003770:
	.4byte 0x0000020B
_08003774:
	.4byte gUnknown_0807820C
_08003778:
	.4byte 0x0000400C
_0800377C:
	ldrb r0, [r5, #15]
	ldr r4, [sp, #16]
	cmp r0, r4
	bne _0800386C
	ldr r0, _08003858  @ =0x0000800C
	add r0, r0, r7
	mov r12, r0
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	mov r8, r2
	cmp r4, r6
	bcs _080037D8
	mov r10, r8
	mov r9, r3
_080037A0:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r9
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r10
	asr r1, r2, #5
	ldr r7, _0800385C  @ =0x030008E8
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r12
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _080037A0
_080037D8:
	mov r3, sp
	str r3, [sp, #28]
	ldrh r6, [r5]
	ldrh r4, [r5, #2]
	ldr r7, _08003860  @ =gUnknown_0807820C
	ldr r0, [r7]
	ldr r1, _08003864  @ =0x0000A00C
	add r1, r0, r1
	str r1, [sp, #32]
	ldr r2, _08003868  @ =0x03000E60
	ldrh r2, [r2]
	str r2, [sp, #36]
	ldr r0, [sp, #4]
	add r4, r4, r0
	str r4, [sp, #68]
	add r6, r6, r8
	cmp r0, r4
	bge _0800384C
_080037FC:
	ldr r4, [sp, #28]
	ldr r3, [r4]
	add r7, r0, #1
	mov r9, r7
	cmp r3, r6
	bge _08003844
	asr r1, r0, #5
	mov r12, r1
	ldr r2, _0800385C  @ =0x030008E8
	mov r10, r2
	mov r4, #31
	mov r8, r4
	and r4, r4, r0
_08003816:
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	mov r1, r12
	lsl r1, r1, r0
	add r1, r1, r4
	lsl r1, r1, #5
	asr r2, r3, #5
	lsl r2, r2, #10
	add r0, r3, #0
	mov r7, r8
	and r0, r0, r7
	add r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r0, [sp, #32]
	add r1, r1, r0
	mov r2, sp
	ldrh r2, [r2, #36]
	strh r2, [r1]
	add r3, r3, #1
	cmp r3, r6
	blt _08003816
_08003844:
	mov r0, r9
	ldr r3, [sp, #68]
	cmp r0, r3
	blt _080037FC
_0800384C:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
	b _080039B4
	.byte 0x00
	.byte 0x00
_08003858:
	.4byte 0x0000800C
_0800385C:
	.4byte 0x030008E8
_08003860:
	.4byte gUnknown_0807820C
_08003864:
	.4byte 0x0000A00C
_08003868:
	.4byte 0x03000E60
_0800386C:
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r5, [r0]
	ldr r4, _08003AA0  @ =0x0000A00C
	add r4, r4, r7
	mov r12, r4
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r0, r4, r0
	str r0, [sp, #68]
	mov r8, r2
	add r6, r6, #1
	str r6, [sp, #52]
	cmp r4, r0
	bcs _080038CC
	mov r6, #31
	mov r10, r8
	mov r9, r3
_08003896:
	mov r7, #6
	ldrsh r2, [r4, r7]
	add r2, r2, r9
	mov r0, #4
	ldrsh r3, [r4, r0]
	add r3, r3, r10
	asr r1, r2, #5
	ldr r7, _08003AA4  @ =0x030008E8
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
	add r1, r1, r12
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	ldr r0, [sp, #68]
	cmp r4, r0
	bcc _08003896
_080038CC:
	mov r1, sp
	str r1, [sp, #40]
	ldrh r6, [r5]
	ldrh r5, [r5, #2]
	ldr r2, _08003AA8  @ =gUnknown_0807820C
	ldr r0, [r2]
	ldr r3, _08003AAC  @ =0x0000800C
	add r3, r0, r3
	str r3, [sp, #44]
	ldr r4, _08003AB0  @ =0x03000E60
	ldrh r4, [r4]
	mov r12, r4
	ldr r0, [sp, #4]
	add r5, r5, r0
	add r6, r6, r8
	cmp r0, r5
	bge _0800393C
_080038EE:
	ldr r7, [sp, #40]
	ldr r3, [r7]
	add r1, r0, #1
	mov r9, r1
	cmp r3, r6
	bge _08003936
	asr r2, r0, #5
	str r2, [sp, #68]
	ldr r4, _08003AA4  @ =0x030008E8
	mov r10, r4
	mov r7, #31
	mov r8, r7
	mov r4, r8
	and r4, r4, r0
_0800390A:
	mov r1, r10
	ldrb r0, [r1]
	add r0, r0, #5
	ldr r1, [sp, #68]
	lsl r1, r1, r0
	add r1, r1, r4
	lsl r1, r1, #5
	asr r2, r3, #5
	lsl r2, r2, #10
	add r0, r3, #0
	mov r7, r8
	and r0, r0, r7
	add r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r0, [sp, #44]
	add r1, r1, r0
	mov r2, r12
	strh r2, [r1]
	add r3, r3, #1
	cmp r3, r6
	blt _0800390A
_08003936:
	mov r0, r9
	cmp r0, r5
	blt _080038EE
_0800393C:
	ldr r3, _08003AB4  @ =gUnknown_08078210
	ldr r0, [r3]
	ldr r4, [sp, #52]
	lsl r1, r4, #2
	mov r7, #132
	lsl r7, r7, #1
	add r0, r0, r7
	add r0, r0, r1
	ldr r5, [r0]
	ldr r1, _08003AA8  @ =gUnknown_0807820C
	ldr r0, [r1]
	ldr r2, _08003AAC  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _080039AC
	ldr r3, [sp]
	mov r9, r3
	ldr r7, _08003AA4  @ =0x030008E8
	mov r12, r7
	ldr r0, [sp, #4]
	mov r8, r0
_08003974:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r8
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r9
	asr r1, r2, #5
	mov r7, r12
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r10
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003974
_080039AC:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
_080039B4:
	ldr r3, [sp, #56]
	mov r4, #128
	lsl r4, r4, #9
	add r0, r3, r4
	lsr r2, r0, #16
	asr r0, r0, #16
	ldr r7, [sp, #48]
	cmp r0, r7
	bge _080039C8
	b _08003616
_080039C8:
	ldr r1, [sp, #60]
	mov r2, #128
	lsl r2, r2, #9
	add r0, r1, r2
	lsr r1, r0, #16
	ldr r3, [sp, #64]
	cmp r0, r3
	bge _080039DA
	b _08003608
_080039DA:
	mov r2, #0
	ldr r4, _08003AA8  @ =gUnknown_0807820C
	ldr r0, [r4]
	ldr r7, _08003AB8  @ =0x0000C00C
	add r0, r0, r7
	ldr r0, [r0]
	cmp r2, r0
	bcc _080039EC
	b _08003B3C
_080039EC:
	ldr r0, _08003AA8  @ =gUnknown_0807820C
	ldr r3, [r0]
	lsl r1, r2, #16
	asr r0, r1, #14
	add r2, r3, r0
	ldrh r6, [r2, #12]
	mov r12, r1
	cmp r6, #0
	bne _08003A00
	b _08003B22
_08003A00:
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r6
	cmp r0, #0
	beq _08003A0C
	b _08003B22
_08003A0C:
	sub r6, r6, #1
	ldr r1, _08003AB4  @ =gUnknown_08078210
	ldr r0, [r1]
	lsl r1, r6, #2
	mov r4, #132
	lsl r4, r4, #1
	add r0, r0, r4
	add r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	bne _08003A24
	b _08003B22
_08003A24:
	ldrb r0, [r5, #10]
	cmp r0, #3
	bne _08003B22
	ldrb r0, [r5, #15]
	cmp r0, #8
	bls _08003B22
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp, #8]
	ldrb r2, [r2, #15]
	add r1, sp, #8
	str r2, [r1, #4]
	ldrb r0, [r5, #15]
	sub r0, r0, #8
	ldr r7, [sp, #16]
	cmp r0, r7
	beq _08003ABC
	mov r9, r1
	ldr r0, _08003AAC  @ =0x0000800C
	add r0, r0, r3
	mov r8, r0
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08003B22
	mov r6, #31
	mov r10, r2
_08003A64:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r10
	mov r7, #4
	ldrsh r3, [r4, r7]
	mov r1, r9
	ldr r0, [r1]
	add r3, r3, r0
	asr r1, r2, #5
	ldr r7, _08003AA4  @ =0x030008E8
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
	bcc _08003A64
	b _08003B22
	.byte 0x00
	.byte 0x00
_08003AA0:
	.4byte 0x0000A00C
_08003AA4:
	.4byte 0x030008E8
_08003AA8:
	.4byte gUnknown_0807820C
_08003AAC:
	.4byte 0x0000800C
_08003AB0:
	.4byte 0x03000E60
_08003AB4:
	.4byte gUnknown_08078210
_08003AB8:
	.4byte 0x0000C00C
_08003ABC:
	ldr r0, _08003B60  @ =gUnknown_08078210
	ldr r1, [r0]
	add r0, r6, #2
	lsl r0, r0, #2
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r4, _08003B64  @ =0x0000800C
	add r4, r4, r3
	mov r10, r4
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08003B22
	mov r6, #31
	ldr r7, [sp, #8]
	mov r9, r7
	ldr r0, _08003B68  @ =0x030008E8
	mov r8, r0
	str r2, [sp, #68]
_08003AEC:
	mov r1, #6
	ldrsh r2, [r4, r1]
	ldr r3, [sp, #68]
	add r2, r2, r3
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r9
	asr r1, r2, #5
	mov r7, r8
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
	add r1, r1, r10
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08003AEC
_08003B22:
	mov r0, #128
	lsl r0, r0, #9
	add r0, r0, r12
	lsr r2, r0, #16
	asr r0, r0, #16
	ldr r3, _08003B6C  @ =gUnknown_0807820C
	ldr r1, [r3]
	ldr r4, _08003B70  @ =0x0000C00C
	add r1, r1, r4
	ldr r1, [r1]
	cmp r0, r1
	bcs _08003B3C
	b _080039EC
_08003B3C:
	bl 0x08031714
	mov r0, #1
	neg r0, r0
	bl 0x080314D8
	ldr r1, _08003B74  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r0, [sp, #20]
	add sp, sp, #72
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
_08003B60:
	.4byte gUnknown_08078210
_08003B64:
	.4byte 0x0000800C
_08003B68:
	.4byte 0x030008E8
_08003B6C:
	.4byte gUnknown_0807820C
_08003B70:
	.4byte 0x0000C00C
_08003B74:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_080035C0

	THUMB_FUNC_START sub_08003B78
sub_08003B78: @ 0x08003B78
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	ldr r0, _08003C28  @ =0x03001720
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _08003C2C  @ =0x0300170C
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	mov r3, #0
	lsl r1, r0, #16
	cmp r3, r0
	blt _08003BA8
	b _08003E90
_08003BA8:
	lsl r0, r2, #16
	asr r0, r0, #16
	str r0, [sp, #16]
	str r1, [sp, #28]
_08003BB0:
	mov r2, #0
	lsl r3, r3, #16
	str r3, [sp, #24]
	ldr r0, [sp, #16]
	cmp r2, r0
	blt _08003BBE
	b _08003E7A
_08003BBE:
	mov r1, sp
	str r1, [sp, #12]
_08003BC2:
	ldr r3, [sp, #24]
	asr r1, r3, #10
	lsl r2, r2, #16
	asr r0, r2, #16
	add r1, r1, r0
	ldr r0, _08003C30  @ =gUnknown_0807820C
	ldr r3, [r0]
	lsl r1, r1, #1
	ldr r4, _08003C34  @ =0x0000600C
	add r0, r3, r4
	add r0, r0, r1
	ldrh r0, [r0]
	str r2, [sp, #20]
	cmp r0, #0
	bne _08003BE2
	b _08003E66
_08003BE2:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r3, r0
	ldrh r4, [r2, #12]
	ldr r0, _08003C38  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r4, #1
	lsl r0, r0, #2
	mov r7, #132
	lsl r7, r7, #1
	add r1, r1, r7
	add r5, r1, r0
	ldr r3, [r5]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r4
	cmp r0, #0
	beq _08003C08
	b _08003E66
_08003C08:
	ldrb r0, [r3, #4]
	cmp r0, #10
	bne _08003CB4
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r2, [sp, #12]
	str r0, [r2, #4]
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _08003C3C
	ldr r5, [r5]
	b _08003C44
	.byte 0x00
	.byte 0x00
_08003C28:
	.4byte 0x03001720
_08003C2C:
	.4byte 0x0300170C
_08003C30:
	.4byte gUnknown_0807820C
_08003C34:
	.4byte 0x0000600C
_08003C38:
	.4byte gUnknown_08078210
_08003C3C:
	add r0, r4, #3
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r5, [r0]
_08003C44:
	ldr r4, _08003CA8  @ =gUnknown_0807820C
	ldr r0, [r4]
	ldr r7, _08003CAC  @ =0x0000800C
	add r7, r7, r0
	mov r9, r7
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcc _08003C60
	b _08003DC6
_08003C60:
	ldr r0, [sp]
	mov r8, r0
	ldr r1, _08003CB0  @ =0x030008E8
	mov r10, r1
	ldr r2, [sp, #4]
	mov r12, r2
_08003C6C:
	mov r3, #6
	ldrsh r2, [r4, r3]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003C6C
	b _08003DC6
	.byte 0x00
	.byte 0x00
_08003CA8:
	.4byte gUnknown_0807820C
_08003CAC:
	.4byte 0x0000800C
_08003CB0:
	.4byte 0x030008E8
_08003CB4:
	cmp r0, #11
	bne _08003D44
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r3, [sp, #12]
	str r0, [r3, #4]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08003CD0
	ldr r5, [r5]
	b _08003CD8
_08003CD0:
	sub r0, r4, #5
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r5, [r0]
_08003CD8:
	ldr r1, _08003D38  @ =gUnknown_0807820C
	ldr r0, [r1]
	ldr r2, _08003D3C  @ =0x0000800C
	add r2, r2, r0
	mov r9, r2
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _08003DC6
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _08003D40  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08003CFE:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003CFE
	b _08003DC6
_08003D38:
	.4byte gUnknown_0807820C
_08003D3C:
	.4byte 0x0000800C
_08003D40:
	.4byte 0x030008E8
_08003D44:
	cmp r0, #57
	bne _08003DDC
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r3, [sp, #12]
	str r0, [r3, #4]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08003D60
	sub r0, r4, #3
	b _08003D62
_08003D60:
	sub r0, r4, #7
_08003D62:
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r5, [r0]
	ldr r1, _08003DD0  @ =gUnknown_0807820C
	ldr r0, [r1]
	ldr r2, _08003DD4  @ =0x0000800C
	add r2, r2, r0
	mov r9, r2
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _08003DC6
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _08003DD8  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08003D8E:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003D8E
_08003DC6:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
	b _08003E66
_08003DD0:
	.4byte gUnknown_0807820C
_08003DD4:
	.4byte 0x0000800C
_08003DD8:
	.4byte 0x030008E8
_08003DDC:
	cmp r0, #58
	bne _08003E66
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r3, [sp, #12]
	str r0, [r3, #4]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _08003DF8
	sub r0, r4, #3
	b _08003DFA
_08003DF8:
	add r0, r4, #1
_08003DFA:
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r5, [r0]
	ldr r1, _08003EAC  @ =gUnknown_0807820C
	ldr r0, [r1]
	ldr r2, _08003EB0  @ =0x0000800C
	add r2, r2, r0
	mov r9, r2
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _08003E5E
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _08003EB4  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08003E26:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003E26
_08003E5E:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
_08003E66:
	ldr r3, [sp, #20]
	mov r4, #128
	lsl r4, r4, #9
	add r0, r3, r4
	lsr r2, r0, #16
	asr r0, r0, #16
	ldr r7, [sp, #16]
	cmp r0, r7
	bge _08003E7A
	b _08003BC2
_08003E7A:
	ldr r0, [sp, #24]
	mov r2, #128
	lsl r2, r2, #9
	add r1, r0, r2
	lsr r3, r1, #16
	asr r1, r1, #16
	ldr r4, [sp, #28]
	asr r0, r4, #16
	cmp r1, r0
	bge _08003E90
	b _08003BB0
_08003E90:
	ldr r1, _08003EB8  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	bl 0x0803E764
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08003EAC:
	.4byte gUnknown_0807820C
_08003EB0:
	.4byte 0x0000800C
_08003EB4:
	.4byte 0x030008E8
_08003EB8:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_08003B78

	THUMB_FUNC_START sub_08003EBC
sub_08003EBC: @ 0x08003EBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #8]
	ldr r0, _08003F70  @ =0x03001720
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	lsl r0, r0, #16
	lsr r2, r0, #16
	ldr r0, _08003F74  @ =0x0300170C
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #19
	mov r3, #0
	lsl r1, r0, #16
	cmp r3, r0
	blt _08003EEC
	b _080040B0
_08003EEC:
	lsl r0, r2, #16
	asr r0, r0, #16
	str r0, [sp, #16]
	str r1, [sp, #28]
_08003EF4:
	mov r2, #0
	lsl r3, r3, #16
	str r3, [sp, #24]
	ldr r0, [sp, #16]
	cmp r2, r0
	blt _08003F02
	b _0800409A
_08003F02:
	mov r1, sp
	str r1, [sp, #12]
_08003F06:
	ldr r3, [sp, #24]
	asr r1, r3, #10
	lsl r2, r2, #16
	asr r0, r2, #16
	add r1, r1, r0
	ldr r0, _08003F78  @ =gUnknown_0807820C
	ldr r3, [r0]
	lsl r1, r1, #1
	ldr r4, _08003F7C  @ =0x0000600C
	add r0, r3, r4
	add r0, r0, r1
	ldrh r0, [r0]
	str r2, [sp, #20]
	cmp r0, #0
	bne _08003F26
	b _08004086
_08003F26:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r3, r0
	ldrh r4, [r2, #12]
	ldr r0, _08003F80  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r4, #1
	lsl r0, r0, #2
	mov r7, #132
	lsl r7, r7, #1
	add r5, r1, r7
	add r1, r5, r0
	ldr r3, [r1]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r4
	cmp r0, #0
	beq _08003F4C
	b _08004086
_08003F4C:
	ldrb r0, [r3, #4]
	cmp r0, #57
	bne _08003FFC
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r2, [sp, #12]
	str r0, [r2, #4]
	ldr r3, [sp, #8]
	cmp r3, #0
	beq _08003F84
	sub r0, r4, #5
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r5, [r0]
	b _08003F86
_08003F70:
	.4byte 0x03001720
_08003F74:
	.4byte 0x0300170C
_08003F78:
	.4byte gUnknown_0807820C
_08003F7C:
	.4byte 0x0000600C
_08003F80:
	.4byte gUnknown_08078210
_08003F84:
	ldr r5, [r1]
_08003F86:
	ldr r4, _08003FF0  @ =gUnknown_0807820C
	ldr r0, [r4]
	ldr r7, _08003FF4  @ =0x0000800C
	add r7, r7, r0
	mov r9, r7
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _08003FE4
	ldr r0, [sp]
	mov r8, r0
	ldr r1, _08003FF8  @ =0x030008E8
	mov r10, r1
	ldr r2, [sp, #4]
	mov r12, r2
_08003FAC:
	mov r3, #6
	ldrsh r2, [r4, r3]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08003FAC
_08003FE4:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
	b _08004086
	.byte 0x00
	.byte 0x00
_08003FF0:
	.4byte gUnknown_0807820C
_08003FF4:
	.4byte 0x0000800C
_08003FF8:
	.4byte 0x030008E8
_08003FFC:
	cmp r0, #58
	bne _08004086
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp]
	ldrb r0, [r2, #15]
	ldr r3, [sp, #12]
	str r0, [r3, #4]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq _0800401E
	add r0, r4, #3
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r5, [r0]
	b _08004020
_0800401E:
	ldr r5, [r1]
_08004020:
	ldr r1, _080040C8  @ =gUnknown_0807820C
	ldr r0, [r1]
	ldr r2, _080040CC  @ =0x0000800C
	add r2, r2, r0
	mov r9, r2
	ldrh r0, [r5, #28]
	add r0, r0, #32
	add r4, r5, r0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	cmp r4, r6
	bcs _0800407E
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _080040D0  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08004046:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, #31
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, #31
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08004046
_0800407E:
	mov r0, sp
	add r1, r5, #0
	bl 0x08001BA4
_08004086:
	ldr r3, [sp, #20]
	mov r4, #128
	lsl r4, r4, #9
	add r0, r3, r4
	lsr r2, r0, #16
	asr r0, r0, #16
	ldr r7, [sp, #16]
	cmp r0, r7
	bge _0800409A
	b _08003F06
_0800409A:
	ldr r0, [sp, #24]
	mov r2, #128
	lsl r2, r2, #9
	add r1, r0, r2
	lsr r3, r1, #16
	asr r1, r1, #16
	ldr r4, [sp, #28]
	asr r0, r4, #16
	cmp r1, r0
	bge _080040B0
	b _08003EF4
_080040B0:
	ldr r1, _080040D4  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080040C8:
	.4byte gUnknown_0807820C
_080040CC:
	.4byte 0x0000800C
_080040D0:
	.4byte 0x030008E8
_080040D4:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_08003EBC

	THUMB_FUNC_START sub_080040D8
sub_080040D8: @ 0x080040D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _080041A4  @ =0x03000924
	ldr r1, [r5]
	ldr r2, _080041A8  @ =0x0100021C
	mov r0, sp
	bl 0x08073E3C
	mov r4, #0
	ldr r1, _080041AC  @ =gUnknown_08078210
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r4, r0
	bcs _08004142
	add r6, r5, #0
	add r5, r1, #0
_08004102:
	ldr r0, [r1]
	lsl r1, r4, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08004136
	ldrb r0, [r1, #9]
	sub r0, r0, #1
	cmp r0, #29
	bls _08004120
	mov r0, #0
_08004120:
	ldrb r2, [r1, #8]
	ldr r3, [r6]
	lsl r1, r0, #2
	lsl r0, r2, #4
	sub r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r3
	add r1, r1, r0
	sub r1, r1, #120
	add r0, r4, #1
	str r0, [r1]
_08004136:
	add r4, r4, #1
	add r1, r5, #0
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r4, r0
	bcc _08004102
_08004142:
	bl 0x08038600
	mov r4, #0
	ldr r0, _080041B0  @ =0x030008DC
	mov r8, r0
	ldr r7, _080041B4  @ =0x03000940
_0800414E:
	mov r2, #0
	ldr r3, _080041A4  @ =0x03000924
	ldr r0, [r3]
	lsl r1, r4, #4
	sub r1, r1, r4
	lsl r1, r1, #3
	add r0, r1, r0
	ldr r0, [r0]
	lsl r5, r4, #2
	add r4, r4, #1
	cmp r0, #0
	beq _0800417E
	add r6, r3, #0
	add r3, r1, #0
_0800416A:
	add r2, r2, #1
	cmp r2, #29
	bgt _0800417E
	ldr r0, [r6]
	lsl r1, r2, #2
	add r0, r3, r0
	add r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _0800416A
_0800417E:
	add r0, r5, r7
	str r2, [r0]
	cmp r4, #8
	ble _0800414E
	mov r0, #244
	bl 0x08034854
	mov r1, r8
	str r0, [r1]
	add r0, r0, #240
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080041A4:
	.4byte 0x03000924
_080041A8:
	.4byte 0x0100021C
_080041AC:
	.4byte gUnknown_08078210
_080041B0:
	.4byte 0x030008DC
_080041B4:
	.4byte 0x03000940
	THUMB_FUNC_END sub_080040D8

	THUMB_FUNC_START sub_080041B8
sub_080041B8: @ 0x080041B8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r1, #0
	str r1, [sp, #12]
	ldr r1, [r0, #112]
	add r0, r0, r1
	ldr r4, _080043D0  @ =gUnknown_08078210
	ldr r1, [r4]
	mov r2, #0
	bl 0x08034790
	mov r3, #0
	ldr r0, [r4]
	ldr r0, [r0, #4]
	mov r7, sp
	add r7, r7, #2
	add r2, sp, #4
	mov r9, r2
	mov r5, #6
	add r5, sp, r5
	mov r10, r5
	mov r1, sp
	add r1, r1, #8
	str r1, [sp, #16]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #20]
	ldr r5, [sp, #12]
	cmp r5, r0
	bcs _08004218
_080041FC:
	ldr r2, [r4]
	lsl r0, r3, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r2, r5
	add r1, r1, r0
	ldr r0, [r1]
	add r0, r0, r5
	add r0, r2, r0
	str r0, [r1]
	add r3, r3, #1
	ldr r0, [r2, #4]
	cmp r3, r0
	bcc _080041FC
_08004218:
	ldr r1, _080043D4  @ =0x030008C8
	ldr r0, _080043D8  @ =0x03001720
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08004226
	add r0, r0, #15
_08004226:
	asr r0, r0, #4
	str r0, [r1]
	ldr r0, _080043DC  @ =0x0300170C
	mov r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _08004236
	add r0, r0, #15
_08004236:
	asr r0, r0, #4
	str r0, [r1, #4]
	ldr r0, _080043E0  @ =0x0300092C
	mov r4, #0
	str r4, [r0]
	ldr r0, _080043E4  @ =0x03000928
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080043E8  @ =0x03000900
	ldr r5, _080043EC  @ =0x01000012
	mov r8, r5
	mov r2, r8
	bl 0x08073E3C
	ldr r1, _080043F0  @ =0x030008EC
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	ldr r0, _080043F4  @ =0x030008D0
	str r4, [r0]
	strh r4, [r7]
	ldr r5, _080043F8  @ =gUnknown_0807820C
	ldr r1, [r5]
	ldr r0, _080043FC  @ =0x0000600C
	add r1, r1, r0
	ldr r6, _08004400  @ =0x01001000
	add r0, r7, #0
	add r2, r6, #0
	bl 0x08073E3C
	mov r1, r9
	strh r4, [r1]
	ldr r1, [r5]
	ldr r2, _08004404  @ =0x0000800C
	add r1, r1, r2
	mov r0, r9
	add r2, r6, #0
	bl 0x08073E3C
	mov r0, r10
	strh r4, [r0]
	ldr r1, [r5]
	ldr r2, _08004408  @ =0x0000A00C
	add r1, r1, r2
	add r2, r6, #0
	bl 0x08073E3C
	ldr r1, _0800440C  @ =0x03000000
	ldr r0, _08004410  @ =gUnknown_080B51BC
	ldrb r0, [r0]
	str r0, [r1]
	ldr r5, [sp, #16]
	strh r4, [r5]
	ldr r1, _08004414  @ =0x03000940
	ldr r0, [sp, #16]
	mov r2, r8
	bl 0x08073E3C
	ldr r0, [sp, #20]
	strh r4, [r0]
	ldr r0, _08004418  @ =0x03000924
	ldr r1, [r0]
	ldr r2, _0800441C  @ =0x01000002
	ldr r0, [sp, #20]
	bl 0x08073E3C
	mov r2, #0
	ldr r1, _080043D0  @ =gUnknown_08078210
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r2, r0
	bcs _08004386
	add r6, r1, #0
	mov r7, #132
	lsl r7, r7, #1
_080042CE:
	ldr r0, [r6]
	lsl r1, r2, #2
	add r3, r0, r7
	add r1, r3, r1
	ldr r4, [r1]
	ldrb r0, [r4, #8]
	add r5, r2, #1
	cmp r0, #0
	beq _08004328
	ldrb r0, [r4, #9]
	sub r0, r0, #1
	ldrb r0, [r4, #4]
	cmp r0, #35
	bne _080042F8
	lsl r0, r5, #2
	add r0, r3, r0
	ldr r1, [r0]
	sub r1, r1, r4
	add r0, r4, #0
	bl 0x0802BB20
_080042F8:
	ldrb r0, [r4, #4]
	cmp r0, #43
	bne _08004310
	ldr r0, [r6]
	lsl r1, r5, #2
	add r0, r0, r7
	add r0, r0, r1
	ldr r1, [r0]
	sub r1, r1, r4
	add r0, r4, #0
	bl 0x0802D0BC
_08004310:
	ldrb r0, [r4, #4]
	cmp r0, #37
	bne _08004328
	ldr r0, [r6]
	lsl r1, r5, #2
	add r0, r0, r7
	add r0, r0, r1
	ldr r1, [r0]
	sub r1, r1, r4
	add r0, r4, #0
	bl 0x08031070
_08004328:
	ldrb r1, [r4, #4]
	add r0, r1, #0
	sub r0, r0, #66
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0800433A
	cmp r1, #76
	bne _08004350
_0800433A:
	ldr r0, [r6]
	lsl r1, r5, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	sub r1, r1, r4
	add r0, r4, #0
	bl 0x080310D4
_08004350:
	ldrb r0, [r4, #4]
	sub r0, r0, #61
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #4
	bhi _0800437C
	ldr r0, [sp, #12]
	cmp r0, #0
	bne _0800437C
	ldr r0, [r6]
	lsl r1, r5, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	sub r1, r1, r4
	add r0, r4, #0
	bl 0x08071408
	mov r4, #1
	str r4, [sp, #12]
_0800437C:
	add r2, r5, #0
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r2, r0
	bcc _080042CE
_08004386:
	ldr r0, _080043F8  @ =gUnknown_0807820C
	ldr r2, [r0]
	ldr r5, _08004420  @ =0x0000C00C
	add r2, r2, r5
	ldr r3, _080043D8  @ =0x03001720
	mov r0, #0
	ldrsh r1, [r3, r0]
	add r1, r1, #255
	asr r1, r1, #8
	lsl r1, r1, #5
	ldr r0, _080043DC  @ =0x0300170C
	mov r4, #0
	ldrsh r0, [r0, r4]
	add r0, r0, #255
	asr r0, r0, #8
	lsl r0, r0, #5
	mul r0, r1, r0
	str r0, [r2]
	ldr r2, _08004424  @ =0x030008E8
	mov r5, #0
	ldrsh r0, [r3, r5]
	add r0, r0, #255
	asr r1, r0, #8
	strb r1, [r2]
	lsl r0, r1, #24
	cmp r0, #0
	beq _080043C0
	sub r0, r1, #1
	strb r0, [r2]
_080043C0:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080043D0:
	.4byte gUnknown_08078210
_080043D4:
	.4byte 0x030008C8
_080043D8:
	.4byte 0x03001720
_080043DC:
	.4byte 0x0300170C
_080043E0:
	.4byte 0x0300092C
_080043E4:
	.4byte 0x03000928
_080043E8:
	.4byte 0x03000900
_080043EC:
	.4byte 0x01000012
_080043F0:
	.4byte 0x030008EC
_080043F4:
	.4byte 0x030008D0
_080043F8:
	.4byte gUnknown_0807820C
_080043FC:
	.4byte 0x0000600C
_08004400:
	.4byte 0x01001000
_08004404:
	.4byte 0x0000800C
_08004408:
	.4byte 0x0000A00C
_0800440C:
	.4byte 0x03000000
_08004410:
	.4byte gUnknown_080B51BC
_08004414:
	.4byte 0x03000940
_08004418:
	.4byte 0x03000924
_0800441C:
	.4byte 0x01000002
_08004420:
	.4byte 0x0000C00C
_08004424:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_080041B8

	THUMB_FUNC_START sub_08004428
sub_08004428: @ 0x08004428
	push {r4,r5,lr}
	sub sp, sp, #4
	add r4, r0, #0
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08004458  @ =gUnknown_0807820C
	ldr r1, [r5]
	ldr r2, _0800445C  @ =0x01002006
	mov r0, sp
	bl 0x08073E3C
	cmp r4, #0
	beq _080044AC
	ldr r0, _08004460  @ =0x03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08004464
	ldr r1, [r5]
	add r0, r4, #0
	b _0800446E
	.byte 0x00
	.byte 0x00
_08004458:
	.4byte gUnknown_0807820C
_0800445C:
	.4byte 0x01002006
_08004460:
	.4byte 0x03000BB4
_08004464:
	ldr r2, [r4]
	cmp r2, #0
	bge _08004476
	add r0, r4, #4
	ldr r1, [r5]
_0800446E:
	mov r2, #0
	bl 0x08034790
	b _08004482
_08004476:
	add r0, r4, #4
	ldr r1, [r5]
	lsl r2, r2, #10
	lsr r2, r2, #11
	bl 0x08073E3C
_08004482:
	ldr r0, _080044B4  @ =gUnknown_0807820C
	ldr r2, [r0]
	mov r1, #10
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080044AC
	ldr r1, _080044B8  @ =0x03001720
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _080044BC  @ =0x0300170C
	ldrh r0, [r2, #6]
	strh r0, [r1]
	ldr r1, _080044C0  @ =0x030012A4
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _080044C4  @ =0x030012EC
	ldrh r0, [r2, #2]
	strh r0, [r1]
	ldr r1, _080044C8  @ =0x030012E4
	ldrh r0, [r2, #8]
	strh r0, [r1]
_080044AC:
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080044B4:
	.4byte gUnknown_0807820C
_080044B8:
	.4byte 0x03001720
_080044BC:
	.4byte 0x0300170C
_080044C0:
	.4byte 0x030012A4
_080044C4:
	.4byte 0x030012EC
_080044C8:
	.4byte 0x030012E4
	THUMB_FUNC_END sub_08004428

	THUMB_FUNC_START sub_080044CC
sub_080044CC: @ 0x080044CC
	push {r4-r7,lr}
	sub sp, sp, #36
	ldr r4, [r0, #100]
	mov r2, #4
	ldrsh r1, [r4, r2]
	ldr r3, [r0, #32]
	add r1, r3, r1
	mov r7, #48
	ldrsh r6, [r0, r7]
	add r1, r1, r6
	asr r1, r1, #8
	str r1, [sp, #20]
	mov r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [r0, #36]
	add r1, r2, r1
	mov r7, #50
	ldrsh r5, [r0, r7]
	add r1, r1, r5
	asr r1, r1, #8
	str r1, [sp, #24]
	mov r7, #6
	ldrsh r0, [r4, r7]
	add r3, r3, r0
	add r3, r3, r6
	asr r3, r3, #8
	str r3, [sp, #28]
	mov r3, #2
	ldrsh r0, [r4, r3]
	add r2, r2, r0
	add r2, r2, r5
	asr r2, r2, #8
	str r2, [sp, #32]
	str r1, [sp, #4]
	add r7, r2, #0
	cmp r1, r7
	bge _08004562
	mov r4, sp
_08004518:
	ldr r0, [sp, #20]
	str r0, [sp]
	add r1, r0, #0
	ldr r2, [sp, #28]
	cmp r1, r2
	bge _08004556
_08004524:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #16
	bl 0x08002390
	ldrb r1, [r0, #4]
	add r0, r1, #0
	sub r0, r0, #21
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08004546
	add r0, r1, #0
	cmp r0, #34
	beq _08004546
	cmp r0, #39
	bne _0800454A
_08004546:
	mov r0, #1
	b _08004564
_0800454A:
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	ldr r3, [sp, #28]
	cmp r0, r3
	blt _08004524
_08004556:
	ldr r0, [r4, #4]
	add r0, r0, #8
	str r0, [r4, #4]
	ldr r7, [sp, #32]
	cmp r0, r7
	blt _08004518
_08004562:
	mov r0, #0
_08004564:
	add sp, sp, #36
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080044CC

	THUMB_FUNC_START sub_0800456C
sub_0800456C: @ 0x0800456C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #36
	ldr r6, [r0, #100]
	mov r4, #4
	ldrsh r3, [r6, r4]
	ldr r5, [r0, #32]
	add r3, r5, r3
	mov r4, #48
	ldrsh r7, [r0, r4]
	mov r9, r7
	add r3, r3, r9
	lsl r1, r1, #16
	asr r1, r1, #16
	add r3, r3, r1
	asr r3, r3, #8
	str r3, [sp, #20]
	mov r7, #0
	ldrsh r3, [r6, r7]
	ldr r4, [r0, #36]
	add r3, r3, r4
	mov r12, r3
	mov r7, #50
	ldrsh r3, [r0, r7]
	mov r8, r3
	mov r3, r12
	add r3, r3, r8
	lsl r2, r2, #16
	asr r2, r2, #16
	add r3, r3, r2
	asr r3, r3, #8
	str r3, [sp, #24]
	mov r7, #6
	ldrsh r0, [r6, r7]
	add r5, r5, r0
	add r5, r5, r9
	add r5, r5, r1
	asr r5, r5, #8
	str r5, [sp, #28]
	mov r1, #2
	ldrsh r0, [r6, r1]
	add r4, r4, r0
	add r4, r4, r8
	add r4, r4, r2
	asr r4, r4, #8
	str r4, [sp, #32]
	str r3, [sp, #4]
	cmp r3, r4
	bge _0800461E
	mov r4, sp
_080045D4:
	ldr r7, [sp, #20]
	str r7, [sp]
	add r0, r7, #0
	ldr r1, [sp, #28]
	cmp r0, r1
	bge _08004612
_080045E0:
	mov r0, sp
	add r1, sp, #8
	add r2, sp, #16
	bl 0x08002390
	ldrb r1, [r0, #4]
	add r0, r1, #0
	sub r0, r0, #21
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08004602
	add r0, r1, #0
	cmp r0, #34
	beq _08004602
	cmp r0, #39
	bne _08004606
_08004602:
	mov r0, #1
	b _08004620
_08004606:
	ldr r0, [sp]
	add r0, r0, #8
	str r0, [sp]
	ldr r3, [sp, #28]
	cmp r0, r3
	blt _080045E0
_08004612:
	ldr r0, [r4, #4]
	add r0, r0, #8
	str r0, [r4, #4]
	ldr r7, [sp, #32]
	cmp r0, r7
	blt _080045D4
_0800461E:
	mov r0, #0
_08004620:
	add sp, sp, #36
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0800456C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08004630
sub_08004630: @ 0x08004630
	bx lr
	THUMB_FUNC_END sub_08004630

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08004634
sub_08004634: @ 0x08004634
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	str r0, [sp, #24]
	mov r0, #0
	str r0, [sp, #28]
	ldr r0, _08004720  @ =0x030008D8
	ldr r1, [sp, #28]
	str r1, [r0]
	ldr r0, _08004724  @ =0x03000004
	strb r1, [r0]
	ldr r1, _08004728  @ =0x030008D4
	mov r0, #1
	strb r0, [r1]
	ldr r1, _0800472C  @ =0x030008C4
	mov r0, #30
	strb r0, [r1]
	ldr r0, _08004730  @ =0x030019E8
	mov r3, sp
	ldrb r3, [r3, #28]
	strb r3, [r0]
	ldr r0, _08004734  @ =0x030019B0
	mov r4, sp
	ldrb r4, [r4, #28]
	strb r4, [r0]
	ldr r0, _08004738  @ =0x03001994
	mov r5, sp
	ldrb r5, [r5, #28]
	strb r5, [r0]
	ldr r0, _0800473C  @ =0x0300199C
	mov r6, sp
	ldrb r6, [r6, #28]
	strb r6, [r0]
	add r1, sp, #8
	ldr r6, _08004740  @ =0x03000E60
	ldrh r0, [r6]
	strh r0, [r1]
	ldr r4, _08004744  @ =gUnknown_0807820C
	ldr r1, [r4]
	ldr r7, _08004748  @ =0x0000800C
	add r1, r1, r7
	ldr r5, _0800474C  @ =0x01001000
	add r0, sp, #8
	add r2, r5, #0
	bl 0x08073E3C
	mov r0, sp
	add r0, r0, #10
	ldrh r1, [r6]
	strh r1, [r0]
	ldr r1, [r4]
	ldr r2, _08004750  @ =0x0000A00C
	add r1, r1, r2
	add r2, r5, #0
	bl 0x08073E3C
	add r0, sp, #12
	mov r3, sp
	ldrh r3, [r3, #28]
	strh r3, [r0]
	ldr r1, [r4]
	ldr r6, _08004754  @ =0x0000400C
	add r1, r1, r6
	add r2, r5, #0
	bl 0x08073E3C
	mov r0, sp
	add r0, r0, #14
	mov r7, sp
	ldrh r7, [r7, #28]
	strh r7, [r0]
	ldr r1, [r4]
	ldr r2, _08004758  @ =0x0000600C
	add r1, r1, r2
	add r2, r5, #0
	bl 0x08073E3C
	mov r3, #0
	mov r10, r3
	mov r4, sp
	add r4, r4, #16
	str r4, [sp, #32]
_080046DE:
	ldr r0, _08004744  @ =gUnknown_0807820C
	ldr r1, [r0]
	mov r5, r10
	lsl r0, r5, #2
	add r1, r1, r0
	ldrh r2, [r1, #12]
	mov r6, #1
	add r6, r6, r10
	mov r9, r6
	cmp r2, #0
	bne _080046F6
	b _0800496C
_080046F6:
	ldrb r0, [r1, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp, #16]
	ldrb r0, [r1, #15]
	ldr r7, [sp, #32]
	str r0, [r7, #4]
	ldrb r0, [r1, #14]
	lsr r0, r0, #7
	add r7, sp, #16
	cmp r0, #0
	beq _08004760
	ldr r1, _0800475C  @ =gUnknown_03001A1C
	ldr r0, [r1]
	mov r1, #128
	lsl r1, r1, #20
	orr r0, r0, r1
	ldr r3, _0800475C  @ =gUnknown_03001A1C
	str r0, [r3]
	b _0800476A
	.byte 0x00
	.byte 0x00
_08004720:
	.4byte 0x030008D8
_08004724:
	.4byte 0x03000004
_08004728:
	.4byte 0x030008D4
_0800472C:
	.4byte 0x030008C4
_08004730:
	.4byte 0x030019E8
_08004734:
	.4byte 0x030019B0
_08004738:
	.4byte 0x03001994
_0800473C:
	.4byte 0x0300199C
_08004740:
	.4byte 0x03000E60
_08004744:
	.4byte gUnknown_0807820C
_08004748:
	.4byte 0x0000800C
_0800474C:
	.4byte 0x01001000
_08004750:
	.4byte 0x0000A00C
_08004754:
	.4byte 0x0000400C
_08004758:
	.4byte 0x0000600C
_0800475C:
	.4byte gUnknown_03001A1C
_08004760:
	ldr r4, _080047C0  @ =gUnknown_03001A1C
	ldr r0, [r4]
	ldr r1, _080047C4  @ =0xF7FFFFFF
	and r0, r0, r1
	str r0, [r4]
_0800476A:
	mov r5, #128
	lsl r5, r5, #8
	add r1, r5, #0
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800477A
	b _0800488C
_0800477A:
	ldr r6, _080047C8  @ =0x00007FFF
	add r0, r6, #0
	and r2, r2, r0
	sub r1, r2, #1
	lsl r1, r1, #16
	mov r0, #254
	lsl r0, r0, #15
	and r0, r0, r1
	lsr r4, r0, #16
	lsr r1, r1, #23
	mov r0, #255
	and r1, r1, r0
	ldr r0, [sp, #24]
	cmp r0, #0
	beq _080047FA
	cmp r1, #0
	beq _080047CC
	ldrh r3, [r7]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r2, [sp, #32]
	ldrh r0, [r2, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #255
	mov r2, #1
	neg r2, r2
	bl 0x08038DF4
	lsl r0, r0, #24
	lsr r4, r0, #24
	b _08004818
_080047C0:
	.4byte gUnknown_03001A1C
_080047C4:
	.4byte 0xF7FFFFFF
_080047C8:
	.4byte 0x00007FFF
_080047CC:
	ldr r3, [sp, #28]
	cmp r3, #0
	bne _080047DA
	mov r4, #0
	mov r5, #1
	str r5, [sp, #28]
	b _080047DC
_080047DA:
	mov r4, #20
_080047DC:
	add r0, r4, #0
	ldrh r3, [r7]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r6, [sp, #32]
	ldrh r2, [r6, #4]
	lsl r2, r2, #19
	lsr r2, r2, #16
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	sub r2, r2, #1
	bl 0x08038DF4
	b _08004818
_080047FA:
	add r0, r4, #0
	ldrh r3, [r7]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r5, [sp, #32]
	ldrh r2, [r5, #4]
	lsl r2, r2, #19
	lsr r2, r2, #16
	str r2, [sp]
	ldr r6, [sp, #24]
	str r6, [sp, #4]
	mov r2, #1
	neg r2, r2
	bl 0x08038DF4
_08004818:
	ldr r0, [sp, #16]
	mov r8, r0
	ldr r6, [r7, #4]
	add r0, r4, #0
	bl 0x08040D94
	add r5, r0, #0
	add r0, r4, #0
	bl 0x08040DCC
	mov r3, r8
	mov r7, r10
	add r7, r7, #1
	add r5, r5, r3
	add r0, r0, r6
	mov r12, r0
	mov r9, r7
	cmp r6, r12
	bge _08004870
	ldr r1, _0800487C  @ =gUnknown_0807820C
	mov r10, r1
_08004842:
	lsl r0, r6, #6
	add r2, r0, r3
	add r4, r3, #0
	add r6, r6, #1
	str r6, [sp, #36]
	cmp r4, r5
	bge _0800486A
	mov r8, r10
	sub r4, r5, r4
_08004854:
	mov r6, r8
	ldr r0, [r6]
	lsl r1, r2, #1
	ldr r6, _08004880  @ =0x0000600C
	add r0, r0, r6
	add r0, r0, r1
	strh r7, [r0]
	sub r4, r4, #1
	add r2, r2, #1
	cmp r4, #0
	bne _08004854
_0800486A:
	ldr r6, [sp, #36]
	cmp r6, r12
	blt _08004842
_08004870:
	ldr r7, _08004884  @ =gUnknown_03001A1C
	ldr r0, [r7]
	ldr r1, _08004888  @ =0xF7FFFFFF
	and r0, r0, r1
	str r0, [r7]
	b _0800496C
_0800487C:
	.4byte gUnknown_0807820C
_08004880:
	.4byte 0x0000600C
_08004884:
	.4byte gUnknown_03001A1C
_08004888:
	.4byte 0xF7FFFFFF
_0800488C:
	ldr r0, _080049E0  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r2, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r5, [r1]
	ldrb r0, [r5, #4]
	mov r3, #1
	add r3, r3, r10
	mov r9, r3
	cmp r0, #35
	bne _080048BE
	ldr r4, [sp, #24]
	cmp r4, #0
	beq _080048BE
	ldrb r0, [r7]
	ldr r6, [sp, #32]
	ldrb r1, [r6, #4]
	lsl r2, r3, #16
	lsr r2, r2, #16
	bl 0x0802BB80
_080048BE:
	ldrh r0, [r5, #28]
	add r0, r0, #32
	ldrh r1, [r5, #24]
	str r7, [sp, #36]
	add r4, r5, r0
	lsl r1, r1, #3
	add r1, r1, r4
	mov r8, r1
	cmp r4, r8
	bcs _08004920
	mov r0, #31
	mov r12, r0
	ldr r1, _080049E4  @ =gUnknown_0807820C
	mov r10, r1
_080048DA:
	mov r3, #6
	ldrsh r2, [r4, r3]
	ldr r6, [sp, #36]
	ldr r0, [r6, #4]
	add r2, r2, r0
	mov r0, #4
	ldrsh r3, [r4, r0]
	ldr r0, [r6]
	add r3, r3, r0
	asr r1, r2, #5
	ldr r6, _080049E8  @ =0x030008E8
	ldrb r0, [r6]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, r12
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, r12
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	mov r3, r10
	ldr r0, [r3]
	lsl r1, r1, #1
	ldr r6, _080049EC  @ =0x0000800C
	add r0, r0, r6
	add r0, r0, r1
	ldrh r1, [r4]
	strh r1, [r0]
	add r4, r4, #8
	cmp r4, r8
	bcc _080048DA
_08004920:
	ldr r0, [sp, #16]
	mov r8, r0
	ldr r1, [r7, #4]
	mov r10, r1
	mov r4, r9
	add r0, r5, #0
	bl 0x080064A0
	add r2, r0, #0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r3, r2, r0
	cmp r2, r3
	bcs _08004964
	ldr r6, _080049E4  @ =gUnknown_0807820C
	mov r12, r6
_08004940:
	mov r1, #6
	ldrsh r0, [r2, r1]
	add r0, r0, r10
	mov r6, #4
	ldrsh r1, [r2, r6]
	add r1, r1, r8
	lsl r0, r0, #6
	add r0, r0, r1
	mov r6, r12
	ldr r1, [r6]
	lsl r0, r0, #1
	ldr r6, _080049F0  @ =0x0000600C
	add r1, r1, r6
	add r1, r1, r0
	strh r4, [r1]
	add r2, r2, #8
	cmp r2, r3
	bcc _08004940
_08004964:
	add r0, r7, #0
	add r1, r5, #0
	bl 0x08001BA4
_0800496C:
	mov r10, r9
	ldr r0, _080049F4  @ =0x00000FFF
	cmp r10, r0
	bgt _08004976
	b _080046DE
_08004976:
	ldr r7, [sp, #24]
	cmp r7, #0
	bne _0800497E
	b _08004F9A
_0800497E:
	mov r0, #0
	mov r10, r0
_08004982:
	ldr r0, _080049E4  @ =gUnknown_0807820C
	ldr r1, [r0]
	mov r3, r10
	lsl r2, r3, #2
	add r6, r1, r2
	ldrh r3, [r6, #12]
	add r4, r0, #0
	mov r8, r2
	mov r5, #1
	add r5, r5, r10
	mov r9, r5
	cmp r3, #0
	bne _0800499E
	b _08004F90
_0800499E:
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r3
	cmp r0, #0
	beq _080049AA
	b _08004F90
_080049AA:
	ldr r0, _080049E0  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r3, #1
	lsl r0, r0, #2
	mov r7, #132
	lsl r7, r7, #1
	add r1, r1, r7
	add r1, r1, r0
	ldr r5, [r1]
	ldrb r0, [r6, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	str r0, [sp, #16]
	add r1, sp, #16
	ldrb r0, [r6, #15]
	str r0, [r1, #4]
	ldrb r0, [r5, #4]
	sub r0, r0, #12
	add r7, r1, #0
	cmp r0, #54
	bls _080049D6
	b _08004F48
_080049D6:
	lsl r0, r0, #2
	ldr r1, _080049F8  @ =0x080049FC
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_080049E0:
	.4byte gUnknown_08078210
_080049E4:
	.4byte gUnknown_0807820C
_080049E8:
	.4byte 0x030008E8
_080049EC:
	.4byte 0x0000800C
_080049F0:
	.4byte 0x0000600C
_080049F4:
	.4byte 0x00000FFF
_080049F8:
	.4byte 0x080049FC
	.4byte _08004AD8
	.4byte _08004F48
	.4byte _08004B28
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004C98
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004D80
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004C80
	.4byte _08004B80
	.4byte _08004DDA
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004C8C
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004E2C
	.4byte _08004E7C
	.4byte _08004ECC
	.4byte _08004F0C
	.4byte _08004C60
	.4byte _08004C3C
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004F48
	.4byte _08004B1C
_08004AD8:
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	mov r0, #128
	lsl r0, r0, #13
	add r3, r3, r0
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r1, r8
	add r1, r1, #12
	ldr r0, [r4]
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #151
	mov r2, #0
	bl 0x08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #1
	add r1, r1, r10
	mov r9, r1
	cmp r0, #0
	bge _08004B10
	b _08004F90
_08004B10:
	ldr r1, _08004B18  @ =0x08004631
	bl 0x08040E44
	b _08004F90
_08004B18:
	.4byte 0x08004631
_08004B1C:
	ldr r1, [sp, #16]
	ldr r2, [r7, #4]
	add r0, r5, #0
	bl 0x08031170
	b _08004F38
_08004B28:
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r1, r0, #7
	cmp r1, #0
	beq _08004B58
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	ldr r4, _08004B54  @ =0xFFF80000
	add r3, r3, r4
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #103
	mov r2, #1
	b _08004E6A
	.byte 0x00
	.byte 0x00
_08004B54:
	.4byte 0xFFF80000
_08004B58:
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	mov r6, #128
	lsl r6, r6, #12
	add r3, r3, r6
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #103
	mov r2, #0
	bl 0x08038DF4
	mov r7, #1
	add r7, r7, r10
	mov r9, r7
	b _08004F90
_08004B80:
	ldr r1, _08004C2C  @ =0x030019E8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	ldr r2, [r4]
	add r2, r2, r8
	ldrb r2, [r2, #14]
	lsr r2, r2, #7
	bl 0x0805B5DC
	ldr r0, _08004C30  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	mov r2, #1
	add r2, r2, r10
	mov r9, r2
	cmp r0, #2
	beq _08004BAA
	b _08004F90
_08004BAA:
	ldr r6, [sp, #16]
	ldr r1, [r7, #4]
	add r3, r6, #2
	add r4, r1, #2
	mov r10, r4
	mov r5, #2
	mov r12, r5
	add r0, r1, #0
	lsl r7, r6, #1
	mov r8, r7
_08004BBE:
	add r2, r6, #0
	add r5, r0, #1
	cmp r2, r3
	bge _08004BE4
	lsl r0, r0, #7
	mov r7, r8
	add r4, r7, r0
	sub r2, r3, r2
_08004BCE:
	ldr r7, _08004C34  @ =gUnknown_0807820C
	ldr r0, [r7]
	ldr r7, _08004C38  @ =0x0000400C
	add r0, r0, r7
	add r0, r0, r4
	mov r7, r12
	strh r7, [r0]
	add r4, r4, #2
	sub r2, r2, #1
	cmp r2, #0
	bne _08004BCE
_08004BE4:
	add r0, r5, #0
	cmp r0, r1
	ble _08004BBE
	mov r1, r12
	cmp r1, #4
	bls _08004BF4
	mov r2, #14
	mov r12, r2
_08004BF4:
	cmp r0, r10
	blt _08004BFA
	b _08004F90
_08004BFA:
	lsl r4, r6, #1
	mov r8, r4
_08004BFE:
	add r2, r6, #0
	add r5, r0, #1
	cmp r2, r3
	bge _08004C22
	ldr r4, _08004C34  @ =gUnknown_0807820C
	lsl r0, r0, #7
	mov r7, r8
	add r1, r7, r0
_08004C0E:
	ldr r0, [r4]
	ldr r7, _08004C38  @ =0x0000400C
	add r0, r0, r7
	add r0, r0, r1
	mov r7, r12
	strh r7, [r0]
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r3
	blt _08004C0E
_08004C22:
	add r0, r5, #0
	cmp r0, r10
	blt _08004BFE
	b _08004F90
	.byte 0x00
	.byte 0x00
_08004C2C:
	.4byte 0x030019E8
_08004C30:
	.4byte gUnknown_03000B90
_08004C34:
	.4byte gUnknown_0807820C
_08004C38:
	.4byte 0x0000400C
_08004C3C:
	ldr r1, _08004C5C  @ =0x030019B0
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	ldr r2, [r4]
	add r2, r2, r8
	ldrb r2, [r2, #14]
	lsr r2, r2, #7
	bl 0x0805B828
	mov r0, #1
	add r0, r0, r10
	mov r9, r0
	b _08004F90
_08004C5C:
	.4byte 0x030019B0
_08004C60:
	ldr r1, _08004C7C  @ =0x03001994
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	ldr r2, [r4]
	add r2, r2, r8
	ldrb r2, [r2, #14]
	lsr r2, r2, #7
	bl 0x08070344
	b _08004EF8
	.byte 0x00
	.byte 0x00
_08004C7C:
	.4byte 0x03001994
_08004C80:
	ldr r1, [sp, #16]
	ldr r2, [r7, #4]
	add r0, r5, #0
	bl 0x08031018
	b _08004F38
_08004C8C:
	ldr r1, [sp, #16]
	ldr r2, [r7, #4]
	add r0, r5, #0
	bl 0x0802D0E8
	b _08004E02
_08004C98:
	ldrb r1, [r5, #15]
	mov r5, #1
	add r5, r5, r10
	mov r9, r5
	cmp r1, #0
	beq _08004CA6
	b _08004F90
_08004CA6:
	ldr r0, _08004CD4  @ =gUnknown_03000B90
	ldrh r2, [r0, #18]
	mov r6, #18
	ldrsh r3, [r0, r6]
	cmp r3, #0
	bne _08004CD8
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #16]
	lsl r3, r3, #3
	add r3, r3, #4
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #163
	bl 0x08038DF4
	b _08004F90
_08004CD4:
	.4byte gUnknown_03000B90
_08004CD8:
	sub r0, r2, #4
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #1
	bhi _08004D1A
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r0, r0, #7
	cmp r0, #0
	beq _08004D04
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #191
	b _08004D3E
_08004D04:
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #191
	b _08004D5A
_08004D1A:
	cmp r3, #2
	bne _08004D62
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r0, r0, #7
	cmp r0, #0
	beq _08004D46
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #152
_08004D3E:
	mov r2, #1
	bl 0x08038DF4
	b _08004F90
_08004D46:
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #152
_08004D5A:
	mov r2, #0
	bl 0x08038DF4
	b _08004F90
_08004D62:
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #154
	bl 0x08038DF4
	b _08004F90
_08004D80:
	ldrb r1, [r5, #15]
	mov r0, #1
	add r0, r0, r10
	mov r9, r0
	cmp r1, #0
	beq _08004D8E
	b _08004F90
_08004D8E:
	ldr r0, _08004DB8  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _08004DBC
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #162
	bl 0x08038DF4
	b _08004F90
	.byte 0x00
	.byte 0x00
_08004DB8:
	.4byte gUnknown_03000B90
_08004DBC:
	mov r2, #1
	neg r2, r2
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #152
	bl 0x08038DF4
	b _08004F90
_08004DDA:
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r1, r0, #7
	cmp r1, #0
	beq _08004E0A
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #169
	mov r2, #0
	bl 0x08038DF4
_08004E02:
	mov r3, #1
	add r3, r3, r10
	mov r9, r3
	b _08004F90
_08004E0A:
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #20
	mov r1, #169
	mov r2, #1
	bl 0x08038DF4
	mov r4, #1
	add r4, r4, r10
	mov r9, r4
	b _08004F90
_08004E2C:
	ldr r1, _08004E44  @ =0x03001E38
	mov r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r0, r0, #7
	cmp r0, #0
	beq _08004E4C
	ldr r1, _08004E48  @ =0x03001E3C
	mov r0, #2
	b _08004E50
_08004E44:
	.4byte 0x03001E38
_08004E48:
	.4byte 0x03001E3C
_08004E4C:
	ldr r1, _08004E78  @ =0x03001E3C
	mov r0, #1
_08004E50:
	strb r0, [r1]
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #184
	mov r2, #0
_08004E6A:
	bl 0x08038DF4
	mov r5, #1
	add r5, r5, r10
	mov r9, r5
	b _08004F90
	.byte 0x00
	.byte 0x00
_08004E78:
	.4byte 0x03001E3C
_08004E7C:
	ldr r1, _08004E94  @ =0x03001E38
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	add r0, r0, r8
	ldrb r0, [r0, #14]
	lsr r0, r0, #7
	cmp r0, #0
	beq _08004E9C
	ldr r1, _08004E98  @ =0x03001E3C
	mov r0, #16
	b _08004EA0
_08004E94:
	.4byte 0x03001E38
_08004E98:
	.4byte 0x03001E3C
_08004E9C:
	ldr r1, _08004EC8  @ =0x03001E3C
	mov r0, #32
_08004EA0:
	strb r0, [r1]
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #184
	mov r2, #0
	bl 0x08038DF4
	mov r6, #1
	add r6, r6, r10
	mov r9, r6
	b _08004F90
	.byte 0x00
	.byte 0x00
_08004EC8:
	.4byte 0x03001E3C
_08004ECC:
	ldr r1, _08004F00  @ =0x03001E38
	mov r0, #2
	strb r0, [r1]
	ldr r1, _08004F04  @ =0x03001E3C
	mov r0, #34
	strb r0, [r1]
	ldr r3, [sp, #16]
	lsl r3, r3, #19
	ldr r0, _08004F08  @ =0xFFFD0000
	add r3, r3, r0
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #184
	mov r2, #0
	bl 0x08038DF4
_08004EF8:
	mov r1, #1
	add r1, r1, r10
	mov r9, r1
	b _08004F90
_08004F00:
	.4byte 0x03001E38
_08004F04:
	.4byte 0x03001E3C
_08004F08:
	.4byte 0xFFFD0000
_08004F0C:
	ldr r1, _08004F40  @ =0x03001E38
	mov r0, #3
	strb r0, [r1]
	ldr r1, _08004F44  @ =0x03001E3C
	mov r0, #33
	strb r0, [r1]
	ldr r3, [sp, #16]
	lsl r3, r3, #3
	add r3, r3, #3
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, [r7, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	mov r1, #184
	mov r2, #0
	bl 0x08038DF4
_08004F38:
	mov r2, #1
	add r2, r2, r10
	mov r9, r2
	b _08004F90
_08004F40:
	.4byte 0x03001E38
_08004F44:
	.4byte 0x03001E3C
_08004F48:
	ldrb r0, [r5, #4]
	sub r0, r0, #61
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r3, #1
	add r3, r3, r10
	mov r9, r3
	cmp r0, #4
	bhi _08004F90
	ldr r1, _08004FB4  @ =0x0300199C
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r0, [sp, #16]
	ldr r1, [sp, #20]
	ldr r2, [r4]
	add r2, r2, r8
	ldrb r2, [r2, #14]
	lsr r2, r2, #7
	bl 0x08071338
	ldr r0, [sp, #16]
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r7, #4]
	mov r6, r9
	lsl r2, r6, #16
	lsr r2, r2, #16
	ldrb r3, [r5, #4]
	ldr r4, [r4]
	add r4, r4, r8
	ldrb r4, [r4, #14]
	lsr r4, r4, #7
	str r4, [sp]
	bl 0x080705B4
_08004F90:
	mov r10, r9
	ldr r0, _08004FB8  @ =0x00000FFF
	cmp r10, r0
	bgt _08004F9A
	b _08004982
_08004F9A:
	bl 0x08005EE4
	bl 0x08031714
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08004FB4:
	.4byte 0x0300199C
_08004FB8:
	.4byte 0x00000FFF
	THUMB_FUNC_END sub_08004634

	THUMB_FUNC_START sub_08004FBC
sub_08004FBC: @ 0x08004FBC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #40
	mov r6, #0
	mov r0, #0
	str r0, [sp, #28]
	ldr r0, _08005010  @ =0x030008C8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #32]
	str r2, [sp, #36]
	ldr r0, _08005014  @ =0x030012E0
	ldrh r0, [r0]
	mov r10, r0
	ldr r1, _08005018  @ =0x03000004
	ldrb r0, [r1]
	lsl r0, r0, #2
	strb r0, [r1]
	ldr r1, _0800501C  @ =0x03000934
	ldr r0, _08005020  @ =0x03001708
	ldrh r0, [r0]
	ldr r3, _08005024  @ =0x030008C4
	cmp r0, #0
	beq _08005002
	mov r2, sp
	ldrb r2, [r2, #28]
	strb r2, [r1]
	ldr r0, _08005028  @ =0x030008D4
	mov r1, #1
	strb r1, [r0]
	mov r0, #30
	strb r0, [r3]
_08005002:
	add r1, r3, #0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800502C
	sub r0, r0, #1
	strb r0, [r1]
	b _08005042
_08005010:
	.4byte 0x030008C8
_08005014:
	.4byte 0x030012E0
_08005018:
	.4byte 0x03000004
_0800501C:
	.4byte 0x03000934
_08005020:
	.4byte 0x03001708
_08005024:
	.4byte 0x030008C4
_08005028:
	.4byte 0x030008D4
_0800502C:
	ldr r2, _0800509C  @ =0x030008D4
	ldrb r1, [r2]
	mov r0, #1
	eor r1, r1, r0
	strb r1, [r2]
	mov r0, #30
	strb r0, [r3]
	cmp r1, #0
	bne _08005042
	mov r0, #15
	strb r0, [r3]
_08005042:
	ldr r5, _080050A0  @ =0x030008EC
	ldr r0, [r5]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _08005058
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08039B64
	str r4, [r5]
_08005058:
	ldr r0, _080050A4  @ =0x030012E0
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	bne _080050EC
	ldr r5, _080050A8  @ =0x030012E8
	ldrh r1, [r5]
	mov r0, #4
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _080050B0
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #30
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r2, _080050AC  @ =gUnknown_03000B60
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	b _080051FA
	.byte 0x00
	.byte 0x00
_0800509C:
	.4byte 0x030008D4
_080050A0:
	.4byte 0x030008EC
_080050A4:
	.4byte 0x030012E0
_080050A8:
	.4byte 0x030012E8
_080050AC:
	.4byte gUnknown_03000B60
_080050B0:
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _080050BA
	b _080051FA
_080050BA:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #26
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	mov r0, #8
	mov r1, #1
	bl 0x080070E8
	ldr r0, _080050E4  @ =0x03000BD0
	strb r4, [r0]
	ldrh r1, [r5]
	ldr r0, _080050E8  @ =0x0000FFF7
	and r0, r0, r1
	strh r0, [r5]
	b _080051FA
_080050E4:
	.4byte 0x03000BD0
_080050E8:
	.4byte 0x0000FFF7
_080050EC:
	bl 0x08006A34
	ldr r0, _0800512C  @ =0x030008E0
	ldrb r4, [r0]
	cmp r4, #0
	bne _08005166
	ldr r0, _08005130  @ =0x030012E8
	ldrh r2, [r0]
	mov r0, #4
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08005138
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #29
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r1, _08005134  @ =0x03000928
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	cmp r0, #8
	ble _08005166
	str r4, [r1]
	b _08005166
_0800512C:
	.4byte 0x030008E0
_08005130:
	.4byte 0x030012E8
_08005134:
	.4byte 0x03000928
_08005138:
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _08005166
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #29
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r1, _080051E8  @ =0x03000928
	ldr r0, [r1]
	sub r0, r0, #1
	str r0, [r1]
	cmp r0, #0
	bge _08005166
	mov r0, #8
	str r0, [r1]
_08005166:
	ldr r2, _080051EC  @ =0x03001708
	ldrh r1, [r2]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	add r4, r2, #0
	cmp r0, #0
	beq _080051A6
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #31
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r1, _080051F0  @ =0x03000900
	ldr r0, _080051E8  @ =0x03000928
	ldr r0, [r0]
	lsl r2, r0, #2
	add r1, r2, r1
	ldr r0, [r1]
	cmp r0, #0
	bgt _080051A2
	ldr r0, _080051F4  @ =0x03000940
	add r0, r2, r0
	ldr r0, [r0]
_080051A2:
	sub r0, r0, #1
	str r0, [r1]
_080051A6:
	ldrh r1, [r4]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080051FA
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #31
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r1, _080051F0  @ =0x03000900
	ldr r0, _080051E8  @ =0x03000928
	ldr r0, [r0]
	lsl r0, r0, #2
	add r2, r0, r1
	ldr r1, _080051F4  @ =0x03000940
	add r0, r0, r1
	ldr r0, [r0]
	sub r0, r0, #1
	ldr r1, [r2]
	cmp r1, r0
	bcs _080051F8
	add r0, r1, #1
	str r0, [r2]
	b _080051FA
	.byte 0x00
	.byte 0x00
_080051E8:
	.4byte 0x03000928
_080051EC:
	.4byte 0x03001708
_080051F0:
	.4byte 0x03000900
_080051F4:
	.4byte 0x03000940
_080051F8:
	str r4, [r2]
_080051FA:
	ldr r0, _08005244  @ =0x03000928
	ldr r4, [r0]
	cmp r4, #8
	ble _08005204
	b _08005302
_08005204:
	ldr r3, _08005248  @ =0x0300092C
	ldr r1, _0800524C  @ =0x03000900
	lsl r0, r4, #2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005250  @ =0x03000924
	ldr r2, [r0]
	lsl r1, r1, #2
	lsl r0, r4, #4
	sub r0, r0, r4
	lsl r0, r0, #3
	add r0, r0, r2
	add r1, r1, r0
	ldr r1, [r1]
	str r1, [r3]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08005264
	ldr r0, _08005254  @ =0xFFFF7FFF
	and r1, r1, r0
	ldr r0, _08005258  @ =gUnknown_08078210
	ldr r0, [r0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r3]
	ldr r1, _0800525C  @ =0x0400000A
	ldr r0, _08005260  @ =0x03000A0C
	ldrh r0, [r0]
	strh r0, [r1]
	b _0800526E
_08005244:
	.4byte 0x03000928
_08005248:
	.4byte 0x0300092C
_0800524C:
	.4byte 0x03000900
_08005250:
	.4byte 0x03000924
_08005254:
	.4byte 0xFFFF7FFF
_08005258:
	.4byte gUnknown_08078210
_0800525C:
	.4byte 0x0400000A
_08005260:
	.4byte 0x03000A0C
_08005264:
	ldr r2, _080052E8  @ =0x0400000A
	ldrh r1, [r2]
	ldr r0, _080052EC  @ =0x0000FFFC
	and r0, r0, r1
	strh r0, [r2]
_0800526E:
	ldr r0, [r3]
	cmp r0, #0
	ble _08005278
	sub r0, r0, #1
	str r0, [r3]
_08005278:
	ldr r4, _080052F0  @ =0x030012E0
	ldrh r1, [r4]
	mov r5, #240
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0800528A
	mov r0, #1
	orr r6, r6, r0
_0800528A:
	mov r0, #32
	mov r3, r10
	and r0, r0, r3
	ldr r3, _080052F4  @ =0x030008C8
	cmp r0, #0
	beq _0800529C
	ldr r0, [r3]
	sub r0, r0, #1
	str r0, [r3]
_0800529C:
	mov r0, #16
	mov r7, r10
	and r0, r0, r7
	cmp r0, #0
	beq _080052AC
	ldr r0, [r3]
	add r0, r0, #1
	str r0, [r3]
_080052AC:
	mov r0, #64
	mov r1, r10
	and r0, r0, r1
	cmp r0, #0
	beq _080052BC
	ldr r0, [r3, #4]
	sub r0, r0, #1
	str r0, [r3, #4]
_080052BC:
	mov r0, #128
	mov r2, r10
	and r0, r0, r2
	cmp r0, #0
	beq _080052CC
	ldr r0, [r3, #4]
	add r0, r0, #1
	str r0, [r3, #4]
_080052CC:
	ldr r3, _080052F8  @ =0x03000004
	ldrb r2, [r3]
	mov r0, #8
	and r0, r0, r2
	cmp r0, #0
	beq _08005302
	ldrh r1, [r4]
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080052FC
	mov r0, #2
	orr r0, r0, r2
	b _08005300
_080052E8:
	.4byte 0x0400000A
_080052EC:
	.4byte 0x0000FFFC
_080052F0:
	.4byte 0x030012E0
_080052F4:
	.4byte 0x030008C8
_080052F8:
	.4byte 0x03000004
_080052FC:
	mov r0, #253
	and r0, r0, r2
_08005300:
	strb r0, [r3]
_08005302:
	ldr r1, _08005328  @ =0x0300092C
	ldr r0, _0800532C  @ =gUnknown_08078210
	ldr r2, [r0]
	ldr r0, [r1]
	ldr r1, [r2, #4]
	cmp r0, r1
	bcs _08005330
	lsl r0, r0, #2
	mov r3, #132
	lsl r3, r3, #1
	add r1, r2, r3
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r7, [r0]
	mov r8, r7
	ldrh r0, [r0, #2]
	mov r9, r0
	b _08005386
	.byte 0x00
	.byte 0x00
_08005328:
	.4byte 0x0300092C
_0800532C:
	.4byte gUnknown_08078210
_08005330:
	sub r1, r0, r1
	ldr r0, _08005374  @ =0x03000934
	ldrb r5, [r0]
	cmp r5, #0
	bne _08005380
	ldr r4, _08005378  @ =0x030008EC
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #1
	neg r2, r2
	ldr r0, _0800537C  @ =0x030008C8
	ldr r3, [r0]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r0, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0
	bl 0x08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [r4]
	bl 0x08040D94
	mov r8, r0
	ldrb r0, [r4]
	bl 0x08040DCC
	mov r9, r0
	b _08005386
	.byte 0x00
	.byte 0x00
_08005374:
	.4byte 0x03000934
_08005378:
	.4byte 0x030008EC
_0800537C:
	.4byte 0x030008C8
_08005380:
	mov r0, #0
	mov r9, r0
	mov r8, r0
_08005386:
	ldr r0, _08005420  @ =0x030008C8
	ldr r1, [r0]
	add r3, r0, #0
	cmp r1, #0
	bge _080053A2
	mov r0, #32
	mov r1, r10
	and r0, r0, r1
	cmp r0, #0
	beq _0800539E
	mov r0, #2
	orr r6, r6, r0
_0800539E:
	mov r0, #0
	str r0, [r3]
_080053A2:
	ldr r0, [r3, #4]
	cmp r0, #0
	bge _080053BA
	mov r0, #64
	mov r2, r10
	and r0, r0, r2
	cmp r0, #0
	beq _080053B6
	mov r0, #2
	orr r6, r6, r0
_080053B6:
	mov r0, #0
	str r0, [r3, #4]
_080053BA:
	ldr r1, [r3]
	add r1, r1, r8
	ldr r0, _08005424  @ =0x03001720
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r2, r0, #19
	cmp r1, r2
	ble _080053DE
	mov r0, #16
	mov r7, r10
	and r0, r0, r7
	cmp r0, #0
	beq _080053D8
	mov r0, #2
	orr r6, r6, r0
_080053D8:
	mov r1, r8
	sub r0, r2, r1
	str r0, [r3]
_080053DE:
	ldr r3, _08005420  @ =0x030008C8
	ldr r1, [r3, #4]
	add r1, r1, r9
	ldr r0, _08005428  @ =0x0300170C
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r2, r0, #19
	cmp r1, r2
	ble _08005404
	mov r0, #128
	mov r7, r10
	and r0, r0, r7
	cmp r0, #0
	beq _080053FE
	mov r0, #2
	orr r6, r6, r0
_080053FE:
	mov r1, r9
	sub r0, r2, r1
	str r0, [r3, #4]
_08005404:
	cmp r6, #1
	bne _0800542C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _0800543A
_08005420:
	.4byte 0x030008C8
_08005424:
	.4byte 0x03001720
_08005428:
	.4byte 0x0300170C
_0800542C:
	cmp r6, #3
	bne _0800543A
	ldr r0, _08005520  @ =0x03000004
	ldrb r1, [r0]
	mov r2, #2
	orr r1, r1, r2
	strb r1, [r0]
_0800543A:
	ldr r1, _08005524  @ =0x030008C8
	ldr r0, [r1]
	ldr r2, [sp, #32]
	cmp r0, r2
	bne _0800544C
	ldr r0, [r1, #4]
	ldr r3, [sp, #36]
	cmp r0, r3
	beq _08005454
_0800544C:
	mov r0, #1
	ldr r6, [sp, #28]
	orr r6, r6, r0
	str r6, [sp, #28]
_08005454:
	ldr r0, _08005528  @ =0x0300092C
	ldr r1, _0800552C  @ =gUnknown_08078210
	ldr r1, [r1]
	ldr r2, [r0]
	ldr r0, [r1, #4]
	cmp r2, r0
	bcc _080054A2
	sub r5, r2, r0
	ldr r0, _08005530  @ =0x03000934
	ldrb r4, [r0]
	cmp r4, #0
	bne _080054A2
	ldr r6, _08005534  @ =0x030008EC
	ldr r0, [r6]
	cmp r0, #0
	blt _0800547C
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08039B64
_0800547C:
	lsl r1, r5, #24
	lsr r1, r1, #24
	mov r2, #1
	neg r2, r2
	ldr r0, _08005524  @ =0x030008C8
	ldr r3, [r0]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r0, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0
	bl 0x08038DF4
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [r6]
_080054A2:
	ldr r5, _08005524  @ =0x030008C8
	ldr r0, [r5]
	lsl r0, r0, #20
	ldr r7, _08005538  @ =0xFF100000
	add r0, r0, r7
	asr r0, r0, #16
	ldr r1, [r5, #4]
	lsl r1, r1, #20
	ldr r2, _0800553C  @ =0xFF600000
	add r1, r1, r2
	asr r1, r1, #16
	bl 0x08033FAC
	ldr r0, _08005540  @ =0x030008D0
	mov r4, #0
	str r4, [r0]
	ldr r7, _08005544  @ =0x03000928
	ldr r0, [r7]
	cmp r0, #8
	ble _080054CC
	b _08005868
_080054CC:
	ldr r0, _08005528  @ =0x0300092C
	ldr r1, _0800552C  @ =gUnknown_08078210
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #4]
	cmp r1, r0
	bcc _08005550
	add r7, r5, #0
	ldr r1, [r7, #4]
	mov r3, r9
	add r3, r3, r1
	mov r12, r3
	ldr r0, [r7]
	mov r6, r8
	add r5, r6, r0
	add r3, r1, #0
	cmp r3, r12
	bge _0800559A
	lsl r4, r3, #7
_080054F2:
	ldr r2, [r7]
	cmp r2, r5
	bge _08005514
	ldr r0, _08005548  @ =gUnknown_0807820C
	ldr r0, [r0]
	lsl r1, r2, #1
	ldr r6, _0800554C  @ =0x0000600C
	add r0, r0, r6
	add r0, r4, r0
	add r1, r1, r0
_08005506:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080055BE
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r5
	blt _08005506
_08005514:
	add r4, r4, #128
	add r3, r3, #1
	cmp r3, r12
	blt _080054F2
	b _0800559A
	.byte 0x00
	.byte 0x00
_08005520:
	.4byte 0x03000004
_08005524:
	.4byte 0x030008C8
_08005528:
	.4byte 0x0300092C
_0800552C:
	.4byte gUnknown_08078210
_08005530:
	.4byte 0x03000934
_08005534:
	.4byte 0x030008EC
_08005538:
	.4byte 0xFF100000
_0800553C:
	.4byte 0xFF600000
_08005540:
	.4byte 0x030008D0
_08005544:
	.4byte 0x03000928
_08005548:
	.4byte gUnknown_0807820C
_0800554C:
	.4byte 0x0000600C
_08005550:
	lsl r1, r1, #2
	mov r7, #132
	lsl r7, r7, #1
	add r0, r2, r7
	add r0, r0, r1
	ldr r4, [r0]
	add r0, r4, #0
	bl 0x080064A0
	add r2, r0, #0
	ldrh r0, [r4, #24]
	lsl r0, r0, #3
	add r3, r2, r0
	cmp r2, r3
	bcs _0800559A
	ldr r6, [r5, #4]
	ldr r5, [r5]
	ldr r0, _080055E0  @ =gUnknown_0807820C
	ldr r0, [r0]
	ldr r1, _080055E4  @ =0x0000600C
	add r4, r0, r1
_0800557A:
	mov r7, #6
	ldrsh r0, [r2, r7]
	add r0, r0, r6
	mov r7, #4
	ldrsh r1, [r2, r7]
	add r1, r1, r5
	lsl r0, r0, #6
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r4, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080055BE
	add r2, r2, #8
	cmp r2, r3
	bcc _0800557A
_0800559A:
	mov r4, #1
	ldr r0, _080055E8  @ =0x0300092C
	ldr r1, _080055EC  @ =gUnknown_08078210
	ldr r1, [r1]
	ldr r3, [r0]
	ldr r0, [r1, #4]
	cmp r3, r0
	bcc _080055C0
	sub r3, r3, r0
	ldr r0, _080055F0  @ =0x030008C8
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r1, r8
	mov r2, r9
	bl 0x08001DBC
	cmp r0, #0
	bne _080055C0
_080055BE:
	mov r4, #0
_080055C0:
	ldr r1, _080055F4  @ =0x03000004
	ldrb r2, [r1]
	mov r0, #4
	and r0, r0, r2
	add r3, r1, #0
	cmp r0, #0
	beq _08005602
	ldr r0, _080055F8  @ =0x030012E0
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080055FC
	mov r0, #1
	orr r0, r0, r2
	b _08005600
_080055E0:
	.4byte gUnknown_0807820C
_080055E4:
	.4byte 0x0000600C
_080055E8:
	.4byte 0x0300092C
_080055EC:
	.4byte gUnknown_08078210
_080055F0:
	.4byte 0x030008C8
_080055F4:
	.4byte 0x03000004
_080055F8:
	.4byte 0x030012E0
_080055FC:
	mov r0, #254
	and r0, r0, r2
_08005600:
	strb r0, [r3]
_08005602:
	mov r0, #1
	mov r1, r10
	and r1, r1, r0
	cmp r1, #0
	beq _08005654
	cmp r4, #1
	bne _08005640
	ldr r1, _08005638  @ =0x030008D8
	ldr r0, [r1]
	orr r0, r0, r4
	str r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #34
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	ldr r0, _0800563C  @ =0x030008D0
	str r4, [r0]
	bl 0x08008CE4
	b _08005654
_08005638:
	.4byte 0x030008D8
_0800563C:
	.4byte 0x030008D0
_08005640:
	ldr r2, _08005684  @ =0x030008D8
	ldr r0, [r2]
	mov r1, #2
	neg r1, r1
	and r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3]
	mov r1, #1
	orr r0, r0, r1
	strb r0, [r3]
_08005654:
	cmp r4, #0
	bne _08005670
	ldr r0, _08005688  @ =0x030012E0
	ldrh r1, [r0]
	mov r2, #1
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08005670
	ldr r0, _08005684  @ =0x030008D8
	ldr r0, [r0]
	and r0, r0, r2
	cmp r0, #0
	beq _08005690
_08005670:
	ldr r1, _0800568C  @ =0x030008C8
	ldr r0, [r1]
	ldr r1, [r1, #4]
	mov r2, #0
	str r2, [sp]
	mov r2, r8
	mov r3, r9
	bl 0x0800EEC4
	b _080056A0
_08005684:
	.4byte 0x030008D8
_08005688:
	.4byte 0x030012E0
_0800568C:
	.4byte 0x030008C8
_08005690:
	ldr r1, _08005704  @ =0x030008C8
	ldr r0, [r1]
	ldr r1, [r1, #4]
	str r2, [sp]
	mov r2, r8
	mov r3, r9
	bl 0x0800EEC4
_080056A0:
	ldr r0, _08005708  @ =0x0300092C
	ldr r1, _0800570C  @ =gUnknown_08078210
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #4]
	cmp r1, r0
	bcs _08005714
	ldr r7, _08005704  @ =0x030008C8
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r2, r3
	add r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _08005760
	add r0, r5, #0
	bl 0x080064A0
	add r4, r0, #0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _080056F8
	add r6, sp, #12
_080056D4:
	mov r1, #6
	ldrsh r0, [r4, r1]
	ldr r1, [r7, #4]
	add r0, r0, r1
	str r0, [r6, #4]
	mov r2, #4
	ldrsh r0, [r4, r2]
	ldr r1, [r7]
	add r0, r0, r1
	str r0, [sp, #12]
	add r0, sp, #12
	bl 0x08001F14
	cmp r0, #0
	beq _08005760
	add r4, r4, #8
	cmp r4, r5
	bcc _080056D4
_080056F8:
	ldr r0, _08005710  @ =0x030008D8
	ldr r1, [r0]
	mov r2, #2
	orr r1, r1, r2
	b _0800576A
	.byte 0x00
	.byte 0x00
_08005704:
	.4byte 0x030008C8
_08005708:
	.4byte 0x0300092C
_0800570C:
	.4byte gUnknown_08078210
_08005710:
	.4byte 0x030008D8
_08005714:
	ldr r7, _08005758  @ =0x030008C8
	ldr r0, [r7]
	ldr r1, [r7, #4]
	str r0, [sp, #20]
	str r1, [sp, #24]
	mov r6, #0
	cmp r6, r9
	bge _0800574E
_08005724:
	mov r4, #0
	cmp r4, r8
	bge _08005748
	add r5, sp, #20
_0800572C:
	ldr r0, [r7]
	add r0, r0, r4
	str r0, [sp, #20]
	ldr r0, [r7, #4]
	add r0, r0, r6
	str r0, [r5, #4]
	add r0, r5, #0
	bl 0x08001F14
	cmp r0, #0
	beq _08005760
	add r4, r4, #1
	cmp r4, r8
	blt _0800572C
_08005748:
	add r6, r6, #1
	cmp r6, r9
	blt _08005724
_0800574E:
	ldr r0, _0800575C  @ =0x030008D8
	ldr r1, [r0]
	mov r2, #2
	orr r1, r1, r2
	b _0800576A
_08005758:
	.4byte 0x030008C8
_0800575C:
	.4byte 0x030008D8
_08005760:
	ldr r0, _080057AC  @ =0x030008D8
	ldr r1, [r0]
	mov r2, #3
	neg r2, r2
	and r1, r1, r2
_0800576A:
	str r1, [r0]
	add r3, r0, #0
	ldr r0, _080057B0  @ =0x03001708
	ldrh r1, [r0]
	mov r2, #2
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0800577E
	b _080058D4
_0800577E:
	ldr r0, [r3]
	and r0, r0, r2
	ldr r3, _080057B4  @ =0x030008D0
	cmp r0, #0
	beq _0800578A
	str r2, [r3]
_0800578A:
	ldr r0, _080057B8  @ =0x030012E8
	ldrh r1, [r0]
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080057D4
	mov r6, #0
	str r6, [sp, #28]
	ldr r0, [r3]
	cmp r0, #2
	bne _080057BC
	str r6, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #26
	b _080057C8
_080057AC:
	.4byte 0x030008D8
_080057B0:
	.4byte 0x03001708
_080057B4:
	.4byte 0x030008D0
_080057B8:
	.4byte 0x030012E8
_080057BC:
	ldr r7, [sp, #28]
	str r7, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #27
_080057C8:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _0800580E
_080057D4:
	ldr r0, [r3]
	cmp r0, #2
	bne _0800580E
	ldr r0, _08005854  @ =gUnknown_0807820C
	ldr r2, [r0]
	ldr r0, _08005858  @ =0x030008C8
	ldr r1, [r0, #4]
	lsl r1, r1, #6
	ldr r0, [r0]
	add r0, r0, r1
	lsl r0, r0, #1
	ldr r1, _0800585C  @ =0x0000600C
	add r2, r2, r1
	add r2, r2, r0
	ldrh r0, [r2]
	cmp r0, #0
	beq _0800580E
	mov r2, #0
	str r2, [sp, #28]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #26
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
_0800580E:
	ldr r0, _08005860  @ =0x03001708
	ldrh r1, [r0]
	mov r2, #2
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _080058D4
	ldr r0, _08005864  @ =0x030008D8
	ldr r4, [r0]
	and r4, r4, r2
	cmp r4, #0
	bne _080058D4
	ldr r1, _08005858  @ =0x030008C8
	ldr r0, [r1]
	ldr r1, [r1, #4]
	mov r2, #1
	str r2, [sp]
	mov r2, r8
	mov r3, r9
	bl 0x0800EEC4
	ldr r3, [sp, #28]
	cmp r3, #0
	beq _080058D4
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _080058D4
_08005854:
	.4byte gUnknown_0807820C
_08005858:
	.4byte 0x030008C8
_0800585C:
	.4byte 0x0000600C
_08005860:
	.4byte 0x03001708
_08005864:
	.4byte 0x030008D8
_08005868:
	mov r5, #1
	str r5, [sp]
	mov r0, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0
	bl 0x0800EEC4
	ldr r6, _080058A8  @ =0x030008E0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080058D4
	ldr r0, _080058AC  @ =0x030012E8
	ldrh r2, [r0]
	add r1, r5, #0
	and r1, r1, r2
	cmp r1, #0
	beq _080058B0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #34
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	strb r4, [r6]
	str r4, [r7]
	b _080058D4
	.byte 0x00
	.byte 0x00
_080058A8:
	.4byte 0x030008E0
_080058AC:
	.4byte 0x030012E8
_080058B0:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _080058D4
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #26
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	mov r0, #7
	mov r1, #1
	bl 0x080070E8
_080058D4:
	ldr r0, _08005910  @ =0x03000004
	ldrb r1, [r0]
	mov r0, #5
	and r0, r0, r1
	cmp r0, #1
	beq _080058E8
	mov r0, #10
	and r0, r0, r1
	cmp r0, #2
	bne _080058FE
_080058E8:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
_080058FE:
	add sp, sp, #40
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08005910:
	.4byte 0x03000004
	THUMB_FUNC_END sub_08004FBC

	THUMB_FUNC_START sub_08005914
sub_08005914: @ 0x08005914
	push {lr}
	ldr r2, _0800594C  @ =0x03000924
	ldr r3, [r2]
	lsl r1, r1, #2
	lsl r2, r0, #4
	sub r2, r2, r0
	lsl r2, r2, #3
	add r2, r2, r3
	add r1, r1, r2
	ldr r1, [r1]
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08005950
	sub r3, r1, #1
	lsl r3, r3, #24
	lsr r3, r3, #24
	mov r0, #0
	mov r1, #0
	mov r2, #0
	bl 0x08001DBC
	cmp r0, #0
	bne _08005950
	mov r0, #0
	b _08005952
	.byte 0x00
	.byte 0x00
_0800594C:
	.4byte 0x03000924
_08005950:
	mov r0, #1
_08005952:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08005914

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08005958
sub_08005958: @ 0x08005958
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #60
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #12]
	add r5, r3, #0
	ldr r3, [r2]
	str r3, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #16]
	cmp r3, #63
	bgt _080059B2
	ldr r4, [r1]
_0800597C:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080059B2
	ldr r2, _08005B58  @ =gUnknown_0807820C
	ldr r1, [r2]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r1, r0
	ldrh r1, [r2, #12]
	add r0, r7, #1
	cmp r1, r0
	bne _080059B2
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	cmp r0, r3
	bne _080059B2
	ldrb r0, [r2, #15]
	cmp r0, r5
	bne _080059B2
	add r4, r4, #2
	ldr r0, [sp, #16]
	add r0, r0, #1
	str r0, [sp, #16]
	add r3, r3, #1
	cmp r3, #63
	ble _0800597C
_080059B2:
	ldr r1, [sp, #16]
	cmp r1, #1
	bne _080059BA
	b _08005B68
_080059BA:
	ldr r2, _08005B5C  @ =gUnknown_08078210
	ldr r1, [r2]
	add r0, r7, #2
	lsl r0, r0, #2
	mov r3, #132
	lsl r3, r3, #1
	add r1, r1, r3
	add r1, r1, r0
	ldr r1, [r1]
	ldr r5, _08005B58  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r2, _08005B60  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r0, r4, r0
	str r0, [sp, #52]
	ldr r3, [sp, #12]
	ldr r3, [r3]
	str r3, [sp, #44]
	ldr r5, [sp, #8]
	ldr r5, [r5]
	str r5, [sp, #40]
	ldr r0, [sp, #16]
	lsl r0, r0, #1
	str r0, [sp, #48]
	ldr r1, [sp]
	str r1, [sp, #28]
	ldr r2, [sp, #16]
	sub r2, r2, #1
	str r2, [sp, #36]
	add r3, r7, #3
	str r3, [sp, #32]
	ldr r5, [sp, #52]
	cmp r4, r5
	bcs _08005A4C
	mov r6, #31
	mov r9, r1
	ldr r0, _08005B64  @ =0x030008E8
	mov r12, r0
	ldr r1, [sp, #4]
	mov r8, r1
_08005A16:
	mov r3, #6
	ldrsh r2, [r4, r3]
	add r2, r2, r8
	mov r5, #4
	ldrsh r3, [r4, r5]
	add r3, r3, r9
	asr r1, r2, #5
	mov r5, r12
	ldrb r0, [r5]
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
	add r1, r1, r10
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	ldr r0, [sp, #52]
	cmp r4, r0
	bcc _08005A16
_08005A4C:
	ldr r0, [sp, #28]
	add r0, r0, #1
	str r0, [sp]
	mov r2, #1
	ldr r1, [sp, #36]
	cmp r2, r1
	bge _08005AEC
	add r0, r7, #1
	lsl r0, r0, #2
	str r0, [sp, #20]
	mov r3, sp
	str r3, [sp, #24]
_08005A64:
	ldr r5, _08005B5C  @ =gUnknown_08078210
	ldr r0, [r5]
	mov r7, #132
	lsl r7, r7, #1
	add r0, r0, r7
	ldr r1, [sp, #20]
	add r0, r0, r1
	ldr r1, [r0]
	ldr r3, _08005B58  @ =gUnknown_0807820C
	ldr r0, [r3]
	ldr r5, _08005B60  @ =0x0000800C
	add r5, r5, r0
	mov r9, r5
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	ldr r7, [sp]
	str r7, [sp, #28]
	add r2, r2, #1
	mov r10, r2
	cmp r4, r6
	bcs _08005ADE
	mov r5, #31
	ldr r0, [sp, #24]
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08005B64  @ =0x030008E8
	mov r12, r1
	ldr r2, [sp, #24]
	ldr r2, [r2, #4]
	str r2, [sp, #56]
_08005AA8:
	mov r3, #6
	ldrsh r2, [r4, r3]
	ldr r7, [sp, #56]
	add r2, r2, r7
	mov r0, #4
	ldrsh r3, [r4, r0]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r12
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	and r2, r2, r5
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r5
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08005AA8
_08005ADE:
	ldr r0, [sp, #28]
	add r0, r0, #1
	str r0, [sp]
	mov r2, r10
	ldr r0, [sp, #36]
	cmp r2, r0
	blt _08005A64
_08005AEC:
	ldr r1, _08005B5C  @ =gUnknown_08078210
	ldr r0, [r1]
	ldr r2, [sp, #32]
	lsl r1, r2, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	mov r9, sp
	ldr r1, [r0]
	ldr r5, _08005B58  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r7, _08005B60  @ =0x0000800C
	add r7, r7, r0
	mov r8, r7
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08005BE4
	mov r6, #31
	ldr r7, [sp, #4]
_08005B1E:
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, r7
	mov r1, #4
	ldrsh r3, [r4, r1]
	mov r1, r9
	ldr r0, [r1]
	add r3, r3, r0
	asr r1, r2, #5
	ldr r0, _08005B64  @ =0x030008E8
	ldrb r0, [r0]
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
	bcc _08005B1E
	b _08005BE4
_08005B58:
	.4byte gUnknown_0807820C
_08005B5C:
	.4byte gUnknown_08078210
_08005B60:
	.4byte 0x0000800C
_08005B64:
	.4byte 0x030008E8
_08005B68:
	ldr r2, _08005C0C  @ =gUnknown_08078210
	ldr r0, [r2]
	lsl r1, r7, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	ldr r5, _08005C10  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r7, _08005C14  @ =0x0000800C
	add r7, r7, r0
	mov r9, r7
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	ldr r0, [sp, #12]
	ldr r0, [r0]
	str r0, [sp, #44]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	str r1, [sp, #40]
	mov r2, #2
	str r2, [sp, #48]
	cmp r4, r5
	bcs _08005BE4
	mov r6, #31
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _08005C18  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08005BB0:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
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
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08005BB0
_08005BE4:
	ldr r0, [sp, #44]
	sub r0, r0, #1
	ldr r1, [sp, #16]
	add r0, r0, r1
	ldr r2, [sp, #12]
	str r0, [r2]
	ldr r0, [sp, #48]
	sub r0, r0, #2
	ldr r3, [sp, #40]
	add r0, r3, r0
	ldr r5, [sp, #8]
	str r0, [r5]
	add sp, sp, #60
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08005C0C:
	.4byte gUnknown_08078210
_08005C10:
	.4byte gUnknown_0807820C
_08005C14:
	.4byte 0x0000800C
_08005C18:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_08005958

	THUMB_FUNC_START sub_08005C1C
sub_08005C1C: @ 0x08005C1C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #60
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #12]
	add r5, r3, #0
	ldr r3, [r2]
	str r3, [sp]
	str r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #16]
	cmp r3, #63
	bgt _08005C76
	ldr r4, [r1]
_08005C40:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08005C76
	ldr r2, _08005E20  @ =gUnknown_0807820C
	ldr r1, [r2]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r1, r0
	ldrh r1, [r2, #12]
	add r0, r7, #1
	cmp r1, r0
	bne _08005C76
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	cmp r0, r3
	bne _08005C76
	ldrb r0, [r2, #15]
	cmp r0, r5
	bne _08005C76
	add r4, r4, #2
	ldr r0, [sp, #16]
	add r0, r0, #1
	str r0, [sp, #16]
	add r3, r3, #1
	cmp r3, #63
	ble _08005C40
_08005C76:
	ldr r1, [sp, #16]
	cmp r1, #1
	bne _08005C7E
	b _08005E30
_08005C7E:
	ldr r2, _08005E24  @ =gUnknown_08078210
	ldr r1, [r2]
	add r0, r7, #0
	add r0, r0, #8
	lsl r0, r0, #2
	mov r3, #132
	lsl r3, r3, #1
	add r1, r1, r3
	add r1, r1, r0
	ldr r1, [r1]
	ldr r5, _08005E20  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r2, _08005E28  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r0, r4, r0
	str r0, [sp, #52]
	ldr r3, [sp, #12]
	ldr r3, [r3]
	str r3, [sp, #40]
	ldr r5, [sp, #8]
	ldr r5, [r5]
	str r5, [sp, #36]
	ldr r0, [sp, #16]
	lsl r0, r0, #1
	str r0, [sp, #48]
	ldr r1, [sp]
	str r1, [sp, #28]
	ldr r2, [sp, #16]
	sub r2, r2, #1
	str r2, [sp, #32]
	add r3, r7, #0
	add r3, r3, #12
	str r3, [sp, #44]
	ldr r5, [sp, #52]
	cmp r4, r5
	bcs _08005D14
	mov r6, #31
	mov r9, r1
	ldr r0, _08005E2C  @ =0x030008E8
	mov r12, r0
	ldr r1, [sp, #4]
	mov r8, r1
_08005CDE:
	mov r3, #6
	ldrsh r2, [r4, r3]
	add r2, r2, r8
	mov r5, #4
	ldrsh r3, [r4, r5]
	add r3, r3, r9
	asr r1, r2, #5
	mov r5, r12
	ldrb r0, [r5]
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
	add r1, r1, r10
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	ldr r0, [sp, #52]
	cmp r4, r0
	bcc _08005CDE
_08005D14:
	ldr r0, [sp, #28]
	add r0, r0, #1
	str r0, [sp]
	mov r2, #1
	ldr r1, [sp, #32]
	cmp r2, r1
	bge _08005DB4
	add r0, r7, #4
	lsl r0, r0, #2
	str r0, [sp, #20]
	mov r3, sp
	str r3, [sp, #24]
_08005D2C:
	ldr r5, _08005E24  @ =gUnknown_08078210
	ldr r0, [r5]
	mov r7, #132
	lsl r7, r7, #1
	add r0, r0, r7
	ldr r1, [sp, #20]
	add r0, r0, r1
	ldr r1, [r0]
	ldr r3, _08005E20  @ =gUnknown_0807820C
	ldr r0, [r3]
	ldr r5, _08005E28  @ =0x0000800C
	add r5, r5, r0
	mov r9, r5
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r6, r4, r0
	ldr r7, [sp]
	str r7, [sp, #28]
	add r2, r2, #1
	mov r10, r2
	cmp r4, r6
	bcs _08005DA6
	mov r5, #31
	ldr r0, [sp, #24]
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08005E2C  @ =0x030008E8
	mov r12, r1
	ldr r2, [sp, #24]
	ldr r2, [r2, #4]
	str r2, [sp, #56]
_08005D70:
	mov r3, #6
	ldrsh r2, [r4, r3]
	ldr r7, [sp, #56]
	add r2, r2, r7
	mov r0, #4
	ldrsh r3, [r4, r0]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r12
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	and r2, r2, r5
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r5
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r6
	bcc _08005D70
_08005DA6:
	ldr r0, [sp, #28]
	add r0, r0, #1
	str r0, [sp]
	mov r2, r10
	ldr r0, [sp, #32]
	cmp r2, r0
	blt _08005D2C
_08005DB4:
	ldr r1, _08005E24  @ =gUnknown_08078210
	ldr r0, [r1]
	ldr r2, [sp, #44]
	lsl r1, r2, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	mov r9, sp
	ldr r1, [r0]
	ldr r5, _08005E20  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r7, _08005E28  @ =0x0000800C
	add r7, r7, r0
	mov r8, r7
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08005EAC
	mov r6, #31
	ldr r7, [sp, #4]
_08005DE6:
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, r7
	mov r1, #4
	ldrsh r3, [r4, r1]
	mov r1, r9
	ldr r0, [r1]
	add r3, r3, r0
	asr r1, r2, #5
	ldr r0, _08005E2C  @ =0x030008E8
	ldrb r0, [r0]
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
	bcc _08005DE6
	b _08005EAC
_08005E20:
	.4byte gUnknown_0807820C
_08005E24:
	.4byte gUnknown_08078210
_08005E28:
	.4byte 0x0000800C
_08005E2C:
	.4byte 0x030008E8
_08005E30:
	ldr r2, _08005ED4  @ =gUnknown_08078210
	ldr r0, [r2]
	lsl r1, r7, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	ldr r5, _08005ED8  @ =gUnknown_0807820C
	ldr r0, [r5]
	ldr r7, _08005EDC  @ =0x0000800C
	add r7, r7, r0
	mov r9, r7
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	ldr r0, [sp, #12]
	ldr r0, [r0]
	str r0, [sp, #40]
	ldr r1, [sp, #8]
	ldr r1, [r1]
	str r1, [sp, #36]
	mov r2, #2
	str r2, [sp, #48]
	cmp r4, r5
	bcs _08005EAC
	mov r6, #31
	ldr r3, [sp]
	mov r8, r3
	ldr r7, _08005EE0  @ =0x030008E8
	mov r10, r7
	ldr r0, [sp, #4]
	mov r12, r0
_08005E78:
	mov r1, #6
	ldrsh r2, [r4, r1]
	add r2, r2, r12
	mov r7, #4
	ldrsh r3, [r4, r7]
	add r3, r3, r8
	asr r1, r2, #5
	mov r7, r10
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
	add r1, r1, r9
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08005E78
_08005EAC:
	ldr r0, [sp, #40]
	sub r0, r0, #1
	ldr r1, [sp, #16]
	add r0, r0, r1
	ldr r2, [sp, #12]
	str r0, [r2]
	ldr r0, [sp, #48]
	sub r0, r0, #2
	ldr r3, [sp, #36]
	add r0, r3, r0
	ldr r5, [sp, #8]
	str r0, [r5]
	add sp, sp, #60
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08005ED4:
	.4byte gUnknown_08078210
_08005ED8:
	.4byte gUnknown_0807820C
_08005EDC:
	.4byte 0x0000800C
_08005EE0:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_08005C1C

	THUMB_FUNC_START sub_08005EE4
sub_08005EE4: @ 0x08005EE4
	push {r4-r7,lr}
	sub sp, sp, #8
	ldr r0, _08005F64  @ =gUnknown_0807820C
	ldr r0, [r0]
	ldr r1, _08005F68  @ =0x0000600C
	add r0, r0, r1
	str r0, [sp]
	ldr r0, _08005F6C  @ =0x030009C0
	ldr r0, [r0]
	cmp r0, #13
	beq _08005EFE
	cmp r0, #5
	bne _08005F98
_08005EFE:
	mov r5, #0
_08005F00:
	mov r0, #0
	str r0, [sp, #4]
	mov r4, #0
	add r6, r5, #1
_08005F08:
	ldr r2, [sp]
	ldrh r0, [r2]
	cmp r0, #0
	beq _08005F80
	ldr r0, _08005F64  @ =gUnknown_0807820C
	ldr r1, [r0]
	ldrh r0, [r2]
	sub r0, r0, #1
	lsl r0, r0, #2
	add r2, r1, r0
	ldrh r0, [r2, #12]
	sub r3, r0, #1
	mov r0, #128
	lsl r0, r0, #8
	and r0, r0, r3
	cmp r0, #0
	bne _08005F80
	ldr r0, _08005F70  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r3, #2
	mov r7, #132
	lsl r7, r7, #1
	add r0, r0, r7
	add r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r2, #14]
	lsl r0, r0, #25
	lsr r0, r0, #25
	cmp r0, r4
	bne _08005F80
	ldrb r0, [r2, #15]
	cmp r0, r5
	bne _08005F80
	ldrb r0, [r1, #10]
	cmp r0, #1
	bne _08005F80
	ldrb r0, [r1, #15]
	cmp r0, #0
	bne _08005F74
	add r0, r3, #0
	mov r1, sp
	add r2, sp, #4
	add r3, r5, #0
	bl 0x08005958
	b _08005F80
_08005F64:
	.4byte gUnknown_0807820C
_08005F68:
	.4byte 0x0000600C
_08005F6C:
	.4byte 0x030009C0
_08005F70:
	.4byte gUnknown_08078210
_08005F74:
	add r0, r3, #0
	mov r1, sp
	add r2, sp, #4
	add r3, r5, #0
	bl 0x08005C1C
_08005F80:
	ldr r1, [sp, #4]
	add r1, r1, #1
	str r1, [sp, #4]
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	add r4, r1, #0
	cmp r4, #63
	ble _08005F08
	add r5, r6, #0
	cmp r5, #63
	ble _08005F00
_08005F98:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08005EE4

	THUMB_FUNC_START sub_08005FA0
sub_08005FA0: @ 0x08005FA0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	ldr r0, _08006128  @ =0x030008DC
	ldr r1, _0800612C  @ =gUnknown_0807822C
	mov r10, r1
	ldr r4, [r0]
	add r0, r4, #0
	add r0, r0, #240
	ldr r0, [r0]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _0800600E
	mov r6, #31
	ldr r2, _08006130  @ =0x030008E8
	mov r9, r2
	ldr r3, _08006134  @ =gUnknown_0807820C
	mov r8, r3
_08005FCC:
	mov r7, #6
	ldrsh r1, [r4, r7]
	mov r2, r10
	ldr r0, [r2, #4]
	add r1, r1, r0
	mov r7, #4
	ldrsh r3, [r4, r7]
	ldr r0, [r2]
	add r3, r3, r0
	asr r2, r1, #5
	mov r7, r9
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r2, r2, r0
	and r1, r1, r6
	add r2, r2, r1
	lsl r2, r2, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r6
	add r0, r0, r3
	add r2, r2, r0
	mov r0, r8
	ldr r1, [r0]
	lsl r2, r2, #1
	ldr r3, _08006138  @ =0x0000800C
	add r1, r1, r3
	add r1, r1, r2
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _08005FCC
_0800600E:
	bl 0x08005EE4
	ldr r0, _0800613C  @ =0x03000934
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800601C
	b _080062B6
_0800601C:
	ldr r0, _08006140  @ =0x03000928
	ldr r0, [r0]
	cmp r0, #8
	ble _08006026
	b _080062B6
_08006026:
	ldr r0, _08006144  @ =0x0300092C
	ldr r1, _08006148  @ =gUnknown_08078210
	ldr r2, [r1]
	ldr r1, [r0]
	ldr r0, [r2, #4]
	cmp r1, r0
	bcc _08006036
	b _08006154
_08006036:
	lsl r1, r1, #2
	mov r5, #132
	lsl r5, r5, #1
	add r0, r2, r5
	add r0, r0, r1
	ldr r0, [r0]
	mov r10, r0
	ldr r0, _0800614C  @ =0x030008D0
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r0, #1
	bhi _0800608E
	ldr r7, _08006150  @ =0x030008C8
	add r0, r2, r5
	add r0, r0, r1
	ldr r5, [r0]
	cmp r5, #0
	beq _0800608E
	add r0, r5, #0
	bl 0x080064A0
	add r4, r0, #0
	ldrh r0, [r5, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _0800608E
	add r6, sp, #8
_0800606E:
	mov r1, #6
	ldrsh r0, [r4, r1]
	ldr r1, [r7, #4]
	add r0, r0, r1
	str r0, [r6, #4]
	mov r2, #4
	ldrsh r0, [r4, r2]
	ldr r1, [r7]
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, sp, #8
	bl 0x08002160
	add r4, r4, #8
	cmp r4, r5
	bcc _0800606E
_0800608E:
	ldr r0, _0800614C  @ =0x030008D0
	ldr r0, [r0]
	cmp r0, #1
	beq _0800609A
	cmp r0, #3
	bne _080060A4
_0800609A:
	ldr r0, _08006150  @ =0x030008C8
	ldr r1, _08006144  @ =0x0300092C
	ldr r1, [r1]
	bl 0x08001FD8
_080060A4:
	mov r3, r10
	ldrh r0, [r3, #28]
	add r0, r0, #32
	ldrh r1, [r3, #24]
	ldr r2, _08006128  @ =0x030008DC
	ldr r5, _08006150  @ =0x030008C8
	mov r9, r5
	add r5, r3, r0
	ldr r6, [r2]
	lsl r1, r1, #3
	add r1, r5, r1
	str r1, [sp, #28]
	cmp r5, r1
	bcs _0800611C
	mov r7, #31
	mov r8, r7
	ldr r0, _08006134  @ =gUnknown_0807820C
	mov r12, r0
_080060C8:
	mov r1, #6
	ldrsh r4, [r5, r1]
	mov r2, r9
	ldr r0, [r2, #4]
	add r4, r4, r0
	mov r7, #4
	ldrsh r3, [r5, r7]
	ldr r0, [r2]
	add r3, r3, r0
	asr r2, r4, #5
	ldr r1, _08006130  @ =0x030008E8
	ldrb r0, [r1]
	add r0, r0, #5
	lsl r2, r2, r0
	add r0, r4, #0
	mov r7, r8
	and r0, r0, r7
	add r2, r2, r0
	lsl r2, r2, #5
	asr r1, r3, #5
	lsl r1, r1, #10
	add r0, r3, #0
	and r0, r0, r7
	add r1, r1, r0
	add r2, r2, r1
	strh r3, [r6, #4]
	strh r4, [r6, #6]
	mov r0, r12
	ldr r1, [r0]
	lsl r2, r2, #1
	ldr r3, _08006138  @ =0x0000800C
	add r1, r1, r3
	add r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r5]
	strh r0, [r1]
	add r5, r5, #8
	add r6, r6, #8
	ldr r7, [sp, #28]
	cmp r5, r7
	bcc _080060C8
_0800611C:
	ldr r1, _08006128  @ =0x030008DC
	ldr r0, [r1]
	add r0, r0, #240
	mov r2, r10
	ldrh r1, [r2, #24]
	b _080062B4
_08006128:
	.4byte 0x030008DC
_0800612C:
	.4byte gUnknown_0807822C
_08006130:
	.4byte 0x030008E8
_08006134:
	.4byte gUnknown_0807820C
_08006138:
	.4byte 0x0000800C
_0800613C:
	.4byte 0x03000934
_08006140:
	.4byte 0x03000928
_08006144:
	.4byte 0x0300092C
_08006148:
	.4byte gUnknown_08078210
_0800614C:
	.4byte 0x030008D0
_08006150:
	.4byte 0x030008C8
_08006154:
	ldr r0, _08006260  @ =0x030008D0
	ldr r0, [r0]
	cmp r0, #2
	bne _080061AA
	ldr r4, _08006264  @ =0x030008EC
	ldr r0, [r4]
	cmp r0, #0
	blt _080061AA
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08040D94
	mov r8, r0
	ldrb r0, [r4]
	bl 0x08040DCC
	mov r9, r0
	ldr r1, _08006268  @ =0x030008C8
	mov r6, #0
	cmp r6, r9
	bge _080061AA
_0800617E:
	mov r5, #0
	add r7, r6, #1
	cmp r5, r8
	bge _080061A4
	add r4, sp, #16
_08006188:
	ldr r0, [r1]
	add r0, r0, r5
	str r0, [sp, #16]
	ldr r0, [r1, #4]
	add r0, r0, r6
	str r0, [r4, #4]
	add r0, r4, #0
	str r1, [sp, #24]
	bl 0x08002160
	add r5, r5, #1
	ldr r1, [sp, #24]
	cmp r5, r8
	blt _08006188
_080061A4:
	add r6, r7, #0
	cmp r6, r9
	blt _0800617E
_080061AA:
	ldr r0, _08006260  @ =0x030008D0
	ldr r0, [r0]
	cmp r0, #1
	bne _080062AC
	ldr r1, _0800626C  @ =0x0300092C
	ldr r0, _08006270  @ =gUnknown_08078210
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #4]
	sub r1, r1, r0
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r2, #1
	neg r2, r2
	ldr r6, _08006268  @ =0x030008C8
	ldr r3, [r6]
	lsl r3, r3, #19
	lsr r3, r3, #16
	ldr r0, [r6, #4]
	lsl r0, r0, #19
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #20
	bl 0x08038DF4
	lsl r0, r0, #24
	lsr r5, r0, #24
	add r0, r5, #0
	bl 0x08040E04
	mov r4, #255
	and r4, r4, r0
	lsl r4, r4, #7
	orr r4, r4, r5
	mov r1, #128
	lsl r1, r1, #8
	orr r4, r4, r1
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08038BA4
	add r2, r0, #0
	lsl r2, r2, #24
	lsr r2, r2, #24
	add r0, r6, #0
	add r1, r4, #0
	bl 0x08001CE0
	mov r9, r0
	cmp r0, #0
	blt _0800627C
	add r0, r5, #0
	bl 0x08040D94
	add r4, r0, #0
	add r0, r5, #0
	bl 0x08040DCC
	ldr r7, [r6]
	ldr r1, [r6, #4]
	add r4, r4, r7
	add r0, r0, r1
	mov r8, r0
	cmp r1, r8
	bge _08006284
_08006230:
	lsl r0, r1, #6
	add r3, r0, r7
	add r2, r7, #0
	add r1, r1, #1
	mov r10, r1
	cmp r2, r4
	bge _08006258
	ldr r6, _08006274  @ =gUnknown_0807820C
	sub r2, r4, r2
_08006242:
	ldr r0, [r6]
	lsl r1, r3, #1
	ldr r5, _08006278  @ =0x0000600C
	add r0, r0, r5
	add r0, r0, r1
	mov r1, r9
	strh r1, [r0]
	sub r2, r2, #1
	add r3, r3, #1
	cmp r2, #0
	bne _08006242
_08006258:
	mov r1, r10
	cmp r1, r8
	blt _08006230
	b _08006284
_08006260:
	.4byte 0x030008D0
_08006264:
	.4byte 0x030008EC
_08006268:
	.4byte 0x030008C8
_0800626C:
	.4byte 0x0300092C
_08006270:
	.4byte gUnknown_08078210
_08006274:
	.4byte gUnknown_0807820C
_08006278:
	.4byte 0x0000600C
_0800627C:
	add r0, r5, #0
	bl 0x08039B64
	b _080062AC
_08006284:
	mov r4, #0
_08006286:
	ldr r0, _080062C8  @ =0x03000924
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r0, r1
	mov r2, #210
	lsl r2, r2, #2
	add r0, r0, r2
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
	ble _08006286
_080062AC:
	ldr r0, _080062CC  @ =0x030008DC
	ldr r0, [r0]
	add r0, r0, #240
	mov r1, #0
_080062B4:
	str r1, [r0]
_080062B6:
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080062C8:
	.4byte 0x03000924
_080062CC:
	.4byte 0x030008DC
	THUMB_FUNC_END sub_08005FA0

	THUMB_FUNC_START sub_080062D0
sub_080062D0: @ 0x080062D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, _08006370  @ =0x030008DC
	ldr r4, [r1]
	add r0, r4, #0
	add r0, r0, #240
	ldr r0, [r0]
	lsl r0, r0, #3
	add r5, r4, r0
	mov r10, r1
	ldr r0, _08006374  @ =0x030008EC
	mov r9, r0
	cmp r4, r5
	bcs _0800633E
	mov r6, #31
	ldr r1, _08006378  @ =0x030008E8
	mov r8, r1
	ldr r2, _0800637C  @ =gUnknown_0807820C
	mov r12, r2
_080062FC:
	mov r7, #6
	ldrsh r1, [r4, r7]
	ldr r2, _08006380  @ =gUnknown_08078234
	ldr r0, [r2, #4]
	add r1, r1, r0
	mov r7, #4
	ldrsh r3, [r4, r7]
	ldr r0, [r2]
	add r3, r3, r0
	asr r2, r1, #5
	mov r7, r8
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r2, r2, r0
	and r1, r1, r6
	add r2, r2, r1
	lsl r2, r2, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	and r3, r3, r6
	add r0, r0, r3
	add r2, r2, r0
	mov r0, r12
	ldr r1, [r0]
	lsl r2, r2, #1
	ldr r7, _08006384  @ =0x0000800C
	add r1, r1, r7
	add r1, r1, r2
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _080062FC
_0800633E:
	mov r1, r10
	ldr r0, [r1]
	add r0, r0, #240
	mov r1, #0
	str r1, [r0]
	mov r2, r9
	ldr r0, [r2]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _08006360
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08039B64
	mov r7, r9
	str r4, [r7]
_08006360:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08006370:
	.4byte 0x030008DC
_08006374:
	.4byte 0x030008EC
_08006378:
	.4byte 0x030008E8
_0800637C:
	.4byte gUnknown_0807820C
_08006380:
	.4byte gUnknown_08078234
_08006384:
	.4byte 0x0000800C
	THUMB_FUNC_END sub_080062D0

	THUMB_FUNC_START sub_08006388
sub_08006388: @ 0x08006388
	push {lr}
	ldr r0, _080063B8  @ =gUnknown_0807820C
	ldr r2, [r0]
	mov r1, #10
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080063B4
	ldr r1, _080063BC  @ =0x03001720
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _080063C0  @ =0x0300170C
	ldrh r0, [r2, #6]
	strh r0, [r1]
	ldr r1, _080063C4  @ =0x030012A4
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _080063C8  @ =0x030012EC
	ldrh r0, [r2, #2]
	strh r0, [r1]
	ldr r1, _080063CC  @ =0x030012E4
	ldrh r0, [r2, #8]
	strh r0, [r1]
_080063B4:
	pop {r0}
	bx r0
_080063B8:
	.4byte gUnknown_0807820C
_080063BC:
	.4byte 0x03001720
_080063C0:
	.4byte 0x0300170C
_080063C4:
	.4byte 0x030012A4
_080063C8:
	.4byte 0x030012EC
_080063CC:
	.4byte 0x030012E4
	THUMB_FUNC_END sub_08006388

	THUMB_FUNC_START sub_080063D0
sub_080063D0: @ 0x080063D0
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r2, r0, r3
	add r2, r2, r1
	ldr r1, [r2]
	add r1, r1, r3
	add r0, r0, r1
	bx lr
	THUMB_FUNC_END sub_080063D0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080063E4
sub_080063E4: @ 0x080063E4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r6, r0, #0
	mov r9, r2
	ldr r0, _08006490  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r2, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r2
	ldr r2, [r0]
	ldrh r0, [r2, #28]
	add r0, r0, #32
	add r5, r2, r0
	ldrh r0, [r2, #24]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r8, r0
	add r0, r6, #0
	mov r2, #0
	bl 0x08001CE0
	str r0, [sp]
	cmp r0, #0
	blt _0800647E
	cmp r5, r8
	bcs _0800647E
	mov r7, #31
	mov r12, r7
	ldr r0, _08006494  @ =gUnknown_0807820C
	mov r10, r0
_0800642C:
	mov r1, #6
	ldrsh r2, [r5, r1]
	ldr r0, [r6, #4]
	add r2, r2, r0
	mov r7, #4
	ldrsh r3, [r5, r7]
	ldr r0, [r6]
	add r3, r3, r0
	lsl r4, r2, #6
	add r4, r4, r3
	asr r1, r2, #5
	ldr r7, _08006498  @ =0x030008E8
	ldrb r0, [r7]
	add r0, r0, #5
	lsl r1, r1, r0
	mov r0, r12
	and r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #5
	asr r0, r3, #5
	lsl r0, r0, #10
	mov r2, r12
	and r3, r3, r2
	add r0, r0, r3
	add r1, r1, r0
	lsl r1, r1, #1
	add r1, r1, r9
	ldrh r0, [r5]
	strh r0, [r1]
	mov r3, r10
	ldr r0, [r3]
	lsl r4, r4, #1
	ldr r7, _0800649C  @ =0x0000600C
	add r0, r0, r7
	add r0, r0, r4
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r0]
	add r5, r5, #8
	cmp r5, r8
	bcc _0800642C
_0800647E:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08006490:
	.4byte gUnknown_08078210
_08006494:
	.4byte gUnknown_0807820C
_08006498:
	.4byte 0x030008E8
_0800649C:
	.4byte 0x0000600C
	THUMB_FUNC_END sub_080063E4

	THUMB_FUNC_START sub_080064A0
sub_080064A0: @ 0x080064A0
	ldrh r1, [r0, #28]
	add r1, r1, #32
	add r0, r0, r1
	bx lr
	THUMB_FUNC_END sub_080064A0

	THUMB_FUNC_START sub_080064A8
sub_080064A8: @ 0x080064A8
	ldrh r1, [r0, #30]
	add r1, r1, #32
	add r0, r0, r1
	bx lr
	THUMB_FUNC_END sub_080064A8

	THUMB_FUNC_START sub_080064B0
sub_080064B0: @ 0x080064B0
	add r3, r0, #0
	asr r0, r1, #5
	ldr r2, _080064D0  @ =0x030008E8
	ldrb r2, [r2]
	add r2, r2, #5
	lsl r0, r0, r2
	mov r2, #31
	and r1, r1, r2
	add r0, r0, r1
	lsl r0, r0, #5
	asr r1, r3, #5
	lsl r1, r1, #10
	and r3, r3, r2
	add r1, r1, r3
	add r0, r0, r1
	bx lr
_080064D0:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_080064B0

	THUMB_FUNC_START sub_080064D4
sub_080064D4: @ 0x080064D4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r3, r0, #0
	mov r8, r2
	ldrh r0, [r1, #28]
	add r0, r0, #32
	add r4, r1, r0
	ldrh r0, [r1, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _08006534
	mov r6, #31
	ldr r0, [r3]
	mov r12, r0
	ldr r7, _08006544  @ =0x030008E8
	mov r9, r7
	ldr r3, [r3, #4]
	mov r10, r3
_08006500:
	mov r0, #6
	ldrsh r2, [r4, r0]
	add r2, r2, r10
	mov r7, #4
	ldrsh r3, [r4, r7]
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
	bcc _08006500
_08006534:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08006544:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_080064D4

	THUMB_FUNC_START sub_08006548
sub_08006548: @ 0x08006548
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	mov r12, r1
	mov r10, r3
	ldrh r0, [r2, #28]
	add r0, r0, #32
	add r4, r2, r0
	ldrh r0, [r2, #24]
	lsl r0, r0, #3
	add r5, r4, r0
	cmp r4, r5
	bcs _080065A2
	ldr r0, _080065B0  @ =0x030008E8
	mov r9, r0
	mov r6, #31
_0800656E:
	mov r7, #6
	ldrsh r2, [r4, r7]
	add r2, r2, r12
	mov r0, #4
	ldrsh r3, [r4, r0]
	add r3, r3, r8
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
	add r1, r1, r10
	ldrh r0, [r4]
	strh r0, [r1]
	add r4, r4, #8
	cmp r4, r5
	bcc _0800656E
_080065A2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080065B0:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_08006548

	THUMB_FUNC_START sub_080065B4
sub_080065B4: @ 0x080065B4
	push {r4-r7,lr}
	add r4, r0, #0
	add r7, r3, #0
	ldr r0, [sp, #24]
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldrh r0, [r2, #2]
	add r5, r1, r0
	ldrh r0, [r2]
	add r3, r4, r0
_080065C8:
	cmp r1, r5
	bge _080065EE
	add r0, r1, #0
	ldr r2, [sp, #20]
	lsl r0, r0, r2
	add r0, r0, r4
	add r2, r4, #0
	add r1, r1, #1
	cmp r2, r3
	bge _080065C8
	sub r2, r3, r2
	lsl r0, r0, #1
	add r0, r0, r7
_080065E2:
	strh r6, [r0]
	sub r2, r2, #1
	add r0, r0, #2
	cmp r2, #0
	bne _080065E2
	b _080065C8
_080065EE:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080065B4

	THUMB_FUNC_START sub_080065F4
sub_080065F4: @ 0x080065F4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r10, r0
	add r5, r1, #0
	mov r8, r2
	str r3, [sp]
	ldr r0, [sp, #44]
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp, #4]
	mov r0, r10
	ldr r1, [r0, #4]
	add r8, r8, r1
	ldr r0, [r0]
	add r5, r5, r0
	cmp r1, r8
	bge _08006668
_0800661E:
	mov r2, r10
	ldr r3, [r2]
	add r0, r1, #1
	mov r12, r0
	cmp r3, r5
	bge _08006662
	asr r6, r1, #5
	ldr r2, _08006678  @ =0x030008E8
	mov r9, r2
	mov r7, #31
	add r4, r7, #0
	and r4, r4, r1
_08006636:
	mov r1, r9
	ldrb r0, [r1]
	add r0, r0, #5
	add r1, r6, #0
	lsl r1, r1, r0
	add r1, r1, r4
	lsl r1, r1, #5
	asr r2, r3, #5
	lsl r2, r2, #10
	add r0, r3, #0
	and r0, r0, r7
	add r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r2, [sp]
	add r1, r1, r2
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r1]
	add r3, r3, #1
	cmp r3, r5
	blt _08006636
_08006662:
	mov r1, r12
	cmp r1, r8
	blt _0800661E
_08006668:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08006678:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_080065F4

	THUMB_FUNC_START sub_0800667C
sub_0800667C: @ 0x0800667C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	str r0, [sp]
	add r5, r2, #0
	mov r8, r3
	ldr r0, [sp, #44]
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r10, r0
	add r8, r8, r1
	ldr r0, [sp]
	add r5, r5, r0
	cmp r1, r8
	bge _080066E6
_080066A0:
	ldr r3, [sp]
	add r0, r1, #1
	mov r12, r0
	cmp r3, r5
	bge _080066E0
	asr r6, r1, #5
	ldr r0, _080066F8  @ =0x030008E8
	mov r9, r0
	mov r7, #31
	add r4, r7, #0
	and r4, r4, r1
_080066B6:
	mov r1, r9
	ldrb r0, [r1]
	add r0, r0, #5
	add r1, r6, #0
	lsl r1, r1, r0
	add r1, r1, r4
	lsl r1, r1, #5
	asr r2, r3, #5
	lsl r2, r2, #10
	add r0, r3, #0
	and r0, r0, r7
	add r2, r2, r0
	add r1, r1, r2
	lsl r1, r1, #1
	ldr r0, [sp, #36]
	add r1, r1, r0
	mov r0, r10
	strh r0, [r1]
	add r3, r3, #1
	cmp r3, r5
	blt _080066B6
_080066E0:
	mov r1, r12
	cmp r1, r8
	blt _080066A0
_080066E6:
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080066F8:
	.4byte 0x030008E8
	THUMB_FUNC_END sub_0800667C
