	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_0801BAD8
sub_0801BAD8: @ 0x0801BAD8
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _0801BB04  @ =0x03000BEC
	ldrb r3, [r0]
	cmp r3, #0
	beq _0801BB44
	ldr r0, _0801BB08  @ =0x030000B6
	ldrh r0, [r0]
	cmp r0, #60
	bls _0801BB34
	ldr r0, _0801BB0C  @ =0x03000BF4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BB10
	mov r0, #14
	mov r1, #0
	bl sub_080070E8
	b _0801BB34
	.byte 0x00
	.byte 0x00
_0801BB04:
	.4byte 0x03000BEC
_0801BB08:
	.4byte 0x030000B6
_0801BB0C:
	.4byte 0x03000BF4
_0801BB10:
	ldr r0, _0801BB28  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BB2C
	mov r0, #9
	mov r1, #1
	bl sub_080070E8
	b _0801BB34
_0801BB28:
	.4byte gUnknown_03000B80
_0801BB2C:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_0801BB34:
	ldr r1, _0801BB40  @ =0x030000B6
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BB40:
	.4byte 0x030000B6
_0801BB44:
	ldr r2, _0801BB74  @ =gUnknown_030012E8
	ldrh r1, [r2]
	mov r0, #64
	and r0, r0, r1
	add r5, r2, #0
	cmp r0, #0
	beq _0801BB80
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0801BB78  @ =0x030000B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801BB7C
	sub r0, r0, #1
	b _0801BB7E
	.byte 0x00
	.byte 0x00
_0801BB74:
	.4byte gUnknown_030012E8
_0801BB78:
	.4byte 0x030000B4
_0801BB7C:
	mov r0, #2
_0801BB7E:
	strb r0, [r1]
_0801BB80:
	ldrh r1, [r5]
	mov r2, #128
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0801BBB6
	mov r4, #0
	str r4, [sp]
	str r2, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0801BBB0  @ =0x030000B4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _0801BBB4
	add r0, r0, #1
	strb r0, [r1]
	b _0801BBB6
	.byte 0x00
	.byte 0x00
_0801BBB0:
	.4byte 0x030000B4
_0801BBB4:
	strb r4, [r1]
_0801BBB6:
	ldrh r1, [r5]
	mov r2, #9
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #0
	bne _0801BBC4
	b _0801BDE8
_0801BBC4:
	ldr r0, _0801BBD8  @ =0x030000B4
	ldrb r5, [r0]
	cmp r5, #1
	beq _0801BBEC
	cmp r5, #1
	bgt _0801BBDC
	cmp r5, #0
	beq _0801BBE2
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BBD8:
	.4byte 0x030000B4
_0801BBDC:
	cmp r5, #2
	beq _0801BCB4
	b _0801BE1C
_0801BBE2:
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	b _0801BE04
_0801BBEC:
	ldr r0, _0801BC1C  @ =gUnknown_03000BB4
	mov r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _0801BC20
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	bl sub_080720AC
	mov r0, #14
	mov r1, #0
	bl sub_080070E8
	b _0801BE1C
	.byte 0x00
	.byte 0x00
_0801BC1C:
	.4byte gUnknown_03000BB4
_0801BC20:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	neg r0, r0
	bl sub_08014A58
	ldr r0, _0801BC5C  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BC6C
	bl sub_0800F010
	ldr r0, _0801BC60  @ =0x03000BEC
	strb r5, [r0]
	ldr r0, _0801BC64  @ =0x030000B6
	mov r1, #0
	strh r4, [r0]
	ldr r0, _0801BC68  @ =0x03000BF4
	strb r1, [r0]
	b _0801BC96
_0801BC5C:
	.4byte gUnknown_03000BBC
_0801BC60:
	.4byte 0x03000BEC
_0801BC64:
	.4byte 0x030000B6
_0801BC68:
	.4byte 0x03000BF4
_0801BC6C:
	ldr r3, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, _0801BCAC  @ =gUnknown_03000B90
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r0, _0801BCB0  @ =gUnknown_03000BD0
	str r5, [r0]
_0801BC96:
	ldr r0, _0801BCA8  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #21
	orr r1, r1, r2
	str r1, [r0]
_0801BCA2:
	bl sub_080720AC
	b _0801BE1C
_0801BCA8:
	.4byte gUnknown_030019A0
_0801BCAC:
	.4byte gUnknown_03000B90
_0801BCB0:
	.4byte gUnknown_03000BD0
_0801BCB4:
	ldr r0, _0801BD3C  @ =gUnknown_03000B74
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r3, _0801BD40  @ =gUnknown_030019A0
	ldr r0, _0801BD44  @ =gUnknown_03000B90
	ldr r4, [r0, #32]
	mov r2, #15
	and r2, r2, r4
	mov r1, #18
	ldrsh r0, [r0, r1]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	ldr r0, _0801BD48  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r7, r0, #0
	cmp r1, #0
	bne _0801BCEE
	asr r6, r6, #1
	and r4, r4, r5
	cmp r4, #0
	beq _0801BCEE
	mov r6, #7
_0801BCEE:
	mov r0, #0
	ldrsb r0, [r7, r0]
	ldr r1, _0801BD4C  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	add r2, r6, #0
	add r3, sp, #12
	bl sub_0800FE2C
	add r4, r0, #0
	cmp r4, #0
	bne _0801BD14
	ldr r0, _0801BD50  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0801BD5E
_0801BD14:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldrb r0, [r7]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0801BD54
	mov r0, #9
	b _0801BD56
	.byte 0x00
	.byte 0x00
_0801BD3C:
	.4byte gUnknown_03000B74
_0801BD40:
	.4byte gUnknown_030019A0
_0801BD44:
	.4byte gUnknown_03000B90
_0801BD48:
	.4byte gUnknown_03000B80
_0801BD4C:
	.4byte gUnknown_03000B58
_0801BD50:
	.4byte gUnknown_03000BB4
_0801BD54:
	mov r0, #8
_0801BD56:
	mov r1, #1
	bl sub_080070E8
	b _0801BCA2
_0801BD5E:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #114
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #1
	neg r0, r0
	bl sub_08014A58
	ldr r0, _0801BD9C  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	ble _0801BDAC
	bl sub_0800F010
	ldr r0, _0801BDA0  @ =0x03000BEC
	mov r1, #1
	strb r1, [r0]
	ldr r0, _0801BDA4  @ =0x030000B6
	strh r4, [r0]
	ldr r0, _0801BDA8  @ =0x03000BF4
	strb r1, [r0]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BD9C:
	.4byte gUnknown_03000BBC
_0801BDA0:
	.4byte 0x03000BEC
_0801BDA4:
	.4byte 0x030000B6
_0801BDA8:
	.4byte 0x03000BF4
_0801BDAC:
	ldr r3, _0801BDDC  @ =gUnknown_030019A0
	ldr r1, _0801BDE0  @ =gUnknown_03000B90
	ldr r2, [r1, #32]
	mov r0, #15
	and r2, r2, r0
	mov r4, #18
	ldrsh r0, [r1, r4]
	lsl r0, r0, #8
	mov r1, #128
	lsl r1, r1, #21
	orr r0, r0, r1
	orr r2, r2, r0
	ldr r0, [r3]
	orr r0, r0, r2
	str r0, [r3]
	mov r0, #20
	mov r1, #1
	bl sub_080070E8
	ldr r1, _0801BDE4  @ =gUnknown_03000BD0
	mov r0, #1
	str r0, [r1]
	b _0801BCA2
	.byte 0x00
	.byte 0x00
_0801BDDC:
	.4byte gUnknown_030019A0
_0801BDE0:
	.4byte gUnknown_03000B90
_0801BDE4:
	.4byte gUnknown_03000BD0
_0801BDE8:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0801BE1C
	ldr r0, _0801BE2C  @ =gUnknown_030012E0
	ldrh r0, [r0]
	add r1, r2, #0
	and r1, r1, r0
	cmp r1, #0
	bne _0801BE1C
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
_0801BE04:
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
	bl sub_08072118
_0801BE1C:
	ldr r0, _0801BE30  @ =0x030000B4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add sp, sp, #16
	pop {r4-r7}
	pop {r1}
	bx r1
_0801BE2C:
	.4byte gUnknown_030012E0
_0801BE30:
	.4byte 0x030000B4
	THUMB_FUNC_END sub_0801BAD8

	THUMB_FUNC_START sub_0801BE34
sub_0801BE34: @ 0x0801BE34
	push {lr}
	ldr r0, _0801BE60  @ =0x030000B4
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0801BE64  @ =0x03000BF0
	ldr r0, _0801BE68  @ =gUnknown_03000B58
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801BE6C  @ =0x03000BF8
	ldr r0, _0801BE70  @ =gUnknown_03000B74
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801BE74  @ =0x03000BEC
	strb r2, [r0]
	ldr r1, _0801BE78  @ =0x030000B6
	mov r0, #0
	strh r0, [r1]
	bl sub_0800F02C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801BE60:
	.4byte 0x030000B4
_0801BE64:
	.4byte 0x03000BF0
_0801BE68:
	.4byte gUnknown_03000B58
_0801BE6C:
	.4byte 0x03000BF8
_0801BE70:
	.4byte gUnknown_03000B74
_0801BE74:
	.4byte 0x03000BEC
_0801BE78:
	.4byte 0x030000B6
	THUMB_FUNC_END sub_0801BE34

	THUMB_FUNC_START sub_0801BE7C
sub_0801BE7C: @ 0x0801BE7C
	push {lr}
	bl sub_080331FC
	bl sub_0801BAD8
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	beq _0801BEA6
	cmp r0, #1
	bgt _0801BE98
	cmp r0, #0
	beq _0801BE9E
	b _0801BEB4
_0801BE98:
	cmp r0, #2
	beq _0801BEAE
	b _0801BEB4
_0801BE9E:
	mov r0, #0
	bl sub_0800F070
	b _0801BEB4
_0801BEA6:
	mov r0, #1
	bl sub_0800F070
	b _0801BEB4
_0801BEAE:
	mov r0, #2
	bl sub_0800F070
_0801BEB4:
	bl sub_0800CC6C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BE7C

	THUMB_FUNC_START sub_0801BEBC
sub_0801BEBC: @ 0x0801BEBC
	push {lr}
	bl sub_080088F0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BEBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BEC8
sub_0801BEC8: @ 0x0801BEC8
	push {lr}
	bl sub_0800F060
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801BEC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801BED4
sub_0801BED4: @ 0x0801BED4
	ldr r0, _0801BEF8  @ =0x030000B4
	mov r2, #0
	strb r2, [r0]
	ldr r1, _0801BEFC  @ =0x03000BF0
	ldr r0, _0801BF00  @ =gUnknown_03000B58
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _0801BF04  @ =0x03000BF8
	ldr r0, _0801BF08  @ =gUnknown_03000B74
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _0801BF0C  @ =0x03000BEC
	strb r2, [r0]
	ldr r1, _0801BF10  @ =0x030000B6
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0801BEF8:
	.4byte 0x030000B4
_0801BEFC:
	.4byte 0x03000BF0
_0801BF00:
	.4byte gUnknown_03000B58
_0801BF04:
	.4byte 0x03000BF8
_0801BF08:
	.4byte gUnknown_03000B74
_0801BF0C:
	.4byte 0x03000BEC
_0801BF10:
	.4byte 0x030000B6
	THUMB_FUNC_END sub_0801BED4

	THUMB_FUNC_START sub_0801BF14
sub_0801BF14: @ 0x0801BF14
	push {r4-r6,lr}
	sub sp, sp, #36
	mov r0, #0
	bl sub_08034898
	ldr r0, _0801BFAC  @ =gUnknown_030012A0
	mov r5, #0
	strh r5, [r0]
	ldr r0, _0801BFB0  @ =gUnknown_03001710
	strh r5, [r0]
	ldr r1, _0801BFB4  @ =gUnknown_030009D8
	ldr r0, _0801BFB8  @ =0x030000C6
	strb r5, [r0]
	strh r5, [r1]
	ldr r6, _0801BFBC  @ =0x030000C4
	ldr r0, _0801BFC0  @ =0x030000C5
	strb r5, [r0]
	strb r5, [r6]
	ldr r4, _0801BFC4  @ =gUnknown_03000BBC
	bl sub_08014A34
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801BFE0
	mov r0, #15
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	mov r0, #1
	strb r0, [r6]
	ldr r0, _0801BFC8  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801BF64
	bl sub_0801C1F0
_0801BF64:
	ldr r1, _0801BFCC  @ =0x030000C0
	mov r0, #50
	strb r0, [r1]
	ldr r0, _0801BFD0  @ =0x030000C2
	strb r5, [r0]
	ldr r1, _0801BFD4  @ =0x030000C3
	ldr r0, _0801BFD8  @ =gUnknown_085DED1C
	ldrb r0, [r0, #1]
	strb r0, [r1]
	add r0, sp, #16
	mov r1, #0
	str r1, [sp, #16]
	str r1, [r0, #4]
	ldr r4, _0801BFDC  @ =gUnknown_08829B18
	str r4, [r0, #8]
	str r4, [r0, #12]
	mov r1, #3
	bl sub_08032F24
	mov r0, #6
	mov r1, #3
	bl sub_08032788
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #194
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	b _0801C1B4
	.byte 0x00
	.byte 0x00
_0801BFAC:
	.4byte gUnknown_030012A0
_0801BFB0:
	.4byte gUnknown_03001710
_0801BFB4:
	.4byte gUnknown_030009D8
_0801BFB8:
	.4byte 0x030000C6
_0801BFBC:
	.4byte 0x030000C4
_0801BFC0:
	.4byte 0x030000C5
_0801BFC4:
	.4byte gUnknown_03000BBC
_0801BFC8:
	.4byte gUnknown_03000BB4
_0801BFCC:
	.4byte 0x030000C0
_0801BFD0:
	.4byte 0x030000C2
_0801BFD4:
	.4byte 0x030000C3
_0801BFD8:
	.4byte gUnknown_085DED1C
_0801BFDC:
	.4byte gUnknown_08829B18
_0801BFE0:
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	ldr r0, _0801C014  @ =0x030000C7
	strb r5, [r0]
	ldr r1, _0801C018  @ =0x030000C8
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0801C01C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C0B0
	ldr r0, _0801C020  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bhi _0801C0A0
	lsl r0, r0, #2
	ldr r1, _0801C024  @ =0x0801C028
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C014:
	.4byte 0x030000C7
_0801C018:
	.4byte 0x030000C8
_0801C01C:
	.4byte gUnknown_03000B80
_0801C020:
	.4byte gUnknown_03000B90
_0801C024:
	.4byte _0801C028
_0801C028:
	.4byte _0801C040
	.4byte _0801C050
	.4byte _0801C060
	.4byte _0801C070
	.4byte _0801C080
	.4byte _0801C090
_0801C040:
	ldr r0, _0801C048  @ =gUnknown_087E21D0
	str r0, [sp]
	ldr r0, _0801C04C  @ =gUnknown_087E4B48
	b _0801C13E
_0801C048:
	.4byte gUnknown_087E21D0
_0801C04C:
	.4byte gUnknown_087E4B48
_0801C050:
	ldr r0, _0801C058  @ =gUnknown_087E88DC
	str r0, [sp]
	ldr r0, _0801C05C  @ =gUnknown_087EB618
	b _0801C13E
_0801C058:
	.4byte gUnknown_087E88DC
_0801C05C:
	.4byte gUnknown_087EB618
_0801C060:
	ldr r0, _0801C068  @ =gUnknown_087EF674
	str r0, [sp]
	ldr r0, _0801C06C  @ =gUnknown_087F1714
	b _0801C13E
_0801C068:
	.4byte gUnknown_087EF674
_0801C06C:
	.4byte gUnknown_087F1714
_0801C070:
	ldr r0, _0801C078  @ =gUnknown_087F52DC
	str r0, [sp]
	ldr r0, _0801C07C  @ =gUnknown_087F6CF0
	b _0801C13E
_0801C078:
	.4byte gUnknown_087F52DC
_0801C07C:
	.4byte gUnknown_087F6CF0
_0801C080:
	ldr r0, _0801C088  @ =gUnknown_087FB054
	str r0, [sp]
	ldr r0, _0801C08C  @ =gUnknown_087FD5AC
	b _0801C13E
_0801C088:
	.4byte gUnknown_087FB054
_0801C08C:
	.4byte gUnknown_087FD5AC
_0801C090:
	ldr r0, _0801C098  @ =gUnknown_08801ABC
	str r0, [sp]
	ldr r0, _0801C09C  @ =gUnknown_088034AC
	b _0801C13E
_0801C098:
	.4byte gUnknown_08801ABC
_0801C09C:
	.4byte gUnknown_088034AC
_0801C0A0:
	ldr r0, _0801C0A8  @ =gUnknown_08801ABC
	str r0, [sp]
	ldr r0, _0801C0AC  @ =gUnknown_088034AC
	b _0801C13E
_0801C0A8:
	.4byte gUnknown_08801ABC
_0801C0AC:
	.4byte gUnknown_088034AC
_0801C0B0:
	cmp r0, #1
	bne _0801C140
	ldr r0, _0801C0C8  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	cmp r0, #5
	bhi _0801C138
	lsl r0, r0, #2
	ldr r1, _0801C0CC  @ =0x0801C0D0
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0801C0C8:
	.4byte gUnknown_03000B90
_0801C0CC:
	.4byte _0801C0D0
_0801C0D0:
	.4byte _0801C0E8
	.4byte _0801C0F8
	.4byte _0801C108
	.4byte _0801C118
	.4byte _0801C128
	.4byte _0801C138
_0801C0E8:
	ldr r0, _0801C0F0  @ =gUnknown_088076D4
	str r0, [sp]
	ldr r0, _0801C0F4  @ =gUnknown_088095E0
	b _0801C13E
_0801C0F0:
	.4byte gUnknown_088076D4
_0801C0F4:
	.4byte gUnknown_088095E0
_0801C0F8:
	ldr r0, _0801C100  @ =gUnknown_0880D09C
	str r0, [sp]
	ldr r0, _0801C104  @ =gUnknown_0880F0A4
	b _0801C13E
_0801C100:
	.4byte gUnknown_0880D09C
_0801C104:
	.4byte gUnknown_0880F0A4
_0801C108:
	ldr r0, _0801C110  @ =gUnknown_088133F0
	str r0, [sp]
	ldr r0, _0801C114  @ =gUnknown_08814E6C
	b _0801C13E
_0801C110:
	.4byte gUnknown_088133F0
_0801C114:
	.4byte gUnknown_08814E6C
_0801C118:
	ldr r0, _0801C120  @ =gUnknown_088184BC
	str r0, [sp]
	ldr r0, _0801C124  @ =gUnknown_0881A270
	b _0801C13E
_0801C120:
	.4byte gUnknown_088184BC
_0801C124:
	.4byte gUnknown_0881A270
_0801C128:
	ldr r0, _0801C130  @ =gUnknown_0881E02C
	str r0, [sp]
	ldr r0, _0801C134  @ =gUnknown_0881FE98
	b _0801C13E
_0801C130:
	.4byte gUnknown_0881E02C
_0801C134:
	.4byte gUnknown_0881FE98
_0801C138:
	ldr r0, _0801C170  @ =gUnknown_08823B74
	str r0, [sp]
	ldr r0, _0801C174  @ =gUnknown_08825F04
_0801C13E:
	str r0, [sp, #4]
_0801C140:
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #0
	bl sub_08032F24
	ldr r0, _0801C178  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C184
	ldr r1, _0801C17C  @ =gUnknown_08079778
	ldr r0, _0801C180  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl sub_08032788
	b _0801C19C
_0801C170:
	.4byte gUnknown_08823B74
_0801C174:
	.4byte gUnknown_08825F04
_0801C178:
	.4byte gUnknown_03000B80
_0801C17C:
	.4byte gUnknown_08079778
_0801C180:
	.4byte gUnknown_03000B90
_0801C184:
	cmp r0, #1
	bne _0801C19C
	ldr r1, _0801C1D8  @ =gUnknown_08079790
	ldr r0, _0801C1DC  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	mov r1, #1
	bl sub_08032788
_0801C19C:
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #154
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r2, _0801C1E0  @ =gUnknown_087E21D0
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl sub_08029CDC
_0801C1B4:
	add r2, sp, #32
	mov r0, #160
	strh r0, [r2]
	ldr r1, _0801C1E4  @ =0x040000D4
	str r2, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801C1E8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801C1EC  @ =0x030000C1
	mov r0, #0
	strb r0, [r1]
	add sp, sp, #36
	pop {r4-r6}
	pop {r0}
	bx r0
_0801C1D8:
	.4byte gUnknown_08079790
_0801C1DC:
	.4byte gUnknown_03000B90
_0801C1E0:
	.4byte gUnknown_087E21D0
_0801C1E4:
	.4byte 0x040000D4
_0801C1E8:
	.4byte 0x81000100
_0801C1EC:
	.4byte 0x030000C1
	THUMB_FUNC_END sub_0801BF14

	THUMB_FUNC_START sub_0801C1F0
sub_0801C1F0: @ 0x0801C1F0
	push {r4,r5,lr}
	ldr r1, _0801C264  @ =gUnknown_03000BBC
	mov r0, #5
	strb r0, [r1]
	mov r0, #5
	bl sub_080149F8
	ldr r5, _0801C268  @ =gUnknown_03000B80
	mov r0, #0
	ldrsb r0, [r5, r0]
	ldr r1, _0801C26C  @ =gUnknown_03000B58
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	mov r2, #0
	bl sub_080103C8
	cmp r0, #0
	bne _0801C25E
	ldr r4, _0801C270  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0801C250
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0801C23C
	ldr r2, _0801C274  @ =gUnknown_03000B74
	ldrb r1, [r2]
	mov r0, #2
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	lsl r0, r0, #24
	asr r0, r0, #24
	strh r0, [r4, #16]
_0801C23C:
	mov r1, #18
	ldrsh r0, [r4, r1]
	mov r2, #16
	ldrsh r1, [r4, r2]
	bl sub_0800F6EC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_08004428
_0801C250:
	ldr r1, _0801C270  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r1, r2]
	mov r2, #16
	ldrsh r1, [r1, r2]
	bl sub_08010A3C
_0801C25E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C264:
	.4byte gUnknown_03000BBC
_0801C268:
	.4byte gUnknown_03000B80
_0801C26C:
	.4byte gUnknown_03000B58
_0801C270:
	.4byte gUnknown_03000B90
_0801C274:
	.4byte gUnknown_03000B74
	THUMB_FUNC_END sub_0801C1F0

	THUMB_FUNC_START sub_0801C278
sub_0801C278: @ 0x0801C278
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08029C20
	bl sub_080331FC
	ldr r0, _0801C328  @ =0x030000C6
	ldrb r1, [r0]
	add r1, r1, #1
	strb r1, [r0]
	ldr r0, _0801C32C  @ =0x030000C4
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801C296
	b _0801C3A8
_0801C296:
	ldr r4, _0801C330  @ =gUnknown_030009D8
	ldrh r1, [r4]
	ldr r0, _0801C334  @ =0x0000270F
	cmp r1, r0
	bhi _0801C2A4
	add r0, r1, #1
	strh r0, [r4]
_0801C2A4:
	ldr r5, _0801C338  @ =gUnknown_030012E8
	ldrh r1, [r5]
	mov r0, #48
	and r0, r0, r1
	cmp r0, #0
	beq _0801C2D0
	ldr r2, _0801C33C  @ =0x030000C1
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C2D0:
	ldrh r3, [r4]
	cmp r3, #120
	bne _0801C2E6
	mov r0, #128
	lsl r0, r0, #19
	ldrh r1, [r0]
	mov r4, #128
	lsl r4, r4, #3
	add r2, r4, #0
	orr r1, r1, r2
	strh r1, [r0]
_0801C2E6:
	ldrh r1, [r5]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C358
	cmp r3, #120
	bls _0801C358
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0801C33C  @ =0x030000C1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801C378
	bl sub_080720AC
	ldr r0, _0801C340  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0801C344
	mov r0, #24
	b _0801C38A
	.byte 0x00
	.byte 0x00
_0801C328:
	.4byte 0x030000C6
_0801C32C:
	.4byte 0x030000C4
_0801C330:
	.4byte gUnknown_030009D8
_0801C334:
	.4byte 0x0000270F
_0801C338:
	.4byte gUnknown_030012E8
_0801C33C:
	.4byte 0x030000C1
_0801C340:
	.4byte gUnknown_03000BB4
_0801C344:
	ldr r0, _0801C350  @ =0x030000C5
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C354
	mov r0, #8
	b _0801C38A
_0801C350:
	.4byte 0x030000C5
_0801C354:
	mov r0, #13
	b _0801C38A
_0801C358:
	ldr r0, _0801C394  @ =gUnknown_030009D8
	ldrh r1, [r0]
	ldr r0, _0801C398  @ =0x0000270F
	cmp r1, r0
	bls _0801C408
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C378:
	bl sub_080720AC
	ldr r0, _0801C39C  @ =gUnknown_03000B58
	strb r4, [r0]
	ldr r0, _0801C3A0  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, _0801C3A4  @ =gUnknown_03000B80
	strb r4, [r0]
	mov r0, #7
_0801C38A:
	mov r1, #1
	bl sub_080070E8
	b _0801C408
	.byte 0x00
	.byte 0x00
_0801C394:
	.4byte gUnknown_030009D8
_0801C398:
	.4byte 0x0000270F
_0801C39C:
	.4byte gUnknown_03000B58
_0801C3A0:
	.4byte gUnknown_03000B74
_0801C3A4:
	.4byte gUnknown_03000B80
_0801C3A8:
	ldr r2, _0801C414  @ =gUnknown_030009D8
	ldrh r1, [r2]
	mov r0, #250
	lsl r0, r0, #2
	cmp r1, r0
	bhi _0801C3B8
	add r0, r1, #1
	strh r0, [r2]
_0801C3B8:
	ldr r0, _0801C418  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C41C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C408
	ldr r0, _0801C420  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #40
	bne _0801C408
	bl sub_080720AC
	ldr r1, _0801C424  @ =gUnknown_0807976C
	ldr r0, _0801C428  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r0, [r0, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08071E14
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #21
	mov r1, #1
	bl sub_080070E8
_0801C408:
	bl sub_08008238
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0801C414:
	.4byte gUnknown_030009D8
_0801C418:
	.4byte gUnknown_030012E8
_0801C41C:
	.4byte 0x030000C7
_0801C420:
	.4byte 0x030000C8
_0801C424:
	.4byte gUnknown_0807976C
_0801C428:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END sub_0801C278

	THUMB_FUNC_START sub_0801C42C
sub_0801C42C: @ 0x0801C42C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r4, _0801C4E8  @ =0x040000D4
	ldr r2, _0801C4EC  @ =gUnknown_085DED1C
	ldr r7, _0801C4F0  @ =0x030000C2
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C4F4  @ =gUnknown_085DEFAC
	add r0, r0, r1
	str r0, [r4]
	ldr r5, _0801C4F8  @ =gUnknown_0300192C
	ldrh r0, [r5]
	ldr r1, _0801C4FC  @ =0x06010000
	mov r12, r1
	add r0, r0, r12
	str r0, [r4, #4]
	ldr r0, _0801C500  @ =0x84000020
	mov r10, r0
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _0801C504  @ =0x030000B8
	mov r9, r1
	ldr r0, _0801C508  @ =gUnknown_03001930
	mov r8, r0
	ldrh r2, [r0]
	strh r2, [r1]
	add r2, r2, #4
	strh r2, [r0]
	ldrh r3, [r5]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C50C  @ =gUnknown_085DF3AC
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C510  @ =gUnknown_085DF63C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r1, r10
	str r1, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r9
	strh r2, [r0, #2]
	add r2, r2, #4
	mov r1, r8
	strh r2, [r1]
	add r3, r3, #128
	strh r3, [r5]
	ldr r6, _0801C514  @ =gUnknown_085DFA3C
	ldrb r1, [r7]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r6
	ldrb r0, [r0]
	lsl r0, r0, #7
	ldr r1, _0801C518  @ =gUnknown_085DFCCC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5]
	add r0, r0, r12
	str r0, [r4, #4]
	mov r0, r10
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r1, r9
	strh r2, [r1, #4]
	add r2, r2, #4
	mov r0, r8
	strh r2, [r0]
	add r3, r3, #128
	strh r3, [r5]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801C4E8:
	.4byte 0x040000D4
_0801C4EC:
	.4byte gUnknown_085DED1C
_0801C4F0:
	.4byte 0x030000C2
_0801C4F4:
	.4byte gUnknown_085DEFAC
_0801C4F8:
	.4byte gUnknown_0300192C
_0801C4FC:
	.4byte 0x06010000
_0801C500:
	.4byte 0x84000020
_0801C504:
	.4byte 0x030000B8
_0801C508:
	.4byte gUnknown_03001930
_0801C50C:
	.4byte gUnknown_085DF3AC
_0801C510:
	.4byte gUnknown_085DF63C
_0801C514:
	.4byte gUnknown_085DFA3C
_0801C518:
	.4byte gUnknown_085DFCCC
	THUMB_FUNC_END sub_0801C42C

	THUMB_FUNC_START sub_0801C51C
sub_0801C51C: @ 0x0801C51C
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	mov r1, #0
	ldrsh r2, [r0, r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _0801C5BC  @ =gUnknown_086593A0
	add r1, r1, r2
	ldr r2, _0801C5C0  @ =0x040000D4
	ldr r1, [r1, #16]
	str r1, [r2]
	ldr r6, _0801C5C4  @ =0x030000BE
	ldrh r1, [r6]
	lsl r1, r1, #3
	ldr r3, _0801C5C8  @ =gOamData
	mov r8, r3
	add r1, r1, r8
	str r1, [r2, #4]
	ldr r1, _0801C5CC  @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldr r2, _0801C5D0  @ =0x030000B8
	ldrh r1, [r0, #2]
	lsl r1, r1, #1
	add r1, r1, r2
	ldrh r1, [r1]
	ldr r2, _0801C5D4  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _0801C5D8  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r8
	ldrb r2, [r3, #1]
	mov r4, #13
	neg r4, r4
	add r1, r4, #0
	and r1, r1, r2
	mov r2, #4
	orr r1, r1, r2
	strb r1, [r3, #1]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r8
	ldrb r5, [r0, #4]
	ldrh r3, [r2, #2]
	ldr r1, _0801C5DC  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r5
	strh r1, [r2, #2]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r0, #5]
	strb r0, [r1]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r8
	ldrb r0, [r1, #5]
	and r4, r4, r0
	mov r0, #8
	orr r4, r4, r0
	strb r4, [r1, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C5BC:
	.4byte gUnknown_086593A0
_0801C5C0:
	.4byte 0x040000D4
_0801C5C4:
	.4byte 0x030000BE
_0801C5C8:
	.4byte gOamData
_0801C5CC:
	.4byte 0x84000002
_0801C5D0:
	.4byte 0x030000B8
_0801C5D4:
	.4byte 0x000003FF
_0801C5D8:
	.4byte 0xFFFFFC00
_0801C5DC:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0801C51C

	THUMB_FUNC_START sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r2, r2, #16
	lsr r2, r2, #16
	mov r12, r2
	ldr r2, _0801C6CC  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r0, r2
	lsl r2, r2, #5
	str r2, [sp]
	mov r2, #255
	ldr r3, [sp]
	and r3, r3, r2
	str r3, [sp]
	ldr r4, _0801C6D0  @ =0x040000D4
	ldr r3, _0801C6D4  @ =gUnknown_085F61B4
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r3
	ldrb r2, [r2]
	lsl r2, r2, #7
	ldr r3, _0801C6D8  @ =gUnknown_085F6390
	add r2, r2, r3
	str r2, [r4]
	ldr r7, _0801C6DC  @ =gUnknown_0300192C
	mov r10, r7
	mov r3, r10
	ldrh r2, [r3]
	ldr r3, _0801C6E0  @ =0x06010000
	add r2, r2, r3
	str r2, [r4, #4]
	ldr r2, _0801C6E4  @ =0x84000020
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldr r2, _0801C6E8  @ =gUnknown_085F6388
	str r2, [r4]
	ldr r7, _0801C6EC  @ =0x030000BE
	mov r8, r7
	mov r3, r8
	ldrh r2, [r3]
	lsl r2, r2, #3
	ldr r6, _0801C6F0  @ =gOamData
	add r2, r2, r6
	str r2, [r4, #4]
	ldr r2, _0801C6F4  @ =0x84000002
	str r2, [r4, #8]
	ldr r2, [r4, #8]
	ldrh r4, [r3]
	lsl r4, r4, #3
	add r4, r4, r6
	ldrh r5, [r4, #4]
	lsl r3, r5, #22
	ldr r7, _0801C6F8  @ =gUnknown_03001930
	mov r9, r7
	lsr r3, r3, #22
	mov r2, r9
	ldrh r2, [r2]
	add r3, r3, r2
	ldr r7, _0801C6FC  @ =0x000003FF
	and r3, r3, r7
	ldr r2, _0801C700  @ =0xFFFFFC00
	and r2, r2, r5
	orr r2, r2, r3
	strh r2, [r4, #4]
	mov r2, r8
	ldrh r3, [r2]
	lsl r3, r3, #3
	add r3, r3, r6
	lsl r1, r1, #16
	ldr r2, _0801C704  @ =gUnknown_080797B8
	add r0, r0, r2
	asr r1, r1, #16
	ldrb r0, [r0]
	add r1, r1, r0
	ldr r7, _0801C708  @ =0x000001FF
	add r0, r7, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0801C70C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, _0801C710  @ =0x030000C7
	ldrb r0, [r0]
	mov r5, r10
	mov r3, r8
	mov r4, r9
	cmp r0, #0
	beq _0801C71C
	ldr r0, _0801C714  @ =0x030000C8
	ldrb r0, [r0]
	cmp r0, #29
	bls _0801C71C
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldr r2, _0801C718  @ =gUnknown_08076AD8
	ldr r7, [sp]
	lsl r0, r7, #1
	add r0, r0, r2
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r0, r0, #23
	mov r2, r12
	sub r0, r2, r0
	strb r0, [r1]
	b _0801C726
	.byte 0x00
	.byte 0x00
_0801C6CC:
	.4byte 0x030000C6
_0801C6D0:
	.4byte 0x040000D4
_0801C6D4:
	.4byte gUnknown_085F61B4
_0801C6D8:
	.4byte gUnknown_085F6390
_0801C6DC:
	.4byte gUnknown_0300192C
_0801C6E0:
	.4byte 0x06010000
_0801C6E4:
	.4byte 0x84000020
_0801C6E8:
	.4byte gUnknown_085F6388
_0801C6EC:
	.4byte 0x030000BE
_0801C6F0:
	.4byte gOamData
_0801C6F4:
	.4byte 0x84000002
_0801C6F8:
	.4byte gUnknown_03001930
_0801C6FC:
	.4byte 0x000003FF
_0801C700:
	.4byte 0xFFFFFC00
_0801C704:
	.4byte gUnknown_080797B8
_0801C708:
	.4byte 0x000001FF
_0801C70C:
	.4byte 0xFFFFFE00
_0801C710:
	.4byte 0x030000C7
_0801C714:
	.4byte 0x030000C8
_0801C718:
	.4byte gUnknown_08076AD8
_0801C71C:
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r6
	mov r7, r12
	strb r7, [r0]
_0801C726:
	ldrh r1, [r3]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	ldrh r0, [r5]
	add r0, r0, #128
	strh r0, [r5]
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C5E0

	THUMB_FUNC_START sub_0801C758
sub_0801C758: @ 0x0801C758
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	lsl r0, r0, #24
	lsr r0, r0, #24
	lsl r1, r1, #24
	lsr r1, r1, #24
	ldr r2, _0801C814  @ =0x030000C6
	ldrb r3, [r2]
	lsr r3, r3, #2
	lsl r2, r3, #8
	sub r2, r2, r3
	add r2, r1, r2
	lsl r2, r2, #6
	mov r12, r2
	mov r2, #255
	mov r3, r12
	and r3, r3, r2
	mov r12, r3
	ldr r3, _0801C818  @ =0x040000D4
	ldr r4, _0801C81C  @ =gUnknown_080C87B0
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #2
	add r2, r2, r4
	ldrb r0, [r2]
	lsl r0, r0, #7
	ldr r2, _0801C820  @ =gUnknown_080C8E30
	add r0, r0, r2
	str r0, [r3]
	ldr r7, _0801C824  @ =gUnknown_0300192C
	mov r9, r7
	mov r2, r9
	ldrh r0, [r2]
	ldr r2, _0801C828  @ =0x06010000
	add r0, r0, r2
	str r0, [r3, #4]
	ldr r0, _0801C82C  @ =0x84000020
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0801C830  @ =gUnknown_080C8E28
	str r0, [r3]
	ldr r6, _0801C834  @ =0x030000BE
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801C838  @ =gOamData
	add r0, r0, r5
	str r0, [r3, #4]
	ldr r0, _0801C83C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r4, [r3, #4]
	lsl r2, r4, #22
	ldr r7, _0801C840  @ =gUnknown_03001930
	mov r8, r7
	lsr r2, r2, #22
	mov r0, r8
	ldrh r0, [r0]
	add r2, r2, r0
	ldr r7, _0801C844  @ =0x000003FF
	add r0, r7, #0
	and r2, r2, r0
	ldr r0, _0801C848  @ =0xFFFFFC00
	and r0, r0, r4
	orr r0, r0, r2
	strh r0, [r3, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r0, _0801C84C  @ =gUnknown_080797A8
	add r1, r1, r0
	ldrb r3, [r1]
	ldrh r1, [r2, #2]
	ldr r0, _0801C850  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r3
	strh r0, [r2, #2]
	ldr r0, _0801C854  @ =0x030000C0
	ldrb r2, [r0]
	mov r4, r9
	mov r3, r8
	cmp r2, #0
	beq _0801C858
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, #33
	sub r0, r0, r2
	strb r0, [r1]
	b _0801C872
_0801C814:
	.4byte 0x030000C6
_0801C818:
	.4byte 0x040000D4
_0801C81C:
	.4byte gUnknown_080C87B0
_0801C820:
	.4byte gUnknown_080C8E30
_0801C824:
	.4byte gUnknown_0300192C
_0801C828:
	.4byte 0x06010000
_0801C82C:
	.4byte 0x84000020
_0801C830:
	.4byte gUnknown_080C8E28
_0801C834:
	.4byte 0x030000BE
_0801C838:
	.4byte gOamData
_0801C83C:
	.4byte 0x84000002
_0801C840:
	.4byte gUnknown_03001930
_0801C844:
	.4byte 0x000003FF
_0801C848:
	.4byte 0xFFFFFC00
_0801C84C:
	.4byte gUnknown_080797A8
_0801C850:
	.4byte 0xFFFFFE00
_0801C854:
	.4byte 0x030000C0
_0801C858:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801C8B4  @ =gUnknown_08076AD8
	mov r7, r12
	lsl r0, r7, #1
	add r0, r0, r1
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #23
	mov r0, #33
	sub r0, r0, r1
	strb r0, [r2]
_0801C872:
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #144
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r3]
	add r0, r0, #4
	strh r0, [r3]
	ldrh r0, [r4]
	add r0, r0, #128
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801C8B4:
	.4byte gUnknown_08076AD8
	THUMB_FUNC_END sub_0801C758

	THUMB_FUNC_START sub_0801C8B8
sub_0801C8B8: @ 0x0801C8B8
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r0, _0801C8CC  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0801C8D4
	ldr r0, _0801C8D0  @ =gUnknown_080797C8
	b _0801C8D6
_0801C8CC:
	.4byte gUnknown_03000B80
_0801C8D0:
	.4byte gUnknown_080797C8
_0801C8D4:
	ldr r0, _0801C900  @ =gUnknown_080797E0
_0801C8D6:
	ldr r2, _0801C904  @ =gUnknown_03000B90
	mov r3, #18
	ldrsh r1, [r2, r3]
	lsl r1, r1, #2
	add r1, r1, r0
	ldrh r5, [r1]
	ldrh r7, [r1, #2]
	ldr r4, _0801C908  @ =0x030000C7
	ldrb r3, [r4]
	cmp r3, #0
	bne _0801C910
	ldr r1, _0801C90C  @ =0x030000C8
	ldrb r0, [r1]
	sub r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	cmp r0, #0
	bne _0801C946
	add r0, r3, #1
	strb r0, [r4]
	b _0801C946
_0801C900:
	.4byte gUnknown_080797E0
_0801C904:
	.4byte gUnknown_03000B90
_0801C908:
	.4byte 0x030000C7
_0801C90C:
	.4byte 0x030000C8
_0801C910:
	ldr r1, _0801C974  @ =0x030000C8
	ldrb r0, [r1]
	cmp r0, #39
	bhi _0801C946
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #40
	bne _0801C946
	ldr r1, _0801C978  @ =gUnknown_0807976C
	mov r3, #18
	ldrsh r0, [r2, r3]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801C946:
	ldr r0, _0801C97C  @ =0x030000C7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801C980
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C954:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r3, #128
	lsl r3, r3, #9
	add r0, r0, r3
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #12
	ble _0801C954
	b _0801C9A2
	.byte 0x00
	.byte 0x00
_0801C974:
	.4byte 0x030000C8
_0801C978:
	.4byte gUnknown_0807976C
_0801C97C:
	.4byte 0x030000C7
_0801C980:
	mov r4, #0
	lsl r6, r5, #16
	lsl r5, r7, #16
_0801C986:
	lsl r0, r4, #24
	lsr r0, r0, #24
	asr r1, r6, #16
	asr r2, r5, #16
	bl sub_0801C5E0
	lsl r0, r4, #16
	mov r1, #128
	lsl r1, r1, #9
	add r0, r0, r1
	lsr r4, r0, #16
	asr r0, r0, #16
	cmp r0, #5
	ble _0801C986
_0801C9A2:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0801C8B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801C9AC
sub_0801C9AC: @ 0x0801C9AC
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r0, _0801CAC0  @ =0x030000C4
	ldrb r3, [r0]
	cmp r3, #0
	bne _0801C9BA
	b _0801CB00
_0801C9BA:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CAC4  @ =0x040000D4
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CAC8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CACC  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801CAD0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r3, _0801CAD4  @ =gUnknown_03001930
	ldr r2, _0801CAD8  @ =gUnknown_0300192C
	ldr r1, _0801CADC  @ =0x030000BE
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	strh r0, [r3]
	ldr r0, _0801CAE0  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r2, r0, #0
	cmp r1, #59
	bls _0801CA2A
	mov r1, #0
	ldr r5, _0801CAE4  @ =gUnknown_080797B0
_0801CA00:
	lsl r4, r1, #16
	asr r4, r4, #16
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_0801C758
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801CA00
	ldr r1, _0801CAE8  @ =0x030000C0
	ldrb r0, [r1]
	ldr r2, _0801CAE0  @ =gUnknown_030009D8
	cmp r0, #0
	beq _0801CA2A
	sub r0, r0, #5
	strb r0, [r1]
_0801CA2A:
	ldrh r0, [r2]
	cmp r0, #119
	bhi _0801CA32
	b _0801CB5A
_0801CA32:
	ldr r5, _0801CAEC  @ =gUnknown_08079868
	ldr r4, _0801CAF0  @ =0x030000C1
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r6, [r0]
	bl sub_0801C42C
	ldr r2, _0801CAF4  @ =gUnknown_085DED1C
	ldr r0, _0801CAF8  @ =0x030000C2
	ldrb r1, [r0]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r2, r2, #8
	add r0, r0, r2
	ldr r0, [r0]
	bl sub_0801B2CC
	mov r1, #0
	ldrb r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _0801CA88
_0801CA66:
	lsl r4, r1, #16
	asr r4, r4, #16
	lsl r0, r4, #3
	add r0, r6, r0
	bl sub_0801C51C
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	ldr r0, _0801CAF0  @ =0x030000C1
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r0, r5
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0801CA66
_0801CA88:
	ldr r1, _0801CAF8  @ =0x030000C2
	ldr r2, _0801CAFC  @ =0x030000C3
	ldr r3, _0801CAF4  @ =gUnknown_085DED1C
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bgt _0801CB5A
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #18
	blt _0801CAAC
	mov r0, #0
	strb r0, [r1]
_0801CAAC:
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1, #1]
	strb r0, [r2]
	b _0801CB5A
	.byte 0x00
	.byte 0x00
_0801CAC0:
	.4byte 0x030000C4
_0801CAC4:
	.4byte 0x040000D4
_0801CAC8:
	.4byte 0x81000100
_0801CACC:
	.4byte gOamData
_0801CAD0:
	.4byte 0x85000100
_0801CAD4:
	.4byte gUnknown_03001930
_0801CAD8:
	.4byte gUnknown_0300192C
_0801CADC:
	.4byte 0x030000BE
_0801CAE0:
	.4byte gUnknown_030009D8
_0801CAE4:
	.4byte gUnknown_080797B0
_0801CAE8:
	.4byte 0x030000C0
_0801CAEC:
	.4byte gUnknown_08079868
_0801CAF0:
	.4byte 0x030000C1
_0801CAF4:
	.4byte gUnknown_085DED1C
_0801CAF8:
	.4byte 0x030000C2
_0801CAFC:
	.4byte 0x030000C3
_0801CB00:
	add r1, sp, #12
	mov r0, #160
	strh r0, [r1]
	ldr r1, _0801CB74  @ =0x040000D4
	add r0, sp, #12
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB78  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, #160
	str r0, [sp, #16]
	add r0, sp, #16
	str r0, [r1]
	ldr r0, _0801CB7C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0801CB80  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801CB84  @ =gUnknown_030009D8
	ldrh r4, [r0]
	cmp r4, #119
	bls _0801CB5A
	ldr r2, _0801CB88  @ =gUnknown_03001930
	ldr r1, _0801CB8C  @ =gUnknown_0300192C
	ldr r0, _0801CB90  @ =0x030000BE
	strh r3, [r0]
	strh r3, [r1]
	strh r3, [r2]
	cmp r4, #120
	bne _0801CB56
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #248
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0801CB56:
	bl sub_0801C8B8
_0801CB5A:
	ldr r1, _0801CB74  @ =0x040000D4
	ldr r0, _0801CB7C  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0801CB94  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_0801CB74:
	.4byte 0x040000D4
_0801CB78:
	.4byte 0x81000100
_0801CB7C:
	.4byte gOamData
_0801CB80:
	.4byte 0x85000100
_0801CB84:
	.4byte gUnknown_030009D8
_0801CB88:
	.4byte gUnknown_03001930
_0801CB8C:
	.4byte gUnknown_0300192C
_0801CB90:
	.4byte 0x030000BE
_0801CB94:
	.4byte 0x84000100
	THUMB_FUNC_END sub_0801C9AC

	THUMB_FUNC_START sub_0801CB98
sub_0801CB98: @ 0x0801CB98
	bx lr
	THUMB_FUNC_END sub_0801CB98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0801CB9C
sub_0801CB9C: @ 0x0801CB9C
	push {r4,r5,lr}
	mov r1, #0
	ldr r5, _0801CBD0  @ =gUnknown_080797B0
_0801CBA2:
	lsl r4, r1, #16
	asr r4, r4, #16
	add r0, r4, r5
	ldrb r0, [r0]
	lsl r1, r1, #24
	lsr r1, r1, #24
	bl sub_0801C758
	add r4, r4, #1
	lsl r4, r4, #16
	lsr r1, r4, #16
	asr r4, r4, #16
	cmp r4, #7
	ble _0801CBA2
	ldr r1, _0801CBD4  @ =0x030000C0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801CBCA
	sub r0, r0, #5
	strb r0, [r1]
_0801CBCA:
	pop {r4,r5}
	pop {r0}
	bx r0
_0801CBD0:
	.4byte gUnknown_080797B0
_0801CBD4:
	.4byte 0x030000C0
	THUMB_FUNC_END sub_0801CB9C

	THUMB_FUNC_START sub_0801CBD8
sub_0801CBD8: @ 0x0801CBD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801CEA8  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801CCCE
	ldr r2, _0801CEAC  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	str r0, [r3]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801CED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CCCE:
	ldr r2, _0801CEA8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801CDB0
	ldr r3, _0801CEAC  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801CED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CDB0:
	ldr r2, _0801CEA8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801CE9A
	ldr r3, _0801CEAC  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801CEB0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801CEB4  @ =0x040000D4
	ldr r0, _0801CEB8  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801CEBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801CEC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801CEC4  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801CEC8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801CECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801CED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801CED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801CED8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801CEDC  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801CEE0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CE9A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801CEA8:
	.4byte 0x030000D0
_0801CEAC:
	.4byte 0x030000D8
_0801CEB0:
	.4byte 0x030000D4
_0801CEB4:
	.4byte 0x040000D4
_0801CEB8:
	.4byte gUnknown_082AEF7C
_0801CEBC:
	.4byte 0x06010000
_0801CEC0:
	.4byte 0x84000200
_0801CEC4:
	.4byte gUnknown_082AEF74
_0801CEC8:
	.4byte gOamData
_0801CECC:
	.4byte 0x84000002
_0801CED0:
	.4byte 0x000001FF
_0801CED4:
	.4byte 0xFFFFFE00
_0801CED8:
	.4byte 0x000003FF
_0801CEDC:
	.4byte 0xFFFFFC00
_0801CEE0:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801CBD8

	THUMB_FUNC_START sub_0801CEE4
sub_0801CEE4: @ 0x0801CEE4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801D1B4  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801CFDA
	ldr r2, _0801D1B8  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	str r0, [r3]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801D1E4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801CFDA:
	ldr r2, _0801D1B4  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0801D0BC
	ldr r3, _0801D1B8  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801D1E4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D0BC:
	ldr r2, _0801D1B4  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0801D1A6
	ldr r3, _0801D1B8  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801D1BC  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801D1C0  @ =0x040000D4
	ldr r0, _0801D1C4  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801D1C8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D1CC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D1D0  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801D1D4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D1D8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D1DC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D1E0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801D1E4  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801D1E8  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D1EC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D1A6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801D1B4:
	.4byte 0x030000D0
_0801D1B8:
	.4byte 0x030000D8
_0801D1BC:
	.4byte 0x030000D4
_0801D1C0:
	.4byte 0x040000D4
_0801D1C4:
	.4byte gUnknown_082AEF7C
_0801D1C8:
	.4byte 0x06010000
_0801D1CC:
	.4byte 0x84000200
_0801D1D0:
	.4byte gUnknown_082AEF74
_0801D1D4:
	.4byte gOamData
_0801D1D8:
	.4byte 0x84000002
_0801D1DC:
	.4byte 0x000001FF
_0801D1E0:
	.4byte 0xFFFFFE00
_0801D1E4:
	.4byte 0x000003FF
_0801D1E8:
	.4byte 0xFFFFFC00
_0801D1EC:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801CEE4

	THUMB_FUNC_START sub_0801D1F0
sub_0801D1F0: @ 0x0801D1F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #30
	str r0, [r3]
	ldr r2, _0801D254  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r1, _0801D258  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _0801D278
	ldr r4, _0801D25C  @ =0x040000D4
	ldr r0, _0801D260  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D264  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D268  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D26C  @ =gUnknown_0811BCB0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D270  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D274  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	b _0801D33C
	.byte 0x00
	.byte 0x00
_0801D254:
	.4byte 0x030000D0
_0801D258:
	.4byte 0x030000D8
_0801D25C:
	.4byte 0x040000D4
_0801D260:
	.4byte gUnknown_0811BCB8
_0801D264:
	.4byte 0x06010000
_0801D268:
	.4byte 0x84000020
_0801D26C:
	.4byte gUnknown_0811BCB0
_0801D270:
	.4byte gOamData
_0801D274:
	.4byte 0x84000002
_0801D278:
	cmp r0, #2
	bne _0801D2A8
	ldr r4, _0801D294  @ =0x040000D4
	ldr r0, _0801D298  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D29C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D2A0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D2A4  @ =gUnknown_0811BD5C
	b _0801D322
_0801D294:
	.4byte 0x040000D4
_0801D298:
	.4byte gUnknown_0811BD64
_0801D29C:
	.4byte 0x06010000
_0801D2A0:
	.4byte 0x84000020
_0801D2A4:
	.4byte gUnknown_0811BD5C
_0801D2A8:
	cmp r0, #3
	bne _0801D2D8
	ldr r4, _0801D2C4  @ =0x040000D4
	ldr r0, _0801D2C8  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D2CC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D2D0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D2D4  @ =gUnknown_0811BC04
	b _0801D322
_0801D2C4:
	.4byte 0x040000D4
_0801D2C8:
	.4byte gUnknown_0811BC0C
_0801D2CC:
	.4byte 0x06010000
_0801D2D0:
	.4byte 0x84000020
_0801D2D4:
	.4byte gUnknown_0811BC04
_0801D2D8:
	cmp r0, #4
	bne _0801D308
	ldr r4, _0801D2F4  @ =0x040000D4
	ldr r0, _0801D2F8  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D2FC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D300  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D304  @ =gUnknown_081257D0
	b _0801D322
_0801D2F4:
	.4byte 0x040000D4
_0801D2F8:
	.4byte gUnknown_081257D8
_0801D2FC:
	.4byte 0x06010000
_0801D300:
	.4byte 0x84000020
_0801D304:
	.4byte gUnknown_081257D0
_0801D308:
	cmp r0, #5
	bne _0801D3B0
	ldr r4, _0801D3E4  @ =0x040000D4
	ldr r0, _0801D3E8  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D3EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D3F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D3F4  @ =gUnknown_08125928
_0801D322:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D3F8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D3FC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
_0801D33C:
	ldr r2, [r3]
	ldr r3, _0801D400  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D404  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801D408  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D40C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D410  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D3B0:
	mov r0, #102
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r2, _0801D414  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0801D420
	ldr r4, _0801D3E4  @ =0x040000D4
	ldr r0, _0801D418  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D3EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D3F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D41C  @ =gUnknown_0811BCB0
	b _0801D4CA
_0801D3E4:
	.4byte 0x040000D4
_0801D3E8:
	.4byte gUnknown_08125930
_0801D3EC:
	.4byte 0x06010000
_0801D3F0:
	.4byte 0x84000020
_0801D3F4:
	.4byte gUnknown_08125928
_0801D3F8:
	.4byte gOamData
_0801D3FC:
	.4byte 0x84000002
_0801D400:
	.4byte 0x000001FF
_0801D404:
	.4byte 0xFFFFFE00
_0801D408:
	.4byte 0x000003FF
_0801D40C:
	.4byte 0xFFFFFC00
_0801D410:
	.4byte 0x80000200
_0801D414:
	.4byte 0x030000D8
_0801D418:
	.4byte gUnknown_0811BCB8
_0801D41C:
	.4byte gUnknown_0811BCB0
_0801D420:
	cmp r0, #2
	bne _0801D450
	ldr r4, _0801D43C  @ =0x040000D4
	ldr r0, _0801D440  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D444  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D448  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D44C  @ =gUnknown_0811BD5C
	b _0801D4CA
_0801D43C:
	.4byte 0x040000D4
_0801D440:
	.4byte gUnknown_0811BD64
_0801D444:
	.4byte 0x06010000
_0801D448:
	.4byte 0x84000020
_0801D44C:
	.4byte gUnknown_0811BD5C
_0801D450:
	cmp r0, #3
	bne _0801D480
	ldr r4, _0801D46C  @ =0x040000D4
	ldr r0, _0801D470  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D474  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D478  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D47C  @ =gUnknown_0811BC04
	b _0801D4CA
_0801D46C:
	.4byte 0x040000D4
_0801D470:
	.4byte gUnknown_0811BC0C
_0801D474:
	.4byte 0x06010000
_0801D478:
	.4byte 0x84000020
_0801D47C:
	.4byte gUnknown_0811BC04
_0801D480:
	cmp r0, #4
	bne _0801D4B0
	ldr r4, _0801D49C  @ =0x040000D4
	ldr r0, _0801D4A0  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D4A4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D4A8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D4AC  @ =gUnknown_081257D0
	b _0801D4CA
_0801D49C:
	.4byte 0x040000D4
_0801D4A0:
	.4byte gUnknown_081257D8
_0801D4A4:
	.4byte 0x06010000
_0801D4A8:
	.4byte 0x84000020
_0801D4AC:
	.4byte gUnknown_081257D0
_0801D4B0:
	cmp r0, #5
	bne _0801D558
	ldr r4, _0801D58C  @ =0x040000D4
	ldr r0, _0801D590  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D594  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D598  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D59C  @ =gUnknown_08125928
_0801D4CA:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D5A0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D5A4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D5A8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D5AC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801D5B0  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801D5B4  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D5B8  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D558:
	mov r0, #174
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r2, _0801D5BC  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #16]
	cmp r0, #1
	bne _0801D5C8
	ldr r4, _0801D58C  @ =0x040000D4
	ldr r0, _0801D5C0  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D594  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D598  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D5C4  @ =gUnknown_0811BCB0
	b _0801D672
_0801D58C:
	.4byte 0x040000D4
_0801D590:
	.4byte gUnknown_08125930
_0801D594:
	.4byte 0x06010000
_0801D598:
	.4byte 0x84000020
_0801D59C:
	.4byte gUnknown_08125928
_0801D5A0:
	.4byte gOamData
_0801D5A4:
	.4byte 0x84000002
_0801D5A8:
	.4byte 0x000001FF
_0801D5AC:
	.4byte 0xFFFFFE00
_0801D5B0:
	.4byte 0x000003FF
_0801D5B4:
	.4byte 0xFFFFFC00
_0801D5B8:
	.4byte 0x80000200
_0801D5BC:
	.4byte 0x030000D8
_0801D5C0:
	.4byte gUnknown_0811BCB8
_0801D5C4:
	.4byte gUnknown_0811BCB0
_0801D5C8:
	cmp r0, #2
	bne _0801D5F8
	ldr r4, _0801D5E4  @ =0x040000D4
	ldr r0, _0801D5E8  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D5EC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D5F0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D5F4  @ =gUnknown_0811BD5C
	b _0801D672
_0801D5E4:
	.4byte 0x040000D4
_0801D5E8:
	.4byte gUnknown_0811BD64
_0801D5EC:
	.4byte 0x06010000
_0801D5F0:
	.4byte 0x84000020
_0801D5F4:
	.4byte gUnknown_0811BD5C
_0801D5F8:
	cmp r0, #3
	bne _0801D628
	ldr r4, _0801D614  @ =0x040000D4
	ldr r0, _0801D618  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D61C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D620  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D624  @ =gUnknown_0811BC04
	b _0801D672
_0801D614:
	.4byte 0x040000D4
_0801D618:
	.4byte gUnknown_0811BC0C
_0801D61C:
	.4byte 0x06010000
_0801D620:
	.4byte 0x84000020
_0801D624:
	.4byte gUnknown_0811BC04
_0801D628:
	cmp r0, #4
	bne _0801D658
	ldr r4, _0801D644  @ =0x040000D4
	ldr r0, _0801D648  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D64C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D650  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D654  @ =gUnknown_081257D0
	b _0801D672
_0801D644:
	.4byte 0x040000D4
_0801D648:
	.4byte gUnknown_081257D8
_0801D64C:
	.4byte 0x06010000
_0801D650:
	.4byte 0x84000020
_0801D654:
	.4byte gUnknown_081257D0
_0801D658:
	cmp r0, #5
	bne _0801D708
	ldr r4, _0801D718  @ =0x040000D4
	ldr r0, _0801D71C  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D720  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D724  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D728  @ =gUnknown_08125928
_0801D672:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D72C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D730  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801D734  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D738  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801D73C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801D740  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801D744  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801D708:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801D718:
	.4byte 0x040000D4
_0801D71C:
	.4byte gUnknown_08125930
_0801D720:
	.4byte 0x06010000
_0801D724:
	.4byte 0x84000020
_0801D728:
	.4byte gUnknown_08125928
_0801D72C:
	.4byte gOamData
_0801D730:
	.4byte 0x84000002
_0801D734:
	.4byte 0x000001FF
_0801D738:
	.4byte 0xFFFFFE00
_0801D73C:
	.4byte 0x000003FF
_0801D740:
	.4byte 0xFFFFFC00
_0801D744:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801D1F0

	THUMB_FUNC_START sub_0801D748
sub_0801D748: @ 0x0801D748
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	mov r0, #16
	str r0, [r3]
	ldr r2, _0801D840  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r1, _0801D844  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	beq _0801D776
	b _0801D878
_0801D776:
	ldr r4, _0801D848  @ =0x040000D4
	ldr r2, _0801D84C  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801D850  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D854  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D858  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D85C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D860  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D864  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801D868  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D86C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801D870  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801D874  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	b _0801DB16
_0801D840:
	.4byte 0x030000D0
_0801D844:
	.4byte 0x030000D8
_0801D848:
	.4byte 0x040000D4
_0801D84C:
	.4byte gUnknown_0811C010
_0801D850:
	.4byte gUnknown_0811C1C8
_0801D854:
	.4byte 0x06010000
_0801D858:
	.4byte 0x84000200
_0801D85C:
	.4byte gUnknown_0811C1C0
_0801D860:
	.4byte gOamData
_0801D864:
	.4byte 0x84000002
_0801D868:
	.4byte 0x000001FF
_0801D86C:
	.4byte 0xFFFFFE00
_0801D870:
	.4byte 0x000003FF
_0801D874:
	.4byte 0xFFFFFC00
_0801D878:
	cmp r0, #2
	bne _0801D8E8
	ldr r4, _0801D8C8  @ =0x040000D4
	ldr r2, _0801D8CC  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801D8D0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D8D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D8D8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D8DC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D8E0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D8E4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DA90
	.byte 0x00
	.byte 0x00
_0801D8C8:
	.4byte 0x040000D4
_0801D8CC:
	.4byte gUnknown_0811C010
_0801D8D0:
	.4byte gUnknown_0811C1C8
_0801D8D4:
	.4byte 0x06010000
_0801D8D8:
	.4byte 0x84000200
_0801D8DC:
	.4byte gUnknown_0811C1C0
_0801D8E0:
	.4byte gOamData
_0801D8E4:
	.4byte 0x84000002
_0801D8E8:
	cmp r0, #3
	bne _0801D9D4
	ldr r4, _0801D9A4  @ =0x040000D4
	ldr r2, _0801D9A8  @ =gUnknown_0811F5F4
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801D9AC  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801D9B0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801D9B4  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801D9B8  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801D9BC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801D9C0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801D9C4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801D9C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801D9CC  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801D9D0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	b _0801DB16
_0801D9A4:
	.4byte 0x040000D4
_0801D9A8:
	.4byte gUnknown_0811F5F4
_0801D9AC:
	.4byte gUnknown_0811F7AC
_0801D9B0:
	.4byte 0x06010000
_0801D9B4:
	.4byte 0x84000400
_0801D9B8:
	.4byte gUnknown_0811F7A4
_0801D9BC:
	.4byte gOamData
_0801D9C0:
	.4byte 0x84000002
_0801D9C4:
	.4byte 0x000001FF
_0801D9C8:
	.4byte 0xFFFFFE00
_0801D9CC:
	.4byte 0x000003FF
_0801D9D0:
	.4byte 0xFFFFFC00
_0801D9D4:
	cmp r0, #4
	bne _0801DA44
	ldr r4, _0801DA24  @ =0x040000D4
	ldr r2, _0801DA28  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DA2C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DA30  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DA34  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DA38  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DA3C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DA40  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DA90
	.byte 0x00
	.byte 0x00
_0801DA24:
	.4byte 0x040000D4
_0801DA28:
	.4byte gUnknown_0811C010
_0801DA2C:
	.4byte gUnknown_0811C1C8
_0801DA30:
	.4byte 0x06010000
_0801DA34:
	.4byte 0x84000200
_0801DA38:
	.4byte gUnknown_0811C1C0
_0801DA3C:
	.4byte gOamData
_0801DA40:
	.4byte 0x84000002
_0801DA44:
	cmp r0, #5
	bne _0801DB24
	ldr r4, _0801DC08  @ =0x040000D4
	ldr r2, _0801DC0C  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DC18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DC1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DC20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DC24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
_0801DA90:
	ldr r3, _0801DC28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DC2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801DC30  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DC34  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801DB16:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801DC38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801DB24:
	mov r0, #88
	mov r2, r9
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r2, _0801DC3C  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #8]
	cmp r0, #1
	beq _0801DB40
	b _0801DC40
_0801DB40:
	ldr r4, _0801DC08  @ =0x040000D4
	ldr r2, _0801DC0C  @ =gUnknown_0811C010
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DC18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DC1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DC20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DC24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801DC28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DC2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801DC30  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DC34  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	b _0801DEDE
_0801DC08:
	.4byte 0x040000D4
_0801DC0C:
	.4byte gUnknown_0811C010
_0801DC10:
	.4byte gUnknown_0811C1C8
_0801DC14:
	.4byte 0x06010000
_0801DC18:
	.4byte 0x84000200
_0801DC1C:
	.4byte gUnknown_0811C1C0
_0801DC20:
	.4byte gOamData
_0801DC24:
	.4byte 0x84000002
_0801DC28:
	.4byte 0x000001FF
_0801DC2C:
	.4byte 0xFFFFFE00
_0801DC30:
	.4byte 0x000003FF
_0801DC34:
	.4byte 0xFFFFFC00
_0801DC38:
	.4byte 0x80000200
_0801DC3C:
	.4byte 0x030000D8
_0801DC40:
	cmp r0, #2
	bne _0801DCB0
	ldr r4, _0801DC90  @ =0x040000D4
	ldr r2, _0801DC94  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DC98  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DC9C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DCA0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DCA4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DCA8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DCAC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DE58
	.byte 0x00
	.byte 0x00
_0801DC90:
	.4byte 0x040000D4
_0801DC94:
	.4byte gUnknown_0811C010
_0801DC98:
	.4byte gUnknown_0811C1C8
_0801DC9C:
	.4byte 0x06010000
_0801DCA0:
	.4byte 0x84000200
_0801DCA4:
	.4byte gUnknown_0811C1C0
_0801DCA8:
	.4byte gOamData
_0801DCAC:
	.4byte 0x84000002
_0801DCB0:
	cmp r0, #3
	bne _0801DD9C
	ldr r4, _0801DD6C  @ =0x040000D4
	ldr r2, _0801DD70  @ =gUnknown_0811F5F4
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801DD74  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DD78  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DD7C  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DD80  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DD84  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DD88  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801DD8C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DD90  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801DD94  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801DD98  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	b _0801DEDE
_0801DD6C:
	.4byte 0x040000D4
_0801DD70:
	.4byte gUnknown_0811F5F4
_0801DD74:
	.4byte gUnknown_0811F7AC
_0801DD78:
	.4byte 0x06010000
_0801DD7C:
	.4byte 0x84000400
_0801DD80:
	.4byte gUnknown_0811F7A4
_0801DD84:
	.4byte gOamData
_0801DD88:
	.4byte 0x84000002
_0801DD8C:
	.4byte 0x000001FF
_0801DD90:
	.4byte 0xFFFFFE00
_0801DD94:
	.4byte 0x000003FF
_0801DD98:
	.4byte 0xFFFFFC00
_0801DD9C:
	cmp r0, #4
	bne _0801DE0C
	ldr r4, _0801DDEC  @ =0x040000D4
	ldr r2, _0801DDF0  @ =gUnknown_0811C010
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DDF4  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DDF8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DDFC  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DE00  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DE04  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DE08  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	b _0801DE58
	.byte 0x00
	.byte 0x00
_0801DDEC:
	.4byte 0x040000D4
_0801DDF0:
	.4byte gUnknown_0811C010
_0801DDF4:
	.4byte gUnknown_0811C1C8
_0801DDF8:
	.4byte 0x06010000
_0801DDFC:
	.4byte 0x84000200
_0801DE00:
	.4byte gUnknown_0811C1C0
_0801DE04:
	.4byte gOamData
_0801DE08:
	.4byte 0x84000002
_0801DE0C:
	cmp r0, #5
	bne _0801DEEC
	ldr r4, _0801DFD8  @ =0x040000D4
	ldr r2, _0801DFDC  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DFE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DFE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DFE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DFEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DFF0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DFF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
_0801DE58:
	ldr r3, _0801DFF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DFFC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E000  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801E004  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801DEDE:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E008  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801DEEC:
	mov r0, #160
	mov r2, r9
	str r0, [r2]
	mov r8, r10
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r2, _0801E00C  @ =0x030000D8
	ldr r0, [r2]
	ldrb r0, [r0, #16]
	cmp r0, #1
	beq _0801DF0A
	b _0801E010
_0801DF0A:
	ldr r4, _0801DFD8  @ =0x040000D4
	ldr r2, _0801DFDC  @ =gUnknown_0811C010
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801DFE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801DFE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801DFE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801DFEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801DFF0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801DFF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801DFF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801DFFC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E000  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E004  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	b _0801E396
	.byte 0x00
	.byte 0x00
_0801DFD8:
	.4byte 0x040000D4
_0801DFDC:
	.4byte gUnknown_0811C010
_0801DFE0:
	.4byte gUnknown_0811C1C8
_0801DFE4:
	.4byte 0x06010000
_0801DFE8:
	.4byte 0x84000200
_0801DFEC:
	.4byte gUnknown_0811C1C0
_0801DFF0:
	.4byte gOamData
_0801DFF4:
	.4byte 0x84000002
_0801DFF8:
	.4byte 0x000001FF
_0801DFFC:
	.4byte 0xFFFFFE00
_0801E000:
	.4byte 0x000003FF
_0801E004:
	.4byte 0xFFFFFC00
_0801E008:
	.4byte 0x80000200
_0801E00C:
	.4byte 0x030000D8
_0801E010:
	cmp r0, #2
	bne _0801E0F0
	ldr r4, _0801E0C0  @ =0x040000D4
	ldr r2, _0801E0C4  @ =gUnknown_0811C010
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E0C8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E0CC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E0D0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E0D4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E0D8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E0DC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801E0E0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E0E4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E0E8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801E0EC  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	b _0801E36C
	.byte 0x00
	.byte 0x00
_0801E0C0:
	.4byte 0x040000D4
_0801E0C4:
	.4byte gUnknown_0811C010
_0801E0C8:
	.4byte gUnknown_0811C1C8
_0801E0CC:
	.4byte 0x06010000
_0801E0D0:
	.4byte 0x84000200
_0801E0D4:
	.4byte gUnknown_0811C1C0
_0801E0D8:
	.4byte gOamData
_0801E0DC:
	.4byte 0x84000002
_0801E0E0:
	.4byte 0x000001FF
_0801E0E4:
	.4byte 0xFFFFFE00
_0801E0E8:
	.4byte 0x000003FF
_0801E0EC:
	.4byte 0xFFFFFC00
_0801E0F0:
	cmp r0, #3
	bne _0801E1E0
	ldr r4, _0801E1B0  @ =0x040000D4
	ldr r2, _0801E1B4  @ =gUnknown_0811F5F4
	mov r3, r8
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801E1B8  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E1BC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E1C0  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E1C4  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E1C8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E1CC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801E1D0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E1D4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E1D8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E1DC  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	b _0801E396
_0801E1B0:
	.4byte 0x040000D4
_0801E1B4:
	.4byte gUnknown_0811F5F4
_0801E1B8:
	.4byte gUnknown_0811F7AC
_0801E1BC:
	.4byte 0x06010000
_0801E1C0:
	.4byte 0x84000400
_0801E1C4:
	.4byte gUnknown_0811F7A4
_0801E1C8:
	.4byte gOamData
_0801E1CC:
	.4byte 0x84000002
_0801E1D0:
	.4byte 0x000001FF
_0801E1D4:
	.4byte 0xFFFFFE00
_0801E1D8:
	.4byte 0x000003FF
_0801E1DC:
	.4byte 0xFFFFFC00
_0801E1E0:
	cmp r0, #4
	bne _0801E2C0
	ldr r4, _0801E290  @ =0x040000D4
	ldr r2, _0801E294  @ =gUnknown_0811C010
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E298  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E29C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E2A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E2A4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E2A8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E2AC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801E2B0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E2B4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E2B8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801E2BC  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	b _0801E36C
	.byte 0x00
	.byte 0x00
_0801E290:
	.4byte 0x040000D4
_0801E294:
	.4byte gUnknown_0811C010
_0801E298:
	.4byte gUnknown_0811C1C8
_0801E29C:
	.4byte 0x06010000
_0801E2A0:
	.4byte 0x84000200
_0801E2A4:
	.4byte gUnknown_0811C1C0
_0801E2A8:
	.4byte gOamData
_0801E2AC:
	.4byte 0x84000002
_0801E2B0:
	.4byte 0x000001FF
_0801E2B4:
	.4byte 0xFFFFFE00
_0801E2B8:
	.4byte 0x000003FF
_0801E2BC:
	.4byte 0xFFFFFC00
_0801E2C0:
	cmp r0, #5
	bne _0801E3A4
	ldr r4, _0801E3B4  @ =0x040000D4
	ldr r2, _0801E3B8  @ =gUnknown_0811C010
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E3BC  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E3C0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E3C4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E3C8  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E3CC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E3D0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0801E3D4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E3D8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E3DC  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E3E0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
_0801E36C:
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
_0801E396:
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E3E4  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E3A4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801E3B4:
	.4byte 0x040000D4
_0801E3B8:
	.4byte gUnknown_0811C010
_0801E3BC:
	.4byte gUnknown_0811C1C8
_0801E3C0:
	.4byte 0x06010000
_0801E3C4:
	.4byte 0x84000200
_0801E3C8:
	.4byte gUnknown_0811C1C0
_0801E3CC:
	.4byte gOamData
_0801E3D0:
	.4byte 0x84000002
_0801E3D4:
	.4byte 0x000001FF
_0801E3D8:
	.4byte 0xFFFFFE00
_0801E3DC:
	.4byte 0x000003FF
_0801E3E0:
	.4byte 0xFFFFFC00
_0801E3E4:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801D748

	THUMB_FUNC_START sub_0801E3E8
sub_0801E3E8: @ 0x0801E3E8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _0801E410  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801E414
	mov r0, #16
	str r0, [r3]
	b _0801E426
	.byte 0x00
	.byte 0x00
_0801E410:
	.4byte 0x030000D0
_0801E414:
	cmp r0, #1
	bne _0801E420
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	b _0801E426
_0801E420:
	mov r0, #160
	mov r2, r8
	str r0, [r2]
_0801E426:
	ldr r3, _0801E804  @ =0x030000D0
	mov r9, r3
	ldr r3, [r3]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801E52C
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E52C:
	mov r2, r9
	ldr r3, [r2]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0801E630
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E630:
	mov r2, r9
	ldr r3, [r2]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801E72E
	ldr r2, _0801E80C  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E814  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E81C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E820  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801E834  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801E838  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E83C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E72E:
	mov r0, r9
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	ldr r2, _0801E808  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _0801E744
	b _0801E86E
_0801E744:
	ldr r2, _0801E840  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E810  @ =0x040000D4
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _0801E844  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E818  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E848  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E84C  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E824  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E828  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E82C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E830  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E834  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801E838  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	b _0801E850
_0801E804:
	.4byte 0x030000D0
_0801E808:
	.4byte 0x030000D8
_0801E80C:
	.4byte gUnknown_0811C010
_0801E810:
	.4byte 0x040000D4
_0801E814:
	.4byte gUnknown_0811C1C8
_0801E818:
	.4byte 0x06010000
_0801E81C:
	.4byte 0x84000200
_0801E820:
	.4byte gUnknown_0811C1C0
_0801E824:
	.4byte gOamData
_0801E828:
	.4byte 0x84000002
_0801E82C:
	.4byte 0x000001FF
_0801E830:
	.4byte 0xFFFFFE00
_0801E834:
	.4byte 0x000003FF
_0801E838:
	.4byte 0xFFFFFC00
_0801E83C:
	.4byte 0x80000200
_0801E840:
	.4byte gUnknown_0811F5F4
_0801E844:
	.4byte gUnknown_0811F7AC
_0801E848:
	.4byte 0x84000400
_0801E84C:
	.4byte gUnknown_0811F7A4
_0801E850:
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E988  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E86E:
	ldr r0, _0801E98C  @ =0x030000D0
	ldr r3, [r0]
	ldrb r0, [r3, #1]
	ldr r2, _0801E990  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _0801E97A
	ldr r2, _0801E994  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r3, [r3]
	add r0, r0, r3
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801E998  @ =0x040000D4
	ldr r1, _0801E98C  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0801E99C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801E9A0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801E9A4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801E9A8  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801E9AC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801E9B0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801E9B4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801E9B8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801E9BC  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801E9C0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801E98C  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801E988  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801E97A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801E988:
	.4byte 0x80000200
_0801E98C:
	.4byte 0x030000D0
_0801E990:
	.4byte 0x030000D8
_0801E994:
	.4byte gUnknown_0811C010
_0801E998:
	.4byte 0x040000D4
_0801E99C:
	.4byte gUnknown_0811C1C8
_0801E9A0:
	.4byte 0x06010000
_0801E9A4:
	.4byte 0x84000200
_0801E9A8:
	.4byte gUnknown_0811C1C0
_0801E9AC:
	.4byte gOamData
_0801E9B0:
	.4byte 0x84000002
_0801E9B4:
	.4byte 0x000001FF
_0801E9B8:
	.4byte 0xFFFFFE00
_0801E9BC:
	.4byte 0x000003FF
_0801E9C0:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0801E3E8

	THUMB_FUNC_START sub_0801E9C4
sub_0801E9C4: @ 0x0801E9C4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801E9EC  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801E9F0
	mov r0, #16
	str r0, [r3]
	b _0801EA02
	.byte 0x00
	.byte 0x00
_0801E9EC:
	.4byte 0x030000D0
_0801E9F0:
	cmp r0, #1
	bne _0801E9FC
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	b _0801EA02
_0801E9FC:
	mov r0, #160
	mov r2, r8
	str r0, [r2]
_0801EA02:
	ldr r3, _0801EDDC  @ =0x030000D0
	mov r10, r3
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0801EAE0
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EAE0:
	mov r3, r10
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _0801EBBC
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EBBC:
	mov r3, r10
	ldr r2, [r3]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0801EC92
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801EE08  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801EE0C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EC92:
	mov r0, r10
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0801ED5A
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EE14  @ =gUnknown_0811F7AC
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EE18  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EE1C  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r10, r3
	mov r0, r10
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801EE08  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _0801EE0C  @ =0xFFFFFC00
	mov r3, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EE10  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801ED5A:
	ldr r0, _0801EDDC  @ =0x030000D0
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	ldr r3, _0801EDE0  @ =0x030000D8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _0801ED70
	b _0801EE88
_0801ED70:
	ldrb r0, [r2]
	mov r1, r9
	str r0, [r1]
	ldr r4, _0801EDE4  @ =0x040000D4
	ldr r0, _0801EDE8  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EDEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EDF0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EDF4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EDF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EDFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801EE00  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801EE04  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	b _0801EE20
	.byte 0x00
	.byte 0x00
_0801EDDC:
	.4byte 0x030000D0
_0801EDE0:
	.4byte 0x030000D8
_0801EDE4:
	.4byte 0x040000D4
_0801EDE8:
	.4byte gUnknown_0811C1C8
_0801EDEC:
	.4byte 0x06010000
_0801EDF0:
	.4byte 0x84000200
_0801EDF4:
	.4byte gUnknown_0811C1C0
_0801EDF8:
	.4byte gOamData
_0801EDFC:
	.4byte 0x84000002
_0801EE00:
	.4byte 0x000001FF
_0801EE04:
	.4byte 0xFFFFFE00
_0801EE08:
	.4byte 0x000003FF
_0801EE0C:
	.4byte 0xFFFFFC00
_0801EE10:
	.4byte 0x80000200
_0801EE14:
	.4byte gUnknown_0811F7AC
_0801EE18:
	.4byte 0x84000400
_0801EE1C:
	.4byte gUnknown_0811F7A4
_0801EE20:
	add r1, r1, r3
	ldr r0, _0801EE98  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801EE9C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801EEA0  @ =0x030000D0
	ldr r0, [r1]
	ldrb r1, [r0, #11]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801EEA4  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EE88:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801EE98:
	.4byte 0x000003FF
_0801EE9C:
	.4byte 0xFFFFFC00
_0801EEA0:
	.4byte 0x030000D0
_0801EEA4:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801E9C4

	THUMB_FUNC_START sub_0801EEA8
sub_0801EEA8: @ 0x0801EEA8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	ldr r0, [sp, #32]
	mov r8, r0
	ldr r0, _0801EEE8  @ =0x030000D0
	ldr r1, [r0]
	ldrb r1, [r1, #1]
	mov r10, r0
	cmp r1, #0
	bne _0801EFB8
	ldr r1, _0801EEEC  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0801EEF4
	ldr r0, _0801EEF0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r3, r8
	str r0, [r3]
	b _0801EEFA
_0801EEE8:
	.4byte 0x030000D0
_0801EEEC:
	.4byte 0x030000D8
_0801EEF0:
	.4byte 0x030000D4
_0801EEF4:
	mov r0, #63
	mov r1, r8
	str r0, [r1]
_0801EEFA:
	ldr r4, _0801EFE4  @ =0x040000D4
	ldr r0, _0801EFE8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801EFEC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801EFF0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801EFF4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801EFF8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801EFFC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F000  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F004  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801F008  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F00C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F010  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F014  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801EFB8:
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801EFC4
	b _0801F0E0
_0801EFC4:
	ldr r1, _0801F010  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #10]
	mov r3, r9
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0801F01C
	ldr r0, _0801F018  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	b _0801F022
	.byte 0x00
	.byte 0x00
_0801EFE4:
	.4byte 0x040000D4
_0801EFE8:
	.4byte gUnknown_082B30B4
_0801EFEC:
	.4byte 0x06010000
_0801EFF0:
	.4byte 0x84000100
_0801EFF4:
	.4byte gUnknown_082B30AC
_0801EFF8:
	.4byte gOamData
_0801EFFC:
	.4byte 0x84000002
_0801F000:
	.4byte 0x000001FF
_0801F004:
	.4byte 0xFFFFFE00
_0801F008:
	.4byte 0x000003FF
_0801F00C:
	.4byte 0xFFFFFC00
_0801F010:
	.4byte 0x030000D8
_0801F014:
	.4byte 0x80000200
_0801F018:
	.4byte 0x030000D4
_0801F01C:
	mov r0, #63
	mov r2, r8
	str r0, [r2]
_0801F022:
	ldr r4, _0801F10C  @ =0x040000D4
	ldr r0, _0801F110  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801F114  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F118  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F11C  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801F120  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F124  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F128  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F12C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801F130  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F134  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F138  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F13C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F0E0:
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801F0EC
	b _0801F210
_0801F0EC:
	ldr r1, _0801F138  @ =0x030000D8
	ldr r0, [r1]
	ldrb r0, [r0, #18]
	mov r3, r9
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0801F144
	ldr r0, _0801F140  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	b _0801F14A
	.byte 0x00
	.byte 0x00
_0801F10C:
	.4byte 0x040000D4
_0801F110:
	.4byte gUnknown_082B30B4
_0801F114:
	.4byte 0x06010000
_0801F118:
	.4byte 0x84000100
_0801F11C:
	.4byte gUnknown_082B30AC
_0801F120:
	.4byte gOamData
_0801F124:
	.4byte 0x84000002
_0801F128:
	.4byte 0x000001FF
_0801F12C:
	.4byte 0xFFFFFE00
_0801F130:
	.4byte 0x000003FF
_0801F134:
	.4byte 0xFFFFFC00
_0801F138:
	.4byte 0x030000D8
_0801F13C:
	.4byte 0x80000200
_0801F140:
	.4byte 0x030000D4
_0801F144:
	mov r0, #63
	mov r2, r8
	str r0, [r2]
_0801F14A:
	ldr r4, _0801F220  @ =0x040000D4
	ldr r0, _0801F224  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0801F228  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F22C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F230  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0801F234  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F238  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _0801F23C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F240  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801F244  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801F248  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801F24C  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r7]
	add r0, r0, r3
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F250  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F210:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801F220:
	.4byte 0x040000D4
_0801F224:
	.4byte gUnknown_082B30B4
_0801F228:
	.4byte 0x06010000
_0801F22C:
	.4byte 0x84000100
_0801F230:
	.4byte gUnknown_082B30AC
_0801F234:
	.4byte gOamData
_0801F238:
	.4byte 0x84000002
_0801F23C:
	.4byte 0x000001FF
_0801F240:
	.4byte 0xFFFFFE00
_0801F244:
	.4byte 0x000003FF
_0801F248:
	.4byte 0xFFFFFC00
_0801F24C:
	.4byte 0x030000D8
_0801F250:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801EEA8

	THUMB_FUNC_START sub_0801F254
sub_0801F254: @ 0x0801F254
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _0801F518  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801F346
	ldr r2, _0801F51C  @ =0x030000D8
	mov r10, r2
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	str r0, [r3]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r3, r9
	str r0, [r3]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801F548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F346:
	ldr r2, _0801F518  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801F424
	ldr r3, _0801F51C  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801F548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F424:
	ldr r2, _0801F518  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801F50A
	ldr r3, _0801F51C  @ =0x030000D8
	mov r10, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801F520  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	mov r2, r9
	str r0, [r2]
	ldr r4, _0801F524  @ =0x040000D4
	ldr r0, _0801F528  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801F52C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801F530  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801F534  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801F538  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801F53C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801F540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801F544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801F548  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0801F54C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801F550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F50A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801F518:
	.4byte 0x030000D0
_0801F51C:
	.4byte 0x030000D8
_0801F520:
	.4byte 0x030000D4
_0801F524:
	.4byte 0x040000D4
_0801F528:
	.4byte gUnknown_082B30B4
_0801F52C:
	.4byte 0x06010000
_0801F530:
	.4byte 0x84000100
_0801F534:
	.4byte gUnknown_082B30AC
_0801F538:
	.4byte gOamData
_0801F53C:
	.4byte 0x84000002
_0801F540:
	.4byte 0x000001FF
_0801F544:
	.4byte 0xFFFFFE00
_0801F548:
	.4byte 0x000003FF
_0801F54C:
	.4byte 0xFFFFFC00
_0801F550:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F254

	THUMB_FUNC_START sub_0801F554
sub_0801F554: @ 0x0801F554
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	ldr r7, _0801F804  @ =0x030000D8
	ldr r4, [r7]
	ldrb r4, [r4, #3]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #4]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F808  @ =0x040000D4
	mov r9, r6
	ldr r4, _0801F80C  @ =gUnknown_082AF7A8
	str r4, [r6]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	ldr r6, _0801F81C  @ =gOamData
	mov r10, r6
	add r4, r4, r10
	mov r5, r9
	str r4, [r5, #4]
	ldr r6, _0801F820  @ =0x84000002
	str r6, [r5, #8]
	ldr r4, [r5, #8]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	mov r12, r5
	ldr r6, [r3]
	ldr r4, _0801F824  @ =0x000001FF
	and r6, r6, r4
	ldrh r5, [r5, #2]
	mov r8, r5
	ldr r4, _0801F828  @ =0xFFFFFE00
	mov r5, r8
	and r4, r4, r5
	orr r4, r4, r6
	mov r6, r12
	strh r4, [r6, #2]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r6, [sp, #40]
	ldr r5, [r6]
	strb r5, [r4]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	mov r12, r6
	ldrh r4, [r6, #4]
	mov r8, r4
	mov r6, r8
	lsl r5, r6, #22
	lsr r5, r5, #22
	ldrh r4, [r1]
	add r5, r5, r4
	ldr r6, _0801F82C  @ =0x000003FF
	and r5, r5, r6
	ldr r4, _0801F830  @ =0xFFFFFC00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r5
	mov r5, r12
	strh r4, [r5, #4]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	ldrb r6, [r5, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r6
	mov r6, #4
	orr r4, r4, r6
	strb r4, [r5, #5]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	ldr r4, [r7]
	ldrb r5, [r4, #6]
	lsl r5, r5, #4
	str r5, [sp]
	ldrb r4, [r6, #5]
	mov r8, r4
	mov r5, #15
	mov r12, r5
	mov r4, r12
	mov r5, r8
	and r4, r4, r5
	ldr r5, [sp]
	orr r4, r4, r5
	strb r4, [r6, #5]
	ldrh r4, [r0]
	add r4, r4, #1
	strh r4, [r0]
	mov r6, #128
	lsl r6, r6, #4
	ldrh r5, [r2]
	add r4, r6, r5
	strh r4, [r2]
	ldrh r4, [r1]
	add r4, r4, #64
	strh r4, [r1]
	mov r6, r10
	mov r4, r9
	str r6, [r4]
	mov r5, #224
	lsl r5, r5, #19
	str r5, [r4, #4]
	ldr r6, _0801F834  @ =0x80000200
	str r6, [r4, #8]
	ldr r4, [r4, #8]
	ldr r4, [r7]
	ldrb r4, [r4, #11]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #12]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F80C  @ =gUnknown_082AF7A8
	mov r4, r9
	str r6, [r4]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	mov r6, r9
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	str r4, [r6, #4]
	ldr r4, _0801F820  @ =0x84000002
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	str r6, [sp, #4]
	ldr r5, [r3]
	ldr r6, _0801F824  @ =0x000001FF
	and r5, r5, r6
	ldr r4, [sp, #4]
	ldrh r4, [r4, #2]
	mov r8, r4
	ldr r4, _0801F828  @ =0xFFFFFE00
	mov r6, r8
	and r4, r4, r6
	orr r4, r4, r5
	ldr r5, [sp, #4]
	strh r4, [r5, #2]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r6, [sp, #40]
	ldr r5, [r6]
	strb r5, [r4]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	str r6, [sp, #4]
	ldrh r4, [r6, #4]
	mov r8, r4
	mov r5, r8
	lsl r4, r5, #22
	lsr r4, r4, #22
	ldrh r6, [r1]
	add r4, r4, r6
	ldr r5, _0801F82C  @ =0x000003FF
	and r4, r4, r5
	ldr r5, _0801F830  @ =0xFFFFFC00
	mov r6, r8
	and r5, r5, r6
	orr r5, r5, r4
	ldr r4, [sp, #4]
	strh r5, [r4, #4]
	ldrh r5, [r0]
	lsl r5, r5, #3
	add r5, r5, r10
	ldrb r6, [r5, #5]
	mov r4, #13
	neg r4, r4
	and r4, r4, r6
	mov r6, #4
	orr r4, r4, r6
	strb r4, [r5, #5]
	ldrh r6, [r0]
	lsl r6, r6, #3
	add r6, r6, r10
	ldr r4, [r7]
	ldrb r5, [r4, #14]
	lsl r5, r5, #4
	str r5, [sp]
	ldrb r4, [r6, #5]
	mov r8, r4
	mov r4, r12
	mov r5, r8
	and r4, r4, r5
	ldr r5, [sp]
	orr r4, r4, r5
	strb r4, [r6, #5]
	ldrh r4, [r0]
	add r4, r4, #1
	strh r4, [r0]
	mov r6, #128
	lsl r6, r6, #4
	ldrh r5, [r2]
	add r4, r6, r5
	strh r4, [r2]
	ldrh r4, [r1]
	add r4, r4, #64
	strh r4, [r1]
	mov r6, r10
	mov r4, r9
	str r6, [r4]
	mov r5, #224
	lsl r5, r5, #19
	str r5, [r4, #4]
	ldr r6, _0801F834  @ =0x80000200
	str r6, [r4, #8]
	ldr r4, [r4, #8]
	ldr r4, [r7]
	ldrb r4, [r4, #19]
	str r4, [r3]
	ldr r4, [r7]
	ldrb r4, [r4, #20]
	ldr r5, [sp, #40]
	str r4, [r5]
	ldr r6, _0801F80C  @ =gUnknown_082AF7A8
	mov r4, r9
	str r6, [r4]
	ldrh r4, [r2]
	ldr r5, _0801F810  @ =0x06010000
	add r4, r4, r5
	mov r6, r9
	str r4, [r6, #4]
	ldr r4, _0801F814  @ =0x84000200
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldr r5, _0801F818  @ =gUnknown_082AF7A0
	str r5, [r6]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	str r4, [r6, #4]
	ldr r4, _0801F820  @ =0x84000002
	str r4, [r6, #8]
	ldr r4, [r6, #8]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r3, [r3]
	ldr r5, _0801F824  @ =0x000001FF
	and r3, r3, r5
	ldrh r5, [r4, #2]
	ldr r6, _0801F828  @ =0xFFFFFE00
	and r6, r6, r5
	orr r6, r6, r3
	strh r6, [r4, #2]
	ldrh r3, [r0]
	lsl r3, r3, #3
	add r3, r3, r10
	ldr r6, [sp, #40]
	ldr r4, [r6]
	strb r4, [r3]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldrh r5, [r4, #4]
	lsl r3, r5, #22
	lsr r3, r3, #22
	ldrh r6, [r1]
	add r3, r3, r6
	ldr r6, _0801F82C  @ =0x000003FF
	and r3, r3, r6
	ldr r6, _0801F830  @ =0xFFFFFC00
	and r6, r6, r5
	orr r6, r6, r3
	strh r6, [r4, #4]
	ldrh r3, [r0]
	lsl r3, r3, #3
	add r3, r3, r10
	ldrb r4, [r3, #5]
	mov r5, #13
	neg r5, r5
	and r5, r5, r4
	mov r4, #4
	orr r5, r5, r4
	strb r5, [r3, #5]
	ldrh r4, [r0]
	lsl r4, r4, #3
	add r4, r4, r10
	ldr r3, [r7]
	ldrb r3, [r3, #22]
	lsl r3, r3, #4
	ldrb r5, [r4, #5]
	mov r6, r12
	and r6, r6, r5
	orr r6, r6, r3
	strb r6, [r4, #5]
	ldrh r3, [r0]
	add r3, r3, #1
	strh r3, [r0]
	mov r0, #128
	lsl r0, r0, #4
	ldrh r3, [r2]
	add r4, r0, r3
	strh r4, [r2]
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	mov r4, r10
	mov r5, r9
	str r4, [r5]
	mov r6, #224
	lsl r6, r6, #19
	str r6, [r5, #4]
	ldr r0, _0801F834  @ =0x80000200
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0801F804:
	.4byte 0x030000D8
_0801F808:
	.4byte 0x040000D4
_0801F80C:
	.4byte gUnknown_082AF7A8
_0801F810:
	.4byte 0x06010000
_0801F814:
	.4byte 0x84000200
_0801F818:
	.4byte gUnknown_082AF7A0
_0801F81C:
	.4byte gOamData
_0801F820:
	.4byte 0x84000002
_0801F824:
	.4byte 0x000001FF
_0801F828:
	.4byte 0xFFFFFE00
_0801F82C:
	.4byte 0x000003FF
_0801F830:
	.4byte 0xFFFFFC00
_0801F834:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F554

	THUMB_FUNC_START sub_0801F838
sub_0801F838: @ 0x0801F838
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _0801FB04  @ =0x030000D0
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0801F92C
	ldr r2, _0801FB08  @ =0x030000D8
	mov r9, r2
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [r3]
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	mov r3, r10
	str r0, [r3]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FB30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801F92C:
	ldr r2, _0801FB04  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801FA0C
	ldr r3, _0801FB08  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #11]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #12]
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FB30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FA0C:
	ldr r2, _0801FB04  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801FAF4
	ldr r3, _0801FB08  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #19]
	mov r1, r8
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #20]
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FB0C  @ =0x040000D4
	ldr r0, _0801FB10  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FB14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FB18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FB1C  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FB20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FB24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0801FB28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FB2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0801FB30  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _0801FB34  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #4
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #64
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FB38  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FAF4:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0801FB04:
	.4byte 0x030000D0
_0801FB08:
	.4byte 0x030000D8
_0801FB0C:
	.4byte 0x040000D4
_0801FB10:
	.4byte gUnknown_082AF7A8
_0801FB14:
	.4byte 0x06010000
_0801FB18:
	.4byte 0x84000200
_0801FB1C:
	.4byte gUnknown_082AF7A0
_0801FB20:
	.4byte gOamData
_0801FB24:
	.4byte 0x84000002
_0801FB28:
	.4byte 0x000001FF
_0801FB2C:
	.4byte 0xFFFFFE00
_0801FB30:
	.4byte 0x000003FF
_0801FB34:
	.4byte 0xFFFFFC00
_0801FB38:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0801F838

	THUMB_FUNC_START sub_0801FB3C
sub_0801FB3C: @ 0x0801FB3C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _0801FF2C  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _0801FB5E
	b _0801FE4C
_0801FB5E:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _0801FC54
	ldr r1, _0801FF30  @ =0x030000D8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FC54:
	ldr r2, _0801FF2C  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0801FD50
	ldr r3, _0801FF30  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FD50:
	ldr r2, _0801FF2C  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0801FE4C
	ldr r3, _0801FF30  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF3C  @ =gUnknown_082B34B4
	ldr r3, _0801FF2C  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF40  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF4C  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0801FF68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FE4C:
	ldr r2, _0801FF2C  @ =0x030000D0
	mov r9, r2
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0801FE5A
	b _0802019E
_0801FE5A:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _0801FE62
	b _0801FFA0
_0801FE62:
	ldr r3, _0801FF30  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	ldr r0, _0801FF34  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _0801FF38  @ =0x040000D4
	ldr r2, _0801FF6C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0801FF70  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0801FF44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0801FF48  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0801FF74  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _0801FF50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0801FF54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0801FF58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0801FF5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0801FF60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0801FF64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _0801FF30  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _0801FF78
	.byte 0x00
	.byte 0x00
_0801FF2C:
	.4byte 0x030000D0
_0801FF30:
	.4byte 0x030000D8
_0801FF34:
	.4byte 0x030000D4
_0801FF38:
	.4byte 0x040000D4
_0801FF3C:
	.4byte gUnknown_082B34B4
_0801FF40:
	.4byte gUnknown_082B354C
_0801FF44:
	.4byte 0x06010000
_0801FF48:
	.4byte 0x84000100
_0801FF4C:
	.4byte gUnknown_082B3544
_0801FF50:
	.4byte gOamData
_0801FF54:
	.4byte 0x84000002
_0801FF58:
	.4byte 0x000001FF
_0801FF5C:
	.4byte 0xFFFFFE00
_0801FF60:
	.4byte 0x000003FF
_0801FF64:
	.4byte 0xFFFFFC00
_0801FF68:
	.4byte 0x80000200
_0801FF6C:
	.4byte gUnknown_082B55E4
_0801FF70:
	.4byte gUnknown_082B567C
_0801FF74:
	.4byte gUnknown_082B5674
_0801FF78:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0801FFA0:
	mov r2, r9
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	beq _0802009C
	ldr r3, _080201B0  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080201B4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080201B8  @ =0x040000D4
	ldr r2, _080201BC  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080201C0  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080201C4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080201C8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080201CC  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080201D0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080201D4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080201D8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080201DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080201E0  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080201E4  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080201B0  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802009C:
	ldr r2, _080201E8  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0802019E
	ldr r3, _080201B0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080201B4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080201B8  @ =0x040000D4
	ldr r2, _080201BC  @ =gUnknown_082B55E4
	ldr r3, _080201E8  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080201C0  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080201C4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080201C8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080201CC  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080201D0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080201D4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080201D8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080201DC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080201E0  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _080201E4  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080201AC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802019E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080201AC:
	.4byte 0x80000200
_080201B0:
	.4byte 0x030000D8
_080201B4:
	.4byte 0x030000D4
_080201B8:
	.4byte 0x040000D4
_080201BC:
	.4byte gUnknown_082B55E4
_080201C0:
	.4byte gUnknown_082B567C
_080201C4:
	.4byte 0x06010000
_080201C8:
	.4byte 0x84000100
_080201CC:
	.4byte gUnknown_082B5674
_080201D0:
	.4byte gOamData
_080201D4:
	.4byte 0x84000002
_080201D8:
	.4byte 0x000001FF
_080201DC:
	.4byte 0xFFFFFE00
_080201E0:
	.4byte 0x000003FF
_080201E4:
	.4byte 0xFFFFFC00
_080201E8:
	.4byte 0x030000D0
	THUMB_FUNC_END sub_0801FB3C

	THUMB_FUNC_START sub_080201EC
sub_080201EC: @ 0x080201EC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _080205DC  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _0802020E
	b _080204FC
_0802020E:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne _08020304
	ldr r1, _080205E0  @ =0x030000D8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020304:
	ldr r2, _080205DC  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _08020400
	ldr r3, _080205E0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #9]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020400:
	ldr r2, _080205DC  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _080204FC
	ldr r3, _080205E0  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #17]
	add r0, r0, #15
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _080205EC  @ =gUnknown_082B34B4
	ldr r3, _080205DC  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080205F0  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080205FC  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08020618  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080204FC:
	ldr r2, _080205DC  @ =0x030000D0
	mov r9, r2
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _0802050A
	b _0802084E
_0802050A:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08020512
	b _08020650
_08020512:
	ldr r3, _080205E0  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	mov r1, r8
	str r0, [r1]
	ldr r0, _080205E4  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _080205E8  @ =0x040000D4
	ldr r2, _0802061C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020620  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080205F4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080205F8  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08020624  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020600  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020604  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020608  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802060C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08020610  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08020614  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080205E0  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	b _08020628
	.byte 0x00
	.byte 0x00
_080205DC:
	.4byte 0x030000D0
_080205E0:
	.4byte 0x030000D8
_080205E4:
	.4byte 0x030000D4
_080205E8:
	.4byte 0x040000D4
_080205EC:
	.4byte gUnknown_082B34B4
_080205F0:
	.4byte gUnknown_082B354C
_080205F4:
	.4byte 0x06010000
_080205F8:
	.4byte 0x84000100
_080205FC:
	.4byte gUnknown_082B3544
_08020600:
	.4byte gOamData
_08020604:
	.4byte 0x84000002
_08020608:
	.4byte 0x000001FF
_0802060C:
	.4byte 0xFFFFFE00
_08020610:
	.4byte 0x000003FF
_08020614:
	.4byte 0xFFFFFC00
_08020618:
	.4byte 0x80000200
_0802061C:
	.4byte gUnknown_082B55E4
_08020620:
	.4byte gUnknown_082B567C
_08020624:
	.4byte gUnknown_082B5674
_08020628:
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08020650:
	mov r2, r9
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0802074C
	ldr r3, _08020860  @ =0x030000D8
	ldr r0, [r3]
	ldrb r0, [r0, #10]
	mov r1, r8
	str r0, [r1]
	ldr r0, _08020864  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _08020868  @ =0x040000D4
	ldr r2, _0802086C  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020870  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08020874  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020878  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802087C  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020880  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020884  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020888  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802088C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08020890  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08020894  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08020860  @ =0x030000D8
	ldr r0, [r1]
	ldrb r1, [r0, #14]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802074C:
	ldr r2, _08020898  @ =0x030000D0
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0802084E
	ldr r3, _08020860  @ =0x030000D8
	mov r9, r3
	ldr r0, [r3]
	ldrb r0, [r0, #18]
	mov r1, r8
	str r0, [r1]
	ldr r0, _08020864  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	sub r0, r0, #10
	mov r2, r10
	str r0, [r2]
	ldr r4, _08020868  @ =0x040000D4
	ldr r2, _0802086C  @ =gUnknown_082B55E4
	ldr r3, _08020898  @ =0x030000D0
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _08020870  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08020874  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08020878  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802087C  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08020880  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08020884  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08020888  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802088C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08020890  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _08020894  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r1, [r0, #22]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r2, #128
	lsl r2, r2, #3
	add r0, r2, #0
	ldrh r3, [r6]
	add r0, r0, r3
	strh r0, [r6]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #32
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802085C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802084E:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802085C:
	.4byte 0x80000200
_08020860:
	.4byte 0x030000D8
_08020864:
	.4byte 0x030000D4
_08020868:
	.4byte 0x040000D4
_0802086C:
	.4byte gUnknown_082B55E4
_08020870:
	.4byte gUnknown_082B567C
_08020874:
	.4byte 0x06010000
_08020878:
	.4byte 0x84000100
_0802087C:
	.4byte gUnknown_082B5674
_08020880:
	.4byte gOamData
_08020884:
	.4byte 0x84000002
_08020888:
	.4byte 0x000001FF
_0802088C:
	.4byte 0xFFFFFE00
_08020890:
	.4byte 0x000003FF
_08020894:
	.4byte 0xFFFFFC00
_08020898:
	.4byte 0x030000D0
	THUMB_FUNC_END sub_080201EC

	THUMB_FUNC_START sub_0802089C
sub_0802089C: @ 0x0802089C
	push {r4,lr}
	sub sp, sp, #12
	ldr r2, _080208F4  @ =0x030000D4
	ldr r0, [r2]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	mov r4, #0
	strb r1, [r0, #2]
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #43
	bne _080208EC
	mov r0, #4
	strb r0, [r1, #1]
	ldr r3, _080208F8  @ =0x030000DC
	ldr r1, _080208FC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020900  @ =0x030000E0
	ldr r1, _08020904  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080208EC:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_080208F4:
	.4byte 0x030000D4
_080208F8:
	.4byte 0x030000DC
_080208FC:
	.4byte gUnknown_08079878
_08020900:
	.4byte 0x030000E0
_08020904:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_0802089C

	THUMB_FUNC_START sub_08020908
sub_08020908: @ 0x08020908
	push {r4,lr}
	ldr r0, _08020928  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r4, r0, #0
	cmp r1, #2
	bhi _08020930
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0802092C
	add r0, r1, #1
	strb r0, [r2, #4]
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #6]
	b _08020930
_08020928:
	.4byte 0x030000D0
_0802092C:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08020930:
	ldr r0, _08020964  @ =0x030000D4
	ldr r1, [r0]
	ldrh r1, [r1, #20]
	add r2, r0, #0
	cmp r1, #8
	bne _08020942
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #7]
_08020942:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #8
	bls _0802096C
	ldr r1, [r4]
	ldrb r3, [r1, #5]
	cmp r3, #2
	bhi _0802096C
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08020968
	add r0, r3, #1
	strb r0, [r1, #5]
	ldr r1, [r4]
	mov r0, #1
	b _0802096A
	.byte 0x00
	.byte 0x00
_08020964:
	.4byte 0x030000D4
_08020968:
	sub r0, r0, #1
_0802096A:
	strb r0, [r1, #6]
_0802096C:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #16
	bne _080209A2
	ldr r1, [r4]
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #6]
	ldr r1, [r2]
	mov r0, #5
	strb r0, [r1, #1]
	ldr r3, _080209A8  @ =0x030000DC
	ldr r1, _080209AC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080209B0  @ =0x030000E0
	ldr r1, _080209B4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_080209A2:
	pop {r4}
	pop {r0}
	bx r0
_080209A8:
	.4byte 0x030000DC
_080209AC:
	.4byte gUnknown_08079878
_080209B0:
	.4byte 0x030000E0
_080209B4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020908

	THUMB_FUNC_START sub_080209B8
sub_080209B8: @ 0x080209B8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #16
	mov r0, #8
	mov r8, r0
	str r0, [sp, #8]
	mov r7, #4
	str r7, [sp, #12]
	ldr r4, _08020A54  @ =0x030000CC
	ldr r0, [r4]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r6, _08020A58  @ =gUnknown_0885C4C4
	ldr r2, [r6, #64]
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
	ldr r5, _08020A5C  @ =0x030000D4
	ldr r0, [r5]
	ldrh r0, [r0, #20]
	cmp r0, #119
	bls _08020A46
	mov r0, r8
	str r0, [sp, #8]
	str r7, [sp, #12]
	ldr r0, [r4]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r6, #64]
	mov r0, #5
	str r0, [sp]
	mov r4, #0
	str r4, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r0, _08020A60  @ =0x030000D0
	ldr r0, [r0]
	strb r4, [r0, #1]
	ldr r1, [r5]
	mov r0, #6
	strb r0, [r1, #1]
	ldr r3, _08020A64  @ =0x030000DC
	ldr r1, _08020A68  @ =gUnknown_08079878
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020A6C  @ =0x030000E0
	ldr r1, _08020A70  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	mov r0, #42
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08020A46:
	add sp, sp, #16
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020A54:
	.4byte 0x030000CC
_08020A58:
	.4byte gUnknown_0885C4C4
_08020A5C:
	.4byte 0x030000D4
_08020A60:
	.4byte 0x030000D0
_08020A64:
	.4byte 0x030000DC
_08020A68:
	.4byte gUnknown_08079878
_08020A6C:
	.4byte 0x030000E0
_08020A70:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_080209B8

	THUMB_FUNC_START sub_08020A74
sub_08020A74: @ 0x08020A74
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08020ACC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08020AE4
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #79
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _08020AD0  @ =0x030000D4
	ldr r1, [r2]
	mov r0, #7
	strb r0, [r1, #1]
	ldr r3, _08020AD4  @ =0x030000DC
	ldr r1, _08020AD8  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020ADC  @ =0x030000E0
	ldr r1, _08020AE0  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
	b _08020BB0
_08020ACC:
	.4byte gUnknown_030012E8
_08020AD0:
	.4byte 0x030000D4
_08020AD4:
	.4byte 0x030000DC
_08020AD8:
	.4byte gUnknown_08079878
_08020ADC:
	.4byte 0x030000E0
_08020AE0:
	.4byte gUnknown_080798B0
_08020AE4:
	ldr r7, _08020BC0  @ =0x030000D4
	ldr r0, [r7]
	ldrh r0, [r0, #20]
	mov r5, #7
	and r5, r5, r0
	cmp r5, #0
	bne _08020BB0
	ldr r6, _08020BC4  @ =0x030000D0
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020BC8  @ =0x030000CC
	mov r10, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	mov r9, r1
	add r0, r0, r9
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08020BCC  @ =gUnknown_0885C4C4
	mov r8, r0
	ldr r3, [r0, #64]
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	str r5, [sp]
	mov r4, #128
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #78
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08020B4E
	strb r5, [r1, #1]
_08020B4E:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r1, r10
	ldr r0, [r1]
	add r0, r0, r9
	ldr r1, [r0]
	mov r0, r8
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, [r7]
	ldrh r1, [r0, #20]
	ldr r0, _08020BD0  @ =0x00000634
	cmp r1, r0
	bls _08020BB0
	str r5, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	mov r0, #79
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, [r7]
	mov r0, #7
	strb r0, [r1, #1]
	ldr r3, _08020BD4  @ =0x030000DC
	ldr r1, _08020BD8  @ =gUnknown_08079878
	ldr r2, [r7]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020BDC  @ =0x030000E0
	ldr r1, _08020BE0  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #20]
_08020BB0:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08020BC0:
	.4byte 0x030000D4
_08020BC4:
	.4byte 0x030000D0
_08020BC8:
	.4byte 0x030000CC
_08020BCC:
	.4byte gUnknown_0885C4C4
_08020BD0:
	.4byte 0x00000634
_08020BD4:
	.4byte 0x030000DC
_08020BD8:
	.4byte gUnknown_08079878
_08020BDC:
	.4byte 0x030000E0
_08020BE0:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020A74

	THUMB_FUNC_START sub_08020BE4
sub_08020BE4: @ 0x08020BE4
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	ldr r6, _08020CDC  @ =0x030000D4
	ldr r1, [r6]
	ldrh r0, [r1, #20]
	add r0, r0, #1
	mov r7, #0
	strh r0, [r1, #20]
	lsl r0, r0, #16
	lsr r0, r0, #16
	cmp r0, #10
	beq _08020C16
	cmp r0, #22
	beq _08020C16
	cmp r0, #38
	beq _08020C16
	cmp r0, #54
	beq _08020C16
	cmp r0, #78
	beq _08020C16
	cmp r0, #118
	bne _08020CF4
_08020C16:
	mov r5, #0
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #78
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r6, _08020CE0  @ =0x030000D0
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020CE4  @ =0x030000CC
	mov r9, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	mov r8, r1
	add r0, r0, r8
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r7, _08020CE8  @ =gUnknown_0885C4C4
	ldr r3, [r7, #64]
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _08020C72
	strb r5, [r1, #1]
_08020C72:
	ldr r0, [r6]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, r8
	ldr r1, [r0]
	ldr r2, [r7, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r4, #128
	lsl r4, r4, #1
	add r0, r4, #0
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08020CA2
	b _08020DF8
_08020CA2:
	ldr r0, _08020CDC  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #118
	beq _08020CAE
	b _08020DF8
_08020CAE:
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	ldr r1, _08020CEC  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08020CC2
	b _08020DF8
_08020CC2:
	ldr r0, _08020CF0  @ =gUnknown_03000B90
	ldr r0, [r0, #16]
	cmp r0, #1
	beq _08020CCC
	b _08020DF8
_08020CCC:
	mov r0, #78
	strh r0, [r2, #20]
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	b _08020DF8
	.byte 0x00
	.byte 0x00
_08020CDC:
	.4byte 0x030000D4
_08020CE0:
	.4byte 0x030000D0
_08020CE4:
	.4byte 0x030000CC
_08020CE8:
	.4byte gUnknown_0885C4C4
_08020CEC:
	.4byte 0x030000D8
_08020CF0:
	.4byte gUnknown_03000B90
_08020CF4:
	cmp r0, #178
	bne _08020D4C
	ldr r0, _08020D40  @ =0x030000D0
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020D44  @ =0x030000CC
	mov r8, r0
	ldr r0, [r0]
	mov r6, #160
	lsl r6, r6, #1
	add r0, r0, r6
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r5, _08020D48  @ =gUnknown_0885C4C4
	ldr r3, [r5, #64]
	str r4, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r6
	ldr r1, [r0]
	ldr r2, [r5, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08020DF8
	.byte 0x00
	.byte 0x00
_08020D40:
	.4byte 0x030000D0
_08020D44:
	.4byte 0x030000CC
_08020D48:
	.4byte gUnknown_0885C4C4
_08020D4C:
	cmp r0, #200
	bne _08020DF8
	ldr r5, _08020D90  @ =0x030000D0
	ldr r0, [r5]
	ldrb r1, [r0, #1]
	lsl r0, r1, #3
	add r0, r0, r1
	add r0, r0, #4
	str r0, [sp, #12]
	mov r4, #5
	str r4, [sp, #16]
	ldr r0, _08020D94  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08020D98  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _08020D9C
	ldr r1, [r6]
	mov r0, #3
	b _08020DAE
	.byte 0x00
	.byte 0x00
_08020D90:
	.4byte 0x030000D0
_08020D94:
	.4byte 0x030000CC
_08020D98:
	.4byte gUnknown_0885C4C4
_08020D9C:
	cmp r0, #1
	bne _08020DA6
	ldr r1, [r6]
	mov r0, #12
	b _08020DAE
_08020DA6:
	cmp r0, #2
	bne _08020DB0
	ldr r1, [r6]
	mov r0, #21
_08020DAE:
	strb r0, [r1, #4]
_08020DB0:
	ldr r2, _08020E08  @ =0x030000D4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #8
	strb r0, [r1, #1]
	ldr r4, _08020E0C  @ =0x030000DC
	ldr r1, _08020E10  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r4, _08020E14  @ =0x030000E0
	ldr r1, _08020E18  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strh r3, [r2, #20]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #69
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_08020DF8:
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08020E08:
	.4byte 0x030000D4
_08020E0C:
	.4byte 0x030000DC
_08020E10:
	.4byte gUnknown_08079878
_08020E14:
	.4byte 0x030000E0
_08020E18:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020BE4

	THUMB_FUNC_START sub_08020E1C
sub_08020E1C: @ 0x08020E1C
	push {r4,lr}
	ldr r0, _08020E44  @ =0x030000D0
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r3, r0, #0
	cmp r1, #0
	beq _08020E4C
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08020E4C
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08020E48
	sub r0, r1, #1
	strb r0, [r2, #5]
	ldr r1, [r3]
	mov r0, #1
	strb r0, [r1, #6]
	b _08020E4C
	.byte 0x00
	.byte 0x00
_08020E44:
	.4byte 0x030000D0
_08020E48:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08020E4C:
	ldr r0, _08020E7C  @ =0x030000D4
	ldr r1, [r0]
	ldrh r1, [r1, #20]
	add r2, r0, #0
	cmp r1, #8
	bne _08020E5E
	ldr r1, [r3]
	mov r0, #0
	strb r0, [r1, #7]
_08020E5E:
	ldr r0, [r2]
	ldrh r0, [r0, #20]
	cmp r0, #8
	bls _08020E84
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08020E80
	ldrb r0, [r1, #4]
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r1, [r3]
	mov r0, #1
	b _08020E82
	.byte 0x00
	.byte 0x00
_08020E7C:
	.4byte 0x030000D4
_08020E80:
	sub r0, r0, #1
_08020E82:
	strb r0, [r1, #6]
_08020E84:
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #15
	bls _08020EB2
	mov r4, #0
	mov r0, #9
	strb r0, [r1, #1]
	ldr r3, _08020EB8  @ =0x030000DC
	ldr r1, _08020EBC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020EC0  @ =0x030000E0
	ldr r1, _08020EC4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08020EB2:
	pop {r4}
	pop {r0}
	bx r0
_08020EB8:
	.4byte 0x030000DC
_08020EBC:
	.4byte gUnknown_08079878
_08020EC0:
	.4byte 0x030000E0
_08020EC4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020E1C

	THUMB_FUNC_START sub_08020EC8
sub_08020EC8: @ 0x08020EC8
	push {r4,lr}
	ldr r2, _08020F0C  @ =0x030000D4
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08020ED8
	sub r0, r0, #1
	strb r0, [r1, #2]
_08020ED8:
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #59
	bls _08020F06
	mov r4, #0
	mov r0, #11
	strb r0, [r1, #1]
	ldr r3, _08020F10  @ =0x030000DC
	ldr r1, _08020F14  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020F18  @ =0x030000E0
	ldr r1, _08020F1C  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08020F06:
	pop {r4}
	pop {r0}
	bx r0
_08020F0C:
	.4byte 0x030000D4
_08020F10:
	.4byte 0x030000DC
_08020F14:
	.4byte gUnknown_08079878
_08020F18:
	.4byte 0x030000E0
_08020F1C:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08020EC8

	THUMB_FUNC_START sub_08020F20
sub_08020F20: @ 0x08020F20
	push {r4-r7,lr}
	ldr r0, _08020F8C  @ =0x030000D4
	ldr r3, [r0]
	ldrh r1, [r3, #20]
	add r5, r0, #0
	cmp r1, #0
	beq _0802100C
	mov r0, #12
	strb r0, [r3, #1]
	ldr r3, _08020F90  @ =0x030000DC
	ldr r1, _08020F94  @ =gUnknown_08079878
	ldr r2, [r5]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020F98  @ =0x030000E0
	ldr r1, _08020F9C  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08020FA0  @ =0x030000D0
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _08020FA4  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r6, r3, #0
	add r7, r2, #0
	cmp r0, #1
	bls _08020F78
	add r0, r1, #0
	cmp r0, #4
	beq _08020F78
	cmp r0, #5
	bne _08020FAC
_08020F78:
	ldr r3, [r6]
	ldr r2, _08020FA8  @ =gUnknown_0811C010
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #9]
	b _08020FC0
_08020F8C:
	.4byte 0x030000D4
_08020F90:
	.4byte 0x030000DC
_08020F94:
	.4byte gUnknown_08079878
_08020F98:
	.4byte 0x030000E0
_08020F9C:
	.4byte gUnknown_080798B0
_08020FA0:
	.4byte 0x030000D0
_08020FA4:
	.4byte 0x030000D8
_08020FA8:
	.4byte gUnknown_0811C010
_08020FAC:
	cmp r0, #3
	bne _08020FC0
	ldr r2, _08020FE0  @ =gUnknown_0811F5F4
	ldrb r1, [r4, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r4, #9]
_08020FC0:
	ldr r0, [r6]
	ldrb r0, [r0, #1]
	ldr r1, [r7]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08020FD4
	cmp r0, #3
	bne _08020FE4
_08020FD4:
	ldr r1, [r5]
	mov r0, #80
	strh r0, [r1, #16]
	strh r0, [r1, #18]
	b _08021006
	.byte 0x00
	.byte 0x00
_08020FE0:
	.4byte gUnknown_0811F5F4
_08020FE4:
	cmp r0, #2
	bne _08020FEE
	ldr r0, [r5]
	mov r1, #95
	b _08021000
_08020FEE:
	cmp r0, #4
	bne _08020FF8
	ldr r0, [r5]
	mov r1, #140
	b _08021000
_08020FF8:
	cmp r0, #5
	bne _08021006
	ldr r0, [r5]
	mov r1, #220
_08021000:
	strh r1, [r0, #16]
	mov r1, #50
	strh r1, [r0, #18]
_08021006:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #20]
_0802100C:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08020F20

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021014
sub_08021014: @ 0x08021014
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r3, _08021058  @ =0x030000D0
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _0802105C  @ =0x030000D8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r3, #0
	add r6, r2, #0
	cmp r0, #1
	bls _08021040
	add r0, r1, #0
	cmp r0, #4
	beq _08021040
	cmp r0, #5
	bne _0802106A
_08021040:
	ldr r1, [r5]
	ldrb r2, [r1, #3]
	cmp r2, #10
	bhi _0802109C
	ldrb r0, [r1, #9]
	cmp r0, #0
	bne _08021064
	add r0, r2, #1
	strb r0, [r1, #3]
	ldr r3, [r5]
	ldr r2, _08021060  @ =gUnknown_0811C010
	b _08021082
_08021058:
	.4byte 0x030000D0
_0802105C:
	.4byte 0x030000D8
_08021060:
	.4byte gUnknown_0811C010
_08021064:
	sub r0, r0, #1
	strb r0, [r1, #9]
	b _0802109C
_0802106A:
	cmp r0, #3
	bne _0802109C
	ldrb r1, [r4, #3]
	cmp r1, #10
	bhi _0802109C
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08021098
	add r0, r1, #1
	strb r0, [r4, #3]
	ldr r3, [r5]
	ldr r2, _08021094  @ =gUnknown_0811F5F4
_08021082:
	ldrb r1, [r3, #3]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #9]
	b _0802109C
	.byte 0x00
	.byte 0x00
_08021094:
	.4byte gUnknown_0811F5F4
_08021098:
	sub r0, r0, #1
	strb r0, [r4, #9]
_0802109C:
	ldr r0, _08021104  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #10
	bne _08021146
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	ldr r1, [r6]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080210C6
	add r0, r1, #0
	cmp r0, #4
	beq _080210C6
	cmp r0, #5
	bne _08021110
_080210C6:
	ldr r0, _08021104  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08021108  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0802110C  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08021146
	.byte 0x00
	.byte 0x00
_08021104:
	.4byte 0x030000D4
_08021108:
	.4byte 0x030000CC
_0802110C:
	.4byte gUnknown_0885C4C4
_08021110:
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _080211B8  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _080211BC  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #80
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08021146:
	ldr r0, _080211C0  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	ldrh r1, [r2, #18]
	cmp r0, r1
	bne _080211FA
	ldr r0, _080211C4  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _080211C8  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08021176
	add r0, r1, #0
	cmp r0, #4
	beq _08021176
	cmp r0, #5
	bne _080211D0
_08021176:
	ldr r0, _080211C0  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _080211B8  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #148
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _080211BC  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _080211CC  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080211FA
	mov r0, #1
	bl sub_08014A58
	b _080211FA
_080211B8:
	.4byte 0x030000CC
_080211BC:
	.4byte gUnknown_0885C4C4
_080211C0:
	.4byte 0x030000D4
_080211C4:
	.4byte 0x030000D0
_080211C8:
	.4byte 0x030000D8
_080211CC:
	.4byte gUnknown_03000BBC
_080211D0:
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #152
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
_080211FA:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrh r0, [r0, #20]
	cmp r0, #55
	bne _0802125A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08021220
	cmp r0, #4
	beq _08021220
	cmp r0, #5
	bne _0802125A
_08021220:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802125A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrh r0, [r0, #20]
	cmp r0, #82
	bne _080212C0
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08021280
	cmp r0, #4
	beq _08021280
	cmp r0, #5
	bne _080212C0
_08021280:
	ldr r0, _08021514  @ =0x030000D4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080212C0
	mov r0, #1
	bl sub_08014A58
_080212C0:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #100
	bne _0802131A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802131A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #154
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802131A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #127
	bne _0802137A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802137A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #154
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _0802137A
	mov r0, #1
	bl sub_08014A58
_0802137A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #145
	bne _080213CE
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _080213CE
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #156
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080213CE:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #172
	bne _08021426
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08021426
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #156
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08021426
	mov r0, #1
	bl sub_08014A58
_08021426:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #190
	bne _0802147A
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802147A
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r2, [r0, #64]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802147A:
	ldr r0, _08021514  @ =0x030000D4
	ldr r2, [r0]
	ldrh r0, [r2, #20]
	cmp r0, #207
	bne _080214D2
	ldr r0, _08021518  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802151C  @ =0x030000D8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _080214D2
	ldrb r0, [r2, #4]
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _0802150C  @ =0x030000CC
	ldr r0, [r0]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08021510  @ =gUnknown_0885C4C4
	ldr r3, [r0, #64]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08021520  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _080214D2
	mov r0, #1
	bl sub_08014A58
_080214D2:
	ldr r2, _08021514  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	ldrh r3, [r1, #16]
	cmp r0, r3
	bcc _08021504
	mov r4, #0
	mov r0, #13
	strb r0, [r1, #1]
	ldr r3, _08021524  @ =0x030000DC
	ldr r1, _08021528  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802152C  @ =0x030000E0
	ldr r1, _08021530  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021504:
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_0802150C:
	.4byte 0x030000CC
_08021510:
	.4byte gUnknown_0885C4C4
_08021514:
	.4byte 0x030000D4
_08021518:
	.4byte 0x030000D0
_0802151C:
	.4byte 0x030000D8
_08021520:
	.4byte gUnknown_03000BBC
_08021524:
	.4byte 0x030000DC
_08021528:
	.4byte gUnknown_08079878
_0802152C:
	.4byte 0x030000E0
_08021530:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021014

	THUMB_FUNC_START sub_08021534
sub_08021534: @ 0x08021534
	push {r4,r5,lr}
	bl sub_0801488C
	ldr r0, _0802154C  @ =gUnknown_03000B80
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08021550
	mov r0, #9
	b _0802159E
_0802154C:
	.4byte gUnknown_03000B80
_08021550:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _080215A6
	ldr r4, _08021594  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802159C
	ldr r5, _08021598  @ =gUnknown_080788C8
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _0802159C
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802159E
	.byte 0x00
	.byte 0x00
_08021594:
	.4byte gUnknown_03000B90
_08021598:
	.4byte gUnknown_080788C8
_0802159C:
	mov r0, #8
_0802159E:
	mov r1, #1
	bl sub_080070E8
	b _080215AE
_080215A6:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_080215AE:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021534

	THUMB_FUNC_START sub_080215B4
sub_080215B4: @ 0x080215B4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	mov r0, #0
	bl sub_08034898
	bl sub_080720AC
	mov r0, #68
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	ldr r7, _08021648  @ =0x030000D0
	mov r0, #12
	bl sub_08034854
	str r0, [r7]
	ldr r5, _0802164C  @ =0x030000D4
	mov r0, #24
	bl sub_08034854
	str r0, [r5]
	ldr r4, _08021650  @ =0x030000D8
	mov r0, #24
	bl sub_08034854
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0, #20]
	ldr r0, _08021654  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08021658  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r0, _0802165C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08021660  @ =gUnknown_0300192C
	strh r1, [r0]
	ldr r0, _08021664  @ =gUnknown_030009DC
	ldr r5, [r0]
	ldr r0, _08021668  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #10
	bl __modsi3
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	mov r1, #1
	and r4, r4, r1
	cmp r4, #0
	bne _08021678
	and r5, r5, r1
	cmp r5, #0
	bne _08021678
	cmp r0, #4
	beq _0802163A
	cmp r6, #4
	bne _0802166C
_0802163A:
	ldr r1, [r7]
	mov r0, #5
	strb r0, [r1, #10]
	ldr r1, [r7]
	mov r0, #11
	b _08021684
	.byte 0x00
	.byte 0x00
_08021648:
	.4byte 0x030000D0
_0802164C:
	.4byte 0x030000D4
_08021650:
	.4byte 0x030000D8
_08021654:
	.4byte gUnknown_030012A0
_08021658:
	.4byte gUnknown_03001710
_0802165C:
	.4byte gUnknown_03001930
_08021660:
	.4byte gUnknown_0300192C
_08021664:
	.4byte gUnknown_030009DC
_08021668:
	.4byte gUnknown_03000B54
_0802166C:
	ldr r1, [r7]
	mov r0, #4
	strb r0, [r1, #10]
	ldr r1, [r7]
	mov r0, #12
	b _08021684
_08021678:
	ldr r2, _080216A8  @ =0x030000D0
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #10]
	ldr r1, [r2]
	mov r0, #5
_08021684:
	strb r0, [r1, #11]
	ldr r0, _080216AC  @ =0x030000D4
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	bl sub_0804A244
	mov r1, #6
	bl __modsi3
	cmp r0, #5
	bhi _08021768
	lsl r0, r0, #2
	ldr r1, _080216B0  @ =0x080216B4
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_080216A8:
	.4byte 0x030000D0
_080216AC:
	.4byte 0x030000D4
_080216B0:
	.4byte _080216B4
_080216B4:
	.4byte _080216CC
	.4byte _080216E8
	.4byte _08021708
	.4byte _08021728
	.4byte _08021748
	.4byte _08021768
_080216CC:
	ldr r2, _080216E0  @ =0x030000D8
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _080216E4  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _08021778
	.byte 0x00
	.byte 0x00
_080216E0:
	.4byte 0x030000D8
_080216E4:
	.4byte 0x030000D0
_080216E8:
	ldr r1, _08021700  @ =0x030000D8
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2]
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2, #8]
	ldr r1, [r1]
	ldr r0, _08021704  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _0802177E
_08021700:
	.4byte 0x030000D8
_08021704:
	.4byte 0x030000D0
_08021708:
	ldr r2, _08021720  @ =0x030000D8
	ldr r1, [r2]
	ldr r0, _08021724  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1]
	ldr r1, [r2]
	mov r0, #3
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #1
	b _0802177E
_08021720:
	.4byte 0x030000D8
_08021724:
	.4byte 0x030000D0
_08021728:
	ldr r1, _08021740  @ =0x030000D8
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #8]
	ldr r1, [r1]
	ldr r0, _08021744  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	b _0802177E
_08021740:
	.4byte 0x030000D8
_08021744:
	.4byte 0x030000D0
_08021748:
	ldr r2, _08021760  @ =0x030000D8
	ldr r1, [r2]
	mov r0, #3
	strb r0, [r1]
	ldr r1, [r2]
	ldr r0, _08021764  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #1
	b _0802177E
_08021760:
	.4byte 0x030000D8
_08021764:
	.4byte 0x030000D0
_08021768:
	ldr r2, _080218E4  @ =0x030000D8
	ldr r1, [r2]
	ldr r0, _080218E8  @ =0x030000D0
	ldr r0, [r0]
	ldrb r0, [r0, #10]
	strb r0, [r1]
	ldr r1, [r2]
	mov r0, #1
_08021778:
	strb r0, [r1, #8]
	ldr r1, [r2]
	mov r0, #3
_0802177E:
	strb r0, [r1, #16]
	ldr r4, _080218EC  @ =gUnknown_0885C4C4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, _080218F0  @ =gUnknown_0885D720
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl sub_08032F24
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #202
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _080218F4  @ =0x030000CC
	str r0, [r1]
	add r5, sp, #16
	mov r0, #160
	strh r0, [r5]
	ldr r1, _080218F8  @ =0x040000D4
	str r5, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080218FC  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	mov r0, #0
	mov r8, r0
	strh r0, [r5]
	ldr r1, [r4, #64]
	ldr r2, [r4, #68]
	sub r2, r2, r1
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r5, #0
	bl CpuSet
	ldr r6, _08021900  @ =0x030000D4
	ldr r1, [r6]
	ldr r4, _08021904  @ =gUnknown_03001930
	ldrh r0, [r4]
	str r0, [r1, #8]
	ldr r0, _08021908  @ =gUnknown_082EBE60
	ldr r5, _0802190C  @ =gUnknown_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r1, [r6]
	str r0, [r1, #12]
	ldr r0, _08021910  @ =gUnknown_082ECB40
	mov r3, #160
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0800F0C4
	ldr r0, [r6]
	mov r1, r8
	strb r1, [r0, #1]
	ldr r3, _08021914  @ =0x030000DC
	ldr r1, _08021918  @ =gUnknown_08079878
	ldr r2, [r6]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802191C  @ =0x030000E0
	ldr r1, _08021920  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080218E8  @ =0x030000D0
	ldr r1, [r3]
	mov r0, #4
	strb r0, [r1]
	ldr r1, [r6]
	mov r0, #20
	strb r0, [r1, #2]
	ldr r1, [r6]
	mov r0, #84
	strb r0, [r1, #3]
	ldr r1, [r3]
	mov r0, #255
	strb r0, [r1, #1]
	ldr r0, [r3]
	mov r2, r8
	strb r2, [r0, #9]
	ldr r1, _080218E4  @ =0x030000D8
	ldr r0, [r1]
	mov r2, #16
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	strb r2, [r0, #3]
	ldr r0, [r1]
	mov r4, #69
	strb r4, [r0, #4]
	ldr r0, [r1]
	mov r5, #1
	strb r5, [r0, #5]
	ldr r2, [r1]
	mov r0, #8
	strb r0, [r2, #6]
	ldr r0, [r1]
	mov r2, #88
	strb r2, [r0, #9]
	ldr r0, [r1]
	strb r2, [r0, #10]
	ldr r0, [r1]
	strb r2, [r0, #11]
	ldr r0, [r1]
	strb r4, [r0, #12]
	ldr r0, [r1]
	strb r5, [r0, #13]
	ldr r2, [r1]
	mov r0, #6
	strb r0, [r2, #14]
	ldr r0, [r1]
	mov r2, #160
	strb r2, [r0, #17]
	ldr r0, [r1]
	strb r2, [r0, #18]
	ldr r0, [r1]
	strb r2, [r0, #19]
	ldr r0, [r1]
	strb r4, [r0, #20]
	ldr r0, [r1]
	strb r5, [r0, #21]
	ldr r1, [r1]
	mov r0, #7
	strb r0, [r1, #22]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #3]
	ldr r0, [r6]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r5, [r0, #6]
	ldr r0, [r3]
	strb r1, [r0, #7]
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r0, #9
	mov r1, #3
	bl sub_08032788
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080218E4:
	.4byte 0x030000D8
_080218E8:
	.4byte 0x030000D0
_080218EC:
	.4byte gUnknown_0885C4C4
_080218F0:
	.4byte gUnknown_0885D720
_080218F4:
	.4byte 0x030000CC
_080218F8:
	.4byte 0x040000D4
_080218FC:
	.4byte 0x81000100
_08021900:
	.4byte 0x030000D4
_08021904:
	.4byte gUnknown_03001930
_08021908:
	.4byte gUnknown_082EBE60
_0802190C:
	.4byte gUnknown_0300192C
_08021910:
	.4byte gUnknown_082ECB40
_08021914:
	.4byte 0x030000DC
_08021918:
	.4byte gUnknown_08079878
_0802191C:
	.4byte 0x030000E0
_08021920:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_080215B4

	THUMB_FUNC_START sub_08021924
sub_08021924: @ 0x08021924
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _08021990  @ =gUnknown_03000BBC
	ldrb r4, [r0]
	bl sub_08029C20
	bl sub_0800881C
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08021994  @ =0x030000D4
	ldr r1, [r5]
	add r1, r1, #22
	ldr r2, _08021998  @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r1, [r5]
	lsl r4, r4, #24
	asr r4, r4, #24
	ldr r0, _0802199C  @ =0x0000199A
	mul r0, r4, r0
	asr r3, r0, #16
	strb r3, [r1, #23]
	ldr r2, [r5]
	ldrb r1, [r2, #23]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r4, r4, r0
	strb r4, [r2, #22]
	ldr r1, [r5]
	ldrb r0, [r1, #22]
	cmp r0, #9
	bls _08021970
	mov r0, #9
	strb r0, [r1, #22]
_08021970:
	ldr r0, [r5]
	strb r3, [r0, #23]
	ldr r1, [r5]
	ldrh r0, [r1, #20]
	add r0, r0, #1
	strh r0, [r1, #20]
	ldr r0, _080219A0  @ =0x030000DC
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080331FC
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_08021990:
	.4byte gUnknown_03000BBC
_08021994:
	.4byte 0x030000D4
_08021998:
	.4byte 0x01000001
_0802199C:
	.4byte 0x0000199A
_080219A0:
	.4byte 0x030000DC
	THUMB_FUNC_END sub_08021924

	THUMB_FUNC_START sub_080219A4
sub_080219A4: @ 0x080219A4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	add r5, sp, #8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _08021B64  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #24]
	strh r0, [r2]
	ldr r0, _08021B68  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r2, r2, #2
	str r2, [sp, #28]
	strh r0, [r2]
	mov r0, #160
	str r0, [sp, #4]
	ldr r6, _08021B6C  @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r7, _08021B70  @ =gOamData
	str r7, [r6, #4]
	ldr r0, _08021B74  @ =0x85000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, #8
	str r0, [sp, #16]
	str r1, [sp, #20]
	ldr r0, _08021B78  @ =gUnknown_082EBE58
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08021B7C  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	add r0, sp, #16
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08021B84  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	add r1, sp, #20
	mov r12, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r4, [r0]
	ldr r1, [r4, #8]
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #32
	str r0, [sp, #16]
	mov r0, #4
	str r0, [sp, #20]
	ldrb r0, [r4, #23]
	mov r1, r8
	mov r9, r12
	ldr r4, _08021B94  @ =gUnknown_082ECB38
	cmp r0, #0
	beq _08021AC6
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r2, _08021B7C  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r1, [r1]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r1, [r0]
	ldrb r0, [r1, #23]
	lsl r0, r0, #1
	ldr r1, [r1, #12]
	add r1, r1, r0
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
_08021AC6:
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08021B7C  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08021B80  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08021B88  @ =0x030000D4
	ldr r1, [r0]
	ldrb r0, [r1, #22]
	lsl r0, r0, #1
	ldr r1, [r1, #12]
	add r1, r1, r0
	ldr r0, _08021B8C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08021B90  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, _08021B98  @ =0x030000E0
	mov r1, r12
	str r1, [sp]
	ldr r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #24]
	ldr r2, [sp, #28]
	mov r3, r8
	bl _call_via_r4
	str r7, [r6]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r6, #4]
	ldr r0, _08021B9C  @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	add sp, sp, #32
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08021B64:
	.4byte gUnknown_03001930
_08021B68:
	.4byte gUnknown_0300192C
_08021B6C:
	.4byte 0x040000D4
_08021B70:
	.4byte gOamData
_08021B74:
	.4byte 0x85000100
_08021B78:
	.4byte gUnknown_082EBE58
_08021B7C:
	.4byte 0x84000002
_08021B80:
	.4byte 0x000001FF
_08021B84:
	.4byte 0xFFFFFE00
_08021B88:
	.4byte 0x030000D4
_08021B8C:
	.4byte 0x000003FF
_08021B90:
	.4byte 0xFFFFFC00
_08021B94:
	.4byte gUnknown_082ECB38
_08021B98:
	.4byte 0x030000E0
_08021B9C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_080219A4

	THUMB_FUNC_START sub_08021BA0
sub_08021BA0: @ 0x08021BA0
	bx lr
	THUMB_FUNC_END sub_08021BA0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021BA4
sub_08021BA4: @ 0x08021BA4
	push {r4,lr}
	ldr r2, _08021BDC  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021BD6
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #1]
	ldr r3, _08021BE0  @ =0x030000DC
	ldr r1, _08021BE4  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021BE8  @ =0x030000E0
	ldr r1, _08021BEC  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021BD6:
	pop {r4}
	pop {r0}
	bx r0
_08021BDC:
	.4byte 0x030000D4
_08021BE0:
	.4byte 0x030000DC
_08021BE4:
	.4byte gUnknown_08079878
_08021BE8:
	.4byte 0x030000E0
_08021BEC:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BA4

	THUMB_FUNC_START sub_08021BF0
sub_08021BF0: @ 0x08021BF0
	push {r4,lr}
	ldr r2, _08021C28  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #60
	bne _08021C22
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #1]
	ldr r3, _08021C2C  @ =0x030000DC
	ldr r1, _08021C30  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021C34  @ =0x030000E0
	ldr r1, _08021C38  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021C22:
	pop {r4}
	pop {r0}
	bx r0
_08021C28:
	.4byte 0x030000D4
_08021C2C:
	.4byte 0x030000DC
_08021C30:
	.4byte gUnknown_08079878
_08021C34:
	.4byte 0x030000E0
_08021C38:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021BF0

	THUMB_FUNC_START sub_08021C3C
sub_08021C3C: @ 0x08021C3C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D1F0
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021C3C

	THUMB_FUNC_START sub_08021C80
sub_08021C80: @ 0x08021C80
	push {lr}
	ldr r0, _08021CC0  @ =0x030000D0
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08021CC4  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #80
	bne _08021CBC
	mov r0, #3
	strb r0, [r1, #1]
	ldr r3, _08021CC8  @ =0x030000DC
	ldr r1, _08021CCC  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021CD0  @ =0x030000E0
	ldr r1, _08021CD4  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #20]
_08021CBC:
	pop {r0}
	bx r0
_08021CC0:
	.4byte 0x030000D0
_08021CC4:
	.4byte 0x030000D4
_08021CC8:
	.4byte 0x030000DC
_08021CCC:
	.4byte gUnknown_08079878
_08021CD0:
	.4byte 0x030000E0
_08021CD4:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021C80

	THUMB_FUNC_START sub_08021CD8
sub_08021CD8: @ 0x08021CD8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801D748
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021CD8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D10
sub_08021D10: @ 0x08021D10
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CBD8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021D48
sub_08021D48: @ 0x08021D48
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801FB3C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F254
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CBD8
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D48

	THUMB_FUNC_START sub_08021D8C
sub_08021D8C: @ 0x08021D8C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021D8C

	THUMB_FUNC_START sub_08021DA0
sub_08021DA0: @ 0x08021DA0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DA0

	THUMB_FUNC_START sub_08021DB4
sub_08021DB4: @ 0x08021DB4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_0801F554
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DB4

	THUMB_FUNC_START sub_08021DC8
sub_08021DC8: @ 0x08021DC8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080201EC
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021DC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E1C
sub_08021E1C: @ 0x08021E1C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021E1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021E70
sub_08021E70: @ 0x08021E70
	push {r4,lr}
	ldr r2, _08021EA8  @ =0x030000D4
	ldr r1, [r2]
	ldrh r0, [r1, #20]
	cmp r0, #59
	bls _08021EA2
	mov r4, #0
	mov r0, #11
	strb r0, [r1, #1]
	ldr r3, _08021EAC  @ =0x030000DC
	ldr r1, _08021EB0  @ =gUnknown_08079878
	ldr r2, [r2]
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08021EB4  @ =0x030000E0
	ldr r1, _08021EB8  @ =gUnknown_080798B0
	ldrb r0, [r2, #1]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #20]
_08021EA2:
	pop {r4}
	pop {r0}
	bx r0
_08021EA8:
	.4byte 0x030000D4
_08021EAC:
	.4byte 0x030000DC
_08021EB0:
	.4byte gUnknown_08079878
_08021EB4:
	.4byte 0x030000E0
_08021EB8:
	.4byte gUnknown_080798B0
	THUMB_FUNC_END sub_08021E70

	THUMB_FUNC_START sub_08021EBC
sub_08021EBC: @ 0x08021EBC
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021EBC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F10
sub_08021F10: @ 0x08021F10
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E9C4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F10

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021F64
sub_08021F64: @ 0x08021F64
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021F64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08021FB8
sub_08021FB8: @ 0x08021FB8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0801CEE4
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801EEA8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801E3E8
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0801F838
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08021FB8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802200C
sub_0802200C: @ 0x0802200C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _08022308  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022112
	ldrb r0, [r1, #1]
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r3, r9
	str r0, [r3]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022112:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08022200
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022334  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022200:
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080222F6
	ldrb r0, [r1, #1]
	mov r3, r8
	str r0, [r3]
	ldr r0, _0802230C  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	mov r1, r9
	str r0, [r1]
	ldr r4, _08022310  @ =0x040000D4
	ldr r0, _08022314  @ =gUnknown_082AEF7C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022318  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802231C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022320  @ =gUnknown_082AEF74
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022324  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022328  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802232C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022330  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022334  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022338  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08022304  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802233C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080222F6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08022304:
	.4byte 0x030000E8
_08022308:
	.4byte 0x030000F8
_0802230C:
	.4byte 0x030000F4
_08022310:
	.4byte 0x040000D4
_08022314:
	.4byte gUnknown_082AEF7C
_08022318:
	.4byte 0x06010000
_0802231C:
	.4byte 0x84000200
_08022320:
	.4byte gUnknown_082AEF74
_08022324:
	.4byte gOamData
_08022328:
	.4byte 0x84000002
_0802232C:
	.4byte 0x000001FF
_08022330:
	.4byte 0xFFFFFE00
_08022334:
	.4byte 0x000003FF
_08022338:
	.4byte 0xFFFFFC00
_0802233C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0802200C

	THUMB_FUNC_START sub_08022340
sub_08022340: @ 0x08022340
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #30
	str r0, [r3]
	ldr r2, _08022394  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _08022398  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080223B0
	ldr r4, _0802239C  @ =0x040000D4
	ldr r0, _080223A0  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223A4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223A8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223AC  @ =gUnknown_0811BCB0
	b _0802245A
	.byte 0x00
	.byte 0x00
_08022394:
	.4byte 0x030000E8
_08022398:
	.4byte 0x030000F8
_0802239C:
	.4byte 0x040000D4
_080223A0:
	.4byte gUnknown_0811BCB8
_080223A4:
	.4byte 0x06010000
_080223A8:
	.4byte 0x84000020
_080223AC:
	.4byte gUnknown_0811BCB0
_080223B0:
	cmp r0, #2
	bne _080223E0
	ldr r4, _080223CC  @ =0x040000D4
	ldr r0, _080223D0  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080223D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080223D8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080223DC  @ =gUnknown_0811BD5C
	b _0802245A
_080223CC:
	.4byte 0x040000D4
_080223D0:
	.4byte gUnknown_0811BD64
_080223D4:
	.4byte 0x06010000
_080223D8:
	.4byte 0x84000020
_080223DC:
	.4byte gUnknown_0811BD5C
_080223E0:
	cmp r0, #3
	bne _08022410
	ldr r4, _080223FC  @ =0x040000D4
	ldr r0, _08022400  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022404  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022408  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802240C  @ =gUnknown_0811BC04
	b _0802245A
_080223FC:
	.4byte 0x040000D4
_08022400:
	.4byte gUnknown_0811BC0C
_08022404:
	.4byte 0x06010000
_08022408:
	.4byte 0x84000020
_0802240C:
	.4byte gUnknown_0811BC04
_08022410:
	cmp r0, #4
	bne _08022440
	ldr r4, _0802242C  @ =0x040000D4
	ldr r0, _08022430  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022434  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022438  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802243C  @ =gUnknown_081257D0
	b _0802245A
_0802242C:
	.4byte 0x040000D4
_08022430:
	.4byte gUnknown_081257D8
_08022434:
	.4byte 0x06010000
_08022438:
	.4byte 0x84000020
_0802243C:
	.4byte gUnknown_081257D0
_08022440:
	cmp r0, #5
	bne _080224E8
	ldr r4, _08022524  @ =0x040000D4
	ldr r0, _08022528  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022534  @ =gUnknown_08125928
_0802245A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022538  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802253C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022540  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022544  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022548  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802254C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022550  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080224E8:
	mov r0, #102
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08022554  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022560
	ldr r4, _08022524  @ =0x040000D4
	ldr r0, _08022558  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802252C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022530  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802255C  @ =gUnknown_0811BCB0
	b _0802260A
_08022524:
	.4byte 0x040000D4
_08022528:
	.4byte gUnknown_08125930
_0802252C:
	.4byte 0x06010000
_08022530:
	.4byte 0x84000020
_08022534:
	.4byte gUnknown_08125928
_08022538:
	.4byte gOamData
_0802253C:
	.4byte 0x84000002
_08022540:
	.4byte 0x000001FF
_08022544:
	.4byte 0xFFFFFE00
_08022548:
	.4byte 0x000003FF
_0802254C:
	.4byte 0xFFFFFC00
_08022550:
	.4byte 0x80000200
_08022554:
	.4byte 0x030000F8
_08022558:
	.4byte gUnknown_0811BCB8
_0802255C:
	.4byte gUnknown_0811BCB0
_08022560:
	cmp r0, #2
	bne _08022590
	ldr r4, _0802257C  @ =0x040000D4
	ldr r0, _08022580  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022584  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022588  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802258C  @ =gUnknown_0811BD5C
	b _0802260A
_0802257C:
	.4byte 0x040000D4
_08022580:
	.4byte gUnknown_0811BD64
_08022584:
	.4byte 0x06010000
_08022588:
	.4byte 0x84000020
_0802258C:
	.4byte gUnknown_0811BD5C
_08022590:
	cmp r0, #3
	bne _080225C0
	ldr r4, _080225AC  @ =0x040000D4
	ldr r0, _080225B0  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225B4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225B8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225BC  @ =gUnknown_0811BC04
	b _0802260A
_080225AC:
	.4byte 0x040000D4
_080225B0:
	.4byte gUnknown_0811BC0C
_080225B4:
	.4byte 0x06010000
_080225B8:
	.4byte 0x84000020
_080225BC:
	.4byte gUnknown_0811BC04
_080225C0:
	cmp r0, #4
	bne _080225F0
	ldr r4, _080225DC  @ =0x040000D4
	ldr r0, _080225E0  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080225E4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080225E8  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080225EC  @ =gUnknown_081257D0
	b _0802260A
_080225DC:
	.4byte 0x040000D4
_080225E0:
	.4byte gUnknown_081257D8
_080225E4:
	.4byte 0x06010000
_080225E8:
	.4byte 0x84000020
_080225EC:
	.4byte gUnknown_081257D0
_080225F0:
	cmp r0, #5
	bne _08022698
	ldr r4, _080226D4  @ =0x040000D4
	ldr r0, _080226D8  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080226E4  @ =gUnknown_08125928
_0802260A:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080226E8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080226EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _080226F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080226F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080226F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080226FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022700  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022698:
	mov r0, #174
	mov r2, r8
	str r0, [r2]
	mov r3, r10
	ldr r0, [r3]
	ldrb r0, [r0]
	add r0, r0, #50
	mov r1, r9
	str r0, [r1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r2, _08022704  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022710
	ldr r4, _080226D4  @ =0x040000D4
	ldr r0, _08022708  @ =gUnknown_0811BCB8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080226DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080226E0  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802270C  @ =gUnknown_0811BCB0
	b _080227BA
_080226D4:
	.4byte 0x040000D4
_080226D8:
	.4byte gUnknown_08125930
_080226DC:
	.4byte 0x06010000
_080226E0:
	.4byte 0x84000020
_080226E4:
	.4byte gUnknown_08125928
_080226E8:
	.4byte gOamData
_080226EC:
	.4byte 0x84000002
_080226F0:
	.4byte 0x000001FF
_080226F4:
	.4byte 0xFFFFFE00
_080226F8:
	.4byte 0x000003FF
_080226FC:
	.4byte 0xFFFFFC00
_08022700:
	.4byte 0x80000200
_08022704:
	.4byte 0x030000F8
_08022708:
	.4byte gUnknown_0811BCB8
_0802270C:
	.4byte gUnknown_0811BCB0
_08022710:
	cmp r0, #2
	bne _08022740
	ldr r4, _0802272C  @ =0x040000D4
	ldr r0, _08022730  @ =gUnknown_0811BD64
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022734  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022738  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802273C  @ =gUnknown_0811BD5C
	b _080227BA
_0802272C:
	.4byte 0x040000D4
_08022730:
	.4byte gUnknown_0811BD64
_08022734:
	.4byte 0x06010000
_08022738:
	.4byte 0x84000020
_0802273C:
	.4byte gUnknown_0811BD5C
_08022740:
	cmp r0, #3
	bne _08022770
	ldr r4, _0802275C  @ =0x040000D4
	ldr r0, _08022760  @ =gUnknown_0811BC0C
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022764  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022768  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802276C  @ =gUnknown_0811BC04
	b _080227BA
_0802275C:
	.4byte 0x040000D4
_08022760:
	.4byte gUnknown_0811BC0C
_08022764:
	.4byte 0x06010000
_08022768:
	.4byte 0x84000020
_0802276C:
	.4byte gUnknown_0811BC04
_08022770:
	cmp r0, #4
	bne _080227A0
	ldr r4, _0802278C  @ =0x040000D4
	ldr r0, _08022790  @ =gUnknown_081257D8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022794  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022798  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802279C  @ =gUnknown_081257D0
	b _080227BA
_0802278C:
	.4byte 0x040000D4
_08022790:
	.4byte gUnknown_081257D8
_08022794:
	.4byte 0x06010000
_08022798:
	.4byte 0x84000020
_0802279C:
	.4byte gUnknown_081257D0
_080227A0:
	cmp r0, #5
	bne _08022850
	ldr r4, _08022860  @ =0x040000D4
	ldr r0, _08022864  @ =gUnknown_08125930
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022868  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802286C  @ =0x84000020
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022870  @ =gUnknown_08125928
_080227BA:
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022874  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022878  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802287C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022880  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08022884  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08022888  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	ldrh r0, [r7]
	add r0, r0, #128
	strh r0, [r7]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #4
	strh r0, [r1]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802288C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022850:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08022860:
	.4byte 0x040000D4
_08022864:
	.4byte gUnknown_08125930
_08022868:
	.4byte 0x06010000
_0802286C:
	.4byte 0x84000020
_08022870:
	.4byte gUnknown_08125928
_08022874:
	.4byte gOamData
_08022878:
	.4byte 0x84000002
_0802287C:
	.4byte 0x000001FF
_08022880:
	.4byte 0xFFFFFE00
_08022884:
	.4byte 0x000003FF
_08022888:
	.4byte 0xFFFFFC00
_0802288C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022340

	THUMB_FUNC_START sub_08022890
sub_08022890: @ 0x08022890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	mov r0, #16
	str r0, [r3]
	ldr r2, _0802296C  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r1, r9
	str r0, [r1]
	ldr r5, [r2]
	ldrb r0, [r5, #1]
	ldr r3, _08022970  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	mov r10, r2
	cmp r0, #1
	bne _080229A4
	ldr r4, _08022974  @ =0x040000D4
	ldr r2, _08022978  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802297C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022980  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022984  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022988  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802298C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022990  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022994  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022998  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802299C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080229A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08022CDE
_0802296C:
	.4byte 0x030000E8
_08022970:
	.4byte 0x030000F8
_08022974:
	.4byte 0x040000D4
_08022978:
	.4byte gUnknown_0811C010
_0802297C:
	.4byte gUnknown_0811C1C8
_08022980:
	.4byte 0x06010000
_08022984:
	.4byte 0x84000200
_08022988:
	.4byte gUnknown_0811C1C0
_0802298C:
	.4byte gOamData
_08022990:
	.4byte 0x84000002
_08022994:
	.4byte 0x000001FF
_08022998:
	.4byte 0xFFFFFE00
_0802299C:
	.4byte 0x000003FF
_080229A0:
	.4byte 0xFFFFFC00
_080229A4:
	cmp r0, #2
	bne _08022A7C
	ldr r4, _08022A4C  @ =0x040000D4
	ldr r2, _08022A50  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022A54  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022A58  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022A5C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022A60  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022A64  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022A68  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022A6C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022A70  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022A74  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022A78  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08022CDE
_08022A4C:
	.4byte 0x040000D4
_08022A50:
	.4byte gUnknown_0811C010
_08022A54:
	.4byte gUnknown_0811C1C8
_08022A58:
	.4byte 0x06010000
_08022A5C:
	.4byte 0x84000200
_08022A60:
	.4byte gUnknown_0811C1C0
_08022A64:
	.4byte gOamData
_08022A68:
	.4byte 0x84000002
_08022A6C:
	.4byte 0x000001FF
_08022A70:
	.4byte 0xFFFFFE00
_08022A74:
	.4byte 0x000003FF
_08022A78:
	.4byte 0xFFFFFC00
_08022A7C:
	cmp r0, #3
	bne _08022B60
	ldr r4, _08022B30  @ =0x040000D4
	ldr r2, _08022B34  @ =gUnknown_0811F5F4
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022B38  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022B3C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022B40  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022B44  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022B48  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022B4C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022B50  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022B54  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022B58  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022B5C  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _08022CFA
	.byte 0x00
	.byte 0x00
_08022B30:
	.4byte 0x040000D4
_08022B34:
	.4byte gUnknown_0811F5F4
_08022B38:
	.4byte gUnknown_0811F7AC
_08022B3C:
	.4byte 0x06010000
_08022B40:
	.4byte 0x84000400
_08022B44:
	.4byte gUnknown_0811F7A4
_08022B48:
	.4byte gOamData
_08022B4C:
	.4byte 0x84000002
_08022B50:
	.4byte 0x000001FF
_08022B54:
	.4byte 0xFFFFFE00
_08022B58:
	.4byte 0x000003FF
_08022B5C:
	.4byte 0xFFFFFC00
_08022B60:
	cmp r0, #4
	bne _08022C38
	ldr r4, _08022C08  @ =0x040000D4
	ldr r2, _08022C0C  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022C10  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022C14  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022C18  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022C1C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022C20  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022C24  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022C28  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022C2C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022C30  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022C34  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08022CDE
_08022C08:
	.4byte 0x040000D4
_08022C0C:
	.4byte gUnknown_0811C010
_08022C10:
	.4byte gUnknown_0811C1C8
_08022C14:
	.4byte 0x06010000
_08022C18:
	.4byte 0x84000200
_08022C1C:
	.4byte gUnknown_0811C1C0
_08022C20:
	.4byte gOamData
_08022C24:
	.4byte 0x84000002
_08022C28:
	.4byte 0x000001FF
_08022C2C:
	.4byte 0xFFFFFE00
_08022C30:
	.4byte 0x000003FF
_08022C34:
	.4byte 0xFFFFFC00
_08022C38:
	cmp r0, #5
	bne _08022D0A
	ldr r4, _08022DD0  @ =0x040000D4
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r5, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08022CDE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_08022CFA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08022E00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08022D0A:
	mov r0, #88
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #2]
	ldr r2, _08022E04  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08022E08
	ldr r4, _08022DD0  @ =0x040000D4
	ldr r2, _08022DD4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022DD8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022DDC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022DE0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022DE4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022DE8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022DEC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08022DF0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022DF4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022DF8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022DFC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _08023142
_08022DD0:
	.4byte 0x040000D4
_08022DD4:
	.4byte gUnknown_0811C010
_08022DD8:
	.4byte gUnknown_0811C1C8
_08022DDC:
	.4byte 0x06010000
_08022DE0:
	.4byte 0x84000200
_08022DE4:
	.4byte gUnknown_0811C1C0
_08022DE8:
	.4byte gOamData
_08022DEC:
	.4byte 0x84000002
_08022DF0:
	.4byte 0x000001FF
_08022DF4:
	.4byte 0xFFFFFE00
_08022DF8:
	.4byte 0x000003FF
_08022DFC:
	.4byte 0xFFFFFC00
_08022E00:
	.4byte 0x80000200
_08022E04:
	.4byte 0x030000F8
_08022E08:
	cmp r0, #2
	bne _08022EE0
	ldr r4, _08022EB0  @ =0x040000D4
	ldr r2, _08022EB4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08022EB8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022EBC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022EC0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022EC4  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022EC8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022ECC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022ED0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022ED4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022ED8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022EDC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _08023142
_08022EB0:
	.4byte 0x040000D4
_08022EB4:
	.4byte gUnknown_0811C010
_08022EB8:
	.4byte gUnknown_0811C1C8
_08022EBC:
	.4byte 0x06010000
_08022EC0:
	.4byte 0x84000200
_08022EC4:
	.4byte gUnknown_0811C1C0
_08022EC8:
	.4byte gOamData
_08022ECC:
	.4byte 0x84000002
_08022ED0:
	.4byte 0x000001FF
_08022ED4:
	.4byte 0xFFFFFE00
_08022ED8:
	.4byte 0x000003FF
_08022EDC:
	.4byte 0xFFFFFC00
_08022EE0:
	cmp r0, #3
	bne _08022FC4
	ldr r4, _08022F94  @ =0x040000D4
	ldr r2, _08022F98  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08022F9C  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08022FA0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08022FA4  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08022FA8  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08022FAC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08022FB0  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08022FB4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08022FB8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08022FBC  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08022FC0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _0802315E
	.byte 0x00
	.byte 0x00
_08022F94:
	.4byte 0x040000D4
_08022F98:
	.4byte gUnknown_0811F5F4
_08022F9C:
	.4byte gUnknown_0811F7AC
_08022FA0:
	.4byte 0x06010000
_08022FA4:
	.4byte 0x84000400
_08022FA8:
	.4byte gUnknown_0811F7A4
_08022FAC:
	.4byte gOamData
_08022FB0:
	.4byte 0x84000002
_08022FB4:
	.4byte 0x000001FF
_08022FB8:
	.4byte 0xFFFFFE00
_08022FBC:
	.4byte 0x000003FF
_08022FC0:
	.4byte 0xFFFFFC00
_08022FC4:
	cmp r0, #4
	bne _0802309C
	ldr r4, _0802306C  @ =0x040000D4
	ldr r2, _08023070  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023074  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023078  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802307C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023080  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023084  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023088  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802308C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023090  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023094  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023098  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _08023142
_0802306C:
	.4byte 0x040000D4
_08023070:
	.4byte gUnknown_0811C010
_08023074:
	.4byte gUnknown_0811C1C8
_08023078:
	.4byte 0x06010000
_0802307C:
	.4byte 0x84000200
_08023080:
	.4byte gUnknown_0811C1C0
_08023084:
	.4byte gOamData
_08023088:
	.4byte 0x84000002
_0802308C:
	.4byte 0x000001FF
_08023090:
	.4byte 0xFFFFFE00
_08023094:
	.4byte 0x000003FF
_08023098:
	.4byte 0xFFFFFC00
_0802309C:
	cmp r0, #5
	bne _0802316E
	ldr r4, _0802323C  @ =0x040000D4
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023264  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_08023142:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_0802315E:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802326C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802316E:
	mov r0, #160
	mov r1, r8
	str r0, [r1]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0]
	mov r3, r9
	str r0, [r3]
	ldr r3, [r2]
	ldrb r0, [r3, #3]
	ldr r2, _08023270  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #1
	bne _08023274
	ldr r4, _0802323C  @ =0x040000D4
	ldr r2, _08023240  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023244  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023248  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802324C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023250  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023254  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023258  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802325C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023260  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023264  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023268  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	b _080235CE
_0802323C:
	.4byte 0x040000D4
_08023240:
	.4byte gUnknown_0811C010
_08023244:
	.4byte gUnknown_0811C1C8
_08023248:
	.4byte 0x06010000
_0802324C:
	.4byte 0x84000200
_08023250:
	.4byte gUnknown_0811C1C0
_08023254:
	.4byte gOamData
_08023258:
	.4byte 0x84000002
_0802325C:
	.4byte 0x000001FF
_08023260:
	.4byte 0xFFFFFE00
_08023264:
	.4byte 0x000003FF
_08023268:
	.4byte 0xFFFFFC00
_0802326C:
	.4byte 0x80000200
_08023270:
	.4byte 0x030000F8
_08023274:
	cmp r1, #2
	bne _08023354
	ldr r4, _08023324  @ =0x040000D4
	ldr r2, _08023328  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _0802332C  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023330  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023334  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023338  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802333C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023340  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023344  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023348  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802334C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023350  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	b _080235CE
_08023324:
	.4byte 0x040000D4
_08023328:
	.4byte gUnknown_0811C010
_0802332C:
	.4byte gUnknown_0811C1C8
_08023330:
	.4byte 0x06010000
_08023334:
	.4byte 0x84000200
_08023338:
	.4byte gUnknown_0811C1C0
_0802333C:
	.4byte gOamData
_08023340:
	.4byte 0x84000002
_08023344:
	.4byte 0x000001FF
_08023348:
	.4byte 0xFFFFFE00
_0802334C:
	.4byte 0x000003FF
_08023350:
	.4byte 0xFFFFFC00
_08023354:
	cmp r1, #3
	bne _08023440
	ldr r4, _08023410  @ =0x040000D4
	ldr r2, _08023414  @ =gUnknown_0811F5F4
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023418  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _0802341C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023420  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023424  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023428  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802342C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023430  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023434  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023438  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802343C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	b _080235EA
	.byte 0x00
	.byte 0x00
_08023410:
	.4byte 0x040000D4
_08023414:
	.4byte gUnknown_0811F5F4
_08023418:
	.4byte gUnknown_0811F7AC
_0802341C:
	.4byte 0x06010000
_08023420:
	.4byte 0x84000400
_08023424:
	.4byte gUnknown_0811F7A4
_08023428:
	.4byte gOamData
_0802342C:
	.4byte 0x84000002
_08023430:
	.4byte 0x000001FF
_08023434:
	.4byte 0xFFFFFE00
_08023438:
	.4byte 0x000003FF
_0802343C:
	.4byte 0xFFFFFC00
_08023440:
	cmp r1, #4
	bne _08023520
	ldr r4, _080234F0  @ =0x040000D4
	ldr r2, _080234F4  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080234F8  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080234FC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023500  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023504  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023508  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _0802350C  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023510  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023514  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023518  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _0802351C  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	b _080235CE
_080234F0:
	.4byte 0x040000D4
_080234F4:
	.4byte gUnknown_0811C010
_080234F8:
	.4byte gUnknown_0811C1C8
_080234FC:
	.4byte 0x06010000
_08023500:
	.4byte 0x84000200
_08023504:
	.4byte gUnknown_0811C1C0
_08023508:
	.4byte gOamData
_0802350C:
	.4byte 0x84000002
_08023510:
	.4byte 0x000001FF
_08023514:
	.4byte 0xFFFFFE00
_08023518:
	.4byte 0x000003FF
_0802351C:
	.4byte 0xFFFFFC00
_08023520:
	cmp r1, #5
	bne _080235FA
	ldr r4, _08023608  @ =0x040000D4
	ldr r2, _0802360C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023610  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023614  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023618  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _0802361C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023620  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023624  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023628  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802362C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023630  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023634  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
_080235CE:
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
_080235EA:
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023638  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080235FA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023608:
	.4byte 0x040000D4
_0802360C:
	.4byte gUnknown_0811C010
_08023610:
	.4byte gUnknown_0811C1C8
_08023614:
	.4byte 0x06010000
_08023618:
	.4byte 0x84000200
_0802361C:
	.4byte gUnknown_0811C1C0
_08023620:
	.4byte gOamData
_08023624:
	.4byte 0x84000002
_08023628:
	.4byte 0x000001FF
_0802362C:
	.4byte 0xFFFFFE00
_08023630:
	.4byte 0x000003FF
_08023634:
	.4byte 0xFFFFFC00
_08023638:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08022890

	THUMB_FUNC_START sub_0802363C
sub_0802363C: @ 0x0802363C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r9, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023A30  @ =0x030000E8
	mov r8, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802375A
	mov r0, #88
	str r0, [r3]
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802375A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023862
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023862:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802396A
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A38  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023A40  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A48  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A4C  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023A68  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802396A:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023A34  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08023980
	b _08023AB2
_08023980:
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023A6C  @ =gUnknown_0811F5F4
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023A3C  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #12
	ldr r1, _08023A70  @ =gUnknown_0811F7AC
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023A44  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023A74  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023A78  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023A50  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023A54  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023A58  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023A5C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08023A60  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08023A64  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	b _08023A7C
	.byte 0x00
	.byte 0x00
_08023A30:
	.4byte 0x030000E8
_08023A34:
	.4byte 0x030000F8
_08023A38:
	.4byte gUnknown_0811C010
_08023A3C:
	.4byte 0x040000D4
_08023A40:
	.4byte gUnknown_0811C1C8
_08023A44:
	.4byte 0x06010000
_08023A48:
	.4byte 0x84000200
_08023A4C:
	.4byte gUnknown_0811C1C0
_08023A50:
	.4byte gOamData
_08023A54:
	.4byte 0x84000002
_08023A58:
	.4byte 0x000001FF
_08023A5C:
	.4byte 0xFFFFFE00
_08023A60:
	.4byte 0x000003FF
_08023A64:
	.4byte 0xFFFFFC00
_08023A68:
	.4byte 0x80000200
_08023A6C:
	.4byte gUnknown_0811F5F4
_08023A70:
	.4byte gUnknown_0811F7AC
_08023A74:
	.4byte 0x84000400
_08023A78:
	.4byte gUnknown_0811F7A4
_08023A7C:
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023AB2:
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023BD4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne _08023BC2
	mov r0, #88
	mov r3, r9
	str r0, [r3]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08023BD8  @ =gUnknown_0811C010
	ldrb r1, [r2, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0, #3]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldrb r2, [r2]
	add r0, r0, r2
	mov r1, r10
	str r0, [r1]
	ldr r4, _08023BDC  @ =0x040000D4
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08023BE0  @ =gUnknown_0811C1C8
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08023BE4  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08023BE8  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08023BEC  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08023BF0  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08023BF4  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r9
	ldr r2, [r3]
	ldr r3, _08023BF8  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08023BFC  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08023C00  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _08023C04  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08023BD0  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023BC2:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08023BD0:
	.4byte 0x80000200
_08023BD4:
	.4byte 0x030000F8
_08023BD8:
	.4byte gUnknown_0811C010
_08023BDC:
	.4byte 0x040000D4
_08023BE0:
	.4byte gUnknown_0811C1C8
_08023BE4:
	.4byte 0x06010000
_08023BE8:
	.4byte 0x84000200
_08023BEC:
	.4byte gUnknown_0811C1C0
_08023BF0:
	.4byte gOamData
_08023BF4:
	.4byte 0x84000002
_08023BF8:
	.4byte 0x000001FF
_08023BFC:
	.4byte 0xFFFFFE00
_08023C00:
	.4byte 0x000003FF
_08023C04:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802363C

	THUMB_FUNC_START sub_08023C08
sub_08023C08: @ 0x08023C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r1, _08023FF8  @ =0x030000E8
	mov r9, r1
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08023CFE
	mov r0, #88
	str r0, [r3]
	mov r3, r9
	ldr r0, [r3]
	ldrb r0, [r0]
	mov r1, r10
	str r0, [r1]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #176
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023CFE:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne _08023DDC
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #192
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023DDC:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023EBA
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #64
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023EBA:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08023F86
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024030  @ =gUnknown_0811F7AC
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024034  @ =0x84000400
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024038  @ =gUnknown_0811F7A4
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024024  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024028  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #5
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #128
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802402C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08023F86:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08023FFC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08023F9C
	b _080240B6
_08023F9C:
	mov r0, #88
	mov r3, r8
	str r0, [r3]
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0]
	mov r2, r10
	str r0, [r2]
	ldr r4, _08024000  @ =0x040000D4
	ldr r0, _08024004  @ =gUnknown_0811C1C8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08024008  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802400C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024010  @ =gUnknown_0811C1C0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08024014  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024018  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802401C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024020  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	b _0802403C
	.byte 0x00
	.byte 0x00
_08023FF8:
	.4byte 0x030000E8
_08023FFC:
	.4byte 0x030000F8
_08024000:
	.4byte 0x040000D4
_08024004:
	.4byte gUnknown_0811C1C8
_08024008:
	.4byte 0x06010000
_0802400C:
	.4byte 0x84000200
_08024010:
	.4byte gUnknown_0811C1C0
_08024014:
	.4byte gOamData
_08024018:
	.4byte 0x84000002
_0802401C:
	.4byte 0x000001FF
_08024020:
	.4byte 0xFFFFFE00
_08024024:
	.4byte 0x000003FF
_08024028:
	.4byte 0xFFFFFC00
_0802402C:
	.4byte 0x80000200
_08024030:
	.4byte gUnknown_0811F7AC
_08024034:
	.4byte 0x84000400
_08024038:
	.4byte gUnknown_0811F7A4
_0802403C:
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080240C4  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080240C8  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #80
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080240CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080240B6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080240C4:
	.4byte 0x000003FF
_080240C8:
	.4byte 0xFFFFFC00
_080240CC:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08023C08

	THUMB_FUNC_START sub_080240D0
sub_080240D0: @ 0x080240D0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r9, r0
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r2, _080243CC  @ =0x030000F8
	mov r10, r2
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080241D6
	ldrb r0, [r1, #2]
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r3, r9
	str r0, [r3]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080241D6:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080242C4
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080243F8  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080242C4:
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080243BA
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _080243D0  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	mov r1, r9
	str r0, [r1]
	ldr r4, _080243D4  @ =0x040000D4
	ldr r0, _080243D8  @ =gUnknown_082B30B4
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080243DC  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080243E0  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080243E4  @ =gUnknown_082B30AC
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080243E8  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080243EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _080243F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080243F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r9
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080243F8  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080243FC  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080243C8  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024400  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080243BA:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080243C8:
	.4byte 0x030000E8
_080243CC:
	.4byte 0x030000F8
_080243D0:
	.4byte 0x030000F4
_080243D4:
	.4byte 0x040000D4
_080243D8:
	.4byte gUnknown_082B30B4
_080243DC:
	.4byte 0x06010000
_080243E0:
	.4byte 0x84000100
_080243E4:
	.4byte gUnknown_082B30AC
_080243E8:
	.4byte gOamData
_080243EC:
	.4byte 0x84000002
_080243F0:
	.4byte 0x000001FF
_080243F4:
	.4byte 0xFFFFFE00
_080243F8:
	.4byte 0x000003FF
_080243FC:
	.4byte 0xFFFFFC00
_08024400:
	.4byte 0x80000200
	THUMB_FUNC_END sub_080240D0

	THUMB_FUNC_START sub_08024404
sub_08024404: @ 0x08024404
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024530  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024422
	b _08024570
_08024422:
	ldr r0, _08024534  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024538  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _0802453C  @ =0x040000D4
	ldr r2, _08024540  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024544  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024548  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802454C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024550  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024554  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024558  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _0802455C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024560  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024564  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024568  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802456C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _0802466A
_08024530:
	.4byte 0x030000F0
_08024534:
	.4byte 0x030000E8
_08024538:
	.4byte 0x030000F8
_0802453C:
	.4byte 0x040000D4
_08024540:
	.4byte gUnknown_082AFFA8
_08024544:
	.4byte gUnknown_082B0088
_08024548:
	.4byte 0x06010000
_0802454C:
	.4byte 0x84000200
_08024550:
	.4byte gUnknown_082B0080
_08024554:
	.4byte gOamData
_08024558:
	.4byte 0x84000002
_0802455C:
	.4byte 0x000001FF
_08024560:
	.4byte 0xFFFFFE00
_08024564:
	.4byte 0x000003FF
_08024568:
	.4byte 0xFFFFFC00
_0802456C:
	.4byte 0x80000200
_08024570:
	ldr r0, _080246E0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _080246E4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _080246E8  @ =0x040000D4
	ldr r0, _080246EC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080246F8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _080246FC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024704  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024708  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802470C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024710  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024714  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_0802466A:
	ldr r1, _08024718  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024728
	ldr r2, _080246E0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080246E8  @ =0x040000D4
	ldr r2, _0802471C  @ =gUnknown_082AFFA8
	ldr r3, _080246E0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024720  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080246F0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080246F4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024724  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024700  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _0802477C
_080246E0:
	.4byte 0x030000E8
_080246E4:
	.4byte 0x030000F8
_080246E8:
	.4byte 0x040000D4
_080246EC:
	.4byte gUnknown_082AF7A8
_080246F0:
	.4byte 0x06010000
_080246F4:
	.4byte 0x84000200
_080246F8:
	.4byte gUnknown_082AF7A0
_080246FC:
	.4byte gOamData
_08024700:
	.4byte 0x84000002
_08024704:
	.4byte 0x000001FF
_08024708:
	.4byte 0xFFFFFE00
_0802470C:
	.4byte 0x000003FF
_08024710:
	.4byte 0xFFFFFC00
_08024714:
	.4byte 0x80000200
_08024718:
	.4byte 0x030000F0
_0802471C:
	.4byte gUnknown_082AFFA8
_08024720:
	.4byte gUnknown_082B0088
_08024724:
	.4byte gUnknown_082B0080
_08024728:
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =0x040000D4
	ldr r0, _08024898  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248A4  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_0802477C:
	ldr r3, _080248AC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080248B0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r10, r3
	mov r0, r10
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080248B4  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _080248B8  @ =0xFFFFFC00
	mov r3, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024890  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080248BC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r1, _080248C0  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _080248D0
	ldr r2, _08024890  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024894  @ =0x040000D4
	ldr r2, _080248C4  @ =gUnknown_082AFFA8
	ldr r3, _08024890  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _080248C8  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _0802489C  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080248A0  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080248CC  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080248A8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024924
_08024890:
	.4byte 0x030000E8
_08024894:
	.4byte 0x040000D4
_08024898:
	.4byte gUnknown_082AF7A8
_0802489C:
	.4byte 0x06010000
_080248A0:
	.4byte 0x84000200
_080248A4:
	.4byte gUnknown_082AF7A0
_080248A8:
	.4byte 0x84000002
_080248AC:
	.4byte 0x000001FF
_080248B0:
	.4byte 0xFFFFFE00
_080248B4:
	.4byte 0x000003FF
_080248B8:
	.4byte 0xFFFFFC00
_080248BC:
	.4byte 0x80000200
_080248C0:
	.4byte 0x030000F0
_080248C4:
	.4byte gUnknown_082AFFA8
_080248C8:
	.4byte gUnknown_082B0088
_080248CC:
	.4byte gUnknown_082B0080
_080248D0:
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _080249D8  @ =0x040000D4
	ldr r0, _080249DC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _080249E0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080249E4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080249E8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080249EC  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024924:
	ldr r3, _080249F0  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080249F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _080249F8  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _080249FC  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080249D4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024A00  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080249D4:
	.4byte 0x030000E8
_080249D8:
	.4byte 0x040000D4
_080249DC:
	.4byte gUnknown_082AF7A8
_080249E0:
	.4byte 0x06010000
_080249E4:
	.4byte 0x84000200
_080249E8:
	.4byte gUnknown_082AF7A0
_080249EC:
	.4byte 0x84000002
_080249F0:
	.4byte 0x000001FF
_080249F4:
	.4byte 0xFFFFFE00
_080249F8:
	.4byte 0x000003FF
_080249FC:
	.4byte 0xFFFFFC00
_08024A00:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024404

	THUMB_FUNC_START sub_08024A04
sub_08024A04: @ 0x08024A04
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r7, r0, #0
	mov r12, r1
	add r6, r2, #0
	mov r9, r3
	ldr r0, _08024B30  @ =0x030000F0
	ldr r1, [r0]
	ldrb r1, [r1, #2]
	cmp r1, #0
	beq _08024A22
	b _08024B70
_08024A22:
	ldr r0, _08024B34  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024B38  @ =0x030000F8
	mov r8, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08024B3C  @ =0x040000D4
	ldr r2, _08024B40  @ =gUnknown_082AFFA8
	mov r3, r10
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024B44  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024B48  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024B4C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024B50  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024B54  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024B58  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024B5C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024B60  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024B64  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024B68  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024B6C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _08024C6A
_08024B30:
	.4byte 0x030000F0
_08024B34:
	.4byte 0x030000E8
_08024B38:
	.4byte 0x030000F8
_08024B3C:
	.4byte 0x040000D4
_08024B40:
	.4byte gUnknown_082AFFA8
_08024B44:
	.4byte gUnknown_082B0088
_08024B48:
	.4byte 0x06010000
_08024B4C:
	.4byte 0x84000200
_08024B50:
	.4byte gUnknown_082B0080
_08024B54:
	.4byte gOamData
_08024B58:
	.4byte 0x84000002
_08024B5C:
	.4byte 0x000001FF
_08024B60:
	.4byte 0xFFFFFE00
_08024B64:
	.4byte 0x000003FF
_08024B68:
	.4byte 0xFFFFFC00
_08024B6C:
	.4byte 0x80000200
_08024B70:
	ldr r0, _08024CE0  @ =0x030000E8
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _08024CE4  @ =0x030000F8
	mov r10, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r2, r9
	str r0, [r2]
	mov r3, r8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	mov r2, r10
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r3, [sp, #32]
	str r0, [r3]
	ldr r4, _08024CE8  @ =0x040000D4
	ldr r0, _08024CEC  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024CF8  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r5, _08024CFC  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	ldr r3, _08024D04  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024D08  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08024D0C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08024D10  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r10
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024D14  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r8, r10
_08024C6A:
	ldr r1, _08024D18  @ =0x030000F0
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _08024D28
	ldr r2, _08024CE0  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r1, r9
	str r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024CE8  @ =0x040000D4
	ldr r2, _08024D1C  @ =gUnknown_082AFFA8
	ldr r3, _08024CE0  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #11
	ldr r1, _08024D20  @ =gUnknown_082B0088
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024CF0  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024CF4  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024D24  @ =gUnknown_082B0080
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024D00  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r9
	ldr r2, [r0]
	b _08024D7C
_08024CE0:
	.4byte 0x030000E8
_08024CE4:
	.4byte 0x030000F8
_08024CE8:
	.4byte 0x040000D4
_08024CEC:
	.4byte gUnknown_082AF7A8
_08024CF0:
	.4byte 0x06010000
_08024CF4:
	.4byte 0x84000200
_08024CF8:
	.4byte gUnknown_082AF7A0
_08024CFC:
	.4byte gOamData
_08024D00:
	.4byte 0x84000002
_08024D04:
	.4byte 0x000001FF
_08024D08:
	.4byte 0xFFFFFE00
_08024D0C:
	.4byte 0x000003FF
_08024D10:
	.4byte 0xFFFFFC00
_08024D14:
	.4byte 0x80000200
_08024D18:
	.4byte 0x030000F0
_08024D1C:
	.4byte gUnknown_082AFFA8
_08024D20:
	.4byte gUnknown_082B0088
_08024D24:
	.4byte gUnknown_082B0080
_08024D28:
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	mov r3, r9
	str r0, [r3]
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08024E30  @ =0x040000D4
	ldr r0, _08024E34  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r6]
	ldr r1, _08024E38  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08024E3C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08024E40  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08024E44  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r7]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
_08024D7C:
	ldr r3, _08024E48  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08024E4C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r7]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r9, r3
	mov r0, r9
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08024E50  @ =0x000003FF
	mov r10, r0
	mov r3, r10
	and r1, r1, r3
	ldr r0, _08024E54  @ =0xFFFFFC00
	mov r3, r9
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r7]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08024E2C  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r7]
	add r0, r0, #1
	strh r0, [r7]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r6]
	add r0, r0, r2
	strh r0, [r6]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08024E58  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08024E2C:
	.4byte 0x030000E8
_08024E30:
	.4byte 0x040000D4
_08024E34:
	.4byte gUnknown_082AF7A8
_08024E38:
	.4byte 0x06010000
_08024E3C:
	.4byte 0x84000200
_08024E40:
	.4byte gUnknown_082AF7A0
_08024E44:
	.4byte 0x84000002
_08024E48:
	.4byte 0x000001FF
_08024E4C:
	.4byte 0xFFFFFE00
_08024E50:
	.4byte 0x000003FF
_08024E54:
	.4byte 0xFFFFFC00
_08024E58:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024A04

	THUMB_FUNC_START sub_08024E5C
sub_08024E5C: @ 0x08024E5C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, _08025168  @ =0x030000E8
	mov r10, r0
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	ldr r1, _0802516C  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08024F6A
	ldrb r0, [r1, #3]
	str r0, [r3]
	mov r2, r10
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r1, [sp, #32]
	str r0, [r1]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r3, r8
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08024F6A:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025060
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08025194  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _08025198  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025060:
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _0802515A
	ldrb r0, [r1, #3]
	mov r3, r8
	str r0, [r3]
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0, #4]
	ldr r2, [sp, #32]
	str r0, [r2]
	ldr r4, _08025170  @ =0x040000D4
	ldr r0, _08025174  @ =gUnknown_082AF7A8
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025178  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _0802517C  @ =0x84000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025180  @ =gUnknown_082AF7A0
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _08025184  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025188  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	ldr r2, [r3]
	ldr r3, _0802518C  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025190  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r2, [sp, #32]
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _08025194  @ =0x000003FF
	and r1, r1, r0
	ldr r0, _08025198  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #4
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #64
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802519C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_0802515A:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025168:
	.4byte 0x030000E8
_0802516C:
	.4byte 0x030000F8
_08025170:
	.4byte 0x040000D4
_08025174:
	.4byte gUnknown_082AF7A8
_08025178:
	.4byte 0x06010000
_0802517C:
	.4byte 0x84000200
_08025180:
	.4byte gUnknown_082AF7A0
_08025184:
	.4byte gOamData
_08025188:
	.4byte 0x84000002
_0802518C:
	.4byte 0x000001FF
_08025190:
	.4byte 0xFFFFFE00
_08025194:
	.4byte 0x000003FF
_08025198:
	.4byte 0xFFFFFC00
_0802519C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08024E5C

	THUMB_FUNC_START sub_080251A0
sub_080251A0: @ 0x080251A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r12, r1
	add r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldr r0, _08025590  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #8]
	cmp r1, #0
	bne _080251C2
	b _080254DC
_080251C2:
	ldrb r0, [r2, #1]
	ldr r1, _08025594  @ =0x030000F8
	mov r9, r1
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080252C8
	ldrb r0, [r1, #1]
	add r0, r0, #15
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r2, r10
	str r0, [r2]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080252C8:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080253D2
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080253D2:
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r2, r9
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _080254DC
	ldrb r0, [r1, #1]
	add r0, r0, #15
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #25]
	sub r0, r0, #16
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255A0  @ =gUnknown_082B34B4
	ldr r3, _08025590  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255A4  @ =gUnknown_082B354C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255B0  @ =gUnknown_082B3544
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _08025590  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	mov r3, r9
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _080255CC  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_080254DC:
	ldr r0, _08025590  @ =0x030000E8
	mov r9, r0
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	cmp r0, #0
	bne _080254EA
	b _08025858
_080254EA:
	ldrb r0, [r1, #1]
	ldr r2, _08025594  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _080254FC
	b _08025640
_080254FC:
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025598  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _0802559C  @ =0x040000D4
	ldr r2, _080255D0  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _080255D4  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _080255A8  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _080255AC  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _080255D8  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _080255B4  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _080255B8  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _080255BC  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _080255C0  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _080255C4  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080255C8  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	b _080255DC
	.byte 0x00
	.byte 0x00
_08025590:
	.4byte 0x030000E8
_08025594:
	.4byte 0x030000F8
_08025598:
	.4byte 0x030000F4
_0802559C:
	.4byte 0x040000D4
_080255A0:
	.4byte gUnknown_082B34B4
_080255A4:
	.4byte gUnknown_082B354C
_080255A8:
	.4byte 0x06010000
_080255AC:
	.4byte 0x84000100
_080255B0:
	.4byte gUnknown_082B3544
_080255B4:
	.4byte gOamData
_080255B8:
	.4byte 0x84000002
_080255BC:
	.4byte 0x000001FF
_080255C0:
	.4byte 0xFFFFFE00
_080255C4:
	.4byte 0x000003FF
_080255C8:
	.4byte 0xFFFFFC00
_080255CC:
	.4byte 0x80000200
_080255D0:
	.4byte gUnknown_082B55E4
_080255D4:
	.4byte gUnknown_082B567C
_080255D8:
	.4byte gUnknown_082B5674
_080255DC:
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #1]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025640:
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025748
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =0x040000D4
	ldr r2, _08025878  @ =gUnknown_082B55E4
	mov r3, r9
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	mov r0, r12
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802589C  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r9
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025748:
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r2, _08025868  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #5]
	cmp r0, #0
	beq _08025858
	ldrb r0, [r1, #2]
	mov r3, r8
	str r0, [r3]
	ldr r0, _08025870  @ =0x030000F4
	ldr r0, [r0]
	ldrb r0, [r0, #24]
	sub r0, r0, #10
	mov r1, r10
	str r0, [r1]
	ldr r4, _08025874  @ =0x040000D4
	ldr r2, _08025878  @ =gUnknown_082B55E4
	ldr r3, _080258A4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r1, [r0, #5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0]
	lsl r0, r0, #10
	ldr r1, _0802587C  @ =gUnknown_082B567C
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r7]
	ldr r1, _08025880  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08025884  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldr r0, _08025888  @ =gUnknown_082B5674
	str r0, [r4]
	ldrh r0, [r6]
	lsl r0, r0, #3
	ldr r5, _0802588C  @ =gOamData
	add r0, r0, r5
	str r0, [r4, #4]
	ldr r0, _08025890  @ =0x84000002
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08025894  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _08025898  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r10
	ldr r1, [r2]
	strb r1, [r0]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	mov r8, r3
	mov r0, r8
	lsl r1, r0, #22
	lsr r1, r1, #22
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	ldr r0, _0802589C  @ =0x000003FF
	mov r9, r0
	mov r3, r9
	and r1, r1, r3
	ldr r0, _080258A0  @ =0xFFFFFC00
	mov r3, r8
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldr r1, _080258A4  @ =0x030000E8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	ldr r3, _08025868  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0, #6]
	lsl r1, r1, #4
	ldrb r3, [r2, #5]
	mov r0, #15
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r2, [r7]
	add r0, r0, r2
	strh r0, [r7]
	mov r3, r12
	ldrh r0, [r3]
	add r0, r0, #32
	strh r0, [r3]
	str r5, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _0802586C  @ =0x80000200
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08025858:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025868:
	.4byte 0x030000F8
_0802586C:
	.4byte 0x80000200
_08025870:
	.4byte 0x030000F4
_08025874:
	.4byte 0x040000D4
_08025878:
	.4byte gUnknown_082B55E4
_0802587C:
	.4byte gUnknown_082B567C
_08025880:
	.4byte 0x06010000
_08025884:
	.4byte 0x84000100
_08025888:
	.4byte gUnknown_082B5674
_0802588C:
	.4byte gOamData
_08025890:
	.4byte 0x84000002
_08025894:
	.4byte 0x000001FF
_08025898:
	.4byte 0xFFFFFE00
_0802589C:
	.4byte 0x000003FF
_080258A0:
	.4byte 0xFFFFFC00
_080258A4:
	.4byte 0x030000E8
	THUMB_FUNC_END sub_080251A0

	THUMB_FUNC_START sub_080258A8
sub_080258A8: @ 0x080258A8
	push {r4,lr}
	sub sp, sp, #12
	ldr r2, _08025900  @ =0x030000F4
	ldr r0, [r2]
	ldrb r1, [r0, #24]
	add r1, r1, #1
	mov r4, #0
	strb r1, [r0, #24]
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #43
	bne _080258F8
	mov r0, #4
	strb r0, [r1, #23]
	ldr r3, _08025904  @ =0x03000C10
	ldr r1, _08025908  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802590C  @ =0x03000C08
	ldr r1, _08025910  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080258F8:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
_08025900:
	.4byte 0x030000F4
_08025904:
	.4byte 0x03000C10
_08025908:
	.4byte gUnknown_080798E8
_0802590C:
	.4byte 0x03000C08
_08025910:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080258A8

	THUMB_FUNC_START sub_08025914
sub_08025914: @ 0x08025914
	push {r4,lr}
	ldr r0, _08025934  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r4, r0, #0
	cmp r1, #2
	bhi _0802593C
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08025938
	add r0, r1, #1
	strb r0, [r2, #4]
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #6]
	b _0802593C
_08025934:
	.4byte 0x030000E8
_08025938:
	sub r0, r0, #1
	strb r0, [r2, #6]
_0802593C:
	ldr r0, _08025970  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _0802594E
	ldr r1, [r4]
	mov r0, #1
	strb r0, [r1, #7]
_0802594E:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08025978
	ldr r1, [r4]
	ldrb r3, [r1, #5]
	cmp r3, #2
	bhi _08025978
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08025974
	add r0, r3, #1
	strb r0, [r1, #5]
	ldr r1, [r4]
	mov r0, #1
	b _08025976
	.byte 0x00
	.byte 0x00
_08025970:
	.4byte 0x030000F4
_08025974:
	sub r0, r0, #1
_08025976:
	strb r0, [r1, #6]
_08025978:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #16
	bne _080259AE
	ldr r1, [r4]
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #6]
	ldr r1, [r2]
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _080259B4  @ =0x03000C10
	ldr r1, _080259B8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080259BC  @ =0x03000C08
	ldr r1, _080259C0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080259AE:
	pop {r4}
	pop {r0}
	bx r0
_080259B4:
	.4byte 0x03000C10
_080259B8:
	.4byte gUnknown_080798E8
_080259BC:
	.4byte 0x03000C08
_080259C0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025914

	THUMB_FUNC_START sub_080259C4
sub_080259C4: @ 0x080259C4
	push {r4,r5,lr}
	sub sp, sp, #8
	ldr r0, _08025A40  @ =0x030000EC
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	str r0, [sp]
	mov r0, #13
	str r0, [sp, #4]
	ldr r5, _08025A44  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r4, _08025A48  @ =gUnknown_0886022C
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	mov r0, #8
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
	ldr r2, _08025A4C  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #119
	bls _08025A38
	mov r4, #0
	mov r0, #7
	strb r0, [r1, #23]
	ldr r3, _08025A50  @ =0x03000C10
	ldr r1, _08025A54  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025A58  @ =0x03000C08
	ldr r1, _08025A5C  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08025A38:
	add sp, sp, #8
	pop {r4,r5}
	pop {r0}
	bx r0
_08025A40:
	.4byte 0x030000EC
_08025A44:
	.4byte 0x030000E4
_08025A48:
	.4byte gUnknown_0886022C
_08025A4C:
	.4byte 0x030000F4
_08025A50:
	.4byte 0x03000C10
_08025A54:
	.4byte gUnknown_080798E8
_08025A58:
	.4byte 0x03000C08
_08025A5C:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080259C4

	THUMB_FUNC_START sub_08025A60
sub_08025A60: @ 0x08025A60
	push {r4,r5,lr}
	sub sp, sp, #16
	mov r4, #8
	str r4, [sp, #8]
	mov r0, #4
	str r0, [sp, #12]
	ldr r0, _08025AD4  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #146
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08025AD8  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r0, _08025ADC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
	strb r0, [r1, #1]
	ldr r2, _08025AE0  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #0
	beq _08025ACC
	strb r4, [r1, #23]
	ldr r3, _08025AE4  @ =0x03000C10
	ldr r1, _08025AE8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08025AEC  @ =0x03000C08
	ldr r1, _08025AF0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	mov r0, #42
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08025ACC:
	add sp, sp, #16
	pop {r4,r5}
	pop {r0}
	bx r0
_08025AD4:
	.4byte 0x030000E4
_08025AD8:
	.4byte gUnknown_0886022C
_08025ADC:
	.4byte 0x030000F0
_08025AE0:
	.4byte 0x030000F4
_08025AE4:
	.4byte 0x03000C10
_08025AE8:
	.4byte gUnknown_080798E8
_08025AEC:
	.4byte 0x03000C08
_08025AF0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025A60

	THUMB_FUNC_START sub_08025AF4
sub_08025AF4: @ 0x08025AF4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	ldr r0, _08025BB0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	beq _08025B0E
	b _08025C5C
_08025B0E:
	ldr r0, _08025BB4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0]
	sub r0, r0, #6
	cmp r1, r0
	blt _08025B1E
	b _08025C5C
_08025B1E:
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r0, #13
	mov r9, r0
	str r0, [sp, #16]
	ldr r6, _08025BB8  @ =0x030000E4
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	mov r10, r1
	add r0, r0, r10
	ldr r1, [r0]
	ldr r7, _08025BBC  @ =gUnknown_0886022C
	ldr r2, [r7, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08025BC0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r5, #1
	and r5, r5, r1
	cmp r5, #0
	beq _08025BC4
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, r9
	str r0, [sp, #16]
	ldr r0, [r6]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r7, #68]
	b _08025E2A
_08025BB0:
	.4byte 0x030000EC
_08025BB4:
	.4byte 0x030000F4
_08025BB8:
	.4byte 0x030000E4
_08025BBC:
	.4byte gUnknown_0886022C
_08025BC0:
	.4byte gUnknown_030012E8
_08025BC4:
	mov r0, #32
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _08025C10
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #5
	bne _08025BDC
	b _08025EA4
_08025BDC:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r4, #5
	str r4, [sp]
	str r5, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r0, [r2]
	strb r4, [r0, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C10:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _08025C1A
	b _08025EA4
_08025C1A:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #3]
	cmp r0, #14
	bne _08025C26
	b _08025EA4
_08025C26:
	str r0, [sp, #12]
	mov r1, r9
	str r1, [sp, #16]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r7, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r2, r8
	ldr r1, [r2]
	mov r0, #14
	strb r0, [r1, #3]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	ldr r0, [r6]
	add r0, r0, r10
	ldr r1, [r0]
	ldr r2, [r7, #68]
	b _08025E2A
_08025C5C:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025C68
	b _08025EA4
_08025C68:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r7, #0
	strb r0, [r1, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r6, [r0, #3]
	cmp r6, #5
	bne _08025D1C
	ldr r3, _08025D0C  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _08025D10  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025C92
	add r0, r0, #24
	strb r0, [r1, #3]
_08025C92:
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #16
	bne _08025D48
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025D14  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025D18  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	str r6, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D0C:
	.4byte 0x030000E8
_08025D10:
	.4byte 0x030000F8
_08025D14:
	.4byte 0x030000E4
_08025D18:
	.4byte gUnknown_0886022C
_08025D1C:
	cmp r6, #14
	bne _08025DC0
	ldr r3, _08025D50  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _08025D54  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #160
	beq _08025D38
	add r0, r0, #24
	strb r0, [r1, #3]
_08025D38:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _08025D58
_08025D48:
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _08025DC0
	.byte 0x00
	.byte 0x00
_08025D50:
	.4byte 0x030000E8
_08025D54:
	.4byte 0x030000F8
_08025D58:
	mov r2, r8
	ldr r0, [r2]
	strb r7, [r0]
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	strb r7, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	strb r1, [r0, #2]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025E34  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025DC0:
	ldr r0, _08025E3C  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _08025E40
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _08025E40
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _08025E34  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025E38  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #15
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_08025E2A:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08025EA4
_08025E34:
	.4byte 0x030000E4
_08025E38:
	.4byte gUnknown_0886022C
_08025E3C:
	.4byte 0x030000EC
_08025E40:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _08025EB4  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08025EA4
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08025EB8  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #14
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08025EBC  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08025EA4:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08025EB4:
	.4byte 0x00FFFF00
_08025EB8:
	.4byte 0x030000E4
_08025EBC:
	.4byte gUnknown_0886022C
	THUMB_FUNC_END sub_08025AF4

	THUMB_FUNC_START sub_08025EC0
sub_08025EC0: @ 0x08025EC0
	push {r4,lr}
	ldr r1, _08025EE8  @ =0x030000F0
	ldr r3, [r1]
	ldrb r2, [r3, #1]
	add r4, r1, #0
	cmp r2, #0
	bne _08025F24
	ldr r0, _08025EEC  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025EE2
	cmp r0, #3
	bne _08025EF4
_08025EE2:
	ldr r1, _08025EF0  @ =0x03000C04
	mov r0, #72
	b _08025F18
_08025EE8:
	.4byte 0x030000F0
_08025EEC:
	.4byte 0x030000F4
_08025EF0:
	.4byte 0x03000C04
_08025EF4:
	cmp r0, #1
	beq _08025EFC
	cmp r0, #4
	bne _08025F08
_08025EFC:
	ldr r0, _08025F04  @ =0x03000C04
	strh r2, [r0]
	b _08025F1A
	.byte 0x00
	.byte 0x00
_08025F04:
	.4byte 0x03000C04
_08025F08:
	cmp r0, #2
	beq _08025F10
	cmp r0, #5
	bne _08025F1A
_08025F10:
	ldr r1, _08025F20  @ =0x03000C04
	mov r2, #70
	neg r2, r2
	add r0, r2, #0
_08025F18:
	strh r0, [r1]
_08025F1A:
	ldr r1, [r4]
	mov r0, #1
	b _08025F9A
_08025F20:
	.4byte 0x03000C04
_08025F24:
	cmp r2, #1
	bne _08025F6E
	ldr r0, _08025F48  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _08025F50
	ldr r1, _08025F4C  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _08025F5C
	b _08025F68
	.byte 0x00
	.byte 0x00
_08025F48:
	.4byte 0x030000F4
_08025F4C:
	.4byte 0x03000C0C
_08025F50:
	ldr r1, _08025F64  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08025F68
_08025F5C:
	sub r0, r2, #2
	strh r0, [r1]
	b _08025F9C
	.byte 0x00
	.byte 0x00
_08025F64:
	.4byte 0x03000C0C
_08025F68:
	mov r0, #2
	strb r0, [r3, #1]
	b _08025F9C
_08025F6E:
	cmp r2, #2
	bne _08025F9C
	ldr r2, _08025F84  @ =0x03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08025F88
	add r0, r3, #2
	strh r0, [r2]
	b _08025F9C
_08025F84:
	.4byte 0x03000C0C
_08025F88:
	ldr r0, _08025FA4  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _08025F96
	add r0, r0, #1
	strb r0, [r2, #22]
_08025F96:
	ldr r1, [r1]
	mov r0, #0
_08025F9A:
	strb r0, [r1, #1]
_08025F9C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08025FA4:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08025EC0

	THUMB_FUNC_START sub_08025FA8
sub_08025FA8: @ 0x08025FA8
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_08025EC0
	bl sub_08025AF4
	ldr r0, _08025FD8  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1]
	cmp r0, r2
	bcc _0802604C
	add r0, r1, #4
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025FD0
	cmp r0, #3
	bne _08025FE0
_08025FD0:
	ldr r2, _08025FDC  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #0
	b _08026004
_08025FD8:
	.4byte 0x030000F4
_08025FDC:
	.4byte 0x030000F0
_08025FE0:
	cmp r0, #1
	beq _08025FE8
	cmp r0, #4
	bne _08025FF4
_08025FE8:
	ldr r2, _08025FF0  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #1
	b _08026004
_08025FF0:
	.4byte 0x030000F0
_08025FF4:
	cmp r0, #2
	beq _08025FFE
	ldr r2, _08026054  @ =0x030000F0
	cmp r0, #5
	bne _08026006
_08025FFE:
	ldr r2, _08026054  @ =0x030000F0
	ldr r1, [r2]
	mov r0, #2
_08026004:
	strb r0, [r1, #2]
_08026006:
	ldr r0, [r2]
	mov r4, #0
	strb r4, [r0, #1]
	ldr r1, _08026058  @ =0x030000F4
	ldr r0, [r1]
	strb r4, [r0, #22]
	ldr r2, [r1]
	mov r0, #9
	strb r0, [r2, #23]
	ldr r5, _0802605C  @ =0x03000C10
	ldr r3, _08026060  @ =gUnknown_080798E8
	ldr r2, [r1]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r5]
	ldr r3, _08026064  @ =0x03000C08
	ldr r1, _08026068  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802604C:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_08026054:
	.4byte 0x030000F0
_08026058:
	.4byte 0x030000F4
_0802605C:
	.4byte 0x03000C10
_08026060:
	.4byte gUnknown_080798E8
_08026064:
	.4byte 0x03000C08
_08026068:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08025FA8

	THUMB_FUNC_START sub_0802606C
sub_0802606C: @ 0x0802606C
	push {r4-r6,lr}
	ldr r2, _08026080  @ =0x03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026084
	sub r0, r0, #2
	strh r0, [r2]
	b _08026158
_08026080:
	.4byte 0x03000C0C
_08026084:
	cmp r1, #10
	ble _0802608C
	sub r0, r0, #2
	strh r0, [r2]
_0802608C:
	ldr r0, _080260AC  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _080260B4
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _080260B0
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _080260B4
	.byte 0x00
	.byte 0x00
_080260AC:
	.4byte 0x030000E8
_080260B0:
	sub r0, r0, #1
	strb r0, [r2, #11]
_080260B4:
	ldr r0, _08026104  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r6, r0, #0
	cmp r1, #29
	bls _08026158
	mov r5, #0
	mov r0, #10
	strb r0, [r3, #23]
	ldr r3, _08026108  @ =0x03000C10
	ldr r1, _0802610C  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026110  @ =0x03000C08
	ldr r1, _08026114  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _08026118  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026120
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r1, _0802611C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #1]
	b _08026152
_08026104:
	.4byte 0x030000F4
_08026108:
	.4byte 0x03000C10
_0802610C:
	.4byte gUnknown_080798E8
_08026110:
	.4byte 0x03000C08
_08026114:
	.4byte gUnknown_08079938
_08026118:
	.4byte 0x030000F0
_0802611C:
	.4byte 0x030000F8
_08026120:
	cmp r0, #2
	bne _08026140
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, _0802613C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	strb r0, [r1, #3]
	b _08026152
	.byte 0x00
	.byte 0x00
_0802613C:
	.4byte 0x030000F8
_08026140:
	cmp r0, #1
	bne _08026152
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, _08026160  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
_08026152:
	ldr r1, [r6]
	mov r0, #0
	strh r0, [r1, #40]
_08026158:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08026160:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_0802606C

	THUMB_FUNC_START sub_08026164
sub_08026164: @ 0x08026164
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #16
	ldr r1, _08026180  @ =0x03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026184
	add r0, r2, #2
	strh r0, [r1]
	b _080262B4
_08026180:
	.4byte 0x03000C0C
_08026184:
	ldr r0, _080261A8  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _080261B4
	ldr r3, _080261AC  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261B0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	sub r0, r0, #1
	b _08026206
	.byte 0x00
	.byte 0x00
_080261A8:
	.4byte 0x030000F0
_080261AC:
	.4byte 0x030000E8
_080261B0:
	.4byte 0x030000F8
_080261B4:
	cmp r0, #2
	bne _080261EC
	ldr r3, _080261E4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r2, _080261E8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080261D0
	add r0, r0, #1
	strb r0, [r1, #3]
_080261D0:
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _0802621C
	add r0, r0, #1
	b _0802621A
_080261E4:
	.4byte 0x030000E8
_080261E8:
	.4byte 0x030000F8
_080261EC:
	cmp r0, #1
	bne _0802621C
	ldr r3, _080262C4  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080262C8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026208
	add r0, r0, #1
_08026206:
	strb r0, [r1, #3]
_08026208:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _0802621C
	sub r0, r0, #1
_0802621A:
	strb r0, [r1, #3]
_0802621C:
	ldr r7, _080262CC  @ =0x030000F4
	ldr r0, [r7]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080262B4
	ldr r4, _080262D0  @ =0x030000EC
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r0, #13
	str r0, [sp, #12]
	ldr r0, _080262D4  @ =0x030000E4
	mov r8, r0
	ldr r0, [r0]
	mov r1, #160
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r6, _080262D8  @ =gUnknown_0886022C
	ldr r3, [r6, #68]
	mov r0, #5
	mov r9, r0
	str r0, [sp]
	mov r5, #0
	str r5, [sp, #4]
	add r0, sp, #8
	bl sub_080065F4
	ldr r1, [r4]
	mov r0, #10
	strb r0, [r1, #3]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	str r0, [sp, #8]
	mov r1, r8
	ldr r0, [r1]
	mov r3, #138
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r2, [r6, #68]
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
	ldr r1, _080262C4  @ =0x030000E8
	ldr r0, [r1]
	strb r5, [r0, #9]
	ldr r0, [r1]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, _080262DC  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	ldr r1, [r7]
	mov r0, #11
	strb r0, [r1, #23]
	ldr r3, _080262E0  @ =0x03000C10
	ldr r1, _080262E4  @ =gUnknown_080798E8
	ldr r2, [r7]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080262E8  @ =0x03000C08
	ldr r1, _080262EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
_080262B4:
	add sp, sp, #16
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080262C4:
	.4byte 0x030000E8
_080262C8:
	.4byte 0x030000F8
_080262CC:
	.4byte 0x030000F4
_080262D0:
	.4byte 0x030000EC
_080262D4:
	.4byte 0x030000E4
_080262D8:
	.4byte gUnknown_0886022C
_080262DC:
	.4byte 0x030000F0
_080262E0:
	.4byte 0x03000C10
_080262E4:
	.4byte gUnknown_080798E8
_080262E8:
	.4byte 0x03000C08
_080262EC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026164

	THUMB_FUNC_START sub_080262F0
sub_080262F0: @ 0x080262F0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _080263A0  @ =0x030000EC
	ldr r2, [r0]
	ldrb r4, [r2]
	mov r8, r0
	cmp r4, #0
	bne _080263B4
	ldr r0, _080263A4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r1, [r0, #40]
	ldrh r0, [r0, #2]
	sub r0, r0, #6
	cmp r1, r0
	bge _080263B4
	ldrb r0, [r2, #3]
	str r0, [sp, #12]
	mov r7, #13
	str r7, [sp, #16]
	ldr r5, _080263A8  @ =0x030000E4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r6, _080263AC  @ =gUnknown_0886022C
	ldr r2, [r6, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	ldr r0, _080263B0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _08026340
	b _08026550
_08026340:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #159
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r2, r8
	ldr r1, [r2]
	mov r0, #2
	strb r0, [r1, #2]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	str r7, [sp, #16]
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r3, [r6, #68]
	mov r0, #5
	str r0, [sp]
	str r4, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #68]
	b _080264D4
_080263A0:
	.4byte 0x030000EC
_080263A4:
	.4byte 0x030000F4
_080263A8:
	.4byte 0x030000E4
_080263AC:
	.4byte gUnknown_0886022C
_080263B0:
	.4byte gUnknown_030012E8
_080263B4:
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	bne _080263C0
	b _08026550
_080263C0:
	ldrb r0, [r1, #2]
	sub r0, r0, #1
	mov r6, #0
	strb r0, [r1, #2]
	ldr r3, _080263F8  @ =0x030000E8
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080263FC  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #124
	beq _080263E0
	add r0, r0, #24
	strb r0, [r1, #3]
_080263E0:
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #52
	beq _08026400
	sub r0, r0, #24
	strb r0, [r1, #3]
	b _0802646A
	.byte 0x00
	.byte 0x00
_080263F8:
	.4byte 0x030000E8
_080263FC:
	.4byte 0x030000F8
_08026400:
	mov r1, r8
	ldr r0, [r1]
	strb r6, [r0]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #2]
	mov r2, r8
	ldr r0, [r2]
	strb r6, [r0, #1]
	ldr r0, [r3]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #3]
	strb r1, [r0, #1]
	ldr r0, [r3]
	strb r2, [r0, #3]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _080264E0  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_0802646A:
	ldr r0, _080264E8  @ =0x030000EC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	mov r8, r0
	cmp r1, #1
	bhi _080264EC
	ldrb r7, [r2, #2]
	cmp r7, #0
	bne _080264EC
	mov r0, #2
	strb r0, [r2, #2]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r6, _080264E0  @ =0x030000E4
	ldr r1, [r6]
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	mov r5, #132
	lsl r5, r5, #1
	add r1, r1, r5
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _080264E4  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r7, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	mov r0, r8
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	add r0, r0, #1
	strb r0, [r1, #1]
	ldr r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #4
	lsl r0, r0, #2
	add r1, r1, r5
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r4, #68]
_080264D4:
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	b _08026550
	.byte 0x00
	.byte 0x00
_080264E0:
	.4byte 0x030000E4
_080264E4:
	.4byte gUnknown_0886022C
_080264E8:
	.4byte 0x030000EC
_080264EC:
	mov r0, r8
	ldr r2, [r0]
	ldr r0, [r2]
	ldr r1, _0802655C  @ =0x00FFFF00
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #2
	cmp r0, r1
	bne _08026550
	mov r6, #0
	mov r0, #2
	strb r0, [r2, #2]
	mov r1, r8
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	str r0, [sp, #12]
	mov r0, #13
	str r0, [sp, #16]
	ldr r5, _08026560  @ =0x030000E4
	ldr r1, [r5]
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	add r0, r0, #3
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r0, [r1]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r4, _08026564  @ =gUnknown_0886022C
	ldr r3, [r4, #68]
	mov r0, #5
	str r0, [sp]
	str r6, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, [r5]
	mov r1, #138
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r4, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
_08026550:
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802655C:
	.4byte 0x00FFFF00
_08026560:
	.4byte 0x030000E4
_08026564:
	.4byte gUnknown_0886022C
	THUMB_FUNC_END sub_080262F0

	THUMB_FUNC_START sub_08026568
sub_08026568: @ 0x08026568
	push {r4,lr}
	ldr r1, _08026594  @ =0x030000F0
	ldr r3, [r1]
	ldrb r0, [r3, #1]
	add r2, r1, #0
	cmp r0, #0
	bne _080265BC
	ldr r0, _08026598  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802658C
	cmp r0, #3
	bne _080265A0
_0802658C:
	ldr r1, _0802659C  @ =0x03000C04
	mov r0, #32
	b _080265B0
	.byte 0x00
	.byte 0x00
_08026594:
	.4byte 0x030000F0
_08026598:
	.4byte 0x030000F4
_0802659C:
	.4byte 0x03000C04
_080265A0:
	cmp r0, #2
	beq _080265A8
	cmp r0, #5
	bne _080265B2
_080265A8:
	ldr r1, _080265B8  @ =0x03000C04
	mov r3, #32
	neg r3, r3
	add r0, r3, #0
_080265B0:
	strh r0, [r1]
_080265B2:
	ldr r1, [r2]
	mov r0, #1
	b _08026632
_080265B8:
	.4byte 0x03000C04
_080265BC:
	cmp r0, #1
	bne _08026606
	ldr r0, _080265E0  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bls _080265E8
	ldr r1, _080265E4  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #80
	bgt _080265F4
	b _08026600
_080265E0:
	.4byte 0x030000F4
_080265E4:
	.4byte 0x03000C0C
_080265E8:
	ldr r1, _080265FC  @ =0x03000C0C
	ldrh r2, [r1]
	mov r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #42
	ble _08026600
_080265F4:
	sub r0, r2, #6
	strh r0, [r1]
	b _08026634
	.byte 0x00
	.byte 0x00
_080265FC:
	.4byte 0x03000C0C
_08026600:
	mov r0, #2
	strb r0, [r3, #1]
	b _08026634
_08026606:
	cmp r0, #2
	bne _08026634
	ldr r2, _0802661C  @ =0x03000C0C
	ldrh r3, [r2]
	mov r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #127
	bgt _08026620
	add r0, r3, #6
	strh r0, [r2]
	b _08026634
_0802661C:
	.4byte 0x03000C0C
_08026620:
	ldr r0, _0802663C  @ =0x030000F4
	ldr r2, [r0]
	ldrb r0, [r2, #22]
	cmp r0, #8
	bhi _0802662E
	add r0, r0, #1
	strb r0, [r2, #22]
_0802662E:
	ldr r1, [r1]
	mov r0, #0
_08026632:
	strb r0, [r1, #1]
_08026634:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802663C:
	.4byte 0x030000F4
	THUMB_FUNC_END sub_08026568

	THUMB_FUNC_START sub_08026640
sub_08026640: @ 0x08026640
	push {r4,lr}
	sub sp, sp, #12
	bl sub_08026568
	bl sub_080262F0
	ldr r0, _08026674  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r2, [r1, #2]
	cmp r0, r2
	bcc _080266CA
	add r0, r1, #0
	add r0, r0, #13
	ldrb r1, [r1, #22]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802666A
	cmp r0, #3
	bne _0802667C
_0802666A:
	ldr r0, _08026678  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #0
	b _0802668A
	.byte 0x00
	.byte 0x00
_08026674:
	.4byte 0x030000F4
_08026678:
	.4byte 0x030000F0
_0802667C:
	cmp r0, #2
	beq _08026684
	cmp r0, #5
	bne _0802668C
_08026684:
	ldr r0, _080266D4  @ =0x030000F0
	ldr r1, [r0]
	mov r0, #1
_0802668A:
	strb r0, [r1, #2]
_0802668C:
	ldr r2, _080266D8  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #12
	strb r0, [r1, #23]
	ldr r4, _080266DC  @ =0x03000C10
	ldr r1, _080266E0  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r4, _080266E4  @ =0x03000C08
	ldr r1, _080266E8  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	strh r3, [r2, #40]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #106
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080266CA:
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080266D4:
	.4byte 0x030000F0
_080266D8:
	.4byte 0x030000F4
_080266DC:
	.4byte 0x03000C10
_080266E0:
	.4byte gUnknown_080798E8
_080266E4:
	.4byte 0x03000C08
_080266E8:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026640

	THUMB_FUNC_START sub_080266EC
sub_080266EC: @ 0x080266EC
	push {r4,r5,lr}
	ldr r2, _08026700  @ =0x03000C0C
	ldrh r0, [r2]
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r1, #42
	ble _08026704
	sub r0, r0, #6
	strh r0, [r2]
	b _080267D8
_08026700:
	.4byte 0x03000C0C
_08026704:
	cmp r1, #10
	ble _0802670C
	sub r0, r0, #6
	strh r0, [r2]
_0802670C:
	ldr r0, _0802672C  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	add r4, r0, #0
	cmp r1, #3
	bhi _08026734
	ldrb r0, [r2, #11]
	cmp r0, #0
	bne _08026730
	add r0, r1, #1
	strb r0, [r2, #9]
	ldr r1, [r4]
	mov r0, #5
	strb r0, [r1, #11]
	b _08026734
	.byte 0x00
	.byte 0x00
_0802672C:
	.4byte 0x030000E8
_08026730:
	sub r0, r0, #1
	strb r0, [r2, #11]
_08026734:
	ldr r0, _08026790  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #29
	bls _080267D8
	mov r0, #13
	strb r0, [r3, #23]
	ldr r3, _08026794  @ =0x03000C10
	ldr r1, _08026798  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802679C  @ =0x03000C08
	ldr r1, _080267A0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, _080267A4  @ =0x030000F0
	ldr r0, [r0]
	ldrb r3, [r0, #2]
	cmp r3, #0
	bne _080267AC
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r2, _080267A8  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0, #5]
	b _080267D2
_08026790:
	.4byte 0x030000F4
_08026794:
	.4byte 0x03000C10
_08026798:
	.4byte gUnknown_080798E8
_0802679C:
	.4byte 0x03000C08
_080267A0:
	.4byte gUnknown_08079938
_080267A4:
	.4byte 0x030000F0
_080267A8:
	.4byte 0x030000F8
_080267AC:
	cmp r3, #1
	bne _080267D2
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r2, _080267E0  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #0
	strb r1, [r0, #5]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r3, [r0, #5]
_080267D2:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_080267D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080267E0:
	.4byte 0x030000F8
	THUMB_FUNC_END sub_080266EC

	THUMB_FUNC_START sub_080267E4
sub_080267E4: @ 0x080267E4
	push {r4-r6,lr}
	sub sp, sp, #12
	ldr r1, _080267FC  @ =0x03000C0C
	ldrh r2, [r1]
	mov r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #127
	bgt _08026800
	add r0, r2, #1
	strh r0, [r1]
	b _080268BA
	.byte 0x00
	.byte 0x00
_080267FC:
	.4byte 0x03000C0C
_08026800:
	ldr r0, _08026824  @ =0x030000F0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08026830
	ldr r0, _08026828  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _0802682C  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	sub r0, r0, #1
	b _0802684A
	.byte 0x00
	.byte 0x00
_08026824:
	.4byte 0x030000F0
_08026828:
	.4byte 0x030000E8
_0802682C:
	.4byte 0x030000F8
_08026830:
	cmp r0, #1
	bne _0802684C
	ldr r0, _080268C4  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _080268C8  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #88
	beq _0802684C
	add r0, r0, #1
_0802684A:
	strb r0, [r1, #3]
_0802684C:
	ldr r6, _080268CC  @ =0x030000F4
	ldr r0, [r6]
	ldrh r0, [r0, #40]
	cmp r0, #99
	bls _080268BA
	ldr r4, _080268C4  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r3, _080268C8  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #0
	mov r2, #88
	strb r2, [r0, #1]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r2, [r0, #2]
	ldr r1, [r6]
	mov r0, #14
	strb r0, [r1, #23]
	ldr r3, _080268D0  @ =0x03000C10
	ldr r1, _080268D4  @ =gUnknown_080798E8
	ldr r2, [r6]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080268D8  @ =0x03000C08
	ldr r1, _080268DC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r5, [r2, #40]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #247
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #69
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
_080268BA:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080268C4:
	.4byte 0x030000E8
_080268C8:
	.4byte 0x030000F8
_080268CC:
	.4byte 0x030000F4
_080268D0:
	.4byte 0x03000C10
_080268D4:
	.4byte gUnknown_080798E8
_080268D8:
	.4byte 0x03000C08
_080268DC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080267E4

	THUMB_FUNC_START sub_080268E0
sub_080268E0: @ 0x080268E0
	push {r4,lr}
	ldr r0, _08026908  @ =0x030000E8
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	add r3, r0, #0
	cmp r1, #0
	beq _08026910
	ldrb r1, [r2, #5]
	cmp r1, #0
	beq _08026910
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0802690C
	sub r0, r1, #1
	strb r0, [r2, #5]
	ldr r1, [r3]
	mov r0, #1
	strb r0, [r1, #6]
	b _08026910
	.byte 0x00
	.byte 0x00
_08026908:
	.4byte 0x030000E8
_0802690C:
	sub r0, r0, #1
	strb r0, [r2, #6]
_08026910:
	ldr r0, _08026940  @ =0x030000F4
	ldr r1, [r0]
	ldrh r1, [r1, #40]
	add r2, r0, #0
	cmp r1, #8
	bne _08026922
	ldr r1, [r3]
	mov r0, #0
	strb r0, [r1, #7]
_08026922:
	ldr r0, [r2]
	ldrh r0, [r0, #40]
	cmp r0, #8
	bls _08026948
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08026944
	ldrb r0, [r1, #4]
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r1, [r3]
	mov r0, #1
	b _08026946
	.byte 0x00
	.byte 0x00
_08026940:
	.4byte 0x030000F4
_08026944:
	sub r0, r0, #1
_08026946:
	strb r0, [r1, #6]
_08026948:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #15
	bls _08026976
	mov r4, #0
	mov r0, #15
	strb r0, [r1, #23]
	ldr r3, _0802697C  @ =0x03000C10
	ldr r1, _08026980  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026984  @ =0x03000C08
	ldr r1, _08026988  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026976:
	pop {r4}
	pop {r0}
	bx r0
_0802697C:
	.4byte 0x03000C10
_08026980:
	.4byte gUnknown_080798E8
_08026984:
	.4byte 0x03000C08
_08026988:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_080268E0

	THUMB_FUNC_START sub_0802698C
sub_0802698C: @ 0x0802698C
	push {r4,lr}
	ldr r2, _080269D0  @ =0x030000F4
	ldr r1, [r2]
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq _0802699C
	sub r0, r0, #1
	strb r0, [r1, #24]
_0802699C:
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _080269CA
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _080269D4  @ =0x03000C10
	ldr r1, _080269D8  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080269DC  @ =0x03000C08
	ldr r1, _080269E0  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_080269CA:
	pop {r4}
	pop {r0}
	bx r0
_080269D0:
	.4byte 0x030000F4
_080269D4:
	.4byte 0x03000C10
_080269D8:
	.4byte gUnknown_080798E8
_080269DC:
	.4byte 0x03000C08
_080269E0:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_0802698C

	THUMB_FUNC_START sub_080269E4
sub_080269E4: @ 0x080269E4
	push {r4-r7,lr}
	ldr r0, _08026A50  @ =0x030000F4
	ldr r3, [r0]
	ldrh r1, [r3, #40]
	add r5, r0, #0
	cmp r1, #0
	beq _08026AD0
	mov r0, #18
	strb r0, [r3, #23]
	ldr r3, _08026A54  @ =0x03000C10
	ldr r1, _08026A58  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A5C  @ =0x03000C08
	ldr r1, _08026A60  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026A64  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026A68  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r6, r3, #0
	add r7, r2, #0
	cmp r0, #1
	bls _08026A3C
	add r0, r1, #0
	cmp r0, #4
	beq _08026A3C
	cmp r0, #5
	bne _08026A70
_08026A3C:
	ldr r3, [r6]
	ldr r2, _08026A6C  @ =gUnknown_0811C010
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026A84
_08026A50:
	.4byte 0x030000F4
_08026A54:
	.4byte 0x03000C10
_08026A58:
	.4byte gUnknown_080798E8
_08026A5C:
	.4byte 0x03000C08
_08026A60:
	.4byte gUnknown_08079938
_08026A64:
	.4byte 0x030000E8
_08026A68:
	.4byte 0x030000F8
_08026A6C:
	.4byte gUnknown_0811C010
_08026A70:
	cmp r0, #3
	bne _08026A84
	ldr r2, _08026AA4  @ =gUnknown_0811F5F4
	ldrb r1, [r4, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r4, #11]
_08026A84:
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	ldr r1, [r7]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08026A98
	cmp r0, #3
	bne _08026AA8
_08026A98:
	ldr r1, [r5]
	mov r0, #80
	strh r0, [r1, #36]
	strh r0, [r1, #38]
	b _08026ACA
	.byte 0x00
	.byte 0x00
_08026AA4:
	.4byte gUnknown_0811F5F4
_08026AA8:
	cmp r0, #2
	bne _08026AB2
	ldr r0, [r5]
	mov r1, #95
	b _08026AC4
_08026AB2:
	cmp r0, #4
	bne _08026ABC
	ldr r0, [r5]
	mov r1, #140
	b _08026AC4
_08026ABC:
	cmp r0, #5
	bne _08026ACA
	ldr r0, [r5]
	mov r1, #220
_08026AC4:
	strh r1, [r0, #36]
	mov r1, #50
	strh r1, [r0, #38]
_08026ACA:
	ldr r1, [r5]
	mov r0, #0
	strh r0, [r1, #40]
_08026AD0:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080269E4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08026AD8
sub_08026AD8: @ 0x08026AD8
	push {r4-r6,lr}
	sub sp, sp, #20
	ldr r3, _08026B1C  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #2]
	ldr r2, _08026B20  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r5, r3, #0
	add r6, r2, #0
	cmp r0, #1
	bls _08026B04
	add r0, r1, #0
	cmp r0, #4
	beq _08026B04
	cmp r0, #5
	bne _08026B2E
_08026B04:
	ldr r1, [r5]
	ldrb r2, [r1, #10]
	cmp r2, #10
	bhi _08026B60
	ldrb r0, [r1, #11]
	cmp r0, #0
	bne _08026B28
	add r0, r2, #1
	strb r0, [r1, #10]
	ldr r3, [r5]
	ldr r2, _08026B24  @ =gUnknown_0811C010
	b _08026B46
_08026B1C:
	.4byte 0x030000E8
_08026B20:
	.4byte 0x030000F8
_08026B24:
	.4byte gUnknown_0811C010
_08026B28:
	sub r0, r0, #1
	strb r0, [r1, #11]
	b _08026B60
_08026B2E:
	cmp r0, #3
	bne _08026B60
	ldrb r1, [r4, #10]
	cmp r1, #10
	bhi _08026B60
	ldrb r0, [r4, #11]
	cmp r0, #0
	bne _08026B5C
	add r0, r1, #1
	strb r0, [r4, #10]
	ldr r3, [r5]
	ldr r2, _08026B58  @ =gUnknown_0811F5F4
_08026B46:
	ldrb r1, [r3, #10]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strb r0, [r3, #11]
	b _08026B60
	.byte 0x00
	.byte 0x00
_08026B58:
	.4byte gUnknown_0811F5F4
_08026B5C:
	sub r0, r0, #1
	strb r0, [r4, #11]
_08026B60:
	ldr r0, _08026BC4  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #10
	bne _08026C06
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	ldr r1, [r6]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026B8A
	add r0, r1, #0
	cmp r0, #4
	beq _08026B8A
	cmp r0, #5
	bne _08026BD0
_08026B8A:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026BC8  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026BCC  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08026C06
	.byte 0x00
	.byte 0x00
_08026BC4:
	.4byte 0x030000F4
_08026BC8:
	.4byte 0x030000E4
_08026BCC:
	.4byte gUnknown_0886022C
_08026BD0:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r0, _08026C78  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #80
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08026C06:
	ldr r0, _08026C7C  @ =0x030000F4
	ldr r1, [r0]
	ldrh r0, [r1, #40]
	ldrh r1, [r1, #38]
	cmp r0, r1
	bne _08026CB6
	ldr r0, _08026C80  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026C84  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r0]
	sub r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _08026C36
	add r0, r1, #0
	cmp r0, #4
	beq _08026C36
	cmp r0, #5
	bne _08026C8C
_08026C36:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026C74  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #148
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026C78  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026C88  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026CB6
	mov r0, #1
	bl sub_08014A58
	b _08026CB6
_08026C74:
	.4byte 0x030000E4
_08026C78:
	.4byte gUnknown_0886022C
_08026C7C:
	.4byte 0x030000F4
_08026C80:
	.4byte 0x030000E8
_08026C84:
	.4byte 0x030000F8
_08026C88:
	.4byte gUnknown_03000BBC
_08026C8C:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #152
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
_08026CB6:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #55
	bne _08026D12
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026CDC
	cmp r0, #4
	beq _08026CDC
	cmp r0, #5
	bne _08026D12
_08026CDC:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #150
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08026D12:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #82
	bne _08026D74
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08026D38
	cmp r0, #4
	beq _08026D38
	cmp r0, #5
	bne _08026D74
_08026D38:
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #150
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026D74
	mov r0, #1
	bl sub_08014A58
_08026D74:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #100
	bne _08026DCE
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026DCE
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #154
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08026DCE:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #127
	bne _08026E2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	sub r0, r0, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08026E2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #154
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026E2E
	mov r0, #1
	bl sub_08014A58
_08026E2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #145
	bne _08026E82
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026E82
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #156
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08026E82:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #172
	bne _08026EDA
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026EDA
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #156
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026EDA
	mov r0, #1
	bl sub_08014A58
_08026EDA:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #190
	bne _08026F2E
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _08026F2E
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r1, #158
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r2, [r0, #68]
	add r0, sp, #12
	mov r3, #5
	bl sub_080064D4
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #52
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08026F2E:
	ldr r0, _08026FC8  @ =0x030000F4
	ldr r0, [r0]
	ldrh r0, [r0, #40]
	cmp r0, #207
	bne _08026F86
	ldr r0, _08026FCC  @ =0x030000E8
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _08026FD0  @ =0x030000F8
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #5
	bne _08026F86
	mov r0, #12
	str r0, [sp, #12]
	mov r0, #9
	str r0, [sp, #16]
	ldr r0, _08026FC0  @ =0x030000E4
	ldr r0, [r0]
	mov r3, #158
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _08026FC4  @ =gUnknown_0886022C
	ldr r3, [r0, #68]
	str r4, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #12
	bl sub_080065F4
	ldr r0, _08026FD4  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #98
	bgt _08026F86
	mov r0, #1
	bl sub_08014A58
_08026F86:
	ldr r2, _08026FC8  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	ldrh r3, [r1, #36]
	cmp r0, r3
	bcc _08026FB8
	mov r4, #0
	mov r0, #19
	strb r0, [r1, #23]
	ldr r3, _08026FD8  @ =0x03000C10
	ldr r1, _08026FDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08026FE0  @ =0x03000C08
	ldr r1, _08026FE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08026FB8:
	add sp, sp, #20
	pop {r4-r6}
	pop {r0}
	bx r0
_08026FC0:
	.4byte 0x030000E4
_08026FC4:
	.4byte gUnknown_0886022C
_08026FC8:
	.4byte 0x030000F4
_08026FCC:
	.4byte 0x030000E8
_08026FD0:
	.4byte 0x030000F8
_08026FD4:
	.4byte gUnknown_03000BBC
_08026FD8:
	.4byte 0x03000C10
_08026FDC:
	.4byte gUnknown_080798E8
_08026FE0:
	.4byte 0x03000C08
_08026FE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08026AD8

	THUMB_FUNC_START sub_08026FE8
sub_08026FE8: @ 0x08026FE8
	push {r4,r5,lr}
	bl sub_0801488C
	ldr r0, _08027000  @ =gUnknown_03000B80
	ldrb r1, [r0]
	sub r0, r1, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _08027004
	mov r0, #9
	b _08027052
_08027000:
	.4byte gUnknown_03000B80
_08027004:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802705A
	ldr r4, _08027048  @ =gUnknown_03000B90
	ldr r0, [r4, #32]
	mov r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08027050
	ldr r5, _0802704C  @ =gUnknown_080788C8
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	bne _08027050
	mov r1, #18
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r5
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08027052
	.byte 0x00
	.byte 0x00
_08027048:
	.4byte gUnknown_03000B90
_0802704C:
	.4byte gUnknown_080788C8
_08027050:
	mov r0, #8
_08027052:
	mov r1, #1
	bl sub_080070E8
	b _08027062
_0802705A:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_08027062:
	pop {r4,r5}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08026FE8

	THUMB_FUNC_START sub_08027068
sub_08027068: @ 0x08027068
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r0, #0
	bl sub_08034898
	bl sub_080720AC
	mov r0, #68
	mov r1, #128
	mov r2, #0
	bl sub_0807204C
	ldr r7, _08027110  @ =0x030000E8
	mov r0, #16
	bl sub_08034854
	str r0, [r7]
	ldr r4, _08027114  @ =0x030000EC
	mov r0, #4
	bl sub_08034854
	str r0, [r4]
	ldr r4, _08027118  @ =0x030000F0
	mov r0, #4
	bl sub_08034854
	str r0, [r4]
	ldr r5, _0802711C  @ =0x030000F4
	mov r0, #44
	bl sub_08034854
	str r0, [r5]
	ldr r4, _08027120  @ =0x030000F8
	mov r0, #24
	bl sub_08034854
	str r0, [r4]
	ldr r0, [r5]
	mov r1, #0
	strh r1, [r0, #40]
	ldr r0, _08027124  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08027128  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r0, _0802712C  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r0, _08027130  @ =gUnknown_0300192C
	strh r1, [r0]
	ldr r0, _08027134  @ =gUnknown_030009DC
	ldr r6, [r0]
	ldr r0, _08027138  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #10
	bl __modsi3
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r2, r0, #0
	mov r0, #1
	and r4, r4, r0
	cmp r4, #0
	beq _08027142
	and r6, r6, r0
	cmp r6, #0
	beq _08027142
	cmp r2, #7
	beq _08027108
	cmp r5, #7
	bne _0802713C
_08027108:
	ldr r1, [r7]
	mov r0, #5
	b _08027148
	.byte 0x00
	.byte 0x00
_08027110:
	.4byte 0x030000E8
_08027114:
	.4byte 0x030000EC
_08027118:
	.4byte 0x030000F0
_0802711C:
	.4byte 0x030000F4
_08027120:
	.4byte 0x030000F8
_08027124:
	.4byte gUnknown_030012A0
_08027128:
	.4byte gUnknown_03001710
_0802712C:
	.4byte gUnknown_03001930
_08027130:
	.4byte gUnknown_0300192C
_08027134:
	.4byte gUnknown_030009DC
_08027138:
	.4byte gUnknown_03000B54
_0802713C:
	ldr r1, [r7]
	mov r0, #4
	b _08027148
_08027142:
	ldr r0, _08027168  @ =0x030000E8
	ldr r1, [r0]
	mov r0, #2
_08027148:
	strb r0, [r1, #12]
	add r0, sp, #16
	mov r1, #0
	mov r3, #3
	strb r3, [r0]
	strb r3, [r0, #1]
	add r6, r0, #0
	cmp r5, #0
	bne _0802717C
	cmp r2, #1
	beq _080271C6
	cmp r2, #3
	bne _0802716C
	mov r0, #2
	b _080272AE
	.byte 0x00
	.byte 0x00
_08027168:
	.4byte 0x030000E8
_0802716C:
	cmp r2, #5
	bne _08027174
	mov r0, #1
	b _080271FA
_08027174:
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	b _080272D6
_0802717C:
	cmp r5, #1
	bne _080271A0
	cmp r2, #1
	bne _0802718A
	strb r1, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802718A:
	cmp r2, #3
	bne _08027192
	mov r0, #2
	b _080272F4
_08027192:
	cmp r2, #5
	beq _080271C6
	cmp r2, #7
	bne _080271F2
	strb r3, [r6]
	strb r3, [r6, #1]
	b _08027322
_080271A0:
	cmp r5, #2
	bne _080271CC
	cmp r2, #1
	beq _080271D4
	cmp r2, #3
	bne _080271B0
	strb r2, [r6]
	b _08027320
_080271B0:
	cmp r2, #5
	bne _080271B8
	mov r0, #1
	b _080271FA
_080271B8:
	cmp r2, #7
	bne _080271C0
	strb r1, [r6]
	b _08027320
_080271C0:
	cmp r2, #9
	beq _080271C6
	b _08027322
_080271C6:
	strb r5, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271CC:
	cmp r5, #3
	bne _08027200
	cmp r2, #1
	bne _080271DA
_080271D4:
	strb r1, [r6]
	strb r5, [r6, #1]
	b _08027322
_080271DA:
	cmp r2, #3
	bne _080271E2
	strb r2, [r6]
	b _08027302
_080271E2:
	cmp r2, #5
	bne _080271EA
	mov r0, #1
	b _080271FA
_080271EA:
	cmp r2, #7
	bne _080271F2
	strb r1, [r6]
	b _08027302
_080271F2:
	cmp r2, #9
	beq _080271F8
	b _08027322
_080271F8:
	mov r0, #2
_080271FA:
	strb r0, [r6]
	strb r5, [r6, #1]
	b _08027322
_08027200:
	cmp r5, #4
	bne _0802722A
	cmp r2, #1
	bne _0802720C
	strb r2, [r6]
	b _08027320
_0802720C:
	cmp r2, #3
	bne _08027214
	strb r2, [r6]
	b _080272D6
_08027214:
	cmp r2, #5
	bne _0802721A
	b _0802731C
_0802721A:
	cmp r2, #7
	bne _08027222
	strb r1, [r6]
	b _080272D6
_08027222:
	cmp r2, #9
	bne _08027322
	strb r3, [r6]
	b _08027320
_0802722A:
	cmp r5, #5
	bne _08027254
	cmp r2, #1
	beq _08027236
	cmp r2, #3
	bne _0802723C
_08027236:
	strb r2, [r6]
	strb r2, [r6, #1]
	b _08027322
_0802723C:
	cmp r2, #5
	bne _08027244
	mov r0, #2
	b _08027300
_08027244:
	cmp r2, #7
	bne _0802724E
	strb r1, [r6]
	strb r3, [r6, #1]
	b _08027322
_0802724E:
	cmp r2, #9
	bne _08027322
	b _080272FE
_08027254:
	cmp r5, #6
	bne _08027282
	cmp r2, #1
	bne _08027260
	strb r2, [r6]
	b _080272D6
_08027260:
	cmp r2, #3
	bne _08027268
	strb r1, [r6]
	b _08027320
_08027268:
	cmp r2, #5
	bne _08027270
	mov r0, #2
	b _080272AE
_08027270:
	cmp r2, #7
	bne _0802727A
	mov r1, #0
	mov r0, #1
	b _0802731E
_0802727A:
	cmp r2, #9
	bne _08027322
	mov r0, #3
	b _080272D4
_08027282:
	cmp r5, #7
	bne _080272B4
	cmp r2, #1
	bne _08027290
	strb r2, [r6]
	strb r3, [r6, #1]
	b _08027322
_08027290:
	cmp r2, #3
	bne _08027298
	strb r1, [r6]
	b _08027302
_08027298:
	cmp r2, #5
	bne _080272A0
	mov r0, #2
	b _0802730E
_080272A0:
	cmp r2, #7
	bne _080272A8
	mov r0, #1
	b _080272AE
_080272A8:
	cmp r2, #9
	bne _08027322
	mov r0, #3
_080272AE:
	strb r0, [r6]
	strb r0, [r6, #1]
	b _08027322
_080272B4:
	cmp r5, #8
	bne _080272E2
	cmp r2, #1
	beq _0802731C
	cmp r2, #3
	bne _080272C4
	mov r0, #0
	b _080272D4
_080272C4:
	cmp r2, #5
	bne _080272CE
	mov r1, #0
	mov r0, #3
	b _0802731E
_080272CE:
	cmp r2, #7
	bne _080272DC
	mov r0, #1
_080272D4:
	strb r0, [r6]
_080272D6:
	mov r0, #2
	strb r0, [r6, #1]
	b _08027322
_080272DC:
	cmp r2, #9
	bne _08027322
	b _0802730C
_080272E2:
	cmp r5, #9
	bne _08027322
	cmp r2, #1
	bne _080272EE
	mov r0, #2
	b _080272F4
_080272EE:
	cmp r2, #3
	bne _080272FA
	mov r0, #0
_080272F4:
	strb r0, [r6]
	strb r2, [r6, #1]
	b _08027322
_080272FA:
	cmp r2, #5
	bne _08027308
_080272FE:
	mov r0, #3
_08027300:
	strb r0, [r6]
_08027302:
	mov r0, #1
	strb r0, [r6, #1]
	b _08027322
_08027308:
	cmp r2, #7
	bne _08027316
_0802730C:
	mov r0, #1
_0802730E:
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	b _08027322
_08027316:
	cmp r2, #9
	bne _08027322
	mov r1, #0
_0802731C:
	mov r0, #2
_0802731E:
	strb r0, [r6]
_08027320:
	strb r1, [r6, #1]
_08027322:
	ldrb r5, [r6]
	cmp r5, #1
	beq _08027368
	cmp r5, #1
	bgt _08027338
	cmp r5, #0
	beq _08027348
	ldr r5, _08027334  @ =0x030000F4
	b _080273FC
_08027334:
	.4byte 0x030000F4
_08027338:
	cmp r5, #2
	beq _08027390
	cmp r5, #3
	beq _080273CC
	ldr r5, _08027344  @ =0x030000F4
	b _080273FC
_08027344:
	.4byte 0x030000F4
_08027348:
	ldr r2, _08027364  @ =0x030000F4
	ldr r1, [r2]
	mov r3, #0
	mov r0, #184
	strh r0, [r1]
	strb r3, [r1, #4]
	ldr r1, [r2]
	mov r0, #5
	strb r0, [r1, #5]
	ldr r1, [r2]
	mov r0, #1
	strb r0, [r1, #6]
	add r5, r2, #0
	b _080273FC
_08027364:
	.4byte 0x030000F4
_08027368:
	ldr r1, _0802738C  @ =0x030000F4
	ldr r2, [r1]
	mov r0, #160
	lsl r0, r0, #1
	strh r0, [r2]
	mov r0, #4
	strb r0, [r2, #4]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #5]
	ldr r0, [r1]
	mov r2, #2
	strb r2, [r0, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r5, [r0, #8]
	b _080273EA
_0802738C:
	.4byte 0x030000F4
_08027390:
	ldr r1, _080273C8  @ =0x030000F4
	ldr r2, [r1]
	mov r4, #0
	mov r0, #205
	lsl r0, r0, #1
	strh r0, [r2]
	mov r3, #1
	strb r3, [r2, #4]
	ldr r2, [r1]
	mov r0, #5
	strb r0, [r2, #5]
	ldr r0, [r1]
	strb r5, [r0, #6]
	ldr r2, [r1]
	mov r0, #3
	strb r0, [r2, #7]
	ldr r0, [r1]
	strb r3, [r0, #8]
	ldr r0, [r1]
	strb r4, [r0, #9]
	ldr r0, [r1]
	strb r5, [r0, #10]
	ldr r0, [r1]
	strb r5, [r0, #11]
	ldr r0, [r1]
	strb r5, [r0, #12]
	b _080273FA
	.byte 0x00
	.byte 0x00
_080273C8:
	.4byte 0x030000F4
_080273CC:
	ldr r1, _0802740C  @ =0x030000F4
	ldr r3, [r1]
	mov r0, #232
	strh r0, [r3]
	mov r2, #2
	strb r2, [r3, #4]
	ldr r0, [r1]
	strb r5, [r0, #5]
	ldr r3, [r1]
	mov r0, #4
	strb r0, [r3, #6]
	ldr r0, [r1]
	strb r2, [r0, #7]
	ldr r0, [r1]
	strb r2, [r0, #8]
_080273EA:
	ldr r0, [r1]
	strb r2, [r0, #9]
	ldr r0, [r1]
	strb r2, [r0, #10]
	ldr r0, [r1]
	strb r2, [r0, #11]
	ldr r0, [r1]
	strb r2, [r0, #12]
_080273FA:
	add r5, r1, #0
_080273FC:
	ldrb r4, [r6, #1]
	cmp r4, #1
	beq _0802744A
	cmp r4, #1
	bgt _08027410
	cmp r4, #0
	beq _0802741A
	b _080274D4
_0802740C:
	.4byte 0x030000F4
_08027410:
	cmp r4, #2
	beq _08027478
	cmp r4, #3
	beq _080274A6
	b _080274D4
_0802741A:
	ldr r2, [r5]
	mov r3, #0
	mov r0, #138
	strh r0, [r2, #2]
	mov r1, #3
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r1, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r2, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r3, [r0, #19]
	ldr r0, [r5]
	strb r3, [r0, #20]
	ldr r0, [r5]
	strb r3, [r0, #21]
	b _080274D4
_0802744A:
	ldr r2, [r5]
	mov r1, #0
	mov r0, #80
	strh r0, [r2, #2]
	strb r1, [r2, #13]
	ldr r0, [r5]
	mov r2, #2
	strb r2, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r1, [r0, #17]
	ldr r0, [r5]
	strb r1, [r0, #18]
	ldr r0, [r5]
	strb r1, [r0, #19]
	ldr r0, [r5]
	strb r1, [r0, #20]
	ldr r0, [r5]
	strb r1, [r0, #21]
	b _080274D4
_08027478:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #120
	strh r0, [r1, #2]
	strb r4, [r1, #13]
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #14]
	ldr r0, [r5]
	strb r2, [r0, #15]
	ldr r0, [r5]
	strb r1, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r4, [r0, #18]
	ldr r0, [r5]
	strb r4, [r0, #19]
	ldr r0, [r5]
	strb r4, [r0, #20]
	ldr r0, [r5]
	strb r4, [r0, #21]
	b _080274D4
_080274A6:
	ldr r1, [r5]
	mov r2, #0
	mov r0, #172
	strh r0, [r1, #2]
	strb r2, [r1, #13]
	ldr r0, [r5]
	mov r3, #5
	strb r3, [r0, #14]
	ldr r1, [r5]
	mov r0, #2
	strb r0, [r1, #15]
	ldr r0, [r5]
	strb r2, [r0, #16]
	ldr r0, [r5]
	strb r4, [r0, #17]
	ldr r0, [r5]
	strb r3, [r0, #18]
	ldr r0, [r5]
	strb r2, [r0, #19]
	ldr r0, [r5]
	strb r2, [r0, #20]
	ldr r0, [r5]
	strb r2, [r0, #21]
_080274D4:
	ldr r0, [r5]
	mov r2, #0
	strb r2, [r0, #22]
	ldr r1, _08027508  @ =0x030000E8
	ldr r0, [r1]
	strb r2, [r0, #1]
	ldr r2, [r1]
	mov r0, #1
	strb r0, [r2, #2]
	ldr r1, [r1]
	mov r0, #2
	strb r0, [r1, #3]
	bl sub_0804A244
	mov r1, #6
	bl __modsi3
	cmp r0, #5
	bls _080274FC
	b _08027638
_080274FC:
	lsl r0, r0, #2
	ldr r1, _0802750C  @ =0x08027510
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_08027508:
	.4byte 0x030000E8
_0802750C:
	.4byte _08027510
_08027510:
	.4byte _08027528
	.4byte _08027558
	.4byte _08027590
	.4byte _080275C8
	.4byte _08027600
	.4byte _08027638
_08027528:
	ldr r4, _08027550  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027554  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	b _0802765E
_08027550:
	.4byte 0x030000E8
_08027554:
	.4byte 0x030000F8
_08027558:
	ldr r2, _08027588  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _0802758C  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_08027588:
	.4byte 0x030000E8
_0802758C:
	.4byte 0x030000F8
_08027590:
	ldr r3, _080275C0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080275C4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_080275C0:
	.4byte 0x030000E8
_080275C4:
	.4byte 0x030000F8
_080275C8:
	ldr r2, _080275F8  @ =0x030000E8
	ldr r0, [r2]
	ldrb r0, [r0, #1]
	ldr r3, _080275FC  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r2]
	ldrb r0, [r2, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	b _08027664
	.byte 0x00
	.byte 0x00
_080275F8:
	.4byte 0x030000E8
_080275FC:
	.4byte 0x030000F8
_08027600:
	ldr r4, _08027630  @ =0x030000E8
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	ldr r3, _08027634  @ =0x030000F8
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
	strb r1, [r0]
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r2, #12]
	strb r1, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	b _08027664
	.byte 0x00
	.byte 0x00
_08027630:
	.4byte 0x030000E8
_08027634:
	.4byte 0x030000F8
_08027638:
	ldr r3, _080278B0  @ =0x030000E8
	ldr r4, [r3]
	ldrb r0, [r4, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrb r1, [r4, #12]
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #1
	strb r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
_0802765E:
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #3
_08027664:
	strb r1, [r0]
	ldr r0, _080278B8  @ =gUnknown_088637E8
	str r0, [sp]
	ldr r4, _080278BC  @ =gUnknown_0886022C
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #12]
	mov r0, sp
	mov r1, #2
	bl sub_08032F24
	mov r1, #128
	lsl r1, r1, #19
	strh r0, [r1]
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _080278C0  @ =0x030000E4
	str r0, [r1]
	add r5, sp, #20
	mov r0, #160
	strh r0, [r5]
	ldr r1, _080278C4  @ =0x040000D4
	str r5, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _080278C8  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	mov r8, r4
	mov r1, #0
	mov r6, r8
	add r6, r6, #64
_080276B2:
	lsl r2, r1, #2
	mov r0, r8
	add r0, r0, #12
	add r0, r0, r2
	ldr r0, [r0]
	add r4, r1, #1
	cmp r0, #0
	ble _080276E2
	mov r0, #0
	strh r0, [r5]
	add r0, r6, r2
	ldr r1, [r0]
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r2, [r0]
	sub r2, r2, r1
	lsl r2, r2, #10
	lsr r2, r2, #11
	mov r0, #128
	lsl r0, r0, #17
	orr r2, r2, r0
	add r0, r5, #0
	bl CpuSet
_080276E2:
	lsl r0, r4, #24
	lsr r1, r0, #24
	cmp r1, #1
	bls _080276B2
	ldr r5, _080278CC  @ =0x030000F4
	ldr r1, [r5]
	ldr r4, _080278D0  @ =gUnknown_03001930
	ldrh r0, [r4]
	str r0, [r1, #28]
	ldr r0, _080278D4  @ =gUnknown_082EBE60
	ldr r6, _080278D8  @ =gUnknown_0300192C
	mov r3, #128
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r1, [r5]
	str r0, [r1, #32]
	ldr r0, _080278DC  @ =gUnknown_082ECB40
	mov r3, #160
	lsl r3, r3, #2
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0800F0C4
	ldr r0, [r5]
	mov r4, #0
	strb r4, [r0, #23]
	ldr r3, _080278E0  @ =0x03000C10
	ldr r1, _080278E4  @ =gUnknown_080798E8
	ldr r2, [r5]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278E8  @ =0x03000C08
	ldr r1, _080278EC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _080278B0  @ =0x030000E8
	ldr r1, [r3]
	mov r0, #4
	strb r0, [r1]
	ldr r1, [r5]
	mov r0, #20
	strb r0, [r1, #24]
	ldr r1, [r5]
	mov r0, #84
	strb r0, [r1, #25]
	ldr r1, _080278F0  @ =0x030000EC
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r4, [r0, #1]
	ldr r2, [r1]
	mov r0, #2
	strb r0, [r2, #2]
	ldr r0, [r1]
	mov r1, #5
	mov r9, r1
	mov r1, r9
	strb r1, [r0, #3]
	ldr r0, _080278F4  @ =0x03000C04
	mov r1, #0
	mov r8, r1
	strh r4, [r0]
	ldr r1, _080278F8  @ =0x03000C0C
	mov r0, #128
	strh r0, [r1]
	ldr r0, _080278FC  @ =0x030000F0
	mov r10, r0
	ldr r0, [r0]
	mov r1, r8
	strb r1, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r2, _080278B4  @ =0x030000F8
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #16
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r6, #69
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r5, #1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #8
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #88
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #2]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #6
	strb r1, [r0, #6]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #160
	strb r4, [r0, #1]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #2]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r4, [r0, #3]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r6, [r0, #4]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	strb r5, [r0, #5]
	ldr r0, [r3]
	ldrb r0, [r0, #3]
	ldr r1, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r1, #7
	strb r1, [r0, #6]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #9]
	ldr r0, [r3]
	mov r1, r9
	strb r1, [r0, #11]
	ldr r0, [r3]
	mov r1, r8
	strb r1, [r0, #10]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r5, [r0, #6]
	ldr r0, [r3]
	strb r1, [r0, #7]
	ldr r0, [r3]
	strb r5, [r0, #8]
	mov r0, r10
	ldr r1, [r0]
	mov r0, #3
	strb r0, [r1, #2]
	mov r0, #10
	mov r1, #3
	bl sub_08032788
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080278B0:
	.4byte 0x030000E8
_080278B4:
	.4byte 0x030000F8
_080278B8:
	.4byte gUnknown_088637E8
_080278BC:
	.4byte gUnknown_0886022C
_080278C0:
	.4byte 0x030000E4
_080278C4:
	.4byte 0x040000D4
_080278C8:
	.4byte 0x81000100
_080278CC:
	.4byte 0x030000F4
_080278D0:
	.4byte gUnknown_03001930
_080278D4:
	.4byte gUnknown_082EBE60
_080278D8:
	.4byte gUnknown_0300192C
_080278DC:
	.4byte gUnknown_082ECB40
_080278E0:
	.4byte 0x03000C10
_080278E4:
	.4byte gUnknown_080798E8
_080278E8:
	.4byte 0x03000C08
_080278EC:
	.4byte gUnknown_08079938
_080278F0:
	.4byte 0x030000EC
_080278F4:
	.4byte 0x03000C04
_080278F8:
	.4byte 0x03000C0C
_080278FC:
	.4byte 0x030000F0
	THUMB_FUNC_END sub_08027068

	THUMB_FUNC_START sub_08027900
sub_08027900: @ 0x08027900
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r0, _0802797C  @ =gUnknown_03000BBC
	ldrb r4, [r0]
	bl sub_08029C20
	bl sub_080088C4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r5, _08027980  @ =0x030000F4
	ldr r1, [r5]
	add r1, r1, #42
	ldr r2, _08027984  @ =0x01000001
	mov r0, sp
	bl CpuSet
	ldr r1, [r5]
	lsl r4, r4, #24
	asr r4, r4, #24
	ldr r0, _08027988  @ =0x0000199A
	mul r0, r4, r0
	asr r3, r0, #16
	add r1, r1, #43
	strb r3, [r1]
	ldr r2, [r5]
	add r0, r2, #0
	add r0, r0, #43
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r4, r4, r0
	add r2, r2, #42
	strb r4, [r2]
	ldr r0, [r5]
	add r1, r0, #0
	add r1, r1, #42
	ldrb r0, [r1]
	cmp r0, #9
	bls _08027958
	mov r0, #9
	strb r0, [r1]
_08027958:
	ldr r0, [r5]
	add r0, r0, #43
	strb r3, [r0]
	ldr r1, [r5]
	ldrh r0, [r1, #40]
	add r0, r0, #1
	strh r0, [r1, #40]
	ldr r0, _0802798C  @ =0x03000C10
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080331FC
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802797C:
	.4byte gUnknown_03000BBC
_08027980:
	.4byte 0x030000F4
_08027984:
	.4byte 0x01000001
_08027988:
	.4byte 0x0000199A
_0802798C:
	.4byte 0x03000C10
	THUMB_FUNC_END sub_08027900

	THUMB_FUNC_START sub_08027990
sub_08027990: @ 0x08027990
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #32
	add r5, sp, #8
	mov r1, #0
	strh r1, [r5]
	ldr r0, _08027B5C  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r2, sp
	add r2, r2, #10
	str r2, [sp, #24]
	strh r0, [r2]
	ldr r0, _08027B60  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r2, r2, #2
	str r2, [sp, #28]
	strh r0, [r2]
	mov r0, #160
	str r0, [sp, #4]
	ldr r6, _08027B64  @ =0x040000D4
	add r0, sp, #4
	str r0, [r6]
	ldr r7, _08027B68  @ =gOamData
	str r7, [r6, #4]
	ldr r0, _08027B6C  @ =0x85000100
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	mov r0, #8
	str r0, [sp, #16]
	str r1, [sp, #20]
	ldr r0, _08027B70  @ =gUnknown_082EBE58
	str r0, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	add r0, sp, #16
	mov r8, r0
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _08027B7C  @ =0xFFFFFE00
	mov r10, r0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	add r1, sp, #20
	mov r12, r1
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r4, [r0]
	ldr r1, [r4, #28]
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	mov r0, #32
	str r0, [sp, #16]
	mov r0, #4
	str r0, [sp, #20]
	add r4, r4, #43
	ldrb r0, [r4]
	mov r1, r8
	mov r9, r12
	ldr r4, _08027B8C  @ =gUnknown_082ECB38
	cmp r0, #0
	beq _08027AB8
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r2, _08027B74  @ =0x84000002
	str r2, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r1, [r1]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r9
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #43
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp, #16]
	add r0, r0, #8
	str r0, [sp, #16]
_08027AB8:
	str r4, [r6]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r6, #4]
	ldr r1, _08027B74  @ =0x84000002
	str r1, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	mov r0, r8
	ldrh r1, [r0]
	ldr r0, _08027B78  @ =0x000001FF
	and r1, r1, r0
	ldrh r3, [r2, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r2, r12
	ldrb r1, [r2]
	strb r1, [r0]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #160
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r7
	ldr r0, _08027B80  @ =0x030000F4
	ldr r1, [r0]
	add r0, r1, #0
	add r0, r0, #42
	ldrb r0, [r0]
	lsl r0, r0, #1
	ldr r1, [r1, #32]
	add r1, r1, r0
	ldr r0, _08027B84  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _08027B88  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, _08027B90  @ =0x03000C08
	mov r1, r12
	str r1, [sp]
	ldr r4, [r0]
	add r0, r5, #0
	ldr r1, [sp, #24]
	ldr r2, [sp, #28]
	mov r3, r8
	bl _call_via_r4
	str r7, [r6]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r6, #4]
	ldr r0, _08027B94  @ =0x80000200
	str r0, [r6, #8]
	ldr r0, [r6, #8]
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
_08027B5C:
	.4byte gUnknown_03001930
_08027B60:
	.4byte gUnknown_0300192C
_08027B64:
	.4byte 0x040000D4
_08027B68:
	.4byte gOamData
_08027B6C:
	.4byte 0x85000100
_08027B70:
	.4byte gUnknown_082EBE58
_08027B74:
	.4byte 0x84000002
_08027B78:
	.4byte 0x000001FF
_08027B7C:
	.4byte 0xFFFFFE00
_08027B80:
	.4byte 0x030000F4
_08027B84:
	.4byte 0x000003FF
_08027B88:
	.4byte 0xFFFFFC00
_08027B8C:
	.4byte gUnknown_082ECB38
_08027B90:
	.4byte 0x03000C08
_08027B94:
	.4byte 0x80000200
	THUMB_FUNC_END sub_08027990

	THUMB_FUNC_START sub_08027B98
sub_08027B98: @ 0x08027B98
	bx lr
	THUMB_FUNC_END sub_08027B98

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027B9C
sub_08027B9C: @ 0x08027B9C
	push {r4,lr}
	ldr r2, _08027BD4  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027BCE
	mov r4, #0
	mov r0, #1
	strb r0, [r1, #23]
	ldr r3, _08027BD8  @ =0x03000C10
	ldr r1, _08027BDC  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027BE0  @ =0x03000C08
	ldr r1, _08027BE4  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027BCE:
	pop {r4}
	pop {r0}
	bx r0
_08027BD4:
	.4byte 0x030000F4
_08027BD8:
	.4byte 0x03000C10
_08027BDC:
	.4byte gUnknown_080798E8
_08027BE0:
	.4byte 0x03000C08
_08027BE4:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027B9C

	THUMB_FUNC_START sub_08027BE8
sub_08027BE8: @ 0x08027BE8
	push {r4,lr}
	ldr r2, _08027C20  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #60
	bne _08027C1A
	mov r4, #0
	mov r0, #2
	strb r0, [r1, #23]
	ldr r3, _08027C24  @ =0x03000C10
	ldr r1, _08027C28  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027C2C  @ =0x03000C08
	ldr r1, _08027C30  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027C1A:
	pop {r4}
	pop {r0}
	bx r0
_08027C20:
	.4byte 0x030000F4
_08027C24:
	.4byte 0x03000C10
_08027C28:
	.4byte gUnknown_080798E8
_08027C2C:
	.4byte 0x03000C08
_08027C30:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027BE8

	THUMB_FUNC_START sub_08027C34
sub_08027C34: @ 0x08027C34
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022340
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027C34

	THUMB_FUNC_START sub_08027C78
sub_08027C78: @ 0x08027C78
	push {lr}
	ldr r0, _08027CB8  @ =0x030000E8
	ldr r1, [r0]
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r2, _08027CBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #80
	bne _08027CB4
	mov r0, #3
	strb r0, [r1, #23]
	ldr r3, _08027CC0  @ =0x03000C10
	ldr r1, _08027CC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027CC8  @ =0x03000C08
	ldr r1, _08027CCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, #0
	strh r0, [r2, #40]
_08027CB4:
	pop {r0}
	bx r0
_08027CB8:
	.4byte 0x030000E8
_08027CBC:
	.4byte 0x030000F4
_08027CC0:
	.4byte 0x03000C10
_08027CC4:
	.4byte gUnknown_080798E8
_08027CC8:
	.4byte 0x03000C08
_08027CCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027C78

	THUMB_FUNC_START sub_08027CD0
sub_08027CD0: @ 0x08027CD0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08022890
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027CD0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D08
sub_08027D08: @ 0x08027D08
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D08

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08027D40
sub_08027D40: @ 0x08027D40
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027D40

	THUMB_FUNC_START sub_08027D84
sub_08027D84: @ 0x08027D84
	push {r4,lr}
	ldr r2, _08027DBC  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #52
	bne _08027DB6
	mov r4, #0
	mov r0, #6
	strb r0, [r1, #23]
	ldr r3, _08027DC0  @ =0x03000C10
	ldr r1, _08027DC4  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027DC8  @ =0x03000C08
	ldr r1, _08027DCC  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027DB6:
	pop {r4}
	pop {r0}
	bx r0
_08027DBC:
	.4byte 0x030000F4
_08027DC0:
	.4byte 0x03000C10
_08027DC4:
	.4byte gUnknown_080798E8
_08027DC8:
	.4byte 0x03000C08
_08027DCC:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027D84

	THUMB_FUNC_START sub_08027DD0
sub_08027DD0: @ 0x08027DD0
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DD0

	THUMB_FUNC_START sub_08027DE4
sub_08027DE4: @ 0x08027DE4
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DE4

	THUMB_FUNC_START sub_08027DF8
sub_08027DF8: @ 0x08027DF8
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027DF8

	THUMB_FUNC_START sub_08027E0C
sub_08027E0C: @ 0x08027E0C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E0C

	THUMB_FUNC_START sub_08027E20
sub_08027E20: @ 0x08027E20
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024404
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E20

	THUMB_FUNC_START sub_08027E34
sub_08027E34: @ 0x08027E34
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E34

	THUMB_FUNC_START sub_08027E48
sub_08027E48: @ 0x08027E48
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E48

	THUMB_FUNC_START sub_08027E5C
sub_08027E5C: @ 0x08027E5C
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024A04
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E5C

	THUMB_FUNC_START sub_08027E70
sub_08027E70: @ 0x08027E70
	push {r4,lr}
	sub sp, sp, #4
	ldr r4, [sp, #12]
	str r4, [sp]
	bl sub_08024E5C
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E70

	THUMB_FUNC_START sub_08027E84
sub_08027E84: @ 0x08027E84
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080251A0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027E84

	THUMB_FUNC_START sub_08027EC8
sub_08027EC8: @ 0x08027EC8
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027EC8

	THUMB_FUNC_START sub_08027F0C
sub_08027F0C: @ 0x08027F0C
	push {r4,lr}
	ldr r2, _08027F44  @ =0x030000F4
	ldr r1, [r2]
	ldrh r0, [r1, #40]
	cmp r0, #59
	bls _08027F3E
	mov r4, #0
	mov r0, #17
	strb r0, [r1, #23]
	ldr r3, _08027F48  @ =0x03000C10
	ldr r1, _08027F4C  @ =gUnknown_080798E8
	ldr r2, [r2]
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _08027F50  @ =0x03000C08
	ldr r1, _08027F54  @ =gUnknown_08079938
	ldrb r0, [r2, #23]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	strh r4, [r2, #40]
_08027F3E:
	pop {r4}
	pop {r0}
	bx r0
_08027F44:
	.4byte 0x030000F4
_08027F48:
	.4byte 0x03000C10
_08027F4C:
	.4byte gUnknown_080798E8
_08027F50:
	.4byte 0x03000C08
_08027F54:
	.4byte gUnknown_08079938
	THUMB_FUNC_END sub_08027F0C

	THUMB_FUNC_START sub_08027F58
sub_08027F58: @ 0x08027F58
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F58

	THUMB_FUNC_START sub_08027F9C
sub_08027F9C: @ 0x08027F9C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_08023C08
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027F9C

	THUMB_FUNC_START sub_08027FE0
sub_08027FE0: @ 0x08027FE0
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08027FE0

	THUMB_FUNC_START sub_08028024
sub_08028024: @ 0x08028024
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r8, r2
	mov r9, r3
	ldr r4, [sp, #28]
	str r4, [sp]
	bl sub_080240D0
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802200C
	str r4, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, r8
	mov r3, r9
	bl sub_0802363C
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028024

	THUMB_FUNC_START sub_08028068
sub_08028068: @ 0x08028068
	push {r4-r7,lr}
	lsl r2, r1, #1
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r1, _080280AC  @ =gUnknown_086593A0
	add r2, r2, r1
	str r2, [r0]
	mov r1, #0
	strh r1, [r0, #10]
	ldr r1, [r2, #12]
	ldrb r1, [r1, #1]
	strh r1, [r0, #8]
	ldr r5, _080280B0  @ =gUnknown_03001930
	ldrh r3, [r5]
	strh r3, [r0, #6]
	ldr r6, _080280B4  @ =gUnknown_0300192C
	ldrh r4, [r6]
	strh r4, [r0, #4]
	ldrb r0, [r0, #13]
	cmp r0, #0
	beq _080280B8
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	add r7, r0, #0
	mul r7, r1, r7
	add r0, r7, #0
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
	add r2, r0, #0
	mul r2, r1, r2
	add r0, r2, #0
	b _080280C0
	.byte 0x00
	.byte 0x00
_080280AC:
	.4byte gUnknown_086593A0
_080280B0:
	.4byte gUnknown_03001930
_080280B4:
	.4byte gUnknown_0300192C
_080280B8:
	ldrh r0, [r2, #4]
	add r0, r3, r0
	strh r0, [r5]
	ldrh r0, [r2, #2]
_080280C0:
	add r0, r4, r0
	strh r0, [r6]
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08028068

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080280CC
sub_080280CC: @ 0x080280CC
	push {r4,lr}
	add r3, r0, #0
	add r2, r1, #0
	ldrb r0, [r3, #13]
	cmp r0, #0
	bne _08028120
	ldrh r0, [r3, #8]
	sub r0, r0, #1
	strh r0, [r3, #8]
	lsl r0, r0, #16
	cmp r0, #0
	bgt _08028120
	ldr r4, [r3]
	cmp r2, #0
	bge _080280EC
	ldrh r2, [r4]
_080280EC:
	mov r0, #10
	ldrsh r1, [r3, r0]
	sub r0, r2, #1
	cmp r1, r0
	blt _08028108
	ldrh r1, [r3, #14]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802810C
	mov r0, #2
	orr r0, r0, r1
	strh r0, [r3, #14]
	b _0802810E
_08028108:
	ldrh r0, [r3, #10]
	add r0, r0, #1
_0802810C:
	strh r0, [r3, #10]
_0802810E:
	mov r0, #10
	ldrsh r1, [r3, r0]
	ldr r2, [r4, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #1]
	strh r0, [r3, #8]
_08028120:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080280CC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08028128
sub_08028128: @ 0x08028128
	push {r4-r6,lr}
	add r5, r0, #0
	ldrb r0, [r5, #13]
	cmp r0, #0
	bne _08028174
	ldr r4, _0802816C  @ =0x040000D4
	ldr r2, [r5]
	mov r0, #10
	ldrsh r1, [r5, r0]
	ldr r3, [r2, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r3
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5, #4]
	ldr r1, _08028170  @ =0x06010000
	add r0, r0, r1
	str r0, [r4, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	b _080281BA
	.byte 0x00
	.byte 0x00
_0802816C:
	.4byte 0x040000D4
_08028170:
	.4byte 0x06010000
_08028174:
	mov r4, #0
	ldr r2, [r5]
	ldrh r1, [r2]
	cmp r4, r1
	bge _080281BA
	ldr r3, _080281C0  @ =0x040000D4
	mov r6, #0
_08028182:
	ldr r0, [r2, #12]
	add r0, r6, r0
	ldrb r1, [r0]
	ldrh r0, [r2, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r2, #20]
	add r0, r0, r1
	str r0, [r3]
	ldrh r0, [r2, #2]
	mul r0, r4, r0
	ldr r1, _080281C4  @ =0x06010000
	add r0, r0, r1
	ldrh r1, [r5, #4]
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r2, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	add r6, r6, #36
	add r4, r4, #1
	ldrh r0, [r2]
	cmp r4, r0
	blt _08028182
_080281BA:
	pop {r4-r6}
	pop {r0}
	bx r0
_080281C0:
	.4byte 0x040000D4
_080281C4:
	.4byte 0x06010000
	THUMB_FUNC_END sub_08028128

	THUMB_FUNC_START sub_080281C8
sub_080281C8: @ 0x080281C8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r4, r0, #0
	add r5, r1, #0
	mov r8, r2
	mov r12, r3
	ldr r0, [sp, #32]
	mov r10, r0
	ldrh r0, [r3]
	lsl r0, r0, #3
	ldr r1, _08028290  @ =gOamData
	add r3, r0, r1
	ldrb r0, [r4, #13]
	cmp r0, #0
	beq _080282AC
	mov r6, #0
	ldr r1, [r4]
	ldrh r2, [r1]
	cmp r6, r2
	blt _080281F8
	b _08028324
_080281F8:
	ldr r7, _08028294  @ =0x040000D4
	mov r0, #13
	neg r0, r0
	mov r9, r0
_08028200:
	ldr r0, [r1, #16]
	str r0, [r7]
	str r3, [r7, #4]
	ldr r0, _08028298  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802829C  @ =0x000001FF
	add r0, r2, #0
	add r1, r5, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _080282A0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	add r1, r6, #0
	mul r1, r0, r1
	ldrh r0, [r4, #6]
	add r1, r1, r0
	ldr r2, _080282A4  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _080282A8  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _08028252
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_08028252:
	mov r0, r10
	cmp r0, #0
	beq _08028264
	ldrb r0, [r3, #1]
	mov r1, r9
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028264:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, r9
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	add r6, r6, #1
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	add r5, r5, r0
	add r3, r3, #8
	mov r2, r12
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r0, [r1]
	cmp r6, r0
	blt _08028200
	b _08028324
_08028290:
	.4byte gOamData
_08028294:
	.4byte 0x040000D4
_08028298:
	.4byte 0x84000002
_0802829C:
	.4byte 0x000001FF
_080282A0:
	.4byte 0xFFFFFE00
_080282A4:
	.4byte 0x000003FF
_080282A8:
	.4byte 0xFFFFFC00
_080282AC:
	ldr r1, _08028334  @ =0x040000D4
	ldr r0, [r4]
	ldr r0, [r0, #16]
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08028338  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r1, r8
	strb r1, [r3]
	ldr r2, _0802833C  @ =0x000001FF
	add r0, r2, #0
	and r5, r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _08028340  @ =0xFFFFFE00
	and r0, r0, r1
	orr r0, r0, r5
	strh r0, [r3, #2]
	ldrh r0, [r4, #6]
	ldr r1, _08028344  @ =0x000003FF
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08028348  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r0, [r4, #12]
	cmp r0, #0
	beq _080282F4
	sub r0, r0, #1
	lsl r0, r0, #4
	ldrb r2, [r3, #5]
	mov r1, #15
	and r1, r1, r2
	orr r1, r1, r0
	strb r1, [r3, #5]
_080282F4:
	mov r0, r10
	cmp r0, #0
	beq _08028308
	ldrb r0, [r3, #1]
	mov r1, #13
	neg r1, r1
	and r1, r1, r0
	mov r0, #4
	orr r1, r1, r0
	strb r1, [r3, #1]
_08028308:
	mov r0, #3
	ldrb r1, [r4, #16]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r3, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r1, r12
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
_08028324:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028334:
	.4byte 0x040000D4
_08028338:
	.4byte 0x84000002
_0802833C:
	.4byte 0x000001FF
_08028340:
	.4byte 0xFFFFFE00
_08028344:
	.4byte 0x000003FF
_08028348:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_080281C8

	THUMB_FUNC_START sub_0802834C
sub_0802834C: @ 0x0802834C
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #24
	add r7, r0, #0
	mov r8, r1
	mov r6, #0
	ldrb r0, [r7]
	cmp r6, r0
	bge _080283B0
	add r4, r7, #4
_08028364:
	ldr r1, [r4]
	mov r5, #0
	cmp r6, r8
	bne _0802836E
	mov r5, #1
_0802836E:
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080283A6
	str r2, [sp, #8]
	str r3, [sp, #12]
	cmp r5, #0
	bne _08028384
	add r1, r1, #25
_08028384:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, sp, #8
	mov r3, #5
	bl sub_080064D4
_080283A6:
	add r4, r4, #20
	add r6, r6, #1
	ldrb r1, [r7]
	cmp r6, r1
	blt _08028364
_080283B0:
	ldrb r2, [r7, #1]
	mov r9, r2
	mov r4, r8
	lsl r0, r4, #2
	add r0, r0, r8
	lsl r0, r0, #2
	add r1, r7, r0
	mov r2, #20
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _080283CA
	add r4, r0, #0
	mov r9, r4
_080283CA:
	mov r6, #0
	cmp r6, r9
	bge _08028416
	add r5, sp, #16
	add r4, r7, #0
	add r4, r4, #64
	mov r6, r9
_080283D8:
	ldr r1, [r4]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802840C
	str r2, [sp, #16]
	str r3, [r5, #4]
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r2, #132
	lsl r2, r2, #1
	add r0, r0, r2
	add r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08028470  @ =0x030000FC
	ldr r2, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_0802840C:
	add r4, r4, #20
	sub r6, r6, #1
	cmp r6, #0
	bne _080283D8
	mov r6, r9
_08028416:
	ldrb r1, [r7, #1]
	cmp r6, r1
	bge _0802845C
	lsl r0, r6, #2
	add r0, r0, r6
	lsl r0, r0, #2
	add r0, r0, #64
	add r5, r0, r7
_08028426:
	ldr r0, _0802846C  @ =gUnknown_08078210
	ldr r1, [r0]
	ldr r0, [r5]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r2, [r1]
	ldrb r0, [r5, #4]
	ldrb r1, [r5, #5]
	ldr r3, _08028470  @ =0x030000FC
	ldr r3, [r3]
	mov r4, #146
	lsl r4, r4, #4
	add r3, r3, r4
	mov r4, #5
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl sub_080065B4
	add r5, r5, #20
	add r6, r6, #1
	ldrb r0, [r7, #1]
	cmp r6, r0
	blt _08028426
_0802845C:
	add sp, sp, #24
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802846C:
	.4byte gUnknown_08078210
_08028470:
	.4byte 0x030000FC
	THUMB_FUNC_END sub_0802834C

	THUMB_FUNC_START sub_08028474
sub_08028474: @ 0x08028474
	push {r4,lr}
	ldr r2, _08028494  @ =0x030000FC
	ldr r3, [r2]
	mov r4, #137
	lsl r4, r4, #5
	add r1, r3, r4
	str r0, [r1]
	ldr r1, _08028498  @ =0x00001128
	add r0, r3, r1
	ldr r1, [r0]
	cmp r1, #0
	bne _0802849C
	add r4, r4, #4
	add r0, r3, r4
	b _080284A4
	.byte 0x00
	.byte 0x00
_08028494:
	.4byte 0x030000FC
_08028498:
	.4byte 0x00001128
_0802849C:
	ldr r4, _080284D4  @ =0x00001124
	add r0, r3, r4
	add r1, r1, #188
	ldr r1, [r1]
_080284A4:
	str r1, [r0]
	ldr r2, [r2]
	ldr r0, _080284D8  @ =0x00001128
	add r3, r2, r0
	mov r1, #137
	lsl r1, r1, #5
	add r0, r2, r1
	ldr r1, [r0]
	mov r0, #204
	mul r0, r1, r0
	ldr r1, _080284DC  @ =gUnknown_080799F0
	add r0, r0, r1
	str r0, [r3]
	ldr r4, _080284E0  @ =0x0000112C
	add r0, r2, r4
	mov r1, #1
	strh r1, [r0]
	ldr r0, _080284E4  @ =0x0000112E
	add r2, r2, r0
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080284D4:
	.4byte 0x00001124
_080284D8:
	.4byte 0x00001128
_080284DC:
	.4byte gUnknown_080799F0
_080284E0:
	.4byte 0x0000112C
_080284E4:
	.4byte 0x0000112E
	THUMB_FUNC_END sub_08028474

	THUMB_FUNC_START sub_080284E8
sub_080284E8: @ 0x080284E8
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r5, #0
	ldr r0, _08028500  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _08028504
	sub r5, r5, #1
	b _0802850E
	.byte 0x00
	.byte 0x00
_08028500:
	.4byte gUnknown_03001708
_08028504:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802850E
	mov r5, #1
_0802850E:
	ldr r0, _08028540  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _08028522
	bl sub_080720AC
	bl sub_08071C24
_08028522:
	cmp r5, #0
	beq _080285EC
	ldr r1, _08028544  @ =0x030000FC
	ldr r3, [r1]
	ldr r2, _08028548  @ =0x00001124
	add r0, r3, r2
	ldr r0, [r0]
	cmp r0, #1
	beq _0802855C
	cmp r0, #1
	bgt _0802854C
	cmp r0, #0
	beq _08028552
	b _08028576
	.byte 0x00
	.byte 0x00
_08028540:
	.4byte gUnknown_030012E8
_08028544:
	.4byte 0x030000FC
_08028548:
	.4byte 0x00001124
_0802854C:
	cmp r0, #2
	beq _0802856C
	b _08028576
_08028552:
	mov r6, #2
	ldr r0, _08028558  @ =0x00001138
	b _08028574
_08028558:
	.4byte 0x00001138
_0802855C:
	mov r2, #138
	lsl r2, r2, #5
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028568  @ =0x00001130
	b _08028574
_08028568:
	.4byte 0x00001130
_0802856C:
	ldr r2, _0802858C  @ =0x0000113E
	add r0, r3, r2
	ldrh r6, [r0]
	ldr r0, _08028590  @ =0x00001132
_08028574:
	add r4, r3, r0
_08028576:
	ldrh r0, [r4]
	add r0, r0, r5
	strh r0, [r4]
	lsl r0, r0, #16
	asr r3, r0, #16
	cmp r3, #0
	bge _08028594
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _0802859E
_0802858C:
	.4byte 0x0000113E
_08028590:
	.4byte 0x00001132
_08028594:
	lsl r0, r6, #16
	asr r0, r0, #16
	cmp r3, r0
	blt _080285A0
	mov r0, #0
_0802859E:
	strh r0, [r4]
_080285A0:
	ldr r2, [r1]
	ldr r1, _080285F4  @ =0x0000112E
	add r0, r2, r1
	mov r5, #0
	mov r1, #1
	strh r1, [r0]
	ldr r3, _080285F8  @ =0x0000112C
	add r0, r2, r3
	strh r1, [r0]
	ldr r4, _080285FC  @ =gUnknown_080788FC
	ldr r3, [r4]
	ldr r0, _08028600  @ =0x00001138
	add r2, r2, r0
	ldrb r0, [r2]
	and r1, r1, r0
	lsl r1, r1, #5
	ldrb r2, [r3]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	ldr r0, [r4]
	ldr r0, [r0]
	lsl r0, r0, #26
	lsr r0, r0, #31
	bl sub_0807220C
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_080285EC:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
_080285F4:
	.4byte 0x0000112E
_080285F8:
	.4byte 0x0000112C
_080285FC:
	.4byte gUnknown_080788FC
_08028600:
	.4byte 0x00001138
	THUMB_FUNC_END sub_080284E8

	THUMB_FUNC_START sub_08028604
sub_08028604: @ 0x08028604
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #24
	ldr r1, _08028724  @ =gUnknown_08079D20
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _0802872C  @ =0x00001138
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r4, _08028730  @ =0x00001124
	add r0, r2, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0802862E
	mov r3, #1
_0802862E:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028662
	mov r0, #18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	cmp r3, #0
	bne _08028644
	add r1, r1, #25
_08028644:
	ldr r0, _08028734  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	mov r0, sp
	mov r3, #5
	bl sub_080064D4
_08028662:
	ldr r0, _08028728  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08028738  @ =0x00001130
	add r0, r0, r1
	mov r1, #23
	mov r2, #9
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r0, #5
	mov r8, r0
	str r1, [sp, #8]
	add r0, sp, #8
	str r2, [r0, #4]
	add r7, r0, #0
	add r6, sp, #16
_08028680:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, r8
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #8]
	sub r0, r0, r2
	str r0, [sp, #8]
	ldr r5, _08028728  @ =0x030000FC
	ldr r2, [r5]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r7, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _08028680
	ldr r0, [r5]
	ldr r4, _0802873C  @ =0x00001132
	add r0, r0, r4
	mov r1, #23
	mov r2, #13
	mov r3, #0
	ldrsh r4, [r0, r3]
	mov r5, #5
	str r1, [sp, #16]
	str r2, [r6, #4]
_080286D6:
	add r0, r4, #0
	mov r1, #10
	bl __modsi3
	add r0, r5, r0
	ldr r1, _08028734  @ =gUnknown_08078210
	ldr r1, [r1]
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r1, r1, r0
	ldr r1, [r1]
	ldrh r2, [r1]
	ldr r0, [sp, #16]
	sub r0, r0, r2
	str r0, [sp, #16]
	ldr r0, _08028728  @ =0x030000FC
	ldr r2, [r0]
	mov r3, #144
	lsl r3, r3, #1
	add r2, r2, r3
	add r0, r6, #0
	mov r3, #5
	bl sub_080064D4
	add r0, r4, #0
	mov r1, #10
	bl __divsi3
	add r4, r0, #0
	cmp r4, #0
	bgt _080286D6
	add sp, sp, #24
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028724:
	.4byte gUnknown_08079D20
_08028728:
	.4byte 0x030000FC
_0802872C:
	.4byte 0x00001138
_08028730:
	.4byte 0x00001124
_08028734:
	.4byte gUnknown_08078210
_08028738:
	.4byte 0x00001130
_0802873C:
	.4byte 0x00001132
	THUMB_FUNC_END sub_08028604

	THUMB_FUNC_START sub_08028740
sub_08028740: @ 0x08028740
	push {r4-r6,lr}
	sub sp, sp, #12
	mov r4, #0
	ldr r0, _08028758  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802875C
	sub r4, r4, #1
	b _0802876A
	.byte 0x00
	.byte 0x00
_08028758:
	.4byte gUnknown_03001708
_0802875C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _08028766
	mov r4, #1
_08028766:
	cmp r4, #0
	beq _0802880A
_0802876A:
	ldr r1, _08028780  @ =0x030000FC
	ldr r2, [r1]
	ldr r6, _08028784  @ =0x00001124
	add r0, r2, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _08028788
	cmp r0, #1
	beq _08028794
	b _0802879E
	.byte 0x00
	.byte 0x00
_08028780:
	.4byte 0x030000FC
_08028784:
	.4byte 0x00001124
_08028788:
	mov r5, #2
	ldr r0, _08028790  @ =0x00001136
	add r3, r2, r0
	b _0802879E
_08028790:
	.4byte 0x00001136
_08028794:
	ldr r3, _080287B4  @ =0x0000113A
	add r0, r2, r3
	ldrh r5, [r0]
	ldr r6, _080287B8  @ =0x00001134
	add r3, r2, r6
_0802879E:
	ldrh r0, [r3]
	add r0, r0, r4
	strh r0, [r3]
	lsl r0, r0, #16
	asr r2, r0, #16
	cmp r2, #0
	bge _080287BC
	lsl r0, r5, #16
	asr r0, r0, #16
	sub r0, r0, #1
	b _080287C6
_080287B4:
	.4byte 0x0000113A
_080287B8:
	.4byte 0x00001134
_080287BC:
	lsl r0, r5, #16
	asr r0, r0, #16
	cmp r2, r0
	blt _080287C8
	mov r0, #0
_080287C6:
	strh r0, [r3]
_080287C8:
	ldr r1, [r1]
	ldr r2, _08028814  @ =0x0000112E
	add r0, r1, r2
	mov r4, #0
	mov r2, #1
	strh r2, [r0]
	ldr r3, _08028818  @ =0x0000112C
	add r0, r1, r3
	strh r2, [r0]
	ldr r0, _0802881C  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r6, _08028820  @ =0x00001136
	add r1, r1, r6
	ldrb r0, [r1]
	mov r1, #3
	and r1, r1, r0
	lsl r1, r1, #3
	ldrb r2, [r3]
	mov r0, #25
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r3]
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802880A:
	add sp, sp, #12
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08028814:
	.4byte 0x0000112E
_08028818:
	.4byte 0x0000112C
_0802881C:
	.4byte gUnknown_080788FC
_08028820:
	.4byte 0x00001136
	THUMB_FUNC_END sub_08028740

	THUMB_FUNC_START sub_08028824
sub_08028824: @ 0x08028824
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #20
	mov r9, r0
	ldr r1, _08028940  @ =gUnknown_08079D28
	ldr r0, _08028944  @ =0x030000FC
	ldr r2, [r0]
	ldr r3, _08028948  @ =0x00001136
	add r0, r2, r3
	mov r4, #0
	ldrsh r0, [r0, r4]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r1, [r0]
	mov r3, #0
	ldr r5, _0802894C  @ =0x00001124
	add r0, r2, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _08028852
	mov r3, #1
_08028852:
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028886
	mov r0, #12
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	cmp r3, #0
	bne _08028868
	add r1, r1, #25
_08028868:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	mov r4, #146
	lsl r4, r4, #4
	add r2, r2, r4
	add r0, sp, #4
	mov r3, #5
	bl sub_080064D4
_08028886:
	ldr r1, _08028944  @ =0x030000FC
	ldr r0, [r1]
	ldr r5, _08028954  @ =0x0000113A
	add r0, r0, r5
	mov r2, #0
	ldrsh r4, [r0, r2]
	lsl r0, r4, #1
	add r6, r0, #0
	add r6, r6, #10
	cmp r4, #7
	bgt _080288E6
	mov r8, r1
	mov r7, #9
_080288A0:
	mov r5, #0
	mov r3, r8
	ldr r2, [r3]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _080288B2
	mov r5, #1
_080288B2:
	mov r1, #24
	str r6, [sp, #12]
	add r3, sp, #12
	str r7, [r3, #4]
	cmp r5, #0
	bne _080288C0
	mov r1, #49
_080288C0:
	ldr r0, _08028950  @ =gUnknown_08078210
	ldr r0, [r0]
	lsl r1, r1, #2
	mov r5, #132
	lsl r5, r5, #1
	add r0, r0, r5
	add r0, r0, r1
	ldr r1, [r0]
	mov r0, #146
	lsl r0, r0, #4
	add r2, r2, r0
	add r0, r3, #0
	mov r3, #5
	bl sub_080064D4
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #7
	ble _080288A0
_080288E6:
	ldr r4, _08028944  @ =0x030000FC
	ldr r2, [r4]
	ldr r1, _0802894C  @ =0x00001124
	add r0, r2, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08028910
	ldr r3, _08028958  @ =0x00001134
	add r0, r2, r3
	mov r5, #0
	ldrsh r1, [r0, r5]
	lsl r1, r1, #4
	add r0, r2, #0
	add r0, r0, #60
	add r1, r1, #72
	mov r2, #0
	str r2, [sp]
	mov r2, #64
	mov r3, r9
	bl sub_080281C8
_08028910:
	ldr r0, [r4]
	ldr r2, _08028958  @ =0x00001134
	add r1, r0, r2
	mov r3, #0
	ldrsh r2, [r1, r3]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #2
	add r1, r1, #100
	add r0, r0, r1
	mov r1, #0
	str r1, [sp]
	mov r1, #88
	mov r2, #96
	mov r3, r9
	bl sub_080281C8
	add sp, sp, #20
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_08028940:
	.4byte gUnknown_08079D28
_08028944:
	.4byte 0x030000FC
_08028948:
	.4byte 0x00001136
_0802894C:
	.4byte 0x00001124
_08028950:
	.4byte gUnknown_08078210
_08028954:
	.4byte 0x0000113A
_08028958:
	.4byte 0x00001134
	THUMB_FUNC_END sub_08028824

	THUMB_FUNC_START sub_0802895C
sub_0802895C: @ 0x0802895C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #0
	bl sub_08034898
	ldr r0, _080289D0  @ =gUnknown_030012A0
	mov r5, #0
	strh r5, [r0]
	ldr r0, _080289D4  @ =gUnknown_03001710
	strh r5, [r0]
	ldr r4, _080289D8  @ =gUnknown_088754F8
	ldrh r0, [r4, #48]
	ldrh r1, [r4, #50]
	ldrh r2, [r4, #52]
	bl sub_08029CDC
	add r0, r4, #0
	bl sub_08032EB8
	mov r2, #128
	lsl r2, r2, #19
	mov r3, #192
	lsl r3, r3, #2
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	bl sub_08006968
	ldr r4, _080289DC  @ =0x030000FC
	ldr r0, _080289E0  @ =0x00001150
	bl sub_08034854
	add r1, r0, #0
	str r1, [r4]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _080289E4  @ =0x010008A8
	bl CpuSet
	ldr r0, _080289E8  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #30
	bne _080289F4
	ldr r1, [r4]
	mov r5, #137
	lsl r5, r5, #5
	add r2, r1, r5
	mov r0, #2
	str r0, [r2]
	ldr r0, _080289EC  @ =0x03000100
	ldrh r0, [r0]
	ldr r2, _080289F0  @ =0x00001134
	add r1, r1, r2
	strh r0, [r1]
	b _080289F8
_080289D0:
	.4byte gUnknown_030012A0
_080289D4:
	.4byte gUnknown_03001710
_080289D8:
	.4byte gUnknown_088754F8
_080289DC:
	.4byte 0x030000FC
_080289E0:
	.4byte 0x00001150
_080289E4:
	.4byte 0x010008A8
_080289E8:
	.4byte gUnknown_030009C8
_080289EC:
	.4byte 0x03000100
_080289F0:
	.4byte 0x00001134
_080289F4:
	ldr r0, _08028BAC  @ =0x03000100
	strh r5, [r0]
_080289F8:
	ldr r4, _08028BB0  @ =0x030000FC
	ldr r0, [r4]
	mov r3, #137
	lsl r3, r3, #5
	add r0, r0, r3
	ldr r0, [r0]
	bl sub_08028474
	ldr r0, _08028BB4  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #30
	bne _08028A1A
	ldr r0, [r4]
	ldr r5, _08028BB8  @ =0x00001124
	add r0, r0, r5
	mov r1, #1
	str r1, [r0]
_08028A1A:
	ldr r3, [r4]
	mov r0, #140
	lsl r0, r0, #1
	add r1, r3, r0
	ldr r2, _08028BBC  @ =gUnknown_088754F8
	ldr r0, [r2, #64]
	str r0, [r1]
	mov r5, #142
	lsl r5, r5, #1
	add r1, r3, r5
	ldr r0, [r2, #68]
	str r0, [r1]
	ldr r0, _08028BC0  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08028BC4  @ =gUnknown_03001930
	strh r1, [r0]
	mov r5, #0
	mov r0, #2
	add r0, sp, r0
	mov r8, r0
	add r6, r4, #0
	mov r4, #0
_08028A48:
	lsl r2, r5, #2
	ldr r0, [r6]
	add r0, r0, r4
	ldr r1, _08028BC8  @ =gUnknown_08079998
	add r2, r2, r1
	ldr r1, [r2]
	bl sub_08028068
	add r4, r4, #20
	add r5, r5, #1
	cmp r5, #13
	ble _08028A48
	ldr r7, _08028BB0  @ =0x030000FC
	ldr r0, [r7]
	add r0, r0, #92
	mov r4, #0
	mov r1, #14
	strb r1, [r0]
	ldr r2, [r7]
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r3, [r0]
	ldr r0, [r3]
	lsl r0, r0, #27
	lsr r0, r0, #30
	ldr r5, _08028BD0  @ =0x00001136
	add r1, r2, r5
	strh r0, [r1]
	ldr r0, [r3]
	lsl r0, r0, #26
	lsr r0, r0, #31
	ldr r1, _08028BD4  @ =0x00001138
	add r2, r2, r1
	strh r0, [r2]
	mov r0, #3
	mov r1, #3
	bl sub_08032788
	ldr r6, _08028BD8  @ =gUnknown_08B3A4DC
	ldrh r0, [r6]
	lsl r0, r0, #1
	bl sub_08034854
	ldr r1, [r7]
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r1, r3
	str r0, [r2]
	add r5, r5, #8
	add r1, r1, r5
	strh r4, [r1]
	mov r5, #0
	ldrh r0, [r6]
	cmp r5, r0
	bge _08028ADE
	ldr r4, _08028BE0  @ =gUnknown_08B3A4E0
_08028AB4:
	ldrb r0, [r4, #19]
	cmp r0, #0
	bne _08028AD4
	ldr r2, [r7]
	ldr r1, _08028BE4  @ =0x0000113E
	add r3, r2, r1
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r3, _08028BDC  @ =0x00001144
	add r2, r2, r3
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028AD4:
	add r4, r4, #28
	add r5, r5, #1
	ldrh r0, [r6]
	cmp r5, r0
	blt _08028AB4
_08028ADE:
	ldr r4, _08028BE8  @ =gUnknown_08D7B10C
	ldrh r0, [r4]
	lsl r0, r0, #1
	bl sub_08034854
	ldr r3, _08028BB0  @ =0x030000FC
	ldr r1, [r3]
	ldr r5, _08028BEC  @ =0x00001148
	add r2, r1, r5
	str r0, [r2]
	mov r0, #138
	lsl r0, r0, #5
	add r1, r1, r0
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldrh r1, [r4]
	cmp r5, r1
	bge _08028B36
	add r7, r3, #0
	add r6, r4, #0
	ldr r4, _08028BF0  @ =gUnknown_08D7B110
_08028B0A:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08028B2C
	ldr r2, [r7]
	mov r0, #138
	lsl r0, r0, #5
	add r3, r2, r0
	ldrh r0, [r3]
	add r1, r0, #1
	strh r1, [r3]
	lsl r0, r0, #16
	ldr r1, _08028BEC  @ =0x00001148
	add r2, r2, r1
	ldr r1, [r2]
	asr r0, r0, #15
	add r0, r0, r1
	strh r5, [r0]
_08028B2C:
	add r4, r4, #12
	add r5, r5, #1
	ldrh r2, [r6]
	cmp r5, r2
	blt _08028B0A
_08028B36:
	bl sub_08071FE4
	cmp r0, #10
	beq _08028B48
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028B48:
	mov r5, #7
_08028B4A:
	ldr r1, _08028BF4  @ =gUnknown_080799D0
	lsl r0, r5, #2
	add r4, r0, r1
	ldr r1, [r4]
	mov r0, #0
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #1
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	ldr r1, [r4]
	mov r0, #2
	bl sub_08014950
	cmp r0, #1
	beq _08028B7A
	sub r5, r5, #1
	cmp r5, #0
	bgt _08028B4A
_08028B7A:
	ldr r0, _08028BB0  @ =0x030000FC
	ldr r1, [r0]
	add r2, r5, #1
	ldr r3, _08028BF8  @ =0x0000113A
	add r0, r1, r3
	mov r3, #0
	strh r2, [r0]
	ldr r5, _08028BFC  @ =0x0000114C
	add r1, r1, r5
	ldr r0, _08028BCC  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	strh r3, [r0]
	ldr r1, _08028C00  @ =gUnknown_03001730
	ldr r2, _08028C04  @ =0x01000008
	bl CpuSet
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08028BAC:
	.4byte 0x03000100
_08028BB0:
	.4byte 0x030000FC
_08028BB4:
	.4byte gUnknown_030009C8
_08028BB8:
	.4byte 0x00001124
_08028BBC:
	.4byte gUnknown_088754F8
_08028BC0:
	.4byte gUnknown_0300192C
_08028BC4:
	.4byte gUnknown_03001930
_08028BC8:
	.4byte gUnknown_08079998
_08028BCC:
	.4byte gUnknown_080788FC
_08028BD0:
	.4byte 0x00001136
_08028BD4:
	.4byte 0x00001138
_08028BD8:
	.4byte gUnknown_08B3A4DC
_08028BDC:
	.4byte 0x00001144
_08028BE0:
	.4byte gUnknown_08B3A4E0
_08028BE4:
	.4byte 0x0000113E
_08028BE8:
	.4byte gUnknown_08D7B10C
_08028BEC:
	.4byte 0x00001148
_08028BF0:
	.4byte gUnknown_08D7B110
_08028BF4:
	.4byte gUnknown_080799D0
_08028BF8:
	.4byte 0x0000113A
_08028BFC:
	.4byte 0x0000114C
_08028C00:
	.4byte gUnknown_03001730
_08028C04:
	.4byte 0x01000008
	THUMB_FUNC_END sub_0802895C

	THUMB_FUNC_START sub_08028C08
sub_08028C08: @ 0x08028C08
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	mov r0, #178
	mov r9, r0
	mov r5, #64
	mov r1, #128
	mov r8, r1
	bl sub_080331FC
	ldr r2, _08028C78  @ =0x030000FC
	ldr r1, [r2]
	ldr r0, _08028C7C  @ =0x00001128
	mov r10, r0
	add r4, r1, r0
	ldr r6, [r4]
	add r0, r6, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r2, #1
	mov r12, r2
	and r0, r0, r2
	cmp r0, #0
	beq _08028C48
	mov r5, #32
	mov r0, #16
	mov r8, r0
	mov r2, #23
	mov r9, r2
_08028C48:
	ldr r0, _08028C80  @ =0x00001124
	add r2, r1, r0
	ldr r7, [r2]
	ldr r0, _08028C84  @ =gUnknown_030012E8
	ldrh r1, [r0]
	add r0, r1, #0
	and r5, r5, r0
	cmp r5, #0
	beq _08028C8E
	sub r0, r7, #1
	str r0, [r2]
	cmp r0, #0
	bge _08028CB8
	ldr r3, [r4]
	add r0, r3, #0
	add r0, r0, #192
	ldr r0, [r0]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028C88
	mov r0, #0
	b _08028CB2
	.byte 0x00
	.byte 0x00
_08028C78:
	.4byte 0x030000FC
_08028C7C:
	.4byte 0x00001128
_08028C80:
	.4byte 0x00001124
_08028C84:
	.4byte gUnknown_030012E8
_08028C88:
	ldrb r0, [r3]
	sub r0, r0, #1
	b _08028CB2
_08028C8E:
	mov r3, r8
	and r3, r3, r0
	cmp r3, #0
	beq _08028CF4
	add r0, r7, #1
	str r0, [r2]
	ldr r1, [r4]
	ldrb r3, [r1]
	cmp r0, r3
	blt _08028CB8
	add r0, r1, #0
	add r0, r0, #192
	ldr r1, [r0]
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _08028CB6
	sub r0, r3, #1
_08028CB2:
	str r0, [r2]
	b _08028CB8
_08028CB6:
	str r1, [r2]
_08028CB8:
	ldr r0, _08028CE8  @ =0x030000FC
	ldr r1, [r0]
	ldr r0, _08028CEC  @ =0x0000112E
	add r2, r1, r0
	mov r3, #0
	mov r0, #1
	strh r0, [r2]
	ldr r2, _08028CF0  @ =0x00001124
	add r1, r1, r2
	ldr r0, [r1]
	cmp r0, r7
	beq _08028D92
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, r9
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08028D92
	.byte 0x00
	.byte 0x00
_08028CE8:
	.4byte 0x030000FC
_08028CEC:
	.4byte 0x0000112E
_08028CF0:
	.4byte 0x00001124
_08028CF4:
	mov r0, r12
	and r0, r0, r1
	cmp r0, #0
	beq _08028D36
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r0, r0, #4
	add r4, r6, r0
	ldr r1, [r4, #8]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08028D2A
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r4, #8]
	bl sub_08028474
_08028D2A:
	ldr r0, [r4, #12]
	cmp r0, #0
	beq _08028D92
	bl _call_via_r0
	b _08028D92
_08028D36:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08028D92
	add r0, r6, #0
	add r0, r0, #184
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08028D56
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
	b _08028D7C
_08028D56:
	bl sub_08071C24
	ldr r1, _08028E2C  @ =0x030000FC
	ldr r0, [r1]
	add r0, r0, r10
	ldr r0, [r0]
	add r0, r0, #184
	ldr r0, [r0]
	bl sub_08028474
	bl sub_08071FE4
	cmp r0, #10
	beq _08028D7C
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_08028D7C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08028D92:
	ldr r6, _08028E2C  @ =0x030000FC
	mov r5, #0
	mov r4, #13
_08028D98:
	ldr r0, [r6]
	add r0, r0, r5
	mov r1, #1
	neg r1, r1
	bl sub_080280CC
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _08028D98
	ldr r5, _08028E2C  @ =0x030000FC
	ldr r0, [r5]
	ldr r2, _08028E30  @ =0x00001128
	add r0, r0, r2
	ldr r0, [r0]
	add r0, r0, #196
	ldr r0, [r0]
	cmp r0, #0
	beq _08028DC2
	bl _call_via_r0
_08028DC2:
	ldr r1, [r5]
	ldr r0, _08028E34  @ =0x0000113C
	add r1, r1, r0
	ldrh r0, [r1]
	add r0, r0, #80
	mov r6, #0
	strh r0, [r1]
	ldr r1, _08028E38  @ =gUnknown_03001730
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	bl sub_0801B310
	ldr r1, [r5]
	ldr r2, _08028E3C  @ =0x0000112C
	add r0, r1, r2
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028E1A
	add r0, sp, #12
	strh r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r1, r1, r0
	ldr r4, _08028E40  @ =0x01000400
	add r0, sp, #12
	add r2, r4, #0
	bl CpuSet
	mov r0, sp
	add r0, r0, #14
	strh r6, [r0]
	ldr r1, [r5]
	mov r2, #146
	lsl r2, r2, #4
	add r1, r1, r2
	add r2, r4, #0
	bl CpuSet
	ldr r0, [r5]
	ldr r1, _08028E3C  @ =0x0000112C
	add r0, r0, r1
	strh r6, [r0]
_08028E1A:
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
_08028E2C:
	.4byte 0x030000FC
_08028E30:
	.4byte 0x00001128
_08028E34:
	.4byte 0x0000113C
_08028E38:
	.4byte gUnknown_03001730
_08028E3C:
	.4byte 0x0000112C
_08028E40:
	.4byte 0x01000400
	THUMB_FUNC_END sub_08028C08

	THUMB_FUNC_START sub_08028E44
sub_08028E44: @ 0x08028E44
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	ldr r6, _08028FE0  @ =0x030000FC
	ldr r2, [r6]
	ldr r0, _08028FE4  @ =0x00001128
	add r3, r2, r0
	ldr r1, _08028FE8  @ =0x00001124
	add r0, r2, r1
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #4
	ldr r1, [r3]
	add r1, r1, r0
	mov r8, r1
	ldr r1, [r1]
	mov r0, #1
	neg r0, r0
	add r5, r2, #0
	cmp r1, r0
	bne _08028E80
	add r5, r5, #80
_08028E80:
	bl sub_08029C20
	cmp r0, #0
	bne _08028E9E
	ldr r0, [r5]
	mov r2, #10
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
_08028E9E:
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _08028FEC  @ =0x040000D4
	add r3, sp, #4
	str r3, [r1]
	ldr r0, _08028FF0  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _08028FF4  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r7, r6, #0
	mov r6, #0
	mov r5, #13
_08028EB8:
	ldr r0, [r7]
	add r0, r0, r6
	bl sub_08028128
	add r6, r6, #20
	sub r5, r5, #1
	cmp r5, #0
	bge _08028EB8
	ldr r5, _08028FE0  @ =0x030000FC
	ldr r1, [r5]
	ldr r6, _08028FF8  @ =0x0000112E
	add r0, r1, r6
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08028EE8
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r1, r3
	ldr r0, [r0]
	ldr r2, _08028FE8  @ =0x00001124
	add r1, r1, r2
	ldr r1, [r1]
	bl sub_0802834C
_08028EE8:
	ldr r0, [r5]
	ldr r3, _08028FE4  @ =0x00001128
	add r0, r0, r3
	ldr r0, [r0]
	add r0, r0, #200
	ldr r1, [r0]
	cmp r1, #0
	beq _08028EFE
	add r0, sp, #8
	bl _call_via_r1
_08028EFE:
	ldr r3, [r5]
	add r1, r3, r6
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r10, r5
	cmp r0, #0
	beq _08028F6A
	mov r0, #0
	strh r0, [r1]
	mov r5, #0
	ldr r2, _08028FEC  @ =0x040000D4
	add r7, r3, #0
	mov r3, #140
	lsl r3, r3, #1
	add r0, r7, r3
	mov r1, #128
	lsl r1, r1, #3
	mov r12, r1
	ldr r3, _08028FFC  @ =0x80000400
	mov r9, r3
	ldr r4, [r0]
	mov r1, #142
	lsl r1, r1, #1
	add r0, r7, r1
	ldr r6, [r0]
	mov r0, #144
	lsl r0, r0, #1
	add r3, r7, r0
_08028F36:
	lsl r0, r5, #1
	str r3, [r2]
	str r4, [r2, #4]
	mov r1, r9
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	mov r1, #146
	lsl r1, r1, #4
	add r0, r0, r1
	add r0, r7, r0
	str r0, [r2]
	str r6, [r2, #4]
	mov r0, r9
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r1, #128
	lsl r1, r1, #4
	add r4, r4, r1
	mov r1, r12
	lsl r0, r1, #1
	add r6, r6, r0
	add r3, r3, r0
	add r5, r5, r12
	ldr r0, _08029000  @ =0x000003FF
	cmp r5, r0
	ble _08028F36
_08028F6A:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	blt _08029004
	ldrb r0, [r1, #4]
	ldrb r1, [r1, #5]
	mov r3, r8
	ldrb r2, [r3, #6]
	lsl r6, r0, #3
	lsl r7, r1, #3
	lsl r4, r2, #3
	mov r1, r10
	ldr r0, [r1]
	mov r5, #1
	str r5, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r2, r10
	ldr r0, [r2]
	ldr r1, [r0, #20]
	ldrb r1, [r1, #8]
	sub r4, r4, r1
	add r0, r0, #20
	add r4, r6, r4
	str r5, [sp]
	add r1, r4, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	mov r3, r10
	ldr r1, [r3]
	ldr r0, [r1, #40]
	ldrb r5, [r0, #8]
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	add r6, r6, r0
	cmp r6, r4
	bge _0802901A
	mov r9, r10
	mov r0, #1
	mov r8, r0
_08028FC4:
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #40
	mov r2, r8
	str r2, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
	add r6, r6, r5
	cmp r6, r4
	blt _08028FC4
	b _0802901A
_08028FE0:
	.4byte 0x030000FC
_08028FE4:
	.4byte 0x00001128
_08028FE8:
	.4byte 0x00001124
_08028FEC:
	.4byte 0x040000D4
_08028FF0:
	.4byte gOamData
_08028FF4:
	.4byte 0x85000100
_08028FF8:
	.4byte 0x0000112E
_08028FFC:
	.4byte 0x80000400
_08029000:
	.4byte 0x000003FF
_08029004:
	mov r3, r10
	ldr r0, [r3]
	add r0, r0, #80
	mov r2, r8
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	mov r3, #1
	str r3, [sp]
	add r3, sp, #8
	bl sub_080281C8
_0802901A:
	bl sub_0801B4BC
	ldr r1, _08029040  @ =0x040000D4
	ldr r0, _08029044  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029048  @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08029040:
	.4byte 0x040000D4
_08029044:
	.4byte gOamData
_08029048:
	.4byte 0x84000100
	THUMB_FUNC_END sub_08028E44

	THUMB_FUNC_START sub_0802904C
sub_0802904C: @ 0x0802904C
	push {lr}
	ldr r0, _08029074  @ =0x030000FC
	ldr r0, [r0]
	ldr r1, _08029078  @ =0x0000114C
	add r0, r0, r1
	ldrb r3, [r0]
	mov r1, #63
	ldr r0, _0802907C  @ =gUnknown_080788FC
	ldr r0, [r0]
	ldrb r2, [r0]
	add r0, r1, #0
	and r0, r0, r3
	and r1, r1, r2
	cmp r0, r1
	beq _0802906E
	bl sub_0802A164
_0802906E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029074:
	.4byte 0x030000FC
_08029078:
	.4byte 0x0000114C
_0802907C:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END sub_0802904C

	THUMB_FUNC_START sub_08029080
sub_08029080: @ 0x08029080
	ldr r3, _080290A8  @ =gUnknown_080788FC
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #8
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r1, [r2]
	mov r0, #25
	neg r0, r0
	and r0, r0, r1
	strb r0, [r2]
	ldr r2, [r3]
	ldrb r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strb r0, [r2]
	bx lr
	.byte 0x00
	.byte 0x00
_080290A8:
	.4byte gUnknown_080788FC
	THUMB_FUNC_END sub_08029080

	THUMB_FUNC_START sub_080290AC
sub_080290AC: @ 0x080290AC
	push {lr}
	ldr r0, _080290D4  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _080290D8  @ =0x00001130
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _080290DC  @ =0x00001148
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	pop {r0}
	bx r0
_080290D4:
	.4byte 0x030000FC
_080290D8:
	.4byte 0x00001130
_080290DC:
	.4byte 0x00001148
	THUMB_FUNC_END sub_080290AC

	THUMB_FUNC_START sub_080290E0
sub_080290E0: @ 0x080290E0
	push {lr}
	sub sp, sp, #12
	bl sub_08071C24
	ldr r0, _0802911C  @ =0x030000FC
	ldr r0, [r0]
	ldr r2, _08029120  @ =0x00001132
	add r1, r0, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _08029124  @ =0x00001144
	add r0, r0, r2
	ldr r0, [r0]
	lsl r1, r1, #1
	add r1, r1, r0
	mov r2, #0
	ldrsh r0, [r1, r2]
	mov r2, #0
	str r2, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	add sp, sp, #12
	pop {r0}
	bx r0
_0802911C:
	.4byte 0x030000FC
_08029120:
	.4byte 0x00001132
_08029124:
	.4byte 0x00001144
	THUMB_FUNC_END sub_080290E0

	THUMB_FUNC_START sub_08029128
sub_08029128: @ 0x08029128
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r1, _0802917C  @ =gUnknown_08079990
	ldr r5, _08029180  @ =0x030000FC
	ldr r0, [r5]
	ldr r4, _08029184  @ =0x00001134
	add r0, r0, r4
	mov r2, #0
	ldrsh r0, [r0, r2]
	add r1, r0, r1
	ldrb r1, [r1]
	ldr r2, _08029188  @ =gUnknown_08079988
	add r0, r0, r2
	ldrb r3, [r0]
	mov r0, #3
	mov r2, #4
	bl sub_0802D468
	mov r0, #30
	mov r1, #1
	bl sub_080070E8
	ldr r1, _0802918C  @ =0x03000100
	ldr r0, [r5]
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802917C:
	.4byte gUnknown_08079990
_08029180:
	.4byte 0x030000FC
_08029184:
	.4byte 0x00001134
_08029188:
	.4byte gUnknown_08079988
_0802918C:
	.4byte 0x03000100
	THUMB_FUNC_END sub_08029128

	THUMB_FUNC_START sub_08029190
sub_08029190: @ 0x08029190
	push {lr}
	mov r0, #0
	bl sub_08011428
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029190

	THUMB_FUNC_START sub_0802919C
sub_0802919C: @ 0x0802919C
	push {r4-r7,lr}
	add r4, r0, #0
	add r3, r1, #0
	ldr r6, _080291D8  @ =0x0300010E
	mov r2, #0
	strb r2, [r6]
	ldr r0, _080291DC  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080291F0
	ldr r1, _080291E0  @ =0x0300010C
	mov r0, #7
	strb r0, [r1]
	ldr r0, _080291E4  @ =0x03000DF8
	ldr r1, _080291E8  @ =0x0300010D
	strb r3, [r1]
	strb r3, [r0]
	ldr r0, _080291EC  @ =0x03000DD0
	strb r2, [r0]
	lsl r0, r3, #24
	cmp r0, #0
	bge _080291CE
	strb r2, [r1]
_080291CE:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r1]
	b _08029346
	.byte 0x00
	.byte 0x00
_080291D8:
	.4byte 0x0300010E
_080291DC:
	.4byte gUnknown_03000BB4
_080291E0:
	.4byte 0x0300010C
_080291E4:
	.4byte 0x03000DF8
_080291E8:
	.4byte 0x0300010D
_080291EC:
	.4byte 0x03000DD0
_080291F0:
	ldr r1, _08029218  @ =gUnknown_03000B90
	ldr r5, [r1, #32]
	mov r0, #2
	and r5, r5, r0
	add r7, r1, #0
	cmp r5, #0
	beq _08029278
	ldr r0, _0802921C  @ =0x03000DD0
	strb r4, [r0]
	ldr r1, _08029220  @ =gUnknown_03000B80
	mov r2, #0
	ldrsb r2, [r1, r2]
	add r3, r0, #0
	add r4, r1, #0
	cmp r2, #0
	bne _08029228
	ldr r1, _08029224  @ =0x03000DF8
	mov r0, #13
	b _0802922C
	.byte 0x00
	.byte 0x00
_08029218:
	.4byte gUnknown_03000B90
_0802921C:
	.4byte 0x03000DD0
_08029220:
	.4byte gUnknown_03000B80
_08029224:
	.4byte 0x03000DF8
_08029228:
	ldr r1, _08029258  @ =0x03000DF8
	mov r0, #6
_0802922C:
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bne _0802923C
	ldr r1, _0802925C  @ =0x0300010F
	mov r0, #1
	strb r0, [r1]
_0802923C:
	ldr r1, _08029260  @ =0x03000DF4
	mov r0, #7
	strb r0, [r1]
	ldr r1, _08029264  @ =0x0300010C
	ldrb r0, [r3]
	strb r0, [r1]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _0802926C
	ldr r1, _08029268  @ =0x0300010D
	mov r0, #25
	strb r0, [r1]
	b _08029346
_08029258:
	.4byte 0x03000DF8
_0802925C:
	.4byte 0x0300010F
_08029260:
	.4byte 0x03000DF4
_08029264:
	.4byte 0x0300010C
_08029268:
	.4byte 0x0300010D
_0802926C:
	ldr r1, _08029274  @ =0x0300010D
	mov r0, #22
	strb r0, [r1]
	b _08029346
_08029274:
	.4byte 0x0300010D
_08029278:
	ldr r1, _0802929C  @ =0x03000DD0
	strb r4, [r1]
	ldr r0, _080292A0  @ =gUnknown_03000B80
	ldrb r2, [r0]
	sub r0, r2, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292B0
	ldr r1, _080292A4  @ =0x0300010C
	mov r0, #8
	strb r0, [r1]
	ldr r1, _080292A8  @ =0x0300010D
	mov r0, #23
	strb r0, [r1]
	add r2, r1, #0
	ldr r1, _080292AC  @ =0x03000DF4
	b _08029332
_0802929C:
	.4byte 0x03000DD0
_080292A0:
	.4byte gUnknown_03000B80
_080292A4:
	.4byte 0x0300010C
_080292A8:
	.4byte 0x0300010D
_080292AC:
	.4byte 0x03000DF4
_080292B0:
	sub r0, r2, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _080292EC
	ldr r0, _080292DC  @ =0x03000DF8
	strb r4, [r0]
	strb r4, [r1]
	ldr r1, _080292E0  @ =0x0300010C
	mov r0, #6
	strb r0, [r1]
	ldr r1, _080292E4  @ =0x03000DF4
	strb r4, [r1]
	lsl r0, r2, #24
	asr r0, r0, #24
	ldr r2, _080292E8  @ =0x0300010D
	cmp r0, #3
	bne _08029332
	add r0, r4, #6
	strb r0, [r1]
	b _08029332
	.byte 0x00
	.byte 0x00
_080292DC:
	.4byte 0x03000DF8
_080292E0:
	.4byte 0x0300010C
_080292E4:
	.4byte 0x03000DF4
_080292E8:
	.4byte 0x0300010D
_080292EC:
	lsl r0, r2, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08029314
	strb r0, [r6]
	ldr r0, _08029308  @ =0x03000DF8
	strb r3, [r0]
	strb r4, [r1]
	ldr r0, _0802930C  @ =0x0300010C
	strb r4, [r0]
	ldr r0, _08029310  @ =0x03000DF4
	strb r3, [r0]
	b _0802932E
	.byte 0x00
	.byte 0x00
_08029308:
	.4byte 0x03000DF8
_0802930C:
	.4byte 0x0300010C
_08029310:
	.4byte 0x03000DF4
_08029314:
	ldr r1, _0802934C  @ =0x03000DF8
	strb r3, [r1]
	lsl r0, r3, #24
	cmp r0, #0
	bge _08029320
	strb r5, [r1]
_08029320:
	ldr r0, _08029350  @ =0x03000DF4
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #25
	strb r1, [r0]
	ldr r1, _08029354  @ =0x0300010C
	strb r4, [r1]
_0802932E:
	ldr r2, _08029358  @ =0x0300010D
	add r1, r0, #0
_08029332:
	ldrb r0, [r1]
	add r0, r0, #9
	strb r0, [r2]
	ldr r0, [r7, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029346
	mov r0, #21
	strb r0, [r2]
_08029346:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802934C:
	.4byte 0x03000DF8
_08029350:
	.4byte 0x03000DF4
_08029354:
	.4byte 0x0300010C
_08029358:
	.4byte 0x0300010D
	THUMB_FUNC_END sub_0802919C

	THUMB_FUNC_START sub_0802935C
sub_0802935C: @ 0x0802935C
	push {r4,r5,lr}
	sub sp, sp, #4
	ldr r1, _0802937C  @ =0x0300010F
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029380  @ =0x03001940
	ldr r0, [r0]
	cmp r0, #0
	beq _0802938C
	ldr r1, _08029384  @ =0x03000C20
	ldr r0, _08029388  @ =0x030019AC
	ldr r0, [r0]
	add r0, r0, #52
	ldrb r0, [r0]
	b _08029390
	.byte 0x00
	.byte 0x00
_0802937C:
	.4byte 0x0300010F
_08029380:
	.4byte 0x03001940
_08029384:
	.4byte 0x03000C20
_08029388:
	.4byte 0x030019AC
_0802938C:
	ldr r1, _08029408  @ =0x03000C20
	mov r0, #6
_08029390:
	strb r0, [r1]
	mov r0, #0
	bl sub_08034898
	ldr r1, _0802940C  @ =0x03000C1C
	mov r0, #0
	strb r0, [r1]
	ldr r0, _08029410  @ =gUnknown_030009D8
	mov r1, #0
	strh r1, [r0]
	ldr r0, _08029414  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08029418  @ =gUnknown_03001710
	strh r1, [r0]
	ldr r4, _0802941C  @ =gUnknown_0885A088
	add r0, r4, #0
	bl sub_08032EB8
	mov r0, #0
	mov r1, #0
	bl sub_0802BCA4
	add r0, r4, #0
	bl sub_08006968
	ldr r1, _08029420  @ =0x03000104
	str r0, [r1]
	mov r1, sp
	mov r0, #160
	strh r0, [r1]
	ldr r1, _08029424  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08029428  @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0802942C  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	mov r1, #128
	lsl r1, r1, #19
	mov r2, #242
	lsl r2, r2, #5
	add r0, r2, #0
	strh r0, [r1]
	ldr r1, _08029430  @ =gUnknown_03001A1C
	mov r0, #0
	str r0, [r1]
	ldr r0, _0802942C  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029434
	mov r4, #3
	b _08029456
_08029408:
	.4byte 0x03000C20
_0802940C:
	.4byte 0x03000C1C
_08029410:
	.4byte gUnknown_030009D8
_08029414:
	.4byte gUnknown_030012A0
_08029418:
	.4byte gUnknown_03001710
_0802941C:
	.4byte gUnknown_0885A088
_08029420:
	.4byte 0x03000104
_08029424:
	.4byte 0x040000D4
_08029428:
	.4byte 0x81000100
_0802942C:
	.4byte gUnknown_03000B90
_08029430:
	.4byte gUnknown_03001A1C
_08029434:
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029440
	mov r4, #2
	b _08029456
_08029440:
	ldr r0, _080294A8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	mov r4, #1
	cmp r0, #1
	bhi _08029456
	ldr r0, _080294AC  @ =gUnknown_03000BB4
	mov r1, #0
	ldrsb r1, [r0, r1]
	neg r0, r1
	orr r0, r0, r1
	lsr r4, r0, #31
_08029456:
	bl sub_08029A80
	add r0, r4, #0
	bl sub_08030408
	ldr r2, _080294B0  @ =gUnknown_0885A088
	ldrh r0, [r2, #48]
	ldrh r1, [r2, #50]
	ldrh r2, [r2, #52]
	bl sub_08029CDC
	bl sub_08071FE4
	cmp r0, #11
	beq _0802947E
	mov r0, #11
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0802947E:
	bl sub_08038B18
	mov r4, #0
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080294B4  @ =gUnknown_03001730
	ldr r2, _080294B8  @ =0x01000008
	bl CpuSet
	ldr r0, _080294BC  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _080294C8
	ldr r0, _080294C0  @ =0x03000E00
	ldr r1, _080294C4  @ =gUnknown_08079DA0
	ldr r1, [r1, #4]
	bl sub_0802F648
	b _08029522
_080294A8:
	.4byte gUnknown_03000B80
_080294AC:
	.4byte gUnknown_03000BB4
_080294B0:
	.4byte gUnknown_0885A088
_080294B4:
	.4byte gUnknown_03001730
_080294B8:
	.4byte 0x01000008
_080294BC:
	.4byte gUnknown_03000B90
_080294C0:
	.4byte 0x03000E00
_080294C4:
	.4byte gUnknown_08079DA0
_080294C8:
	mov r0, #2
	and r1, r1, r0
	cmp r1, #0
	beq _080294E4
	ldr r0, _080294DC  @ =0x03000E00
	ldr r1, _080294E0  @ =gUnknown_08079DA0
	ldr r1, [r1, #8]
	bl sub_0802F648
	b _08029522
_080294DC:
	.4byte 0x03000E00
_080294E0:
	.4byte gUnknown_08079DA0
_080294E4:
	ldr r0, _08029508  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _0802950C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029518
	ldr r0, _08029510  @ =0x03000E00
	ldr r1, _08029514  @ =gUnknown_08079DA0
	ldr r1, [r1]
	bl sub_0802F648
	b _08029522
_08029508:
	.4byte gUnknown_03000BB4
_0802950C:
	.4byte gUnknown_03000B80
_08029510:
	.4byte 0x03000E00
_08029514:
	.4byte gUnknown_08079DA0
_08029518:
	ldr r0, _08029544  @ =0x03000E00
	ldr r1, _08029548  @ =gUnknown_08079DA0
	ldr r1, [r1, #12]
	bl sub_0802F648
_08029522:
	ldr r0, _0802954C  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029558
	ldr r1, _08029550  @ =0x03001BA0
	ldrb r0, [r1]
	cmp r0, #5
	bhi _08029554
	add r1, r0, #0
	lsl r0, r1, #5
	sub r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r1
	lsl r0, r0, #3
	b _08029556
_08029544:
	.4byte 0x03000E00
_08029548:
	.4byte gUnknown_08079DA0
_0802954C:
	.4byte gUnknown_03000B90
_08029550:
	.4byte 0x03001BA0
_08029554:
	ldr r0, _080295D8  @ =0x00002710
_08029556:
	add r4, r4, r0
_08029558:
	add r0, r4, #0
	mov r1, #1
	bl sub_0802FC24
	ldr r1, _080295DC  @ =0x040000D4
	ldr r0, _080295E0  @ =gUnknown_082EC750
	str r0, [r1]
	ldr r0, _080295E4  @ =0x06010000
	str r0, [r1, #4]
	ldr r0, _080295E8  @ =0x840000A0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r5, _080295EC  @ =gUnknown_0300192C
	mov r1, #160
	lsl r1, r1, #2
	add r0, r1, #0
	strh r0, [r5]
	ldr r4, _080295F0  @ =gUnknown_03001930
	mov r0, #20
	strh r0, [r4]
	add r0, r4, #0
	add r1, r5, #0
	bl sub_080091A8
	add r0, r4, #0
	add r1, r5, #0
	bl sub_08042FB0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08031BF0
	ldr r0, _080295F4  @ =0x03000C24
	mov r1, #0
	strb r1, [r0]
	ldr r0, _080295F8  @ =0x03000C14
	strb r1, [r0]
	bl sub_08029A80
	ldr r1, _080295FC  @ =0x03000108
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	bl sub_0802FCA4
	ldr r0, _08029600  @ =gUnknown_03000BBC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_080149F8
	ldr r0, _08029604  @ =0x0300010F
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029610
	ldr r0, _08029608  @ =0x03000DF8
	ldrb r1, [r0]
	ldr r2, _0802960C  @ =gUnknown_03001A30
	mov r0, #5
	bl sub_08010534
	b _0802961E
_080295D8:
	.4byte 0x00002710
_080295DC:
	.4byte 0x040000D4
_080295E0:
	.4byte gUnknown_082EC750
_080295E4:
	.4byte 0x06010000
_080295E8:
	.4byte 0x840000A0
_080295EC:
	.4byte gUnknown_0300192C
_080295F0:
	.4byte gUnknown_03001930
_080295F4:
	.4byte 0x03000C24
_080295F8:
	.4byte 0x03000C14
_080295FC:
	.4byte 0x03000108
_08029600:
	.4byte gUnknown_03000BBC
_08029604:
	.4byte 0x0300010F
_08029608:
	.4byte 0x03000DF8
_0802960C:
	.4byte gUnknown_03001A30
_08029610:
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802964C  @ =0x03000DF8
	ldrb r1, [r1]
	ldr r2, _08029650  @ =gUnknown_03001A30
	bl sub_08010534
_0802961E:
	ldr r0, _08029654  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08029682
	ldr r0, _08029648  @ =0x03000DD0
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #4
	bgt _08029658
	add r0, r1, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029648:
	.4byte 0x03000DD0
_0802964C:
	.4byte 0x03000DF8
_08029650:
	.4byte gUnknown_03001A30
_08029654:
	.4byte gUnknown_03000B90
_08029658:
	ldr r0, _08029670  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _08029674
	mov r0, #5
	mov r1, #14
	bl sub_08010BE0
	b _0802968E
	.byte 0x00
	.byte 0x00
_08029670:
	.4byte gUnknown_03000B80
_08029674:
	cmp r0, #1
	bne _0802968E
	mov r0, #5
	mov r1, #6
	bl sub_08010BE0
	b _0802968E
_08029682:
	ldr r0, _0802969C  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _080296A0  @ =gUnknown_03000B74
	ldrb r1, [r1]
	bl sub_08010BE0
_0802968E:
	mov r0, #1
	bl sub_080300CC
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_0802969C:
	.4byte 0x03000DD0
_080296A0:
	.4byte gUnknown_03000B74
	THUMB_FUNC_END sub_0802935C

	THUMB_FUNC_START sub_080296A4
sub_080296A4: @ 0x080296A4
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r4, #0
	bl sub_08029C20
	ldr r1, _08029774  @ =0x03000C14
	ldrb r0, [r1]
	cmp r0, #30
	bhi _080296B8
	b _080297DA
_080296B8:
	mov r4, #50
	bl sub_080331FC
	ldr r0, _08029778  @ =0x03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080296CC
	b _080297C8
_080296CC:
	ldr r0, _0802977C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08029716
	ldr r0, _08029780  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080296F8
	ldr r1, _08029784  @ =gUnknown_03001A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080296F8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _0802970E
_080296F8:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #32
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802970E:
	ldr r4, _08029788  @ =0x000F423F
	ldr r1, _0802977C  @ =gUnknown_030012E8
	mov r0, #0
	strh r0, [r1]
_08029716:
	ldr r0, _0802978C  @ =0x03000E00
	add r1, r4, #0
	bl sub_0802F7B8
	mov r4, #0
	cmp r0, #0
	bne _08029726
	mov r4, #1
_08029726:
	cmp r4, #0
	beq _08029794
	ldr r0, _08029790  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _0802973C
	add r0, r1, #0
	bl sub_08071D9C
_0802973C:
	ldr r0, _08029780  @ =gUnknown_03000B90
	ldr r1, [r0, #32]
	mov r0, #3
	and r1, r1, r0
	cmp r1, #0
	bne _080297DE
	ldr r2, _08029784  @ =gUnknown_03001A30
	ldrb r0, [r2]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq _080297DE
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _080297DE
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #41
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _080297DE
	.byte 0x00
	.byte 0x00
_08029774:
	.4byte 0x03000C14
_08029778:
	.4byte 0x03000DDC
_0802977C:
	.4byte gUnknown_030012E8
_08029780:
	.4byte gUnknown_03000B90
_08029784:
	.4byte gUnknown_03001A30
_08029788:
	.4byte 0x000F423F
_0802978C:
	.4byte 0x03000E00
_08029790:
	.4byte 0x03000108
_08029794:
	ldr r5, _080297C4  @ =0x03000108
	ldr r1, [r5]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _080297AA
	add r0, r1, #0
	bl sub_080721A8
	cmp r0, #0
	beq _080297DE
_080297AA:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #12
	mov r1, #12
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	str r0, [r5]
	b _080297DE
	.byte 0x00
	.byte 0x00
_080297C4:
	.4byte 0x03000108
_080297C8:
	bl sub_0802FC88
	cmp r0, #0
	beq _080297D6
	mov r0, #1
	bl sub_080300CC
_080297D6:
	mov r4, #1
	b _080297DE
_080297DA:
	add r0, r0, #1
	strb r0, [r1]
_080297DE:
	add r0, r4, #0
	bl sub_08030DA0
	cmp r4, #0
	bne _080297EA
	b _08029A74
_080297EA:
	ldr r0, _08029860  @ =gUnknown_030009D8
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	bl sub_08030DE8
	cmp r0, #0
	bne _080297FC
	b _08029A74
_080297FC:
	ldr r0, _08029864  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802980A
	b _08029A74
_0802980A:
	ldr r2, _08029868  @ =0x03000E00
	ldr r0, [r2, #80]
	ldr r1, [r0]
	sub r1, r1, #1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r0, r2
	add r2, r2, #4
	add r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802986C  @ =0x03000108
	ldr r1, [r0]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	beq _08029834
	add r0, r1, #0
	bl sub_08071D9C
_08029834:
	mov r0, #0
	str r0, [sp]
	mov r7, #128
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _08029870  @ =0x03000C1C
	mov r0, #1
	strb r0, [r1]
	ldr r0, _08029874  @ =gUnknown_03000BB4
	mov r5, #0
	ldrsb r5, [r0, r5]
	cmp r5, #0
	beq _08029878
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029860:
	.4byte gUnknown_030009D8
_08029864:
	.4byte gUnknown_030012E8
_08029868:
	.4byte 0x03000E00
_0802986C:
	.4byte 0x03000108
_08029870:
	.4byte 0x03000C1C
_08029874:
	.4byte gUnknown_03000BB4
_08029878:
	ldr r2, _08029888  @ =gUnknown_03000B80
	mov r4, #0
	ldrsb r4, [r2, r4]
	cmp r4, #2
	bne _0802988C
	mov r0, #9
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029888:
	.4byte gUnknown_03000B80
_0802988C:
	cmp r4, #3
	bne _08029894
	mov r0, #9
	b _08029A52
_08029894:
	ldr r1, _080298D0  @ =gUnknown_03000B90
	ldr r0, [r1, #32]
	mov r3, #4
	and r0, r0, r3
	add r6, r1, #0
	cmp r0, #0
	bne _080298A4
	b _080299E4
_080298A4:
	cmp r4, #0
	bne _08029938
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _080298D4  @ =gUnknown_08B2CA5C
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _080298F2
	ldr r4, _080298D8  @ =gUnknown_080788B0
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _080298DC
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_080298D0:
	.4byte gUnknown_03000B90
_080298D4:
	.4byte gUnknown_08B2CA5C
_080298D8:
	.4byte gUnknown_080788B0
_080298DC:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_080298F2:
	strb r3, [r2]
	str r4, [sp]
	str r7, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #0
	bl sub_0800F6EC
	ldr r0, _08029930  @ =gUnknown_03000B58
	strb r4, [r0]
	ldr r0, _08029934  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #43
	mov r2, #13
	mov r3, #2
	bl sub_0802D468
	mov r0, #30
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029930:
	.4byte gUnknown_03000B58
_08029934:
	.4byte gUnknown_03000B74
_08029938:
	cmp r4, #1
	bne _080299C8
	mov r0, #18
	ldrsh r1, [r6, r0]
	ldr r0, _08029964  @ =gUnknown_08B2CDF4
	ldr r0, [r0]
	sub r0, r0, #1
	cmp r1, r0
	bcs _08029982
	ldr r4, _08029968  @ =gUnknown_080788C8
	add r0, r1, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _0802996C
	mov r0, #8
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029964:
	.4byte gUnknown_08B2CDF4
_08029968:
	.4byte gUnknown_080788C8
_0802996C:
	mov r1, #18
	ldrsh r0, [r6, r1]
	add r0, r0, #1
	lsl r0, r0, #2
	add r0, r0, r4
	ldr r0, [r0]
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _08029A52
_08029982:
	mov r0, #5
	strb r0, [r2]
	str r5, [sp]
	str r7, [sp, #4]
	str r5, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #0
	mov r1, #1
	bl sub_0800F6EC
	ldr r0, _080299C0  @ =gUnknown_03000B58
	strb r5, [r0]
	ldr r0, _080299C4  @ =gUnknown_03000B74
	strb r4, [r0]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl sub_08004428
	mov r0, #3
	mov r1, #45
	mov r2, #13
	mov r3, #5
	bl sub_0802D468
	mov r0, #30
	b _08029A52
_080299C0:
	.4byte gUnknown_03000B58
_080299C4:
	.4byte gUnknown_03000B74
_080299C8:
	mov r0, #7
	mov r1, #1
	bl sub_080070E8
	ldr r0, _080299DC  @ =gUnknown_03000B58
	strb r5, [r0]
	ldr r0, _080299E0  @ =gUnknown_03000B74
	strb r5, [r0]
	b _08029A74
	.byte 0x00
	.byte 0x00
_080299DC:
	.4byte gUnknown_03000B58
_080299E0:
	.4byte gUnknown_03000B74
_080299E4:
	ldr r1, _08029A30  @ =gUnknown_03001A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08029A5A
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08029A5A
	cmp r4, #0
	bne _08029A38
	mov r1, #18
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08029A38
	mov r1, #16
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _08029A1A
	mov r0, #128
	lsl r0, r0, #1
	bl sub_080148F0
	lsl r0, r0, #24
	cmp r0, #0
	beq _08029A50
_08029A1A:
	ldr r0, _08029A34  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
	.byte 0x00
	.byte 0x00
_08029A30:
	.4byte gUnknown_03001A30
_08029A34:
	.4byte gUnknown_03000B54
_08029A38:
	ldr r0, _08029A4C  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #1
	and r1, r1, r0
	cmp r1, #0
	beq _08029A50
	mov r0, #23
	b _08029A52
_08029A4C:
	.4byte gUnknown_03000B54
_08029A50:
	mov r0, #22
_08029A52:
	mov r1, #1
	bl sub_080070E8
	b _08029A74
_08029A5A:
	ldr r0, [r6, #32]
	mov r1, #1
	and r0, r0, r1
	cmp r0, #0
	beq _08029A6C
	mov r0, #12
	bl sub_080070E8
	b _08029A74
_08029A6C:
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
_08029A74:
	bl sub_08031C1C
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080296A4

	THUMB_FUNC_START sub_08029A80
sub_08029A80: @ 0x08029A80
	push {r4-r7,lr}
	sub sp, sp, #16
	ldr r0, _08029B64  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r5, sp, #8
	cmp r0, #0
	bne _08029AE6
	ldr r0, _08029B68  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r2, r0, #24
	lsr r0, r2, #24
	cmp r0, #1
	bhi _08029AE6
	ldr r0, _08029B6C  @ =gUnknown_080763FC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #8
	ldr r0, _08029B70  @ =gUnknown_0885A088
	ldr r7, [r0, #72]
	ldr r0, _08029B74  @ =0x03000104
	ldr r0, [r0]
	mov r3, #184
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r6, [r0]
	asr r0, r2, #24
	cmp r0, #1
	bne _08029AC8
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	mov r1, #7
_08029AC8:
	cmp r1, #0
	beq _08029AE6
	add r4, r1, #0
_08029ACE:
	mov r0, sp
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #5
	bl sub_080064D4
	sub r4, r4, #1
	ldr r0, [sp]
	add r0, r0, #2
	str r0, [sp]
	cmp r4, #0
	bne _08029ACE
_08029AE6:
	mov r0, #7
	str r0, [sp, #8]
	mov r0, #2
	str r0, [r5, #4]
	ldr r7, _08029B74  @ =0x03000104
	ldr r1, [r7]
	ldr r0, _08029B78  @ =0x0300010C
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r6, _08029B70  @ =gUnknown_0885A088
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r1, [r7]
	ldr r0, _08029B7C  @ =0x0300010D
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #2
	add r1, r1, r4
	add r1, r1, r0
	ldr r1, [r1]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
	ldr r0, _08029B80  @ =0x0300010E
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _08029B5A
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [r7]
	mov r1, #180
	lsl r1, r1, #1
	add r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r6, #76]
	add r0, r5, #0
	mov r3, #5
	bl sub_080064D4
_08029B5A:
	add sp, sp, #16
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029B64:
	.4byte gUnknown_03000BB4
_08029B68:
	.4byte gUnknown_03000B80
_08029B6C:
	.4byte gUnknown_080763FC
_08029B70:
	.4byte gUnknown_0885A088
_08029B74:
	.4byte 0x03000104
_08029B78:
	.4byte 0x0300010C
_08029B7C:
	.4byte 0x0300010D
_08029B80:
	.4byte 0x0300010E
	THUMB_FUNC_END sub_08029A80

	THUMB_FUNC_START sub_08029B84
sub_08029B84: @ 0x08029B84
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #12
	add r6, sp, #4
	mov r0, #0
	strh r0, [r6]
	ldr r0, _08029BFC  @ =gUnknown_03001930
	ldrh r0, [r0]
	mov r5, sp
	add r5, r5, #6
	strh r0, [r5]
	ldr r0, _08029C00  @ =gUnknown_0300192C
	ldrh r0, [r0]
	add r7, sp, #8
	strh r0, [r7]
	ldr r0, _08029C04  @ =0x03000C1C
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029BEE
	mov r0, #160
	str r0, [sp]
	ldr r4, _08029C08  @ =0x040000D4
	mov r0, sp
	str r0, [r4]
	ldr r0, _08029C0C  @ =gOamData
	mov r8, r0
	str r0, [r4, #4]
	ldr r0, _08029C10  @ =0x85000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	add r0, r6, #0
	bl sub_08031AD4
	ldr r0, _08029C14  @ =0x03000E00
	add r1, r6, #0
	add r2, r5, #0
	add r3, r7, #0
	bl sub_0802F890
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_08030C84
	mov r0, r8
	str r0, [r4]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r4, #4]
	ldr r0, _08029C18  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
_08029BEE:
	add sp, sp, #12
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029BFC:
	.4byte gUnknown_03001930
_08029C00:
	.4byte gUnknown_0300192C
_08029C04:
	.4byte 0x03000C1C
_08029C08:
	.4byte 0x040000D4
_08029C0C:
	.4byte gOamData
_08029C10:
	.4byte 0x85000100
_08029C14:
	.4byte 0x03000E00
_08029C18:
	.4byte 0x84000100
	THUMB_FUNC_END sub_08029B84

	THUMB_FUNC_START sub_08029C1C
sub_08029C1C: @ 0x08029C1C
	bx lr
	THUMB_FUNC_END sub_08029C1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029C20
sub_08029C20: @ 0x08029C20
	push {r4,lr}
	ldr r4, _08029C40  @ =gUnknown_03000C28
	ldrb r0, [r4]
	cmp r0, #0
	beq _08029C84
	ldr r1, _08029C44  @ =0x03000111
	ldrb r0, [r1]
	mov r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08029C48
	sub r0, r0, #1
	strb r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C40:
	.4byte gUnknown_03000C28
_08029C44:
	.4byte 0x03000111
_08029C48:
	ldr r3, _08029C64  @ =0x03000110
	ldrb r0, [r3]
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	cmp r0, #0
	ble _08029C6C
	ldr r1, _08029C68  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r3, r0]
	strh r0, [r1]
	mov r0, #1
	b _08029C86
	.byte 0x00
	.byte 0x00
_08029C64:
	.4byte 0x03000110
_08029C68:
	.4byte 0x04000054
_08029C6C:
	strb r2, [r4]
	strb r2, [r3]
	ldr r1, _08029C8C  @ =0x04000050
	ldr r0, _08029C90  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029C94  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08029C98  @ =0x04000054
	strh r2, [r0]
_08029C84:
	mov r0, #0
_08029C86:
	pop {r4}
	pop {r1}
	bx r1
_08029C8C:
	.4byte 0x04000050
_08029C90:
	.4byte 0x03000112
_08029C94:
	.4byte 0x03000114
_08029C98:
	.4byte 0x04000054
	THUMB_FUNC_END sub_08029C20

	THUMB_FUNC_START sub_08029C9C
sub_08029C9C: @ 0x08029C9C
	push {lr}
	ldrh r3, [r0, #48]
	ldrh r1, [r0, #50]
	ldrh r2, [r0, #52]
	add r0, r3, #0
	bl sub_08029CDC
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08029C9C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029CB0
sub_08029CB0: @ 0x08029CB0
	ldr r1, _08029CD0  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029CD4  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029CD8  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
_08029CD0:
	.4byte 0x03000110
_08029CD4:
	.4byte gUnknown_03000C28
_08029CD8:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029CB0

	THUMB_FUNC_START sub_08029CDC
sub_08029CDC: @ 0x08029CDC
	push {r4,r5,lr}
	ldr r4, _08029D24  @ =0x04000048
	ldr r5, _08029D28  @ =0x00001010
	add r3, r5, #0
	strh r3, [r4]
	add r4, r4, #2
	add r5, r5, #47
	add r3, r5, #0
	strh r3, [r4]
	ldr r4, _08029D2C  @ =0x03000110
	mov r3, #31
	strb r3, [r4]
	ldr r4, _08029D30  @ =gUnknown_03000C28
	mov r3, #1
	strb r3, [r4]
	ldr r4, _08029D34  @ =0x03000111
	mov r3, #5
	strb r3, [r4]
	ldr r3, _08029D38  @ =0x03000112
	strh r0, [r3]
	ldr r0, _08029D3C  @ =0x03000114
	strh r1, [r0]
	ldr r0, _08029D40  @ =0x03000116
	strh r2, [r0]
	ldr r1, _08029D44  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_08029D24:
	.4byte 0x04000048
_08029D28:
	.4byte 0x00001010
_08029D2C:
	.4byte 0x03000110
_08029D30:
	.4byte gUnknown_03000C28
_08029D34:
	.4byte 0x03000111
_08029D38:
	.4byte 0x03000112
_08029D3C:
	.4byte 0x03000114
_08029D40:
	.4byte 0x03000116
_08029D44:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029CDC

	THUMB_FUNC_START sub_08029D48
sub_08029D48: @ 0x08029D48
	ldr r1, _08029D70  @ =0x03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029D74  @ =0x03000111
	mov r0, #4
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029D78  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029D7C  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029D70:
	.4byte 0x03000110
_08029D74:
	.4byte 0x03000111
_08029D78:
	.4byte 0x00007FFF
_08029D7C:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029D48

	THUMB_FUNC_START sub_08029D80
sub_08029D80: @ 0x08029D80
	ldr r1, _08029DA8  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029DAC  @ =0x03000111
	mov r0, #0
	strb r0, [r1]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _08029DB0  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DB4  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #4
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DA8:
	.4byte 0x03000110
_08029DAC:
	.4byte 0x03000111
_08029DB0:
	.4byte 0x00007FFF
_08029DB4:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029D80

	THUMB_FUNC_START sub_08029DB8
sub_08029DB8: @ 0x08029DB8
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _08029DF8  @ =0x04000048
	ldr r2, _08029DFC  @ =0x00001010
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r3, _08029E00  @ =0x0000103F
	add r0, r3, #0
	strh r0, [r1]
	add r1, r1, #6
	mov r0, #255
	strh r0, [r1]
	ldr r0, _08029E04  @ =0x04000052
	mov r2, #0
	strh r2, [r0]
	ldr r1, _08029E08  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E0C  @ =0x04000054
	mov r0, #31
	strh r0, [r1]
	ldr r0, _08029E10  @ =gUnknown_03000C28
	strb r2, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_08029DF8:
	.4byte 0x04000048
_08029DFC:
	.4byte 0x00001010
_08029E00:
	.4byte 0x0000103F
_08029E04:
	.4byte 0x04000052
_08029E08:
	.4byte 0x03000110
_08029E0C:
	.4byte 0x04000054
_08029E10:
	.4byte gUnknown_03000C28
	THUMB_FUNC_END sub_08029DB8

	THUMB_FUNC_START sub_08029E14
sub_08029E14: @ 0x08029E14
	ldr r1, _08029E3C  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	ldr r1, _08029E40  @ =gUnknown_03000C28
	mov r0, #1
	strb r0, [r1]
	ldr r1, _08029E44  @ =0x03000111
	mov r0, #5
	strb r0, [r1]
	ldr r1, _08029E48  @ =0x04000050
	mov r0, #255
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #31
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E3C:
	.4byte 0x03000110
_08029E40:
	.4byte gUnknown_03000C28
_08029E44:
	.4byte 0x03000111
_08029E48:
	.4byte 0x04000050
	THUMB_FUNC_END sub_08029E14

	THUMB_FUNC_START sub_08029E4C
sub_08029E4C: @ 0x08029E4C
	ldr r1, _08029E64  @ =0x03000110
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08029E68  @ =0x04000054
	mov r0, #0
	strh r0, [r1]
	sub r1, r1, #4
	ldr r0, _08029E6C  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029E64:
	.4byte 0x03000110
_08029E68:
	.4byte 0x04000054
_08029E6C:
	.4byte 0x03000112
	THUMB_FUNC_END sub_08029E4C

	THUMB_FUNC_START sub_08029E70
sub_08029E70: @ 0x08029E70
	ldr r1, _08029E78  @ =0x03000110
	mov r0, #31
	strb r0, [r1]
	bx lr
_08029E78:
	.4byte 0x03000110
	THUMB_FUNC_END sub_08029E70

	THUMB_FUNC_START sub_08029E7C
sub_08029E7C: @ 0x08029E7C
	ldr r0, _08029EA0  @ =gUnknown_03000C28
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08029EA4  @ =0x03000110
	strb r1, [r0]
	ldr r1, _08029EA8  @ =0x04000050
	ldr r0, _08029EAC  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029EB0  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_08029EA0:
	.4byte gUnknown_03000C28
_08029EA4:
	.4byte 0x03000110
_08029EA8:
	.4byte 0x04000050
_08029EAC:
	.4byte 0x03000112
_08029EB0:
	.4byte 0x03000114
	THUMB_FUNC_END sub_08029E7C

	THUMB_FUNC_START sub_08029EB4
sub_08029EB4: @ 0x08029EB4
	push {lr}
	ldr r3, _08029EE8  @ =gUnknown_03000C28
	ldrb r0, [r3]
	cmp r0, #0
	beq _08029F1C
	ldr r2, _08029EEC  @ =0x03000110
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bgt _08029EFC
	mov r0, #0
	strb r0, [r3]
	strb r0, [r2]
	ldr r1, _08029EF0  @ =0x04000050
	ldr r0, _08029EF4  @ =0x03000112
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	ldr r0, _08029EF8  @ =0x03000114
	ldrh r0, [r0]
	strh r0, [r1]
	add r1, r1, #2
	mov r0, #0
	strh r0, [r1]
	b _08029F1C
_08029EE8:
	.4byte gUnknown_03000C28
_08029EEC:
	.4byte 0x03000110
_08029EF0:
	.4byte 0x04000050
_08029EF4:
	.4byte 0x03000112
_08029EF8:
	.4byte 0x03000114
_08029EFC:
	sub r0, r1, #4
	strb r0, [r2]
	lsl r0, r0, #24
	cmp r0, #0
	bge _08029F0A
	mov r0, #0
	strb r0, [r2]
_08029F0A:
	ldr r1, _08029F18  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r2, r0]
	strh r0, [r1]
	mov r0, #1
	b _08029F1E
	.byte 0x00
	.byte 0x00
_08029F18:
	.4byte 0x04000054
_08029F1C:
	mov r0, #0
_08029F1E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08029EB4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029F24
sub_08029F24: @ 0x08029F24
	push {lr}
	ldr r3, _08029F38  @ =0x03000110
	ldrb r1, [r3]
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #30
	bgt _08029F3C
	add r0, r1, #1
	strb r0, [r3]
	b _08029F62
_08029F38:
	.4byte 0x03000110
_08029F3C:
	ldr r1, _08029F50  @ =0x03000111
	ldrb r0, [r1]
	mov r2, #0
	ldrsb r2, [r1, r2]
	cmp r2, #0
	beq _08029F54
	sub r0, r0, #1
	strb r0, [r1]
	b _08029F62
	.byte 0x00
	.byte 0x00
_08029F50:
	.4byte 0x03000111
_08029F54:
	mov r0, #31
	strb r0, [r3]
	mov r0, #128
	lsl r0, r0, #19
	strh r2, [r0]
	bl sub_08007154
_08029F62:
	ldr r0, _08029F74  @ =0x04000054
	ldr r1, _08029F78  @ =0x03000110
	ldrb r1, [r1]
	lsl r1, r1, #24
	asr r1, r1, #24
	strh r1, [r0]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08029F74:
	.4byte 0x04000054
_08029F78:
	.4byte 0x03000110
	THUMB_FUNC_END sub_08029F24

	THUMB_FUNC_START sub_08029F7C
sub_08029F7C: @ 0x08029F7C
	push {lr}
	ldr r0, _08029F94  @ =0x03000110
	ldrb r2, [r0]
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #30
	bgt _08029F98
	add r0, r2, #1
	strb r0, [r3]
	b _08029FB4
	.byte 0x00
	.byte 0x00
_08029F94:
	.4byte 0x03000110
_08029F98:
	ldr r1, _08029FAC  @ =0x03000111
	ldrb r2, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08029FB0
	mov r0, #31
	strb r0, [r3]
	mov r0, #1
	b _08029FBE
_08029FAC:
	.4byte 0x03000111
_08029FB0:
	sub r0, r2, #1
	strb r0, [r1]
_08029FB4:
	ldr r1, _08029FC4  @ =0x04000054
	mov r0, #0
	ldrsb r0, [r3, r0]
	strh r0, [r1]
	mov r0, #0
_08029FBE:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08029FC4:
	.4byte 0x04000054
	THUMB_FUNC_END sub_08029F7C

	THUMB_FUNC_START sub_08029FC8
sub_08029FC8: @ 0x08029FC8
	bx lr
	THUMB_FUNC_END sub_08029FC8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029FCC
sub_08029FCC: @ 0x08029FCC
	bx lr
	THUMB_FUNC_END sub_08029FCC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08029FD0
sub_08029FD0: @ 0x08029FD0
	push {r4-r7,lr}
	sub sp, sp, #8
	bl IdentifyFlash
	lsl r0, r0, #16
	cmp r0, #0
	bne _0802A090
	ldr r0, _0802A010  @ =0x03000124
	mov r1, #1
	str r1, [r0]
	ldr r1, _0802A014  @ =gUnknown_08076D70
	mov r0, #2
	bl SetFlashTimerIntr
	mov r6, #0
	mov r5, #0
	mov r4, sp
	ldr r7, _0802A018  @ =0x0000FFFC
_08029FF4:
	ldr r0, _0802A01C  @ =0x0300012A
	strh r5, [r0]
	bl sub_0802A0A8
	cmp r0, #0
	beq _0802A024
	ldr r0, _0802A020  @ =0x03000128
	ldrh r0, [r0]
	str r0, [r4]
	cmp r0, r7
	bls _0802A02A
	mov r6, #1
	b _0802A02A
	.byte 0x00
	.byte 0x00
_0802A010:
	.4byte 0x03000124
_0802A014:
	.4byte gUnknown_08076D70
_0802A018:
	.4byte 0x0000FFFC
_0802A01C:
	.4byte 0x0300012A
_0802A020:
	.4byte 0x03000128
_0802A024:
	mov r0, #1
	neg r0, r0
	str r0, [r4]
_0802A02A:
	add r4, r4, #4
	add r5, r5, #1
	cmp r5, #1
	bls _08029FF4
	ldr r0, _0802A080  @ =0x03000124
	mov r12, r0
	ldr r1, _0802A084  @ =0x0300012A
	ldr r7, _0802A088  @ =0x03000128
	cmp r6, #0
	beq _0802A058
	mov r5, #0
	mov r3, #128
	lsl r3, r3, #9
	mov r2, sp
_0802A046:
	ldr r0, [r2]
	cmp r0, #2
	bhi _0802A050
	add r0, r0, r3
	str r0, [r2]
_0802A050:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A046
_0802A058:
	mov r3, #0
	ldr r4, _0802A08C  @ =0x0000FFFF
	mov r5, #0
	mov r6, #1
	neg r6, r6
	mov r2, sp
_0802A064:
	ldr r0, [r2]
	cmp r0, r6
	beq _0802A072
	cmp r0, r3
	bcc _0802A072
	add r4, r5, #0
	add r3, r0, #0
_0802A072:
	add r2, r2, #4
	add r5, r5, #1
	cmp r5, #1
	bls _0802A064
	strh r3, [r7]
	strh r4, [r1]
	b _0802A098
_0802A080:
	.4byte 0x03000124
_0802A084:
	.4byte 0x0300012A
_0802A088:
	.4byte 0x03000128
_0802A08C:
	.4byte 0x0000FFFF
_0802A090:
	ldr r1, _0802A0A4  @ =0x03000124
	mov r0, #0
	str r0, [r1]
	mov r12, r1
_0802A098:
	mov r1, r12
	ldr r0, [r1]
	add sp, sp, #8
	pop {r4-r7}
	pop {r1}
	bx r1
_0802A0A4:
	.4byte 0x03000124
	THUMB_FUNC_END sub_08029FD0

	THUMB_FUNC_START sub_0802A0A8
sub_0802A0A8: @ 0x0802A0A8
	push {r4-r6,lr}
	ldr r5, _0802A134  @ =0x02032FF8
	ldr r0, _0802A138  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A15C
	ldr r2, _0802A13C  @ =0x0300012A
	ldrh r1, [r2]
	ldr r0, _0802A140  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A15C
	ldrh r0, [r2]
	ldr r6, _0802A144  @ =0x02032000
	mov r4, #128
	lsl r4, r4, #5
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A15C
	ldrb r0, [r5, #1]
	cmp r0, #75
	bne _0802A15C
	ldr r0, _0802A148  @ =0x02032FFA
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	cmp r1, r4
	bne _0802A15C
	ldr r0, _0802A14C  @ =0x02032FFE
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	add r4, r1, #0
	orr r4, r4, r0
	mov r1, #0
	add r5, r6, #0
	mov r3, #0
	ldr r2, _0802A150  @ =0x00000FF7
_0802A102:
	add r0, r5, r3
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r3, r0
	add r0, r1, r0
	lsl r0, r0, #16
	lsr r1, r0, #16
	add r0, r3, #1
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, r2
	bls _0802A102
	cmp r4, r1
	bne _0802A15C
	ldr r0, _0802A154  @ =0x02032FFC
	ldrb r1, [r0]
	add r0, r0, #1
	ldrb r0, [r0]
	lsl r0, r0, #8
	orr r1, r1, r0
	ldr r0, _0802A158  @ =0x03000128
	strh r1, [r0]
	mov r0, #1
	b _0802A15E
	.byte 0x00
	.byte 0x00
_0802A134:
	.4byte 0x02032FF8
_0802A138:
	.4byte 0x03000124
_0802A13C:
	.4byte 0x0300012A
_0802A140:
	.4byte 0x0000FFFF
_0802A144:
	.4byte 0x02032000
_0802A148:
	.4byte 0x02032FFA
_0802A14C:
	.4byte 0x02032FFE
_0802A150:
	.4byte 0x00000FF7
_0802A154:
	.4byte 0x02032FFC
_0802A158:
	.4byte 0x03000128
_0802A15C:
	mov r0, #0
_0802A15E:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A0A8

	THUMB_FUNC_START sub_0802A164
sub_0802A164: @ 0x0802A164
	push {r4-r6,lr}
	ldr r1, _0802A174  @ =0x02032FF8
	ldr r0, _0802A178  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A17C
	mov r0, #0
	b _0802A28A
_0802A174:
	.4byte 0x02032FF8
_0802A178:
	.4byte 0x03000124
_0802A17C:
	mov r0, #68
	strb r0, [r1]
	mov r0, #75
	strb r0, [r1, #1]
	ldr r3, _0802A19C  @ =0x0300012A
	ldrh r1, [r3]
	ldr r0, _0802A1A0  @ =0x0000FFFF
	cmp r1, r0
	bne _0802A1A8
	ldr r1, _0802A1A4  @ =0x03000128
	mov r0, #0
	strh r0, [r1]
	strh r0, [r3]
	add r2, r1, #0
	b _0802A1BC
	.byte 0x00
	.byte 0x00
_0802A19C:
	.4byte 0x0300012A
_0802A1A0:
	.4byte 0x0000FFFF
_0802A1A4:
	.4byte 0x03000128
_0802A1A8:
	ldr r2, _0802A208  @ =0x03000128
	ldrh r0, [r2]
	add r0, r0, #1
	strh r0, [r2]
	ldrh r1, [r3]
	add r1, r1, #1
	lsr r0, r1, #1
	lsl r0, r0, #1
	sub r1, r1, r0
	strh r1, [r3]
_0802A1BC:
	ldr r1, _0802A20C  @ =0x02032FFA
	mov r0, #0
	strb r0, [r1]
	add r1, r1, #1
	mov r0, #16
	strb r0, [r1]
	ldrh r0, [r2]
	add r1, r1, #1
	strb r0, [r1]
	add r1, r1, #1
	lsr r0, r0, #8
	strb r0, [r1]
	mov r2, #0
	ldr r4, _0802A210  @ =0x02032000
	mov r1, #0
	ldr r3, _0802A214  @ =0x00000FF7
_0802A1DC:
	add r0, r4, r1
	ldrb r0, [r0]
	add r0, r0, #1
	add r0, r1, r0
	add r0, r2, r0
	lsl r0, r0, #16
	lsr r2, r0, #16
	add r0, r1, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, r3
	bls _0802A1DC
	ldr r0, _0802A218  @ =0x02032FFE
	strb r2, [r0]
	ldr r1, _0802A21C  @ =0x02032FFF
	lsr r0, r2, #8
	strb r0, [r1]
	mov r4, #0
	ldr r6, _0802A220  @ =0x0300012A
	ldr r5, _0802A210  @ =0x02032000
	b _0802A22C
	.byte 0x00
	.byte 0x00
_0802A208:
	.4byte 0x03000128
_0802A20C:
	.4byte 0x02032FFA
_0802A210:
	.4byte 0x02032000
_0802A214:
	.4byte 0x00000FF7
_0802A218:
	.4byte 0x02032FFE
_0802A21C:
	.4byte 0x02032FFF
_0802A220:
	.4byte 0x0300012A
_0802A224:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A288
_0802A22C:
	ldr r1, _0802A250  @ =0x03001F38
	ldrh r0, [r6]
	ldr r2, [r1]
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A254  @ =0x000080FF
	cmp r1, r0
	beq _0802A27E
	cmp r1, r0
	bgt _0802A258
	cmp r1, #0
	beq _0802A26C
	sub r0, r0, #251
	b _0802A260
	.byte 0x00
	.byte 0x00
_0802A250:
	.4byte 0x03001F38
_0802A254:
	.4byte 0x000080FF
_0802A258:
	ldr r0, _0802A268  @ =0x0000C001
	cmp r1, r0
	beq _0802A27E
	add r0, r0, #1
_0802A260:
	cmp r1, r0
	beq _0802A27E
	b _0802A282
	.byte 0x00
	.byte 0x00
_0802A268:
	.4byte 0x0000C001
_0802A26C:
	ldrh r0, [r6]
	add r1, r5, #0
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A284
	mov r1, #1
	b _0802A288
_0802A27E:
	mov r1, #0
	b _0802A224
_0802A282:
	mov r1, #0
_0802A284:
	cmp r1, #0
	beq _0802A224
_0802A288:
	add r0, r1, #0
_0802A28A:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A164

	THUMB_FUNC_START sub_0802A290
sub_0802A290: @ 0x0802A290
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _0802A2C0  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A354
	ldr r1, _0802A2C4  @ =0x0300011C
	cmp r3, #0
	blt _0802A2AE
	ldr r0, _0802A2C8  @ =0x03000120
	str r3, [r0]
	ldr r0, _0802A2CC  @ =0x03000118
	str r4, [r0]
	str r2, [r1]
_0802A2AE:
	ldr r0, [r1]
	cmp r0, #0
	ble _0802A354
	mov r4, #0
	ldr r7, _0802A2D0  @ =0x03001F38
	ldr r6, _0802A2C8  @ =0x03000120
	ldr r5, _0802A2CC  @ =0x03000118
	b _0802A2DC
	.byte 0x00
	.byte 0x00
_0802A2C0:
	.4byte 0x03000124
_0802A2C4:
	.4byte 0x0300011C
_0802A2C8:
	.4byte 0x03000120
_0802A2CC:
	.4byte 0x03000118
_0802A2D0:
	.4byte 0x03001F38
_0802A2D4:
	add r0, r4, #0
	add r4, r4, #1
	cmp r0, #1
	bhi _0802A32E
_0802A2DC:
	ldrh r0, [r6]
	ldr r1, [r5]
	ldr r2, [r7]
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A2FC  @ =0x000080FF
	cmp r1, r0
	beq _0802A324
	cmp r1, r0
	bgt _0802A300
	cmp r1, #0
	beq _0802A314
	sub r0, r0, #251
	b _0802A308
_0802A2FC:
	.4byte 0x000080FF
_0802A300:
	ldr r0, _0802A310  @ =0x0000C001
	cmp r1, r0
	beq _0802A324
	add r0, r0, #1
_0802A308:
	cmp r1, r0
	beq _0802A324
	b _0802A328
	.byte 0x00
	.byte 0x00
_0802A310:
	.4byte 0x0000C001
_0802A314:
	ldrh r0, [r6]
	ldr r1, [r5]
	bl VerifyFlashSector
	mov r1, #0
	cmp r0, #0
	bne _0802A32A
	b _0802A332
_0802A324:
	mov r1, #0
	b _0802A2D4
_0802A328:
	mov r1, #0
_0802A32A:
	cmp r1, #0
	beq _0802A2D4
_0802A32E:
	cmp r1, #0
	beq _0802A368
_0802A332:
	ldr r1, _0802A358  @ =0x03000120
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldr r1, _0802A35C  @ =0x03000118
	ldr r0, [r1]
	mov r2, #128
	lsl r2, r2, #5
	add r0, r0, r2
	str r0, [r1]
	ldr r1, _0802A360  @ =0x0300011C
	ldr r0, [r1]
	ldr r2, _0802A364  @ =0xFFFFF000
	add r0, r0, r2
	str r0, [r1]
	cmp r0, #0
	bgt _0802A368
_0802A354:
	mov r0, #1
	b _0802A36A
_0802A358:
	.4byte 0x03000120
_0802A35C:
	.4byte 0x03000118
_0802A360:
	.4byte 0x0300011C
_0802A364:
	.4byte 0xFFFFF000
_0802A368:
	mov r0, #0
_0802A36A:
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A290

	THUMB_FUNC_START sub_0802A370
sub_0802A370: @ 0x0802A370
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802A38C  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	bne _0802A390
	mov r0, #0
	b _0802A41E
	.byte 0x00
	.byte 0x00
_0802A38C:
	.4byte 0x03000124
_0802A390:
	mov r0, #0
	mov r9, r0
	cmp r6, #0
	ble _0802A41C
_0802A398:
	lsl r1, r7, #16
	mov r8, r1
	b _0802A3A8
_0802A39E:
	mov r0, r9
	mov r1, #1
	add r9, r9, r1
	cmp r0, #1
	bhi _0802A408
_0802A3A8:
	ldr r0, _0802A3D0  @ =0x03001F38
	mov r1, r8
	lsr r4, r1, #16
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl _call_via_r2
	lsl r0, r0, #16
	lsr r1, r0, #16
	ldr r0, _0802A3D4  @ =0x000080FF
	cmp r1, r0
	beq _0802A3FE
	cmp r1, r0
	bgt _0802A3D8
	cmp r1, #0
	beq _0802A3EC
	sub r0, r0, #251
	b _0802A3E0
	.byte 0x00
	.byte 0x00
_0802A3D0:
	.4byte 0x03001F38
_0802A3D4:
	.4byte 0x000080FF
_0802A3D8:
	ldr r0, _0802A3E8  @ =0x0000C001
	cmp r1, r0
	beq _0802A3FE
	add r0, r0, #1
_0802A3E0:
	cmp r1, r0
	beq _0802A3FE
	b _0802A402
	.byte 0x00
	.byte 0x00
_0802A3E8:
	.4byte 0x0000C001
_0802A3EC:
	add r0, r4, #0
	add r1, r5, #0
	bl VerifyFlashSector
	mov r3, #0
	cmp r0, #0
	bne _0802A404
	mov r3, #1
	b _0802A40C
_0802A3FE:
	mov r3, #0
	b _0802A39E
_0802A402:
	mov r3, #0
_0802A404:
	cmp r3, #0
	beq _0802A39E
_0802A408:
	cmp r3, #0
	beq _0802A41C
_0802A40C:
	add r7, r7, #1
	mov r0, #128
	lsl r0, r0, #5
	add r5, r5, r0
	ldr r1, _0802A42C  @ =0xFFFFF000
	add r6, r6, r1
	cmp r6, #0
	bgt _0802A398
_0802A41C:
	add r0, r3, #0
_0802A41E:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802A42C:
	.4byte 0xFFFFF000
	THUMB_FUNC_END sub_0802A370

	THUMB_FUNC_START sub_0802A430
sub_0802A430: @ 0x0802A430
	push {r4,r5,lr}
	add r3, r0, #0
	add r4, r1, #0
	add r5, r2, #0
	ldr r0, _0802A454  @ =0x03000124
	ldr r0, [r0]
	cmp r0, #0
	beq _0802A44E
	lsl r0, r3, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ReadFlash
_0802A44E:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802A454:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A430

	THUMB_FUNC_START sub_0802A458
sub_0802A458: @ 0x0802A458
	ldr r0, _0802A460  @ =0x03000124
	ldr r0, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802A460:
	.4byte 0x03000124
	THUMB_FUNC_END sub_0802A458

	THUMB_FUNC_START sub_0802A464
sub_0802A464: @ 0x0802A464
	push {r4-r6,lr}
	ldr r6, _0802A478  @ =0x02032000
	ldr r5, _0802A47C  @ =0x02032FF8
	ldr r0, _0802A480  @ =0x0300012A
	ldrh r1, [r0]
	ldr r0, _0802A484  @ =0x0000FFFF
	cmp r1, r0
	beq _0802A488
_0802A474:
	mov r0, #0
	b _0802A4AE
_0802A478:
	.4byte 0x02032000
_0802A47C:
	.4byte 0x02032FF8
_0802A480:
	.4byte 0x0300012A
_0802A484:
	.4byte 0x0000FFFF
_0802A488:
	mov r4, #0
_0802A48A:
	lsl r0, r4, #16
	lsr r0, r0, #16
	mov r1, #0
	add r2, r6, #0
	mov r3, #128
	lsl r3, r3, #5
	bl ReadFlash
	ldrb r0, [r5]
	cmp r0, #68
	bne _0802A4A6
	ldrb r0, [r5, #1]
	cmp r0, #75
	beq _0802A474
_0802A4A6:
	add r4, r4, #1
	cmp r4, #1
	ble _0802A48A
	mov r0, #1
_0802A4AE:
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802A464

	THUMB_FUNC_START sub_0802A4B4
sub_0802A4B4: @ 0x0802A4B4
	push {r4,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802A4F8  @ =0x03000130
	mov r4, #1
	strb r4, [r0]
	ldr r1, _0802A4FC  @ =0x03000131
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802A500  @ =0x03000132
	mov r0, #2
	strb r0, [r1]
	mov r0, #5
	mov r1, #2
	bl sub_08032788
	ldr r0, _0802A504  @ =gUnknown_03001938
	ldr r1, [r0]
	mov r2, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, #0
	beq _0802A50C
	ldr r1, _0802A508  @ =0x03000133
	mov r0, #0
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A4F8:
	.4byte 0x03000130
_0802A4FC:
	.4byte 0x03000131
_0802A500:
	.4byte 0x03000132
_0802A504:
	.4byte gUnknown_03001938
_0802A508:
	.4byte 0x03000133
_0802A50C:
	mov r3, #4
	add r0, r1, #0
	and r0, r0, r3
	cmp r0, #0
	bne _0802A59E
	mov r4, #8
	add r0, r1, #0
	and r0, r0, r4
	cmp r0, #0
	beq _0802A52C
	ldr r0, _0802A528  @ =0x03000133
	strb r2, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A528:
	.4byte 0x03000133
_0802A52C:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802A540
	ldr r1, _0802A53C  @ =0x03000133
	mov r0, #3
	strb r0, [r1]
	b _0802A5A2
_0802A53C:
	.4byte 0x03000133
_0802A540:
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802A554
	ldr r0, _0802A550  @ =0x03000133
	strb r3, [r0]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A550:
	.4byte 0x03000133
_0802A554:
	mov r0, #64
	and r0, r0, r1
	cmp r0, #0
	beq _0802A568
	ldr r1, _0802A564  @ =0x03000133
	mov r0, #5
	strb r0, [r1]
	b _0802A5A2
_0802A564:
	.4byte 0x03000133
_0802A568:
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _0802A57C
	ldr r1, _0802A578  @ =0x03000133
	mov r0, #6
	strb r0, [r1]
	b _0802A5A2
_0802A578:
	.4byte 0x03000133
_0802A57C:
	mov r0, #128
	lsl r0, r0, #5
	and r0, r0, r1
	cmp r0, #0
	beq _0802A594
	ldr r1, _0802A590  @ =0x03000133
	mov r0, #7
	strb r0, [r1]
	b _0802A5A2
	.byte 0x00
	.byte 0x00
_0802A590:
	.4byte 0x03000133
_0802A594:
	mov r0, #128
	lsl r0, r0, #7
	and r1, r1, r0
	cmp r1, #0
	beq _0802A5A2
_0802A59E:
	ldr r0, _0802A5A8  @ =0x03000133
	strb r4, [r0]
_0802A5A2:
	pop {r4}
	pop {r0}
	bx r0
_0802A5A8:
	.4byte 0x03000133
	THUMB_FUNC_END sub_0802A4B4

	THUMB_FUNC_START sub_0802A5AC
sub_0802A5AC: @ 0x0802A5AC
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802A5F0  @ =0x03000130
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802A5FC
	ldr r2, _0802A5F4  @ =0x03000131
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A5F8  @ =0x03000132
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #8
	bls _0802A5D6
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802A5D6:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #5
	bls _0802A5E8
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A5E8:
	cmp r3, #2
	bne _0802A638
	strb r3, [r5]
	b _0802A638
_0802A5F0:
	.4byte 0x03000130
_0802A5F4:
	.4byte 0x03000131
_0802A5F8:
	.4byte 0x03000132
_0802A5FC:
	cmp r0, #3
	bne _0802A638
	ldr r2, _0802A640  @ =0x03000131
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802A644  @ =0x03000132
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #3
	bhi _0802A61E
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802A61E:
	lsl r0, r1, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802A630
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802A630:
	cmp r3, #2
	bne _0802A638
	mov r0, #0
	strb r0, [r5]
_0802A638:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802A640:
	.4byte 0x03000131
_0802A644:
	.4byte 0x03000132
	THUMB_FUNC_END sub_0802A5AC

	THUMB_FUNC_START sub_0802A648
sub_0802A648: @ 0x0802A648
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802A76C  @ =0x040000D4
	ldr r0, _0802A770  @ =gUnknown_082E4C4C
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802A774  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802A778  @ =0x84000080
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #16
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #2
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802A77C  @ =0x03000131
	ldrb r1, [r4]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802A780  @ =0x03000132
	ldrb r3, [r2]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r0, #0
	mov r8, r0
	cmp r8, r3
	bcs _0802A75C
_0802A6A6:
	mov r6, #0
	mov r1, #1
	add r1, r1, r8
	mov r10, r1
	ldr r2, _0802A77C  @ =0x03000131
	ldrb r2, [r2]
	cmp r6, r2
	bcs _0802A74C
	ldr r7, _0802A76C  @ =0x040000D4
	ldr r4, _0802A784  @ =gOamData
	ldr r3, _0802A788  @ =0x000003FF
	ldr r0, [sp]
	and r0, r0, r3
	mov r12, r0
	ldr r1, _0802A78C  @ =gUnknown_082E4C44
	mov r9, r1
_0802A6C6:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802A790  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802A794  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802A798  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802A79C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	mov r2, r8
	lsl r0, r2, #5
	ldr r3, [sp, #8]
	add r0, r0, r3
	strb r0, [r1]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r0, _0802A77C  @ =0x03000131
	ldrb r0, [r0]
	cmp r6, r0
	bcc _0802A6C6
_0802A74C:
	mov r1, r10
	lsl r0, r1, #16
	lsr r0, r0, #16
	mov r8, r0
	ldr r2, _0802A780  @ =0x03000132
	ldrb r2, [r2]
	cmp r8, r2
	bcc _0802A6A6
_0802A75C:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A76C:
	.4byte 0x040000D4
_0802A770:
	.4byte gUnknown_082E4C4C
_0802A774:
	.4byte 0x06010000
_0802A778:
	.4byte 0x84000080
_0802A77C:
	.4byte 0x03000131
_0802A780:
	.4byte 0x03000132
_0802A784:
	.4byte gOamData
_0802A788:
	.4byte 0x000003FF
_0802A78C:
	.4byte gUnknown_082E4C44
_0802A790:
	.4byte 0x84000002
_0802A794:
	.4byte 0xFFFFFC00
_0802A798:
	.4byte 0x000001FF
_0802A79C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A648

	THUMB_FUNC_START sub_0802A7A0
sub_0802A7A0: @ 0x0802A7A0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r4, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	ldr r0, _0802A8C4  @ =gUnknown_08079F00
	mov r8, r0
	ldr r0, _0802A8C8  @ =gUnknown_08079ED0
	ldr r3, [r0]
	mov r1, #0
	mov r12, r1
	ldr r5, _0802A8CC  @ =0x040000D4
	ldr r2, _0802A8D0  @ =0x03000138
	mov r9, r2
_0802A7C4:
	ldr r0, [r3, #20]
	str r0, [r5]
	ldrh r0, [r6]
	ldr r1, _0802A8D4  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldrh r0, [r3, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	mov r0, r12
	lsl r2, r0, #16
	asr r2, r2, #16
	lsl r0, r2, #1
	add r0, r0, r9
	ldrh r1, [r7]
	strh r1, [r0]
	ldrh r0, [r3, #6]
	ldrh r1, [r7]
	add r0, r0, r1
	strh r0, [r7]
	ldrh r0, [r3, #8]
	ldrh r1, [r6]
	add r0, r0, r1
	strh r0, [r6]
	add r2, r2, #1
	lsl r2, r2, #16
	add r3, r3, #24
	lsr r0, r2, #16
	mov r12, r0
	asr r2, r2, #16
	cmp r2, #11
	ble _0802A7C4
	mov r1, #0
	str r1, [sp]
	ldr r6, _0802A8CC  @ =0x040000D4
	ldr r5, _0802A8D8  @ =gOamData
	ldr r2, _0802A8D0  @ =0x03000138
	mov r12, r2
	ldr r3, _0802A8DC  @ =0xFFFFFE00
	mov r10, r3
	mov r7, #13
	neg r7, r7
	mov r9, r7
_0802A822:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #16]
	str r0, [r6]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r6, #4]
	ldr r0, _0802A8E0  @ =0x84000002
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	mov r7, r8
	ldr r0, [r7, #4]
	lsl r0, r0, #1
	add r0, r0, r12
	lsr r1, r1, #22
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r7, _0802A8E4  @ =0x000003FF
	add r0, r7, #0
	and r1, r1, r0
	ldr r0, _0802A8E8  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r0, r8
	mov r3, #8
	ldrsh r2, [r0, r3]
	ldr r7, _0802A8EC  @ =0x000001FF
	add r0, r7, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	mov r0, r10
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r2, r8
	ldrh r1, [r2, #10]
	strb r1, [r0]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, r9
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r3, [sp]
	lsl r0, r3, #16
	mov r7, #128
	lsl r7, r7, #9
	add r0, r0, r7
	lsr r0, r0, #16
	str r0, [sp]
	mov r0, #12
	add r8, r8, r0
	ldr r1, [sp]
	cmp r1, #42
	bls _0802A822
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
_0802A8C4:
	.4byte gUnknown_08079F00
_0802A8C8:
	.4byte gUnknown_08079ED0
_0802A8CC:
	.4byte 0x040000D4
_0802A8D0:
	.4byte 0x03000138
_0802A8D4:
	.4byte 0x06010000
_0802A8D8:
	.4byte gOamData
_0802A8DC:
	.4byte 0xFFFFFE00
_0802A8E0:
	.4byte 0x84000002
_0802A8E4:
	.4byte 0x000003FF
_0802A8E8:
	.4byte 0xFFFFFC00
_0802A8EC:
	.4byte 0x000001FF
	THUMB_FUNC_END sub_0802A7A0

	THUMB_FUNC_START sub_0802A8F0
sub_0802A8F0: @ 0x0802A8F0
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	add r6, r0, #0
	mov r9, r1
	mov r8, r2
	mov r2, #0
	ldr r1, _0802A9F4  @ =gUnknown_0807A92C
	ldr r3, _0802A9F8  @ =0x03000133
	ldrb r0, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	mov r4, #4
	ldrsh r0, [r0, r4]
	cmp r2, r0
	bge _0802A9E6
	mov r10, r3
	ldr r7, _0802A9FC  @ =0x040000D4
	ldr r0, _0802AA00  @ =gOamData
	mov r12, r0
_0802A91C:
	mov r3, r10
	ldrb r1, [r3]
	lsl r1, r1, #3
	ldr r4, _0802A9F4  @ =gUnknown_0807A92C
	add r1, r1, r4
	lsl r5, r2, #16
	asr r5, r5, #16
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r4, [r1]
	add r4, r4, r0
	ldr r0, [r4, #20]
	str r0, [r7]
	mov r1, r8
	ldrh r0, [r1]
	ldr r1, _0802AA04  @ =0x06010000
	add r0, r0, r1
	str r0, [r7, #4]
	ldrh r0, [r4, #8]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r4, #16]
	str r0, [r7]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	str r0, [r7, #4]
	ldr r0, _0802AA08  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r12
	mov r3, r9
	ldrh r0, [r3]
	ldr r1, _0802AA0C  @ =0x000003FF
	and r1, r1, r0
	ldrh r3, [r2, #4]
	ldr r0, _0802AA10  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	mov r0, #0
	ldrsh r2, [r4, r0]
	ldr r3, _0802AA14  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802AA18  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r6]
	lsl r0, r0, #3
	add r0, r0, r12
	ldrh r1, [r4, #2]
	strb r1, [r0]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r12
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4, #6]
	mov r1, r9
	ldrh r1, [r1]
	add r0, r0, r1
	mov r2, r9
	strh r0, [r2]
	ldrh r0, [r4, #8]
	mov r3, r8
	ldrh r3, [r3]
	add r0, r0, r3
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r6]
	add r0, r0, #1
	strh r0, [r6]
	add r5, r5, #1
	lsl r5, r5, #16
	mov r1, r10
	ldrb r0, [r1]
	lsl r0, r0, #3
	ldr r2, _0802A9F4  @ =gUnknown_0807A92C
	add r0, r0, r2
	lsr r2, r5, #16
	asr r5, r5, #16
	mov r3, #4
	ldrsh r0, [r0, r3]
	cmp r5, r0
	blt _0802A91C
_0802A9E6:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802A9F4:
	.4byte gUnknown_0807A92C
_0802A9F8:
	.4byte 0x03000133
_0802A9FC:
	.4byte 0x040000D4
_0802AA00:
	.4byte gOamData
_0802AA04:
	.4byte 0x06010000
_0802AA08:
	.4byte 0x84000002
_0802AA0C:
	.4byte 0x000003FF
_0802AA10:
	.4byte 0xFFFFFC00
_0802AA14:
	.4byte 0x000001FF
_0802AA18:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802A8F0

	THUMB_FUNC_START sub_0802AA1C
sub_0802AA1C: @ 0x0802AA1C
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA1C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802AA28
sub_0802AA28: @ 0x0802AA28
	push {lr}
	sub sp, sp, #12
	bl sub_080331FC
	ldr r2, _0802AA4C  @ =0x03000130
	ldrb r3, [r2]
	cmp r3, #2
	bne _0802AA54
	ldr r0, _0802AA50  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802AA84
	mov r0, #3
	strb r0, [r2]
	b _0802AA84
	.byte 0x00
	.byte 0x00
_0802AA4C:
	.4byte 0x03000130
_0802AA50:
	.4byte gUnknown_030012E8
_0802AA54:
	cmp r3, #0
	bne _0802AA84
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AA8C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
	bl sub_08072118
_0802AA84:
	add sp, sp, #12
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AA8C:
	.4byte 0x00007FFF
	THUMB_FUNC_END sub_0802AA28

	THUMB_FUNC_START sub_0802AA90
sub_0802AA90: @ 0x0802AA90
	push {lr}
	bl sub_080088F0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA90

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802AA9C
sub_0802AA9C: @ 0x0802AA9C
	push {r4-r6,lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r0, _0802AACC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #17
	bne _0802AAE2
	ldr r0, _0802AAD0  @ =0x03000130
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802AAE2
	cmp r0, #2
	bne _0802AAD4
	add r0, r4, #0
	bl sub_0802A8F0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A7A0
	b _0802AAE2
	.byte 0x00
	.byte 0x00
_0802AACC:
	.4byte gMainState
_0802AAD0:
	.4byte 0x03000130
_0802AAD4:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802A648
	bl sub_0802A5AC
_0802AAE2:
	pop {r4-r6}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802AA9C

	THUMB_FUNC_START sub_0802AAE8
sub_0802AAE8: @ 0x0802AAE8
	push {r4-r7,lr}
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #128
	lsl r3, r3, #8
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _0802AB18  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AB24
	ldr r1, _0802AB1C  @ =0x03000154
	mov r0, #4
	strb r0, [r1]
	ldr r1, _0802AB20  @ =0x03000155
	mov r0, #2
	strb r0, [r1]
	mov r0, #4
	mov r1, #2
	bl sub_08032788
	b _0802AC82
_0802AB18:
	.4byte gMainState
_0802AB1C:
	.4byte 0x03000154
_0802AB20:
	.4byte 0x03000155
_0802AB24:
	cmp r0, #2
	bne _0802AB2C
	bl sub_080720AC
_0802AB2C:
	ldr r7, _0802AB58  @ =gUnknown_0807A974
	ldr r0, _0802AB5C  @ =gUnknown_03000B74
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r5, r0, #25
	ldr r6, _0802AB60  @ =gUnknown_03000B58
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r3, [r0]
	cmp r3, #1
	beq _0802ABA8
	cmp r3, #1
	bgt _0802AB64
	cmp r3, #0
	beq _0802AB6E
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB58:
	.4byte gUnknown_0807A974
_0802AB5C:
	.4byte gUnknown_03000B74
_0802AB60:
	.4byte gUnknown_03000B58
_0802AB64:
	cmp r3, #2
	beq _0802ABF8
	cmp r3, #3
	beq _0802AC40
	b _0802AC82
_0802AB6E:
	ldr r2, _0802AB90  @ =0x03000156
	ldr r1, _0802AB94  @ =0x03000152
	ldrb r0, [r0, #1]
	strb r0, [r1]
	strb r0, [r2]
	ldr r0, _0802AB98  @ =0x03000157
	mov r2, #20
	strb r2, [r0]
	ldr r0, _0802AB9C  @ =0x03000153
	strb r3, [r0]
	ldr r1, _0802ABA0  @ =0x03000154
	mov r0, #30
	strb r0, [r1]
	ldr r0, _0802ABA4  @ =0x03000155
	strb r2, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802AB90:
	.4byte 0x03000156
_0802AB94:
	.4byte 0x03000152
_0802AB98:
	.4byte 0x03000157
_0802AB9C:
	.4byte 0x03000153
_0802ABA0:
	.4byte 0x03000154
_0802ABA4:
	.4byte 0x03000155
_0802ABA8:
	ldr r1, _0802ABE0  @ =0x03000156
	ldrb r0, [r0, #1]
	mov r2, #30
	sub r0, r2, r0
	strb r0, [r1]
	ldr r0, _0802ABE4  @ =0x03000157
	mov r4, #20
	strb r4, [r0]
	ldr r0, _0802ABE8  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802ABEC  @ =0x03000153
	strb r1, [r0]
	ldr r3, _0802ABF0  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
	ldr r0, _0802ABF4  @ =0x03000155
	strb r4, [r0]
	b _0802AC82
	.byte 0x00
	.byte 0x00
_0802ABE0:
	.4byte 0x03000156
_0802ABE4:
	.4byte 0x03000157
_0802ABE8:
	.4byte 0x03000152
_0802ABEC:
	.4byte 0x03000153
_0802ABF0:
	.4byte 0x03000154
_0802ABF4:
	.4byte 0x03000155
_0802ABF8:
	ldr r0, _0802AC28  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC2C  @ =0x03000157
	ldr r2, _0802AC30  @ =0x03000153
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	strb r0, [r2]
	strb r0, [r3]
	ldr r1, _0802AC34  @ =0x03000152
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0802AC38  @ =0x03000154
	strb r4, [r0]
	ldr r1, _0802AC3C  @ =0x03000155
	mov r0, #20
	strb r0, [r1]
	b _0802AC82
_0802AC28:
	.4byte 0x03000156
_0802AC2C:
	.4byte 0x03000157
_0802AC30:
	.4byte 0x03000153
_0802AC34:
	.4byte 0x03000152
_0802AC38:
	.4byte 0x03000154
_0802AC3C:
	.4byte 0x03000155
_0802AC40:
	ldr r0, _0802AC90  @ =0x03000156
	mov r4, #30
	strb r4, [r0]
	ldr r3, _0802AC94  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	mov r2, #20
	sub r0, r2, r0
	strb r0, [r3]
	ldr r0, _0802AC98  @ =0x03000152
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802AC9C  @ =0x03000153
	strb r1, [r0]
	ldr r0, _0802ACA0  @ =0x03000154
	strb r4, [r0]
	ldr r3, _0802ACA4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r6, r1]
	lsl r0, r1, #3
	sub r0, r0, r1
	add r0, r5, r0
	lsl r0, r0, #2
	add r0, r0, r7
	ldrb r0, [r0, #1]
	sub r2, r2, r0
	strb r2, [r3]
_0802AC82:
	ldr r1, _0802ACA8  @ =0x03000150
	mov r0, #1
	strb r0, [r1]
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AC90:
	.4byte 0x03000156
_0802AC94:
	.4byte 0x03000157
_0802AC98:
	.4byte 0x03000152
_0802AC9C:
	.4byte 0x03000153
_0802ACA0:
	.4byte 0x03000154
_0802ACA4:
	.4byte 0x03000155
_0802ACA8:
	.4byte 0x03000150
	THUMB_FUNC_END sub_0802AAE8

	THUMB_FUNC_START sub_0802ACAC
sub_0802ACAC: @ 0x0802ACAC
	push {r4,lr}
	ldr r2, _0802ACF4  @ =0x03000150
	ldrb r0, [r2]
	cmp r0, #2
	bne _0802AD38
	ldr r1, _0802ACF8  @ =0x03000151
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #30
	bne _0802ADA4
	mov r0, #3
	strb r0, [r2]
	ldr r0, _0802ACFC  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD0A
	bl sub_080072A4
	bl sub_08040B28
	ldr r4, _0802AD00  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802AD04
	mov r0, #0
	bl sub_0802BEA4
	b _0802AD16
	.byte 0x00
	.byte 0x00
_0802ACF4:
	.4byte 0x03000150
_0802ACF8:
	.4byte 0x03000151
_0802ACFC:
	.4byte gMainState
_0802AD00:
	.4byte gUnknown_03000B90
_0802AD04:
	bl sub_0802BE50
	b _0802AD16
_0802AD0A:
	bl sub_0802C71C
	ldr r0, _0802AD2C  @ =gUnknown_03000B90
	ldr r0, [r0, #12]
	bl _call_via_r0
_0802AD16:
	ldr r2, _0802AD30  @ =0x0300196C
	ldr r1, _0802AD34  @ =0x030019DC
	mov r0, #1
	strb r0, [r1]
	strb r0, [r2]
	mov r0, #1
	mov r1, #1
	bl sub_080035C0
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD2C:
	.4byte gUnknown_03000B90
_0802AD30:
	.4byte 0x0300196C
_0802AD34:
	.4byte 0x030019DC
_0802AD38:
	cmp r0, #0
	bne _0802AD72
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802AD5C  @ =0x00007FFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802AD60  @ =0x03001B98
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802AD64  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802AD68
	mov r0, #15
	b _0802AD6A
	.byte 0x00
	.byte 0x00
_0802AD5C:
	.4byte 0x00007FFF
_0802AD60:
	.4byte 0x03001B98
_0802AD64:
	.4byte gMainState
_0802AD68:
	mov r0, #6
_0802AD6A:
	mov r1, #0
	bl sub_080070E8
	b _0802ADA4
_0802AD72:
	cmp r0, #3
	bne _0802ADA4
	ldr r0, _0802AD98  @ =gMainState
	ldr r0, [r0]
	cmp r0, #14
	bne _0802ADA4
	ldr r4, _0802AD9C  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0802ADA0
	mov r0, #0
	bl sub_0802BEA4
	b _0802ADA4
	.byte 0x00
	.byte 0x00
_0802AD98:
	.4byte gMainState
_0802AD9C:
	.4byte gUnknown_03000B90
_0802ADA0:
	bl sub_0802BE50
_0802ADA4:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802ACAC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802ADAC
sub_0802ADAC: @ 0x0802ADAC
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802ADE0  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AE14
	ldr r3, _0802ADE4  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802ADEC
	ldr r0, _0802ADE8  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
	b _0802ADFE
_0802ADE0:
	.4byte 0x03000150
_0802ADE4:
	.4byte 0x03000156
_0802ADE8:
	.4byte 0x03000154
_0802ADEC:
	ldr r0, _0802AE0C  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
_0802ADFE:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AE10  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AE5C
_0802AE0C:
	.4byte 0x03000152
_0802AE10:
	.4byte 0x03000151
_0802AE14:
	cmp r1, #3
	bne _0802AE5C
	ldr r3, _0802AE3C  @ =0x03000156
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AE44
	ldr r0, _0802AE40  @ =0x03000152
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AE5C
	b _0802AE56
_0802AE3C:
	.4byte 0x03000156
_0802AE40:
	.4byte 0x03000152
_0802AE44:
	ldr r0, _0802AE64  @ =0x03000154
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AE5C
_0802AE56:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AE5C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AE64:
	.4byte 0x03000154
	THUMB_FUNC_END sub_0802ADAC

	THUMB_FUNC_START sub_0802AE68
sub_0802AE68: @ 0x0802AE68
	push {r4,lr}
	lsl r0, r0, #24
	lsr r0, r0, #24
	add r2, r0, #0
	ldr r4, _0802AE9C  @ =0x03000150
	ldrb r1, [r4]
	cmp r1, #1
	bne _0802AED0
	ldr r3, _0802AEA0  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r0, #24
	asr r0, r0, #24
	add r1, r0, r1
	strb r1, [r3]
	cmp r0, #0
	ble _0802AEA8
	ldr r0, _0802AEA4  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
	b _0802AEBA
_0802AE9C:
	.4byte 0x03000150
_0802AEA0:
	.4byte 0x03000157
_0802AEA4:
	.4byte 0x03000155
_0802AEA8:
	ldr r0, _0802AEC8  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
_0802AEBA:
	strb r2, [r3]
	mov r0, #2
	strb r0, [r4]
	ldr r1, _0802AECC  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802AF18
_0802AEC8:
	.4byte 0x03000153
_0802AECC:
	.4byte 0x03000151
_0802AED0:
	cmp r1, #3
	bne _0802AF18
	ldr r3, _0802AEF8  @ =0x03000157
	ldrb r1, [r3]
	lsl r0, r2, #24
	asr r0, r0, #24
	sub r1, r1, r0
	strb r1, [r3]
	cmp r0, #0
	ble _0802AF00
	ldr r0, _0802AEFC  @ =0x03000153
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	bgt _0802AF18
	b _0802AF12
_0802AEF8:
	.4byte 0x03000157
_0802AEFC:
	.4byte 0x03000153
_0802AF00:
	ldr r0, _0802AF20  @ =0x03000155
	lsl r1, r1, #24
	asr r1, r1, #24
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r1, r0
	blt _0802AF18
_0802AF12:
	strb r2, [r3]
	mov r0, #0
	strb r0, [r4]
_0802AF18:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802AF20:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802AE68

	THUMB_FUNC_START sub_0802AF24
sub_0802AF24: @ 0x0802AF24
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B03C  @ =0x040000D4
	ldr r0, _0802B040  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B044  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B048  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B04C  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B050  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B02A
_0802AF70:
	ldr r1, _0802B054  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B01A
	ldr r0, _0802B03C  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B05C  @ =gOamData
	ldr r1, _0802B060  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B064  @ =gUnknown_08342EAC
	mov r9, r3
_0802AF9A:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B068  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B06C  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B070  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B074  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B058  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802AF9A
_0802B01A:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B050  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802AF70
_0802B02A:
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
_0802B03C:
	.4byte 0x040000D4
_0802B040:
	.4byte gUnknown_08342EB4
_0802B044:
	.4byte 0x06010000
_0802B048:
	.4byte 0x84000040
_0802B04C:
	.4byte 0x03000153
_0802B050:
	.4byte 0x03000155
_0802B054:
	.4byte 0x03000152
_0802B058:
	.4byte 0x03000156
_0802B05C:
	.4byte gOamData
_0802B060:
	.4byte 0x000003FF
_0802B064:
	.4byte gUnknown_08342EAC
_0802B068:
	.4byte 0x84000002
_0802B06C:
	.4byte 0xFFFFFC00
_0802B070:
	.4byte 0x000001FF
_0802B074:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802AF24

	THUMB_FUNC_START sub_0802B078
sub_0802B078: @ 0x0802B078
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B190  @ =0x040000D4
	ldr r0, _0802B194  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B198  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B19C  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B1A0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B1A4  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B17E
_0802B0C4:
	ldr r1, _0802B1A8  @ =0x03000156
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B16E
	ldr r0, _0802B190  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B1B0  @ =gOamData
	ldr r1, _0802B1B4  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B1B8  @ =gUnknown_08342EAC
	mov r9, r3
_0802B0EE:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B1BC  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B1C0  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B1C4  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B1C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B1AC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B0EE
_0802B16E:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B1A4  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B0C4
_0802B17E:
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
_0802B190:
	.4byte 0x040000D4
_0802B194:
	.4byte gUnknown_08342EB4
_0802B198:
	.4byte 0x06010000
_0802B19C:
	.4byte 0x84000040
_0802B1A0:
	.4byte 0x03000153
_0802B1A4:
	.4byte 0x03000155
_0802B1A8:
	.4byte 0x03000156
_0802B1AC:
	.4byte 0x03000154
_0802B1B0:
	.4byte gOamData
_0802B1B4:
	.4byte 0x000003FF
_0802B1B8:
	.4byte gUnknown_08342EAC
_0802B1BC:
	.4byte 0x84000002
_0802B1C0:
	.4byte 0xFFFFFC00
_0802B1C4:
	.4byte 0x000001FF
_0802B1C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B078

	THUMB_FUNC_START sub_0802B1CC
sub_0802B1CC: @ 0x0802B1CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B2E0  @ =0x040000D4
	ldr r0, _0802B2E4  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B2E8  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B2EC  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B2F0  @ =0x03000153
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B2F4  @ =0x03000157
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B2CE
_0802B218:
	ldr r1, _0802B2F8  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B2BE
	ldr r0, _0802B2E0  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B300  @ =gOamData
	ldr r1, _0802B304  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B308  @ =gUnknown_08342EAC
	mov r9, r3
_0802B242:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B30C  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B310  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B314  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B318  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B2FC  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B242
_0802B2BE:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B2F4  @ =0x03000157
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B218
_0802B2CE:
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
_0802B2E0:
	.4byte 0x040000D4
_0802B2E4:
	.4byte gUnknown_08342EB4
_0802B2E8:
	.4byte 0x06010000
_0802B2EC:
	.4byte 0x84000040
_0802B2F0:
	.4byte 0x03000153
_0802B2F4:
	.4byte 0x03000157
_0802B2F8:
	.4byte 0x03000152
_0802B2FC:
	.4byte 0x03000154
_0802B300:
	.4byte gOamData
_0802B304:
	.4byte 0x000003FF
_0802B308:
	.4byte gUnknown_08342EAC
_0802B30C:
	.4byte 0x84000002
_0802B310:
	.4byte 0xFFFFFC00
_0802B314:
	.4byte 0x000001FF
_0802B318:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B1CC

	THUMB_FUNC_START sub_0802B31C
sub_0802B31C: @ 0x0802B31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r5, r0, #0
	ldr r4, _0802B434  @ =0x040000D4
	ldr r0, _0802B438  @ =gUnknown_08342EB4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B43C  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B440  @ =0x84000040
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #8
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #1
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r0, _0802B444  @ =0x03000157
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	lsl r0, r0, #16
	lsr r7, r0, #16
	ldr r0, _0802B448  @ =0x03000155
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r7, r1
	bge _0802B422
_0802B368:
	ldr r1, _0802B44C  @ =0x03000152
	mov r0, #0
	ldrsb r0, [r1, r0]
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r2, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r7, #2
	mov r10, r3
	cmp r4, r0
	bge _0802B412
	ldr r0, _0802B434  @ =0x040000D4
	mov r12, r0
	ldr r6, _0802B454  @ =gOamData
	ldr r1, _0802B458  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r1
	mov r8, r2
	ldr r3, _0802B45C  @ =gUnknown_08342EAC
	mov r9, r3
_0802B392:
	mov r0, r9
	mov r1, r12
	str r0, [r1]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0802B460  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrh r2, [r1, #4]
	ldr r0, _0802B464  @ =0xFFFFFC00
	and r0, r0, r2
	mov r2, r8
	orr r0, r0, r2
	strh r0, [r1, #4]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	lsl r2, r4, #3
	ldr r3, _0802B468  @ =0x000001FF
	add r0, r3, #0
	and r2, r2, r0
	ldrh r3, [r1, #2]
	ldr r0, _0802B46C  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r6
	lsl r1, r7, #3
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r6
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r6
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r4, #2
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r1, _0802B450  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r4, r0
	blt _0802B392
_0802B412:
	mov r2, r10
	lsl r0, r2, #16
	lsr r7, r0, #16
	ldr r3, _0802B448  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r3, r0]
	cmp r7, r0
	blt _0802B368
_0802B422:
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
_0802B434:
	.4byte 0x040000D4
_0802B438:
	.4byte gUnknown_08342EB4
_0802B43C:
	.4byte 0x06010000
_0802B440:
	.4byte 0x84000040
_0802B444:
	.4byte 0x03000157
_0802B448:
	.4byte 0x03000155
_0802B44C:
	.4byte 0x03000152
_0802B450:
	.4byte 0x03000154
_0802B454:
	.4byte gOamData
_0802B458:
	.4byte 0x000003FF
_0802B45C:
	.4byte gUnknown_08342EAC
_0802B460:
	.4byte 0x84000002
_0802B464:
	.4byte 0xFFFFFC00
_0802B468:
	.4byte 0x000001FF
_0802B46C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B31C

	THUMB_FUNC_START sub_0802B470
sub_0802B470: @ 0x0802B470
	push {r4,r5,lr}
	mov r3, #0
	ldr r5, _0802B4BC  @ =0x03000150
	ldrb r0, [r5]
	cmp r0, #1
	bne _0802B4CC
	ldr r2, _0802B4C0  @ =0x03000154
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B4C4  @ =0x03000155
	ldrb r1, [r4]
	add r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #8
	ble _0802B49A
	mov r0, #8
	strb r0, [r2]
	mov r3, #1
_0802B49A:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #5
	ble _0802B4AC
	mov r0, #5
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B4AC:
	cmp r3, #2
	bne _0802B508
	strb r3, [r5]
	ldr r1, _0802B4C8  @ =0x03000151
	mov r0, #0
	strb r0, [r1]
	b _0802B508
	.byte 0x00
	.byte 0x00
_0802B4BC:
	.4byte 0x03000150
_0802B4C0:
	.4byte 0x03000154
_0802B4C4:
	.4byte 0x03000155
_0802B4C8:
	.4byte 0x03000151
_0802B4CC:
	cmp r0, #3
	bne _0802B508
	ldr r2, _0802B510  @ =0x03000154
	ldrb r0, [r2]
	sub r0, r0, #1
	strb r0, [r2]
	ldr r4, _0802B514  @ =0x03000155
	ldrb r1, [r4]
	sub r1, r1, #1
	strb r1, [r4]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #3
	bgt _0802B4EE
	mov r0, #4
	strb r0, [r2]
	mov r3, #1
_0802B4EE:
	lsl r0, r1, #24
	asr r0, r0, #24
	cmp r0, #1
	bgt _0802B500
	mov r0, #2
	strb r0, [r4]
	add r0, r3, #1
	lsl r0, r0, #24
	lsr r3, r0, #24
_0802B500:
	cmp r3, #2
	bne _0802B508
	mov r0, #0
	strb r0, [r5]
_0802B508:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B510:
	.4byte 0x03000154
_0802B514:
	.4byte 0x03000155
	THUMB_FUNC_END sub_0802B470

	THUMB_FUNC_START sub_0802B518
sub_0802B518: @ 0x0802B518
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	add r5, r0, #0
	ldr r4, _0802B640  @ =0x040000D4
	ldr r0, _0802B644  @ =gUnknown_082E29F4
	str r0, [r4]
	ldrh r0, [r2]
	ldr r3, _0802B648  @ =0x06010000
	add r0, r0, r3
	str r0, [r4, #4]
	ldr r0, _0802B64C  @ =0x84000100
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	ldrh r0, [r1]
	str r0, [sp]
	add r0, r0, #32
	strh r0, [r1]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r1, #0
	ldrh r3, [r2]
	add r0, r0, r3
	strh r0, [r2]
	ldr r4, _0802B650  @ =0x03000154
	mov r1, #0
	ldrsb r1, [r4, r1]
	lsl r1, r1, #5
	mov r0, #240
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #4]
	ldr r2, _0802B654  @ =0x03000155
	mov r3, #0
	ldrsb r3, [r2, r3]
	lsl r1, r3, #5
	mov r0, #160
	sub r0, r0, r1
	lsl r0, r0, #15
	lsr r0, r0, #16
	str r0, [sp, #8]
	mov r1, #0
	cmp r1, r3
	bge _0802B62E
_0802B578:
	mov r6, #0
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r3, r1, #1
	mov r10, r3
	cmp r6, r0
	bge _0802B61E
	ldr r7, _0802B640  @ =0x040000D4
	ldr r4, _0802B658  @ =gOamData
	ldr r0, _0802B65C  @ =0x000003FF
	ldr r2, [sp]
	and r2, r2, r0
	mov r12, r2
	ldr r3, _0802B660  @ =gUnknown_082E29EC
	mov r9, r3
	lsl r0, r1, #5
	ldr r1, [sp, #8]
	add r0, r0, r1
	mov r8, r0
_0802B5A0:
	mov r2, r9
	str r2, [r7]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	str r0, [r7, #4]
	ldr r0, _0802B664  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrh r2, [r1, #4]
	ldr r0, _0802B668  @ =0xFFFFFC00
	and r0, r0, r2
	mov r3, r12
	orr r0, r0, r3
	strh r0, [r1, #4]
	ldrh r2, [r5]
	lsl r2, r2, #3
	add r2, r2, r4
	lsl r1, r6, #5
	ldr r0, [sp, #4]
	add r1, r1, r0
	ldr r3, _0802B66C  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldrh r3, [r2, #2]
	ldr r0, _0802B670  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #2]
	ldrh r0, [r5]
	lsl r0, r0, #3
	add r0, r0, r4
	mov r1, r8
	strb r1, [r0]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r1, [r5]
	lsl r1, r1, #3
	add r1, r1, r4
	ldrb r2, [r1, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	add r0, r6, #1
	lsl r0, r0, #16
	lsr r6, r0, #16
	ldr r2, _0802B650  @ =0x03000154
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r6, r0
	blt _0802B5A0
_0802B61E:
	mov r3, r10
	lsl r0, r3, #16
	lsr r1, r0, #16
	ldr r2, _0802B654  @ =0x03000155
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r1, r0
	blt _0802B578
_0802B62E:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B640:
	.4byte 0x040000D4
_0802B644:
	.4byte gUnknown_082E29F4
_0802B648:
	.4byte 0x06010000
_0802B64C:
	.4byte 0x84000100
_0802B650:
	.4byte 0x03000154
_0802B654:
	.4byte 0x03000155
_0802B658:
	.4byte gOamData
_0802B65C:
	.4byte 0x000003FF
_0802B660:
	.4byte gUnknown_082E29EC
_0802B664:
	.4byte 0x84000002
_0802B668:
	.4byte 0xFFFFFC00
_0802B66C:
	.4byte 0x000001FF
_0802B670:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_0802B518

	THUMB_FUNC_START sub_0802B674
sub_0802B674: @ 0x0802B674
	push {r4-r7,lr}
	sub sp, sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	ldr r7, _0802B6A4  @ =gMainState
	ldr r0, [r7]
	cmp r0, #14
	bne _0802B6AC
	ldr r0, _0802B6A8  @ =0x03000150
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B778
	cmp r0, #2
	beq _0802B696
	bl sub_0802B470
_0802B696:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B518
	b _0802B778
	.byte 0x00
	.byte 0x00
_0802B6A4:
	.4byte gMainState
_0802B6A8:
	.4byte 0x03000150
_0802B6AC:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0806E594
	str r6, [sp]
	mov r0, #8
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0800A2B8
	ldr r0, [r7]
	cmp r0, #18
	bne _0802B778
	ldr r7, _0802B6FC  @ =0x03000150
	ldrb r0, [r7]
	cmp r0, #0
	beq _0802B778
	ldr r3, _0802B700  @ =gUnknown_0807A974
	ldr r0, _0802B704  @ =gUnknown_03000B74
	ldrb r1, [r0]
	lsl r1, r1, #24
	asr r1, r1, #25
	ldr r0, _0802B708  @ =gUnknown_03000B58
	mov r2, #0
	ldrsb r2, [r0, r2]
	lsl r0, r2, #3
	sub r0, r0, r2
	add r1, r1, r0
	lsl r1, r1, #2
	add r1, r1, r3
	ldrb r0, [r1]
	cmp r0, #1
	beq _0802B72E
	cmp r0, #1
	bgt _0802B70C
	cmp r0, #0
	beq _0802B716
	b _0802B778
_0802B6FC:
	.4byte 0x03000150
_0802B700:
	.4byte gUnknown_0807A974
_0802B704:
	.4byte gUnknown_03000B74
_0802B708:
	.4byte gUnknown_03000B58
_0802B70C:
	cmp r0, #2
	beq _0802B748
	cmp r0, #3
	beq _0802B760
	b _0802B778
_0802B716:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802AF24
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802ADAC
	b _0802B778
_0802B72E:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B078
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802ADAC
	b _0802B778
_0802B748:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B1CC
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	bl sub_0802AE68
	b _0802B778
_0802B760:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl sub_0802B31C
	ldrb r0, [r7]
	cmp r0, #2
	beq _0802B778
	mov r0, #2
	neg r0, r0
	bl sub_0802AE68
_0802B778:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B674

	THUMB_FUNC_START sub_0802B780
sub_0802B780: @ 0x0802B780
	push {lr}
	bl sub_08038B18
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B780

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802B78C
sub_0802B78C: @ 0x0802B78C
	push {lr}
	bl sub_080088F0
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802B78C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802B798
sub_0802B798: @ 0x0802B798
	push {r4-r7,lr}
	sub sp, sp, #12
	mov r2, #50
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0802B7A6
	b _0802B962
_0802B7A6:
	mov r0, #127
	and r0, r0, r1
	cmp r0, #9
	bne _0802B840
	ldr r7, _0802B828  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #1
	bne _0802B7B8
	b _0802B962
_0802B7B8:
	ldr r0, _0802B82C  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B830  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B834  @ =0x030019DC
	strb r6, [r3]
	mov r0, #1
	strb r0, [r7]
	ldr r2, _0802B838  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #1
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B83C  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #3
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #56
	b _0802B8BA
	.byte 0x00
	.byte 0x00
_0802B828:
	.4byte 0x0300196C
_0802B82C:
	.4byte gUnknown_0807820C
_0802B830:
	.4byte 0x0000600C
_0802B834:
	.4byte 0x030019DC
_0802B838:
	.4byte gUnknown_030019A0
_0802B83C:
	.4byte 0x030019E4
_0802B840:
	cmp r0, #8
	bne _0802B8E0
	ldr r7, _0802B8C8  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #2
	bne _0802B84E
	b _0802B962
_0802B84E:
	ldr r0, _0802B8CC  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B8D0  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B8D4  @ =0x030019DC
	strb r6, [r3]
	mov r0, #2
	strb r0, [r7]
	ldr r2, _0802B8D8  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #2
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B8DC  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #4
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #57
_0802B8BA:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802B962
	.byte 0x00
	.byte 0x00
_0802B8C8:
	.4byte 0x0300196C
_0802B8CC:
	.4byte gUnknown_0807820C
_0802B8D0:
	.4byte 0x0000600C
_0802B8D4:
	.4byte 0x030019DC
_0802B8D8:
	.4byte gUnknown_030019A0
_0802B8DC:
	.4byte 0x030019E4
_0802B8E0:
	cmp r0, #10
	bne _0802B962
	ldr r7, _0802B96C  @ =0x0300196C
	ldrb r6, [r7]
	cmp r6, #3
	beq _0802B962
	ldr r0, _0802B970  @ =gUnknown_0807820C
	ldr r2, [r0]
	lsr r1, r1, #16
	lsl r1, r1, #1
	ldr r3, _0802B974  @ =0x0000600C
	add r0, r2, r3
	add r0, r0, r1
	ldrh r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #16
	asr r0, r0, #14
	add r2, r2, r0
	ldrb r4, [r2, #14]
	lsl r4, r4, #25
	lsr r4, r4, #22
	ldrb r5, [r2, #15]
	lsl r5, r5, #3
	ldr r3, _0802B978  @ =0x030019DC
	strb r6, [r3]
	mov r0, #3
	strb r0, [r7]
	ldr r2, _0802B97C  @ =gUnknown_030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #10
	orr r0, r0, r1
	str r0, [r2]
	ldrb r1, [r3]
	mov r0, #3
	bl sub_080035C0
	mov r0, #1
	bl sub_0801B50C
	ldr r0, _0802B980  @ =0x030019E4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	bl sub_08041F2C
	sub r4, r4, #8
	add r5, r5, #8
	mov r0, #5
	mov r1, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0804138C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #58
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802B962:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B96C:
	.4byte 0x0300196C
_0802B970:
	.4byte gUnknown_0807820C
_0802B974:
	.4byte 0x0000600C
_0802B978:
	.4byte 0x030019DC
_0802B97C:
	.4byte gUnknown_030019A0
_0802B980:
	.4byte 0x030019E4
	THUMB_FUNC_END sub_0802B798

	THUMB_FUNC_START sub_0802B984
sub_0802B984: @ 0x0802B984
	ldr r0, _0802B994  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #9
	orr r1, r1, r2
	str r1, [r0]
	bx lr
	.byte 0x00
	.byte 0x00
_0802B994:
	.4byte gUnknown_030019A0
	THUMB_FUNC_END sub_0802B984

	THUMB_FUNC_START sub_0802B998
sub_0802B998: @ 0x0802B998
	push {r4,r5,lr}
	ldr r5, _0802B9CC  @ =0x080006D8
	ldr r0, _0802B9D0  @ =0x00001068
	bl sub_08034854
	add r4, r0, #0
	ldr r2, _0802B9D4  @ =0x0400041A
	add r0, r5, #0
	add r1, r4, #0
	bl CpuSet
	ldr r0, _0802B9D8  @ =0x03000C2C
	str r4, [r0]
	ldr r3, _0802B9DC  @ =0x03000970
	ldr r2, _0802B9E0  @ =gUnknown_0807AA1C
	mov r1, #14
_0802B9B8:
	ldm r2!, {r0}
	sub r0, r0, r5
	add r0, r4, r0
	stm r3!, {r0}
	sub r1, r1, #1
	cmp r1, #0
	bge _0802B9B8
	pop {r4,r5}
	pop {r0}
	bx r0
_0802B9CC:
	.4byte sub_080006D8
_0802B9D0:
	.4byte 0x00001068
_0802B9D4:
	.4byte 0x0400041A
_0802B9D8:
	.4byte 0x03000C2C
_0802B9DC:
	.4byte 0x03000970
_0802B9E0:
	.4byte gUnknown_0807AA1C
	THUMB_FUNC_END sub_0802B998

	THUMB_FUNC_START sub_0802B9E4
sub_0802B9E4: @ 0x0802B9E4
	push {lr}
	mov r0, #240
	lsl r0, r0, #1
	bl sub_08034854
	ldr r1, _0802B9FC  @ =0x03000C30
	str r0, [r1, #4]
	mov r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802B9FC:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802B9E4

	THUMB_FUNC_START sub_0802BA00
sub_0802BA00: @ 0x0802BA00
	push {r4,r5,lr}
	ldr r4, _0802BA2C  @ =0x03000C30
	ldr r5, [r4, #4]
	cmp r5, #0
	bne _0802BA16
	mov r0, #240
	lsl r0, r0, #1
	bl sub_08034854
	str r0, [r4, #4]
	str r5, [r4]
_0802BA16:
	ldr r2, [r4]
	cmp r2, #29
	bhi _0802BA30
	lsl r1, r2, #4
	ldr r0, [r4, #4]
	add r0, r0, r1
	add r1, r2, #1
	str r1, [r4]
	mov r1, #0
	str r1, [r0, #12]
	b _0802BA32
_0802BA2C:
	.4byte 0x03000C30
_0802BA30:
	mov r0, #0
_0802BA32:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BA00

	THUMB_FUNC_START sub_0802BA38
sub_0802BA38: @ 0x0802BA38
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r9, r0
	mov r8, r1
	add r7, r2, #0
	add r6, r3, #0
	ldr r1, _0802BA90  @ =0x03000C30
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0802BA84
	add r4, r0, #0
	ldr r0, [r1]
	lsl r0, r0, #4
	add r5, r4, r0
	cmp r4, r5
	bcs _0802BA84
_0802BA5C:
	ldr r1, [r4, #8]
	ldr r0, [r4, #12]
	cmp r1, r0
	beq _0802BA7E
	add r0, r4, #0
	mov r2, r9
	mov r3, r8
	bl sub_080064D4
	ldr r1, [r4, #8]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl sub_080064D4
	ldr r0, [r4, #8]
	str r0, [r4, #12]
_0802BA7E:
	add r4, r4, #16
	cmp r4, r5
	bcc _0802BA5C
_0802BA84:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BA90:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA38

	THUMB_FUNC_START sub_0802BA94
sub_0802BA94: @ 0x0802BA94
	ldr r1, _0802BA9C  @ =0x03000C30
	mov r0, #0
	str r0, [r1, #4]
	bx lr
_0802BA9C:
	.4byte 0x03000C30
	THUMB_FUNC_END sub_0802BA94

	THUMB_FUNC_START sub_0802BAA0
sub_0802BAA0: @ 0x0802BAA0
	push {r4-r7,lr}
	ldr r0, _0802BACC  @ =0x03000C40
	ldr r1, [r0, #32]
	cmp r1, #0
	beq _0802BB1A
	add r4, r1, #0
	ldr r1, [r0, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r7, r4, r0
	cmp r4, r7
	bcs _0802BB1A
_0802BABA:
	ldr r6, [r4]
	cmp r6, #0
	beq _0802BB14
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802BAD0
	sub r0, r0, #1
	b _0802BB12
	.byte 0x00
	.byte 0x00
_0802BACC:
	.4byte 0x03000C40
_0802BAD0:
	ldr r2, [r4, #8]
	ldr r5, _0802BB0C  @ =0x03000C40
	ldr r1, [r2, #8]
	ldr r0, [r5, #24]
	add r3, r1, r0
	str r3, [r2, #8]
	lsl r0, r6, #3
	add r1, r5, #4
	add r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0802BB10
	ldr r1, [r5, #32]
	sub r1, r4, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r1, #0
	bl sub_0802BC64
	b _0802BB14
_0802BB0C:
	.4byte 0x03000C40
_0802BB10:
	ldrb r0, [r3, #12]
_0802BB12:
	strb r0, [r4, #4]
_0802BB14:
	add r4, r4, #12
	cmp r4, r7
	bcc _0802BABA
_0802BB1A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BAA0

	THUMB_FUNC_START sub_0802BB20
sub_0802BB20: @ 0x0802BB20
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802BB48  @ =0x03000C40
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802BB2E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802BB2E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB48:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BB20

	THUMB_FUNC_START sub_0802BB4C
sub_0802BB4C: @ 0x0802BB4C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #84
	bl sub_08034854
	add r1, r0, #0
	ldr r4, _0802BB78  @ =0x03000C40
	str r1, [r4, #32]
	mov r2, sp
	mov r0, #0
	strh r0, [r2]
	ldr r2, _0802BB7C  @ =0x0100002A
	mov r0, sp
	bl CpuSet
	mov r0, #0
	str r0, [r4, #28]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BB78:
	.4byte 0x03000C40
_0802BB7C:
	.4byte 0x0100002A
	THUMB_FUNC_END sub_0802BB4C

	THUMB_FUNC_START sub_0802BB80
sub_0802BB80: @ 0x0802BB80
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	lsl r1, r1, #24
	lsr r7, r1, #24
	lsl r2, r2, #16
	lsr r6, r2, #16
	ldr r5, _0802BBC8  @ =0x03000C40
	ldr r4, [r5, #32]
	cmp r4, #0
	bne _0802BBB4
	mov r0, #84
	bl sub_08034854
	add r1, r0, #0
	str r1, [r5, #32]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _0802BBCC  @ =0x0100002A
	bl CpuSet
	str r4, [r5, #28]
_0802BBB4:
	ldr r0, [r5, #28]
	cmp r0, #6
	bhi _0802BBC4
	bl sub_0802BA00
	add r4, r0, #0
	cmp r4, #0
	bne _0802BBD0
_0802BBC4:
	mov r0, #0
	b _0802BBF4
_0802BBC8:
	.4byte 0x03000C40
_0802BBCC:
	.4byte 0x0100002A
_0802BBD0:
	ldr r3, [r5, #28]
	lsl r1, r3, #1
	add r1, r1, r3
	lsl r1, r1, #2
	ldr r2, [r5, #32]
	add r2, r2, r1
	add r3, r3, #1
	str r3, [r5, #28]
	mov r1, #0
	strb r1, [r2, #4]
	str r1, [r2]
	str r4, [r2, #8]
	strh r6, [r2, #6]
	mov r1, r8
	str r1, [r4]
	str r7, [r4, #4]
	ldr r1, [r5]
	str r1, [r4, #8]
_0802BBF4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BB80

	THUMB_FUNC_START sub_0802BC00
sub_0802BC00: @ 0x0802BC00
	push {r4,lr}
	ldr r1, _0802BC48  @ =gUnknown_0807820C
	ldr r1, [r1]
	lsl r0, r0, #1
	ldr r2, _0802BC4C  @ =0x0000600C
	add r1, r1, r2
	add r1, r1, r0
	ldrh r4, [r1]
	ldr r3, _0802BC50  @ =0x03000C40
	ldr r2, [r3, #32]
	ldr r1, [r3, #28]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #2
	add r1, r2, r0
	cmp r2, r1
	bcs _0802BC5A
_0802BC22:
	ldrh r0, [r2, #6]
	cmp r0, r4
	bne _0802BC54
	ldr r1, [r3, #32]
	sub r1, r2, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r1, r0, #4
	add r0, r0, r1
	lsl r1, r0, #8
	add r0, r0, r1
	lsl r1, r0, #16
	add r0, r0, r1
	neg r0, r0
	asr r0, r0, #2
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	b _0802BC5C
_0802BC48:
	.4byte gUnknown_0807820C
_0802BC4C:
	.4byte 0x0000600C
_0802BC50:
	.4byte 0x03000C40
_0802BC54:
	add r2, r2, #12
	cmp r2, r1
	bcc _0802BC22
_0802BC5A:
	mov r0, #1
_0802BC5C:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BC00

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BC64
sub_0802BC64: @ 0x0802BC64
	push {r4,lr}
	add r3, r1, #0
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r4, _0802BC94  @ =0x03000C40
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #2
	ldr r0, [r4, #32]
	add r2, r0, r1
	ldr r0, [r2]
	cmp r0, r3
	beq _0802BC8E
	str r3, [r2]
	ldr r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldrb r0, [r0, #12]
	strb r0, [r2, #4]
_0802BC8E:
	pop {r4}
	pop {r0}
	bx r0
_0802BC94:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC64

	THUMB_FUNC_START sub_0802BC98
sub_0802BC98: @ 0x0802BC98
	ldr r1, _0802BCA0  @ =0x03000C40
	mov r0, #0
	str r0, [r1, #32]
	bx lr
_0802BCA0:
	.4byte 0x03000C40
	THUMB_FUNC_END sub_0802BC98

	THUMB_FUNC_START sub_0802BCA4
sub_0802BCA4: @ 0x0802BCA4
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #8
	add r2, r0, #0
	add r6, r1, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BCDC
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BCDC
	ldr r0, _0802BCD8  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BCDC
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BCDC
	add r1, r2, r0
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0802BCDC
	add r5, r1, #0
	b _0802BCF2
	.byte 0x00
	.byte 0x00
_0802BCD8:
	.4byte 0x7FFFFFFF
_0802BCDC:
	cmp r6, #0
	bne _0802BCF0
	ldr r1, _0802BCEC  @ =0x03000C90
	str r6, [r1, #24]
	mov r0, #4
	strh r0, [r1, #8]
	b _0802BDF0
	.byte 0x00
	.byte 0x00
_0802BCEC:
	.4byte 0x03000C90
_0802BCF0:
	ldr r5, _0802BD14  @ =gUnknown_0807BA58
_0802BCF2:
	ldr r0, _0802BD18  @ =0x08001840
	ldr r7, _0802BD1C  @ =0x08001760
	sub r4, r0, r7
	add r0, r4, #0
	bl sub_08034854
	add r1, r0, #0
	ldr r0, _0802BD20  @ =0x03000C90
	str r1, [r0, #24]
	cmp r6, #0
	beq _0802BD24
	lsl r2, r4, #10
	lsr r2, r2, #11
	add r0, r7, #0
	bl CpuSet
	b _0802BD2E
_0802BD14:
	.4byte gUnknown_0807BA58
_0802BD18:
	.4byte sub_08001840
_0802BD1C:
	.4byte sub_08001760
_0802BD20:
	.4byte 0x03000C90
_0802BD24:
	ldr r0, _0802BDFC  @ =0x0800169C
	lsl r2, r4, #10
	lsr r2, r2, #11
	bl CpuSet
_0802BD2E:
	ldrh r0, [r5, #2]
	lsl r0, r0, #4
	add r0, r0, #1
	bl sub_08034854
	ldr r1, _0802BE00  @ =0x03000C90
	str r0, [r1, #20]
	add r0, sp, #4
	mov r8, r0
	add r6, r1, #0
	add r6, r6, #12
	mov r4, #1
_0802BD46:
	mov r0, #228
	lsl r0, r0, #1
	bl sub_08034854
	stm r6!, {r0}
	sub r4, r4, #1
	cmp r4, #0
	bge _0802BD46
	mov r0, #0
	str r0, [sp]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r1, [r6, #20]
	ldrh r2, [r5, #2]
	lsl r2, r2, #2
	mov r0, #160
	lsl r0, r0, #19
	orr r2, r2, r0
	mov r0, sp
	bl CpuSet
	mov r4, #0
	ldrh r1, [r5, #2]
	cmp r4, r1
	bge _0802BD96
	add r3, r6, #0
	add r2, r5, #4
_0802BD7A:
	lsl r0, r4, #4
	ldr r1, [r3, #20]
	add r1, r1, r0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r2, #8]
	strh r0, [r1, #12]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	add r2, r2, #12
	add r4, r4, #1
	ldrh r0, [r5, #2]
	cmp r4, r0
	blt _0802BD7A
_0802BD96:
	ldr r7, _0802BE04  @ =0x03000C70
	ldrh r0, [r5, #2]
	str r0, [r7, #24]
	ldr r6, _0802BE00  @ =0x03000C90
	ldr r0, [r6, #20]
	str r0, [r7, #20]
	ldrh r4, [r5]
	ldr r0, _0802BE08  @ =gUnknown_0807BB30
	lsl r4, r4, #2
	add r0, r4, r0
	ldr r0, [r0]
	str r0, [r7]
	mov r0, #0
	mov r1, r8
	strh r0, [r1]
	ldr r5, _0802BE0C  @ =gUnknown_03001730
	ldr r2, _0802BE10  @ =0x01000008
	mov r0, r8
	add r1, r5, #0
	bl CpuSet
	add r0, r4, r5
	str r0, [r7, #8]
	add r5, r5, #2
	add r4, r4, r5
	str r4, [r7, #12]
	ldr r0, _0802BE14  @ =0x04000005
	str r0, [r7, #4]
	ldr r0, [r7]
	str r0, [r6]
	ldr r0, [r6, #16]
	str r0, [r6, #4]
	mov r0, #3
	strh r0, [r6, #8]
	mov r0, #1
	strh r0, [r6, #10]
	ldr r4, [r6, #24]
	cmp r4, #0
	beq _0802BDF0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BDF0:
	add sp, sp, #8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802BDFC:
	.4byte sub_0800169C
_0802BE00:
	.4byte 0x03000C90
_0802BE04:
	.4byte 0x03000C70
_0802BE08:
	.4byte gUnknown_0807BB30
_0802BE0C:
	.4byte gUnknown_03001730
_0802BE10:
	.4byte 0x01000008
_0802BE14:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802BCA4

	THUMB_FUNC_START sub_0802BE18
sub_0802BE18: @ 0x0802BE18
	push {lr}
	add r2, r0, #0
	mov r3, #104
	cmp r2, #0
	beq _0802BE48
	ldr r1, [r2]
	cmp r1, #0
	bge _0802BE48
	ldr r0, _0802BE44  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, r3
	bls _0802BE48
	ldr r0, [r2, #104]
	cmp r0, #0
	beq _0802BE48
	add r0, r2, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0802BE48
	mov r0, #1
	b _0802BE4A
	.byte 0x00
	.byte 0x00
_0802BE44:
	.4byte 0x7FFFFFFF
_0802BE48:
	mov r0, #0
_0802BE4A:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802BE18

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BE50
sub_0802BE50: @ 0x0802BE50
	push {r4,lr}
	ldr r0, _0802BE6C  @ =0x03000C90
	ldr r4, [r0, #24]
	cmp r4, #0
	beq _0802BE64
	ldr r1, _0802BE70  @ =0x03000C70
	mov r2, #0
	mov r3, #0
	bl _call_via_r4
_0802BE64:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BE6C:
	.4byte 0x03000C90
_0802BE70:
	.4byte 0x03000C70
	THUMB_FUNC_END sub_0802BE50

	THUMB_FUNC_START sub_0802BE74
sub_0802BE74: @ 0x0802BE74
	push {lr}
	ldr r0, _0802BE94  @ =0x03000C90
	ldrh r1, [r0, #8]
	add r2, r0, #0
	cmp r1, #1
	bhi _0802BE9E
	cmp r1, #1
	bne _0802BE9A
	ldr r0, [r2, #4]
	ldr r1, [r2, #12]
	cmp r0, r1
	bne _0802BE98
	ldr r0, [r2, #16]
	str r0, [r2, #4]
	b _0802BE9A
	.byte 0x00
	.byte 0x00
_0802BE94:
	.4byte 0x03000C90
_0802BE98:
	str r1, [r2, #4]
_0802BE9A:
	mov r0, #0
	strh r0, [r2, #8]
_0802BE9E:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BE74

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802BEA4
sub_0802BEA4: @ 0x0802BEA4
	push {r4-r7,lr}
	lsl r0, r0, #24
	lsr r6, r0, #24
	ldr r0, _0802BEDC  @ =0x03000C90
	ldr r5, [r0, #24]
	cmp r5, #0
	beq _0802BED4
	ldr r1, _0802BEE0  @ =0x03000C70
	ldr r2, _0802BEE4  @ =gUnknown_0807BA68
	ldr r4, _0802BEE8  @ =0x0300015A
	mov r7, #0
	ldrsh r3, [r4, r7]
	bl _call_via_r5
	cmp r6, #0
	beq _0802BED4
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	lsl r0, r0, #16
	cmp r0, #0
	bge _0802BED4
	mov r0, #99
	strh r0, [r4]
_0802BED4:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BEDC:
	.4byte 0x03000C90
_0802BEE0:
	.4byte 0x03000C70
_0802BEE4:
	.4byte gUnknown_0807BA68
_0802BEE8:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BEA4

	THUMB_FUNC_START sub_0802BEEC
sub_0802BEEC: @ 0x0802BEEC
	push {lr}
	ldr r1, _0802BF14  @ =0x04000010
	mov r2, #8
	bl CpuSet
	ldr r1, _0802BF18  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802BF0E
	ldrh r0, [r1, #10]
	cmp r0, #0
	beq _0802BF0E
	ldr r0, [r1, #4]
	ldr r1, [r1]
	mov r2, #1
	bl CpuSet
_0802BF0E:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802BF14:
	.4byte 0x04000010
_0802BF18:
	.4byte 0x03000C90
	THUMB_FUNC_END sub_0802BEEC

	THUMB_FUNC_START sub_0802BF1C
sub_0802BF1C: @ 0x0802BF1C
	ldr r1, _0802BF24  @ =0x0300015A
	mov r0, #0
	strh r0, [r1]
	bx lr
_0802BF24:
	.4byte 0x0300015A
	THUMB_FUNC_END sub_0802BF1C

	THUMB_FUNC_START sub_0802BF28
sub_0802BF28: @ 0x0802BF28
	ldr r2, _0802BF58  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #4
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF5C  @ =0x04000005
	mov r0, #0
	strb r0, [r1]
	ldr r2, _0802BF60  @ =0x04000004
	ldrh r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802BF64  @ =0x040000BA
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BF68  @ =0x03000CB0
	mov r1, #227
	strb r1, [r0, #4]
	ldr r1, _0802BF6C  @ =0x0802C081
	str r1, [r0]
	str r0, [r0, #8]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BF58:
	.4byte 0x04000200
_0802BF5C:
	.4byte 0x04000005
_0802BF60:
	.4byte 0x04000004
_0802BF64:
	.4byte 0x040000BA
_0802BF68:
	.4byte 0x03000CB0
_0802BF6C:
	.4byte sub_0802C080
	THUMB_FUNC_END sub_0802BF28

	THUMB_FUNC_START sub_0802BF70
sub_0802BF70: @ 0x0802BF70
	push {r4,r5,lr}
	ldr r0, _0802BF9C  @ =0x03000CB0
	ldr r5, [r0, #104]
	cmp r5, #0
	beq _0802BF96
	add r4, r5, #0
_0802BF7C:
	ldr r0, [r4, #16]
	ldr r1, [r4]
	bl _call_via_r1
	ldr r4, [r4, #12]
	cmp r4, #0
	bne _0802BF7C
	ldr r1, _0802BF9C  @ =0x03000CB0
	ldr r0, [r5, #8]
	str r0, [r1, #104]
	ldr r1, _0802BFA0  @ =0x04000005
	ldrb r0, [r5, #4]
	strb r0, [r1]
_0802BF96:
	pop {r4,r5}
	pop {r0}
	bx r0
_0802BF9C:
	.4byte 0x03000CB0
_0802BFA0:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802BF70

	THUMB_FUNC_START sub_0802BFA4
sub_0802BFA4: @ 0x0802BFA4
	ldr r1, _0802BFB8  @ =0x040000BA
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802BFBC  @ =0x03000CB0
	str r0, [r0, #108]
	str r0, [r0, #8]
	mov r1, #1
	str r1, [r0, #100]
	bx lr
	.byte 0x00
	.byte 0x00
_0802BFB8:
	.4byte 0x040000BA
_0802BFBC:
	.4byte 0x03000CB0
	THUMB_FUNC_END sub_0802BFA4

	THUMB_FUNC_START sub_0802BFC0
sub_0802BFC0: @ 0x0802BFC0
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r8, r0
	add r6, r1, #0
	add r5, r2, #0
	mov r0, #0
	mov r12, r0
	cmp r5, #159
	bhi _0802C04A
	mov r7, #0
	ldr r0, _0802BFFC  @ =0x03000CB0
	ldr r3, [r0, #108]
	add r2, r3, #0
	mov r9, r0
	cmp r3, #0
	beq _0802C00C
	add r1, r5, #2
_0802BFE6:
	ldrb r0, [r3, #4]
	cmp r0, r5
	bcc _0802C004
	cmp r0, r1
	bhi _0802C000
	ldr r0, [r3]
	cmp r0, r6
	beq _0802C04A
	mov r1, #1
	mov r12, r1
	b _0802C00C
_0802BFFC:
	.4byte 0x03000CB0
_0802C000:
	cmp r0, r5
	bhi _0802C00C
_0802C004:
	add r7, r3, #0
	ldr r3, [r3, #8]
	cmp r3, r2
	bne _0802BFE6
_0802C00C:
	mov r2, r9
	ldr r1, [r2, #100]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r4, r0, r2
	add r1, r1, #1
	str r1, [r2, #100]
	mov r0, #0
	strb r5, [r4, #4]
	str r6, [r4]
	mov r1, r8
	str r1, [r4, #16]
	str r0, [r4, #12]
	mov r0, r12
	cmp r0, #0
	beq _0802C03C
	b _0802C032
_0802C030:
	ldr r3, [r3, #12]
_0802C032:
	ldr r0, [r3, #12]
	cmp r0, #0
	bne _0802C030
	str r4, [r3, #12]
	b _0802C04A
_0802C03C:
	cmp r7, #0
	bne _0802C046
	mov r1, r9
	str r4, [r1, #108]
	b _0802C048
_0802C046:
	str r4, [r7, #8]
_0802C048:
	str r3, [r4, #8]
_0802C04A:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802BFC0

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C058
sub_0802C058: @ 0x0802C058
	push {lr}
	ldr r0, _0802C06C  @ =0x03000CB0
	ldr r2, [r0, #108]
	str r2, [r0, #104]
	cmp r2, #0
	beq _0802C074
	ldr r1, _0802C070  @ =0x04000005
	ldrb r0, [r2, #4]
	strb r0, [r1]
	b _0802C078
_0802C06C:
	.4byte 0x03000CB0
_0802C070:
	.4byte 0x04000005
_0802C074:
	ldr r0, _0802C07C  @ =0x04000005
	strb r2, [r0]
_0802C078:
	pop {r0}
	bx r0
_0802C07C:
	.4byte 0x04000005
	THUMB_FUNC_END sub_0802C058

	THUMB_FUNC_START sub_0802C080
sub_0802C080: @ 0x0802C080
	push {lr}
	ldr r2, _0802C0A8  @ =0x040000B0
	ldr r0, _0802C0AC  @ =0x040000BA
	mov r1, #0
	strh r1, [r0]
	ldr r1, _0802C0B0  @ =0x03000C90
	ldrh r0, [r1, #8]
	cmp r0, #2
	bhi _0802C0A2
	ldr r0, [r1, #4]
	str r0, [r2]
	ldr r0, [r1]
	str r0, [r2, #4]
	ldrh r0, [r1, #10]
	ldr r1, _0802C0B4  @ =0xA2600000
	orr r0, r0, r1
	str r0, [r2, #8]
_0802C0A2:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C0A8:
	.4byte 0x040000B0
_0802C0AC:
	.4byte 0x040000BA
_0802C0B0:
	.4byte 0x03000C90
_0802C0B4:
	.4byte 0xA2600000
	THUMB_FUNC_END sub_0802C080

	THUMB_FUNC_START sub_0802C0B8
sub_0802C0B8: @ 0x0802C0B8
	push {lr}
	add r1, r0, #0
	ldr r3, _0802C0E0  @ =0x03000D20
	cmp r1, #0
	beq _0802C0D6
	ldr r2, [r1]
	cmp r2, #0
	bge _0802C0D6
	ldr r0, _0802C0E4  @ =0x7FFFFFFF
	and r2, r2, r0
	cmp r2, #108
	bls _0802C0D6
	ldr r0, [r1, #108]
	cmp r0, #0
	bne _0802C0E8
_0802C0D6:
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r3, #16]
	b _0802C0FE
	.byte 0x00
	.byte 0x00
_0802C0E0:
	.4byte 0x03000D20
_0802C0E4:
	.4byte 0x7FFFFFFF
_0802C0E8:
	add r1, r1, r0
	add r0, r1, #4
	str r0, [r3, #8]
	mov r2, #129
	lsl r2, r2, #2
	add r0, r1, r2
	str r0, [r3, #12]
	ldrh r0, [r1]
	strh r0, [r3, #16]
	ldrh r0, [r1, #2]
	strh r0, [r3, #18]
_0802C0FE:
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802C0B8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C104
sub_0802C104: @ 0x0802C104
	ldr r3, _0802C114  @ =0x03000D20
	lsl r1, r1, #2
	lsl r0, r0, #3
	add r1, r1, r0
	add r1, r1, r3
	str r2, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C114:
	.4byte 0x03000D20
	THUMB_FUNC_END sub_0802C104

	THUMB_FUNC_START sub_0802C118
sub_0802C118: @ 0x0802C118
	push {lr}
	add r2, r0, #0
	cmp r2, #0
	beq _0802C134
	ldr r1, [r2]
	cmp r1, #0
	bge _0802C134
	ldr r0, _0802C138  @ =0x7FFFFFFF
	and r1, r1, r0
	cmp r1, #108
	bls _0802C134
	ldr r0, [r2, #108]
	cmp r0, #0
	bne _0802C13C
_0802C134:
	mov r0, #0
	b _0802C13E
_0802C138:
	.4byte 0x7FFFFFFF
_0802C13C:
	mov r0, #1
_0802C13E:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802C118

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802C144
sub_0802C144: @ 0x0802C144
	push {r4,lr}
	add r2, r0, #0
	ldr r4, _0802C198  @ =0x03000D20
	ldrh r1, [r4, #16]
	mov r0, #128
	lsl r0, r0, #3
	cmp r1, r0
	beq _0802C192
	ldr r1, [r4]
	cmp r1, #0
	beq _0802C192
	ldr r3, [r4, #4]
	cmp r3, #0
	beq _0802C192
	ldr r0, _0802C19C  @ =0x040000D4
	str r1, [r0]
	mov r1, #160
	lsl r1, r1, #19
	str r1, [r0, #4]
	ldr r1, _0802C1A0  @ =0x80000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [r0]
	ldr r1, _0802C1A4  @ =0x05000200
	str r1, [r0, #4]
	ldr r1, _0802C1A8  @ =0x84000080
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldrh r0, [r4, #16]
	sub r2, r0, r2
	cmp r2, #159
	bgt _0802C192
	cmp r2, #0
	bge _0802C18A
	mov r2, #0
_0802C18A:
	ldr r1, _0802C1AC  @ =0x0802C1C1
	add r0, r4, #0
	bl sub_0802BFC0
_0802C192:
	pop {r4}
	pop {r0}
	bx r0
_0802C198:
	.4byte 0x03000D20
_0802C19C:
	.4byte 0x040000D4
_0802C1A0:
	.4byte 0x80000100
_0802C1A4:
	.4byte 0x05000200
_0802C1A8:
	.4byte 0x84000080
_0802C1AC:
	.4byte sub_0802C1C0
	THUMB_FUNC_END sub_0802C144

	THUMB_FUNC_START sub_0802C1B0
sub_0802C1B0: @ 0x0802C1B0
	ldr r1, _0802C1BC  @ =0x03000D20
	mov r0, #128
	lsl r0, r0, #3
	strh r0, [r1, #16]
	bx lr
	.byte 0x00
	.byte 0x00
_0802C1BC:
	.4byte 0x03000D20
	THUMB_FUNC_END sub_0802C1B0

	THUMB_FUNC_START sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	push {lr}
	add r2, r0, #0
	add r3, r2, #0
	ldrh r1, [r2, #18]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1E2
	ldr r1, _0802C200  @ =0x040000D4
	ldr r0, [r2, #8]
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1E2:
	ldrh r1, [r3, #18]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802C1FC
	ldr r1, _0802C200  @ =0x040000D4
	ldr r0, [r3, #12]
	str r0, [r1]
	ldr r0, _0802C208  @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _0802C204  @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0802C1FC:
	pop {r0}
	bx r0
_0802C200:
	.4byte 0x040000D4
_0802C204:
	.4byte 0x84000080
_0802C208:
	.4byte 0x05000200
	THUMB_FUNC_END sub_0802C1C0

	THUMB_FUNC_START sub_0802C20C
sub_0802C20C: @ 0x0802C20C
	push {r4,r5,lr}
	ldr r0, _0802C23C  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C240  @ =0x03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C244  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C248  @ =0x03000D3C
	strb r1, [r0]
	ldr r2, _0802C24C  @ =0x03000160
	strb r1, [r2]
	ldr r0, _0802C250  @ =0x03000161
	strb r1, [r0]
	ldr r0, _0802C254  @ =gMainState
	ldr r0, [r0]
	sub r0, r0, #5
	add r4, r2, #0
	cmp r0, #1
	bhi _0802C260
	ldr r1, _0802C258  @ =0x03000164
	ldr r3, _0802C25C  @ =gUnknown_0807C0E0
	b _0802C2C4
_0802C23C:
	.4byte 0x0300015C
_0802C240:
	.4byte 0x03000D38
_0802C244:
	.4byte 0x03000D34
_0802C248:
	.4byte 0x03000D3C
_0802C24C:
	.4byte 0x03000160
_0802C250:
	.4byte 0x03000161
_0802C254:
	.4byte gMainState
_0802C258:
	.4byte 0x03000164
_0802C25C:
	.4byte gUnknown_0807C0E0
_0802C260:
	ldr r0, _0802C274  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _0802C280
	ldr r1, _0802C278  @ =0x03000164
	ldr r3, _0802C27C  @ =gUnknown_0807C098
	b _0802C2C4
	.byte 0x00
	.byte 0x00
_0802C274:
	.4byte gUnknown_03000B80
_0802C278:
	.4byte 0x03000164
_0802C27C:
	.4byte gUnknown_0807C098
_0802C280:
	cmp r0, #2
	bne _0802C2A0
	ldr r1, _0802C294  @ =0x03000164
	ldr r2, _0802C298  @ =gUnknown_0807C0D0
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C29C  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C294:
	.4byte 0x03000164
_0802C298:
	.4byte gUnknown_0807C0D0
_0802C29C:
	.4byte 0x03000168
_0802C2A0:
	cmp r0, #3
	bne _0802C2C0
	ldr r1, _0802C2B4  @ =0x03000164
	ldr r2, _0802C2B8  @ =gUnknown_0807C0D8
	ldrh r0, [r2, #4]
	strh r0, [r1]
	ldr r1, _0802C2BC  @ =0x03000168
	ldr r0, [r2]
	b _0802C2DE
	.byte 0x00
	.byte 0x00
_0802C2B4:
	.4byte 0x03000164
_0802C2B8:
	.4byte gUnknown_0807C0D8
_0802C2BC:
	.4byte 0x03000168
_0802C2C0:
	ldr r1, _0802C304  @ =0x03000164
	ldr r3, _0802C308  @ =gUnknown_0807C028
_0802C2C4:
	ldr r2, _0802C30C  @ =gUnknown_03000B90
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r1]
	ldr r1, _0802C310  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r2, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
_0802C2DE:
	str r0, [r1]
	ldr r2, _0802C314  @ =0x030009E0
	ldrb r0, [r4]
	ldr r1, [r1]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r1, _0802C318  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C304:
	.4byte 0x03000164
_0802C308:
	.4byte gUnknown_0807C028
_0802C30C:
	.4byte gUnknown_03000B90
_0802C310:
	.4byte 0x03000168
_0802C314:
	.4byte 0x030009E0
_0802C318:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C20C

	THUMB_FUNC_START sub_0802C31C
sub_0802C31C: @ 0x0802C31C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	ldr r0, _0802C3CC  @ =gUnknown_03001720
	ldrh r1, [r0]
	lsl r1, r1, #16
	asr r1, r1, #19
	lsl r1, r1, #16
	ldr r0, _0802C3D0  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	lsr r0, r1, #16
	str r0, [sp, #16]
	mov r2, #0
	cmp r1, #0
	bgt _0802C348
	b _0802C4F8
_0802C348:
	mov r1, r8
	lsl r0, r1, #16
	asr r5, r0, #16
	lsl r0, r5, #6
	lsl r2, r2, #16
	asr r4, r2, #16
	add r0, r0, r4
	ldr r6, _0802C3D4  @ =gUnknown_0807820C
	ldr r3, [r6]
	lsl r1, r0, #1
	ldr r6, _0802C3D8  @ =0x0000600C
	add r0, r3, r6
	add r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #16]
	lsl r1, r1, #16
	str r1, [sp, #24]
	str r2, [sp, #20]
	cmp r0, #0
	bne _0802C372
	b _0802C4E6
_0802C372:
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r3, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C3DC  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	add r1, r1, r2
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #40
	bne _0802C3EC
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r0, [r0]
	str r4, [sp]
	ldrh r0, [r0, #2]
	sub r0, r5, r0
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, sp
	bl sub_08002160
	ldr r3, _0802C3D4  @ =gUnknown_0807820C
	ldr r2, [r3]
	ldr r4, _0802C3E0  @ =0x0000800C
	add r2, r2, r4
	mov r0, sp
	add r1, r6, #0
	bl sub_080063E4
	ldr r0, _0802C3E4  @ =gUnknown_030009EC
	mov r4, #1
	strb r4, [r0]
	mov r0, #40
	bl sub_0801B50C
	ldr r0, _0802C3E8  @ =0x03000D3C
	strb r4, [r0]
	b _0802C4E6
	.byte 0x00
	.byte 0x00
_0802C3CC:
	.4byte gUnknown_03001720
_0802C3D0:
	.4byte 0x030009E0
_0802C3D4:
	.4byte gUnknown_0807820C
_0802C3D8:
	.4byte 0x0000600C
_0802C3DC:
	.4byte gUnknown_08078210
_0802C3E0:
	.4byte 0x0000800C
_0802C3E4:
	.4byte gUnknown_030009EC
_0802C3E8:
	.4byte 0x03000D3C
_0802C3EC:
	ldr r0, _0802C520  @ =0x03000D3C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0802C4E6
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
	ldr r0, _0802C528  @ =0x03000D40
	mov r6, r8
	lsl r2, r6, #16
	mov r3, #0
	ldrsh r1, [r0, r3]
	add r3, r0, #0
	cmp r8, r1
	bge _0802C4DC
	mov r9, r4
_0802C410:
	asr r7, r2, #16
	lsl r0, r7, #6
	add r0, r0, r9
	ldr r4, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r4]
	lsl r1, r0, #1
	ldr r6, _0802C530  @ =0x0000600C
	add r0, r2, r6
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	beq _0802C4C2
	sub r0, r0, #1
	lsl r0, r0, #2
	add r0, r2, r0
	ldrh r6, [r0, #12]
	ldr r0, _0802C534  @ =gUnknown_08078210
	ldr r1, [r0]
	sub r0, r6, #1
	lsl r0, r0, #2
	mov r2, #132
	lsl r2, r2, #1
	mov r10, r2
	add r1, r1, r10
	add r0, r1, r0
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #41
	bne _0802C4C2
	lsl r0, r6, #2
	add r0, r1, r0
	ldr r4, [r0]
	mov r3, r9
	str r3, [sp, #8]
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	add r0, r0, #1
	add r5, sp, #8
	str r0, [r5, #4]
	add r0, r5, #0
	bl sub_08002160
	ldr r0, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r0]
	ldr r1, _0802C538  @ =0x0000800C
	add r2, r2, r1
	add r0, r5, #0
	add r1, r6, #0
	bl sub_080063E4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_08001BA4
	ldrh r0, [r4, #2]
	sub r0, r7, r0
	lsl r0, r0, #6
	add r0, r0, r9
	ldr r3, _0802C52C  @ =gUnknown_0807820C
	ldr r2, [r3]
	lsl r1, r0, #1
	ldr r4, _0802C530  @ =0x0000600C
	add r0, r2, r4
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _0802C4BA
	ldr r1, _0802C534  @ =gUnknown_08078210
	ldr r0, [r1]
	add r1, r6, #2
	lsl r1, r1, #2
	add r0, r0, r10
	add r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4, #2]
	ldr r0, [r5, #4]
	sub r0, r0, r1
	str r0, [r5, #4]
	ldr r3, _0802C538  @ =0x0000800C
	add r2, r2, r3
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #6
	bl sub_080064D4
_0802C4BA:
	ldr r1, _0802C53C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
	ldr r3, _0802C528  @ =0x03000D40
_0802C4C2:
	mov r4, r8
	lsl r0, r4, #16
	mov r6, #128
	lsl r6, r6, #9
	add r0, r0, r6
	lsr r0, r0, #16
	mov r8, r0
	lsl r2, r0, #16
	asr r1, r2, #16
	mov r4, #0
	ldrsh r0, [r3, r4]
	cmp r1, r0
	blt _0802C410
_0802C4DC:
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	lsr r0, r0, #3
	mov r8, r0
_0802C4E6:
	ldr r6, [sp, #20]
	mov r1, #128
	lsl r1, r1, #9
	add r0, r6, r1
	lsr r2, r0, #16
	ldr r3, [sp, #24]
	cmp r0, r3
	bge _0802C4F8
	b _0802C348
_0802C4F8:
	ldr r1, _0802C520  @ =0x03000D3C
	ldrb r0, [r1]
	cmp r0, #2
	bne _0802C510
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802C528  @ =0x03000D40
	ldr r0, _0802C524  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #2
	asr r0, r0, #3
	strh r0, [r1]
_0802C510:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C520:
	.4byte 0x03000D3C
_0802C524:
	.4byte 0x030009E0
_0802C528:
	.4byte 0x03000D40
_0802C52C:
	.4byte gUnknown_0807820C
_0802C530:
	.4byte 0x0000600C
_0802C534:
	.4byte gUnknown_08078210
_0802C538:
	.4byte 0x0000800C
_0802C53C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_0802C31C

	THUMB_FUNC_START sub_0802C540
sub_0802C540: @ 0x0802C540
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	ldr r0, _0802C574  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq _0802C558
	b _0802C6F4
_0802C558:
	ldr r0, _0802C578  @ =0x03000161
	ldrb r1, [r0]
	cmp r1, #1
	bne _0802C590
	ldr r2, _0802C57C  @ =0x030009E0
	ldr r0, _0802C580  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bls _0802C584
	sub r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C574:
	.4byte gUnknown_03000B90
_0802C578:
	.4byte 0x03000161
_0802C57C:
	.4byte 0x030009E0
_0802C580:
	.4byte 0x03000162
_0802C584:
	mov r0, #0
	ldr r2, _0802C58C  @ =0x03000161
	strb r0, [r2]
	b _0802C6E8
_0802C58C:
	.4byte 0x03000161
_0802C590:
	cmp r1, #2
	bne _0802C5BC
	ldr r2, _0802C5A8  @ =0x030009E0
	ldr r0, _0802C5AC  @ =0x03000162
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	bcs _0802C5B0
	add r0, r1, #1
	strh r0, [r2]
	b _0802C6E8
	.byte 0x00
	.byte 0x00
_0802C5A8:
	.4byte 0x030009E0
_0802C5AC:
	.4byte 0x03000162
_0802C5B0:
	mov r0, #0
	ldr r3, _0802C5B8  @ =0x03000161
	strb r0, [r3]
	b _0802C6E8
_0802C5B8:
	.4byte 0x03000161
_0802C5BC:
	ldr r0, _0802C680  @ =0x03000160
	ldrb r3, [r0]
	ldr r1, _0802C684  @ =0x03000164
	ldrh r1, [r1]
	cmp r3, r1
	bcc _0802C5CA
	b _0802C6EC
_0802C5CA:
	ldr r1, _0802C688  @ =gUnknown_03001A30
	ldrb r7, [r1]
	ldrb r0, [r1, #1]
	mov r8, r0
	add r0, r7, r0
	ldrb r2, [r1, #2]
	mov r10, r2
	add r0, r0, r10
	ldrb r6, [r1, #3]
	add r0, r6, r0
	ldrb r2, [r1, #4]
	mov r12, r2
	add r0, r0, r12
	ldrb r1, [r1, #5]
	mov r9, r1
	add r5, r1, r0
	ldr r2, _0802C68C  @ =0x03000168
	ldr r1, [r2]
	lsl r0, r3, #3
	add r3, r0, r1
	ldrh r4, [r3]
	cmp r4, #0
	bne _0802C608
	ldr r0, _0802C690  @ =0x0300015C
	ldr r1, _0802C694  @ =0x03000D34
	ldr r0, [r0]
	ldr r1, [r1]
	sub r0, r0, r1
	ldrh r1, [r3, #4]
	cmp r0, r1
	bge _0802C652
_0802C608:
	cmp r4, #1
	bne _0802C6E8
	ldrh r0, [r3, #4]
	cmp r0, #4
	bne _0802C61A
	cmp r7, #0
	bne _0802C652
	cmp r6, #0
	bne _0802C652
_0802C61A:
	cmp r0, #5
	bne _0802C62A
	mov r2, r8
	cmp r2, #0
	bne _0802C652
	mov r3, r12
	cmp r3, #0
	bne _0802C652
_0802C62A:
	cmp r0, #6
	bne _0802C63A
	mov r1, r10
	cmp r1, #0
	bne _0802C652
	mov r2, r9
	cmp r2, #0
	bne _0802C652
_0802C63A:
	cmp r0, #1
	bne _0802C642
	cmp r5, #0
	bne _0802C652
_0802C642:
	cmp r0, #2
	bne _0802C64A
	cmp r5, #1
	bhi _0802C652
_0802C64A:
	cmp r0, #3
	bne _0802C6E8
	cmp r5, #2
	bls _0802C6E8
_0802C652:
	ldr r2, _0802C698  @ =0x03000162
	ldr r3, _0802C680  @ =0x03000160
	ldrb r0, [r3]
	ldr r3, _0802C68C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #2]
	strh r0, [r2]
	ldr r2, _0802C680  @ =0x03000160
	ldrb r0, [r2]
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r1, _0802C69C  @ =0x030009E0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bcs _0802C6A4
	mov r0, #1
	ldr r3, _0802C6A0  @ =0x03000161
	strb r0, [r3]
	b _0802C6AA
	.byte 0x00
	.byte 0x00
_0802C680:
	.4byte 0x03000160
_0802C684:
	.4byte 0x03000164
_0802C688:
	.4byte gUnknown_03001A30
_0802C68C:
	.4byte 0x03000168
_0802C690:
	.4byte 0x0300015C
_0802C694:
	.4byte 0x03000D34
_0802C698:
	.4byte 0x03000162
_0802C69C:
	.4byte 0x030009E0
_0802C6A0:
	.4byte 0x03000161
_0802C6A4:
	mov r0, #2
	ldr r1, _0802C704  @ =0x03000161
	strb r0, [r1]
_0802C6AA:
	ldr r2, _0802C708  @ =0x03000160
	ldrb r0, [r2]
	ldr r3, _0802C70C  @ =0x03000168
	ldr r1, [r3]
	lsl r0, r0, #3
	add r0, r0, r1
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0802C6D8
	ldr r1, _0802C710  @ =0x03000D38
	mov r0, #0
	strh r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #110
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802C6D8:
	ldr r1, _0802C708  @ =0x03000160
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldr r1, _0802C714  @ =0x03000D34
	ldr r0, _0802C718  @ =0x0300015C
	ldr r0, [r0]
	str r0, [r1]
_0802C6E8:
	bl sub_0802C31C
_0802C6EC:
	ldr r1, _0802C718  @ =0x0300015C
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
_0802C6F4:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C704:
	.4byte 0x03000161
_0802C708:
	.4byte 0x03000160
_0802C70C:
	.4byte 0x03000168
_0802C710:
	.4byte 0x03000D38
_0802C714:
	.4byte 0x03000D34
_0802C718:
	.4byte 0x0300015C
	THUMB_FUNC_END sub_0802C540

	THUMB_FUNC_START sub_0802C71C
sub_0802C71C: @ 0x0802C71C
	push {r4,r5,lr}
	ldr r0, _0802C774  @ =0x0300015C
	mov r1, #0
	str r1, [r0]
	ldr r2, _0802C778  @ =0x03000D38
	mov r0, #90
	strh r0, [r2]
	ldr r0, _0802C77C  @ =0x03000D34
	str r1, [r0]
	ldr r0, _0802C780  @ =0x03000D3C
	strb r1, [r0]
	ldr r4, _0802C784  @ =0x03000160
	strb r1, [r4]
	ldr r0, _0802C788  @ =0x03000161
	strb r1, [r0]
	ldr r2, _0802C78C  @ =0x03000164
	ldr r3, _0802C790  @ =gUnknown_0807C0E0
	ldr r1, _0802C794  @ =gUnknown_03000B90
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldrh r0, [r0, #4]
	strh r0, [r2]
	ldr r2, _0802C798  @ =0x03000168
	mov r5, #16
	ldrsh r0, [r1, r5]
	lsl r0, r0, #3
	add r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, _0802C79C  @ =0x030009E0
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldr r1, _0802C7A0  @ =0x03000D40
	lsl r0, r0, #16
	lsr r0, r0, #19
	strh r0, [r1]
	mov r0, #1
	strb r0, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802C774:
	.4byte 0x0300015C
_0802C778:
	.4byte 0x03000D38
_0802C77C:
	.4byte 0x03000D34
_0802C780:
	.4byte 0x03000D3C
_0802C784:
	.4byte 0x03000160
_0802C788:
	.4byte 0x03000161
_0802C78C:
	.4byte 0x03000164
_0802C790:
	.4byte gUnknown_0807C0E0
_0802C794:
	.4byte gUnknown_03000B90
_0802C798:
	.4byte 0x03000168
_0802C79C:
	.4byte 0x030009E0
_0802C7A0:
	.4byte 0x03000D40
	THUMB_FUNC_END sub_0802C71C

	THUMB_FUNC_START sub_0802C7A4
sub_0802C7A4: @ 0x0802C7A4
	push {r4-r7,lr}
	ldr r3, _0802C7E8  @ =gUnknown_03000B90
	mov r1, #18
	ldrsh r0, [r3, r1]
	cmp r0, #2
	beq _0802C7B2
	b _0802C902
_0802C7B2:
	ldr r0, _0802C7EC  @ =0x03000D7C
	mov r4, #0
	str r4, [r0]
	ldr r0, _0802C7F0  @ =gMainState
	ldr r1, [r0]
	cmp r1, #5
	bne _0802C80C
	ldr r2, _0802C7F4  @ =0x03000D78
	ldr r1, _0802C7F8  @ =gUnknown_0807C7A8
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C7FC  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C800  @ =0x03000D88
	ldr r1, _0802C804  @ =gUnknown_0807C7C4
	str r1, [r0]
	ldr r2, _0802C808  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C7E8:
	.4byte gUnknown_03000B90
_0802C7EC:
	.4byte 0x03000D7C
_0802C7F0:
	.4byte gMainState
_0802C7F4:
	.4byte 0x03000D78
_0802C7F8:
	.4byte gUnknown_0807C7A8
_0802C7FC:
	.4byte 0x03000D80
_0802C800:
	.4byte 0x03000D88
_0802C804:
	.4byte gUnknown_0807C7C4
_0802C808:
	.4byte 0x03000D74
_0802C80C:
	ldr r0, _0802C844  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802C81C
	cmp r1, #2
	bne _0802C860
_0802C81C:
	ldr r2, _0802C848  @ =0x03000D78
	ldr r1, _0802C84C  @ =gUnknown_0807C7CC
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C850  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C854  @ =0x03000D88
	ldr r1, _0802C858  @ =gUnknown_0807C804
	str r1, [r0]
	ldr r2, _0802C85C  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C844:
	.4byte gUnknown_03000B80
_0802C848:
	.4byte 0x03000D78
_0802C84C:
	.4byte gUnknown_0807C7CC
_0802C850:
	.4byte 0x03000D80
_0802C854:
	.4byte 0x03000D88
_0802C858:
	.4byte gUnknown_0807C804
_0802C85C:
	.4byte 0x03000D74
_0802C860:
	cmp r0, #1
	bne _0802C8A4
	ldr r2, _0802C88C  @ =0x03000D78
	ldr r1, _0802C890  @ =gUnknown_0807C814
	mov r5, #16
	ldrsh r0, [r3, r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0802C894  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C898  @ =0x03000D88
	ldr r1, _0802C89C  @ =gUnknown_0807C82C
	str r1, [r0]
	ldr r2, _0802C8A0  @ =0x03000D74
	mov r4, #16
	ldrsh r0, [r3, r4]
	add r0, r0, r1
	ldrb r0, [r0]
	b _0802C8BA
	.byte 0x00
	.byte 0x00
_0802C88C:
	.4byte 0x03000D78
_0802C890:
	.4byte gUnknown_0807C814
_0802C894:
	.4byte 0x03000D80
_0802C898:
	.4byte 0x03000D88
_0802C89C:
	.4byte gUnknown_0807C82C
_0802C8A0:
	.4byte 0x03000D74
_0802C8A4:
	ldr r1, _0802C908  @ =0x03000D78
	ldr r0, _0802C90C  @ =gUnknown_0807C834
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0802C910  @ =0x03000D80
	strb r4, [r0]
	ldr r0, _0802C914  @ =0x03000D88
	ldr r1, _0802C918  @ =gUnknown_0807C838
	str r1, [r0]
	ldr r2, _0802C91C  @ =0x03000D74
	ldrb r0, [r1]
_0802C8BA:
	strb r0, [r2]
	ldr r1, _0802C920  @ =0x03000D64
	ldr r0, _0802C924  @ =0x030009E0
	ldrh r0, [r0]
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r1]
	mov r1, #0
	add r4, r2, #0
	ldr r7, _0802C928  @ =0x03000D84
	ldr r5, _0802C92C  @ =0x03000D68
	mov r12, r5
	ldrb r0, [r4]
	cmp r1, r0
	bge _0802C8F8
	ldr r6, _0802C930  @ =0x03000D90
	ldr r5, _0802C934  @ =0x03000D58
	mov r3, #0
_0802C8DE:
	lsl r0, r1, #16
	asr r0, r0, #16
	add r2, r0, r6
	add r1, r0, r5
	strb r3, [r1]
	strb r3, [r2]
	add r0, r0, #1
	lsl r0, r0, #16
	lsr r1, r0, #16
	asr r0, r0, #16
	ldrb r2, [r4]
	cmp r0, r2
	blt _0802C8DE
_0802C8F8:
	mov r0, #0
	strb r0, [r7]
	mov r0, #0
	mov r4, r12
	strh r0, [r4]
_0802C902:
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C908:
	.4byte 0x03000D78
_0802C90C:
	.4byte gUnknown_0807C834
_0802C910:
	.4byte 0x03000D80
_0802C914:
	.4byte 0x03000D88
_0802C918:
	.4byte gUnknown_0807C838
_0802C91C:
	.4byte 0x03000D74
_0802C920:
	.4byte 0x03000D64
_0802C924:
	.4byte 0x030009E0
_0802C928:
	.4byte 0x03000D84
_0802C92C:
	.4byte 0x03000D68
_0802C930:
	.4byte 0x03000D90
_0802C934:
	.4byte 0x03000D58
	THUMB_FUNC_END sub_0802C7A4

	THUMB_FUNC_START sub_0802C938
sub_0802C938: @ 0x0802C938
	push {r4-r7,lr}
	sub sp, sp, #8
	mov r4, #0
	ldr r0, _0802C9C0  @ =gUnknown_03000B90
	mov r2, #16
	ldrsh r1, [r0, r2]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802C9B8
	mov r7, #0
	ldr r6, _0802C9C8  @ =0x03000DA0
_0802C954:
	lsl r4, r4, #16
	asr r5, r4, #16
	ldr r0, _0802C9CC  @ =0x03000D78
	ldr r1, [r0]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #3
	add r0, r0, r1
	ldr r3, [r0]
	asr r3, r3, #8
	add r3, r3, #12
	lsl r3, r3, #16
	lsr r3, r3, #16
	ldr r0, _0802C9D0  @ =0x030009E0
	ldrh r0, [r0]
	sub r0, r0, #8
	lsl r0, r0, #16
	lsr r0, r0, #16
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #255
	mov r1, #171
	mov r2, #1
	neg r2, r2
	bl sub_08038DF4
	lsl r0, r0, #24
	lsr r1, r0, #24
	lsl r2, r5, #2
	add r2, r2, r6
	ldr r3, _0802C9D4  @ =0x03001940
	mov r0, #176
	mul r1, r0, r1
	ldr r0, [r3]
	add r0, r0, r1
	str r0, [r2]
	mov r3, #128
	lsl r3, r3, #9
	add r1, r4, r3
	lsr r4, r1, #16
	asr r1, r1, #16
	ldr r0, _0802C9C0  @ =gUnknown_03000B90
	mov r3, #16
	ldrsh r2, [r0, r3]
	ldr r0, _0802C9C4  @ =0x03000D88
	ldr r0, [r0]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	blt _0802C954
_0802C9B8:
	add sp, sp, #8
	pop {r4-r7}
	pop {r0}
	bx r0
_0802C9C0:
	.4byte gUnknown_03000B90
_0802C9C4:
	.4byte 0x03000D88
_0802C9C8:
	.4byte 0x03000DA0
_0802C9CC:
	.4byte 0x03000D78
_0802C9D0:
	.4byte 0x030009E0
_0802C9D4:
	.4byte 0x03001940
	THUMB_FUNC_END sub_0802C938

	THUMB_FUNC_START sub_0802C9D8
sub_0802C9D8: @ 0x0802C9D8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802CA3C  @ =gUnknown_03000B90
	mov r2, #18
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, #2
	beq _0802C9EC
	b _0802CD28
_0802C9EC:
	ldr r0, _0802CA40  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	bne _0802C9FC
	b _0802CD28
_0802C9FC:
	ldr r2, _0802CA44  @ =gUnknown_030009D0
	ldrb r1, [r2]
	mov r0, #16
	and r0, r0, r1
	add r6, r2, #0
	cmp r0, #0
	bne _0802CA0C
	b _0802CD28
_0802CA0C:
	ldr r0, _0802CA48  @ =0x03000D7C
	ldr r2, [r0]
	add r7, r0, #0
	ldr r3, _0802CA4C  @ =0x03000D84
	mov r12, r3
	cmp r2, #0
	beq _0802CA64
	ldr r0, _0802CA50  @ =0x03000D54
	ldr r1, _0802CA54  @ =0x03000D64
	ldr r1, [r1]
	ldr r3, _0802CA58  @ =0xFFFFFB00
	add r1, r1, r3
	ldr r0, [r0]
	cmp r0, r1
	ble _0802CA62
	mov r4, r12
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _0802CA5C
	str r1, [r2, #36]
	b _0802CA64
_0802CA3C:
	.4byte gUnknown_03000B90
_0802CA40:
	.4byte gUnknown_03001A1C
_0802CA44:
	.4byte gUnknown_030009D0
_0802CA48:
	.4byte 0x03000D7C
_0802CA4C:
	.4byte 0x03000D84
_0802CA50:
	.4byte 0x03000D54
_0802CA54:
	.4byte 0x03000D64
_0802CA58:
	.4byte 0xFFFFFB00
_0802CA5C:
	ldr r0, _0802CA78  @ =0x03000D50
	ldr r0, [r0]
	add r0, r0, r3
_0802CA62:
	str r0, [r2, #36]
_0802CA64:
	mov r5, r12
	ldrb r0, [r5]
	cmp r0, #4
	bls _0802CA6E
	b _0802CD28
_0802CA6E:
	lsl r0, r0, #2
	ldr r1, _0802CA7C  @ =0x0802CA80
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_0802CA78:
	.4byte 0x03000D50
_0802CA7C:
	.4byte _0802CA80
_0802CA80:
	.4byte _0802CA94
	.4byte _0802CB44
	.4byte _0802CBA4
	.4byte _0802CC14
	.4byte _0802CCD0
_0802CA94:
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802CAA0
	b _0802CD28
_0802CAA0:
	ldr r0, _0802CB18  @ =0x03000D68
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldr r6, _0802CB1C  @ =0x03000D80
	ldrb r2, [r6]
	ldr r0, _0802CB20  @ =0x03000D78
	ldr r5, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r5
	lsl r1, r1, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #12]
	cmp r1, r0
	bcs _0802CAC4
	b _0802CD28
_0802CAC4:
	mov r0, #1
	mov r1, r12
	strb r0, [r1]
	ldr r2, _0802CB24  @ =0x03000D60
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0]
	str r0, [r2]
	ldr r4, _0802CB28  @ =0x03000D70
	ldr r3, _0802CB2C  @ =0x030009E0
	ldrh r2, [r3]
	lsl r2, r2, #8
	ldrb r1, [r6]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r5
	ldr r0, [r0, #4]
	sub r2, r2, r0
	str r2, [r4]
	ldr r1, _0802CB30  @ =0x03000D64
	ldrh r0, [r3]
	lsl r0, r0, #8
	str r0, [r1]
	ldr r1, _0802CB34  @ =0x03000DA0
	ldrb r0, [r6]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7]
	ldr r1, _0802CB38  @ =0x03000D54
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r1, _0802CB3C  @ =0x03000D6C
	ldr r0, _0802CB40  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	b _0802CD28
_0802CB18:
	.4byte 0x03000D68
_0802CB1C:
	.4byte 0x03000D80
_0802CB20:
	.4byte 0x03000D78
_0802CB24:
	.4byte 0x03000D60
_0802CB28:
	.4byte 0x03000D70
_0802CB2C:
	.4byte 0x030009E0
_0802CB30:
	.4byte 0x03000D64
_0802CB34:
	.4byte 0x03000DA0
_0802CB38:
	.4byte 0x03000D54
_0802CB3C:
	.4byte 0x03000D6C
_0802CB40:
	.4byte 0x030019AC
_0802CB44:
	ldr r3, _0802CB88  @ =0x03000D64
	ldr r0, _0802CB8C  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CB90  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r3]
	sub r2, r0, r1
	str r2, [r3]
	ldr r0, _0802CB94  @ =0x03000D70
	ldr r0, [r0]
	mov r3, #128
	lsl r3, r3, #4
	add r0, r0, r3
	cmp r2, r0
	blt _0802CB70
	b _0802CD28
_0802CB70:
	mov r0, #2
	mov r4, r12
	strb r0, [r4]
	ldr r0, _0802CB98  @ =0x03000D68
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0802CB9C  @ =0x03000D50
	str r2, [r0]
	ldr r0, _0802CBA0  @ =0x03000DC8
	strh r1, [r0]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CB88:
	.4byte 0x03000D64
_0802CB8C:
	.4byte 0x03000D80
_0802CB90:
	.4byte 0x03000D78
_0802CB94:
	.4byte 0x03000D70
_0802CB98:
	.4byte 0x03000D68
_0802CB9C:
	.4byte 0x03000D50
_0802CBA0:
	.4byte 0x03000DC8
_0802CBA4:
	ldr r5, _0802CBE0  @ =0x03000D68
	ldrh r0, [r5]
	add r3, r0, #1
	strh r3, [r5]
	ldr r0, _0802CBE4  @ =0x03000DC8
	ldrh r1, [r0]
	add r4, r0, #0
	cmp r1, #9
	bls _0802CBF0
	mov r0, #9
	strh r0, [r4]
	ldr r0, _0802CBE8  @ =0x03000D80
	ldrb r1, [r0]
	ldr r0, _0802CBEC  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r1, r3, #16
	lsr r1, r1, #16
	ldrh r0, [r0, #14]
	cmp r1, r0
	bcc _0802CC04
	mov r0, #3
	mov r1, r12
	strb r0, [r1]
	mov r0, #2
	strh r0, [r5]
	b _0802CC04
_0802CBE0:
	.4byte 0x03000D68
_0802CBE4:
	.4byte 0x03000DC8
_0802CBE8:
	.4byte 0x03000D80
_0802CBEC:
	.4byte 0x03000D78
_0802CBF0:
	ldr r2, _0802CC0C  @ =0x03000D50
	ldr r1, _0802CC10  @ =gUnknown_0807C83A
	ldrh r0, [r4]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	sub r0, r0, r1
	str r0, [r2]
_0802CC04:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _0802CD28
_0802CC0C:
	.4byte 0x03000D50
_0802CC10:
	.4byte gUnknown_0807C83A
_0802CC14:
	ldr r3, _0802CC90  @ =0x03000D50
	ldr r1, [r3]
	add r1, r1, #32
	ldr r5, _0802CC94  @ =0x03000D80
	ldrb r2, [r5]
	ldr r0, _0802CC98  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r4
	mov r2, #10
	ldrsh r0, [r0, r2]
	add r1, r1, r0
	str r1, [r3]
	ldr r3, _0802CC9C  @ =0x03000D64
	ldrb r1, [r5]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r4, #10
	ldrsh r0, [r0, r4]
	ldr r1, [r3]
	add r1, r1, r0
	str r1, [r3]
	ldr r0, _0802CCA0  @ =0x030009E0
	ldrh r2, [r0]
	lsl r0, r2, #8
	cmp r1, r0
	ble _0802CD28
	add r0, r2, #0
	add r0, r0, #8
	lsl r0, r0, #8
	str r0, [r3]
	ldr r0, _0802CCA4  @ =0x03000D68
	mov r3, #0
	strh r3, [r0]
	ldrb r1, [r6]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0802CCAC
	mov r0, r12
	strb r3, [r0]
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	mov r1, r8
	mov r4, #16
	ldrsh r2, [r1, r4]
	ldr r1, _0802CCA8  @ =0x03000D88
	ldr r1, [r1]
	add r1, r1, r2
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldrb r1, [r1]
	cmp r0, r1
	bcc _0802CD28
	strb r3, [r5]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CC90:
	.4byte 0x03000D50
_0802CC94:
	.4byte 0x03000D80
_0802CC98:
	.4byte 0x03000D78
_0802CC9C:
	.4byte 0x03000D64
_0802CCA0:
	.4byte 0x030009E0
_0802CCA4:
	.4byte 0x03000D68
_0802CCA8:
	.4byte 0x03000D88
_0802CCAC:
	ldr r0, [r7]
	ldr r2, [r0, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	ldr r3, [r0, #36]
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldr r1, _0802CCCC  @ =0x03000D84
	mov r0, #4
	strb r0, [r1]
	b _0802CD28
	.byte 0x00
	.byte 0x00
_0802CCCC:
	.4byte 0x03000D84
_0802CCD0:
	ldr r2, _0802CD0C  @ =0x03000D50
	ldr r3, _0802CD10  @ =0x03000D80
	ldrb r1, [r3]
	ldr r0, _0802CD14  @ =0x03000D78
	ldr r4, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	mov r5, #10
	ldrsh r1, [r0, r5]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	ldr r0, [r7]
	ldr r0, [r0, #32]
	asr r2, r0, #8
	ldrb r1, [r3]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	asr r0, r0, #8
	sub r1, r2, r0
	cmp r1, #0
	blt _0802CD18
	cmp r1, #8
	bgt _0802CD1E
	b _0802CD28
_0802CD0C:
	.4byte 0x03000D50
_0802CD10:
	.4byte 0x03000D80
_0802CD14:
	.4byte 0x03000D78
_0802CD18:
	sub r0, r0, r2
	cmp r0, #8
	ble _0802CD28
_0802CD1E:
	mov r0, #0
	mov r1, r12
	strb r0, [r1]
	mov r0, #0
	str r0, [r7]
_0802CD28:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802C9D8

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CD34
sub_0802CD34: @ 0x0802CD34
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #12
	add r6, r0, #0
	ldr r0, [r6, #32]
	asr r4, r0, #8
	ldr r0, _0802CDBC  @ =0x030009E0
	ldrh r0, [r0]
	lsl r0, r0, #8
	mov r12, r0
	ldr r0, _0802CDC0  @ =gUnknown_030009D0
	ldrb r1, [r0]
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	bne _0802CD5A
	b _0802CEF6
_0802CD5A:
	ldr r0, [r6, #36]
	cmp r0, r12
	ble _0802CD62
	b _0802CEF6
_0802CD62:
	mov r2, r12
	sub r1, r2, r0
	mov r0, #128
	lsl r0, r0, #5
	cmp r1, r0
	ble _0802CD70
	b _0802CEF6
_0802CD70:
	ldr r0, _0802CDC4  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CD7A
	b _0802CEF6
_0802CD7A:
	mov r7, #0
	ldr r3, _0802CDC8  @ =gUnknown_03000B90
	mov r0, #16
	ldrsh r2, [r3, r0]
	ldr r1, _0802CDCC  @ =0x03000D88
	ldr r0, [r1]
	add r0, r0, r2
	mov r9, r3
	add r5, r1, #0
	ldrb r0, [r0]
	cmp r7, r0
	blt _0802CD94
	b _0802CEF6
_0802CD94:
	ldr r1, _0802CDD0  @ =0x03000D78
	mov r8, r1
_0802CD98:
	lsl r3, r7, #16
	asr r1, r3, #16
	ldr r0, _0802CDD0  @ =0x03000D78
	ldr r2, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	ldr r0, [r0]
	asr r1, r0, #8
	sub r0, r4, r1
	cmp r0, #0
	blt _0802CDD4
	cmp r4, r1
	beq _0802CDB8
	b _0802CEDA
_0802CDB8:
	b _0802CDDA
	.byte 0x00
	.byte 0x00
_0802CDBC:
	.4byte 0x030009E0
_0802CDC0:
	.4byte gUnknown_030009D0
_0802CDC4:
	.4byte 0x03000D84
_0802CDC8:
	.4byte gUnknown_03000B90
_0802CDCC:
	.4byte 0x03000D88
_0802CDD0:
	.4byte 0x03000D78
_0802CDD4:
	cmp r1, r4
	beq _0802CDDA
	b _0802CEDA
_0802CDDA:
	asr r3, r3, #16
	mov r2, r8
	ldr r4, [r2]
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #3
	add r1, r0, r4
	ldr r0, _0802CE80  @ =0x03000D90
	add r5, r3, r0
	add r0, r1, #0
	add r0, r0, #16
	ldrb r2, [r5]
	add r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CEA8
	ldr r0, [r1]
	str r0, [r6, #32]
	ldr r2, _0802CE84  @ =0x03000D80
	strb r7, [r2]
	ldr r3, _0802CE88  @ =0x03000D60
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r3, _0802CE8C  @ =0x03000D70
	ldrb r1, [r2]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r4
	ldr r0, [r0, #4]
	mov r1, r12
	sub r0, r1, r0
	str r0, [r3]
	ldr r0, _0802CE90  @ =0x03000D64
	str r1, [r0]
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #112
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0802CE94  @ =0x03000D84
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802CE98  @ =0x03000D7C
	str r6, [r0]
	ldr r0, _0802CE9C  @ =0x03000D54
	ldr r3, [r6, #36]
	str r3, [r0]
	ldr r1, _0802CEA0  @ =0x03000D6C
	ldr r0, _0802CEA4  @ =0x030019AC
	ldr r0, [r0]
	ldr r0, [r0, #36]
	str r0, [r1]
	ldr r2, [r6, #32]
	lsl r2, r2, #8
	lsr r2, r2, #16
	lsl r3, r3, #8
	lsr r3, r3, #16
	mov r0, #12
	mov r1, #0
	bl sub_0804138C
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CE7C
	strb r4, [r5]
_0802CE7C:
	mov r0, #1
	b _0802CEF8
_0802CE80:
	.4byte 0x03000D90
_0802CE84:
	.4byte 0x03000D80
_0802CE88:
	.4byte 0x03000D60
_0802CE8C:
	.4byte 0x03000D70
_0802CE90:
	.4byte 0x03000D64
_0802CE94:
	.4byte 0x03000D84
_0802CE98:
	.4byte 0x03000D7C
_0802CE9C:
	.4byte 0x03000D54
_0802CEA0:
	.4byte 0x03000D6C
_0802CEA4:
	.4byte 0x030019AC
_0802CEA8:
	ldr r0, _0802CEB8  @ =0x03000D58
	add r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802CEBC
	mov r0, #1
	strb r0, [r3]
	b _0802CEF6
_0802CEB8:
	.4byte 0x03000D58
_0802CEBC:
	sub r0, r0, #1
	strb r0, [r3]
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #0
	bne _0802CEF6
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #7
	bls _0802CEF6
	strb r1, [r5]
	b _0802CEF6
_0802CEDA:
	mov r2, #128
	lsl r2, r2, #9
	add r0, r3, r2
	lsr r7, r0, #16
	asr r0, r0, #16
	mov r3, r9
	mov r1, #16
	ldrsh r2, [r3, r1]
	ldr r1, [r5]
	add r1, r1, r2
	ldrb r1, [r1]
	cmp r0, r1
	bge _0802CEF6
	b _0802CD98
_0802CEF6:
	mov r0, #0
_0802CEF8:
	add sp, sp, #12
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CD34

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802CF08
sub_0802CF08: @ 0x0802CF08
	ldr r1, _0802CF18  @ =0x03000D84
	mov r0, #0
	strb r0, [r1]
	ldr r1, _0802CF1C  @ =0x03000D68
	mov r0, #0
	strh r0, [r1]
	bx lr
	.byte 0x00
	.byte 0x00
_0802CF18:
	.4byte 0x03000D84
_0802CF1C:
	.4byte 0x03000D68
	THUMB_FUNC_END sub_0802CF08

	THUMB_FUNC_START sub_0802CF20
sub_0802CF20: @ 0x0802CF20
	push {r4,lr}
	add r4, r0, #0
	ldr r0, _0802CF60  @ =0x03000D84
	ldrb r0, [r0]
	cmp r0, #4
	bne _0802CF70
	add r0, r4, #0
	add r0, r0, #61
	ldrb r0, [r0]
	ldr r1, _0802CF64  @ =0x030019AC
	ldr r2, [r1]
	add r3, r2, #0
	add r3, r3, #67
	mov r1, #0
	ldrsb r1, [r3, r1]
	cmp r0, r1
	bne _0802CF54
	ldr r0, [r2, #36]
	mov r1, #128
	lsl r1, r1, #3
	add r0, r0, r1
	ldr r1, _0802CF68  @ =0xFFFFFF00
	and r0, r0, r1
	str r0, [r2, #36]
	mov r0, #255
	strb r0, [r3]
_0802CF54:
	ldr r0, _0802CF6C  @ =0x03000D54
	ldr r0, [r0]
	str r0, [r4, #36]
	mov r0, #1
	b _0802CF72
	.byte 0x00
	.byte 0x00
_0802CF60:
	.4byte 0x03000D84
_0802CF64:
	.4byte 0x030019AC
_0802CF68:
	.4byte 0xFFFFFF00
_0802CF6C:
	.4byte 0x03000D54
_0802CF70:
	mov r0, #0
_0802CF72:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802CF20

	THUMB_FUNC_START sub_0802CF78
sub_0802CF78: @ 0x0802CF78
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r0, #0
	mov r8, r0
	ldr r0, _0802CFCC  @ =gUnknown_03001A1C
	ldr r0, [r0]
	mov r1, #8
	and r0, r0, r1
	cmp r0, #0
	bne _0802D058
	ldr r2, _0802CFD0  @ =0x03000170
	ldr r1, [r2, #28]
	cmp r1, #0
	beq _0802D058
	ldr r0, _0802CFD4  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802D058
	add r4, r1, #0
	add r6, r4, #0
	add r6, r6, #144
	cmp r4, r6
	bcs _0802D040
	mov r7, #1
	neg r7, r7
	mov r9, r2
	mov r3, #4
	add r3, r3, r9
	mov r10, r3
_0802CFBA:
	ldr r0, [r4]
	cmp r0, r7
	beq _0802D03A
	cmp r0, #2
	bgt _0802D03A
	cmp r0, #2
	bne _0802CFD8
	str r7, [r4]
	b _0802D03A
_0802CFCC:
	.4byte gUnknown_03001A1C
_0802CFD0:
	.4byte 0x03000170
_0802CFD4:
	.4byte gUnknown_03001A38
_0802CFD8:
	mov r0, #1
	add r8, r8, r0
	ldr r5, _0802D010  @ =0x03000170
	ldr r0, [r5, #32]
	cmp r0, r7
	beq _0802CFEC
	bl sub_080721A8
	cmp r0, #0
	beq _0802D004
_0802CFEC:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #109
	mov r1, #4
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	str r0, [r5, #32]
_0802D004:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _0802D014
	sub r0, r0, #1
	b _0802D038
	.byte 0x00
	.byte 0x00
_0802D010:
	.4byte 0x03000170
_0802D014:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	mov r3, r9
	ldr r0, [r3, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	ldr r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r10
	ldr r0, [r0]
	cmp r1, r0
	bne _0802D036
	add r0, r4, #0
	mov r1, #2
	bl sub_0802D1DC
	b _0802D03A
_0802D036:
	ldrb r0, [r1, #12]
_0802D038:
	strb r0, [r4, #4]
_0802D03A:
	add r4, r4, #12
	cmp r4, r6
	bcc _0802CFBA
_0802D040:
	mov r0, r8
	cmp r0, #0
	bne _0802D058
	ldr r5, _0802D068  @ =0x03000170
	ldr r0, [r5, #32]
	mov r4, #1
	neg r4, r4
	cmp r0, r4
	beq _0802D058
	bl sub_08071D9C
	str r4, [r5, #32]
_0802D058:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D068:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802CF78

	THUMB_FUNC_START sub_0802D06C
sub_0802D06C: @ 0x0802D06C
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #144
	bl sub_08034854
	ldr r1, _0802D0B8  @ =0x03000170
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D086:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _0802D086
	ldr r0, _0802D0B8  @ =0x03000170
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_0802D0B8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D06C

	THUMB_FUNC_START sub_0802D0BC
sub_0802D0BC: @ 0x0802D0BC
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _0802D0E4  @ =0x03000170
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0802D0CA:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0802D0CA
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D0E4:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0BC

	THUMB_FUNC_START sub_0802D0E8
sub_0802D0E8: @ 0x0802D0E8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0802D13C  @ =0x03000170
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0802D12E
	mov r0, #144
	bl sub_08034854
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #11
_0802D108:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _0802D108
	ldr r0, _0802D13C  @ =0x03000170
	str r7, [r0, #32]
_0802D12E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D13C:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D0E8

	THUMB_FUNC_START sub_0802D140
sub_0802D140: @ 0x0802D140
	push {r4-r7,lr}
	add r3, r1, #0
	mov r1, #1
	neg r1, r1
	mov r12, r1
	ldr r0, [r0, #8]
	asr r7, r0, #11
	mov r0, #64
	neg r0, r0
	and r0, r0, r3
	add r7, r7, r0
	cmp r3, r7
	bhi _0802D1CA
_0802D15A:
	ldr r0, _0802D18C  @ =gUnknown_0807820C
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _0802D190  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _0802D194  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r6, r3, #1
	cmp r2, #6
	bne _0802D1C2
	cmp r5, r12
	beq _0802D1C2
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _0802D198  @ =0x03000170
	ldr r2, [r0, #28]
	add r4, r2, #0
	add r4, r4, #144
	b _0802D19E
	.byte 0x00
	.byte 0x00
_0802D18C:
	.4byte gUnknown_0807820C
_0802D190:
	.4byte 0x0000400C
_0802D194:
	.4byte 0x0000600C
_0802D198:
	.4byte 0x03000170
_0802D19C:
	add r2, r2, #12
_0802D19E:
	cmp r2, r4
	bcs _0802D1C2
	ldr r1, [r2]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _0802D19C
	ldr r0, [r2, #8]
	ldr r1, [r3]
	lsl r1, r1, #9
	lsr r1, r1, #25
	str r1, [r0]
	ldrb r1, [r3, #3]
	str r1, [r0, #4]
	add r0, r2, #0
	mov r1, #1
	bl sub_0802D1DC
_0802D1C2:
	mov r12, r5
	add r3, r6, #0
	cmp r3, r7
	bls _0802D15A
_0802D1CA:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802D140

	THUMB_FUNC_START sub_0802D1D0
sub_0802D1D0: @ 0x0802D1D0
	ldr r1, _0802D1D8  @ =0x03000170
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_0802D1D8:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1D0

	THUMB_FUNC_START sub_0802D1DC
sub_0802D1DC: @ 0x0802D1DC
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _0802D1FE
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _0802D204  @ =0x03000170
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_0802D1FE:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D204:
	.4byte 0x03000170
	THUMB_FUNC_END sub_0802D1DC

	THUMB_FUNC_START sub_0802D208
sub_0802D208: @ 0x0802D208
	push {r4,lr}
	ldr r4, _0802D224  @ =0x03000DCC
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802D22C
	bl sub_08029EB4
	ldr r0, _0802D228  @ =gUnknown_03000C28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802D230
	strb r0, [r4]
	b _0802D230
	.byte 0x00
	.byte 0x00
_0802D224:
	.4byte 0x03000DCC
_0802D228:
	.4byte gUnknown_03000C28
_0802D22C:
	bl sub_08029C20
_0802D230:
	ldr r4, _0802D260  @ =0x030001A0
	ldr r0, [r4]
	bl sub_0805739C
	bl sub_0802BE50
	bl sub_080331FC
	ldr r1, _0802D264  @ =gUnknown_03000B54
	ldr r0, [r1]
	add r2, r0, #1
	str r2, [r1]
	ldr r0, _0802D268  @ =gUnknown_030009C8
	ldr r0, [r0]
	cmp r0, #4
	bne _0802D26C
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	bne _0802D25C
	b _0802D3FE
_0802D25C:
	b _0802D3EA
	.byte 0x00
	.byte 0x00
_0802D260:
	.4byte 0x030001A0
_0802D264:
	.4byte gUnknown_03000B54
_0802D268:
	.4byte gUnknown_030009C8
_0802D26C:
	ldrb r3, [r4, #7]
	cmp r3, #3
	bne _0802D2D8
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2A6
	cmp r2, #180
	ble _0802D2A6
	ldr r0, _0802D2CC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2A6
	mov r0, #44
	mov r1, #8
	mov r2, #4
	strb r3, [r4, #4]
	strb r0, [r4, #5]
	strb r1, [r4, #6]
	strb r2, [r4, #7]
	ldr r0, _0802D2D0  @ =gUnknown_08B30768
	str r0, [r4]
	mov r0, #30
	mov r1, #1
	bl sub_080070E8
_0802D2A6:
	ldr r4, _0802D2D4  @ =0x030001A0
	ldrb r1, [r4, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802D2B4
	b _0802D452
_0802D2B4:
	mov r0, #3
	mov r1, #44
	mov r2, #8
	mov r3, #4
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	strb r2, [r4, #6]
	strb r3, [r4, #7]
	ldr r0, _0802D2D0  @ =gUnknown_08B30768
	str r0, [r4]
	mov r0, #30
	b _0802D40C
_0802D2CC:
	.4byte gUnknown_030012E8
_0802D2D0:
	.4byte gUnknown_08B30768
_0802D2D4:
	.4byte 0x030001A0
_0802D2D8:
	cmp r3, #4
	bne _0802D354
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D324
	cmp r2, #180
	ble _0802D324
	ldr r0, _0802D310  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D324
	mov r4, #128
	lsl r4, r4, #15
	add r0, r4, #0
	bl sub_080148F0
	cmp r0, #0
	beq _0802D314
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
	b _0802D324
	.byte 0x00
	.byte 0x00
_0802D310:
	.4byte gUnknown_030012E8
_0802D314:
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	mov r1, #1
	bl sub_080070E8
_0802D324:
	ldr r0, _0802D344  @ =0x030001A0
	ldrb r1, [r0, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0802D332
	b _0802D452
_0802D332:
	mov r4, #128
	lsl r4, r4, #15
	add r0, r4, #0
	bl sub_080148F0
	cmp r0, #0
	beq _0802D348
	mov r0, #8
	b _0802D40C
_0802D344:
	.4byte 0x030001A0
_0802D348:
	add r0, r4, #0
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802D40C
_0802D354:
	cmp r3, #1
	bne _0802D3D8
	ldrb r0, [r4, #4]
	and r3, r3, r0
	cmp r3, #0
	beq _0802D39E
	cmp r2, #180
	ble _0802D39E
	ldr r0, _0802D384  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D39E
	bl sub_08014BB4
	add r1, r0, #0
	cmp r1, #0
	beq _0802D388
	mov r0, #8
	mov r1, #1
	bl sub_080070E8
	b _0802D39E
_0802D384:
	.4byte gUnknown_030012E8
_0802D388:
	ldr r0, _0802D3B8  @ =gUnknown_03000B58
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #17
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	mov r1, #1
	bl sub_080070E8
_0802D39E:
	ldr r0, _0802D3BC  @ =0x030001A0
	ldrb r1, [r0, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	bl sub_08014BB4
	add r1, r0, #0
	cmp r1, #0
	beq _0802D3C0
	mov r0, #8
	b _0802D40C
_0802D3B8:
	.4byte gUnknown_03000B58
_0802D3BC:
	.4byte 0x030001A0
_0802D3C0:
	ldr r0, _0802D3D4  @ =gUnknown_03000B58
	strb r1, [r0]
	mov r0, #128
	lsl r0, r0, #17
	mov r1, #1
	bl sub_080148A4
	mov r0, #32
	b _0802D40C
	.byte 0x00
	.byte 0x00
_0802D3D4:
	.4byte gUnknown_03000B58
_0802D3D8:
	cmp r3, #0
	bne _0802D41C
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D3FE
	cmp r2, #5
	ble _0802D3FE
_0802D3EA:
	ldr r0, _0802D414  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D3FE
	ldrb r0, [r4, #6]
	mov r1, #1
	bl sub_080070E8
_0802D3FE:
	ldr r2, _0802D418  @ =0x030001A0
	ldrb r1, [r2, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	ldrb r0, [r2, #6]
_0802D40C:
	mov r1, #1
	bl sub_080070E8
	b _0802D452
_0802D414:
	.4byte gUnknown_030012E8
_0802D418:
	.4byte 0x030001A0
_0802D41C:
	ldrb r1, [r4, #4]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802D43E
	cmp r2, #180
	ble _0802D43E
	ldr r0, _0802D460  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #10
	and r0, r0, r1
	cmp r0, #0
	beq _0802D43E
	ldrb r0, [r4, #6]
	mov r1, #1
	bl sub_080070E8
_0802D43E:
	ldr r2, _0802D464  @ =0x030001A0
	ldrb r1, [r2, #4]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802D452
	ldrb r0, [r2, #6]
	mov r1, #1
	bl sub_080070E8
_0802D452:
	bl sub_080082C8
	bl sub_0801B310
	pop {r4}
	pop {r0}
	bx r0
_0802D460:
	.4byte gUnknown_030012E8
_0802D464:
	.4byte 0x030001A0
	THUMB_FUNC_END sub_0802D208

	THUMB_FUNC_START sub_0802D468
sub_0802D468: @ 0x0802D468
	push {r4,lr}
	lsl r3, r3, #24
	lsr r4, r3, #24
	ldr r3, _0802D488  @ =0x030001A0
	strb r0, [r3, #4]
	strb r1, [r3, #5]
	strb r2, [r3, #6]
	strb r4, [r3, #7]
	cmp r4, #9
	bhi _0802D504
	lsl r0, r4, #2
	ldr r1, _0802D48C  @ =0x0802D490
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802D488:
	.4byte 0x030001A0
_0802D48C:
	.4byte _0802D490
_0802D490:
	.4byte _0802D4B8
	.4byte _0802D4C0
	.4byte _0802D4C8
	.4byte _0802D4F0
	.4byte _0802D4D0
	.4byte _0802D4D8
	.4byte _0802D4E0
	.4byte _0802D4E8
	.4byte _0802D4F8
	.4byte _0802D500
_0802D4B8:
	ldr r0, _0802D4BC  @ =gUnknown_08B32118
	b _0802D502
_0802D4BC:
	.4byte gUnknown_08B32118
_0802D4C0:
	ldr r0, _0802D4C4  @ =gUnknown_08B30F94
	b _0802D502
_0802D4C4:
	.4byte gUnknown_08B30F94
_0802D4C8:
	ldr r0, _0802D4CC  @ =gUnknown_08B2FFDC
	b _0802D502
_0802D4CC:
	.4byte gUnknown_08B2FFDC
_0802D4D0:
	ldr r0, _0802D4D4  @ =gUnknown_08B30768
	b _0802D502
_0802D4D4:
	.4byte gUnknown_08B30768
_0802D4D8:
	ldr r0, _0802D4DC  @ =gUnknown_08B2F5B8
	b _0802D502
_0802D4DC:
	.4byte gUnknown_08B2F5B8
_0802D4E0:
	ldr r0, _0802D4E4  @ =gUnknown_08B2F070
	b _0802D502
_0802D4E4:
	.4byte gUnknown_08B2F070
_0802D4E8:
	ldr r0, _0802D4EC  @ =gUnknown_08B35FC0
	b _0802D502
_0802D4EC:
	.4byte gUnknown_08B35FC0
_0802D4F0:
	ldr r0, _0802D4F4  @ =gUnknown_08B37168
	b _0802D502
_0802D4F4:
	.4byte gUnknown_08B37168
_0802D4F8:
	ldr r0, _0802D4FC  @ =gUnknown_08B3732C
	b _0802D502
_0802D4FC:
	.4byte gUnknown_08B3732C
_0802D500:
	ldr r0, _0802D50C  @ =gUnknown_08B37424
_0802D502:
	str r0, [r3]
_0802D504:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D50C:
	.4byte gUnknown_08B37424
	THUMB_FUNC_END sub_0802D468

	THUMB_FUNC_START sub_0802D510
sub_0802D510: @ 0x0802D510
	push {r4,lr}
	mov r0, #0
	bl sub_08034898
	ldr r4, _0802D564  @ =0x030001A0
	ldrb r0, [r4, #5]
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
	bl sub_0805727C
	ldr r0, [r4]
	bl sub_08057420
	ldr r1, _0802D568  @ =gUnknown_030009EC
	mov r0, #0
	strb r0, [r1]
	ldr r0, _0802D56C  @ =gUnknown_0300192C
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0802D570  @ =gUnknown_03001930
	strh r1, [r0]
	ldr r2, _0802D574  @ =gUnknown_03000B54
	mov r0, #0
	str r0, [r2]
	ldr r0, _0802D578  @ =0x03000DCC
	strb r1, [r0]
	ldr r1, _0802D57C  @ =0x03000A00
	ldr r0, _0802D580  @ =0x0802D609
	str r0, [r1]
	bl sub_08038B18
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802D584  @ =0x0000FF7F
	and r0, r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
_0802D564:
	.4byte 0x030001A0
_0802D568:
	.4byte gUnknown_030009EC
_0802D56C:
	.4byte gUnknown_0300192C
_0802D570:
	.4byte gUnknown_03001930
_0802D574:
	.4byte gUnknown_03000B54
_0802D578:
	.4byte 0x03000DCC
_0802D57C:
	.4byte 0x03000A00
_0802D580:
	.4byte sub_0802D608
_0802D584:
	.4byte 0x0000FF7F
	THUMB_FUNC_END sub_0802D510

	THUMB_FUNC_START sub_0802D588
sub_0802D588: @ 0x0802D588
	push {r4-r6,lr}
	sub sp, sp, #16
	add r0, sp, #8
	mov r4, #0
	strh r4, [r0]
	ldr r1, _0802D5E0  @ =gUnknown_03001930
	ldrh r2, [r1]
	mov r1, sp
	add r1, r1, #10
	strh r2, [r1]
	ldr r2, _0802D5E4  @ =gUnknown_0300192C
	ldrh r3, [r2]
	add r2, sp, #12
	strh r3, [r2]
	mov r3, sp
	add r3, r3, #14
	strh r4, [r3]
	mov r4, #160
	str r4, [sp, #4]
	ldr r5, _0802D5E8  @ =0x040000D4
	add r4, sp, #4
	str r4, [r5]
	ldr r6, _0802D5EC  @ =gOamData
	str r6, [r5, #4]
	ldr r4, _0802D5F0  @ =0x85000100
	str r4, [r5, #8]
	ldr r4, [r5, #8]
	ldr r4, _0802D5F4  @ =0x030001A0
	ldr r4, [r4]
	str r4, [sp]
	bl sub_080573FC
	str r6, [r5]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r5, #4]
	ldr r0, _0802D5F8  @ =0x84000100
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	add sp, sp, #16
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D5E0:
	.4byte gUnknown_03001930
_0802D5E4:
	.4byte gUnknown_0300192C
_0802D5E8:
	.4byte 0x040000D4
_0802D5EC:
	.4byte gOamData
_0802D5F0:
	.4byte 0x85000100
_0802D5F4:
	.4byte 0x030001A0
_0802D5F8:
	.4byte 0x84000100
	THUMB_FUNC_END sub_0802D588

	THUMB_FUNC_START sub_0802D5FC
sub_0802D5FC: @ 0x0802D5FC
	push {lr}
	bl sub_08071C24
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802D5FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802D608
sub_0802D608: @ 0x0802D608
	ldr r1, _0802D610  @ =0x030001A0
	mov r0, #0
	strb r0, [r1, #4]
	bx lr
_0802D610:
	.4byte 0x030001A0
	THUMB_FUNC_END sub_0802D608

	THUMB_FUNC_START sub_0802D614
sub_0802D614: @ 0x0802D614
	push {r4,lr}
	add r4, r0, #0
	mov r0, #26
	mov r1, #0
	bl sub_080070E8
	ldr r2, _0802D648  @ =0x030001C0
	str r4, [r2]
	ldr r1, _0802D64C  @ =0x030001B4
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D650  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, [r2]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802D66C
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802D654
	mov r3, #6
	b _0802D67E
_0802D648:
	.4byte 0x030001C0
_0802D64C:
	.4byte 0x030001B4
_0802D650:
	.4byte 0x030001BC
_0802D654:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802D662
	mov r3, #7
	b _0802D67E
_0802D662:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802D67E
_0802D66C:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802D67E
	mov r3, #3
_0802D67E:
	ldr r0, _0802D694  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802D69C
	ldr r1, _0802D698  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802D6C4
_0802D694:
	.4byte 0x030001B8
_0802D698:
	.4byte 0x030001A8
_0802D69C:
	cmp r3, #3
	bne _0802D6AC
	ldr r1, _0802D6A8  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802D6C4
_0802D6A8:
	.4byte 0x030001A8
_0802D6AC:
	ldr r1, _0802D6CC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802D6D0  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802D6D4  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
	ldr r0, _0802D6D8  @ =0x030001B0
	str r4, [r0]
_0802D6C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802D6CC:
	.4byte 0x030001A8
_0802D6D0:
	.4byte 0x030001AC
_0802D6D4:
	.4byte gUnknown_0807C850
_0802D6D8:
	.4byte 0x030001B0
	THUMB_FUNC_END sub_0802D614

	THUMB_FUNC_START sub_0802D6DC
sub_0802D6DC: @ 0x0802D6DC
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	mov r1, #0
	ldr r4, _0802D710  @ =0x030001A8
	ldr r0, [r4]
	sub r0, r0, #1
	cmp r0, #2
	bhi _0802D6F6
	mov r1, #1
_0802D6F6:
	add r0, r1, #0
	bl sub_08038130
	ldr r0, [r4]
	cmp r0, #14
	bls _0802D704
	b _0802DBD4
_0802D704:
	lsl r0, r0, #2
	ldr r1, _0802D714  @ =0x0802D718
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802D710:
	.4byte 0x030001A8
_0802D714:
	.4byte _0802D718
_0802D718:
	.4byte _0802D754
	.4byte _0802D7A6
	.4byte _0802D854
	.4byte _0802D8EE
	.4byte _0802DAA8
	.4byte _0802DADC
	.4byte _0802DBC0
	.4byte _0802DAF4
	.4byte _0802DAF0
	.4byte _0802DB3C
	.4byte _0802DB58
	.4byte _0802DBA0
	.4byte _0802DBA0
	.4byte _0802DB80
	.4byte _0802DB8C
_0802D754:
	ldr r0, _0802D784  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802D790
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0802D788  @ =0x030001A8
	mov r0, #1
	str r0, [r1]
	ldr r0, _0802D78C  @ =0x030001B8
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D784:
	.4byte gUnknown_030012E8
_0802D788:
	.4byte 0x030001A8
_0802D78C:
	.4byte 0x030001B8
_0802D790:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802D79A
	b _0802DBD4
_0802D79A:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D7A6:
	ldr r0, _0802D7D8  @ =0x030001B4
	ldr r4, [r0]
	cmp r4, #0
	beq _0802D7B0
	b _0802DBB6
_0802D7B0:
	mov r0, #1
	bl sub_08038228
	add r2, r0, #0
	cmp r2, #0
	beq _0802D7E0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0802D7DC  @ =0x030001A8
	mov r0, #2
	str r0, [r1]
	b _0802DBD4
_0802D7D8:
	.4byte 0x030001B4
_0802D7DC:
	.4byte 0x030001A8
_0802D7E0:
	ldr r0, _0802D7FC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802D800
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D7FC:
	.4byte gUnknown_030012E8
_0802D800:
	ldr r5, _0802D814  @ =0x030001B8
	ldr r1, [r5]
	ldr r0, _0802D818  @ =0x00000707
	cmp r1, r0
	bgt _0802D820
	ldr r0, _0802D81C  @ =gUnknown_03001748
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [r5]
	b _0802DBD4
_0802D814:
	.4byte 0x030001B8
_0802D818:
	.4byte 0x00000707
_0802D81C:
	.4byte gUnknown_03001748
_0802D820:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	str r4, [r5]
	ldr r1, _0802D848  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D84C  @ =0x030001AC
	ldr r0, _0802D850  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D848:
	.4byte 0x030001A8
_0802D84C:
	.4byte 0x030001AC
_0802D850:
	.4byte gUnknown_0807C850
_0802D854:
	mov r0, #1
	bl sub_08038228
	add r4, r0, #0
	cmp r4, #0
	bne _0802D898
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802D888  @ =0x030001B8
	str r4, [r0]
	ldr r1, _0802D88C  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D890  @ =0x030001AC
	ldr r0, _0802D894  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
_0802D888:
	.4byte 0x030001B8
_0802D88C:
	.4byte 0x030001A8
_0802D890:
	.4byte 0x030001AC
_0802D894:
	.4byte gUnknown_0807C850
_0802D898:
	ldr r0, _0802D8CC  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802D8D8
	ldr r0, _0802D8D0  @ =0x030001B8
	mov r1, #0
	str r1, [r0]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0802D8D4  @ =0x030001A8
	mov r0, #3
	str r0, [r1]
	bl sub_08038280
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D8CC:
	.4byte gUnknown_030012E8
_0802D8D0:
	.4byte 0x030001B8
_0802D8D4:
	.4byte 0x030001A8
_0802D8D8:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802D8E2
	b _0802DBD4
_0802D8E2:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D8EE:
	ldr r0, _0802D90C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802D910
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	b _0802DBAC
_0802D90C:
	.4byte gUnknown_030012E8
_0802D910:
	mov r0, #1
	bl sub_08038228
	cmp r0, #0
	bne _0802D954
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802D944  @ =0x030001B8
	str r4, [r0]
	ldr r1, _0802D948  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D94C  @ =0x030001AC
	ldr r0, _0802D950  @ =gUnknown_0807C850
	add r0, r0, #80
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D944:
	.4byte 0x030001B8
_0802D948:
	.4byte 0x030001A8
_0802D94C:
	.4byte 0x030001AC
_0802D950:
	.4byte gUnknown_0807C850
_0802D954:
	mov r0, #2
	bl sub_08038228
	cmp r0, #0
	bne _0802D9B4
	ldr r5, _0802D974  @ =0x030001B8
	ldr r1, [r5]
	ldr r0, _0802D978  @ =0x00000707
	cmp r1, r0
	bgt _0802D980
	ldr r0, _0802D97C  @ =gUnknown_03001748
	ldrh r0, [r0]
	add r0, r1, r0
	str r0, [r5]
	b _0802D9B8
	.byte 0x00
	.byte 0x00
_0802D974:
	.4byte 0x030001B8
_0802D978:
	.4byte 0x00000707
_0802D97C:
	.4byte gUnknown_03001748
_0802D980:
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	str r4, [r5]
	ldr r1, _0802D9A8  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802D9AC  @ =0x030001AC
	ldr r0, _0802D9B0  @ =gUnknown_0807C850
	add r0, r0, #40
	str r0, [r1]
	b _0802DA90
	.byte 0x00
	.byte 0x00
_0802D9A8:
	.4byte 0x030001A8
_0802D9AC:
	.4byte 0x030001AC
_0802D9B0:
	.4byte gUnknown_0807C850
_0802D9B4:
	ldr r0, _0802D9F0  @ =0x030001B8
	str r4, [r0]
_0802D9B8:
	bl sub_08038264
	cmp r0, #0
	bne _0802D9C2
	b _0802DBD4
_0802D9C2:
	ldr r0, _0802D9F4  @ =0x030001BC
	ldr r1, [r0]
	mov r0, #0
	strb r0, [r1]
	ldr r4, _0802D9F8  @ =0x030001C0
	ldr r0, [r4]
	bl sub_0802F12C
	add r2, r0, #0
	cmp r2, #0
	bne _0802DA0C
	ldr r0, _0802D9F0  @ =0x030001B8
	str r2, [r0]
	ldr r1, _0802D9FC  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r1, _0802DA00  @ =0x030001AC
	ldr r0, _0802DA04  @ =gUnknown_0807C850
	str r0, [r1]
	ldr r0, _0802DA08  @ =0x030001B0
	str r2, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802D9F0:
	.4byte 0x030001B8
_0802D9F4:
	.4byte 0x030001BC
_0802D9F8:
	.4byte 0x030001C0
_0802D9FC:
	.4byte 0x030001A8
_0802DA00:
	.4byte 0x030001AC
_0802DA04:
	.4byte gUnknown_0807C850
_0802DA08:
	.4byte 0x030001B0
_0802DA0C:
	ldr r4, [r4]
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0802DA3A
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #2
	bne _0802DA22
	mov r3, #6
	b _0802DA4C
_0802DA22:
	add r0, r4, #0
	bl sub_08031944
	cmp r0, #1
	bne _0802DA30
	mov r3, #7
	b _0802DA4C
_0802DA30:
	add r0, r4, #0
	bl sub_08031978
	mov r3, #5
	b _0802DA4C
_0802DA3A:
	add r0, r4, #0
	add r0, r0, #16
	bl sub_0802F090
	mov r3, #1
	neg r3, r3
	cmp r0, #0
	beq _0802DA4C
	mov r3, #3
_0802DA4C:
	ldr r0, _0802DA64  @ =0x030001B8
	mov r4, #0
	str r4, [r0]
	mov r0, #1
	neg r0, r0
	cmp r3, r0
	bne _0802DA6C
	ldr r1, _0802DA68  @ =0x030001A8
	mov r0, #4
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA64:
	.4byte 0x030001B8
_0802DA68:
	.4byte 0x030001A8
_0802DA6C:
	cmp r3, #3
	bne _0802DA7C
	ldr r1, _0802DA78  @ =0x030001A8
	mov r0, #5
	str r0, [r1]
	b _0802DBD4
_0802DA78:
	.4byte 0x030001A8
_0802DA7C:
	ldr r1, _0802DA98  @ =0x030001A8
	mov r0, #6
	str r0, [r1]
	ldr r2, _0802DA9C  @ =0x030001AC
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r0, r0, #3
	ldr r1, _0802DAA0  @ =gUnknown_0807C850
	add r0, r0, r1
	str r0, [r2]
_0802DA90:
	ldr r0, _0802DAA4  @ =0x030001B0
	str r4, [r0]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DA98:
	.4byte 0x030001A8
_0802DA9C:
	.4byte 0x030001AC
_0802DAA0:
	.4byte gUnknown_0807C850
_0802DAA4:
	.4byte 0x030001B0
_0802DAA8:
	ldr r0, _0802DAD4  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	bne _0802DAB6
	b _0802DBD4
_0802DAB6:
	ldr r1, _0802DAD8  @ =0x030001A8
	mov r0, #7
	str r0, [r1]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802DBD4
_0802DAD4:
	.4byte gUnknown_030012E8
_0802DAD8:
	.4byte 0x030001A8
_0802DADC:
	ldr r0, _0802DAEC  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _0802DBD4
	b _0802DBA0
	.byte 0x00
	.byte 0x00
_0802DAEC:
	.4byte gUnknown_030012E8
_0802DAF0:
	bl sub_0802F06C
_0802DAF4:
	ldr r0, _0802DB30  @ =0x030001C0
	ldr r0, [r0]
	bl sub_0802EF70
	add r1, r0, #1
	ldr r0, _0802DB34  @ =0x030001BC
	ldr r4, [r0]
	mov r0, #101
	strb r0, [r4]
	add r4, r4, #1
	mov r0, #45
	strb r0, [r4]
	add r4, r4, #1
	cmp r1, #9
	ble _0802DB18
	mov r0, #49
	strb r0, [r4]
	add r4, r4, #1
_0802DB18:
	add r0, r1, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, #48
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	ldr r1, _0802DB38  @ =0x030001A8
	mov r0, #9
	str r0, [r1]
	b _0802DBD4
_0802DB30:
	.4byte 0x030001C0
_0802DB34:
	.4byte 0x030001BC
_0802DB38:
	.4byte 0x030001A8
_0802DB3C:
	ldr r0, _0802DB50  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	ldr r1, _0802DB54  @ =0x030001A8
	mov r0, #10
	str r0, [r1]
	b _0802DBD4
_0802DB50:
	.4byte gUnknown_0807CA94
_0802DB54:
	.4byte 0x030001A8
_0802DB58:
	ldr r0, _0802DB7C  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r0, [r1]
	add r0, r1, r0
	add r0, r0, #87
	ldrb r3, [r0]
	add r0, r3, #3
	lsl r2, r3, #1
	add r2, r2, r3
	lsl r2, r2, #10
	add r2, r2, #104
	add r1, r1, r2
	mov r2, #192
	lsl r2, r2, #4
	bl sub_0802A370
	b _0802DB92
	.byte 0x00
	.byte 0x00
_0802DB7C:
	.4byte gUnknown_0807CA94
_0802DB80:
	ldr r0, _0802DB88  @ =0x030001C0
	ldr r0, [r0]
	b _0802DB8E
	.byte 0x00
	.byte 0x00
_0802DB88:
	.4byte 0x030001C0
_0802DB8C:
	mov r0, #0
_0802DB8E:
	bl sub_08031978
_0802DB92:
	ldr r1, _0802DB9C  @ =0x030001A8
	mov r0, #11
	str r0, [r1]
	b _0802DBD4
	.byte 0x00
	.byte 0x00
_0802DB9C:
	.4byte 0x030001A8
_0802DBA0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
_0802DBAC:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802DBB6:
	mov r0, #25
	mov r1, #0
	bl sub_080070E8
	b _0802DBD4
_0802DBC0:
	ldr r0, _0802DBE0  @ =0x030001B0
	ldr r1, _0802DBE4  @ =0x030001AC
	ldr r1, [r1]
	bl sub_08031C54
	add r1, r0, #0
	cmp r1, #0
	blt _0802DBD4
	ldr r0, _0802DBE8  @ =0x030001A8
	str r1, [r0]
_0802DBD4:
	bl sub_0802ECC8
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
_0802DBE0:
	.4byte 0x030001B0
_0802DBE4:
	.4byte 0x030001AC
_0802DBE8:
	.4byte 0x030001A8
	THUMB_FUNC_END sub_0802D6DC

	THUMB_FUNC_START sub_0802DBEC
sub_0802DBEC: @ 0x0802DBEC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802DCD0  @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802DCD4  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802DCD8  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	mov r6, #26
	ldr r1, _0802DCDC  @ =gUnknown_0807C9CC
	ldr r5, _0802DCE0  @ =0x030001A8
	ldr r0, [r5]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r2, [r0]
	add r7, r4, #0
	cmp r2, #0
	beq _0802DC34
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r0, #82
	str r0, [sp]
	add r0, r2, #0
	mov r2, #138
	bl sub_08034CCC
_0802DC34:
	ldr r2, [r5]
	cmp r2, #6
	bne _0802DC46
	ldr r0, _0802DCE8  @ =0x030001AC
	ldr r0, [r0]
	add r0, r0, #36
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802DC60
_0802DC46:
	ldr r1, _0802DCEC  @ =gUnknown_0807C990
	lsl r0, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	mov r2, #26
	bl sub_08034CCC
	add r6, r0, #0
_0802DC60:
	ldr r4, _0802DCE0  @ =0x030001A8
	ldr r0, [r4]
	cmp r0, #6
	bne _0802DC7A
	ldr r0, _0802DCF0  @ =0x030001B0
	ldr r0, [r0]
	ldr r1, _0802DCE8  @ =0x030001AC
	ldr r1, [r1]
	ldr r2, _0802DCF4  @ =0x030001C0
	ldr r3, [r2]
	add r2, r6, #0
	bl sub_08031D44
_0802DC7A:
	ldr r1, [r4]
	sub r0, r1, #4
	cmp r0, #1
	bhi _0802DCFC
	ldr r0, _0802DCF8  @ =0x030001BC
	ldr r3, [r0]
	ldrb r1, [r3]
	add r5, r0, #0
	cmp r1, #0
	bne _0802DCBA
	ldr r0, _0802DCF4  @ =0x030001C0
	ldr r1, [r0]
	add r2, r1, #0
	add r2, r2, #16
	mov r0, #34
	strb r0, [r3]
	ldr r0, [r5]
	add r3, r0, #1
	ldrb r0, [r1, #16]
	cmp r0, #0
	beq _0802DCB2
_0802DCA4:
	ldrb r0, [r2]
	strb r0, [r3]
	add r2, r2, #1
	add r3, r3, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802DCA4
_0802DCB2:
	mov r0, #34
	strb r0, [r3]
	mov r0, #0
	strb r0, [r3, #1]
_0802DCBA:
	ldr r0, [r5]
	ldr r1, _0802DCE4  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	add r2, r6, #0
	bl sub_08034CCC
	b _0802DD18
	.byte 0x00
	.byte 0x00
_0802DCD0:
	.4byte 0x040000D4
_0802DCD4:
	.4byte gOamData
_0802DCD8:
	.4byte 0x85000100
_0802DCDC:
	.4byte gUnknown_0807C9CC
_0802DCE0:
	.4byte 0x030001A8
_0802DCE4:
	.4byte 0xFFFF8001
_0802DCE8:
	.4byte 0x030001AC
_0802DCEC:
	.4byte gUnknown_0807C990
_0802DCF0:
	.4byte 0x030001B0
_0802DCF4:
	.4byte 0x030001C0
_0802DCF8:
	.4byte 0x030001BC
_0802DCFC:
	add r0, r1, #0
	sub r0, r0, #9
	cmp r0, #1
	bhi _0802DD18
	ldr r0, _0802DD38  @ =0x030001BC
	ldr r0, [r0]
	ldr r1, _0802DD3C  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	add r2, r6, #0
	bl sub_08034CCC
_0802DD18:
	add r0, r7, #0
	bl sub_08035108
	ldr r1, _0802DD40  @ =0x040000D4
	ldr r0, _0802DD44  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802DD48  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0802DD38:
	.4byte 0x030001BC
_0802DD3C:
	.4byte 0xFFFF8001
_0802DD40:
	.4byte 0x040000D4
_0802DD44:
	.4byte gOamData
_0802DD48:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0802DBEC

	THUMB_FUNC_START sub_0802DD4C
sub_0802DD4C: @ 0x0802DD4C
	push {r4,lr}
	sub sp, sp, #4
	ldr r0, _0802DDC0  @ =0x030001B4
	ldr r2, [r0]
	cmp r2, #0
	bne _0802DD68
	ldr r0, _0802DDC4  @ =0x030001A8
	str r2, [r0]
	ldr r1, _0802DDC8  @ =0x030001C0
	mov r0, #128
	lsl r0, r0, #18
	str r0, [r1]
	ldr r0, _0802DDCC  @ =0x030001AC
	str r2, [r0]
_0802DD68:
	mov r0, #3
	bl sub_08034884
	ldr r4, _0802DDD0  @ =0x030001BC
	mov r0, #64
	bl sub_08034854
	str r0, [r4]
	mov r1, #0
	strb r1, [r0]
	ldr r0, _0802DDC8  @ =0x030001C0
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #5
	bl sub_080381E4
	mov r0, #160
	str r0, [sp]
	ldr r0, _0802DDD4  @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _0802DDD8  @ =gOamData
	str r2, [r0, #4]
	ldr r1, _0802DDDC  @ =0x85000100
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [r0]
	mov r1, #224
	lsl r1, r1, #19
	str r1, [r0, #4]
	ldr r1, _0802DDE0  @ =0x80000200
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802DDE4  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DDC0:
	.4byte 0x030001B4
_0802DDC4:
	.4byte 0x030001A8
_0802DDC8:
	.4byte 0x030001C0
_0802DDCC:
	.4byte 0x030001AC
_0802DDD0:
	.4byte 0x030001BC
_0802DDD4:
	.4byte 0x040000D4
_0802DDD8:
	.4byte gOamData
_0802DDDC:
	.4byte 0x85000100
_0802DDE0:
	.4byte 0x80000200
_0802DDE4:
	.4byte 0x0000FDFF
	THUMB_FUNC_END sub_0802DD4C

	THUMB_FUNC_START sub_0802DDE8
sub_0802DDE8: @ 0x0802DDE8
	push {lr}
	bl sub_080382A8
	mov r0, #3
	bl sub_08034898
	ldr r1, _0802DE04  @ =0x030001B4
	mov r0, #0
	str r0, [r1]
	bl sub_0802EE54
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DE04:
	.4byte 0x030001B4
	THUMB_FUNC_END sub_0802DDE8

	THUMB_FUNC_START sub_0802DE08
sub_0802DE08: @ 0x0802DE08
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r6, _0802DF14  @ =0x030001C4
	ldr r1, [r6]
	add r0, r1, #0
	add r0, r0, #200
	ldrh r5, [r0]
	ldr r4, _0802DF18  @ =gUnknown_087DED6C
	ldr r3, _0802DF1C  @ =gUnknown_030012A0
	ldr r2, _0802DF20  @ =gUnknown_03001710
	mov r0, #0
	strh r0, [r2]
	strh r0, [r3]
	mov r2, sp
	strh r0, [r2]
	ldr r2, _0802DF24  @ =0x0100047E
	mov r0, sp
	bl CpuSet
	add r0, r4, #0
	bl sub_08006968
	ldr r3, [r6]
	ldr r2, _0802DF28  @ =0x000008F8
	add r1, r3, r2
	str r0, [r1]
	ldr r1, _0802DF2C  @ =0x000008F4
	add r0, r3, r1
	ldr r2, [r4, #72]
	str r2, [r0]
	ldr r1, _0802DF30  @ =0x040000D4
	str r2, [r1]
	add r0, r3, #0
	add r0, r0, #244
	str r0, [r1, #4]
	ldr r0, _0802DF34  @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r0, r3, #0
	add r0, r0, #200
	mov r4, #0
	strh r5, [r0]
	add r1, r3, #0
	add r1, r1, #192
	mov r0, #1
	neg r0, r0
	str r0, [r1]
	add r2, r3, #0
	add r2, r2, #188
	add r1, r1, #4
	mov r0, #1
	str r0, [r1]
	str r0, [r2]
	sub r2, r2, #4
	mov r1, #3
	str r1, [r2]
	ldr r1, _0802DF38  @ =gUnknown_0807CA98
	ldr r1, [r1]
	ldrh r1, [r1, #50]
	and r0, r0, r1
	cmp r0, #0
	bne _0802DE8C
	mov r0, #2
	str r0, [r2]
_0802DE8C:
	ldr r1, _0802DF3C  @ =gUnknown_03001930
	ldr r0, _0802DF40  @ =gUnknown_0300192C
	strh r4, [r0]
	strh r4, [r1]
	mov r5, #0
	mov r7, sp
	add r7, r7, #2
	mov r8, r6
	mov r6, #0
_0802DE9E:
	lsl r1, r5, #2
	mov r2, r8
	ldr r0, [r2]
	add r4, r0, r6
	cmp r5, #2
	bne _0802DEAE
	mov r0, #1
	strb r0, [r4, #13]
_0802DEAE:
	ldr r0, _0802DF44  @ =gUnknown_0807CA08
	add r0, r1, r0
	ldr r1, [r0]
	add r0, r4, #0
	bl sub_08028068
	cmp r5, #6
	beq _0802DEC2
	cmp r5, #8
	bne _0802DECE
_0802DEC2:
	ldr r0, [r4]
	ldr r1, [r0, #12]
	ldrh r0, [r4, #8]
	ldrb r1, [r1, #1]
	add r0, r0, r1
	strh r0, [r4, #8]
_0802DECE:
	sub r0, r5, #3
	cmp r0, #5
	bhi _0802DED8
	mov r0, #2
	strh r0, [r4, #16]
_0802DED8:
	add r6, r6, #20
	add r5, r5, #1
	cmp r5, #8
	ble _0802DE9E
	mov r4, #0
	mov r0, #8
	mov r1, #3
	bl sub_08032788
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r3, #224
	lsl r3, r3, #4
	add r1, r3, #0
	orr r0, r0, r1
	strh r0, [r2]
	strh r4, [r7]
	ldr r1, _0802DF48  @ =gUnknown_03001730
	ldr r2, _0802DF4C  @ =0x01000008
	add r0, r7, #0
	bl CpuSet
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802DF14:
	.4byte 0x030001C4
_0802DF18:
	.4byte gUnknown_087DED6C
_0802DF1C:
	.4byte gUnknown_030012A0
_0802DF20:
	.4byte gUnknown_03001710
_0802DF24:
	.4byte 0x0100047E
_0802DF28:
	.4byte 0x000008F8
_0802DF2C:
	.4byte 0x000008F4
_0802DF30:
	.4byte 0x040000D4
_0802DF34:
	.4byte 0x80000400
_0802DF38:
	.4byte gUnknown_0807CA98
_0802DF3C:
	.4byte gUnknown_03001930
_0802DF40:
	.4byte gUnknown_0300192C
_0802DF44:
	.4byte gUnknown_0807CA08
_0802DF48:
	.4byte gUnknown_03001730
_0802DF4C:
	.4byte 0x01000008
	THUMB_FUNC_END sub_0802DE08

	THUMB_FUNC_START sub_0802DF50
sub_0802DF50: @ 0x0802DF50
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08029C20
	ldr r6, _0802DFA0  @ =0x030001C4
	mov r5, #0
	mov r4, #8
_0802DF6A:
	ldr r0, [r6]
	add r0, r0, r5
	mov r1, #1
	neg r1, r1
	bl sub_080280CC
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _0802DF6A
	ldr r2, _0802DFA0  @ =0x030001C4
	ldr r4, [r2]
	add r0, r4, #0
	add r0, r0, #188
	add r1, r4, #0
	add r1, r1, #196
	ldr r3, [r0]
	ldr r0, [r1]
	mov r9, r2
	cmp r3, r0
	beq _0802E04E
	cmp r3, #6
	bne _0802DFA4
	mov r0, #8
	bl sub_0802ED28
	b _0802DFC2
_0802DFA0:
	.4byte 0x030001C4
_0802DFA4:
	cmp r3, #3
	bne _0802DFC2
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802E000  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	add r1, r4, #0
	add r1, r1, #208
	mov r0, #0
	str r0, [r1]
	mov r0, #7
	bl sub_0802ED28
_0802DFC2:
	ldr r0, _0802E004  @ =0x030001C4
	ldr r3, [r0]
	add r0, r3, #0
	add r0, r0, #196
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E018
	mov r2, #128
	lsl r2, r2, #19
	ldrh r0, [r2]
	mov r4, #128
	lsl r4, r4, #1
	add r1, r4, #0
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _0802E008  @ =0x04000050
	ldr r2, _0802E00C  @ =0x00002A41
	add r0, r2, #0
	strh r0, [r1]
	add r1, r1, #2
	ldr r4, _0802E010  @ =0x00000A0A
	add r0, r4, #0
	strh r0, [r1]
	ldr r1, _0802E014  @ =gUnknown_03001730
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	add r1, r3, #0
	add r1, r1, #208
	mov r0, #1
	b _0802E03C
_0802E000:
	.4byte 0x0000FEFF
_0802E004:
	.4byte 0x030001C4
_0802E008:
	.4byte 0x04000050
_0802E00C:
	.4byte 0x00002A41
_0802E010:
	.4byte 0x00000A0A
_0802E014:
	.4byte gUnknown_03001730
_0802E018:
	cmp r0, #6
	bne _0802E024
	mov r0, #8
	bl sub_0802ED74
	b _0802E03E
_0802E024:
	cmp r0, #3
	bne _0802E030
	mov r0, #7
	bl sub_0802ED74
	b _0802E03E
_0802E030:
	cmp r0, #1
	bne _0802E03E
	add r1, r3, #0
	add r1, r1, #192
	mov r0, #1
	neg r0, r0
_0802E03C:
	str r0, [r1]
_0802E03E:
	ldr r2, _0802E068  @ =0x030001C4
	ldr r0, [r2]
	add r1, r0, #0
	add r1, r1, #188
	add r0, r0, #196
	ldr r0, [r0]
	str r0, [r1]
	mov r9, r2
_0802E04E:
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #6
	bls _0802E05C
	b _0802E762
_0802E05C:
	lsl r0, r0, #2
	ldr r1, _0802E06C  @ =0x0802E070
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802E068:
	.4byte 0x030001C4
_0802E06C:
	.4byte _0802E070
_0802E070:
	.4byte _0802E35C
	.4byte _0802E08C
	.4byte _0802E35C
	.4byte _0802E294
	.4byte _0802E6E4
	.4byte _0802E6FE
	.4byte _0802E710
_0802E08C:
	mov r2, r9
	ldr r4, [r2]
	ldr r0, _0802E0C4  @ =gUnknown_0807CA2C
	ldrb r0, [r0, #1]
	add r1, r4, #0
	add r1, r1, #202
	mov r3, #0
	strh r0, [r1]
	ldr r0, _0802E0C8  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _0802E0CC
	add r2, r4, #0
	add r2, r2, #180
	ldr r0, [r2]
	cmp r0, #0
	ble _0802E162
	sub r0, r0, #1
	str r0, [r2]
	str r3, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r3, [sp, #8]
	b _0802E0F2
_0802E0C4:
	.4byte gUnknown_0807CA2C
_0802E0C8:
	.4byte gUnknown_03001708
_0802E0CC:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	cmp r0, #0
	beq _0802E100
	add r3, r4, #0
	add r3, r3, #180
	add r0, r4, #0
	add r0, r0, #184
	ldr r0, [r0]
	sub r0, r0, #1
	ldr r1, [r3]
	cmp r1, r0
	bge _0802E162
	add r0, r1, #1
	str r0, [r3]
	str r2, [sp]
	str r5, [sp, #4]
	str r2, [sp, #8]
_0802E0F2:
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802E162
_0802E100:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802E162
	ldr r0, _0802E120  @ =gUnknown_0807CA98
	ldr r0, [r0]
	mov r1, #48
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0802E162
	mov r5, #0
	add r0, r4, #0
	add r0, r0, #180
	ldr r0, [r0]
	lsl r4, r0, #2
	b _0802E128
_0802E120:
	.4byte gUnknown_0807CA98
_0802E124:
	add r5, r5, #1
	add r4, r4, #1
_0802E128:
	cmp r5, #11
	bgt _0802E144
	cmp r4, #11
	ble _0802E132
	mov r4, #0
_0802E132:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E124
	ldr r0, _0802E188  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
_0802E144:
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #23
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802E188  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #196
	str r4, [r0]
_0802E162:
	ldr r0, _0802E18C  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r4, #9
	and r4, r4, r1
	cmp r4, #0
	bne _0802E170
	b _0802E26C
_0802E170:
	ldr r5, _0802E188  @ =0x030001C4
	ldr r0, [r5]
	add r0, r0, #180
	ldr r1, [r0]
	cmp r1, #1
	beq _0802E1CC
	cmp r1, #1
	bgt _0802E190
	cmp r1, #0
	beq _0802E196
	b _0802E762
	.byte 0x00
	.byte 0x00
_0802E188:
	.4byte 0x030001C4
_0802E18C:
	.4byte gUnknown_030012E8
_0802E190:
	cmp r1, #2
	beq _0802E236
	b _0802E762
_0802E196:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802E1C0  @ =gUnknown_0807CA98
	ldr r0, [r0]
	mov r2, #48
	ldrsh r0, [r0, r2]
	cmp r0, #11
	bgt _0802E1C4
	mov r0, #26
	mov r1, #0
	bl sub_080070E8
	b _0802E762
_0802E1C0:
	.4byte gUnknown_0807CA98
_0802E1C4:
	ldr r0, [r5]
	add r0, r0, #196
	mov r1, #6
	b _0802E760
_0802E1CC:
	ldr r4, _0802E220  @ =gUnknown_0807CA98
	ldr r0, [r4]
	mov r1, #48
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0802E228
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r5]
	add r0, r0, #196
	mov r1, #2
	str r1, [r0]
	mov r2, #0
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0802E214
	add r3, r4, #0
_0802E202:
	add r2, r2, #1
	cmp r2, #10
	bgt _0802E214
	ldr r0, [r3]
	lsl r1, r2, #2
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802E202
_0802E214:
	ldr r0, _0802E224  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r2, [r0]
	b _0802E762
	.byte 0x00
	.byte 0x00
_0802E220:
	.4byte gUnknown_0807CA98
_0802E224:
	.4byte 0x030001C4
_0802E228:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E420
_0802E236:
	ldr r1, _0802E264  @ =gUnknown_03000BBC
	mov r0, #5
	strb r0, [r1]
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802E268  @ =gUnknown_03000B74
	strb r4, [r0]
	mov r0, #12
	mov r1, #1
	bl sub_080070E8
	ldr r0, [r5]
	add r0, r0, #204
	b _0802E75E
_0802E264:
	.4byte gUnknown_03000BBC
_0802E268:
	.4byte gUnknown_03000B74
_0802E26C:
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802E276
	b _0802E762
_0802E276:
	ldr r0, _0802E290  @ =gUnknown_03000BB4
	strb r4, [r0]
	mov r0, #3
	mov r1, #1
	bl sub_080070E8
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	b _0802E420
	.byte 0x00
	.byte 0x00
_0802E290:
	.4byte gUnknown_03000BB4
_0802E294:
	ldr r0, _0802E2C0  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #32
	and r0, r0, r1
	cmp r0, #0
	beq _0802E2C4
	mov r2, r9
	ldr r0, [r2]
	add r2, r0, #0
	add r2, r2, #180
	ldr r0, [r2]
	cmp r0, #1
	beq _0802E2B0
	b _0802E762
_0802E2B0:
	mov r1, #0
	str r1, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E420
_0802E2C0:
	.4byte gUnknown_030012E8
_0802E2C4:
	mov r0, #16
	and r0, r0, r1
	cmp r0, #0
	beq _0802E2EC
	mov r4, r9
	ldr r0, [r4]
	add r2, r0, #0
	add r2, r2, #180
	ldr r1, [r2]
	cmp r1, #0
	beq _0802E2DC
	b _0802E762
_0802E2DC:
	mov r0, #1
	str r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E420
_0802E2EC:
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	bne _0802E2F6
	b _0802E762
_0802E2F6:
	ldr r4, _0802E32C  @ =0x030001C4
	ldr r0, [r4]
	add r0, r0, #180
	ldr r0, [r0]
	cmp r0, #1
	bne _0802E330
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	bne _0802E330
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r4]
	add r0, r0, #196
	mov r1, #4
	b _0802E34E
	.byte 0x00
	.byte 0x00
_0802E32C:
	.4byte 0x030001C4
_0802E330:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802E358  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #196
	mov r1, #1
_0802E34E:
	str r1, [r0]
	ldr r0, _0802E358  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #180
	b _0802E75E
_0802E358:
	.4byte 0x030001C4
_0802E35C:
	mov r0, r9
	ldr r4, [r0]
	mov r1, #192
	add r1, r1, r4
	mov r12, r1
	ldr r1, [r1]
	mov r7, #4
	neg r7, r7
	and r7, r7, r1
	mov r2, #3
	mov r10, r2
	add r6, r1, #0
	and r6, r6, r2
	ldr r0, _0802E3AC  @ =gUnknown_03001708
	ldrh r3, [r0]
	mov r0, #64
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _0802E3EE
	sub r4, r1, #4
	cmp r4, #0
	blt _0802E3B0
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E3B0
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _0802E41E
	.byte 0x00
	.byte 0x00
_0802E3AC:
	.4byte gUnknown_03001708
_0802E3B0:
	sub r4, r7, #1
	mov r5, #0
	b _0802E3B8
_0802E3B6:
	sub r4, r4, #1
_0802E3B8:
	cmp r4, #0
	blt _0802E3E0
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E3B6
	ldr r0, _0802E3DC  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #178
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E3DC:
	.4byte 0x030001C4
_0802E3E0:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E3EE:
	mov r2, #128
	mov r8, r2
	mov r0, r8
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _0802E46A
	add r4, r1, #4
	cmp r4, #11
	bgt _0802E42C
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E42C
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r2, r8
	str r2, [sp, #4]
	str r5, [sp, #8]
_0802E41E:
	mov r0, #178
_0802E420:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802E762
_0802E42C:
	add r4, r7, #4
	mov r5, #0
	b _0802E434
_0802E432:
	add r4, r4, #1
_0802E434:
	cmp r4, #11
	bgt _0802E45C
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	beq _0802E432
	ldr r0, _0802E458  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	str r5, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #178
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E458:
	.4byte 0x030001C4
_0802E45C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E46A:
	mov r0, #16
	and r0, r0, r3
	cmp r0, #0
	beq _0802E4C6
	cmp r6, #2
	bgt _0802E4BA
	add r5, r7, #4
	add r4, r1, #1
	b _0802E47E
_0802E47C:
	add r4, r4, #1
_0802E47E:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802E48C
	cmp r4, r5
	blt _0802E47C
_0802E48C:
	cmp r4, r5
	bge _0802E4AC
	ldr r0, _0802E4A8  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E4A8:
	.4byte 0x030001C4
_0802E4AC:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E4BA:
	str r2, [sp]
	mov r4, r8
	str r4, [sp, #4]
	str r2, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E4C6:
	mov r0, #32
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	cmp r0, #0
	beq _0802E55A
	add r5, r7, #0
	sub r4, r1, #1
	b _0802E4DC
_0802E4DA:
	sub r4, r4, #1
_0802E4DC:
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802E4EA
	cmp r4, r5
	bge _0802E4DA
_0802E4EA:
	cmp r4, r5
	blt _0802E508
	ldr r0, _0802E504  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	str r4, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
_0802E504:
	.4byte 0x030001C4
_0802E508:
	ldr r0, _0802E548  @ =0x030001C4
	ldr r3, [r0]
	add r0, r3, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	beq _0802E54C
	add r0, r3, #0
	add r0, r0, #192
	ldr r1, [r0]
	asr r1, r1, #2
	add r2, r3, #0
	add r2, r2, #196
	mov r0, #1
	str r0, [r2]
	sub r2, r2, #16
	str r1, [r2]
	add r0, r3, #0
	add r0, r0, #184
	ldr r0, [r0]
	cmp r1, r0
	blt _0802E538
	sub r0, r0, #1
	str r0, [r2]
_0802E538:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #23
	b _0802E5F6
	.byte 0x00
	.byte 0x00
_0802E548:
	.4byte 0x030001C4
_0802E54C:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #27
	b _0802E5F6
_0802E55A:
	ldr r0, _0802E5C4  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r3, #9
	and r3, r3, r2
	cmp r3, #0
	beq _0802E614
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E5CC
	add r0, r4, #0
	add r0, r0, #180
	mov r1, r8
	str r1, [r0]
	add r0, r0, #16
	mov r2, r10
	str r2, [r0]
	mov r1, r12
	ldr r0, [r1]
	add r5, r0, #1
	ldr r0, _0802E5C8  @ =gUnknown_08076800
	add r1, r4, #0
	add r1, r1, #212
	mov r2, #7
	bl CpuSet
	mov r2, r9
	ldr r6, [r2]
	add r4, r6, #0
	add r4, r4, #226
	cmp r5, #9
	ble _0802E5AA
	add r0, r5, #0
	mov r1, #10
	bl __divsi3
	add r0, r0, #48
	strb r0, [r4]
	add r4, r4, #1
_0802E5AA:
	add r0, r5, #0
	mov r1, #10
	bl __modsi3
	add r0, r0, #48
	strb r0, [r4]
	add r4, r4, #1
	mov r0, #63
	strb r0, [r4]
	mov r0, r8
	strb r0, [r4, #1]
	b _0802E5EA
	.byte 0x00
	.byte 0x00
_0802E5C4:
	.4byte gUnknown_030012E8
_0802E5C8:
	.4byte gUnknown_08076800
_0802E5CC:
	ldr r0, _0802E604  @ =gUnknown_03000B74
	strb r1, [r0]
	ldr r1, _0802E608  @ =gUnknown_03000BB4
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802E60C  @ =gUnknown_03000B80
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0802E610  @ =gUnknown_03000BBC
	mov r0, #5
	strb r0, [r1]
	mov r0, #12
	mov r1, #1
	bl sub_080070E8
_0802E5EA:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
_0802E5F6:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802E67E
	.byte 0x00
	.byte 0x00
_0802E604:
	.4byte gUnknown_03000B74
_0802E608:
	.4byte gUnknown_03000BB4
_0802E60C:
	.4byte gUnknown_03000B80
_0802E610:
	.4byte gUnknown_03000BBC
_0802E614:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802E67E
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E648
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802E644  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	add r0, r4, #0
	add r0, r0, #208
	str r3, [r0]
	add r1, r4, #0
	add r1, r1, #180
	mov r0, #1
	str r0, [r1]
	b _0802E65E
	.byte 0x00
	.byte 0x00
_0802E644:
	.4byte 0x0000FEFF
_0802E648:
	add r2, r4, #0
	add r2, r2, #180
	asr r1, r1, #2
	str r1, [r2]
	add r0, r4, #0
	add r0, r0, #184
	ldr r0, [r0]
	cmp r1, r0
	blt _0802E65E
	sub r0, r0, #1
	str r0, [r2]
_0802E65E:
	ldr r0, _0802E6D4  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #196
	mov r1, #1
	str r1, [r0]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802E67E:
	ldr r4, _0802E6D4  @ =0x030001C4
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #2
	bne _0802E6AE
	add r0, r1, #0
	add r0, r0, #192
	ldr r1, [r0]
	asr r7, r1, #2
	mov r0, #3
	and r1, r1, r0
	ldr r3, _0802E6D8  @ =gUnknown_03001730
	neg r2, r7
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #3
	strh r0, [r3, #2]
	neg r1, r1
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #3
	strh r0, [r3]
_0802E6AE:
	ldr r3, [r4]
	ldr r2, _0802E6DC  @ =gUnknown_0807CA2C
	ldr r0, _0802E6E0  @ =gUnknown_0807CA98
	ldr r1, [r0]
	add r0, r3, #0
	add r0, r0, #192
	ldr r0, [r0]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	add r0, r0, #2
	lsl r0, r0, #1
	add r2, r2, #1
	add r0, r0, r2
	ldrb r0, [r0]
	add r3, r3, #202
	strh r0, [r3]
	b _0802E762
_0802E6D4:
	.4byte 0x030001C4
_0802E6D8:
	.4byte gUnknown_03001730
_0802E6DC:
	.4byte gUnknown_0807CA2C
_0802E6E0:
	.4byte gUnknown_0807CA98
_0802E6E4:
	mov r2, r9
	ldr r0, [r2]
	add r0, r0, #192
	ldr r0, [r0]
	bl sub_0802EEC8
	bl sub_0802EE54
	mov r4, r9
	ldr r0, [r4]
	add r0, r0, #196
	mov r1, #5
	b _0802E760
_0802E6FE:
	ldr r0, _0802E70C  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	b _0802E758
_0802E70C:
	.4byte gUnknown_0807CA94
_0802E710:
	ldr r0, _0802E740  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #11
	and r0, r0, r1
	cmp r0, #0
	beq _0802E762
	mov r0, #2
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _0802E744
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802E758
_0802E740:
	.4byte gUnknown_030012E8
_0802E744:
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802E758:
	ldr r0, _0802E77C  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #196
_0802E75E:
	mov r1, #1
_0802E760:
	str r1, [r0]
_0802E762:
	bl sub_0802ECC8
	bl sub_0801B310
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802E77C:
	.4byte 0x030001C4
	THUMB_FUNC_END sub_0802DF50

	THUMB_FUNC_START sub_0802E780
sub_0802E780: @ 0x0802E780
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	sub sp, sp, #4
	add r2, r0, #0
	cmp r1, #0
	beq _0802E7DC
	ldr r5, _0802E7D0  @ =0x030001C4
	ldr r2, [r5]
	ldr r1, _0802E7D4  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #142
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r4, _0802E7D8  @ =gUnknown_0807CA40
	add r0, r4, #0
	add r0, r0, #40
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	ldr r2, [r5]
	ldr r1, _0802E7D4  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #144
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	add r4, r4, #48
	add r2, r2, #244
	add r0, r4, #0
	mov r3, #5
	bl sub_080064D4
	b _0802E86A
	.byte 0x00
	.byte 0x00
_0802E7D0:
	.4byte 0x030001C4
_0802E7D4:
	.4byte 0x000008F8
_0802E7D8:
	.4byte gUnknown_0807CA40
_0802E7DC:
	ldr r0, _0802E878  @ =gUnknown_0807CA98
	mov r9, r0
	ldr r0, [r0]
	lsl r2, r2, #2
	mov r8, r2
	add r0, r0, r8
	ldr r0, [r0]
	ldr r4, [r0, #48]
	mov r0, #240
	and r4, r4, r0
	lsr r4, r4, #4
	ldr r5, _0802E87C  @ =0x030001C4
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	ldr r6, _0802E884  @ =gUnknown_0807CA40
	add r2, r2, #244
	add r0, r6, #0
	mov r3, #5
	bl sub_080064D4
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	mov r3, #134
	lsl r3, r3, #1
	add r0, r0, r3
	ldr r1, [r0]
	add r0, r6, #0
	add r0, r0, #8
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	add r4, r4, #2
	ldr r2, [r5]
	ldr r1, _0802E880  @ =0x000008F8
	add r0, r2, r1
	ldr r0, [r0]
	lsl r1, r4, #2
	mov r3, #132
	lsl r3, r3, #1
	add r0, r0, r3
	add r0, r0, r1
	ldr r1, [r0]
	lsl r4, r4, #3
	add r4, r4, r6
	add r2, r2, #244
	add r0, r4, #0
	mov r3, #5
	bl sub_080064D4
	mov r1, r9
	ldr r0, [r1]
	add r0, r0, r8
	ldr r0, [r0]
	add r0, r0, #16
	mov r3, #1
	neg r3, r3
	mov r1, #3
	str r1, [sp]
	mov r1, #44
	mov r2, #141
	bl sub_08034CCC
_0802E86A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
_0802E878:
	.4byte gUnknown_0807CA98
_0802E87C:
	.4byte 0x030001C4
_0802E880:
	.4byte 0x000008F8
_0802E884:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802E780

	THUMB_FUNC_START sub_0802E888
sub_0802E888: @ 0x0802E888
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802E8DC  @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802E8E0  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802E8E4  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0802E8E8  @ =0x030001C4
	mov r8, r1
	ldr r5, [r1]
	add r0, r5, #0
	add r0, r0, #202
	ldrb r0, [r0]
	add r0, r0, #1
	strb r0, [r5, #12]
	bl sub_08029C20
	cmp r0, #0
	bne _0802E926
	mov r2, r8
	ldr r1, [r2]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #1
	bhi _0802E8EC
	ldr r0, [r5]
	mov r2, #10
	ldrsh r1, [r5, r2]
	b _0802E8FA
_0802E8DC:
	.4byte 0x040000D4
_0802E8E0:
	.4byte gOamData
_0802E8E4:
	.4byte 0x85000100
_0802E8E8:
	.4byte 0x030001C4
_0802E8EC:
	cmp r0, #2
	beq _0802E926
	cmp r0, #3
	bne _0802E90C
	ldr r0, [r1, #20]
	mov r2, #30
	ldrsh r1, [r1, r2]
_0802E8FA:
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
	b _0802E926
_0802E90C:
	cmp r0, #6
	bne _0802E926
	ldr r0, [r1, #20]
	mov r2, #30
	ldrsh r1, [r1, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldr r0, [r0, #8]
	bl sub_0801B2CC
_0802E926:
	ldr r0, _0802E964  @ =gUnknown_087DED6C
	ldr r0, [r0, #68]
	str r0, [sp, #12]
	bl sub_080351E0
	ldr r0, _0802E968  @ =0x030001C4
	mov r8, r0
	mov r5, #0
	mov r4, #8
_0802E938:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r5
	bl sub_08028128
	add r5, r5, #20
	sub r4, r4, #1
	cmp r4, #0
	bge _0802E938
	ldr r5, _0802E968  @ =0x030001C4
	ldr r4, [r5]
	add r0, r4, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #0
	beq _0802E96C
	cmp r0, #2
	beq _0802E996
	cmp r0, #3
	bne _0802E9AC
	b _0802E996
	.byte 0x00
	.byte 0x00
_0802E964:
	.4byte gUnknown_087DED6C
_0802E968:
	.4byte 0x030001C4
_0802E96C:
	add r0, r4, #0
	add r0, r0, #192
	ldr r3, [r0]
	mov r0, #3
	and r0, r0, r3
	lsl r1, r0, #2
	add r1, r1, r0
	add r1, r1, #8
	asr r3, r3, #2
	lsl r2, r3, #2
	add r2, r2, r3
	add r2, r2, #1
	add r7, r2, #0
	lsl r1, r1, #3
	lsl r2, r2, #3
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl sub_080281C8
_0802E996:
	ldr r0, _0802E9A8  @ =0x030001C4
	ldr r0, [r0]
	add r0, r0, #192
	ldr r0, [r0]
	mov r1, #0
	bl sub_0802E780
	b _0802E9FC
	.byte 0x00
	.byte 0x00
_0802E9A8:
	.4byte 0x030001C4
_0802E9AC:
	mov r0, #0
	mov r1, #1
	bl sub_0802E780
	ldr r1, [r5]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #1
	bne _0802E9FC
	mov r6, #1
	add r0, r1, #0
	add r0, r0, #180
	ldr r0, [r0]
	lsl r2, r0, #2
	add r2, r2, r0
	add r2, r2, #4
	add r7, r2, #0
	lsl r2, r2, #3
	str r6, [sp]
	add r0, r1, #0
	mov r1, #8
	add r3, sp, #8
	bl sub_080281C8
	ldr r1, _0802EA14  @ =gUnknown_0807CA88
	ldr r0, [r5]
	add r0, r0, #180
	ldr r0, [r0]
	lsl r0, r0, #2
	add r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0802EA18  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #3
	str r2, [sp]
	mov r2, #141
	bl sub_08034CCC
_0802E9FC:
	ldr r4, _0802EA1C  @ =0x030001C4
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #188
	ldr r0, [r0]
	cmp r0, #5
	bgt _0802EA20
	cmp r0, #4
	bge _0802EA9C
	cmp r0, #3
	beq _0802EA26
	b _0802EA9C
_0802EA14:
	.4byte gUnknown_0807CA88
_0802EA18:
	.4byte 0xFFFF8001
_0802EA1C:
	.4byte 0x030001C4
_0802EA20:
	cmp r0, #6
	beq _0802EA64
	b _0802EA9C
_0802EA26:
	add r0, r1, #0
	add r0, r0, #20
	ldr r2, _0802EA5C  @ =gUnknown_0807CA90
	add r1, r1, #180
	ldr r1, [r1]
	lsl r1, r1, #1
	add r1, r1, r2
	mov r2, #0
	ldrsh r1, [r1, r2]
	mov r2, #1
	str r2, [sp]
	mov r2, #80
	add r3, sp, #8
	bl sub_080281C8
	ldr r0, [r4]
	add r0, r0, #212
	ldr r1, _0802EA60  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #18
	str r2, [sp]
	mov r2, #58
	bl sub_08034CCC
	b _0802EA9C
	.byte 0x00
	.byte 0x00
_0802EA5C:
	.4byte gUnknown_0807CA90
_0802EA60:
	.4byte 0xFFFF8001
_0802EA64:
	add r0, r1, #0
	add r0, r0, #20
	mov r1, #1
	str r1, [sp]
	mov r1, #92
	mov r2, #96
	add r3, sp, #8
	bl sub_080281C8
	ldr r0, _0802EAD8  @ =gUnknown_0807684C
	ldr r4, _0802EADC  @ =0xFFFF8001
	mov r5, #1
	neg r5, r5
	mov r1, #18
	str r1, [sp]
	add r1, r4, #0
	mov r2, #32
	add r3, r5, #0
	bl sub_08034CCC
	ldr r0, _0802EAE0  @ =gUnknown_0807689C
	mov r1, #2
	str r1, [sp]
	add r1, r4, #0
	mov r2, #109
	add r3, r5, #0
	bl sub_08034CCC
_0802EA9C:
	add r0, sp, #8
	bl sub_08035108
	mov r4, #0
_0802EAA4:
	mov r1, #3
	and r1, r1, r4
	lsl r0, r1, #2
	add r0, r0, r1
	add r6, r0, #0
	add r6, r6, #9
	asr r1, r4, #2
	lsl r0, r1, #2
	add r0, r0, r1
	add r7, r0, #2
	lsl r0, r7, #5
	add r0, r0, r6
	lsl r0, r0, #1
	ldr r1, [sp, #12]
	add r1, r1, r0
	mov r10, r1
	add r0, r4, #0
	bl sub_0802F108
	cmp r0, #0
	bne _0802EAE8
	ldr r0, _0802EAE4  @ =gUnknown_0807CA2C
	ldrb r2, [r0, #2]
	add r4, r4, #1
	mov r8, r4
	b _0802EB98
_0802EAD8:
	.4byte gUnknown_0807684C
_0802EADC:
	.4byte 0xFFFF8001
_0802EAE0:
	.4byte gUnknown_0807689C
_0802EAE4:
	.4byte gUnknown_0807CA2C
_0802EAE8:
	ldr r1, _0802EB08  @ =0x030001C4
	ldr r2, [r1]
	add r0, r2, #0
	add r0, r0, #208
	ldr r0, [r0]
	str r0, [sp, #16]
	add r0, r2, #0
	add r0, r0, #192
	ldr r0, [r0]
	add r5, r1, #0
	cmp r4, r0
	bne _0802EB0C
	mov r1, #0
	str r1, [sp, #16]
	b _0802EB1A
	.byte 0x00
	.byte 0x00
_0802EB08:
	.4byte 0x030001C4
_0802EB0C:
	add r0, r2, #0
	add r0, r0, #188
	ldr r0, [r0]
	add r2, r4, #1
	mov r8, r2
	cmp r0, #3
	beq _0802EBC6
_0802EB1A:
	mov r3, #3
	lsl r6, r6, #3
	lsl r7, r7, #3
	add r6, r6, #3
	add r7, r7, #17
	ldr r0, _0802EC0C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	lsl r2, r4, #2
	add r0, r0, #28
	add r0, r0, r2
	ldr r1, [r0]
	mov r0, #7
	and r1, r1, r0
	mov r9, r2
	cmp r1, #7
	bne _0802EB46
	ldr r0, [r5]
	add r0, r0, #192
	ldr r0, [r0]
	cmp r4, r0
	bne _0802EB46
	mov r3, #6
_0802EB46:
	mov r5, #0
	add r4, r4, #1
	mov r8, r4
	lsl r0, r3, #2
	add r0, r0, r3
	lsl r4, r0, #2
_0802EB52:
	ldr r0, _0802EC0C  @ =gUnknown_0807CA94
	ldr r0, [r0]
	add r0, r0, #28
	add r0, r0, r9
	mov r1, #1
	lsl r1, r1, r5
	ldr r0, [r0]
	and r0, r0, r1
	cmp r0, #0
	beq _0802EB7A
	ldr r1, _0802EC10  @ =0x030001C4
	ldr r0, [r1]
	add r0, r0, r4
	ldr r2, [sp, #16]
	str r2, [sp]
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #8
	bl sub_080281C8
_0802EB7A:
	add r5, r5, #1
	add r4, r4, #20
	add r6, r6, #9
	cmp r5, #2
	ble _0802EB52
	ldr r0, _0802EC14  @ =gUnknown_0807CA98
	ldr r0, [r0]
	add r0, r0, r9
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	add r0, r0, #2
	lsl r0, r0, #1
	ldr r1, _0802EC18  @ =gUnknown_0807CA2C
	add r0, r0, r1
	ldrb r2, [r0]
_0802EB98:
	lsl r2, r2, #12
	mov r0, #0
	ldr r1, _0802EC1C  @ =0x00000FFF
	mov r9, r1
_0802EBA0:
	mov r3, r10
	add r0, r0, #1
	mov r12, r0
	add r5, r3, #0
	add r5, r5, #64
	mov r4, #3
_0802EBAC:
	ldrh r1, [r3]
	mov r0, r9
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r3]
	sub r4, r4, #1
	add r3, r3, #2
	cmp r4, #0
	bge _0802EBAC
	mov r0, r12
	mov r10, r5
	cmp r0, #3
	ble _0802EBA0
_0802EBC6:
	mov r4, r8
	cmp r4, #11
	bgt _0802EBCE
	b _0802EAA4
_0802EBCE:
	bl sub_0801B4BC
	ldr r2, _0802EC20  @ =0x040000D4
	ldr r0, _0802EC24  @ =gOamData
	str r0, [r2]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r2, #4]
	ldr r0, _0802EC28  @ =0x84000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0802EC10  @ =0x030001C4
	ldr r0, [r0]
	add r1, r0, #0
	add r1, r1, #244
	str r1, [r2]
	ldr r1, _0802EC2C  @ =0x000008F4
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0802EC30  @ =0x80000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802EC0C:
	.4byte gUnknown_0807CA94
_0802EC10:
	.4byte 0x030001C4
_0802EC14:
	.4byte gUnknown_0807CA98
_0802EC18:
	.4byte gUnknown_0807CA2C
_0802EC1C:
	.4byte 0x00000FFF
_0802EC20:
	.4byte 0x040000D4
_0802EC24:
	.4byte gOamData
_0802EC28:
	.4byte 0x84000100
_0802EC2C:
	.4byte 0x000008F4
_0802EC30:
	.4byte 0x80000400
	THUMB_FUNC_END sub_0802E888

	THUMB_FUNC_START sub_0802EC34
sub_0802EC34: @ 0x0802EC34
	push {r4,r5,lr}
	mov r0, #0
	bl sub_08034898
	bl sub_08038B18
	ldr r4, _0802ECAC  @ =gUnknown_087DED6C
	add r0, r4, #0
	bl sub_08032EB8
	mov r2, #128
	lsl r2, r2, #19
	ldr r1, _0802ECB0  @ =0x0000FEFF
	and r1, r1, r0
	strh r1, [r2]
	mov r0, #8
	mov r1, #3
	bl sub_08032788
	add r0, r4, #0
	bl sub_08029C9C
	ldr r5, _0802ECB4  @ =gUnknown_03000BB4
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0802EC6E
	bl sub_0802EE54
_0802EC6E:
	ldr r0, _0802ECB8  @ =gUnknown_08B2AD88
	mov r1, #0
	mov r2, #0
	mov r3, #0
	bl sub_080348C8
	ldr r4, _0802ECBC  @ =0x030001C4
	ldr r0, _0802ECC0  @ =0x000008FC
	bl sub_08034854
	str r0, [r4]
	bl sub_0802DE08
	bl sub_08071FE4
	cmp r0, #10
	beq _0802EC9A
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_0802EC9A:
	mov r0, #1
	strb r0, [r5]
	ldr r1, _0802ECC4  @ =gUnknown_03000B58
	mov r0, #0
	strb r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ECAC:
	.4byte gUnknown_087DED6C
_0802ECB0:
	.4byte 0x0000FEFF
_0802ECB4:
	.4byte gUnknown_03000BB4
_0802ECB8:
	.4byte gUnknown_08B2AD88
_0802ECBC:
	.4byte 0x030001C4
_0802ECC0:
	.4byte 0x000008FC
_0802ECC4:
	.4byte gUnknown_03000B58
	THUMB_FUNC_END sub_0802EC34

	THUMB_FUNC_START sub_0802ECC8
sub_0802ECC8: @ 0x0802ECC8
	push {lr}
	ldr r0, _0802ECE8  @ =0x030001C4
	ldr r1, [r0]
	add r1, r1, #200
	ldrh r0, [r1]
	add r0, r0, #80
	strh r0, [r1]
	ldr r1, _0802ECEC  @ =gUnknown_03001730
	lsl r0, r0, #16
	lsr r0, r0, #24
	strh r0, [r1, #12]
	bl sub_0801B310
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ECE8:
	.4byte 0x030001C4
_0802ECEC:
	.4byte gUnknown_03001730
	THUMB_FUNC_END sub_0802ECC8

	THUMB_FUNC_START sub_0802ECF0
sub_0802ECF0: @ 0x0802ECF0
	push {r4,lr}
	ldr r4, _0802ED20  @ =0x030001C4
	ldr r0, [r4]
	add r0, r0, #204
	ldr r0, [r0]
	cmp r0, #0
	beq _0802ED04
	mov r0, #0
	bl sub_08034898
_0802ED04:
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802ED24  @ =0x0000FEFF
	and r0, r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	add r0, r0, #208
	mov r1, #0
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802ED20:
	.4byte 0x030001C4
_0802ED24:
	.4byte 0x0000FEFF
	THUMB_FUNC_END sub_0802ECF0

	THUMB_FUNC_START sub_0802ED28
sub_0802ED28: @ 0x0802ED28
	push {r4,lr}
	sub sp, sp, #8
	ldr r1, _0802ED68  @ =0x030001C4
	ldr r3, [r1]
	ldr r2, _0802ED6C  @ =0x000008F8
	add r1, r3, r2
	ldr r1, [r1]
	lsl r2, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r2
	ldr r2, [r1]
	ldr r1, _0802ED70  @ =gUnknown_0807CA40
	lsl r0, r0, #3
	add r4, r0, r1
	ldr r4, [r4]
	add r1, r1, #4
	add r0, r0, r1
	ldr r1, [r0]
	add r3, r3, #244
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_080065B4
	add sp, sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0802ED68:
	.4byte 0x030001C4
_0802ED6C:
	.4byte 0x000008F8
_0802ED70:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802ED28

	THUMB_FUNC_START sub_0802ED74
sub_0802ED74: @ 0x0802ED74
	push {r4,lr}
	ldr r1, _0802EDA0  @ =0x030001C4
	ldr r2, [r1]
	ldr r3, _0802EDA4  @ =0x000008F8
	add r1, r2, r3
	ldr r1, [r1]
	lsl r3, r0, #2
	mov r4, #132
	lsl r4, r4, #1
	add r1, r1, r4
	add r1, r1, r3
	ldr r1, [r1]
	lsl r0, r0, #3
	ldr r3, _0802EDA8  @ =gUnknown_0807CA40
	add r0, r0, r3
	add r2, r2, #244
	mov r3, #5
	bl sub_080064D4
	pop {r4}
	pop {r0}
	bx r0
_0802EDA0:
	.4byte 0x030001C4
_0802EDA4:
	.4byte 0x000008F8
_0802EDA8:
	.4byte gUnknown_0807CA40
	THUMB_FUNC_END sub_0802ED74

	THUMB_FUNC_START sub_0802EDAC
sub_0802EDAC: @ 0x0802EDAC
	push {r4-r7,lr}
	ldr r7, _0802EE0C  @ =gUnknown_0807CA98
	ldr r1, [r7]
	lsl r0, r0, #2
	add r1, r1, r0
	ldr r5, [r1]
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	bl sub_0800F6EC
	ldr r6, _0802EE10  @ =gUnknown_03000B90
	ldr r0, [r6]
	ldr r1, [r7]
	add r1, r1, #52
	mov r2, #10
	bl CpuSet
	ldr r2, [r7]
	add r1, r2, #0
	add r1, r1, #52
	str r1, [r6]
	add r0, r5, #0
	add r0, r0, #52
	str r0, [r1, #4]
	mov r0, #224
	str r0, [r1, #12]
	mov r0, #0
	str r0, [r6, #32]
	ldrb r4, [r5, #11]
	cmp r4, #0
	bne _0802EE14
	ldrh r0, [r5, #12]
	add r0, r0, #52
	add r0, r5, r0
	add r1, r1, #20
	mov r2, #0
	bl sub_08034790
	ldr r0, [r7]
	add r0, r0, #72
	str r0, [r6, #20]
	strb r4, [r6, #29]
	strb r4, [r6, #30]
	strb r4, [r6, #31]
	mov r0, #127
	str r0, [r6, #24]
	b _0802EE48
	.byte 0x00
	.byte 0x00
_0802EE0C:
	.4byte gUnknown_0807CA98
_0802EE10:
	.4byte gUnknown_03000B90
_0802EE14:
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F8C
	add r4, r0, #0
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F78
	str r0, [r6, #20]
	mov r2, #0
	add r3, r6, #0
	add r3, r3, #29
_0802EE2E:
	add r0, r2, r3
	add r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	add r2, r2, #1
	cmp r2, #2
	ble _0802EE2E
	ldrb r0, [r5, #11]
	sub r0, r0, #1
	bl sub_08071F64
	ldr r1, _0802EE50  @ =gUnknown_03000B90
	str r0, [r1, #24]
_0802EE48:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802EE50:
	.4byte gUnknown_03000B90
	THUMB_FUNC_END sub_0802EDAC

	THUMB_FUNC_START sub_0802EE54
sub_0802EE54: @ 0x0802EE54
	push {r4-r7,lr}
	sub sp, sp, #4
	ldr r7, _0802EEBC  @ =gUnknown_0807CA98
	ldr r1, [r7]
	ldr r6, _0802EEC0  @ =gUnknown_0807CA94
	ldr r0, [r6]
	ldr r0, [r0]
	mov r2, #0
	strh r0, [r1, #48]
	lsl r0, r0, #16
	asr r5, r0, #16
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0802EEC4  @ =0x01000018
	bl CpuSet
	mov r4, #0
	cmp r4, r5
	bge _0802EEAA
	mov r12, r6
	add r6, r7, #0
_0802EE7E:
	mov r0, r12
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r4
	ldrb r3, [r0]
	add r0, r2, #0
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	ldr r1, [r6]
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r0, r3, #1
	add r0, r0, r3
	lsl r0, r0, #10
	add r0, r0, #104
	add r2, r2, r0
	str r2, [r1]
	add r4, r4, #1
	cmp r4, r5
	blt _0802EE7E
_0802EEAA:
	ldr r0, _0802EEBC  @ =gUnknown_0807CA98
	ldr r1, [r0]
	mov r0, #0
	strh r0, [r1, #50]
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802EEBC:
	.4byte gUnknown_0807CA98
_0802EEC0:
	.4byte gUnknown_0807CA94
_0802EEC4:
	.4byte 0x01000018
	THUMB_FUNC_END sub_0802EE54

	THUMB_FUNC_START sub_0802EEC8
sub_0802EEC8: @ 0x0802EEC8
	push {r4-r7,lr}
	add r6, r0, #0
	ldr r3, _0802EF6C  @ =gUnknown_0807CA94
	ldr r5, [r3]
	add r0, r5, #0
	ldm r0!, {r7}
	lsl r1, r6, #1
	add r0, r0, r1
	mov r2, #0
	strh r2, [r0]
	lsl r1, r6, #2
	add r0, r5, #0
	add r0, r0, #28
	add r0, r0, r1
	str r2, [r0]
	mov r4, #0
	sub r1, r7, #1
	mov r12, r3
	cmp r4, r1
	bge _0802EF0E
	add r0, r5, #0
	add r0, r0, #76
	ldrb r0, [r0]
	cmp r0, r6
	beq _0802EF0E
	mov r2, r12
_0802EEFC:
	add r4, r4, #1
	cmp r4, r1
	bge _0802EF0E
	ldr r0, [r2]
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _0802EEFC
_0802EF0E:
	mov r0, r12
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r4
	add r2, r2, #102
	mov r1, #1
	ldrb r0, [r0]
	lsl r1, r1, r0
	ldrh r0, [r2]
	bic r0, r0, r1
	strh r0, [r2]
	add r3, r4, #1
	cmp r3, r7
	bge _0802EF4E
	mov r4, r12
_0802EF2E:
	ldr r0, [r4]
	sub r1, r3, #1
	add r0, r0, #76
	add r2, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, [r4]
	add r0, r0, #88
	add r1, r0, r1
	add r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	add r3, r3, #1
	cmp r3, r7
	blt _0802EF2E
_0802EF4E:
	mov r0, r12
	ldr r2, [r0]
	add r3, r2, #0
	add r3, r3, #100
	mov r1, #1
	lsl r1, r1, r6
	ldrh r0, [r3]
	bic r0, r0, r1
	strh r0, [r3]
	ldr r0, [r2]
	sub r0, r0, #1
	str r0, [r2]
	pop {r4-r7}
	pop {r0}
	bx r0
_0802EF6C:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802EEC8

	THUMB_FUNC_START sub_0802EF70
sub_0802EF70: @ 0x0802EF70
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r8, r0
	mov r3, #0
	ldr r2, _0802F058  @ =gUnknown_0807CA94
	ldr r0, [r2]
	add r0, r0, #100
	ldrh r0, [r0]
	mov r1, #1
	and r0, r0, r1
	add r7, r2, #0
	cmp r0, #0
	beq _0802EFA2
_0802EF8E:
	add r3, r3, #1
	cmp r3, #10
	bgt _0802EFA2
	ldr r0, [r2]
	add r0, r0, #100
	ldrh r0, [r0]
	asr r0, r0, r3
	and r0, r0, r1
	cmp r0, #0
	bne _0802EF8E
_0802EFA2:
	add r6, r3, #0
	ldr r0, [r7]
	mov r12, r0
	mov r2, r12
	add r2, r2, #100
	mov r4, #1
	add r0, r4, #0
	lsl r0, r0, r6
	ldrh r1, [r2]
	orr r0, r0, r1
	mov r3, #0
	strh r0, [r2]
	lsl r1, r6, #1
	mov r0, r12
	add r0, r0, #4
	add r0, r0, r1
	strh r3, [r0]
	lsl r1, r6, #2
	mov r0, r12
	add r0, r0, #28
	add r0, r0, r1
	str r3, [r0]
	mov r0, r12
	add r0, r0, #76
	mov r2, r12
	ldr r1, [r2]
	add r0, r0, r1
	strb r6, [r0]
	mov r5, #0
	ldr r0, [r7]
	add r0, r0, #102
	ldrh r0, [r0]
	and r0, r0, r4
	cmp r0, #0
	beq _0802F000
	add r2, r7, #0
	mov r1, #1
_0802EFEC:
	add r5, r5, #1
	cmp r5, #10
	bgt _0802F000
	ldr r0, [r2]
	add r0, r0, #102
	ldrh r0, [r0]
	asr r0, r0, r5
	and r0, r0, r1
	cmp r0, #0
	bne _0802EFEC
_0802F000:
	ldr r3, [r7]
	add r4, r3, #0
	add r4, r4, #102
	mov r0, #1
	lsl r0, r0, r5
	ldrh r1, [r4]
	orr r0, r0, r1
	mov r2, #0
	strh r0, [r4]
	add r0, r3, #0
	add r0, r0, #88
	ldr r1, [r3]
	add r0, r0, r1
	strb r5, [r0]
	lsl r0, r5, #1
	add r0, r0, r5
	lsl r0, r0, #10
	add r0, r0, #104
	ldr r4, [r7]
	add r4, r4, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0802F05C  @ =0x01000600
	add r1, r4, #0
	bl CpuSet
	mov r0, r8
	ldrh r2, [r0, #4]
	add r2, r2, #52
	lsr r2, r2, #1
	add r1, r4, #0
	bl CpuSet
	ldr r1, [r7]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	add r0, r6, #0
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
_0802F058:
	.4byte gUnknown_0807CA94
_0802F05C:
	.4byte 0x01000600
	THUMB_FUNC_END sub_0802EF70

	THUMB_FUNC_START sub_0802F060
sub_0802F060: @ 0x0802F060
	push {lr}
	bl sub_0802F06C
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802F060

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F06C
sub_0802F06C: @ 0x0802F06C
	push {lr}
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r0, _0802F088  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r2, _0802F08C  @ =0x01000034
	mov r0, sp
	bl CpuSet
	add sp, sp, #4
	pop {r0}
	bx r0
_0802F088:
	.4byte gUnknown_0807CA94
_0802F08C:
	.4byte 0x01000034
	THUMB_FUNC_END sub_0802F06C

	THUMB_FUNC_START sub_0802F090
sub_0802F090: @ 0x0802F090
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r4, #0
	ldr r2, _0802F0F0  @ =gUnknown_0807CA94
	ldr r0, [r2]
	ldr r1, [r0]
	cmp r4, r1
	bcs _0802F0FA
	mov r8, r2
	add r5, r0, #0
	ldrb r0, [r6]
	mov r12, r0
	add r7, r1, #0
_0802F0AE:
	add r0, r5, #0
	add r0, r0, #88
	add r0, r0, r4
	ldrb r1, [r0]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	add r0, r0, #104
	add r1, r5, r0
	mov r2, #0
	ldrb r0, [r1, #16]
	cmp r0, r12
	bne _0802F0DE
	add r3, r1, #0
	add r3, r3, #16
_0802F0CC:
	add r2, r2, #1
	cmp r2, #31
	bgt _0802F0E2
	add r0, r3, r2
	add r1, r6, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0802F0CC
_0802F0DE:
	cmp r2, #31
	ble _0802F0F4
_0802F0E2:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #76
	add r0, r0, r4
	ldrb r0, [r0]
	add r0, r0, #1
	b _0802F0FC
_0802F0F0:
	.4byte gUnknown_0807CA94
_0802F0F4:
	add r4, r4, #1
	cmp r4, r7
	bcc _0802F0AE
_0802F0FA:
	mov r0, #0
_0802F0FC:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F090

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F108
sub_0802F108: @ 0x0802F108
	push {lr}
	ldr r1, _0802F120  @ =gUnknown_0807CA94
	ldr r1, [r1]
	add r1, r1, #100
	ldrh r1, [r1]
	asr r1, r1, r0
	mov r0, #1
	and r1, r1, r0
	cmp r1, #0
	bne _0802F124
	mov r0, #0
	b _0802F126
_0802F120:
	.4byte gUnknown_0807CA94
_0802F124:
	mov r0, #1
_0802F126:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F108

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F12C
sub_0802F12C: @ 0x0802F12C
	push {r4,lr}
	add r2, r0, #0
	add r1, r2, #4
	ldrh r0, [r2, #6]
	add r3, r1, #0
	cmp r0, #0
	bne _0802F13E
	add r3, r2, #0
	add r3, r3, #52
_0802F13E:
	ldrh r0, [r2, #4]
	lsr r0, r0, #1
	lsl r0, r0, #1
	add r3, r3, r0
	mov r4, #1
	ldr r2, [r2]
	cmp r1, r3
	bcs _0802F158
_0802F14E:
	ldrh r0, [r1]
	add r4, r4, r0
	add r1, r1, #2
	cmp r1, r3
	bcc _0802F14E
_0802F158:
	cmp r2, r4
	bne _0802F160
	mov r0, #1
	b _0802F162
_0802F160:
	mov r0, #0
_0802F162:
	pop {r4}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0802F12C

	THUMB_FUNC_START sub_0802F168
sub_0802F168: @ 0x0802F168
	push {r4-r7,lr}
	add r5, r1, #0
	lsl r0, r0, #24
	ldr r3, _0802F1A8  @ =gUnknown_0807CA94
	ldr r1, [r3]
	lsr r0, r0, #22
	add r1, r1, #28
	add r1, r1, r0
	mov r2, #8
	str r2, [r1]
	mov r4, #0
	add r7, r3, #0
	add r3, r0, #0
	mov r6, #1
_0802F184:
	add r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F19C
	ldr r2, [r7]
	add r2, r2, #28
	add r2, r2, r3
	add r1, r6, #0
	lsl r1, r1, r4
	ldr r0, [r2]
	orr r0, r0, r1
	str r0, [r2]
_0802F19C:
	add r4, r4, #1
	cmp r4, #2
	ble _0802F184
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F1A8:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F168

	THUMB_FUNC_START sub_0802F1AC
sub_0802F1AC: @ 0x0802F1AC
	lsl r0, r0, #24
	ldr r2, _0802F1BC  @ =gUnknown_0807CA94
	ldr r2, [r2]
	lsr r0, r0, #23
	add r2, r2, #4
	add r2, r2, r0
	strh r1, [r2]
	bx lr
_0802F1BC:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1AC

	THUMB_FUNC_START sub_0802F1C0
sub_0802F1C0: @ 0x0802F1C0
	lsl r0, r0, #24
	ldr r1, _0802F1D0  @ =gUnknown_0807CA94
	ldr r1, [r1]
	lsr r0, r0, #23
	add r1, r1, #4
	add r1, r1, r0
	ldrh r0, [r1]
	bx lr
_0802F1D0:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1C0

	THUMB_FUNC_START sub_0802F1D4
sub_0802F1D4: @ 0x0802F1D4
	push {lr}
	ldr r0, _0802F1E8  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A370
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F1E8:
	.4byte gUnknown_0807CA94
	THUMB_FUNC_END sub_0802F1D4

	THUMB_FUNC_START sub_0802F1EC
sub_0802F1EC: @ 0x0802F1EC
	push {r4-r7,lr}
	sub sp, sp, #12
	bl sub_080331FC
	bl sub_08008238
	ldr r7, _0802F228  @ =0x030001C8
	ldrb r1, [r7]
	cmp r1, #0
	beq _0802F202
	b _0802F306
_0802F202:
	ldr r0, _0802F22C  @ =gUnknown_03001708
	ldrh r2, [r0]
	mov r0, #64
	and r0, r0, r2
	cmp r0, #0
	beq _0802F234
	ldr r2, _0802F230  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F218
	b _0802F432
_0802F218:
	sub r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F228:
	.4byte 0x030001C8
_0802F22C:
	.4byte gUnknown_03001708
_0802F230:
	.4byte 0x030001C9
_0802F234:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r2
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F260
	ldr r2, _0802F25C  @ =0x030001C9
	ldrb r0, [r2]
	add r1, r0, #0
	cmp r1, #0
	beq _0802F24E
	b _0802F432
_0802F24E:
	add r0, r0, #1
	strb r0, [r2]
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F25C:
	.4byte 0x030001C9
_0802F260:
	ldr r0, _0802F2A8  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _0802F2E0
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r6, _0802F2AC  @ =0x030001C9
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802F2BC
	ldr r0, _0802F2B0  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F2B4
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #26
	b _0802F2FE
	.byte 0x00
	.byte 0x00
_0802F2A8:
	.4byte gUnknown_030012E8
_0802F2AC:
	.4byte 0x030001C9
_0802F2B0:
	.4byte gUnknown_0807CA94
_0802F2B4:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	b _0802F402
_0802F2BC:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, _0802F2DC  @ =0x030001CA
	strb r4, [r6]
	strb r4, [r0]
	mov r0, #1
	strb r0, [r7]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F2DC:
	.4byte 0x030001CA
_0802F2E0:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	bne _0802F2EA
	b _0802F432
_0802F2EA:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r0, #25
_0802F2FE:
	mov r1, #0
	bl sub_080070E8
	b _0802F432
_0802F306:
	ldr r0, _0802F340  @ =gUnknown_03001708
	ldrh r1, [r0]
	mov r0, #64
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r4, r0, #16
	cmp r4, #0
	beq _0802F34C
	ldr r2, _0802F344  @ =0x030001C9
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802F320
	b _0802F432
_0802F320:
	sub r1, r0, #1
	strb r1, [r2]
	ldr r2, _0802F348  @ =0x030001CA
	lsl r0, r1, #24
	lsr r0, r0, #24
	ldrb r3, [r2]
	cmp r0, r3
	bcs _0802F332
	strb r1, [r2]
_0802F332:
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #178
	b _0802F404
_0802F340:
	.4byte gUnknown_03001708
_0802F344:
	.4byte 0x030001C9
_0802F348:
	.4byte 0x030001CA
_0802F34C:
	mov r5, #128
	add r0, r5, #0
	and r0, r0, r1
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _0802F3B0
	ldr r3, _0802F378  @ =0x030001C9
	ldrb r0, [r3]
	add r0, r0, #1
	strb r0, [r3]
	ldr r1, _0802F37C  @ =gUnknown_0807CA9C
	ldrb r2, [r3]
	lsl r0, r2, #3
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F380
	sub r0, r2, #1
	strb r0, [r3]
	b _0802F392
	.byte 0x00
	.byte 0x00
_0802F378:
	.4byte 0x030001C9
_0802F37C:
	.4byte gUnknown_0807CA9C
_0802F380:
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802F392:
	ldr r0, _0802F3A8  @ =0x030001C9
	ldrb r1, [r0]
	ldr r3, _0802F3AC  @ =0x030001CA
	ldrb r2, [r3]
	add r0, r2, #6
	cmp r1, r0
	blt _0802F432
	add r0, r2, #1
	strb r0, [r3]
	b _0802F432
	.byte 0x00
	.byte 0x00
_0802F3A8:
	.4byte 0x030001C9
_0802F3AC:
	.4byte 0x030001CA
_0802F3B0:
	ldr r0, _0802F3EC  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r4, #9
	and r4, r4, r2
	cmp r4, #0
	beq _0802F410
	ldr r0, _0802F3F0  @ =gUnknown_0807CA94
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #11
	bhi _0802F3FC
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r1, _0802F3F4  @ =gUnknown_0807CA9C
	ldr r0, _0802F3F8  @ =0x030001C9
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r1, #4
	add r0, r0, r1
	ldr r0, [r0]
	bl sub_0802D614
	b _0802F432
_0802F3EC:
	.4byte gUnknown_030012E8
_0802F3F0:
	.4byte gUnknown_0807CA94
_0802F3F4:
	.4byte gUnknown_0807CA9C
_0802F3F8:
	.4byte 0x030001C9
_0802F3FC:
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
_0802F402:
	mov r0, #27
_0802F404:
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802F432
_0802F410:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _0802F432
	str r4, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	strb r4, [r7]
	ldr r1, _0802F43C  @ =0x030001C9
	mov r0, #1
	strb r0, [r1]
_0802F432:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F43C:
	.4byte 0x030001C9
	THUMB_FUNC_END sub_0802F1EC

	THUMB_FUNC_START sub_0802F440
sub_0802F440: @ 0x0802F440
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #20
	ldr r0, _0802F494  @ =gUnknown_08076994
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #12]
	str r1, [sp, #16]
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _0802F498  @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _0802F49C  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _0802F4A0  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	ldr r0, _0802F4A4  @ =0x030001C8
	ldrb r0, [r0]
	mov r8, r4
	cmp r0, #0
	bne _0802F4F4
	mov r4, #0
	mov r6, #20
	mov r7, #1
	neg r7, r7
	add r5, sp, #12
_0802F484:
	ldr r1, [r5]
	ldr r0, _0802F4A8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4AC
	mov r0, #2
	b _0802F4AE
	.byte 0x00
	.byte 0x00
_0802F494:
	.4byte gUnknown_08076994
_0802F498:
	.4byte 0x040000D4
_0802F49C:
	.4byte gOamData
_0802F4A0:
	.4byte 0x85000100
_0802F4A4:
	.4byte 0x030001C8
_0802F4A8:
	.4byte 0x030001C9
_0802F4AC:
	mov r0, #3
_0802F4AE:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r7, #0
	bl sub_08034CCC
	add r5, r5, #4
	add r4, r4, #1
	add r6, r6, #20
	cmp r4, #1
	ble _0802F484
	ldr r1, _0802F4D4  @ =gUnknown_0807699C
	ldr r0, _0802F4D8  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F4DC
	mov r0, #2
	b _0802F4DE
_0802F4D4:
	.4byte gUnknown_0807699C
_0802F4D8:
	.4byte 0x030001C9
_0802F4DC:
	mov r0, #3
_0802F4DE:
	str r0, [sp]
	add r0, r1, #0
	ldr r1, _0802F4F0  @ =0xFFFF8001
	mov r2, #104
	mov r3, #1
	neg r3, r3
	bl sub_08034CCC
	b _0802F556
_0802F4F0:
	.4byte 0xFFFF8001
_0802F4F4:
	ldr r0, _0802F520  @ =0x030001CA
	ldrb r4, [r0]
	mov r6, #20
	ldr r2, _0802F524  @ =gUnknown_0807CA9C
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	add r0, r4, #6
	cmp r4, r0
	bge _0802F556
	mov r5, #1
	neg r5, r5
_0802F510:
	add r0, r1, r2
	ldr r1, [r0]
	ldr r0, _0802F528  @ =0x030001C9
	ldrb r0, [r0]
	cmp r4, r0
	bne _0802F52C
	mov r0, #2
	b _0802F52E
_0802F520:
	.4byte 0x030001CA
_0802F524:
	.4byte gUnknown_0807CA9C
_0802F528:
	.4byte 0x030001C9
_0802F52C:
	mov r0, #3
_0802F52E:
	str r0, [sp]
	add r0, r1, #0
	mov r1, #20
	add r2, r6, #0
	add r3, r5, #0
	bl sub_08034CCC
	add r4, r4, #1
	add r6, r6, #20
	ldr r2, _0802F57C  @ =gUnknown_0807CA9C
	lsl r1, r4, #3
	add r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F556
	ldr r0, _0802F580  @ =0x030001CA
	ldrb r0, [r0]
	add r0, r0, #6
	cmp r4, r0
	blt _0802F510
_0802F556:
	mov r0, r8
	bl sub_08035108
	ldr r1, _0802F584  @ =0x040000D4
	ldr r0, _0802F588  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _0802F58C  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802F57C:
	.4byte gUnknown_0807CA9C
_0802F580:
	.4byte 0x030001CA
_0802F584:
	.4byte 0x040000D4
_0802F588:
	.4byte gOamData
_0802F58C:
	.4byte 0x80000200
	THUMB_FUNC_END sub_0802F440

	THUMB_FUNC_START sub_0802F590
sub_0802F590: @ 0x0802F590
	ldr r3, _0802F5AC  @ =0x030001C8
	ldr r2, _0802F5B0  @ =0x030001C9
	ldr r1, _0802F5B4  @ =0x030001CA
	mov r0, #0
	strb r0, [r1]
	strb r0, [r2]
	strb r0, [r3]
	mov r2, #128
	lsl r2, r2, #19
	ldrh r1, [r2]
	ldr r0, _0802F5B8  @ =0x0000FDFF
	and r0, r0, r1
	strh r0, [r2]
	bx lr
_0802F5AC:
	.4byte 0x030001C8
_0802F5B0:
	.4byte 0x030001C9
_0802F5B4:
	.4byte 0x030001CA
_0802F5B8:
	.4byte 0x0000FDFF
	THUMB_FUNC_END sub_0802F590

	THUMB_FUNC_START sub_0802F5BC
sub_0802F5BC: @ 0x0802F5BC
	bx lr
	THUMB_FUNC_END sub_0802F5BC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0802F5C0
sub_0802F5C0: @ 0x0802F5C0
	push {lr}
	sub sp, sp, #12
	add r2, r0, #0
	lsl r0, r2, #4
	add r0, r0, r2
	lsl r0, r0, #4
	add r0, r0, r2
	lsl r0, r0, #2
	asr r2, r0, #16
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #3
	add r0, r0, r2
	lsl r0, r0, #4
	asr r1, r0, #16
	str r1, [sp, #8]
	mov r0, #100
	mul r0, r1, r0
	sub r2, r2, r0
	cmp r2, #99
	ble _0802F5FE
	sub r2, r2, #100
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F5FE
	mov r0, #0
	str r0, [sp, #4]
	add r0, r1, #1
	str r0, [sp, #8]
_0802F5FE:
	ldr r0, _0802F644  @ =0x0000199A
	mul r0, r2, r0
	asr r1, r0, #16
	str r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	sub r2, r2, r0
	cmp r2, #9
	ble _0802F626
	sub r2, r2, #10
	add r0, r1, #1
	str r0, [sp, #4]
	cmp r0, #5
	ble _0802F626
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0802F626:
	str r2, [sp]
	ldr r1, [sp, #4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r2, r0
	ldr r2, [sp, #8]
	mov r1, #100
	mul r1, r2, r1
	add r2, r0, r1
	add r0, r2, #0
	add sp, sp, #12
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_0802F644:
	.4byte 0x0000199A
	THUMB_FUNC_END sub_0802F5C0

	THUMB_FUNC_START sub_0802F648
sub_0802F648: @ 0x0802F648
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r4, r1, #0
	mov r5, #0
	mov r9, r5
	ldr r0, _0802F6B4  @ =0x03000DE8
	str r6, [r0]
	ldr r0, _0802F6B8  @ =0x03000DDC
	strb r5, [r0]
	ldr r0, _0802F6BC  @ =0x03000DE4
	strb r5, [r0]
	ldr r1, _0802F6C0  @ =0x03000DE0
	ldr r0, _0802F6C4  @ =0x03000DF0
	strb r5, [r0]
	strb r5, [r1]
	ldr r1, _0802F6C8  @ =0x03000DEC
	mov r0, #1
	strb r0, [r1]
	ldr r0, _0802F6CC  @ =0x03000DD4
	strb r5, [r0]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _0802F6D0  @ =0x0100002A
	add r1, r6, #0
	bl CpuSet
	str r4, [r6, #80]
	mov r7, #0
	ldr r0, [r4]
	cmp r5, r0
	blt _0802F690
	b _0802F78E
_0802F690:
	lsl r0, r7, #3
	add r0, r0, #4
	ldr r1, [r6, #80]
	add r1, r1, r0
	mov r8, r1
	lsl r0, r7, #2
	add r0, r0, r7
	lsl r0, r0, #2
	add r4, r6, r0
	ldrb r0, [r1, #7]
	cmp r0, #4
	bhi _0802F766
	lsl r0, r0, #2
	ldr r1, _0802F6D4  @ =0x0802F6D8
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.byte 0x00
	.byte 0x00
_0802F6B4:
	.4byte 0x03000DE8
_0802F6B8:
	.4byte 0x03000DDC
_0802F6BC:
	.4byte 0x03000DE4
_0802F6C0:
	.4byte 0x03000DE0
_0802F6C4:
	.4byte 0x03000DF0
_0802F6C8:
	.4byte 0x03000DEC
_0802F6CC:
	.4byte 0x03000DD4
_0802F6D0:
	.4byte 0x0100002A
_0802F6D4:
	.4byte _0802F6D8
_0802F6D8:
	.4byte _0802F6EC
	.4byte _0802F718
	.4byte _0802F700
	.4byte _0802F72C
	.4byte _0802F74C
_0802F6EC:
	ldr r0, _0802F6FC  @ =gUnknown_03000B54
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r0, r1, r0
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F6FC:
	.4byte gUnknown_03000B54
_0802F700:
	ldr r0, _0802F714  @ =gUnknown_03000B44
	ldr r0, [r0]
	bl sub_0802F5C0
	mov r1, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F714:
	.4byte gUnknown_03000B44
_0802F718:
	ldr r0, _0802F728  @ =0x03001BA0
	ldrb r1, [r0]
	mov r0, #100
	mul r1, r0, r1
	ldr r0, [r4]
	add r0, r0, r1
	b _0802F764
	.byte 0x00
	.byte 0x00
_0802F728:
	.4byte 0x03001BA0
_0802F72C:
	ldr r0, _0802F740  @ =0x03000DD8
	add r5, r4, #0
	str r5, [r0]
	ldr r0, _0802F744  @ =gUnknown_03000B4C
	ldr r1, _0802F748  @ =gUnknown_03000B6C
	ldr r0, [r0]
	ldr r1, [r1]
	add r0, r0, r1
	str r0, [r5]
	b _0802F766
_0802F740:
	.4byte 0x03000DD8
_0802F744:
	.4byte gUnknown_03000B4C
_0802F748:
	.4byte gUnknown_03000B6C
_0802F74C:
	ldr r0, _0802F7A8  @ =0x03000E54
	str r4, [r0]
	ldr r0, _0802F7AC  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802F7B0  @ =0x03000DF8
	ldrb r1, [r1]
	ldr r2, _0802F7B4  @ =gUnknown_03000B80
	ldrb r2, [r2]
	bl sub_0801095C
	lsl r0, r0, #16
	lsr r0, r0, #16
_0802F764:
	str r0, [r4]
_0802F766:
	mov r1, r8
	ldrb r0, [r1, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, [r4]
	cmp r0, #1
	bls _0802F778
	add r9, r9, r1
_0802F778:
	str r1, [r4, #4]
	add r0, r4, #0
	add r0, r0, #12
	bl sub_0802FB18
	add r7, r7, #1
	ldr r0, [r6, #80]
	ldr r0, [r0]
	cmp r7, r0
	bge _0802F78E
	b _0802F690
_0802F78E:
	cmp r5, #0
	beq _0802F79A
	ldr r0, [r5, #4]
	add r0, r0, r9
	str r0, [r5, #4]
	str r0, [r5, #8]
_0802F79A:
	add sp, sp, #4
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F7A8:
	.4byte 0x03000E54
_0802F7AC:
	.4byte 0x03000DD0
_0802F7B0:
	.4byte 0x03000DF8
_0802F7B4:
	.4byte gUnknown_03000B80
	THUMB_FUNC_END sub_0802F648

	THUMB_FUNC_START sub_0802F7B8
sub_0802F7B8: @ 0x0802F7B8
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #8
	add r2, r0, #0
	mov r8, r1
	ldr r0, [r2, #80]
	ldr r1, [r0]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	sub r0, r0, #40
	add r6, r2, r0
	mov r7, #0
	mov r3, #0
	sub r1, r1, #2
	cmp r7, r1
	bge _0802F81E
	add r4, r2, #4
	mov r0, #12
	add r0, r0, r2
	mov r9, r0
_0802F7E6:
	ldr r1, [r4]
	mov r5, r8
	sub r0, r1, r5
	cmp r0, #0
	bge _0802F7F8
	add r7, r7, r1
	mov r0, #0
	str r0, [r4]
	b _0802F7FC
_0802F7F8:
	str r0, [r4]
	add r7, r7, r8
_0802F7FC:
	ldr r1, [r4]
	mov r0, r9
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0802FB18
	add r4, r4, #20
	mov r0, #20
	add r9, r9, r0
	ldr r3, [sp, #4]
	add r3, r3, #1
	ldr r2, [sp]
	ldr r0, [r2, #80]
	ldr r0, [r0]
	sub r0, r0, #2
	cmp r3, r0
	blt _0802F7E6
_0802F81E:
	ldr r0, [r6]
	add r2, r0, r7
	str r2, [r6]
	ldr r0, _0802F884  @ =0x03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	add r3, r0, #0
	cmp r1, #0
	bne _0802F83E
	ldr r0, [r6, #20]
	cmp r2, r0
	ble _0802F83E
	str r2, [r6, #20]
	ldr r1, _0802F888  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802F83E:
	ldr r0, [r6]
	ldr r1, [r6, #4]
	cmp r0, r1
	blt _0802F860
	mov r5, #0
	mov r8, r5
	str r1, [r6]
	mov r1, #1
	strb r1, [r3]
	ldr r0, _0802F888  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _0802F860
	ldr r0, _0802F88C  @ =0x03000DD4
	strb r1, [r0]
_0802F860:
	add r0, r6, #0
	add r0, r0, #12
	ldr r1, [r6]
	bl sub_0802FB18
	add r0, r6, #0
	add r0, r0, #32
	ldr r1, [r6, #20]
	bl sub_0802FB18
	mov r0, r8
	add sp, sp, #8
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_0802F884:
	.4byte 0x03000DDC
_0802F888:
	.4byte 0x03000DE4
_0802F88C:
	.4byte 0x03000DD4
	THUMB_FUNC_END sub_0802F7B8

	THUMB_FUNC_START sub_0802F890
sub_0802F890: @ 0x0802F890
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	str r0, [sp, #12]
	str r1, [sp, #16]
	mov r10, r2
	mov r9, r3
	ldr r0, _0802F8C4  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F936
	ldr r2, _0802F8C8  @ =0x03000DE0
	ldrb r1, [r2]
	mov r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #4
	bgt _0802F8CC
	add r0, r1, #1
	strb r0, [r2]
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F8C4:
	.4byte 0x03000DE4
_0802F8C8:
	.4byte 0x03000DE0
_0802F8CC:
	ldr r1, _0802F910  @ =0x03000DF0
	ldrb r3, [r1]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #11
	bgt _0802F928
	mov r0, #0
	strb r0, [r2]
	add r0, r3, #1
	strb r0, [r1]
	ldr r2, _0802F914  @ =0x03000DEC
	ldrb r0, [r2]
	mov r1, #1
	eor r0, r0, r1
	strb r0, [r2]
	cmp r0, #1
	bne _0802F91C
	ldr r1, _0802F918  @ =gUnknown_03001730
	mov r2, #0
	mov r0, #128
	lsl r0, r0, #1
	strh r0, [r1, #4]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #25
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _0802F936
	.byte 0x00
	.byte 0x00
_0802F910:
	.4byte 0x03000DF0
_0802F914:
	.4byte 0x03000DEC
_0802F918:
	.4byte gUnknown_03001730
_0802F91C:
	ldr r1, _0802F924  @ =gUnknown_03001730
	mov r0, #0
	strh r0, [r1, #4]
	b _0802F936
_0802F924:
	.4byte gUnknown_03001730
_0802F928:
	ldr r0, _0802F9C8  @ =0x03000DDC
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #1
	bne _0802F936
	ldr r0, _0802F9CC  @ =0x03000DD4
	strb r1, [r0]
_0802F936:
	mov r7, #0
	ldr r0, [sp, #12]
	ldr r1, [r0, #80]
	ldr r0, [r1]
	cmp r7, r0
	bge _0802F9B8
	ldr r6, [sp, #12]
	add r6, r6, #12
	mov r3, #4
	mov r8, r3
_0802F94A:
	mov r5, #6
	mov r0, r8
	add r4, r1, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802F96A
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	mov r3, r10
	str r3, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	ldr r3, [sp, #16]
	bl sub_0802F9D8
_0802F96A:
	ldr r0, _0802F9D0  @ =0x03000DE4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldr r0, _0802F9D4  @ =0x03000DEC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _0802F990
	ldrb r0, [r4, #7]
	sub r0, r0, #3
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bhi _0802F990
	mov r5, #8
_0802F990:
	ldrb r1, [r4, #6]
	ldrb r2, [r4, #5]
	mov r0, r10
	str r0, [sp]
	mov r3, r9
	str r3, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	ldr r3, [sp, #16]
	bl sub_0802FB60
	add r6, r6, #20
	mov r0, #8
	add r8, r8, r0
	add r7, r7, #1
	ldr r3, [sp, #12]
	ldr r1, [r3, #80]
	ldr r0, [r1]
	cmp r7, r0
	blt _0802F94A
_0802F9B8:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802F9C8:
	.4byte 0x03000DDC
_0802F9CC:
	.4byte 0x03000DD4
_0802F9D0:
	.4byte 0x03000DE4
_0802F9D4:
	.4byte 0x03000DEC
	THUMB_FUNC_END sub_0802F890

	THUMB_FUNC_START sub_0802F9D8
sub_0802F9D8: @ 0x0802F9D8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r0
	add r4, r3, #0
	ldr r0, [sp, #44]
	mov r10, r0
	ldr r0, [sp, #48]
	lsl r1, r1, #24
	lsr r6, r1, #24
	lsl r2, r2, #24
	lsr r2, r2, #24
	str r2, [sp]
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #4]
	mov r0, r9
	bl strlen
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r8, r0
	mov r1, #0
	mov r12, r1
	cmp r12, r8
	bcs _0802FADE
	ldr r5, _0802FAF0  @ =0x040000D4
	ldr r7, _0802FAF4  @ =gOamData
_0802FA16:
	mov r1, r9
	add r1, r1, r12
	ldrb r0, [r1]
	cmp r0, #32
	beq _0802FAC8
	ldrb r0, [r1]
	sub r0, r0, #65
	lsl r0, r0, #5
	ldr r2, _0802FAF8  @ =gUnknown_080CB7F0
	add r0, r0, r2
	str r0, [r5]
	mov r3, r10
	ldrh r0, [r3]
	ldr r1, _0802FAFC  @ =0x06010000
	add r0, r0, r1
	str r0, [r5, #4]
	ldr r0, _0802FB00  @ =0x84000008
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldr r0, _0802FB04  @ =gUnknown_080CB7E8
	str r0, [r5]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	str r0, [r5, #4]
	ldr r0, _0802FB08  @ =0x84000002
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldrh r2, [r1, #2]
	ldr r0, _0802FB0C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r6
	strh r0, [r1, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r7
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrh r3, [r2, #4]
	lsl r1, r3, #22
	lsr r1, r1, #22
	ldr r0, [sp, #40]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _0802FB10  @ =0x000003FF
	and r1, r1, r3
	ldr r0, _0802FB14  @ =0xFFFFFC00
	ldrh r3, [r2, #4]
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r7
	ldr r0, [sp, #4]
	lsl r3, r0, #4
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r3
	strb r0, [r1, #5]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r7
	ldrb r1, [r2, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r1
	mov r1, #4
	orr r0, r0, r1
	strb r0, [r2, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldr r1, [sp, #40]
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r10
	ldrh r0, [r2]
	add r0, r0, #32
	strh r0, [r2]
_0802FAC8:
	add r0, r6, #0
	add r0, r0, #8
	lsl r0, r0, #24
	lsr r6, r0, #24
	mov r0, r12
	add r0, r0, #1
	lsl r0, r0, #24
	lsr r0, r0, #24
	mov r12, r0
	cmp r12, r8
	bcc _0802FA16
_0802FADE:
	add sp, sp, #8
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FAF0:
	.4byte 0x040000D4
_0802FAF4:
	.4byte gOamData
_0802FAF8:
	.4byte gUnknown_080CB7F0
_0802FAFC:
	.4byte 0x06010000
_0802FB00:
	.4byte 0x84000008
_0802FB04:
	.4byte gUnknown_080CB7E8
_0802FB08:
	.4byte 0x84000002
_0802FB0C:
	.4byte 0xFFFFFE00
_0802FB10:
	.4byte 0x000003FF
_0802FB14:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802F9D8

	THUMB_FUNC_START sub_0802FB18
sub_0802FB18: @ 0x0802FB18
	push {r4-r7,lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r5, #0
	mov r1, #0
_0802FB22:
	add r0, r7, r5
	strb r1, [r0]
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bls _0802FB22
	mov r5, #0
	cmp r6, #0
	beq _0802FB5A
_0802FB36:
	add r4, r7, r5
	add r0, r6, #0
	mov r1, #10
	bl __umodsi3
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #10
	bl __udivsi3
	add r6, r0, #0
	add r0, r5, #1
	lsl r0, r0, #24
	lsr r5, r0, #24
	cmp r5, #5
	bhi _0802FB5A
	cmp r6, #0
	bne _0802FB36
_0802FB5A:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0802FB18

	THUMB_FUNC_START sub_0802FB60
sub_0802FB60: @ 0x0802FB60
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r10, r0
	add r4, r3, #0
	ldr r0, [sp, #40]
	lsl r1, r1, #24
	lsr r1, r1, #24
	mov r9, r1
	lsl r2, r2, #24
	lsr r2, r2, #24
	mov r8, r2
	lsl r0, r0, #24
	mov r6, #0
	ldr r7, _0802FC08  @ =0x040000D4
	ldr r5, _0802FC0C  @ =gOamData
	lsr r0, r0, #20
	mov r12, r0
_0802FB88:
	ldr r0, _0802FC10  @ =gUnknown_082EC748
	str r0, [r7]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	str r0, [r7, #4]
	ldr r0, _0802FC14  @ =0x84000002
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldrh r3, [r4]
	lsl r3, r3, #3
	add r3, r3, r5
	lsl r1, r6, #3
	mov r2, r9
	sub r1, r2, r1
	ldr r2, _0802FC18  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _0802FC1C  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r4]
	lsl r0, r0, #3
	add r0, r0, r5
	mov r1, r8
	strb r1, [r0]
	ldrh r2, [r4]
	lsl r2, r2, #3
	add r2, r2, r5
	mov r1, r10
	add r0, r1, r6
	ldrb r1, [r0]
	lsl r1, r1, #1
	ldrh r3, [r2, #4]
	ldr r0, _0802FC20  @ =0xFFFFFC00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #4]
	ldrh r1, [r4]
	lsl r1, r1, #3
	add r1, r1, r5
	ldrb r2, [r1, #5]
	mov r0, #15
	and r0, r0, r2
	mov r2, r12
	orr r0, r0, r2
	strb r0, [r1, #5]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
	cmp r6, #5
	bls _0802FB88
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FC08:
	.4byte 0x040000D4
_0802FC0C:
	.4byte gOamData
_0802FC10:
	.4byte gUnknown_082EC748
_0802FC14:
	.4byte 0x84000002
_0802FC18:
	.4byte 0x000001FF
_0802FC1C:
	.4byte 0xFFFFFE00
_0802FC20:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_0802FB60

	THUMB_FUNC_START sub_0802FC24
sub_0802FC24: @ 0x0802FC24
	push {r4,lr}
	add r2, r0, #0
	cmp r1, #0
	beq _0802FC3C
	ldr r0, _0802FC38  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, [r1, #8]
	add r0, r0, r2
	str r0, [r1, #8]
	b _0802FC76
_0802FC38:
	.4byte 0x03000DD8
_0802FC3C:
	ldr r4, _0802FC7C  @ =0x03000DD8
	ldr r1, [r4]
	ldr r0, [r1, #4]
	add r0, r0, r2
	str r0, [r1, #4]
	ldr r0, [r1]
	add r2, r0, r2
	str r2, [r1]
	ldr r3, _0802FC80  @ =0x03000E54
	ldr r1, [r3]
	ldr r0, [r1]
	cmp r2, r0
	ble _0802FC5E
	str r2, [r1]
	ldr r1, _0802FC84  @ =0x03000DE4
	mov r0, #1
	strb r0, [r1]
_0802FC5E:
	ldr r1, [r3]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
	ldr r1, [r4]
	add r0, r1, #0
	add r0, r0, #12
	ldr r1, [r1]
	bl sub_0802FB18
_0802FC76:
	pop {r4}
	pop {r0}
	bx r0
_0802FC7C:
	.4byte 0x03000DD8
_0802FC80:
	.4byte 0x03000E54
_0802FC84:
	.4byte 0x03000DE4
	THUMB_FUNC_END sub_0802FC24

	THUMB_FUNC_START sub_0802FC88
sub_0802FC88: @ 0x0802FC88
	push {lr}
	mov r2, #0
	ldr r0, _0802FCA0  @ =0x03000DD8
	ldr r0, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	cmp r1, r0
	blt _0802FC9A
	mov r2, #1
_0802FC9A:
	add r0, r2, #0
	pop {r1}
	bx r1
_0802FCA0:
	.4byte 0x03000DD8
	THUMB_FUNC_END sub_0802FC88

	THUMB_FUNC_START sub_0802FCA4
sub_0802FCA4: @ 0x0802FCA4
	push {lr}
	ldr r0, _0802FCCC  @ =0x03000DD8
	ldr r1, [r0]
	ldr r0, _0802FCD0  @ =0x03000E54
	ldr r0, [r0]
	ldr r2, [r1, #8]
	ldr r0, [r0, #4]
	cmp r2, r0
	blt _0802FCC6
	ldr r0, _0802FCD4  @ =0x03000DD0
	ldrb r0, [r0]
	ldr r1, _0802FCD8  @ =0x03000DF8
	ldrb r1, [r1]
	lsl r2, r2, #16
	lsr r2, r2, #16
	bl sub_080107E8
_0802FCC6:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0802FCCC:
	.4byte 0x03000DD8
_0802FCD0:
	.4byte 0x03000E54
_0802FCD4:
	.4byte 0x03000DD0
_0802FCD8:
	.4byte 0x03000DF8
	THUMB_FUNC_END sub_0802FCA4

	THUMB_FUNC_START sub_0802FCDC
sub_0802FCDC: @ 0x0802FCDC
	push {r4-r7,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	lsr r0, r7, #31
	mov r12, r0
	mov r1, r12
	cmp r1, #0
	beq _0802FCF4
	mov r0, #0
	strh r0, [r4, #60]
_0802FCF4:
	mov r2, #62
	ldrsh r7, [r4, r2]
	cmp r3, #0
	blt _0802FD04
	add r0, r4, #0
	add r0, r0, #64
	strh r3, [r0]
	b _0802FD0C
_0802FD04:
	add r0, r4, #0
	add r0, r0, #64
	mov r1, #0
	ldrsh r3, [r0, r1]
_0802FD0C:
	ldr r0, [r4, #32]
	str r0, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
	mov r6, #0
	str r6, [r4, #48]
	str r6, [r4, #52]
	cmp r5, #53
	bne _0802FD70
	ldr r0, _0802FD64  @ =0x03001BC8
	ldrb r0, [r0]
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #7
	ldr r0, _0802FD68  @ =0x030001CC
	ldr r2, [r0]
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #6
	ldr r2, _0802FD6C  @ =gUnknown_0807D1F0
	add r0, r0, r2
	add r1, r1, r0
	lsl r0, r7, #5
	add r2, r1, r0
	mov r0, #60
	ldrsh r1, [r4, r0]
	lsl r1, r1, #2
	add r0, r2, #4
	add r0, r0, r1
	ldr r5, [r0]
	mov r1, r12
	cmp r1, #0
	bne _0802FD54
	ldrh r0, [r4, #60]
	add r0, r0, #1
	strh r0, [r4, #60]
_0802FD54:
	mov r0, #60
	ldrsh r1, [r4, r0]
	ldr r0, [r2]
	cmp r1, r0
	blt _0802FD82
	strh r6, [r4, #60]
	b _0802FD82
	.byte 0x00
	.byte 0x00
_0802FD64:
	.4byte 0x03001BC8
_0802FD68:
	.4byte 0x030001CC
_0802FD6C:
	.4byte gUnknown_0807D1F0
_0802FD70:
	cmp r5, #51
	bne _0802FD76
	b _0802FF24
_0802FD76:
	cmp r5, #52
	bne _0802FD82
	mov r0, #1
	strh r0, [r4, #56]
	strh r6, [r4, #58]
	b _0802FF24
_0802FD82:
	lsl r0, r5, #2
	add r0, r0, r5
	lsl r0, r0, #3
	ldr r1, _0802FDAC  @ =gUnknown_0807CB68
	add r5, r0, r1
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FDB4
	ldr r0, _0802FDB0  @ =0x03000DD4
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _0802FDB4
	mov r0, #1
	strh r0, [r4, #56]
	strh r1, [r4, #58]
	b _0802FF24
	.byte 0x00
	.byte 0x00
_0802FDAC:
	.4byte gUnknown_0807CB68
_0802FDB0:
	.4byte 0x03000DD4
_0802FDB4:
	mov r6, #0
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE08
	ldr r0, [r5, #16]
	str r0, [r4]
	ldrb r1, [r5, #12]
	cmp r6, r1
	bge _0802FDDA
	ldr r0, [r5, #16]
	ldr r2, [r0, #12]
_0802FDCE:
	ldrb r0, [r2, #1]
	add r6, r6, r0
	add r2, r2, #36
	sub r1, r1, #1
	cmp r1, #0
	bne _0802FDCE
_0802FDDA:
	ldr r0, [r5, #16]
	ldr r0, [r0, #16]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4, #24]
	str r1, [r4, #28]
	ldrh r1, [r5, #22]
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0802FE08
	mov r1, #0
	ldrb r2, [r4, #27]
	lsl r0, r2, #27
	cmp r0, #0
	blt _0802FDFC
	mov r1, #1
_0802FDFC:
	lsl r1, r1, #4
	mov r0, #17
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #27]
_0802FE08:
	mov r1, #20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0802FE12
	add r6, r0, #0
_0802FE12:
	mov r0, r12
	cmp r0, #0
	beq _0802FE1A
	mov r6, #0
_0802FE1A:
	mov r0, #0
	strh r6, [r4, #56]
	strh r0, [r4, #58]
	ldrh r1, [r5, #8]
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	add r0, r0, r1
	str r0, [r4, #40]
	ldrh r1, [r5, #10]
	lsl r1, r1, #8
	ldr r0, [r4, #44]
	add r0, r0, r1
	str r0, [r4, #44]
	ldrb r0, [r5, #13]
	cmp r0, #0
	beq _0802FE54
	add r2, r0, #0
	add r1, r3, #0
	mul r1, r2, r1
	mov r0, #240
	sub r0, r0, r1
	asr r0, r0, #1
	add r1, r7, #0
	mul r1, r2, r1
	add r1, r0, r1
	mov r2, #4
	ldrsh r0, [r5, r2]
	add r1, r1, r0
	b _0802FE58
_0802FE54:
	mov r3, #4
	ldrsh r1, [r5, r3]
_0802FE58:
	lsl r1, r1, #8
	ldr r0, [r4, #40]
	sub r2, r1, r0
	mov r3, #30
	ldrsh r1, [r5, r3]
	asr r2, r2, r1
	add r0, r0, r2
	str r0, [r4, #32]
	cmp r6, #0
	beq _0802FE84
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FE84
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #48]
	b _0802FE8C
_0802FE84:
	mov r0, #0
	str r0, [r4, #48]
	ldr r0, [r4, #32]
	str r0, [r4, #40]
_0802FE8C:
	mov r1, #6
	ldrsh r0, [r5, r1]
	lsl r0, r0, #8
	str r0, [r4, #36]
	ldr r1, [r4, #44]
	sub r2, r0, r1
	cmp r6, #0
	beq _0802FEB4
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEB4
	add r0, r2, #0
	add r1, r6, #0
	bl __divsi3
	str r0, [r4, #52]
	b _0802FEBC
_0802FEB4:
	mov r0, #0
	str r0, [r4, #52]
	ldr r0, [r4, #36]
	str r0, [r4, #44]
_0802FEBC:
	mov r2, #0
	strh r2, [r4, #10]
	ldr r0, [r4]
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	strh r0, [r4, #8]
	ldr r0, [r5, #24]
	str r0, [r4, #68]
	str r5, [r4, #20]
	strh r2, [r4, #14]
	ldrh r1, [r5, #22]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	bne _0802FEDE
	mov r0, #1
	strh r0, [r4, #14]
_0802FEDE:
	ldr r1, [r5]
	ldr r0, _0802FF2C  @ =0x0000FFFF
	cmp r1, r0
	beq _0802FEFA
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	add r0, r1, #0
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0802FEFA:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #4
	and r0, r0, r1
	cmp r0, #0
	beq _0802FF24
	add r5, r4, #0
	add r5, r5, #66
	mov r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, [r4, #40]
	asr r1, r1, #8
	ldr r2, [r4, #44]
	asr r2, r2, #8
	bl sub_08031A64
	mov r3, #0
	ldrsh r0, [r5, r3]
	mov r1, #0
	bl sub_0802FC24
_0802FF24:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_0802FF2C:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_0802FCDC

	THUMB_FUNC_START sub_0802FF30
sub_0802FF30: @ 0x0802FF30
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	mov r0, #53
	mov r8, r0
	ldr r0, _0802FF84  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	ldr r6, _0802FF88  @ =0x03001BC8
	cmp r0, #1
	bne _0802FF54
	ldrb r0, [r6]
	cmp r0, #6
	bne _0802FF54
	mov r2, #21
	mov r8, r2
_0802FF54:
	ldr r1, _0802FF8C  @ =0x030001CC
	mov r0, #0
	str r0, [r1]
	mov r5, #0
	ldr r7, _0802FF90  @ =0x030001E0
	ldr r4, _0802FF94  @ =0x030001D0
	ldr r3, _0802FF98  @ =gUnknown_03001A30
	add r2, r1, #0
_0802FF64:
	add r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802FF72
	ldr r0, [r2]
	add r0, r0, #1
	str r0, [r2]
_0802FF72:
	add r5, r5, #1
	cmp r5, #2
	ble _0802FF64
	ldr r0, [r1]
	cmp r0, #3
	bne _0802FF9C
	mov r0, #1
	b _0802FF9E
	.byte 0x00
	.byte 0x00
_0802FF84:
	.4byte gUnknown_03000B80
_0802FF88:
	.4byte 0x03001BC8
_0802FF8C:
	.4byte 0x030001CC
_0802FF90:
	.4byte 0x030001E0
_0802FF94:
	.4byte 0x030001D0
_0802FF98:
	.4byte gUnknown_03001A30
_0802FF9C:
	mov r0, #0
_0802FF9E:
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r7]
	mov r5, #0
	ldrb r3, [r6]
	cmp r5, r3
	bge _08030036
	ldr r0, _0802FFE4  @ =0x030001D8
	mov r9, r0
	mov r7, #0
_0802FFB2:
	ldr r0, _0802FFE8  @ =0x030001E0
	ldr r0, [r0]
	add r0, r5, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	mov r3, r8
	cmp r3, #21
	bne _0802FFF0
	mov r2, #0
	strh r5, [r4, #62]
	add r1, r4, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r5, #5
	bne _0802FFF8
	ldr r0, _0802FFEC  @ =0x00001388
	strh r0, [r1]
	b _0802FFF8
	.byte 0x00
	.byte 0x00
_0802FFE4:
	.4byte 0x030001D8
_0802FFE8:
	.4byte 0x030001E0
_0802FFEC:
	.4byte 0x00001388
_0802FFF0:
	mvn r0, r5
	ldrb r6, [r6]
	add r0, r0, r6
	strh r0, [r4, #62]
_0802FFF8:
	ldr r6, _0803004C  @ =0x03001BC8
	ldrb r3, [r6]
	add r0, r4, #0
	mov r1, r8
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	mov r0, r8
	cmp r0, #21
	bne _08030014
	ldrh r0, [r4, #56]
	add r0, r0, r7
	strh r0, [r4, #56]
_08030014:
	ldr r2, [r4, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r4, #26]
	ldr r3, _08030050  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	add r7, r7, #20
	add r5, r5, #1
	ldrb r0, [r6]
	cmp r5, r0
	blt _0802FFB2
_08030036:
	ldr r2, _08030054  @ =0x030001D0
	ldrb r1, [r6]
	ldr r0, [r2]
	add r0, r0, r1
	str r0, [r2]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
_0803004C:
	.4byte 0x03001BC8
_08030050:
	.4byte 0xFFFFFE00
_08030054:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_0802FF30

	THUMB_FUNC_START sub_08030058
sub_08030058: @ 0x08030058
	push {r4,lr}
	add r2, r0, #0
	ldr r3, _080300BC  @ =0x030001D8
	ldr r4, _080300C0  @ =0x030001D0
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r3]
	add r0, r0, r1
	mov r1, #0
	strh r1, [r0, #62]
	str r1, [r0, #52]
	str r1, [r0, #48]
	strh r1, [r0, #56]
	strh r1, [r0, #58]
	str r2, [r0, #68]
	lsl r1, r2, #2
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r2, _080300C4  @ =gUnknown_0807CB68
	add r1, r1, r2
	str r1, [r0, #20]
	ldrb r1, [r0, #27]
	mov r2, #16
	orr r1, r1, r2
	strb r1, [r0, #27]
	ldr r2, [r0, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r0, #26]
	ldr r1, _080300C8  @ =0xFFFFFE00
	and r1, r1, r3
	orr r1, r1, r2
	strh r1, [r0, #26]
	ldr r1, [r0, #44]
	asr r1, r1, #8
	strb r1, [r0, #24]
	mov r2, #1
	neg r2, r2
	mov r1, #31
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
_080300BC:
	.4byte 0x030001D8
_080300C0:
	.4byte 0x030001D0
_080300C4:
	.4byte gUnknown_0807CB68
_080300C8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030058

	THUMB_FUNC_START sub_080300CC
sub_080300CC: @ 0x080300CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r10, r0
	ldr r0, _080301A4  @ =0x03000DF8
	mov r6, #0
	ldrsb r6, [r0, r6]
	ldr r0, _080301A8  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	beq _080300EE
	b _08030250
_080300EE:
	ldr r0, _080301AC  @ =gUnknown_03000B80
	mov r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _08030108
	asr r6, r6, #1
	ldr r0, _080301B0  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030108
	mov r6, #7
_08030108:
	mov r3, #0
	ldr r0, _080301B4  @ =0x030001D0
	ldr r2, [r0]
	cmp r3, r2
	blt _08030114
	b _08030250
_08030114:
	ldr r0, _080301B8  @ =0x030001D8
	ldr r4, [r0]
	ldr r1, [r4, #20]
	mov r9, r0
	ldr r5, _080301BC  @ =gUnknown_0807D270
	cmp r1, r5
	beq _0803015A
	add r4, r5, #0
	add r4, r4, #40
	cmp r1, r4
	beq _0803015A
	add r0, r5, #0
	add r0, r0, #80
	cmp r1, r0
	beq _0803015A
	add r1, r2, #0
	mov r8, r9
	mov r2, #0
	mov r12, r4
	add r7, r0, #0
_0803013C:
	add r2, r2, #72
	add r3, r3, #1
	cmp r3, r1
	blt _08030146
	b _08030250
_08030146:
	mov r4, r8
	ldr r0, [r4]
	add r4, r0, r2
	ldr r0, [r4, #20]
	cmp r0, r5
	beq _0803015A
	cmp r0, r12
	beq _0803015A
	cmp r0, r7
	bne _0803013C
_0803015A:
	ldr r1, _080301B4  @ =0x030001D0
	ldr r0, [r1]
	cmp r3, r0
	bge _08030250
	lsl r0, r3, #3
	add r0, r0, r3
	lsl r0, r0, #3
	mov r2, r9
	ldr r1, [r2]
	add r4, r1, r0
	ldr r1, _080301AC  @ =gUnknown_03000B80
	ldrb r0, [r1]
	ldr r1, _080301C0  @ =0x03000DD0
	ldrb r1, [r1]
	lsl r2, r6, #24
	lsr r2, r2, #24
	bl sub_0800FCE4
	lsl r0, r0, #24
	cmp r0, #0
	bne _080301CC
	mov r2, r10
	cmp r2, #0
	beq _0803023A
	ldr r1, [r4, #20]
	ldr r0, _080301C4  @ =gUnknown_0807D298
	cmp r1, r0
	beq _0803019A
	ldr r0, _080301C8  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
_0803019A:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #42
	b _08030224
_080301A4:
	.4byte 0x03000DF8
_080301A8:
	.4byte gUnknown_03000BB4
_080301AC:
	.4byte gUnknown_03000B80
_080301B0:
	.4byte gUnknown_03000B90
_080301B4:
	.4byte 0x030001D0
_080301B8:
	.4byte 0x030001D8
_080301BC:
	.4byte gUnknown_0807D270
_080301C0:
	.4byte 0x03000DD0
_080301C4:
	.4byte gUnknown_0807D298
_080301C8:
	.4byte 0x030001D4
_080301CC:
	mov r0, r10
	cmp r0, #0
	beq _0803022C
	ldr r1, [r4, #20]
	ldr r0, _08030200  @ =gUnknown_0807D298
	cmp r1, r0
	beq _080301E0
	add r0, r0, #40
	cmp r1, r0
	bne _08030204
_080301E0:
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #233
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #43
	b _08030224
_08030200:
	.4byte gUnknown_0807D298
_08030204:
	ldr r0, _08030218  @ =0x030001D4
	ldrb r0, [r0]
	cmp r6, r0
	bge _0803021C
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #47
	b _08030224
	.byte 0x00
	.byte 0x00
_08030218:
	.4byte 0x030001D4
_0803021C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #46
_08030224:
	mov r2, #0
	bl sub_0802FCDC
	b _0803023A
_0803022C:
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r1, #44
	mov r2, #0
	bl sub_0802FCDC
_0803023A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030260  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
_08030250:
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030260:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080300CC

	THUMB_FUNC_START sub_08030264
sub_08030264: @ 0x08030264
	push {r4,r5,lr}
	ldr r0, _080302E0  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #3
	and r0, r0, r1
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E4  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080302D8
	ldr r0, _080302E8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	sub r0, r0, #2
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #1
	bls _080302D8
	mov r1, #0
	ldr r2, _080302EC  @ =gUnknown_03001A30
_08030290:
	add r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080302D8
	add r1, r1, #1
	cmp r1, #2
	ble _08030290
	ldr r2, _080302F0  @ =0x030001D8
	ldr r5, _080302F4  @ =0x030001D0
	ldr r1, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	ldr r4, [r2]
	add r4, r4, r0
	mov r2, #1
	neg r2, r2
	add r0, r4, #0
	mov r1, #48
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _080302F8  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r0, r0, #8
	strb r0, [r4, #24]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_080302D8:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080302E0:
	.4byte gUnknown_03000B90
_080302E4:
	.4byte gUnknown_03000BB4
_080302E8:
	.4byte gUnknown_03000B80
_080302EC:
	.4byte gUnknown_03001A30
_080302F0:
	.4byte 0x030001D8
_080302F4:
	.4byte 0x030001D0
_080302F8:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030264

	THUMB_FUNC_START sub_080302FC
sub_080302FC: @ 0x080302FC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	ldr r0, _08030384  @ =0x03000DF8
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r8, r0
	ldr r0, _08030388  @ =gUnknown_03000BB4
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #0
	bne _080303FA
	ldr r5, _0803038C  @ =gUnknown_03000B80
	ldrb r0, [r5]
	cmp r0, #1
	bhi _080303FA
	ldr r4, _08030390  @ =0x030001D4
	ldr r1, _08030394  @ =0x03000DD0
	ldrb r1, [r1]
	bl sub_0800F76C
	strb r0, [r4]
	mov r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _0803034C
	mov r0, r8
	asr r0, r0, #1
	mov r8, r0
	ldr r0, _08030398  @ =gUnknown_03000B90
	ldr r0, [r0, #32]
	mov r1, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803034C
	mov r2, #7
	mov r8, r2
_0803034C:
	ldr r0, _0803038C  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	mov r6, #7
	cmp r0, #0
	bne _0803035C
	mov r6, #8
_0803035C:
	mov r5, #0
	cmp r5, r6
	bge _080303FA
	ldr r0, _0803039C  @ =0x030001D8
	mov r9, r0
	ldr r7, _080303A0  @ =0x030001D0
_08030368:
	ldr r0, [r7]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r4, r0, r1
	strh r5, [r4, #62]
	cmp r5, r8
	bne _080303A4
	add r0, r4, #0
	mov r1, #45
	b _080303C6
	.byte 0x00
	.byte 0x00
_08030384:
	.4byte 0x03000DF8
_08030388:
	.4byte gUnknown_03000BB4
_0803038C:
	.4byte gUnknown_03000B80
_08030390:
	.4byte 0x030001D4
_08030394:
	.4byte 0x03000DD0
_08030398:
	.4byte gUnknown_03000B90
_0803039C:
	.4byte 0x030001D8
_080303A0:
	.4byte 0x030001D0
_080303A4:
	ldr r0, _080303D4  @ =0x030001D4
	ldrb r0, [r0]
	cmp r5, r0
	bge _080303FA
	ldr r0, _080303D8  @ =gUnknown_03000B80
	ldrb r0, [r0]
	ldr r1, _080303DC  @ =0x03000DD0
	ldrb r1, [r1]
	lsl r2, r5, #24
	lsr r2, r2, #24
	bl sub_0800FCE4
	lsl r0, r0, #24
	cmp r0, #0
	beq _080303E0
	add r0, r4, #0
	mov r1, #41
_080303C6:
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
	b _080303EE
	.byte 0x00
	.byte 0x00
_080303D4:
	.4byte 0x030001D4
_080303D8:
	.4byte gUnknown_03000B80
_080303DC:
	.4byte 0x03000DD0
_080303E0:
	add r0, r4, #0
	mov r1, #42
	mov r2, #1
	neg r2, r2
	add r3, r6, #0
	bl sub_0802FCDC
_080303EE:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	add r5, r5, #1
	cmp r5, r6
	blt _08030368
_080303FA:
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080302FC

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030408
sub_08030408: @ 0x08030408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	add r7, r0, #0
	ldr r6, _08030464  @ =0x030001D0
	mov r4, #0
	str r4, [r6]
	ldr r0, _08030468  @ =0x030001DC
	str r4, [r0]
	ldr r5, _0803046C  @ =0x030001D8
	mov r0, #135
	lsl r0, r0, #4
	bl sub_08034854
	add r1, r0, #0
	str r1, [r5]
	mov r0, sp
	strh r4, [r0]
	ldr r2, _08030470  @ =0x01000438
	bl CpuSet
	ldr r1, [r6]
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r1, r0, r2
	str r4, [r1, #32]
	mov r0, #128
	lsl r0, r0, #3
	str r0, [r1, #36]
	cmp r7, #2
	beq _08030474
	cmp r7, #2
	ble _08030458
	cmp r7, #3
	beq _08030484
_08030458:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #34
	b _0803047C
	.byte 0x00
	.byte 0x00
_08030464:
	.4byte 0x030001D0
_08030468:
	.4byte 0x030001DC
_0803046C:
	.4byte 0x030001D8
_08030470:
	.4byte 0x01000438
_08030474:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #35
_0803047C:
	mov r3, #0
	bl sub_0802FCDC
	b _08030492
_08030484:
	mov r2, #1
	neg r2, r2
	add r0, r1, #0
	mov r1, #36
	mov r3, #0
	bl sub_0802FCDC
_08030492:
	ldr r0, _080304E8  @ =0x030001D0
	mov r8, r0
	ldr r0, [r0]
	lsl r2, r0, #3
	add r2, r2, r0
	lsl r2, r2, #3
	ldr r1, _080304EC  @ =0x030001D8
	mov r9, r1
	ldr r0, [r1]
	add r2, r2, r0
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _080304F0  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r0, _080304F4  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	bl sub_080302FC
	bl sub_08030264
	cmp r7, #1
	bhi _080305CC
	cmp r7, #0
	bne _08030500
	ldr r1, _080304F8  @ =0x03001BC8
	ldr r0, _080304FC  @ =0x03000DF4
	ldrb r0, [r0]
	add r0, r0, #1
	b _08030504
	.byte 0x00
	.byte 0x00
_080304E8:
	.4byte 0x030001D0
_080304EC:
	.4byte 0x030001D8
_080304F0:
	.4byte 0x000001FF
_080304F4:
	.4byte 0xFFFFFE00
_080304F8:
	.4byte 0x03001BC8
_080304FC:
	.4byte 0x03000DF4
_08030500:
	ldr r1, _0803054C  @ =0x03001BC8
	mov r0, #0
_08030504:
	strb r0, [r1]
	mov r0, #31
	mov r1, #19
	bl sub_08030058
	ldr r0, _08030550  @ =gUnknown_03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #1
	bne _08030560
	ldr r3, _0803054C  @ =0x03001BC8
	ldrb r0, [r3]
	cmp r0, #6
	bne _08030560
	ldr r0, _08030554  @ =0x030001D0
	ldr r2, [r0]
	ldr r0, _08030558  @ =0x030001D8
	ldr r0, [r0]
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r3]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #30
	strh r0, [r1, #56]
	ldr r2, _0803055C  @ =0x03000C18
	mov r3, #56
	ldrsh r0, [r1, r3]
	add r0, r0, #100
	str r0, [r2]
	b _08030566
_0803054C:
	.4byte 0x03001BC8
_08030550:
	.4byte gUnknown_03000B80
_08030554:
	.4byte 0x030001D0
_08030558:
	.4byte 0x030001D8
_0803055C:
	.4byte 0x03000C18
_08030560:
	ldr r1, _080305BC  @ =0x03000C18
	mov r0, #100
	str r0, [r1]
_08030566:
	bl sub_0802FF30
	ldr r4, _080305C0  @ =0x030001D0
	ldr r1, [r4]
	ldr r5, _080305C4  @ =0x030001D8
	ldr r2, [r5]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #3
	add r0, r0, r2
	mov r1, #190
	lsl r1, r1, #7
	str r1, [r0, #32]
	mov r1, #192
	lsl r1, r1, #2
	str r1, [r0, #36]
	mov r2, #1
	neg r2, r2
	mov r1, #37
	mov r3, #0
	bl sub_0802FCDC
	ldr r0, [r4]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r5]
	add r1, r1, r0
	ldr r2, [r1, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r3, [r1, #26]
	ldr r0, _080305C8  @ =0xFFFFFE00
	and r0, r0, r3
	orr r0, r0, r2
	strh r0, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _08030830
_080305BC:
	.4byte 0x03000C18
_080305C0:
	.4byte 0x030001D0
_080305C4:
	.4byte 0x030001D8
_080305C8:
	.4byte 0xFFFFFE00
_080305CC:
	cmp r7, #2
	beq _080305D2
	b _08030750
_080305D2:
	ldr r5, _0803072C  @ =0x03001BC8
	ldr r0, _08030730  @ =0x03001BA0
	ldrb r0, [r0]
	strb r0, [r5]
	mov r0, #32
	mov r1, #19
	bl sub_08030058
	mov r4, r8
	ldr r3, [r4]
	mov r1, r9
	ldr r0, [r1]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	sub r1, r1, #72
	ldrb r2, [r5]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	add r0, r0, #140
	strh r0, [r1, #56]
	ldr r0, _08030734  @ =0x030001E0
	str r3, [r0]
	mov r4, #0
	ldrb r2, [r5]
	cmp r4, r2
	bge _08030670
	add r6, r5, #0
	mov r5, #0
	ldr r3, _08030738  @ =0x00001388
	mov r8, r3
_08030614:
	ldr r0, _0803073C  @ =0x030001D0
	ldr r0, [r0]
	add r0, r4, r0
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	mov r2, r9
	ldr r0, [r2]
	add r7, r0, r1
	strh r4, [r7, #62]
	ldrb r3, [r6]
	add r0, r7, #0
	mov r1, #7
	mov r2, #1
	neg r2, r2
	bl sub_0802FCDC
	ldrh r0, [r7, #56]
	add r0, r0, r5
	strh r0, [r7, #56]
	ldr r2, [r7, #40]
	lsl r2, r2, #15
	lsr r2, r2, #23
	ldrh r0, [r7, #26]
	ldr r3, _08030740  @ =0xFFFFFE00
	add r1, r3, #0
	and r0, r0, r1
	orr r0, r0, r2
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	add r1, r7, #0
	add r1, r1, #66
	mov r0, #250
	lsl r0, r0, #2
	strh r0, [r1]
	cmp r4, #5
	bne _08030666
	mov r0, r8
	strh r0, [r1]
_08030666:
	add r5, r5, #20
	add r4, r4, #1
	ldrb r1, [r6]
	cmp r4, r1
	blt _08030614
_08030670:
	ldr r5, _0803073C  @ =0x030001D0
	ldr r2, _0803072C  @ =0x03001BC8
	mov r8, r2
	ldrb r0, [r2]
	ldr r2, [r5]
	add r2, r2, r0
	str r2, [r5]
	ldr r3, _08030744  @ =0x03000C18
	mov r4, r8
	ldrb r1, [r4]
	lsl r0, r1, #2
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, #240
	str r0, [r3]
	ldr r6, _08030748  @ =0x030001D8
	lsl r1, r2, #3
	add r1, r1, r2
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #1
	neg r1, r1
	mov r9, r1
	mov r1, #38
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r5]
	lsl r2, r1, #3
	add r2, r2, r1
	lsl r2, r2, #3
	ldr r0, [r6]
	add r2, r2, r0
	add r1, r1, #1
	str r1, [r5]
	ldr r1, [r2, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	ldr r3, _0803074C  @ =0x000001FF
	mov r10, r3
	mov r4, r10
	and r1, r1, r4
	ldrh r3, [r2, #26]
	ldr r4, _08030740  @ =0xFFFFFE00
	add r0, r4, #0
	and r0, r0, r3
	orr r0, r0, r1
	strh r0, [r2, #26]
	ldr r0, [r2, #44]
	asr r0, r0, #8
	strb r0, [r2, #24]
	ldr r0, [r5]
	lsl r1, r0, #3
	add r1, r1, r0
	lsl r1, r1, #3
	ldr r0, [r6]
	add r0, r0, r1
	mov r1, #39
	mov r2, r9
	mov r3, #0
	bl sub_0802FCDC
	ldr r3, [r5]
	ldr r0, [r6]
	lsl r1, r3, #3
	add r1, r1, r3
	lsl r1, r1, #3
	add r1, r1, r0
	mov r0, r8
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r0, r2
	lsl r0, r0, #2
	ldrh r2, [r1, #56]
	add r0, r0, r2
	strh r0, [r1, #56]
	add r3, r3, #1
	str r3, [r5]
	ldr r0, [r1, #40]
	lsl r0, r0, #8
	lsr r0, r0, #16
	mov r3, r10
	and r0, r0, r3
	ldrh r2, [r1, #26]
	and r4, r4, r2
	orr r4, r4, r0
	strh r4, [r1, #26]
	ldr r0, [r1, #44]
	asr r0, r0, #8
	strb r0, [r1, #24]
	b _08030830
	.byte 0x00
	.byte 0x00
_0803072C:
	.4byte 0x03001BC8
_08030730:
	.4byte 0x03001BA0
_08030734:
	.4byte 0x030001E0
_08030738:
	.4byte 0x00001388
_0803073C:
	.4byte 0x030001D0
_08030740:
	.4byte 0xFFFFFE00
_08030744:
	.4byte 0x03000C18
_08030748:
	.4byte 0x030001D8
_0803074C:
	.4byte 0x000001FF
_08030750:
	ldr r0, _08030850  @ =gUnknown_080769B0
	ldr r4, [r0]
	ldr r5, [r0, #4]
	mov r0, r8
	ldr r2, [r0]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	ldr r6, _08030854  @ =gUnknown_0807CB68
	lsl r1, r4, #2
	add r1, r1, r4
	lsl r1, r1, #3
	add r1, r1, r6
	mov r2, #4
	ldrsh r0, [r1, r2]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r3, #6
	ldrsh r0, [r1, r3]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r3, r9
	ldr r1, [r3]
	add r7, r1, r0
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	add r1, r5, #0
	lsl r2, r1, #2
	add r2, r2, r5
	lsl r2, r2, #3
	add r2, r2, r6
	mov r3, #4
	ldrsh r0, [r2, r3]
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r7, #32]
	mov r4, #6
	ldrsh r0, [r2, r4]
	lsl r0, r0, #8
	str r0, [r7, #36]
	add r0, r7, #0
	mov r2, #0
	mov r3, #0
	bl sub_0802FCDC
	ldr r1, [r7, #40]
	lsl r1, r1, #8
	lsr r1, r1, #16
	mov r0, r10
	and r1, r1, r0
	ldrh r2, [r7, #26]
	ldr r0, _08030858  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r7, #26]
	ldr r0, [r7, #44]
	asr r0, r0, #8
	strb r0, [r7, #24]
	ldr r3, _0803085C  @ =0x030001DC
	mov r1, r8
	ldr r2, [r1]
	lsl r0, r2, #3
	add r0, r0, r2
	lsl r0, r0, #3
	mov r4, r9
	ldr r1, [r4]
	add r7, r1, r0
	str r7, [r3]
	add r2, r2, #1
	mov r0, r8
	str r2, [r0]
	mov r2, #1
	neg r2, r2
	add r0, r7, #0
	mov r1, #25
	mov r3, #0
	bl sub_0802FCDC
	mov r0, #50
	strh r0, [r7, #56]
_08030830:
	ldr r2, _08030860  @ =gUnknown_03001724
	ldr r1, _08030864  @ =gUnknown_030012F4
	mov r0, #0
	strh r0, [r1]
	strh r0, [r2]
	mov r0, #0
	bl sub_080300CC
	add sp, sp, #4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030850:
	.4byte gUnknown_080769B0
_08030854:
	.4byte gUnknown_0807CB68
_08030858:
	.4byte 0xFFFFFE00
_0803085C:
	.4byte 0x030001DC
_08030860:
	.4byte gUnknown_03001724
_08030864:
	.4byte gUnknown_030012F4
	THUMB_FUNC_END sub_08030408

	THUMB_FUNC_START sub_08030868
sub_08030868: @ 0x08030868
	push {r4-r7,lr}
	add r4, r0, #0
	add r6, r2, #0
	mov r7, #1
	ldr r5, [r4, #20]
	ldrh r1, [r5, #22]
	mov r0, #240
	and r0, r0, r1
	cmp r0, #0
	bne _08030884
	ldrb r1, [r5, #12]
	add r0, r4, #0
	bl sub_080280CC
_08030884:
	ldrh r1, [r5, #22]
	mov r0, #128
	lsl r0, r0, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080308A6
	ldr r0, _080308D8  @ =0x030001DC
	ldr r0, [r0]
	cmp r0, #0
	beq _080308A6
	mov r2, #58
	ldrsh r1, [r0, r2]
	mov r3, #56
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bge _080308A6
	mov r7, #0
_080308A6:
	cmp r6, #0
	bne _080308B4
	ldrh r1, [r5, #22]
	mov r0, #8
	and r0, r0, r1
	cmp r0, #0
	beq _0803090C
_080308B4:
	cmp r7, #0
	beq _0803090C
	ldrh r2, [r4, #58]
	mov r0, #58
	ldrsh r1, [r4, r0]
	mov r3, #56
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _080308DC
	ldr r1, [r4, #68]
	mov r3, #1
	neg r3, r3
	add r0, r4, #0
	mov r2, #0
	bl sub_0802FCDC
	b _080308E0
	.byte 0x00
	.byte 0x00
_080308D8:
	.4byte 0x030001DC
_080308DC:
	add r0, r2, #1
	strh r0, [r4, #58]
_080308E0:
	ldr r0, [r4, #40]
	ldr r1, [r4, #48]
	add r0, r0, r1
	str r0, [r4, #40]
	ldr r1, [r5, #32]
	cmp r1, #0
	beq _08030904
	mov r2, #58
	ldrsh r0, [r4, r2]
	lsl r0, r0, #1
	add r0, r0, r1
	mov r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #36]
	asr r1, r1, r0
	ldr r0, [r4, #44]
	sub r0, r0, r1
	b _0803090A
_08030904:
	ldr r0, [r4, #44]
	ldr r1, [r4, #52]
	add r0, r0, r1
_0803090A:
	str r0, [r4, #44]
_0803090C:
	ldrh r0, [r5, #22]
	mov r1, #240
	and r1, r1, r0
	cmp r1, #0
	beq _0803091A
	cmp r1, #48
	bne _08030950
_0803091A:
	ldr r1, [r4, #40]
	lsl r1, r1, #15
	lsr r1, r1, #23
	ldrh r2, [r4, #26]
	ldr r0, _08030958  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #26]
	ldr r0, [r4, #44]
	asr r3, r0, #8
	strb r3, [r4, #24]
	ldrh r1, [r5, #22]
	mov r0, #4
	and r0, r0, r1
	cmp r0, #0
	bne _08030950
	ldr r0, [r4]
	mov r2, #10
	ldrsh r1, [r4, r2]
	ldr r2, [r0, #12]
	lsl r0, r1, #3
	add r0, r0, r1
	lsl r0, r0, #2
	add r0, r0, r2
	ldrb r0, [r0, #3]
	add r0, r3, r0
	strb r0, [r4, #24]
_08030950:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030958:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_08030868

	THUMB_FUNC_START sub_0803095C
sub_0803095C: @ 0x0803095C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #36
	add r7, r0, #0
	mov r9, r1
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _080309CC  @ =gUnknown_03001724
	mov r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #20]
	ldr r0, _080309D0  @ =gUnknown_030012F4
	mov r5, #0
	ldrsh r3, [r0, r5]
	str r3, [sp, #24]
	mov r1, #10
	ldrsh r0, [r7, r1]
	mov r10, r0
	ldr r2, [r7, #20]
	str r2, [sp, #28]
	ldr r3, [r7]
	mov r8, r3
	ldr r2, [r3, #12]
	ldr r0, [r2, #8]
	cmp r0, #0
	blt _08030998
	b _08030B76
_08030998:
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r1, _080309D4  @ =gOamData
	add r4, r0, r1
	add r6, r2, #0
	ldr r0, [r6, #12]
	ldr r1, [r0, #8]
	lsr r0, r1, #24
	str r0, [sp, #8]
	lsr r0, r1, #16
	lsl r0, r0, #24
	lsr r0, r0, #24
	str r0, [sp, #12]
	ldr r3, [sp, #8]
	add r2, r3, #0
	mul r2, r0, r2
	str r2, [sp, #16]
	mov r0, #64
	and r1, r1, r0
	cmp r1, #0
	beq _080309D8
	lsl r1, r2, #16
	asr r0, r1, #18
	b _080309DE
	.byte 0x00
	.byte 0x00
_080309CC:
	.4byte gUnknown_03001724
_080309D0:
	.4byte gUnknown_030012F4
_080309D4:
	.4byte gOamData
_080309D8:
	ldr r5, [sp, #16]
	lsl r1, r5, #16
	asr r0, r1, #19
_080309DE:
	lsl r0, r0, #16
	lsr r3, r0, #16
	str r1, [sp, #32]
	ldr r2, _08030A64  @ =0x040000D4
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r2]
	str r4, [r2, #4]
	ldr r0, _08030A68  @ =0x84000002
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, [r6, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r5, r0, #2
	add r1, r1, r5
	mov r12, r1
	ldrb r1, [r1]
	lsl r0, r3, #16
	asr r0, r0, #16
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r6, #20]
	add r0, r0, r1
	str r0, [r2]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030A6C  @ =0x06010000
	add r0, r0, r1
	str r0, [r2, #4]
	ldr r3, [sp, #32]
	asr r0, r3, #16
	cmp r0, #0
	bge _08030A26
	add r0, r0, #3
_08030A26:
	asr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, r12
	ldr r1, [r0, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030A46
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030A46:
	ldrb r0, [r7, #27]
	lsl r0, r0, #27
	cmp r0, #0
	bge _08030A70
	ldr r1, [r7, #40]
	asr r1, r1, #8
	mov r3, r8
	ldr r0, [r3, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	ldrb r0, [r0, #2]
	lsl r0, r0, #24
	asr r0, r0, #24
	sub r1, r1, r0
	b _08030A82
_08030A64:
	.4byte 0x040000D4
_08030A68:
	.4byte 0x84000002
_08030A6C:
	.4byte 0x06010000
_08030A70:
	ldr r2, [r7, #40]
	asr r2, r2, #8
	mov r1, r8
	ldr r0, [r1, #12]
	ldr r0, [r0, #12]
	add r0, r5, r0
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r1, r1, r2
_08030A82:
	lsl r1, r1, #23
	lsr r1, r1, #23
	ldrh r2, [r4, #2]
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldr r3, [r7, #44]
	mov r2, r8
	ldr r0, [r2, #12]
	ldr r1, [r0, #12]
	mov r5, r10
	lsl r0, r5, #3
	add r0, r0, r10
	lsl r0, r0, #2
	add r0, r0, r1
	asr r3, r3, #8
	ldrb r0, [r0, #3]
	add r3, r3, r0
	strb r3, [r4]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #1]
	mov r1, #32
	and r1, r1, r0
	ldrb r2, [r4, #1]
	mov r0, #33
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r1, [r6, #16]
	ldrb r1, [r1, #1]
	lsr r1, r1, #6
	lsl r1, r1, #6
	mov r2, #63
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #1]
	ldr r0, [r6, #16]
	ldrb r0, [r0, #3]
	lsr r0, r0, #6
	lsl r0, r0, #6
	ldrb r1, [r4, #3]
	and r2, r2, r1
	orr r2, r2, r0
	strb r2, [r4, #3]
	ldr r0, [r6, #16]
	ldrb r1, [r0, #5]
	lsr r1, r1, #4
	lsl r1, r1, #4
	ldrb r2, [r4, #5]
	mov r0, #15
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	mov r5, r8
	ldrb r0, [r5, #8]
	ldr r5, [sp, #8]
	sub r0, r0, r5
	asr r0, r0, #1
	ldr r5, [sp, #20]
	sub r0, r5, r0
	sub r1, r1, r0
	ldr r5, _08030C68  @ =0x000001FF
	add r0, r5, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	mov r1, r8
	ldrb r0, [r1, #9]
	ldr r2, [sp, #12]
	sub r0, r0, r2
	asr r0, r0, #1
	ldr r5, [sp, #24]
	sub r0, r5, r0
	sub r3, r3, r0
	strb r3, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	ldr r2, [sp, #32]
	asr r0, r2, #21
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r2, [sp, #16]
	add r0, r0, r2
	strh r0, [r1]
_08030B76:
	ldr r3, _08030C74  @ =0x040000D4
	add r0, r7, #0
	add r0, r0, #24
	str r0, [r3]
	mov r5, r9
	ldrh r0, [r5]
	lsl r0, r0, #3
	ldr r4, _08030C78  @ =gOamData
	add r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08030C7C  @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, r8
	ldr r0, [r1, #12]
	mov r5, r10
	lsl r2, r5, #3
	add r2, r2, r10
	lsl r2, r2, #2
	add r2, r2, r0
	ldrb r1, [r2]
	mov r5, r8
	ldrh r0, [r5, #6]
	mul r1, r0, r1
	lsl r1, r1, #2
	ldr r0, [r5, #20]
	add r0, r0, r1
	str r0, [r3]
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldr r1, _08030C80  @ =0x06010000
	add r0, r0, r1
	str r0, [r3, #4]
	ldrh r0, [r5, #2]
	lsr r0, r0, #2
	mov r1, #132
	lsl r1, r1, #24
	orr r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r2, #8]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	beq _08030BD8
	mov r2, r9
	ldrh r0, [r2]
	bl sub_08041154
_08030BD8:
	mov r3, r9
	ldrh r0, [r3]
	lsl r0, r0, #3
	add r4, r0, r4
	ldrh r2, [r4, #2]
	lsl r1, r2, #23
	lsr r1, r1, #23
	ldr r5, [sp, #20]
	sub r1, r1, r5
	ldr r3, _08030C68  @ =0x000001FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C64  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #2]
	ldrb r0, [r4]
	ldr r5, [sp, #24]
	sub r0, r0, r5
	strb r0, [r4]
	ldrh r2, [r4, #4]
	lsl r1, r2, #22
	lsr r1, r1, #22
	ldr r0, [sp]
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r3, _08030C6C  @ =0x000003FF
	add r0, r3, #0
	and r1, r1, r0
	ldr r0, _08030C70  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r4, #4]
	mov r0, #3
	ldr r5, [sp, #28]
	ldrb r1, [r5, #28]
	and r1, r1, r0
	lsl r1, r1, #2
	ldrb r2, [r4, #5]
	mov r0, #13
	neg r0, r0
	and r0, r0, r2
	orr r0, r0, r1
	strb r0, [r4, #5]
	mov r1, r9
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	mov r2, r8
	ldrh r0, [r2, #4]
	ldr r3, [sp]
	ldrh r3, [r3]
	add r0, r0, r3
	ldr r5, [sp]
	strh r0, [r5]
	ldrh r0, [r2, #2]
	ldr r1, [sp, #4]
	ldrh r1, [r1]
	add r0, r0, r1
	ldr r2, [sp, #4]
	strh r0, [r2]
	add sp, sp, #36
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08030C64:
	.4byte 0xFFFFFE00
_08030C68:
	.4byte 0x000001FF
_08030C6C:
	.4byte 0x000003FF
_08030C70:
	.4byte 0xFFFFFC00
_08030C74:
	.4byte 0x040000D4
_08030C78:
	.4byte gOamData
_08030C7C:
	.4byte 0x84000002
_08030C80:
	.4byte 0x06010000
	THUMB_FUNC_END sub_0803095C

	THUMB_FUNC_START sub_08030C84
sub_08030C84: @ 0x08030C84
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #16
	add r7, r0, #0
	mov r9, r1
	mov r8, r2
	ldr r0, _08030CDC  @ =0x03000DDC
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	str r0, [sp, #8]
	mov r0, #0
	mov r10, r0
	ldr r0, _08030CE0  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	bge _08030D82
	mov r1, #0
	str r1, [sp, #12]
_08030CB0:
	ldr r0, _08030CE4  @ =0x030001D8
	ldr r0, [r0]
	ldr r2, [sp, #12]
	add r4, r0, r2
	ldr r6, [r4, #20]
	ldrh r1, [r6, #22]
	mov r2, #240
	and r2, r2, r1
	mov r3, #128
	lsl r3, r3, #5
	add r0, r3, #0
	and r1, r1, r0
	cmp r1, #0
	bne _08030D70
	cmp r2, #16
	beq _08030CE8
	cmp r2, #16
	ble _08030D18
	cmp r2, #32
	beq _08030CFE
	b _08030D18
	.byte 0x00
	.byte 0x00
_08030CDC:
	.4byte 0x03000DDC
_08030CE0:
	.4byte 0x030001D0
_08030CE4:
	.4byte 0x030001D8
_08030CE8:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r2, r8
	str r2, [sp]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A2B8
	b _08030D70
_08030CFE:
	ldr r0, [r4, #40]
	asr r0, r0, #8
	ldr r1, [r4, #44]
	asr r1, r1, #8
	mov r3, r8
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r2, r7, #0
	mov r3, r9
	bl sub_0800A4B4
	b _08030D70
_08030D18:
	ldrh r0, [r7]
	lsl r0, r0, #3
	ldr r1, _08030D5C  @ =gOamData
	add r5, r0, r1
	add r0, r4, #0
	add r1, r7, #0
	mov r2, r9
	mov r3, r8
	bl sub_0803095C
	ldrh r0, [r6, #22]
	mov r2, #128
	lsl r2, r2, #2
	add r1, r2, #0
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldrh r1, [r4, #14]
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _08030D70
	ldr r0, _08030D60  @ =gUnknown_030009D8
	ldrh r1, [r0]
	mov r2, #15
	add r0, r2, #0
	and r0, r0, r1
	cmp r0, #3
	bhi _08030D64
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #128
	b _08030D6C
_08030D5C:
	.4byte gOamData
_08030D60:
	.4byte gUnknown_030009D8
_08030D64:
	ldrb r0, [r5, #5]
	add r1, r2, #0
	and r1, r1, r0
	mov r0, #96
_08030D6C:
	orr r1, r1, r0
	strb r1, [r5, #5]
_08030D70:
	ldr r3, [sp, #12]
	add r3, r3, #72
	str r3, [sp, #12]
	mov r0, #1
	add r10, r10, r0
	ldr r0, _08030D9C  @ =0x030001D0
	ldr r0, [r0]
	cmp r10, r0
	blt _08030CB0
_08030D82:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08030D8C
	bl sub_08009878
_08030D8C:
	add sp, sp, #16
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_08030D9C:
	.4byte 0x030001D0
	THUMB_FUNC_END sub_08030C84

	THUMB_FUNC_START sub_08030DA0
sub_08030DA0: @ 0x08030DA0
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r6, r0, #0
	mov r4, #0
	ldr r1, _08030DDC  @ =0x030001D0
	ldr r0, [r1]
	cmp r4, r0
	bge _08030DD2
	ldr r0, _08030DE0  @ =0x030001D8
	mov r8, r0
	mov r5, #0
	add r7, r1, #0
_08030DBA:
	mov r1, r8
	ldr r0, [r1]
	add r0, r0, r5
	add r1, r4, #0
	add r2, r6, #0
	bl sub_08030868
	add r5, r5, #72
	add r4, r4, #1
	ldr r0, [r7]
	cmp r4, r0
	blt _08030DBA
_08030DD2:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08030DDC:
	.4byte 0x030001D0
_08030DE0:
	.4byte 0x030001D8
	THUMB_FUNC_END sub_08030DA0

	THUMB_FUNC_START sub_08030DE4
sub_08030DE4: @ 0x08030DE4
	bx lr
	THUMB_FUNC_END sub_08030DE4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08030DE8
sub_08030DE8: @ 0x08030DE8
	push {r4,r5,lr}
	ldr r0, _08030E18  @ =0x030001D8
	ldr r2, [r0]
	mov r3, #0
	ldr r0, _08030E1C  @ =0x030001D0
	ldr r0, [r0]
	cmp r3, r0
	bge _08030E28
	add r4, r0, #0
_08030DFA:
	ldr r1, [r2, #68]
	add r0, r1, #0
	sub r0, r0, #51
	cmp r0, #2
	bhi _08030E14
	cmp r1, #51
	bne _08030E20
	mov r0, #58
	ldrsh r1, [r2, r0]
	mov r5, #56
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _08030E20
_08030E14:
	mov r0, #0
	b _08030E2A
_08030E18:
	.4byte 0x030001D8
_08030E1C:
	.4byte 0x030001D0
_08030E20:
	add r3, r3, #1
	add r2, r2, #72
	cmp r3, r4
	blt _08030DFA
_08030E28:
	mov r0, #1
_08030E2A:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08030DE8

	THUMB_FUNC_START sub_08030E30
sub_08030E30: @ 0x08030E30
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #24
	mov r6, #1
	neg r6, r6
	mov r1, #0
	str r1, [sp, #16]
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r2, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r9, r1
	ldr r1, [r0]
	asr r1, r1, #11
	str r1, [sp, #12]
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r10, r0
	cmp r0, #63
	bls _08030E66
	mov r5, #63
	mov r10, r5
_08030E66:
	ldr r0, _08030E74  @ =0x00000FBF
	cmp r9, r0
	bls _08030F20
	add r0, r0, #1
	mov r9, r0
	b _08030F20
	.byte 0x00
	.byte 0x00
_08030E74:
	.4byte 0x00000FBF
_08030E78:
	ldr r1, [sp, #12]
	add r3, r2, r1
	add r5, r2, #0
	add r5, r5, r10
	mov r8, r5
	add r2, r2, #64
	str r2, [sp, #20]
	cmp r3, r8
	bhi _08030F1E
_08030E8A:
	ldr r0, _08030EFC  @ =gUnknown_0807820C
	ldr r4, [r0]
	lsl r1, r3, #1
	ldr r2, _08030F00  @ =0x0000400C
	add r0, r4, r2
	add r0, r0, r1
	ldrh r2, [r0]
	ldr r5, _08030F04  @ =0x0000600C
	add r0, r4, r5
	add r0, r0, r1
	ldrh r5, [r0]
	add r7, r3, #1
	cmp r2, #3
	bne _08030F16
	cmp r5, r6
	beq _08030F16
	lsl r0, r5, #2
	add r0, r0, #8
	add r3, r4, r0
	ldr r0, _08030F08  @ =0x030001E8
	ldr r4, [r0, #28]
	add r2, r4, #0
	add r2, r2, #84
	cmp r4, r2
	bcs _08030F16
	ldr r6, _08030F0C  @ =gUnknown_03000B4C
_08030EBE:
	ldr r1, [r4]
	mov r0, #1
	neg r0, r0
	cmp r1, r0
	bne _08030F10
	ldr r1, [r4, #8]
	ldr r0, [r3]
	lsl r0, r0, #9
	lsr r0, r0, #25
	str r0, [r1]
	ldrb r0, [r3, #3]
	str r0, [r1, #4]
	add r0, r4, #0
	mov r1, #1
	bl sub_080310A8
	mov r0, #1
	str r0, [sp, #16]
	ldr r0, [r6]
	add r0, r0, #100
	str r0, [r6]
	ldr r0, [r4, #8]
	ldr r1, [r0]
	lsl r1, r1, #3
	ldr r2, [r0, #4]
	lsl r2, r2, #3
	mov r0, #100
	bl sub_08031A64
	b _08030F16
	.byte 0x00
	.byte 0x00
_08030EFC:
	.4byte gUnknown_0807820C
_08030F00:
	.4byte 0x0000400C
_08030F04:
	.4byte 0x0000600C
_08030F08:
	.4byte 0x030001E8
_08030F0C:
	.4byte gUnknown_03000B4C
_08030F10:
	add r4, r4, #12
	cmp r4, r2
	bcc _08030EBE
_08030F16:
	add r6, r5, #0
	add r3, r7, #0
	cmp r3, r8
	bls _08030E8A
_08030F1E:
	ldr r2, [sp, #20]
_08030F20:
	cmp r2, r9
	bls _08030E78
	ldr r1, [sp, #16]
	cmp r1, #0
	beq _08030F40
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #130
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_08030F40:
	add sp, sp, #24
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030E30

	THUMB_FUNC_START sub_08030F50
sub_08030F50: @ 0x08030F50
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	ldr r0, _08030F84  @ =gUnknown_03001A38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08030FBE
	ldr r0, _08030F88  @ =0x030001E8
	ldr r4, [r0, #28]
	add r5, r4, #0
	add r5, r5, #84
	cmp r4, r5
	bcs _08030FBE
	mov r6, #1
	neg r6, r6
	add r7, r0, #0
	add r0, r7, #4
	mov r8, r0
_08030F74:
	ldr r3, [r4]
	cmp r3, r6
	beq _08030FB8
	cmp r3, #2
	bne _08030F8C
	str r6, [r4]
	b _08030FB8
	.byte 0x00
	.byte 0x00
_08030F84:
	.4byte gUnknown_03001A38
_08030F88:
	.4byte 0x030001E8
_08030F8C:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08030F96
	sub r0, r0, #1
	b _08030FB6
_08030F96:
	ldr r2, [r4, #8]
	ldr r1, [r2, #8]
	ldr r0, [r7, #24]
	add r1, r1, r0
	str r1, [r2, #8]
	lsl r0, r3, #3
	add r0, r0, r8
	ldr r0, [r0]
	cmp r1, r0
	bne _08030FB4
	add r0, r4, #0
	mov r1, #2
	bl sub_080310A8
	b _08030FB8
_08030FB4:
	ldrb r0, [r1, #12]
_08030FB6:
	strb r0, [r4, #4]
_08030FB8:
	add r4, r4, #12
	cmp r4, r5
	bcc _08030F74
_08030FBE:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08030F50

	THUMB_FUNC_START sub_08030FC8
sub_08030FC8: @ 0x08030FC8
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	mov r0, #84
	bl sub_08034854
	ldr r1, _08031014  @ =0x030001E8
	str r0, [r1, #28]
	mov r8, r1
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08030FE2:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08030FE2
	ldr r0, _08031014  @ =0x030001E8
	str r7, [r0, #32]
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_08031014:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08030FC8

	THUMB_FUNC_START sub_08031018
sub_08031018: @ 0x08031018
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r4, _0803106C  @ =0x030001E8
	ldr r0, [r4, #28]
	cmp r0, #0
	bne _0803105E
	mov r0, #84
	bl sub_08034854
	str r0, [r4, #28]
	mov r8, r4
	mov r1, #0
	mov r6, #0
	mov r5, #6
_08031038:
	mov r0, r8
	ldr r4, [r0, #28]
	add r4, r4, r6
	mov r7, #1
	neg r7, r7
	str r7, [r4]
	str r1, [sp]
	bl sub_0802BA00
	str r0, [r4, #8]
	ldr r1, [sp]
	str r1, [r0, #12]
	str r1, [r0, #8]
	add r6, r6, #12
	sub r5, r5, #1
	cmp r5, #0
	bge _08031038
	ldr r0, _0803106C  @ =0x030001E8
	str r7, [r0, #32]
_0803105E:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803106C:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031018

	THUMB_FUNC_START sub_08031070
sub_08031070: @ 0x08031070
	push {r4,lr}
	add r2, r0, #0
	add r4, r1, #0
	ldr r0, _08031098  @ =0x030001E8
	str r4, [r0, #24]
	add r3, r0, #0
	mov r1, #2
_0803107E:
	str r2, [r3]
	ldrb r0, [r2, #11]
	mul r0, r4, r0
	add r2, r2, r0
	str r2, [r3, #4]
	add r3, r3, #8
	sub r1, r1, #1
	cmp r1, #0
	bge _0803107E
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031098:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_08031070

	THUMB_FUNC_START sub_0803109C
sub_0803109C: @ 0x0803109C
	ldr r1, _080310A4  @ =0x030001E8
	mov r0, #0
	str r0, [r1, #28]
	bx lr
_080310A4:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_0803109C

	THUMB_FUNC_START sub_080310A8
sub_080310A8: @ 0x080310A8
	push {lr}
	add r3, r0, #0
	ldr r0, [r3]
	cmp r0, r1
	beq _080310CA
	str r1, [r3]
	ldr r0, [r3, #8]
	ldr r2, _080310D0  @ =0x030001E8
	lsl r1, r1, #3
	add r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #8]
	ldrb r1, [r1, #12]
	strb r1, [r3, #4]
	ldr r1, [r0, #8]
	bl sub_08001BA4
_080310CA:
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080310D0:
	.4byte 0x030001E8
	THUMB_FUNC_END sub_080310A8

	THUMB_FUNC_START sub_080310D4
sub_080310D4: @ 0x080310D4
	push {r4-r7,lr}
	add r5, r0, #0
	add r7, r1, #0
	ldrb r0, [r5, #11]
	cmp r0, #2
	bhi _08031168
	lsl r0, r0, #5
	ldr r1, _080310F8  @ =0x03000210
	add r6, r0, r1
	ldrb r0, [r5, #4]
	cmp r0, #67
	beq _08031134
	cmp r0, #67
	bgt _080310FC
	cmp r0, #66
	beq _08031102
	b _08031168
	.byte 0x00
	.byte 0x00
_080310F8:
	.4byte 0x03000210
_080310FC:
	cmp r0, #76
	beq _0803114C
	b _08031168
_08031102:
	ldrb r4, [r5, #12]
	cmp r4, #3
	bgt _08031168
	cmp r4, #0
	bne _08031110
	ldrb r0, [r5, #13]
	str r0, [r6, #28]
_08031110:
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	lsl r4, r4, #2
	add r1, r6, r4
	ldrh r0, [r2]
	strh r0, [r1]
	add r5, r5, r7
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	add r0, r6, #2
	add r0, r0, r4
	ldrh r1, [r2]
	strh r1, [r0]
	b _08031168
_08031134:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #16
	b _08031162
_0803114C:
	ldrb r0, [r5, #12]
	cmp r0, #2
	bhi _08031168
	add r0, r5, #0
	bl sub_080064A0
	add r2, r0, #0
	ldrb r0, [r5, #12]
	lsl r0, r0, #1
	add r1, r6, #0
	add r1, r1, #22
_08031162:
	add r1, r1, r0
	ldrh r0, [r2]
	strh r0, [r1]
_08031168:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080310D4

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031170
sub_08031170: @ 0x08031170
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	add r6, r0, #0
	add r7, r1, #0
	mov r8, r2
	ldr r4, _080311F0  @ =0x03000210
	ldr r5, [r4, #108]
	cmp r5, #0
	bne _080311AC
	mov r0, #160
	bl sub_08034854
	add r1, r0, #0
	str r1, [r4, #108]
	str r5, [sp]
	mov r0, sp
	ldr r2, _080311F4  @ =0x05000028
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080311F8  @ =0x0000FFFF
	strh r0, [r1]
	add r0, r4, #0
	add r0, r0, #106
	strh r5, [r0]
_080311AC:
	ldr r1, [r4, #96]
	cmp r1, #39
	bgt _080311E4
	lsl r0, r1, #2
	ldr r2, [r4, #108]
	add r2, r2, r0
	add r0, r1, #1
	str r0, [r4, #96]
	ldrb r0, [r6, #12]
	mov r4, #15
	add r1, r4, #0
	and r1, r1, r0
	ldrb r3, [r2, #3]
	mov r0, #16
	neg r0, r0
	and r0, r0, r3
	orr r0, r0, r1
	strb r0, [r2, #3]
	ldrb r1, [r6, #11]
	lsl r1, r1, #4
	and r0, r0, r4
	orr r0, r0, r1
	strb r0, [r2, #3]
	mov r0, #0
	strb r7, [r2]
	mov r1, r8
	strb r1, [r2, #1]
	strb r0, [r2, #2]
_080311E4:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
_080311F0:
	.4byte 0x03000210
_080311F4:
	.4byte 0x05000028
_080311F8:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031170

	THUMB_FUNC_START sub_080311FC
sub_080311FC: @ 0x080311FC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #28
	mov r9, r0
	add r4, r1, #0
	ldr r0, _080312EC  @ =gUnknown_0807820C
	ldr r0, [r0]
	ldr r1, _080312F0  @ =0x0000400C
	add r1, r0, r1
	str r1, [sp, #24]
	ldr r2, _080312F4  @ =0x0000800C
	add r2, r2, r0
	mov r10, r2
	mov r0, r9
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	lsl r0, r6, #6
	add r0, r0, r7
	str r0, [sp]
	ldr r2, _080312F8  @ =gUnknown_0807DC70
	mov r1, r9
	ldr r5, [r1]
	lsl r3, r5, #4
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r0, r0, r2
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r2, #2
	add r0, r0, r1
	mov r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	lsr r1, r3, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r2, r2, #4
	add r0, r0, r2
	mov r1, #0
	ldrsh r2, [r0, r1]
	str r2, [sp, #12]
	cmp r4, #0
	bne _08031304
	ldr r0, _080312FC  @ =0x03000E60
	ldrh r0, [r0]
	mov r8, r0
	mov r2, #0
	str r2, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r3, r0, #1
	add r3, r3, r10
	ldr r2, _08031300  @ =0x03000210
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r2, r2, #2
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r1, r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	mov r5, #0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080312B4
	b _080313F8
_080312B4:
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080312BC:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	add r5, r5, #1
	ldr r0, [sp, #8]
	add r7, r7, r0
	ldr r1, [sp, #12]
	add r6, r6, r1
	ldr r2, [sp, #4]
	lsl r0, r2, #1
	add r4, r4, r0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	blt _080312BC
	b _080313F8
_080312EC:
	.4byte gUnknown_0807820C
_080312F0:
	.4byte 0x0000400C
_080312F4:
	.4byte 0x0000800C
_080312F8:
	.4byte gUnknown_0807DC70
_080312FC:
	.4byte 0x03000E60
_08031300:
	.4byte 0x03000210
_08031304:
	ldr r1, _08031358  @ =gUnknown_0807DC88
	lsr r0, r3, #28
	add r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r4, #2
	bne _08031360
	ldr r4, _0803135C  @ =0x03000210
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r4, #0
	add r0, r0, #16
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r4
	ldrh r0, [r0, #20]
	str r0, [sp, #20]
	mov r1, #15
	str r1, [sp, #16]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	lsl r2, r0, #1
	add r2, r2, r10
	mov r0, r9
	ldr r1, [r0]
	lsl r0, r1, #4
	lsr r0, r0, #28
	lsl r0, r0, #2
	lsr r1, r1, #28
	lsl r1, r1, #5
	add r0, r0, r1
	add r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2]
	b _08031384
_08031358:
	.4byte gUnknown_0807DC88
_0803135C:
	.4byte 0x03000210
_08031360:
	ldr r2, _080313C4  @ =0x03000210
	mov r0, r8
	lsl r1, r0, #1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r1, r1, r0
	add r0, r2, #0
	add r0, r0, #22
	add r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	lsr r0, r5, #28
	lsl r0, r0, #5
	add r0, r0, r2
	ldrh r0, [r0, #26]
	str r0, [sp, #20]
	mov r1, #0
	str r1, [sp, #16]
_08031384:
	ldr r2, [sp]
	ldr r0, [sp, #4]
	add r2, r2, r0
	str r2, [sp]
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	mov r5, #0
	mov r0, r9
	ldrb r0, [r0, #2]
	cmp r5, r0
	bge _080313F8
	ldr r1, [sp]
	lsl r0, r1, #1
	ldr r2, [sp, #24]
	add r4, r0, r2
_080313A6:
	add r0, r7, #0
	add r1, r6, #0
	bl sub_080064B0
	ldrh r1, [r4]
	cmp r1, #0
	bne _080313C8
	mov r1, sp
	ldrh r1, [r1, #16]
	strh r1, [r4]
	lsl r0, r0, #1
	add r0, r0, r10
	mov r2, r8
	strh r2, [r0]
	b _080313E0
_080313C4:
	.4byte 0x03000210
_080313C8:
	ldr r2, [sp, #16]
	cmp r1, r2
	bne _080313E0
	lsl r0, r0, #1
	mov r1, r10
	add r2, r0, r1
	ldrh r0, [r2]
	cmp r0, r8
	beq _080313E0
	mov r0, sp
	ldrh r0, [r0, #20]
	strh r0, [r2]
_080313E0:
	add r5, r5, #1
	ldr r1, [sp, #8]
	add r7, r7, r1
	ldr r2, [sp, #12]
	add r6, r6, r2
	ldr r1, [sp, #4]
	lsl r0, r1, #1
	add r4, r4, r0
	mov r2, r9
	ldrb r2, [r2, #2]
	cmp r5, r2
	blt _080313A6
_080313F8:
	add sp, sp, #28
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_080311FC

	THUMB_FUNC_START sub_08031408
sub_08031408: @ 0x08031408
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	mov r8, r0
	ldr r0, _080314C4  @ =gUnknown_0807820C
	ldr r0, [r0]
	ldr r1, _080314C8  @ =0x0000400C
	add r1, r1, r0
	mov r10, r1
	ldr r3, _080314CC  @ =gUnknown_0807DC70
	mov r4, r8
	ldr r2, [r4]
	lsl r2, r2, #4
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #2
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r9, r1
	lsr r1, r2, #28
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #1
	add r1, r3, #4
	add r0, r0, r1
	mov r4, #0
	ldrsh r1, [r0, r4]
	mov r12, r1
	mov r0, r8
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	lsl r0, r4, #6
	add r1, r0, r5
	ldr r0, _080314D0  @ =gUnknown_03001720
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r7, r0, #19
	ldr r0, _080314D4  @ =gUnknown_0300170C
	ldrh r0, [r0]
	lsl r0, r0, #16
	asr r6, r0, #19
	lsr r2, r2, #28
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #1
	add r0, r0, r3
	mov r3, #0
	ldrsh r2, [r0, r3]
	add r1, r1, r2
	add r5, r5, r9
	add r4, r4, r12
	mov r3, #0
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	bge _080314B2
	lsl r0, r1, #1
	add r0, r0, r10
	lsl r2, r2, #1
_08031490:
	ldrh r1, [r0]
	cmp r1, #0
	beq _0803149A
	cmp r1, #15
	bne _080314B2
_0803149A:
	add r3, r3, #1
	add r5, r5, r9
	add r4, r4, r12
	add r0, r0, r2
	cmp r5, #0
	blt _080314B2
	cmp r5, r7
	bge _080314B2
	cmp r4, #0
	blt _080314B2
	cmp r4, r6
	blt _08031490
_080314B2:
	mov r4, r8
	strb r3, [r4, #2]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
_080314C4:
	.4byte gUnknown_0807820C
_080314C8:
	.4byte 0x0000400C
_080314CC:
	.4byte gUnknown_0807DC70
_080314D0:
	.4byte gUnknown_03001720
_080314D4:
	.4byte gUnknown_0300170C
	THUMB_FUNC_END sub_08031408

	THUMB_FUNC_START sub_080314D8
sub_080314D8: @ 0x080314D8
	push {r4-r7,lr}
	sub sp, sp, #12
	add r5, r0, #0
	mov r7, #0
	mov r2, #0
	ldr r1, _080315A0  @ =0x03000210
	ldr r0, [r1, #108]
	cmp r0, #0
	beq _08031598
	cmp r5, #0
	bge _080314F8
	add r0, r1, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r5, [r0, r3]
	mov r7, #1
_080314F8:
	mov r4, #0
	ldr r0, [r1, #96]
	cmp r2, r0
	bge _08031522
	add r6, r1, #0
_08031502:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _0803151A
	add r0, r1, #0
	mov r1, #2
	bl sub_080311FC
	mov r2, #1
_0803151A:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _08031502
_08031522:
	cmp r2, #0
	beq _0803153C
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #147
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
_0803153C:
	cmp r7, #0
	beq _08031598
	ldr r2, _080315A0  @ =0x03000210
	add r0, r2, #0
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r2, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	ldr r1, [r2, #100]
	cmp r1, r0
	bgt _08031598
	add r6, r3, #0
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031598
	cmp r6, #0
	bge _08031570
	add r0, r2, #0
	add r0, r0, #104
	mov r3, #0
	ldrsh r6, [r0, r3]
_08031570:
	mov r4, #0
	ldr r0, [r2, #96]
	cmp r4, r0
	bge _08031598
	add r5, r2, #0
_0803157A:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r6
	bne _08031590
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_08031590:
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _0803157A
_08031598:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
_080315A0:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080314D8

	THUMB_FUNC_START sub_080315A4
sub_080315A4: @ 0x080315A4
	push {r4-r7,lr}
	ldr r0, _08031608  @ =0x03000210
	ldr r1, [r0, #108]
	add r7, r0, #0
	cmp r1, #0
	beq _08031684
	ldr r2, [r7, #100]
	cmp r2, #0
	ble _0803160C
	sub r2, r2, #1
	str r2, [r7, #100]
	add r0, r0, #106
	mov r1, #0
	ldrsh r3, [r0, r1]
	lsl r0, r3, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	asr r0, r0, #1
	cmp r2, r0
	bne _08031684
	add r5, r3, #0
	cmp r5, #0
	bge _080315DE
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
_080315DE:
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _0803167E
	add r6, r7, #0
_080315E8:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080315FE
	add r0, r1, #0
	mov r1, #1
	bl sub_080311FC
_080315FE:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _080315E8
	b _0803167E
_08031608:
	.4byte 0x03000210
_0803160C:
	add r0, r7, #0
	add r0, r0, #104
	mov r1, #0
	ldrsh r5, [r0, r1]
	mov r4, #0
	ldr r0, [r7, #96]
	cmp r4, r0
	bge _08031640
	add r6, r7, #0
_0803161E:
	lsl r1, r4, #2
	ldr r0, [r6, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _08031630
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _08031638
_08031630:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_08031638:
	add r4, r4, #1
	ldr r0, [r6, #96]
	cmp r4, r0
	blt _0803161E
_08031640:
	add r1, r7, #0
	add r2, r1, #0
	add r2, r2, #106
	ldrh r0, [r2]
	add r3, r1, #0
	add r3, r3, #104
	strh r0, [r3]
	add r0, r0, #1
	strh r0, [r2]
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, #2
	ble _0803165E
	mov r0, #0
	strh r0, [r2]
_0803165E:
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #5
	add r1, r7, #0
	add r1, r1, #28
	add r0, r0, r1
	ldr r0, [r0]
	str r0, [r7, #100]
	cmp r0, #0
	bne _08031676
	mov r0, #60
	str r0, [r7, #100]
_08031676:
	mov r1, #0
	ldrsh r0, [r3, r1]
	bl sub_080314D8
_0803167E:
	ldr r1, _0803168C  @ =gUnknown_030009EC
	mov r0, #1
	strb r0, [r1]
_08031684:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803168C:
	.4byte gUnknown_030009EC
	THUMB_FUNC_END sub_080315A4

	THUMB_FUNC_START sub_08031690
sub_08031690: @ 0x08031690
	push {r4,r5,lr}
	sub sp, sp, #4
	mov r0, #160
	bl sub_08034854
	add r1, r0, #0
	ldr r4, _080316C4  @ =0x03000210
	str r1, [r4, #108]
	mov r5, #0
	str r5, [sp]
	ldr r2, _080316C8  @ =0x05000028
	mov r0, sp
	bl CpuSet
	str r5, [r4, #96]
	str r5, [r4, #100]
	add r1, r4, #0
	add r1, r1, #104
	ldr r0, _080316CC  @ =0x0000FFFF
	strh r0, [r1]
	add r4, r4, #106
	strh r5, [r4]
	add sp, sp, #4
	pop {r4,r5}
	pop {r0}
	bx r0
_080316C4:
	.4byte 0x03000210
_080316C8:
	.4byte 0x05000028
_080316CC:
	.4byte 0x0000FFFF
	THUMB_FUNC_END sub_08031690

	THUMB_FUNC_START sub_080316D0
sub_080316D0: @ 0x080316D0
	push {r4,r5,lr}
	add r5, r0, #0
	ldr r2, _080316E0  @ =0x03000210
	ldr r0, [r2, #108]
	cmp r0, #0
	beq _08031708
	mov r4, #0
	b _08031702
_080316E0:
	.4byte 0x03000210
_080316E4:
	lsl r1, r4, #2
	ldr r0, [r2, #108]
	add r1, r0, r1
	cmp r5, #0
	blt _080316F6
	ldr r0, [r1]
	lsr r0, r0, #28
	cmp r0, r5
	bne _080316FE
_080316F6:
	add r0, r1, #0
	mov r1, #0
	bl sub_080311FC
_080316FE:
	add r4, r4, #1
	ldr r2, _08031710  @ =0x03000210
_08031702:
	ldr r0, [r2, #96]
	cmp r4, r0
	blt _080316E4
_08031708:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031710:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080316D0

	THUMB_FUNC_START sub_08031714
sub_08031714: @ 0x08031714
	push {r4,r5,lr}
	mov r4, #0
	ldr r1, _0803173C  @ =0x03000210
	ldr r0, [r1, #96]
	cmp r4, r0
	bge _08031734
	add r5, r1, #0
_08031722:
	lsl r1, r4, #2
	ldr r0, [r5, #108]
	add r0, r0, r1
	bl sub_08031408
	add r4, r4, #1
	ldr r0, [r5, #96]
	cmp r4, r0
	blt _08031722
_08031734:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803173C:
	.4byte 0x03000210
	THUMB_FUNC_END sub_08031714

	THUMB_FUNC_START sub_08031740
sub_08031740: @ 0x08031740
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	ldr r1, [r0, #4]
	asr r1, r1, #11
	lsl r3, r1, #6
	ldr r1, [r0, #12]
	asr r1, r1, #11
	lsl r1, r1, #6
	mov r12, r1
	ldr r1, [r0]
	asr r1, r1, #11
	mov r10, r1
	ldr r0, [r0, #8]
	asr r0, r0, #11
	mov r8, r0
	cmp r0, #63
	bls _0803176C
	mov r0, #63
	mov r8, r0
_0803176C:
	ldr r0, _0803177C  @ =0x00000FBF
	cmp r12, r0
	bls _080317D6
	mov r5, #252
	lsl r5, r5, #4
	mov r12, r5
	b _080317D6
	.byte 0x00
	.byte 0x00
_0803177C:
	.4byte 0x00000FBF
_08031780:
	mov r0, r10
	add r2, r3, r0
	mov r5, r8
	add r4, r3, r5
	cmp r2, r4
	bhi _080317D4
	ldr r0, _080317B8  @ =gUnknown_0807820C
	ldr r1, [r0]
	ldr r0, _080317BC  @ =0x03001B54
	mov r9, r0
	lsl r0, r2, #1
	ldr r5, _080317C0  @ =0x0000400C
	add r0, r0, r5
	add r1, r0, r1
	ldr r5, _080317C4  @ =gUnknown_03000B90
	mov r6, #2
	mov r7, #1
_080317A2:
	ldrh r0, [r1]
	cmp r0, #15
	bne _080317CC
	ldr r0, [r5, #32]
	and r0, r0, r6
	cmp r0, #0
	beq _080317C8
	mov r0, r9
	strb r7, [r0]
	b _080317DA
	.byte 0x00
	.byte 0x00
_080317B8:
	.4byte gUnknown_0807820C
_080317BC:
	.4byte 0x03001B54
_080317C0:
	.4byte 0x0000400C
_080317C4:
	.4byte gUnknown_03000B90
_080317C8:
	mov r0, #1
	b _080317DC
_080317CC:
	add r1, r1, #2
	add r2, r2, #1
	cmp r2, r4
	bls _080317A2
_080317D4:
	add r3, r3, #64
_080317D6:
	cmp r3, r12
	bls _08031780
_080317DA:
	mov r0, #0
_080317DC:
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031740

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080317EC
sub_080317EC: @ 0x080317EC
	ldr r0, _080317F4  @ =0x03000210
	add r0, r0, #104
	ldrb r0, [r0]
	bx lr
_080317F4:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317EC

	THUMB_FUNC_START sub_080317F8
sub_080317F8: @ 0x080317F8
	ldr r1, _08031800  @ =0x03000210
	mov r0, #0
	str r0, [r1, #108]
	bx lr
_08031800:
	.4byte 0x03000210
	THUMB_FUNC_END sub_080317F8

	THUMB_FUNC_START sub_08031804
sub_08031804: @ 0x08031804
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #20
	mov r9, r0
	str r2, [sp]
	ldr r0, _0803185C  @ =gUnknown_0807DC8C
	ldr r2, [r0]
	lsl r1, r1, #1
	add r0, r2, #0
	add r0, r0, #28
	add r0, r0, r1
	ldrh r0, [r0]
	cmp r0, #0
	bne _08031828
	b _08031934
_08031828:
	add r2, r2, r0
	str r2, [sp, #4]
	ldr r0, [sp]
	lsl r2, r0, #2
	mov r3, r9
	add r3, r3, #80
	add r1, r3, r2
	mov r4, r9
	ldrh r0, [r4, #44]
	lsl r0, r0, #6
	ldr r1, [r1]
	add r0, r0, r1
	mov r8, r0
	ldr r1, [sp, #4]
	ldrh r0, [r1]
	ldrh r7, [r1, #2]
	add r4, r1, #0
	add r4, r4, #4
	str r2, [sp, #12]
	str r3, [sp, #8]
	cmp r0, #0
	bne _08031860
	mov r2, #64
	add r2, r2, r9
	mov r10, r2
	b _080318A2
_0803185C:
	.4byte gUnknown_0807DC8C
_08031860:
	add r6, r4, r0
	mov r0, r8
	cmp r0, #0
	bne _08031872
	add r4, r6, #0
	mov r1, #64
	add r1, r1, r9
	mov r10, r1
	b _080318A2
_08031872:
	mov r2, #64
	add r2, r2, r9
	mov r10, r2
	cmp r4, r6
	bcs _080318A0
_0803187C:
	ldrh r5, [r4]
	mul r5, r7, r5
	add r4, r4, #2
	ldrh r0, [r4]
	add r4, r4, #2
	mul r0, r7, r0
	cmp r5, #0
	beq _0803189A
	mov r2, r8
	add r1, r2, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	bl CpuSet
_0803189A:
	add r4, r4, r5
	cmp r4, r6
	bcc _0803187C
_080318A0:
	add r4, r6, #0
_080318A2:
	mov r1, #0
_080318A4:
	lsl r0, r1, #2
	add r0, r0, r10
	ldr r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	ldrh r3, [r4, #2]
	add r4, r4, #4
	cmp r0, #0
	bne _080318BA
	add r7, r1, #1
	b _080318F8
_080318BA:
	add r6, r4, r0
	mov r0, r8
	cmp r0, #0
	bne _080318C8
	add r4, r6, #0
	add r7, r1, #1
	b _080318F8
_080318C8:
	add r7, r1, #1
	cmp r4, r6
	bcs _080318F6
_080318CE:
	ldrh r5, [r4]
	mul r5, r3, r5
	add r4, r4, #2
	ldrh r0, [r4]
	add r4, r4, #2
	mul r0, r3, r0
	cmp r5, #0
	beq _080318F0
	mov r2, r8
	add r1, r2, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	str r3, [sp, #16]
	bl CpuSet
	ldr r3, [sp, #16]
_080318F0:
	add r4, r4, r5
	cmp r4, r6
	bcc _080318CE
_080318F6:
	add r4, r6, #0
_080318F8:
	add r1, r7, #0
	cmp r1, #3
	bls _080318A4
	ldrh r0, [r4]
	cmp r0, #0
	beq _08031934
	mov r3, #64
	ldr r0, [sp]
	lsl r1, r0, #1
	mov r0, r9
	add r0, r0, #56
	add r0, r0, r1
	ldrh r1, [r0]
	mov r0, #128
	and r0, r0, r1
	cmp r0, #0
	bne _0803191C
	mov r3, #32
_0803191C:
	add r0, r4, #4
	ldr r1, [sp, #8]
	ldr r4, [sp, #12]
	add r2, r1, r4
	mov r4, r9
	ldrh r1, [r4, #44]
	lsl r1, r1, #6
	ldr r2, [r2]
	add r2, r2, r1
	ldr r1, [sp, #4]
	bl sub_0801B430
_08031934:
	add sp, sp, #20
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031804

	THUMB_FUNC_START sub_08031944
sub_08031944: @ 0x08031944
	push {lr}
	add r2, r0, #0
	ldr r0, _08031954  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031958
	mov r0, #0
	b _08031972
_08031954:
	.4byte 0x03000280
_08031958:
	cmp r2, #0
	beq _08031970
	ldr r0, _0803196C  @ =gUnknown_0807DC8C
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bne _08031970
	mov r0, #2
	b _08031972
_0803196C:
	.4byte gUnknown_0807DC8C
_08031970:
	mov r0, #1
_08031972:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031944

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031978
sub_08031978: @ 0x08031978
	push {r4,r5,lr}
	add r5, r0, #0
	cmp r5, #0
	bne _0803198C
	ldr r0, _08031988  @ =0x03000280
	str r5, [r0]
	b _080319AC
	.byte 0x00
	.byte 0x00
_08031988:
	.4byte 0x03000280
_0803198C:
	ldr r1, _080319B4  @ =0x03000280
	mov r0, #1
	str r0, [r1]
	ldr r4, _080319B8  @ =gUnknown_0807DC8C
	ldr r1, [r4]
	add r0, r5, #0
	mov r2, #20
	bl CpuSet
	add r0, r5, #0
	add r0, r0, #40
	ldr r1, [r4]
	add r1, r1, #40
	mov r2, #0
	bl sub_08034790
_080319AC:
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080319B4:
	.4byte 0x03000280
_080319B8:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_08031978

	THUMB_FUNC_START sub_080319BC
sub_080319BC: @ 0x080319BC
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _08031A30  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	beq _08031A28
	ldr r5, _08031A34  @ =gUnknown_0807DC8C
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	cmp r2, r0
	bne _08031A28
	add r0, r3, #0
	mov r1, #0
	mov r2, #1
	bl sub_08031804
	ldr r0, [r4]
	ldrb r1, [r4, #11]
	mov r2, #2
	bl sub_08031804
	ldr r0, [r5]
	ldrh r1, [r0, #38]
	cmp r1, #0
	beq _08031A28
	add r0, r0, r1
	ldrh r1, [r0]
	ldrh r6, [r0, #2]
	add r4, r0, #4
	cmp r1, #0
	beq _08031A28
	add r7, r4, r1
	cmp r4, r7
	bcs _08031A28
_08031A02:
	ldrh r5, [r4]
	mul r5, r6, r5
	add r4, r4, #2
	ldrh r1, [r4]
	add r4, r4, #2
	mul r1, r6, r1
	cmp r5, #0
	beq _08031A22
	mov r0, #160
	lsl r0, r0, #19
	add r1, r1, r0
	lsl r2, r5, #10
	lsr r2, r2, #11
	add r0, r4, #0
	bl CpuSet
_08031A22:
	add r4, r4, r5
	cmp r4, r7
	bcc _08031A02
_08031A28:
	pop {r4-r7}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031A30:
	.4byte 0x03000280
_08031A34:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_080319BC

	THUMB_FUNC_START sub_08031A38
sub_08031A38: @ 0x08031A38
	push {lr}
	cmp r0, #0
	bne _08031A58
	ldr r0, _08031A4C  @ =0x03000280
	ldr r0, [r0]
	cmp r0, #0
	bne _08031A54
	ldr r0, _08031A50  @ =gUnknown_080769B8
	b _08031A5A
	.byte 0x00
	.byte 0x00
_08031A4C:
	.4byte 0x03000280
_08031A50:
	.4byte gUnknown_080769B8
_08031A54:
	ldr r0, _08031A60  @ =gUnknown_0807DC8C
	ldr r0, [r0]
_08031A58:
	add r0, r0, #12
_08031A5A:
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08031A60:
	.4byte gUnknown_0807DC8C
	THUMB_FUNC_END sub_08031A38

	THUMB_FUNC_START sub_08031A64
sub_08031A64: @ 0x08031A64
	push {r4-r7,lr}
	add r3, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r3, #0
	ble _08031ACC
	mov r2, #0
	ldr r5, _08031AC0  @ =0x03000284
	mov r1, #0
_08031A76:
	ldr r0, [r5]
	add r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031AC4
	add r5, r4, #2
	add r0, r5, #0
	add r1, r3, #0
	bl sub_0802FB18
	mov r1, #5
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _08031AA2
	add r2, r5, #0
_08031A94:
	sub r1, r1, #1
	cmp r1, #0
	ble _08031AA2
	add r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031A94
_08031AA2:
	strb r1, [r4, #1]
	mov r0, #40
	strb r0, [r4]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	lsl r1, r0, #1
	add r1, r1, r0
	lsl r1, r1, #1
	mov r0, #16
	sub r0, r0, r1
	asr r0, r0, #1
	add r0, r6, r0
	strh r0, [r4, #8]
	strh r7, [r4, #10]
	b _08031ACC
_08031AC0:
	.4byte 0x03000284
_08031AC4:
	add r1, r1, #12
	add r2, r2, #1
	cmp r2, #5
	ble _08031A76
_08031ACC:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031A64

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031AD4
sub_08031AD4: @ 0x08031AD4
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #4
	mov r9, r0
	mov r2, #0
_08031AE4:
	lsl r0, r2, #1
	add r0, r0, r2
	lsl r0, r0, #2
	ldr r3, _08031BBC  @ =0x03000284
	ldr r1, [r3]
	add r6, r1, r0
	ldrb r0, [r6]
	add r2, r2, #1
	str r2, [sp]
	cmp r0, #0
	beq _08031BA4
	mov r0, #8
	ldrsh r1, [r6, r0]
	ldr r0, _08031BC0  @ =gUnknown_03001724
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r10, r1
	mov r3, #10
	ldrsh r1, [r6, r3]
	ldr r0, _08031BC4  @ =gUnknown_030012F4
	mov r2, #0
	ldrsh r0, [r0, r2]
	sub r1, r1, r0
	mov r12, r1
	ldrb r1, [r6, #1]
	add r0, r1, #2
	add r7, r6, r0
	mov r0, #64
	neg r0, r0
	cmp r12, r0
	blt _08031BA4
	mov r3, r12
	cmp r3, #160
	bgt _08031BA4
	mov r5, #0
	cmp r5, r1
	bgt _08031BA4
	ldr r0, _08031BC8  @ =0x040000D4
	mov r8, r0
_08031B34:
	ldrb r4, [r7]
	mov r1, r9
	ldrh r3, [r1]
	lsl r3, r3, #3
	ldr r2, _08031BCC  @ =gOamData
	add r3, r3, r2
	ldr r0, _08031BD0  @ =gUnknown_082EC748
	mov r1, r8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08031BD4  @ =0x84000002
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08031BD8  @ =gUnknown_0807DC90
	add r0, r4, r2
	ldrb r0, [r0]
	add r1, r5, #0
	mul r1, r0, r1
	add r1, r1, r10
	ldr r2, _08031BDC  @ =0x000001FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08031BE0  @ =0xFFFFFE00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #2]
	mov r0, r12
	strb r0, [r3]
	lsl r4, r4, #1
	ldr r2, _08031BE4  @ =gUnknown_03001B30
	ldr r1, [r2, #4]
	add r1, r1, r4
	ldr r2, _08031BE8  @ =0x000003FF
	add r0, r2, #0
	and r1, r1, r0
	ldrh r2, [r3, #4]
	ldr r0, _08031BEC  @ =0xFFFFFC00
	and r0, r0, r2
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	mov r0, #15
	and r0, r0, r1
	mov r1, #96
	orr r0, r0, r1
	strb r0, [r3, #5]
	mov r3, r9
	ldrh r0, [r3]
	add r0, r0, #1
	strh r0, [r3]
	add r5, r5, #1
	sub r7, r7, #1
	ldrb r0, [r6, #1]
	cmp r5, r0
	ble _08031B34
_08031BA4:
	ldr r2, [sp]
	cmp r2, #5
	ble _08031AE4
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
_08031BBC:
	.4byte 0x03000284
_08031BC0:
	.4byte gUnknown_03001724
_08031BC4:
	.4byte gUnknown_030012F4
_08031BC8:
	.4byte 0x040000D4
_08031BCC:
	.4byte gOamData
_08031BD0:
	.4byte gUnknown_082EC748
_08031BD4:
	.4byte 0x84000002
_08031BD8:
	.4byte gUnknown_0807DC90
_08031BDC:
	.4byte 0x000001FF
_08031BE0:
	.4byte 0xFFFFFE00
_08031BE4:
	.4byte gUnknown_03001B30
_08031BE8:
	.4byte 0x000003FF
_08031BEC:
	.4byte 0xFFFFFC00
	THUMB_FUNC_END sub_08031AD4

	THUMB_FUNC_START sub_08031BF0
sub_08031BF0: @ 0x08031BF0
	push {lr}
	sub sp, sp, #8
	mov r0, #72
	bl sub_08034854
	add r1, r0, #0
	ldr r0, _08031C14  @ =0x03000284
	str r1, [r0]
	add r0, sp, #4
	mov r2, #0
	strh r2, [r0]
	ldr r2, _08031C18  @ =0x01000024
	bl CpuSet
	add sp, sp, #8
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031C14:
	.4byte 0x03000284
_08031C18:
	.4byte 0x01000024
	THUMB_FUNC_END sub_08031BF0

	THUMB_FUNC_START sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4,r5,lr}
	ldr r5, _08031C50  @ =0x03000284
	mov r3, #0
	mov r4, #1
	mov r2, #5
_08031C26:
	ldr r0, [r5]
	add r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq _08031C40
	sub r0, r0, #1
	strb r0, [r1]
	and r0, r0, r4
	cmp r0, #0
	bne _08031C40
	ldrh r0, [r1, #10]
	sub r0, r0, #1
	strh r0, [r1, #10]
_08031C40:
	add r3, r3, #12
	sub r2, r2, #1
	cmp r2, #0
	bge _08031C26
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08031C50:
	.4byte 0x03000284
	THUMB_FUNC_END sub_08031C1C

	THUMB_FUNC_START sub_08031C54
sub_08031C54: @ 0x08031C54
	push {r4-r6,lr}
	sub sp, sp, #12
	add r4, r0, #0
	add r5, r1, #0
	ldr r2, [r5]
	cmp r2, #0
	bne _08031CEC
	ldr r0, _08031C88  @ =gUnknown_03001708
	ldrh r3, [r0]
	mov r0, #64
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	beq _08031C8C
	ldr r0, [r4]
	cmp r0, #0
	ble _08031D38
	sub r0, r0, #1
	str r0, [r4]
	str r2, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r2, [sp, #8]
	b _08031CAE
	.byte 0x00
	.byte 0x00
_08031C88:
	.4byte gUnknown_03001708
_08031C8C:
	mov r6, #128
	add r0, r6, #0
	and r0, r0, r3
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	beq _08031CBC
	ldr r0, [r5, #8]
	sub r0, r0, #1
	ldr r2, [r4]
	cmp r2, r0
	bge _08031D38
	add r0, r2, #1
	str r0, [r4]
	str r1, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
_08031CAE:
	mov r0, #178
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	b _08031D38
_08031CBC:
	ldr r0, _08031CE8  @ =gUnknown_030012E8
	ldrh r1, [r0]
	mov r0, #9
	and r0, r0, r1
	cmp r0, #0
	beq _08031D38
	str r2, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r4]
	lsl r0, r0, #3
	add r1, r5, #0
	add r1, r1, #12
	add r1, r1, r0
	ldr r0, [r1]
	b _08031D3C
_08031CE8:
	.4byte gUnknown_030012E8
_08031CEC:
	ldr r0, _08031D14  @ =gUnknown_030012E8
	ldrh r2, [r0]
	mov r1, #9
	and r1, r1, r2
	cmp r1, #0
	beq _08031D18
	mov r0, #0
	str r0, [sp]
	mov r1, #128
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #35
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r5, #12]
	b _08031D3C
	.byte 0x00
	.byte 0x00
_08031D14:
	.4byte gUnknown_030012E8
_08031D18:
	mov r0, #2
	and r0, r0, r2
	cmp r0, #0
	beq _08031D38
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r0, [r5, #20]
	b _08031D3C
_08031D38:
	mov r0, #1
	neg r0, r0
_08031D3C:
	add sp, sp, #12
	pop {r4-r6}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031C54

	THUMB_FUNC_START sub_08031D44
sub_08031D44: @ 0x08031D44
	push {r4-r7,lr}
	sub sp, sp, #4
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	add r0, r6, #0
	add r0, r0, #37
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031D72
	mov r0, #0
	bl sub_08031A38
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #2
	str r2, [sp]
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031D72:
	ldr r2, [r6, #4]
	cmp r2, #0
	beq _08031D8C
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r0, #2
	str r0, [sp]
	add r0, r2, #0
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031D8C:
	add r0, r6, #0
	add r0, r0, #38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031DAE
	add r0, r4, #0
	bl sub_08031A38
	ldr r1, _08031DBC  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #2
	str r2, [sp]
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031DAE:
	ldr r0, [r6]
	cmp r0, #1
	beq _08031DFA
	add r5, r5, #20
	mov r4, #0
	b _08031DF4
	.byte 0x00
	.byte 0x00
_08031DBC:
	.4byte 0xFFFF8001
_08031DC0:
	lsl r1, r4, #3
	add r0, r6, #0
	add r0, r0, #16
	add r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08031DF2
	add r2, r0, #0
	ldr r1, _08031DE0  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	cmp r4, r7
	bne _08031DE4
	mov r0, #2
	b _08031DE6
	.byte 0x00
	.byte 0x00
_08031DE0:
	.4byte 0xFFFF8001
_08031DE4:
	mov r0, #3
_08031DE6:
	str r0, [sp]
	add r0, r2, #0
	add r2, r5, #0
	bl sub_08034CCC
	add r5, r0, #0
_08031DF2:
	add r4, r4, #1
_08031DF4:
	ldr r0, [r6, #8]
	cmp r4, r0
	blt _08031DC0
_08031DFA:
	add sp, sp, #4
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08031D44

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08031E04
sub_08031E04: @ 0x08031E04
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	sub sp, sp, #4
	ldr r0, _08031E8C  @ =0x03000290
	ldrb r0, [r0]
	add r0, r0, #2
	ldr r4, _08031E90  @ =gUnknown_0807CA94
	ldr r1, [r4]
	mov r2, #104
	bl sub_0802A430
	ldr r7, [r4]
	ldr r0, [r7]
	cmp r0, #12
	bhi _08031EDA
	mov r6, #3
	mov r8, r4
	mov r4, #104
	mov r5, #11
_08031E2C:
	mov r0, r8
	ldr r1, [r0]
	add r1, r1, r4
	add r0, r6, #0
	mov r2, #192
	lsl r2, r2, #4
	bl sub_0802A430
	mov r0, #192
	lsl r0, r0, #4
	add r4, r4, r0
	sub r5, r5, #1
	add r6, r6, #1
	cmp r5, #0
	bge _08031E2C
	mov r6, #0
	mov r5, #0
	ldr r0, [r7]
	cmp r5, r0
	bcs _08031EB8
	ldr r0, _08031E90  @ =gUnknown_0807CA94
	mov r8, r0
_08031E58:
	ldr r0, _08031E90  @ =gUnknown_0807CA94
	ldr r2, [r0]
	add r0, r2, #0
	add r0, r0, #88
	add r0, r0, r5
	ldrb r1, [r0]
	add r0, r2, #0
	add r0, r0, #76
	add r0, r0, r5
	ldrb r4, [r0]
	cmp r1, #11
	bhi _08031E78
	cmp r4, #0
	blt _08031E78
	cmp r4, #11
	ble _08031E98
_08031E78:
	mov r0, sp
	mov r1, #0
	strh r1, [r0]
	mov r0, r8
	ldr r1, [r0]
	mov r0, sp
	ldr r2, _08031E94  @ =0x01000034
	bl CpuSet
	b _08031EDA
_08031E8C:
	.4byte 0x03000290
_08031E90:
	.4byte gUnknown_0807CA94
_08031E94:
	.4byte 0x01000034
_08031E98:
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	add r0, r0, #104
	add r0, r2, r0
	bl sub_0802F12C
	cmp r0, #0
	bne _08031EB0
	mov r0, #1
	lsl r0, r0, r4
	orr r6, r6, r0
_08031EB0:
	add r5, r5, #1
	ldr r0, [r7]
	cmp r5, r0
	bcc _08031E58
_08031EB8:
	cmp r6, #0
	bne _08031EC0
	mov r0, #1
	b _08031EDC
_08031EC0:
	mov r5, #0
	mov r4, #1
_08031EC4:
	add r0, r4, #0
	lsl r0, r0, r5
	and r0, r0, r6
	cmp r0, #0
	beq _08031ED4
	add r0, r5, #0
	bl sub_0802EEC8
_08031ED4:
	add r5, r5, #1
	cmp r5, #11
	ble _08031EC4
_08031EDA:
	mov r0, #0
_08031EDC:
	add sp, sp, #4
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08031E04

	THUMB_FUNC_START sub_08031EE8
sub_08031EE8: @ 0x08031EE8
	push {r4-r6,lr}
	sub sp, sp, #4
	bl sub_080331FC
	bl sub_08029C20
	bl sub_0802A458
	cmp r0, #0
	bne _08031F06
	mov r0, #25
	mov r1, #0
	bl sub_080070E8
	b _080320D6
_08031F06:
	ldr r1, _08031F28  @ =0x0300028C
	ldr r2, _08031F2C  @ =0x03000288
	ldr r3, [r1]
	ldr r0, [r2]
	add r4, r1, #0
	cmp r3, r0
	beq _08031F16
	str r3, [r2]
_08031F16:
	ldr r0, [r2]
	cmp r0, #5
	bls _08031F1E
	b _080320D2
_08031F1E:
	lsl r0, r0, #2
	ldr r1, _08031F30  @ =0x08031F34
	add r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
_08031F28:
	.4byte 0x0300028C
_08031F2C:
	.4byte 0x03000288
_08031F30:
	.4byte _08031F34
_08031F34:
	.4byte _08031F4C
	.4byte _08032044
	.4byte _0803206C
	.4byte _0803207A
	.4byte _080320A0
	.4byte _080320BC
_08031F4C:
	ldr r0, _08031F60  @ =0x03000290
	ldrb r1, [r0]
	add r4, r0, #0
	cmp r1, #0
	bne _08031F68
	ldr r0, _08031F64  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r2, #104
	b _08031F7E
	.byte 0x00
	.byte 0x00
_08031F60:
	.4byte 0x03000290
_08031F64:
	.4byte gUnknown_0807CA94
_08031F68:
	ldr r2, _08031FB0  @ =gUnknown_0807CA94
	ldrb r1, [r4]
	lsl r0, r1, #1
	add r0, r0, r1
	lsl r0, r0, #10
	ldr r1, _08031FB4  @ =0xFFFFF468
	add r0, r0, r1
	ldr r1, [r2]
	add r1, r1, r0
	mov r2, #192
	lsl r2, r2, #4
_08031F7E:
	ldrb r0, [r4]
	add r0, r0, #2
	bl sub_0802A430
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, #12
	bhi _08031F96
	b _080320D2
_08031F96:
	mov r0, #0
	strb r0, [r4]
	ldr r1, _08031FB0  @ =gUnknown_0807CA94
	ldr r0, [r1]
	ldr r0, [r0]
	cmp r0, #12
	bls _08031FC4
	ldr r1, _08031FB8  @ =0x0300028C
	mov r0, #1
	str r0, [r1]
	ldr r1, _08031FBC  @ =0x03000298
	ldr r0, _08031FC0  @ =gUnknown_0807DC9C
	b _080320D0
_08031FB0:
	.4byte gUnknown_0807CA94
_08031FB4:
	.4byte 0xFFFFF468
_08031FB8:
	.4byte 0x0300028C
_08031FBC:
	.4byte 0x03000298
_08031FC0:
	.4byte gUnknown_0807DC9C
_08031FC4:
	mov r5, #0
	mov r4, #0
	cmp r4, r0
	bcs _08032002
	add r6, r1, #0
_08031FCE:
	ldr r0, [r6]
	add r1, r0, #0
	add r1, r1, #88
	add r1, r1, r4
	ldrb r2, [r1]
	lsl r1, r2, #1
	add r1, r1, r2
	lsl r1, r1, #10
	add r1, r1, #104
	add r0, r0, r1
	bl sub_0802F12C
	cmp r0, #0
	bne _08031FF8
	ldr r1, [r6]
	add r1, r1, #76
	add r1, r1, r4
	mov r0, #1
	ldrb r1, [r1]
	lsl r0, r0, r1
	orr r5, r5, r0
_08031FF8:
	add r4, r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	bcc _08031FCE
_08032002:
	cmp r5, #0
	bne _08032010
	ldr r1, _0803200C  @ =0x0300028C
	mov r0, #2
	b _080320D0
_0803200C:
	.4byte 0x0300028C
_08032010:
	mov r4, #0
	mov r6, #1
_08032014:
	add r0, r6, #0
	lsl r0, r0, r4
	and r0, r0, r5
	cmp r0, #0
	beq _08032024
	add r0, r4, #0
	bl sub_0802EEC8
_08032024:
	add r4, r4, #1
	cmp r4, #11
	ble _08032014
	ldr r1, _08032038  @ =0x0300028C
	mov r0, #1
	str r0, [r1]
	ldr r1, _0803203C  @ =0x03000298
	ldr r0, _08032040  @ =gUnknown_0807DC9C
	b _080320D0
	.byte 0x00
	.byte 0x00
_08032038:
	.4byte 0x0300028C
_0803203C:
	.4byte 0x03000298
_08032040:
	.4byte gUnknown_0807DC9C
_08032044:
	ldr r0, _08032060  @ =0x03000294
	ldr r1, _08032064  @ =0x03000298
	ldr r1, [r1]
	bl sub_08031C54
	str r0, [r4]
	mov r1, #1
	neg r1, r1
	cmp r0, r1
	bne _080320D2
	ldr r0, _08032068  @ =0x03000288
	ldr r0, [r0]
	str r0, [r4]
	b _080320D2
_08032060:
	.4byte 0x03000294
_08032064:
	.4byte 0x03000298
_08032068:
	.4byte 0x03000288
_0803206C:
	bl sub_0802EE54
	mov r0, #25
	mov r1, #0
	bl sub_080070E8
	b _080320D2
_0803207A:
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r0, _08032094  @ =gUnknown_0807CA94
	ldr r1, [r0]
	ldr r2, _08032098  @ =0x01004834
	mov r0, sp
	bl CpuSet
	ldr r1, _0803209C  @ =0x0300028C
	mov r0, #4
	b _080320D0
	.byte 0x00
	.byte 0x00
_08032094:
	.4byte gUnknown_0807CA94
_08032098:
	.4byte 0x01004834
_0803209C:
	.4byte 0x0300028C
_080320A0:
	ldr r0, _080320B4  @ =gUnknown_0807CA94
	ldr r1, [r0]
	mov r0, #2
	mov r2, #104
	bl sub_0802A290
	ldr r1, _080320B8  @ =0x0300028C
	mov r0, #5
	b _080320D0
	.byte 0x00
	.byte 0x00
_080320B4:
	.4byte gUnknown_0807CA94
_080320B8:
	.4byte 0x0300028C
_080320BC:
	mov r2, #1
	neg r2, r2
	add r0, r2, #0
	mov r1, #0
	bl sub_0802A290
	cmp r0, #0
	beq _080320D2
	ldr r1, _080320E0  @ =0x0300028C
	mov r0, #0
_080320D0:
	str r0, [r1]
_080320D2:
	bl sub_0802ECC8
_080320D6:
	add sp, sp, #4
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080320E0:
	.4byte 0x0300028C
	THUMB_FUNC_END sub_08031EE8

	THUMB_FUNC_START sub_080320E4
sub_080320E4: @ 0x080320E4
	push {r4,lr}
	sub sp, sp, #12
	add r4, sp, #8
	mov r0, #0
	strh r0, [r4]
	mov r0, #160
	str r0, [sp, #4]
	ldr r1, _08032120  @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08032124  @ =gOamData
	str r0, [r1, #4]
	ldr r0, _08032128  @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_080351E0
	ldr r0, _0803212C  @ =0x03000288
	ldr r0, [r0]
	cmp r0, #1
	bne _08032138
	ldr r0, _08032130  @ =0x03000294
	ldr r0, [r0]
	ldr r1, _08032134  @ =0x03000298
	ldr r1, [r1]
	mov r2, #20
	mov r3, #0
	bl sub_08031D44
	b _08032156
_08032120:
	.4byte 0x040000D4
_08032124:
	.4byte gOamData
_08032128:
	.4byte 0x85000100
_0803212C:
	.4byte 0x03000288
_08032130:
	.4byte 0x03000294
_08032134:
	.4byte 0x03000298
_08032138:
	cmp r0, #1
	blt _08032156
	cmp r0, #5
	bgt _08032156
	cmp r0, #3
	blt _08032156
	ldr r0, _08032178  @ =gUnknown_080769F4
	ldr r1, _0803217C  @ =0xFFFF8001
	mov r3, #1
	neg r3, r3
	mov r2, #2
	str r2, [sp]
	mov r2, #20
	bl sub_08034CCC
_08032156:
	add r0, r4, #0
	bl sub_08035108
	ldr r1, _08032180  @ =0x040000D4
	ldr r0, _08032184  @ =gOamData
	str r0, [r1]
	mov r0, #224
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08032188  @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032178:
	.4byte gUnknown_080769F4
_0803217C:
	.4byte 0xFFFF8001
_08032180:
	.4byte 0x040000D4
_08032184:
	.4byte gOamData
_08032188:
	.4byte 0x80000200
	THUMB_FUNC_END sub_080320E4

	THUMB_FUNC_START sub_0803218C
sub_0803218C: @ 0x0803218C
	push {r4,lr}
	sub sp, sp, #4
	mov r0, #0
	bl sub_08034898
	ldr r1, _080321EC  @ =gUnknown_03001930
	ldr r0, _080321F0  @ =gUnknown_0300192C
	mov r4, #0
	strh r4, [r0]
	strh r4, [r1]
	bl sub_0802EC34
	ldr r0, _080321F4  @ =gUnknown_08B29054
	bl sub_08006968
	bl sub_0802A458
	cmp r0, #0
	beq _080321B6
	bl sub_0802F06C
_080321B6:
	bl sub_08071FE4
	cmp r0, #10
	beq _080321C8
	mov r0, #10
	mov r1, #128
	mov r2, #1
	bl sub_0807204C
_080321C8:
	ldr r2, _080321F8  @ =0x0300028C
	ldr r0, _080321FC  @ =0x03000288
	mov r1, #0
	str r1, [r0]
	str r1, [r2]
	ldr r0, _08032200  @ =0x03000290
	strb r4, [r0]
	mov r0, sp
	strh r1, [r0]
	ldr r1, _08032204  @ =gUnknown_03001730
	ldr r2, _08032208  @ =0x01000008
	bl CpuSet
	add sp, sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080321EC:
	.4byte gUnknown_03001930
_080321F0:
	.4byte gUnknown_0300192C
_080321F4:
	.4byte gUnknown_08B29054
_080321F8:
	.4byte 0x0300028C
_080321FC:
	.4byte 0x03000288
_08032200:
	.4byte 0x03000290
_08032204:
	.4byte gUnknown_03001730
_08032208:
	.4byte 0x01000008
	THUMB_FUNC_END sub_0803218C

	THUMB_FUNC_START sub_0803220C
sub_0803220C: @ 0x0803220C
	bx lr
	THUMB_FUNC_END sub_0803220C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08032210
sub_08032210: @ 0x08032210
	push {r4,lr}
	bl sub_080331FC
	ldr r0, _0803224C  @ =gUnknown_030012E0
	ldrh r2, [r0]
	mov r1, #192
	lsl r1, r1, #2
	add r0, r1, #0
	and r0, r0, r2
	cmp r0, r1
	beq _08032232
	ldr r0, _08032250  @ =gUnknown_030019A0
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #23
	orr r1, r1, r2
	str r1, [r0]
_08032232:
	bl sub_0800CC6C
	bl sub_08041F70
	ldr r4, _08032254  @ =gUnknown_03001A38
	ldrb r0, [r4]
	cmp r0, #1
	bne _08032258
	bl sub_0800C5A4
	strb r0, [r4]
	b _08032280
	.byte 0x00
	.byte 0x00
_0803224C:
	.4byte gUnknown_030012E0
_08032250:
	.4byte gUnknown_030019A0
_08032254:
	.4byte gUnknown_03001A38
_08032258:
	cmp r0, #2
	bne _08032264
	bl sub_0800EF30
	strb r0, [r4]
	b _08032280
_08032264:
	cmp r0, #3
	bne _08032280
	bl sub_0800EF8C
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08032280
	bl sub_08072118
	mov r0, #19
	mov r1, #0
	bl sub_080070E8
_08032280:
	ldr r4, _08032298  @ =gUnknown_03000B90
	ldr r0, [r4, #12]
	bl _call_via_r0
	mov r1, #18
	ldrsh r0, [r4, r1]
	cmp r0, #2
	bne _0803229C
	mov r0, #0
	bl sub_0802BEA4
	b _080322A0
_08032298:
	.4byte gUnknown_03000B90
_0803229C:
	bl sub_0802BE50
_080322A0:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08032210

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080322A8
sub_080322A8: @ 0x080322A8
	push {r4-r7,lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r12, r2
	ldr r1, _08032344  @ =0x03000B78
	ldrb r1, [r1]
	cmp r1, #0
	beq _0803233E
	ldr r3, _08032348  @ =0x040000D4
	ldr r1, _0803234C  @ =gUnknown_082E8908
	str r1, [r3]
	ldrh r1, [r2]
	ldr r2, _08032350  @ =0x06010000
	add r1, r1, r2
	str r1, [r3, #4]
	ldr r1, _08032354  @ =0x84000040
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldr r1, _08032358  @ =gUnknown_082E8900
	str r1, [r3]
	ldrh r1, [r6]
	lsl r1, r1, #3
	ldr r5, _0803235C  @ =gOamData
	add r1, r1, r5
	str r1, [r3, #4]
	ldr r1, _08032360  @ =0x84000002
	str r1, [r3, #8]
	ldr r1, [r3, #8]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r1, [r7]
	ldr r2, _08032364  @ =0x000003FF
	and r2, r2, r1
	ldrh r4, [r3, #4]
	ldr r1, _08032368  @ =0xFFFFFC00
	and r1, r1, r4
	orr r1, r1, r2
	strh r1, [r3, #4]
	ldrh r3, [r6]
	lsl r3, r3, #3
	add r3, r3, r5
	ldrh r2, [r3, #2]
	ldr r1, _0803236C  @ =0xFFFFFE00
	and r1, r1, r2
	mov r2, #200
	orr r1, r1, r2
	strh r1, [r3, #2]
	ldrh r1, [r6]
	lsl r1, r1, #3
	add r1, r1, r5
	mov r2, #140
	strb r2, [r1]
	ldrh r2, [r6]
	lsl r2, r2, #3
	add r2, r2, r5
	ldrb r3, [r2, #5]
	mov r1, #13
	neg r1, r1
	and r1, r1, r3
	strb r1, [r2, #5]
	ldrh r1, [r7]
	add r1, r1, #8
	strh r1, [r7]
	mov r2, #128
	lsl r2, r2, #1
	add r1, r2, #0
	mov r3, r12
	ldrh r3, [r3]
	add r1, r1, r3
	mov r2, r12
	strh r1, [r2]
	ldrh r1, [r6]
	add r1, r1, #1
	strh r1, [r6]
_0803233E:
	pop {r4-r7}
	pop {r1}
	bx r1
_08032344:
	.4byte 0x03000B78
_08032348:
	.4byte 0x040000D4
_0803234C:
	.4byte gUnknown_082E8908
_08032350:
	.4byte 0x06010000
_08032354:
	.4byte 0x84000040
_08032358:
	.4byte gUnknown_082E8900
_0803235C:
	.4byte gOamData
_08032360:
	.4byte 0x84000002
_08032364:
	.4byte 0x000003FF
_08032368:
	.4byte 0xFFFFFC00
_0803236C:
	.4byte 0xFFFFFE00
	THUMB_FUNC_END sub_080322A8

	THUMB_FUNC_START sub_08032370
sub_08032370: @ 0x08032370
	push {r4,r5,lr}
	sub sp, sp, #12
	bl sub_080720E4
	bl sub_08040F54
	ldr r0, _080323B8  @ =gUnknown_03001A38
	mov r5, #1
	strb r5, [r0]
	bl sub_08071C24
	mov r4, #0
	str r4, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #26
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl sub_08071990
	ldr r2, _080323BC  @ =gUnknown_030019A0
	ldr r0, [r2]
	ldr r1, _080323C0  @ =0xBFFFFFFF
	and r0, r0, r1
	str r0, [r2]
	ldr r0, _080323C4  @ =0x03000B78
	strb r5, [r0]
	ldr r0, _080323C8  @ =0x03001A00
	strb r4, [r0]
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080323B8:
	.4byte gUnknown_03001A38
_080323BC:
	.4byte gUnknown_030019A0
_080323C0:
	.4byte 0xBFFFFFFF
_080323C4:
	.4byte 0x03000B78
_080323C8:
	.4byte 0x03001A00
	THUMB_FUNC_END sub_08032370

	THUMB_FUNC_START sub_080323CC
sub_080323CC: @ 0x080323CC
	push {r4,r5,lr}
	ldr r4, _080323E4  @ =gMainState
	ldr r5, [r4]
	mov r0, #13
	str r0, [r4]
	bl sub_080088F0
	str r5, [r4]
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080323E4:
	.4byte gMainState
	THUMB_FUNC_END sub_080323CC

	THUMB_FUNC_START sub_080323E8
sub_080323E8: @ 0x080323E8
	push {lr}
	ldr r1, _08032400  @ =0x03000B78
	mov r0, #0
	strb r0, [r1]
	ldr r1, _08032404  @ =0x03001A00
	mov r0, #1
	strb r0, [r1]
	bl sub_0800F060
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08032400:
	.4byte 0x03000B78
_08032404:
	.4byte 0x03001A00
	THUMB_FUNC_END sub_080323E8
