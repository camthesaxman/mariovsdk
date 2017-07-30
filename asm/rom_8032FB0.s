	.INCLUDE "macro.inc"

THUMB_FUNC_START sub_08033024
sub_08033024:
	push {r4-r7,lr}
	sub sp, sp, #12
	ldr r6, _08033064  @ =0x030012E8
	ldrh r0, [r6]
	mov r12, r6
	cmp r0, #8
	beq _08033036
	cmp r0, #2
	bne _08033070
_08033036:
	mov r0, #12
	mov r1, #1
	bl 0x080070E8
	ldr r1, _08033068  @ =0x030012F8
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0803306C  @ =0x030012E0
	strh r0, [r1]
	strh r0, [r6]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _0803313A
	.byte 0x00
	.byte 0x00
_08033064:
	.4byte 0x030012E8
_08033068:
	.4byte 0x030012F8
_0803306C:
	.4byte 0x030012E0
_08033070:
	ldr r0, _080330DC  @ =0x03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _0803313A
	ldr r0, _080330E0  @ =0x0807DD94
	ldr r3, [r0]
	ldrh r0, [r3]
	ldr r5, _080330E4  @ =0x030012F8
	mov r2, #0
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _08033128
	lsl r0, r1, #2
	add r0, r0, r3
	ldrh r4, [r0]
	strh r4, [r6]
	ldr r2, _080330E8  @ =0x030012E0
	mov r1, #0
	ldrsh r0, [r5, r1]
	lsl r0, r0, #2
	add r0, r0, r3
	ldrh r1, [r0, #2]
	strh r1, [r2]
	mov r0, #128
	lsl r0, r0, #2
	and r0, r0, r1
	add r7, r2, #0
	cmp r0, #0
	beq _080330F4
	mov r0, #64
	and r0, r0, r4
	cmp r0, #0
	beq _080330F4
	mov r0, #18
	mov r1, #0
	bl 0x080070E8
	mov r0, #0
	strh r0, [r5]
	strh r0, [r7]
	strh r0, [r6]
	ldr r2, _080330EC  @ =0x030019A0
	ldr r0, [r2]
	mov r1, #128
	lsl r1, r1, #14
	orr r0, r0, r1
	str r0, [r2]
	ldr r1, _080330F0  @ =0x03001744
	mov r0, #1
	strb r0, [r1]
	b _0803313A
_080330DC:
	.4byte 0x03001A1C
_080330E0:
	.4byte 0x0807DD94
_080330E4:
	.4byte 0x030012F8
_080330E8:
	.4byte 0x030012E0
_080330EC:
	.4byte 0x030019A0
_080330F0:
	.4byte 0x03001744
_080330F4:
	mov r2, r12
	ldrh r0, [r2]
	ldrh r1, [r7]
	bl 0x0806D1AC
	ldr r0, _08033114  @ =0x03001938
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #4
	and r0, r0, r1
	cmp r0, #0
	beq _08033118
	bl 0x0800EE70
	b _0803313A
	.byte 0x00
	.byte 0x00
_08033114:
	.4byte 0x03001938
_08033118:
	ldr r1, _08033124  @ =0x030012F8
	ldrh r0, [r1]
	add r0, r0, #1
	strh r0, [r1]
	b _0803313A
	.byte 0x00
	.byte 0x00
_08033124:
	.4byte 0x030012F8
_08033128:
	mov r0, #6
	mov r1, #0
	bl 0x080070E8
	mov r0, #0
	strh r0, [r5]
	ldr r1, _08033144  @ =0x030012E0
	strh r0, [r1]
	strh r0, [r6]
_0803313A:
	add sp, sp, #12
	pop {r4-r7}
	pop {r0}
	bx r0
THUMB_FUNC_END sub_08033024

	.byte 0x00
	.byte 0x00
_08033144:
	.4byte 0x030012E0
_08033148:
	push {r4,r5,lr}
	sub sp, sp, #12
	ldr r5, _08033184  @ =0x030012E8
	ldrh r0, [r5]
	cmp r0, #8
	beq _08033158
	cmp r0, #2
	bne _08033190
_08033158:
	mov r0, #7
	mov r1, #1
	bl 0x080070E8
	ldr r1, _08033188  @ =0x030012F8
	mov r0, #0
	strh r0, [r1]
	ldr r1, _0803318C  @ =0x030012E0
	strh r0, [r1]
	strh r0, [r5]
	mov r1, #0
	str r1, [sp]
	mov r0, #128
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #22
	mov r1, #8
	mov r2, #16
	mov r3, #64
	bl 0x08071990
	b _080331EE
_08033184:
	.4byte 0x030012E8
_08033188:
	.4byte 0x030012F8
_0803318C:
	.4byte 0x030012E0
_08033190:
	ldr r0, _080331CC  @ =0x03001A1C
	ldr r0, [r0]
	mov r1, #128
	lsl r1, r1, #6
	and r0, r0, r1
	cmp r0, #0
	beq _080331EE
	ldr r0, _080331D0  @ =0x0807DD94
	ldr r2, [r0]
	ldrh r0, [r2]
	ldr r4, _080331D4  @ =0x030012F8
	mov r3, #0
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080331DC
	lsl r0, r1, #2
	add r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5]
	ldr r1, _080331D8  @ =0x030012E0
	mov r3, #0
	ldrsh r0, [r4, r3]
	lsl r0, r0, #2
	add r0, r0, r2
	ldrh r0, [r0, #2]
	strh r0, [r1]
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _080331EE
_080331CC:
	.4byte 0x03001A1C
_080331D0:
	.4byte 0x0807DD94
_080331D4:
	.4byte 0x030012F8
_080331D8:
	.4byte 0x030012E0
_080331DC:
	mov r0, #7
	mov r1, #1
	bl 0x080070E8
	mov r0, #0
	strh r0, [r4]
	ldr r1, _080331F8  @ =0x030012E0
	strh r0, [r1]
	strh r0, [r5]
_080331EE:
	add sp, sp, #12
	pop {r4,r5}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_080331F8:
	.4byte 0x030012E0
_080331FC:
	push {r4-r7,lr}
	ldr r0, _08033268  @ =0x04000130
	ldrh r0, [r0]
	mvn r0, r0
	lsl r0, r0, #22
	lsr r3, r0, #22
	ldr r0, _0803326C  @ =0x030009C0
	ldr r1, [r0]
	add r6, r0, #0
	cmp r1, #5
	beq _0803321A
	ldr r0, _08033270  @ =0x030012E0
	mov r12, r0
	cmp r1, #2
	bne _08033224
_0803321A:
	ldr r0, _08033270  @ =0x030012E0
	ldr r1, _08033274  @ =0x030002AA
	ldrh r1, [r1]
	strh r1, [r0]
	mov r12, r0
_08033224:
	ldr r5, _08033278  @ =0x03001938
	ldr r4, [r5]
	mov r0, #128
	lsl r0, r0, #3
	and r0, r0, r4
	cmp r0, #0
	beq _080332BC
	ldr r2, _0803327C  @ =0x030012E8
	mov r0, r12
	ldrh r1, [r0]
	add r0, r3, #0
	bic r0, r0, r1
	strh r0, [r2]
	mov r1, r12
	strh r3, [r1]
	mov r0, #12
	and r0, r0, r3
	cmp r0, #12
	bne _08033284
	mov r0, #1
	and r0, r0, r3
	cmp r0, #0
	beq _08033284
	mov r0, #2
	and r3, r3, r0
	cmp r3, #0
	beq _08033284
	ldr r0, [r6]
	cmp r0, #7
	beq _08033284
	ldr r0, _08033280  @ =0xFFFFFBFF
	and r4, r4, r0
	str r4, [r5]
	b _080332E0
_08033268:
	.4byte 0x04000130
_0803326C:
	.4byte 0x030009C0
_08033270:
	.4byte 0x030012E0
_08033274:
	.4byte 0x030002AA
_08033278:
	.4byte 0x03001938
_0803327C:
	.4byte 0x030012E8
_08033280:
	.4byte 0xFFFFFBFF
_08033284:
	ldr r0, _08033298  @ =0x03000B80
	ldrb r0, [r0]
	lsl r0, r0, #24
	asr r0, r0, #24
	cmp r0, #5
	bne _0803329C
	bl 0x0806C2C4
	b _0803329E
	.byte 0x00
	.byte 0x00
_08033298:
	.4byte 0x03000B80
_0803329C:
	mov r0, #0
_0803329E:
	lsl r2, r0, #16
	lsr r2, r2, #16
	ldr r4, _080332B4  @ =0x030012E8
	ldr r1, _080332B8  @ =0x030012E0
	ldrh r3, [r1]
	add r0, r2, #0
	bic r0, r0, r3
	strh r0, [r4]
	strh r2, [r1]
	mov r12, r1
	b _080332E0
_080332B4:
	.4byte 0x030012E8
_080332B8:
	.4byte 0x030012E0
_080332BC:
	ldr r1, _08033330  @ =0x030012E8
	mov r2, r12
	ldrh r0, [r2]
	add r2, r3, #0
	bic r2, r2, r0
	strh r2, [r1]
	mov r0, r12
	strh r3, [r0]
	ldr r1, _08033334  @ =0x03001740
	ldrb r0, [r1]
	cmp r0, #0
	bne _080332E0
	cmp r2, #0
	bne _080332E0
	cmp r3, #0
	bne _080332E0
	mov r0, #1
	strb r0, [r1]
_080332E0:
	mov r2, r12
	ldrh r1, [r2]
	mov r0, #12
	and r0, r0, r1
	cmp r0, #12
	bne _0803334C
	mov r0, #1
	and r0, r0, r1
	cmp r0, #0
	beq _0803334C
	mov r0, #2
	and r0, r0, r1
	cmp r0, #0
	beq _0803334C
	ldr r0, _08033338  @ =0x030009C0
	ldr r0, [r0]
	cmp r0, #7
	beq _0803334C
	cmp r0, #34
	beq _0803334C
	mov r0, #7
	mov r1, #1
	bl 0x080070E8
	ldr r0, _0803333C  @ =0x03000B80
	mov r1, #0
	strb r1, [r0]
	ldr r0, _08033340  @ =0x03000B58
	strb r1, [r0]
	ldr r0, _08033344  @ =0x03000B74
	strb r1, [r0]
	ldr r0, _08033348  @ =0x03000BB4
	strb r1, [r0]
	bl 0x080720AC
	bl 0x08071C24
	mov r0, #1
	b _0803334E
	.byte 0x00
	.byte 0x00
_08033330:
	.4byte 0x030012E8
_08033334:
	.4byte 0x03001740
_08033338:
	.4byte 0x030009C0
_0803333C:
	.4byte 0x03000B80
_08033340:
	.4byte 0x03000B58
_08033344:
	.4byte 0x03000B74
_08033348:
	.4byte 0x03000BB4
_0803334C:
	mov r0, #0
_0803334E:
	add r3, r0, #0
	cmp r3, #0
	bne _08033438
	ldr r0, _0803336C  @ =0x030009C0
	ldr r1, [r0]
	cmp r1, #5
	bne _08033378
	ldr r0, _08033370  @ =0x030002AA
	ldr r1, _08033374  @ =0x030012E0
	ldrh r1, [r1]
	strh r1, [r0]
	bl 0x08033024
	b _080333C8
	.byte 0x00
	.byte 0x00
_0803336C:
	.4byte 0x030009C0
_08033370:
	.4byte 0x030002AA
_08033374:
	.4byte 0x030012E0
_08033378:
	cmp r1, #2
	bne _08033394
	ldr r0, _0803338C  @ =0x030002AA
	ldr r1, _08033390  @ =0x030012E0
	ldrh r1, [r1]
	strh r1, [r0]
	bl 0x08033148
	b _080333C8
	.byte 0x00
	.byte 0x00
_0803338C:
	.4byte 0x030002AA
_08033390:
	.4byte 0x030012E0
_08033394:
	ldr r0, _080333A8  @ =0x03000C28
	ldrb r2, [r0]
	cmp r2, #0
	beq _080333B4
	ldr r1, _080333AC  @ =0x030012E8
	ldr r0, _080333B0  @ =0x030012E0
	strh r3, [r0]
	strh r3, [r1]
	b _080333C8
	.byte 0x00
	.byte 0x00
_080333A8:
	.4byte 0x03000C28
_080333AC:
	.4byte 0x030012E8
_080333B0:
	.4byte 0x030012E0
_080333B4:
	cmp r1, #13
	bne _080333C8
	ldr r0, _08033418  @ =0x03000B54
	ldr r0, [r0]
	cmp r0, #10
	bgt _080333C8
	ldr r1, _0803341C  @ =0x030012E8
	ldr r0, _08033420  @ =0x030012E0
	strh r2, [r0]
	strh r2, [r1]
_080333C8:
	ldr r1, _08033424  @ =0x03001708
	mov r0, #0
	strh r0, [r1]
	mov r6, #0
	ldr r0, _08033420  @ =0x030012E0
	mov r12, r0
	ldr r7, _0803341C  @ =0x030012E8
	add r5, r1, #0
	ldr r4, _08033428  @ =0x030012B0
_080333DA:
	mov r0, #128
	lsl r0, r0, #9
	lsl r0, r0, r6
	lsr r2, r0, #16
	add r3, r2, #0
	ldrh r0, [r7]
	and r0, r0, r2
	cmp r0, #0
	beq _080333F4
	ldrh r1, [r5]
	add r0, r2, #0
	orr r0, r0, r1
	strh r0, [r5]
_080333F4:
	mov r1, r12
	ldrh r0, [r1]
	and r0, r0, r3
	cmp r0, #0
	beq _0803342C
	ldrb r0, [r4]
	sub r0, r0, #1
	strb r0, [r4]
	lsl r0, r0, #24
	cmp r0, #0
	bne _08033430
	mov r0, #6
	strb r0, [r4]
	ldrh r0, [r5]
	orr r3, r3, r0
	strh r3, [r5]
	b _08033430
	.byte 0x00
	.byte 0x00
_08033418:
	.4byte 0x03000B54
_0803341C:
	.4byte 0x030012E8
_08033420:
	.4byte 0x030012E0
_08033424:
	.4byte 0x03001708
_08033428:
	.4byte 0x030012B0
_0803342C:
	mov r0, #20
	strb r0, [r4]
_08033430:
	add r4, r4, #1
	add r6, r6, #1
	cmp r6, #15
	ble _080333DA
_08033438:
	pop {r4-r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_08033440
sub_08033440:
	push {r4,r5,lr}
	ldr r4, _080334AC  @ =0x030012A0
	mov r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08033450
	mov r0, #0
	strh r0, [r4]
_08033450:
	ldrh r0, [r4]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #240
	ldr r2, _080334B0  @ =0x03001720
	mov r3, #0
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _0803346A
	ldrh r0, [r2]
	sub r0, r0, #240
	lsl r0, r0, #1
	strh r0, [r4]
_0803346A:
	ldr r3, _080334B4  @ =0x03001710
	mov r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bge _08033478
	mov r0, #0
	strh r0, [r3]
_08033478:
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #160
	ldr r2, _080334B8  @ =0x0300170C
	mov r5, #0
	ldrsh r1, [r2, r5]
	cmp r0, r1
	blt _08033492
	ldrh r0, [r2]
	sub r0, r0, #160
	lsl r0, r0, #1
	strh r0, [r3]
_08033492:
	ldr r1, _080334BC  @ =0x03001724
	ldrh r0, [r4]
	lsl r0, r0, #16
	asr r0, r0, #17
	strh r0, [r1]
	ldr r1, _080334C0  @ =0x030012F4
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	strh r0, [r1]
	pop {r4,r5}
	pop {r0}
	bx r0
_080334AC:
	.4byte 0x030012A0
_080334B0:
	.4byte 0x03001720
_080334B4:
	.4byte 0x03001710
_080334B8:
	.4byte 0x0300170C
_080334BC:
	.4byte 0x03001724
_080334C0:
	.4byte 0x030012F4
THUMB_FUNC_END sub_08033440

	.INCBIN "baserom.gba", 0x334C4, 0x33C38-0x334C4
