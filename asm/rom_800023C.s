	.INCLUDE "macro.inc"

	.GLOBAL sub_0800023C
sub_0800023C:
	add r1, r0, r1, lsl #2
	mov r2, #0
_08000244:
	str r2, [r0], #4
	str r2, [r0], #4
	str r2, [r0], #4
	str r2, [r0], #4
	cmp r0, r1
	bne _08000244
	bx lr

	.GLOBAL sub_08000260
sub_08000260:
	add r3, r0, r3, lsl #2
_08000264:
	ldrsh r12, [r0], #2
	cmn r12, #127
	mvnle r12, #126
	cmp r12, #127
	movge r12, #127
	strb r12, [r1], #1
	ldrsh r12, [r0], #2
	cmn r12, #127
	mvnle r12, #126
	cmp r12, #127
	movge r12, #127
	strb r12, [r2], #1
	cmp r0, r3
	blt _08000264
	bx lr

	.GLOBAL sub_080002A0
sub_080002A0:
	ldr r0, _08000314  @ =0x03001F10
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	subs r1, r1, #1
	strb r1, [r0, #2]
	bxgt lr
	mov r2, #0x4000000
	mov r3, #0
	str r3, [r2, #196]
	str r3, [r2, #208]
	ldrb r1, [r0, #7]
	strb r1, [r0, #6]
	mov r12, #576
	add r3, r0, #16
	mla r1, r12, r1, r3
	str r1, [r2, #188]
	add r1, r1, #288
	str r1, [r2, #200]
	mov r1, #0xf6000000
	orr r1, r1, #0x600000
	orr r1, r1, #4
	str r1, [r2, #196]
	str r1, [r2, #208]
	mov r3, #18
	strb r3, [r0, #2]
	ldrb r3, [r0, #1]
	orr r3, r3, #2
	strb r3, [r0, #1]
	bx lr
_08000314:
	.4byte 0x03001F10

	push {r3-r12}
	mov r12, r0
	ldm r12, {r0-r7,r11}
	mla r9, r3, r11, r2
	add r8, r0, r11, lsl #2
	cmp r9, r4
	bge _0800036C
_08000334:
	lsr r5, r2, #8
	ldrsb r10, [r1, r5]
	ldrsh r5, [r0]
	mul r4, r6, r10
	add r5, r5, r4, asr #7
	strh r5, [r0], #2
	ldrsh r5, [r0]
	mul r4, r7, r10
	add r5, r5, r4, asr #7
	strh r5, [r0], #2
	add r2, r2, r3
	cmp r0, r8
	blt _08000334
	b _080003C4
_0800036C:
	orr r5, r5, r8, lsl #1
	cmp r2, r4
	bge _080003AC
_08000378:
	lsr r9, r2, #8
	ldrsb r10, [r1, r9]
	ldrsh r9, [r0]
	mul r8, r6, r10
	add r9, r9, r8, asr #7
	strh r9, [r0], #2
	ldrsh r9, [r0]
	mul r8, r7, r10
	add r9, r9, r8, asr #7
	strh r9, [r0], #2
	add r2, r2, r3
	cmp r2, r4
	blt _08000378
_080003AC:
	ands r8, r5, #1
	beq _080003C0
	sub r2, r2, r4
	lsr r8, r5, #1
	b _08000334
_080003C0:
	mov r2, r4
_080003C4:
	str r2, [r12, #8]
	pop {r3-r12}
	bx lr

	.GLOBAL sub_080003D0
sub_080003D0:
	push {r3-r11}
	mov r4, r0
	ldm r4!, {r0-r3}
	mov r12, #31
	mov r5, #255
	lsl r5, r5, #1
_080003E8:
	ldrh r6, [r0, r5]
	ldrh r7, [r1, r5]
	mov r8, #10
	mov r9, #0
_080003F8:
	and r10, r12, r6, lsr r8
	and r11, r12, r7, lsr r8
	sub r10, r10, r11
	lsl r11, r11, r3
	mla r10, r2, r10, r11
	and r10, r12, r10, lsr r3
	orr r9, r9, r10, lsl r8
	subs r8, r8, #5
	bge _080003F8
	strh r9, [r4, r5]
	subs r5, r5, #2
	bge _080003E8
	pop {r3-r11}
	bx lr

	.GLOBAL sub_08000430
sub_08000430:
	orrs r12, r1, r2
	moveq r0, #0
	bxeq lr
	push {r3-r12,lr}
	mov r12, r3
	ldm r0, {r3-r6}
	cmp r1, #0
	beq _080004BC
	mov r0, #1
	cmp r3, #0
	blt _08000464
	adds r7, r3, r1
	blt _080005A0
_08000464:
	ldr r7, _080006CC  @ =gUnknown_03001720
	ldr r7, [r7]
	cmp r5, r7, lsl #8
	bgt _08000480
	add r8, r5, r1
	cmp r8, r7, lsl #8
	bgt _080005A0
_08000480:
	asr r9, r4, #11
	asr r11, r6, #11
	cmp r1, #0
	blt _080004A4
	mov r3, r5
	asr r8, r3, #11
	add r10, r3, r1
	asr r10, r10, #11
	b _080004B0
_080004A4:
	asr r10, r3, #11
	add r8, r3, r1
	asr r8, r8, #11
_080004B0:
	add r5, r3, r1
	mov r1, #0
	b _0800052C
_080004BC:
	cmp r12, #1
	bne _080004F4
	mov r0, #1
	cmp r4, #0
	blt _080004D8
	adds r7, r4, r2
	blt _080005A0
_080004D8:
	ldr r7, _080006D0  @ =gUnknown_0300170C
	ldr r7, [r7]
	cmp r6, r7, lsl #8
	bgt _080004F4
	add r8, r6, r2
	cmp r8, r7, lsl #8
	bgt _080005A0
_080004F4:
	asr r8, r3, #11
	asr r10, r5, #11
	cmp r2, #0
	blt _08000518
	mov r4, r6
	asr r9, r4, #11
	add r11, r4, r2
	asr r11, r11, #11
	b _08000524
_08000518:
	asr r11, r4, #11
	add r9, r4, r2
	asr r9, r9, #11
_08000524:
	add r6, r4, r2
	mov r1, #1
_0800052C:
	orr r1, r1, r12, lsl #1
	ldr r2, _080006D4  @ =gUnknown_0807820C
	ldr r2, [r2]
	add r2, r2, #0x4000
	add r2, r2, #12
_08000540:
	stmdb sp!, {r11}
	lsl r7, r8, #1
_08000548:
	adds r12, r7, r9, lsl #7
	blt _08000580
	cmp r12, #0x2000
	bge _08000580
	ldrh r0, [r2, r12]
	cmp r0, #0
	cmpne r0, #15
	cmpne r0, #16
	beq _08000580
	lsr r12, r12, #1
	orr r0, r0, r12, lsl #16
	tst r1, #1
	beq _08000650
	b _080005B4
_08000580:
	add r7, r7, #2
	cmp r7, r10, lsl #1
	ble _08000548
	ldmia sp!, {r11}
	add r9, r9, #1
	cmp r9, r11
	ble _08000540
	mov r0, #0
_080005A0:
	pop {r3-r12,lr}
	bx lr

_080005A8:
	ldmia sp!, {r11}
	pop {r3-r12,lr}
	bx lr
_080005B4:
	and lr, r0, #896
	lsr lr, lr, #7
	add lr, lr, r9, lsl #3
	and r11, r0, #0x1c00
	lsl r12, r7, #2
	add r11, r12, r11, lsr #10
	and r12, r0, #127
	cmp r1, #1
	beq _080005E8
	cmp r12, #7
	blt _080005E8
	cmp r12, #11
	ble _08000580
_080005E8:
	cmp r12, #4
	ble _08000620
	cmp r1, #3
	beq _08000620
	cmp r12, #14
	beq _08000580
	add r12, r9, #1
	cmp r4, lr, lsl #8
	bgt _08000580
	cmp r5, r11, lsl #8
	ble _08000580
	cmp r6, lr, lsl #8
	ble _08000580
	b _080005A8
_08000620:
	add r12, r9, #1
	cmp r4, lr, lsl #8
	ble _08000634
	cmp r4, r12, lsl #11
	blt _08000580
_08000634:
	cmp r5, r11, lsl #8
	ble _08000580
	cmp r6, lr, lsl #8
	ble _08000580
	cmp r6, r12, lsl #11
	bge _08000580
	b _080005A8
_08000650:
	and lr, r0, #896
	lsr lr, lr, #7
	add lr, lr, r9, lsl #3
	and r11, r0, #0x1c00
	lsl r12, r7, #2
	add r11, r12, r11, lsr #10
	and r12, r0, #127
	cmp r1, #0
	beq _08000684
	cmp r12, #7
	blt _08000684
	cmp r12, #11
	ble _08000580
_08000684:
	cmp r12, #4
	ble _08000698
	cmp r1, #2
	beq _08000698
	b _08000580
_08000698:
	add r12, r7, #2
	lsl r12, r12, #2
	cmp r3, r11, lsl #8
	ble _080006B0
	cmp r3, r12, lsl #8
	blt _08000580
_080006B0:
	cmp r6, lr, lsl #8
	ble _08000580
	cmp r5, r11, lsl #8
	ble _08000580
	cmp r5, r12, lsl #8
	bge _08000580
	b _080005A8
_080006CC:
	.4byte gUnknown_03001720
_080006D0:
	.4byte gUnknown_0300170C
_080006D4:
	.4byte gUnknown_0807820C

	.GLOBAL sub_080006D8
sub_080006D8:
	push {r4-r11,lr}
	mov r4, r0
	mov r5, r1
	ldr r6, [r4, #32]
	ldr r7, [r4, #36]
	ldr r8, [r4, #92]
	tst r8, #0x100000
	bne _08000948
	ldr r8, [r4, #104]
	ldrsh r9, [r8]
	ldrsh r10, [r8, #6]
	ldrsh r11, [r8, #2]
	ldrsh r8, [r8, #4]
	add r8, r8, r6
	add r10, r10, r6
	add r9, r9, r7
	add r11, r11, r7
	push {r8-r11}
	mov r1, #0
	ldrsh r8, [r4, #50]
	mov r2, r8
	bl _08000984
	cmp r0, #0
	bne _08000754
	add r7, r7, r8
	add r9, r9, r8
	add r11, r11, r8
	str r7, [r4, #36]
	str r9, [sp, #4]
	str r11, [sp, #12]
	b _08000868
_08000754:
	ldr r11, [r4, #112]
	sub r11, r11, r8
	str r11, [r4, #112]
	ldr r11, [r4, #120]
	sub r11, r11, r8
	str r11, [r4, #120]
	mov r12, r0
	asr r7, r7, #8
	ldr r11, [r4, #92]
	cmp r8, #0
	bge _08000798
	orr r11, r11, #16
	and r0, r12, #127
	cmp r0, #1
	moveq r1, #1
	streqb r1, [r4, #15]
	b _08000848
_08000798:
	orr r11, r11, #64
	and r0, r0, #896
	lsr r0, r0, #7
	mov r10, r0
	mvn r9, #1
	sub r7, r7, r0
	add r7, r7, #7
	and r7, r7, r9, lsl #2
	add r7, r7, r0
	beq _08000820
	sub r10, r7, r10
	ldr r9, [r4, #80]
	cmp r10, #1024
	rsble r10, r10, #2048
	sub r9, r9, r10
	addgt r9, r9, r10
	str r9, [r4, #80]
	mov r9, r12
	and r0, r12, #127
	cmp r0, #1
	moveq r1, #1
	streqb r1, [r4, #15]
	beq _08000848
	cmp r0, #2
	bleq _080009D8
	and r0, r9, #127
	cmp r0, #6
	bleq _080009E8
	and r0, r9, #127
	cmp r0, #7
	bne _08000848
	bl _080009CC
	strb r0, [r4, #53]
	b _08000848
_08000820:
	ldr r0, [r4, #132]
	ldr r3, [r0, #28]
	ldrsh r1, [r3]
	cmp r1, #0
	orrgt r11, r11, #16
	ldrsh r2, [r3, #2]
	cmp r2, #0
	orrgt r11, r11, #16
	orrs r1, r1, r2
	orreq r11, r11, #16
_08000848:
	ldrb r0, [r4]
	cmp r0, #0
	bleq _080009BC
	mov r0, #0
	strh r0, [r4, #50]
	lsl r7, r7, #8
	str r7, [r4, #36]
	str r11, [r4, #92]
_08000868:
	ldrsh r7, [r4, #48]
	mov r1, r7
	mov r2, #0
	bl _08000984
	cmp r0, #0
	bne _0800088C
	add r6, r6, r7
	str r6, [r4, #32]
	b _08000940
_0800088C:
	mov r9, r0
	mov r8, r6
	ldr r11, [r4, #92]
	cmp r7, #0
	orrgt r11, r11, #128
	addgt r6, r6, #255
	orrlt r11, r11, #32
	asr r6, r6, #8
	lsl r6, r6, #8
	subgt r6, r6, #1
	str r6, [r4, #32]
	bne _08000904
	ldr r0, [r4, #132]
	ldrh r1, [r0, #20]
	cmp r1, #0
	orreq r11, r11, #160
	beq _08000904
	ldr r3, [r0, #24]
	ldrsh r1, [r3]
	ldrsh r2, [r3, #2]
	ldrsh r3, [r3, #4]
	add r1, r1, r2
	add r1, r1, r3
	ldr r0, [r4, #64]
	cmp r0, #0
	mvneq r1, r1
	cmp r1, #0
	orrgt r11, r11, #128
	orrlt r11, r11, #32
	orreq r11, r11, #160
_08000904:
	mov r0, #0
	strh r0, [r4, #48]
	strh r0, [r4, #54]
	str r11, [r4, #92]
	sub r8, r6, r8
	add r7, r7, r8
	ldr r11, [r4, #108]
	sub r11, r11, r7
	str r11, [r4, #108]
	ldr r11, [r4, #116]
	sub r11, r11, r7
	str r11, [r4, #116]
	and r0, r9, #127
	cmp r0, #2
	bleq _080009D8
_08000940:
	add sp, sp, #16
	b _08000960
_08000948:
	ldrsh r8, [r4, #48]
	ldrsh r9, [r4, #50]
	add r6, r6, r8
	add r7, r7, r9
	str r6, [r4, #32]
	str r7, [r4, #36]
_08000960:
	ldr r0, [r4, #132]
	ldr r0, [r0, #12]
	tst r0, #0x8000000
	bne _0800097C
	mov r0, r4
	mov r1, r5
	bl _080009F8
_0800097C:
	pop {r4-r11,lr}
	bx lr
_08000984:
	mov r0, sp
	ldr r3, [r4, #96]
	ands r3, r3, #4096
	movne r3, #1
	ldr r12, _08001670  @ =0x03000964
	ldr r12, [r12]
	bxne r12
	ldrb r3, [r4]
	cmp r3, #0
	cmpne r3, #7
	cmpne r3, #9
	movne r3, #2
	moveq r3, #0
	bx r12
_080009BC:
	mov r0, r4
	mov r1, r9
	ldr r12, _08001674  @ =0x0802B799
	bx r12
_080009CC:
	lsr r0, r9, #16
	ldr r1, _08001678  @ =0x0802BC01
	bx r1
_080009D8:
	mov r0, r4
	mov r1, r9
	ldr r12, _0800167C  @ =0x0802B985
	bx r12
_080009E8:
	mov r0, sp
	lsr r1, r9, #16
	ldr r2, _08001680  @ =0x0802D141
	bx r2
_080009F8:
	ldr r3, _08001684  @ =gUnknown_03001A1C
	ldr r3, [r3]
	mov r12, #3840
	orr r12, r12, #0x70000
	tst r3, r12
	movne r0, #0
	bxne lr
	ldr r12, _08001688  @ =0x03001940
	ldr r12, [r12]
	mov r3, #176
	mla r1, r3, r1, r12
	mov r2, #20
	mla r2, r3, r2, r12
	cmp r1, r2
	movge r0, #0
	bxge lr
	push {r4-r11,lr}
	mov r12, r0
	ldr r3, _0800168C  @ =gUnknown_0807AA58
	ldr r4, _08001690  @ =0x03000970
_08000A48:
	ldrb r5, [r1, #152]
	cmp r5, #0
	beq _08000A98
	add r5, r1, #0
	ldr r6, [r5, #96]
	tst r6, #0x10000000
	bne _08000A98
	ldr r6, [r5, #132]
	ldr r6, [r6, #12]
	tst r6, #0x8000000
	bne _08000A98
	ldrh r6, [r12, #68]
	mov r0, #0
	ldrh r7, [r5, #68]
	add r6, r7, r6, lsl #6
	ldrb r6, [r3, r6]
	ldr r6, [r4, r6, lsl #2]
	bx r6
_08000A90:
	cmp r0, #0
	bne _08000AA4
_08000A98:
	add r1, r1, #176
	cmp r1, r2
	blt _08000A48
_08000AA4:
	mov r0, #0
	pop {r4-r11,lr}
	bx lr
_08000AB0:
	push {r1-r4}
	add r10, r12, #108
	ldm r10, {r1-r4}
_08000ABC:
	add r10, r5, #108
	ldm r10, {r6-r9}
	cmp r3, r6
	cmpgt r4, r7
	ble _08000AFC
	cmp r1, r8
	cmplt r2, r9
	bge _08000AFC
	cmp r0, #1
	beq _08000AF4
	ldrb r10, [r12, #61]
	ldrb r11, [r5, #61]
	str r11, [r12, #76]
	str r10, [r5, #76]
_08000AF4:
	movs r0, #1
	bx lr
_08000AFC:
	cmp r0, #2
	moveqs r0, #0
	bxeq lr
	pop {r1-r4}
	movs r0, #0
	bx lr
_08000B14:
	stmdb sp!, {lr}
	ldr r0, [r12, #92]
	ldr r10, [r5, #132]
	ldrsb r10, [r10, #18]
	ldr r11, [r5, #92]
	ldr lr, [r12, #132]
	ldrsb lr, [lr, #18]
	cmp r4, r7
	ble _08000B64
	cmp r9, r4
	blt _08000B64
	tst r0, #0x400000
	bne _08000B50
	cmp r10, #2
	orrne r0, r0, #4
_08000B50:
	tst r11, #0x400000
	bne _08000B94
	cmp lr, #2
	orrne r11, r11, #1
	b _08000B94
_08000B64:
	cmp r9, r2
	ble _08000B94
	cmp r4, r9
	blt _08000B94
	tst r0, #0x400000
	bne _08000B84
	cmp r10, #2
	orrne r0, r0, #1
_08000B84:
	tst r11, #0x400000
	bne _08000B94
	cmp lr, #2
	orrne r11, r11, #4
_08000B94:
	cmp r3, r6
	ble _08000BC4
	cmp r8, r3
	blt _08000BC4
	tst r0, #0x400000
	bne _08000BB4
	cmp r10, #2
	orrne r0, r0, #8
_08000BB4:
	tst r11, #0x400000
	bne _08000BC4
	cmp lr, #2
	orrne r11, r11, #2
_08000BC4:
	cmp r8, r1
	ble _08000BF4
	cmp r3, r8
	blt _08000BF4
	tst r0, #0x400000
	bne _08000BE4
	cmp r10, #2
	orrne r0, r0, #2
_08000BE4:
	tst r11, #0x400000
	bne _08000BF4
	cmp lr, #2
	orrne r11, r11, #8
_08000BF4:
	str r0, [r12, #92]
	str r11, [r5, #92]
	ldmia sp!, {lr}
	bx lr
_08000C04:
	ldrsh r1, [r12, #50]
	ldrsh r2, [r12, #48]
	ldrsh r3, [r5, #50]
	ldrsh r4, [r5, #48]
	ldr r6, [r12, #92]
	ldr r7, [r5, #92]
	orrs r8, r1, r3
	beq _08000C88
	ldr r8, [r12, #36]
	ldr r9, [r12, #132]
	ldrb r9, [r9, #2]
	add r8, r8, r9, lsl #8
	ldr r9, [r5, #36]
	ldr r10, [r5, #132]
	ldrb r10, [r10, #2]
	add r9, r9, r10, lsl #8
	cmp r1, r3
	ble _08000C68
	cmp r8, r9
	bge _08000C68
	tst r6, #0x400000
	orreq r6, r6, #4
	tst r7, #0x200000
	orreq r7, r7, #1
	b _08000C88
_08000C68:
	cmp r1, r3
	bge _08000C88
	cmp r8, r9
	ble _08000C88
	tst r6, #0x400000
	orreq r6, r6, #1
	tst r7, #0x200000
	orreq r7, r7, #4
_08000C88:
	cmp r2, r4
	ble _08000CA4
	tst r6, #0x400000
	orreq r6, r6, #8
	tst r7, #0x200000
	orreq r7, r7, #2
	b _08000CBC
_08000CA4:
	cmp r2, r4
	bge _08000CBC
	tst r6, #0x400000
	orreq r6, r6, #2
	tst r7, #0x200000
	orreq r7, r7, #8
_08000CBC:
	str r6, [r12, #92]
	str r7, [r5, #92]
	bx lr
_08000CC8:
	sub r10, r4, r8
	sub r8, r3, r10
	mov r9, #0x80000000
	and r8, r8, r9, asr #23
	str r8, [r12, #36]
	ldr r3, [r12, #80]
	sub r10, r10, r1
	sub r3, r3, r10
	str r3, [r12, #80]
	bx lr
_08000CF0:
	mov r8, r7
	mov r11, lr
	ldrsh r1, [r12, #50]
	ldrsh r2, [r5, #50]
	ldr r3, [r12, #36]
	ldr r6, [r12, #92]
	ldr r7, [r5, #92]
	ldr r10, [r5, #36]
	orrs r9, r1, r2
	beq _08000D94
	ldr r9, [r5, #132]
	ldrb r9, [r9, #2]
	add r10, r10, r9, lsl #8
	ldr r9, [r12, #132]
	ldrb r9, [r9, #2]
	add r9, r3, r9, lsl #8
	cmp r1, r2
	ble _08000D68
	cmp r9, r10
	bge _08000D68
	ldr r10, [r5, #96]
	tst r10, #0x8000
	bleq _08000CC8
	tst r6, #0x400000
	orreq r6, r6, #4
	tsteq r7, #0x800000
	orreq r6, r6, #64
	tst r7, #0x200000
	orreq r7, r7, #1
	b _08000DA0
_08000D68:
	cmp r1, r2
	bge _08000DA0
	cmp r9, r10
	ble _08000DA0
	tst r6, #0x400000
	orreq r6, r6, #1
	tsteq r7, #0x800000
	orreq r6, r6, #16
	tst r7, #0x200000
	orreq r7, r7, #4
	b _08000DA0
_08000D94:
	cmp r3, r10
	bge _08000DA0
	bl _08000CC8
_08000DA0:
	mov lr, r11
	ldrsh r2, [r12, #48]
	ldrsh r4, [r5, #48]
	b _08000C88
_08000DB0:
	ldrsh r9, [r12, #50]
	ldrsh r10, [r5, #50]
	orrs r11, r9, r10
	beq _08000E7C
	ldr r2, [r5, #36]
	ldr r11, [r5, #132]
	ldrb r11, [r11, #2]
	add r2, r2, r11, lsl #8
	ldr r11, [r12, #36]
	ldr r0, [r12, #132]
	ldrb r0, [r0, #2]
	add r0, r11, r0, lsl #8
	cmp r9, r10
	ble _08000E50
	cmp r0, r2
	bge _08000E50
	ldr r0, [r12, #92]
	ldr r2, [r5, #92]
	tst r0, #0x400000
	orreq r0, r0, #4
	tsteq r2, #0x800000
	bne _08000E3C
	orr r0, r0, #64
	ldr r10, [r5, #96]
	tst r10, #0x8000
	bne _08000E3C
	sub r4, r4, r7
	sub r11, r11, r4
	mov r10, #0x80000000
	and r11, r11, r10, asr #23
	str r11, [r12, #36]
	ldr r11, [r12, #80]
	sub r4, r4, r9
	sub r11, r11, r4
	str r11, [r12, #80]
_08000E3C:
	tst r2, #0x200000
	orreq r2, r2, #1
	mov r7, r2
	mov r4, r0
	b _08000E84
_08000E50:
	cmp r9, r10
	bge _08000E7C
	cmp r0, r2
	ble _08000E7C
	ldr r4, [r12, #92]
	ldr r7, [r5, #92]
	tst r4, #0x400000
	orreq r4, r4, #1
	tst r7, #0x200000
	orreq r7, r7, #4
	b _08000E84
_08000E7C:
	ldr r4, [r12, #92]
	ldr r7, [r5, #92]
_08000E84:
	ldrsh r0, [r12, #48]
	ldrsh r2, [r5, #48]
	cmp r0, r2
	ble _08000EE4
	tst r7, #0x200000
	orreq r7, r7, #2
	tst r4, #0x400000
	bne _08000F38
	orr r4, r4, #8
	tst r7, #0x800000
	orreq r4, r4, #128
	ldr r9, [r12, #132]
	ldr r9, [r9, #12]
	tst r9, #0x800000
	bne _08000F38
	b _08000F38
_08000EC4:
	ldr r9, [r5, #96]
	tst r9, #0x8000
	bne _08000F38
	ldr r9, [r12, #32]
	sub r10, r3, r6
	sub r9, r9, r10
	str r9, [r12, #32]
	b _08000F38
_08000EE4:
	cmp r0, r2
	bge _08000F38
	tst r7, #0x200000
	orreq r7, r7, #8
	tst r4, #0x400000
	bne _08000F38
	orr r4, r4, #2
	tst r7, #0x800000
	orreq r4, r4, #32
	ldr r9, [r12, #132]
	ldr r9, [r9, #12]
	tst r9, #0x800000
	bne _08000F38
	b _08000F38
_08000F1C:
	ldr r9, [r5, #96]
	tst r9, #0x8000
	bne _08000F38
	ldr r9, [r12, #32]
	sub r10, r1, r8
	sub r9, r9, r10
	str r9, [r12, #32]
_08000F38:
	mov r0, #1
	str r4, [r12, #92]
	str r7, [r5, #92]
	bx lr
_08000F48:
	mov r0, #1
	ldrsh r10, [r12, #50]
	cmp r10, #0
	blt _08000FA4
	sub r11, r4, r7
	cmp r11, #1792
	bge _08000FA4
	cmn r11, #1792
	ble _08000FA4
	ldr r1, [r12, #36]
	sub r1, r1, r11
	str r1, [r12, #36]
	ldr r2, [r12, #80]
	sub r11, r11, r10
	sub r2, r2, r11
	str r2, [r12, #80]
	ldr r3, [r12, #92]
	ldr r4, [r5, #92]
	orr r3, r3, #68
	orr r4, r4, #1
	str r3, [r12, #92]
	str r4, [r5, #92]
	bx lr
_08000FA4:
	ldr r2, [r12, #36]
	ldr r4, [r5, #36]
	ldr r7, [r12, #132]
	ldr r9, [r5, #132]
	ldrb r7, [r7, #2]
	ldrb r9, [r9, #2]
	add r2, r2, r7, lsl #8
	add r4, r4, r9, lsl #8
	sub r7, r3, r6
	cmp r7, #0
	mvnlt r9, r7
	movge r9, r7
	cmp r9, #768
	bge _08001014
	ldr r9, [r5, #92]
	orr r9, r9, #2
	str r9, [r5, #92]
	ldr r11, [r12, #92]
	tst r11, #0x400000
	bne _08001064
	orr r11, r11, #136
	str r11, [r12, #92]
	ldr r4, [r12, #32]
	ldrsh r9, [r5, #48]
	sub r4, r4, r7
	add r4, r4, r9
	str r4, [r12, #32]
	bx lr
_08001014:
	sub r7, r1, r8
	cmp r7, #0
	mvnlt r9, r7
	movge r9, r7
	cmp r9, #768
	bge _08001064
	ldr r9, [r5, #92]
	orr r9, r9, #8
	str r9, [r5, #92]
	ldr r11, [r12, #92]
	tst r11, #0x400000
	bne _08001064
	orr r11, r11, #34
	str r11, [r12, #92]
	ldr r4, [r12, #32]
	ldrsh r9, [r5, #48]
	sub r4, r4, r7
	add r4, r4, r9
	str r4, [r12, #32]
	bx lr
_08001064:
	ldrsh r6, [r5, #50]
	cmp r10, r6
	bge _08001094
	cmp r2, r4
	ble _08001094
	ldr r3, [r12, #92]
	ldr r4, [r5, #92]
	orr r3, r3, #17
	orr r4, r4, #4
	str r3, [r12, #92]
	str r4, [r5, #92]
	bx lr
_08001094:
	ldr r4, [r12, #120]
	ldr r7, [r5, #112]
	sub r7, r4, r7
	cmp r7, #512
	bxge lr
	ldr r11, [r12, #36]
	sub r11, r11, r7
	str r11, [r12, #36]
	ldr r11, [r12, #80]
	sub r7, r7, r10
	sub r11, r11, r7
	str r11, [r12, #80]
	ldr r3, [r12, #92]
	ldr r4, [r5, #92]
	orr r3, r3, #68
	orr r4, r4, #1
	str r3, [r12, #92]
	str r4, [r5, #92]
	bx lr

_080010E0:
	ldrsh r9, [r12, #50]
	ldrsh r10, [r5, #50]
	orrs r11, r9, r10
	beq _080011A8
	ldr r2, [r5, #36]
	ldr r11, [r5, #132]
	ldrb r11, [r11, #2]
	add r2, r2, r11, lsl #8
	ldr r11, [r12, #36]
	ldr r0, [r12, #132]
	ldrb r0, [r0, #2]
	add r0, r11, r0, lsl #8
	cmp r9, r10
	ble _08001174
	cmp r0, r2
	bge _08001174
	ldr r0, [r5, #96]
	tst r0, #0x8000
	bne _08001150
	sub r4, r4, r7
	sub r11, r11, r4
	mov r2, #0x80000000
	and r11, r11, r2, asr #23
	str r11, [r12, #36]
	ldr r11, [r12, #80]
	sub r4, r4, r9
	sub r11, r11, r0
	str r11, [r12, #80]
_08001150:
	ldr r4, [r12, #92]
	ldr r7, [r5, #92]
	tst r4, #0x400000
	orreq r4, r4, #4
	tsteq r7, #0x800000
	orreq r4, r4, #64
	tst r7, #0x200000
	orreq r7, r7, #1
	b _080011B0
_08001174:
	cmp r9, r10
	bge _080011A8
	cmp r0, r2
	ble _080011A8
	ldr r4, [r12, #92]
	ldr r7, [r5, #92]
	tst r4, #0x400000
	orreq r4, r4, #1
	tsteq r7, #0x800000
	orreq r4, r4, #16
	tst r7, #0x200000
	orreq r7, r7, #4
	b _080011B0
_080011A8:
	ldr r4, [r12, #92]
	ldr r7, [r5, #92]
_080011B0:
	ldrsh r0, [r12, #48]
	ldrsh r2, [r5, #48]
	cmp r0, r2
	ble _080011FC
	tst r7, #0x200000
	orreq r7, r7, #2
	tst r4, #0x400000
	bne _0800123C
	orr r4, r4, #8
	tst r7, #0x800000
	orreq r4, r4, #128
	ldrsh r0, [r12, #50]
	cmp r0, #0
	bne _0800123C
	ldr r9, [r12, #32]
	sub r10, r3, r6
	sub r9, r9, r10
	str r9, [r12, #32]
	b _0800123C
_080011FC:
	cmp r0, r2
	bge _0800123C
	tst r7, #0x200000
	orreq r7, r7, #8
	tst r4, #0x400000
	bne _0800123C
	orr r4, r4, #2
	tst r7, #0x800000
	orreq r4, r4, #32
	ldrsh r0, [r12, #50]
	cmp r0, #0
	bne _0800123C
	ldr r9, [r12, #32]
	sub r10, r1, r8
	sub r9, r9, r10
	str r9, [r12, #32]
_0800123C:
	mov r0, #1
	str r4, [r12, #92]
	str r7, [r5, #92]
	bx lr
	push {r1-r4}
	add r10, r12, #108
	ldm r10, {r1-r4}
	b _0800158C
_0800125C:
	bl _08000AB0
	beq _08000A90
	ldr r6, [r12, #92]
	ldr r7, [r5, #92]
	orr r6, r6, #15
	orr r7, r7, #15
	str r6, [r12, #92]
	str r7, [r5, #92]
	pop {r1-r4}
	b _08000A90
_08001284:
	ldr r6, [r5, #132]
	ldrsb r6, [r6, #17]
	cmp r6, #2
	beq _08000A90
	bl _08000AB0
	beq _08000A90
	ldr r6, [r12, #92]
	ldr r7, [r5, #92]
	orr r6, r6, #15
	orr r7, r7, #15
	str r6, [r12, #92]
	str r7, [r5, #92]
	pop {r1-r4}
	b _08000A90
_080012BC:
	bl _08000AB0
	beq _08000A90
	bl _08000B14
	pop {r1-r4}
	b _08000A90
_080012D0:
	mov r0, #1
	bl _08000AB0
	beq _08000A90
	ldr r10, [r12, #132]
	ldr r10, [r10, #12]
	tst r10, #0x4000
	beq _08001328
	ldr r10, [r5, #132]
	ldr r10, [r10, #12]
	tst r10, #0x4000
	beq _08001328
	ldrb r10, [r12]
	ldrb r11, [r5, #61]
	cmp r10, #150
	strneb r11, [r12, #66]
	ldrb r11, [r12, #61]
	ldrb r10, [r5]
	cmp r10, #150
	strneb r11, [r5, #66]
	mov r0, #0
	pop {r1-r4}
	b _08000A90
_08001328:
	ldrb r10, [r5, #61]
	str r10, [r12, #76]
	ldrb r10, [r12, #61]
	str r10, [r5, #76]
	bl _08000B14
	pop {r1-r4}
	b _08000A90
_08001344:
	ldr r10, [r12, #132]
	ldr r10, [r10, #12]
	tst r10, #0x4000
	beq _08001364
	ldr r10, [r5, #132]
	ldr r10, [r10, #12]
	tst r10, #0x4000
	bne _08000A90
_08001364:
	bl _08000AB0
	beq _08000A90
	bl _08000B14
	pop {r1-r4}
	b _08000A90
_08001378:
	ldr r8, [r5, #132]
	ldrsb r6, [r8, #17]
	cmp r6, #2
	beq _08000A90
	ldr r6, [r5, #36]
	ldr r7, [r12, #36]
	ldr r9, [r12, #132]
	ldrb r8, [r8, #2]
	ldrb r9, [r9, #2]
	add r6, r8, r6, asr #8
	add r7, r9, r7, asr #8
	cmp r7, r6
	bgt _08000A90
	mov r0, #2
	bl _08000AB0
	strb r11, [r12, #11]
	bl _080010E0
	pop {r1-r4}
	b _08000A90
_080013C4:
	ldr r8, [r5, #132]
	ldrsb r6, [r8, #17]
	cmp r6, #2
	beq _08000A90
	bgt _08000A90
	mov r0, #2
	bl _08000AB0
	beq _080013F4
	strb r11, [r12, #11]
	bl _08000DB0
	pop {r1-r4}
	b _08000A90
_080013F4:
	add r2, r2, #256
	add r4, r4, #256
	ldr r10, _08001694  @ =gUnknown_03001A1C
	ldr r10, [r10]
	tst r10, #3840
	tsteq r10, #0x70000
	bne _08001424
	mov r0, #0
	bl _08000ABC
	beq _08000A90
	mov r0, #0
	strb r11, [r12, #11]
_08001424:
	pop {r1-r4}
	b _08000A90
_0800142C:
	ldr r6, [r5, #132]
	ldrsb r6, [r6, #17]
	cmp r6, #2
	beq _08000A90
	mov r0, #2
	bl _08000AB0
	beq _080013F4
	strb r11, [r12, #11]
	bl _08000F48
	pop {r1-r4}
	b _08000A90
_08001458:
	ldr r10, [r12, #96]
	tst r10, #0x80000000
	bne _08000A90
	bl _08000AB0
	beq _08000A90
	bl _08000C04
	pop {r1-r4}
	b _08000A90
_08001478:
	ldr r10, [r12, #96]
	tst r10, #0x80000000
	bne _08000A90
	ldr r10, [r5, #36]
	ldr r11, [r12, #36]
	sub r10, r10, r11
	cmp r10, #3584
	blt _08000A90
	bl _08000AB0
	beq _08000A90
	strb r11, [r12, #11]
	bl _08000DB0
	pop {r1-r4}
	b _08000A90
_080014B0:
	ldr r10, [r12, #92]
	tst r10, #0x2000000
	bne _08000A90
	ldr r10, [r12, #96]
	tst r10, #0x80000000
	bne _08000A90
	ldr r10, [r5, #132]
	ldrsb r10, [r10, #17]
	cmp r10, #0
	bne _08000A90
	bl _08000AB0
	beq _08000A90
	bl _08000C04
	pop {r1-r4}
	b _08000A90
_080014EC:
	ldr r10, [r12, #96]
	tst r10, #0x80000000
	bne _08000A90
	mov r0, #2
	bl _08000AB0
	beq _080013F4
	strb r11, [r12, #11]
	bl _08000CF0
	pop {r1-r4}
	b _08000A90
_08001514:
	ldr r6, [r5, #132]
	ldrsb r6, [r6, #17]
	cmp r6, #0
	cmpne r6, #1
	bne _08000A90
	push {r1-r4}
	add r10, r12, #108
	ldm r10, {r1-r4}
	cmp r6, #0
	bne _0800158C
	mov r0, #2
	bl _08000ABC
	beq _0800155C
	ldr r10, [r12, #76]
	strb r10, [r12, #11]
	bl _08000DB0
	pop {r1-r4}
	b _08000A90
_0800155C:
	add r2, r2, #256
	add r4, r4, #256
	ldr r10, _08001698  @ =gUnknown_03001A1C
	ldr r10, [r10]
	tst r10, #3840
	tsteq r10, #0x70000
	bne _0800165C
	mov r0, #0
	bl _08000ABC
	beq _08000A90
	strb r11, [r12, #11]
	b _0800165C
_0800158C:
	ldrsh r11, [r12, #50]
	cmp r11, #0
	ble _0800161C
	add r10, r5, #108
	ldm r10, {r6-r8}
	cmp r3, r6
	ble _0800161C
	cmp r1, r8
	bge _0800161C
	sub r9, r4, r7
	cmn r9, #512
	blt _0800161C
	sub r8, r9, r11
	cmp r8, #512
	bgt _0800161C
	mov r0, #1
	ldr r6, [r12, #36]
	sub r6, r6, r9
	sub r6, r6, #512
	str r6, [r12, #36]
	ldr r6, [r12, #92]
	ldr r7, [r5, #92]
	tst r7, #0x800000
	orreq r6, r6, #64
	orreq r7, r7, #16
	orr r6, r6, #4
	orr r7, r7, #1
	str r6, [r12, #92]
	str r7, [r5, #92]
	ldrb r6, [r5, #61]
	str r6, [r12, #76]
	strb r6, [r12, #11]
	ldrb r6, [r12, #61]
	str r6, [r5, #76]
	pop {r1-r4}
	b _08000A90
_0800161C:
	add r10, r5, #108
	ldm r10, {r6-r8}
	cmp r3, r6
	ble _0800165C
	cmp r1, r8
	bge _0800165C
	ldrsh r10, [r12, #50]
	sub r4, r4, r10
	sub r9, r4, r7
	cmn r9, #512
	blt _0800165C
	sub r8, r9, #256
	cmp r8, #512
	bge _0800165C
	ldrb r8, [r5, #61]
	strb r8, [r12, #11]
_0800165C:
	pop {r1-r4}
	mov r0, #0
	b _08000A90
_08001668:
	mov r0, #0
	b _08000A90
_08001670:
	.4byte 0x03000964
_08001674:
	.4byte sub_0802B798
_08001678:
	.4byte sub_0802BC00
_0800167C:
	.4byte sub_0802B984
_08001680:
	.4byte sub_0802D140
_08001684:
	.4byte gUnknown_03001A1C
_08001688:
	.4byte 0x03001940
_0800168C:
	.4byte gUnknown_0807AA58
_08001690:
	.4byte 0x03000970
_08001694:
	.4byte gUnknown_03001A1C
_08001698:
	.4byte gUnknown_03001A1C

	.GLOBAL sub_0800169C
sub_0800169C:
	ldrh r2, [r0, #8]
	cmp r2, #4
	bxeq lr
	push {r4-r11}
	ldr r2, [r1, #24]
	sub r2, r2, #1
	ldr r3, [r1, #20]
	mov r4, #16
	mla r5, r4, r2, r3
	ldr r6, [r1, #8]
	ldrh r6, [r6]
	ldr r7, [r1, #12]
	ldrh r7, [r7]
	ldr r8, [r0, #4]
	ldr r9, [r0, #12]
	cmp r8, r9
	ldreq r9, [r0, #16]
	mov r8, #160
	mov r12, #2
	mla r9, r8, r12, r9
	b _08001748
_080016F0:
	ldr r1, [r5, #4]
	mul r2, r1, r6
	ldr r1, [r5, #8]
	ldr r4, [r5]
	add r4, r1, r4
	str r4, [r5, #8]
	add r1, r1, r2
	asr r1, r1, #16
	strh r1, [r5, #14]
	ldrsh r2, [r5, #12]
	sub r2, r2, r7
	cmp r2, #0
	movlt r2, #0
	cmp r2, #160
	bge _08001744
	b _0800173C
_08001730:
	strh r1, [r9]
	sub r9, r9, #2
	sub r8, r8, #1
_0800173C:
	cmp r8, r2
	bge _08001730
_08001744:
	sub r5, r5, #16
_08001748:
	cmp r5, r3
	bge _080016F0
	mov r1, #1
	strh r1, [r0, #8]
	pop {r4-r11}
	bx lr

	.GLOBAL sub_08001760
sub_08001760:
	ldrh r12, [r0, #8]
	cmp r12, #4
	bxeq lr
	push {r4-r11}
	mov r10, r2
	lsl r11, r3, #1
	ldr r2, [r1, #24]
	sub r2, r2, #1
	ldr r3, [r1, #20]
	mov r4, #16
	mla r5, r4, r2, r3
	ldr r6, [r1, #8]
	ldrh r6, [r6]
	ldr r7, [r1, #12]
	ldrh r7, [r7]
	ldr r8, [r0, #4]
	ldr r9, [r0, #12]
	cmp r8, r9
	ldreq r9, [r0, #16]
	mov r8, #160
	mov r12, #2
	mla r9, r8, r12, r9
	b _08001828
_080017BC:
	ldr r1, [r5, #4]
	mul r2, r1, r6
	ldr r1, [r5, #8]
	ldr r4, [r5]
	add r4, r1, r4
	str r4, [r5, #8]
	add r1, r1, r2
	asr r1, r1, #16
	strh r1, [r5, #14]
	ldrsh r2, [r5, #12]
	sub r2, r2, r7
	cmp r2, #0
	movlt r2, #0
	cmp r2, #160
	bge _08001824
	b _0800181C
_080017FC:
	ldrsh r12, [r10, r11]
	add r12, r1, r12, asr #8
	sub r11, r11, #2
	cmp r11, #0
	movlt r11, #198
	strh r12, [r9]
	sub r9, r9, #2
	sub r8, r8, #1
_0800181C:
	cmp r8, r2
	bge _080017FC
_08001824:
	sub r5, r5, #16
_08001828:
	cmp r5, r3
	bge _080017BC
	mov r1, #1
	strh r1, [r0, #8]
	pop {r4-r11}
	bx lr

	.GLOBAL sub_08001840
sub_08001840:
_08001840:
	push {r4-r11}
	mov r12, r0
	ldm r12, {r0-r8}
	mla r10, r3, r6, r2
	add r6, r0, r6, lsl #2
	cmp r3, #0
	blt _0800191C
	cmp r10, r4
	bge _080018C0
_08001864:
	lsr r10, r2, #14
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _08001864
	b _080018FC
_0800189C:
	teq r5, #0
	beq _080018FC
	tst r5, #1
	subeq r2, r2, r5, asr #1
	beq _080018C8
	rsb r2, r2, r4, lsl #1
	sub r4, r4, r5, asr #1
	mvn r3, r3
	b _08001928
_080018C0:
	cmp r2, r4
	bge _0800189C
_080018C8:
	lsr r10, r2, #14
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _080018C0
_080018FC:
	str r2, [r12, #8]
	str r3, [r12, #12]
	pop {r4-r11}
	bx lr
_0800190C:
	rsb r2, r2, r4, lsl #1
	add r4, r4, r5, asr #1
	mvn r3, r3
	b _080018C0
_0800191C:
	sub r4, r4, r5, asr #1
	cmp r10, r4
	bgt _08001864
_08001928:
	cmp r2, r4
	ble _0800190C
	lsr r10, r2, #8
	ldrsb r9, [r1, r10]
	ldrsh r10, [r0]
	mul r11, r7, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	ldrsh r10, [r0]
	mul r11, r8, r9
	add r10, r10, r11, asr #6
	strh r10, [r0], #2
	add r2, r2, r3
	cmp r0, r6
	blt _08001928
	b _080018FC
_08001968:
	push {r4-r11,lr}
	ldrsh r4, [r0, #38]
	ldr r5, [r0, #64]
	ldrsh r9, [r0, #70]
	cmp r9, #0
	blt _080019C8
	ldr r6, _08001B90  @ =gUnknown_08B39C1C
	ldrb r7, [r5, #40]
	lsr r8, r9, #2
	add r8, r8, r7, lsl #6
	ldrb r7, [r5, #42]
	ldr r6, [r6, r8, lsl #2]
	mul r6, r7, r6
	add r4, r4, r6, asr #16
	cmp r4, #40
	movlt r4, #40
	cmp r4, #0x1e00
	movgt r4, #0x1e00
	cmp r3, #0
	beq _080019C8
	ldrb r7, [r5, #41]
	add r9, r9, r7
	and r9, r9, #255
	strh r9, [r0, #70]
_080019C8:
	rsb r4, r4, #0x1e00
	ldr r6, _08001B94  @ =gUnknown_08B39F48
	lsr r9, r4, #8
	ldr r6, [r6, r9, lsl #2]
	ldr r7, _08001B98  @ =gUnknown_08B3961C
	and r8, r6, #768
	and r4, r4, #255
	orr r4, r4, r8
	lsl r4, r4, #1
	ldrh r4, [r7, r4]
	and r6, r6, #15
	rsb r6, r6, #7
	lsl r4, r4, #2
	lsr r4, r4, r6
	mov r4, r4
	ldrsb r6, [r0, #44]
	ldrh r7, [r0, #48]
	ldrb r8, [r0, #1]
	ldrsb r9, [r0, #47]
	mul r6, r7, r6
	asr r6, r6, #16
	mul r6, r8, r6
	mul r6, r9, r6
	asrs r6, r6, #12
	movlt r6, #0
	cmp r6, #64
	movgt r6, #64
	ldrsb r9, [r0, #45]
	cmp r9, #0
	movlt r9, #0
	cmp r9, #64
	movgt r9, #64
	strb r9, [r0, #45]
	ldrb r12, [r5, #15]
	ldr r3, [r0, #32]
	ldr r8, [r5]
	mov r10, #2
	cmp r12, #0
	subeq r10, r10, #1
	cmp r3, r8, lsl #6
	subge r10, r10, #1
	cmp r10, #0
	moveq r6, #0
	ldrb r10, [r0, #29]
	ands r10, r10, #1
	moveq r6, #0
	orr r10, r10, r6, lsl #1
	strb r10, [r0, #29]
	ldr r10, _08001B9C  @ =0x03001F24
	ldr r10, [r10]
	mul r6, r10, r6
	asrs r6, r6, #7
	bne _08001AD8
	mla r3, r4, r2, r3
	cmp r12, #0
	bne _08001AB4
	cmp r3, r8, lsl #6
	lslgt r3, r8, #6
	b _08001B84
_08001AB4:
	ldr r6, [r5, #8]
	ldr r7, [r5, #4]
	add r7, r7, r6
	cmp r3, r7, lsl #6
	blt _08001B84
_08001AC8:
	sub r3, r3, r6, lsl #6
	cmp r3, r7
	bge _08001AC8
	b _08001B84
_08001AD8:
	mov r7, r2
	mov r2, r5
	mov r11, r6
	cmp r12, #0
	bne _08001AF8
	mov r5, r8
	mov r6, #0
	b _08001B10
_08001AF8:
	ldr r5, [r2, #4]
	ldr r6, [r2, #8]
	add r5, r5, r6
	lsl r6, r6, #7
	cmp r12, #1
	orrne r6, r6, #1
_08001B10:
	lsl r5, r5, #6
	cmp r9, #0
	blt _08001B50
	ldr r10, _08001BA0  @ =gUnknown_08B3A0A8
	rsb r8, r9, #64
	mul r8, r11, r8
	asr r8, r8, #5
	lsl r8, r8, #1
	ldrh r8, [r10, r8]
	mul r9, r11, r9
	asr r9, r9, #5
	lsl r9, r9, #1
	ldrh r9, [r10, r9]
	asr r8, r8, #1
	asr r9, r9, #1
	b _08001B58
_08001B50:
	mov r8, r11
	rsb r9, r8, #0
_08001B58:
	ldr r2, [r2, #44]
	push {r1-r9}
	mov r4, r0
	mov r0, sp
	bl _08001840
	mov r0, r4
	ldr r3, [sp, #8]
	ldr r4, [sp, #12]
	asr r4, r4, #31
	strh r4, [r0, #30]
	add sp, sp, #36
_08001B84:
	str r3, [r0, #32]
	pop {r4-r11,lr}
	bx lr

_08001B90:
	.4byte gUnknown_08B39C1C
_08001B94:
	.4byte gUnknown_08B39F48
_08001B98:
	.4byte gUnknown_08B3961C
_08001B9C:
	.4byte 0x03001F24
_08001BA0:
	.4byte gUnknown_08B3A0A8
