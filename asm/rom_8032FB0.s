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

	THUMB_FUNC_START sub_080334C4
sub_080334C4: @ 0x080334C4
	push {r4-r6,lr}
	add r6, r0, #0
	ldr r0, _080334E0  @ =0x030002C0
	ldr r1, [r0]
	ldr r5, [r0, #4]
	ldr r3, _080334E4  @ =0x030002B0
	ldr r0, [r3]
	cmp r0, r1
	bne _080334EC
	ldr r1, _080334E8  @ =0x030002C8
	mov r0, #0
	str r0, [r1]
	b _08033520
	.byte 0x00
	.byte 0x00
_080334E0:
	.4byte 0x030002C0
_080334E4:
	.4byte 0x030002B0
_080334E8:
	.4byte 0x030002C8
_080334EC:
	ldr r2, _08033530  @ =0x030002B8
	str r1, [r2]
	cmp r1, #0
	bge _080334F8
	mov r0, #0
	str r0, [r2]
_080334F8:
	ldr r0, [r2]
	asr r0, r0, #8
	add r0, r0, #240
	ldr r1, _08033534  @ =0x03001720
	mov r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	blt _08033510
	add r0, r1, #0
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r2]
_08033510:
	ldr r4, _08033538  @ =0x030002C8
	ldr r0, [r2]
	ldr r1, [r3]
	sub r0, r0, r1
	add r1, r6, #0
	bl 0x08074814
	str r0, [r4]
_08033520:
	ldr r3, _0803353C  @ =0x030002B0
	ldr r0, [r3, #4]
	cmp r0, r5
	bne _08033540
	ldr r1, _08033538  @ =0x030002C8
	mov r0, #0
	str r0, [r1, #4]
	b _08033574
_08033530:
	.4byte 0x030002B8
_08033534:
	.4byte 0x03001720
_08033538:
	.4byte 0x030002C8
_0803353C:
	.4byte 0x030002B0
_08033540:
	ldr r2, _0803357C  @ =0x030002B8
	str r5, [r2, #4]
	cmp r5, #0
	bge _0803354C
	mov r0, #0
	str r0, [r2, #4]
_0803354C:
	ldr r0, [r2, #4]
	asr r0, r0, #8
	add r0, r0, #160
	ldr r1, _08033580  @ =0x0300170C
	mov r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	blt _08033564
	add r0, r1, #0
	sub r0, r0, #160
	lsl r0, r0, #8
	str r0, [r2, #4]
_08033564:
	ldr r4, _08033584  @ =0x030002C8
	ldr r0, [r2, #4]
	ldr r1, [r3, #4]
	sub r0, r0, r1
	add r1, r6, #0
	bl 0x08074814
	str r0, [r4, #4]
_08033574:
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_0803357C:
	.4byte 0x030002B8
_08033580:
	.4byte 0x0300170C
_08033584:
	.4byte 0x030002C8
	THUMB_FUNC_END sub_080334C4

	THUMB_FUNC_START sub_08033588
sub_08033588: @ 0x08033588
	push {r4-r7,lr}
	add r3, r0, #0
	add r4, r1, #0
	ldr r0, _080335A8  @ =0x030002B0
	ldr r1, [r0]
	add r6, r0, #0
	cmp r1, r3
	bne _080335B4
	ldr r0, _080335AC  @ =0x030002C8
	mov r1, #0
	str r1, [r0]
	ldr r1, _080335B0  @ =0x030002B8
	str r3, [r1]
	add r7, r0, #0
	add r5, r1, #0
	b _08033600
_080335A8:
	.4byte 0x030002B0
_080335AC:
	.4byte 0x030002C8
_080335B0:
	.4byte 0x030002B8
_080335B4:
	ldr r0, _080335EC  @ =0x030002B8
	str r3, [r0]
	add r5, r0, #0
	cmp r3, #0
	bge _080335C2
	mov r0, #0
	str r0, [r5]
_080335C2:
	ldr r0, [r5]
	asr r0, r0, #8
	add r0, r0, #240
	ldr r1, _080335F0  @ =0x03001720
	mov r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _080335DA
	add r0, r1, #0
	sub r0, r0, #240
	lsl r0, r0, #8
	str r0, [r5]
_080335DA:
	ldr r0, [r5]
	ldr r1, [r6]
	sub r0, r0, r1
	cmp r0, #0
	ble _080335F8
	ldr r0, _080335F4  @ =0x030002C8
	str r2, [r0]
	add r7, r0, #0
	b _08033600
_080335EC:
	.4byte 0x030002B8
_080335F0:
	.4byte 0x03001720
_080335F4:
	.4byte 0x030002C8
_080335F8:
	ldr r1, _08033610  @ =0x030002C8
	neg r0, r2
	str r0, [r1]
	add r7, r1, #0
_08033600:
	ldr r0, [r6, #4]
	cmp r0, r4
	bne _08033614
	mov r0, #0
	str r0, [r7, #4]
	str r4, [r5, #4]
	b _08033650
	.byte 0x00
	.byte 0x00
_08033610:
	.4byte 0x030002C8
_08033614:
	add r3, r5, #0
	str r4, [r3, #4]
	cmp r4, #0
	bge _08033620
	mov r0, #0
	str r0, [r3, #4]
_08033620:
	ldr r0, [r3, #4]
	asr r0, r0, #8
	add r0, r0, #160
	ldr r1, _08033648  @ =0x0300170C
	mov r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	blt _08033638
	add r0, r1, #0
	sub r0, r0, #160
	lsl r0, r0, #8
	str r0, [r3, #4]
_08033638:
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	sub r0, r0, r1
	cmp r0, #0
	ble _0803364C
	str r2, [r7, #4]
	b _08033650
	.byte 0x00
	.byte 0x00
_08033648:
	.4byte 0x0300170C
_0803364C:
	neg r0, r2
	str r0, [r7, #4]
_08033650:
	pop {r4-r7}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_08033588

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08033658
sub_08033658: @ 0x08033658
	push {r4-r7,lr}
	mov r7, #0
	ldr r0, _0803369C  @ =0x030002B8
	ldr r1, _080336A0  @ =0x030002B0
	ldr r3, [r0]
	ldr r4, [r1]
	sub r2, r3, r4
	mov r12, r0
	add r5, r1, #0
	cmp r2, #0
	bge _08033670
	sub r2, r4, r3
_08033670:
	mov r0, r12
	ldr r1, [r0, #4]
	ldr r0, [r5, #4]
	sub r6, r1, r0
	cmp r6, #0
	bge _0803367E
	sub r6, r0, r1
_0803367E:
	cmp r4, r3
	beq _080336AA
	ldr r0, _080336A4  @ =0x030002C8
	ldr r1, [r0]
	cmp r1, #0
	bge _0803368C
	neg r1, r1
_0803368C:
	cmp r2, r1
	ble _080336A8
	cmp r2, #255
	ble _080336A8
	ldr r0, [r0]
	add r0, r4, r0
	str r0, [r5]
	b _080336AC
_0803369C:
	.4byte 0x030002B8
_080336A0:
	.4byte 0x030002B0
_080336A4:
	.4byte 0x030002C8
_080336A8:
	str r3, [r5]
_080336AA:
	mov r7, #1
_080336AC:
	ldr r2, [r5, #4]
	mov r1, r12
	ldr r0, [r1, #4]
	cmp r2, r0
	beq _080336D6
	ldr r3, _080336D0  @ =0x030002C8
	ldr r1, [r3, #4]
	cmp r1, #0
	bge _080336C0
	neg r1, r1
_080336C0:
	cmp r6, r1
	ble _080336D4
	cmp r6, #255
	ble _080336D4
	ldr r0, [r3, #4]
	add r0, r2, r0
	str r0, [r5, #4]
	b _080336D8
_080336D0:
	.4byte 0x030002C8
_080336D4:
	str r0, [r5, #4]
_080336D6:
	add r7, r7, #1
_080336D8:
	ldr r1, [r5]
	lsr r1, r1, #7
	ldr r2, [r5, #4]
	lsr r2, r2, #7
	ldr r0, _080336FC  @ =0x030012A0
	strh r1, [r0]
	ldr r0, _08033700  @ =0x03001710
	strh r2, [r0]
	bl 0x08033440
	mov r0, #0
	cmp r7, #2
	bne _080336F4
	mov r0, #1
_080336F4:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080336FC:
	.4byte 0x030012A0
_08033700:
	.4byte 0x03001710
	THUMB_FUNC_END sub_08033658

	THUMB_FUNC_START sub_08033704
sub_08033704: @ 0x08033704
	push {r4-r6,lr}
	mov r6, #0
	ldr r0, _08033738  @ =0x030002B8
	ldr r1, _0803373C  @ =0x030002B0
	ldr r0, [r0]
	ldr r3, [r1]
	sub r2, r0, r3
	add r4, r1, #0
	cmp r2, #0
	bge _0803371A
	sub r2, r3, r0
_0803371A:
	cmp r3, r0
	beq _08033746
	ldr r5, _08033740  @ =0x030002C8
	ldr r1, [r5]
	cmp r1, #0
	bge _08033728
	neg r1, r1
_08033728:
	cmp r2, r1
	ble _08033744
	cmp r2, #255
	ble _08033744
	ldr r0, [r5]
	add r0, r3, r0
	str r0, [r4]
	b _08033748
_08033738:
	.4byte 0x030002B8
_0803373C:
	.4byte 0x030002B0
_08033740:
	.4byte 0x030002C8
_08033744:
	str r0, [r4]
_08033746:
	mov r6, #1
_08033748:
	ldr r1, [r4]
	lsr r1, r1, #7
	ldr r2, [r4, #4]
	lsr r2, r2, #7
	ldr r0, _08033764  @ =0x030012A0
	strh r1, [r0]
	ldr r0, _08033768  @ =0x03001710
	strh r2, [r0]
	bl 0x08033440
	add r0, r6, #0
	pop {r4-r6}
	pop {r1}
	bx r1
_08033764:
	.4byte 0x030012A0
_08033768:
	.4byte 0x03001710
	THUMB_FUNC_END sub_08033704

	THUMB_FUNC_START sub_0803376C
sub_0803376C: @ 0x0803376C
	push {r4-r7,lr}
	mov r6, #0
	ldr r0, _080337A4  @ =0x030002B8
	ldr r1, _080337A8  @ =0x030002B0
	ldr r3, [r0, #4]
	ldr r4, [r1, #4]
	sub r2, r3, r4
	mov r12, r0
	add r5, r1, #0
	cmp r2, #0
	bge _08033784
	sub r2, r4, r3
_08033784:
	cmp r4, r3
	beq _080337B2
	ldr r1, _080337AC  @ =0x030002C8
	ldr r0, [r1, #4]
	cmp r0, #0
	bge _08033792
	neg r0, r0
_08033792:
	cmp r2, r0
	ble _080337B0
	cmp r2, #255
	ble _080337B0
	ldr r0, [r1, #4]
	add r0, r4, r0
	str r0, [r5, #4]
	b _080337B4
	.byte 0x00
	.byte 0x00
_080337A4:
	.4byte 0x030002B8
_080337A8:
	.4byte 0x030002B0
_080337AC:
	.4byte 0x030002C8
_080337B0:
	str r3, [r5, #4]
_080337B2:
	mov r6, #1
_080337B4:
	ldr r0, [r5, #4]
	lsl r0, r0, #9
	asr r0, r0, #16
	mov r4, #0
	ldr r3, _080337F8  @ =0x03001710
	strh r0, [r3]
	cmp r0, #0
	bge _080337C8
	strh r4, [r3]
	mov r4, #1
_080337C8:
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	add r0, r0, #160
	ldr r2, _080337FC  @ =0x0300170C
	mov r7, #0
	ldrsh r1, [r2, r7]
	cmp r0, r1
	blt _080337E4
	ldrh r0, [r2]
	sub r0, r0, #160
	lsl r0, r0, #1
	strh r0, [r3]
	mov r4, #1
_080337E4:
	ldr r1, _08033800  @ =0x030012F4
	ldrh r0, [r3]
	lsl r0, r0, #16
	asr r0, r0, #17
	strh r0, [r1]
	cmp r4, #0
	bne _08033804
	add r0, r6, #0
	b _08033818
	.byte 0x00
	.byte 0x00
_080337F8:
	.4byte 0x03001710
_080337FC:
	.4byte 0x0300170C
_08033800:
	.4byte 0x030012F4
_08033804:
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #7
	mov r7, r12
	str r0, [r7, #4]
	str r0, [r5, #4]
	ldr r1, _08033820  @ =0x030002C8
	mov r0, #0
	str r0, [r1, #4]
	mov r0, #1
_08033818:
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08033820:
	.4byte 0x030002C8
	THUMB_FUNC_END sub_0803376C

	THUMB_FUNC_START sub_08033824
sub_08033824: @ 0x08033824
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r8, r3
	mov r3, #1
	str r3, [sp]
	ldr r4, _08033878  @ =0x030012A0
	mov r5, #0
	ldrsh r6, [r4, r5]
	ldr r5, _0803387C  @ =0x03001710
	mov r3, #0
	ldrsh r7, [r5, r3]
	mov r10, r7
	mov r7, #128
	mov r9, r7
	mov r7, r8
	lsl r3, r7, #17
	lsr r3, r3, #16
	str r3, [sp, #4]
	lsl r0, r0, #17
	lsr r0, r0, #16
	lsl r1, r1, #17
	lsr r1, r1, #16
	mov r8, r1
	lsl r2, r2, #17
	asr r2, r2, #16
	add r3, r6, #0
	add r3, r3, #96
	cmp r2, r3
	blt _08033888
	mov r7, #160
	lsl r7, r7, #1
	add r1, r6, r7
	cmp r2, r1
	ble _08033880
	ldrh r0, [r4]
	add r0, r0, #1
	b _0803388C
	.byte 0x00
	.byte 0x00
_08033878:
	.4byte 0x030012A0
_0803387C:
	.4byte 0x03001710
_08033880:
	lsl r0, r0, #16
	asr r0, r0, #16
	cmp r0, r3
	bge _08033894
_08033888:
	ldrh r0, [r4]
	sub r0, r0, #1
_0803388C:
	strh r0, [r4]
	bl 0x08033440
	b _080338A2
_08033894:
	cmp r0, r1
	ble _080338A2
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	bl 0x08033440
_080338A2:
	ldr r3, _080338C8  @ =0x03001710
	mov r1, #0
	ldrsh r0, [r3, r1]
	mov r2, #160
	lsl r2, r2, #1
	add r1, r0, r2
	mov r5, r9
	sub r1, r1, r5
	add r4, r1, #0
	sub r4, r4, #60
	ldr r7, [sp, #4]
	lsl r1, r7, #16
	asr r1, r1, #16
	add r2, r0, r5
	cmp r1, r2
	bge _080338CC
	ldrh r0, [r3]
	sub r0, r0, #2
	b _080338DE
_080338C8:
	.4byte 0x03001710
_080338CC:
	cmp r1, r4
	bgt _080338DA
	mov r1, r8
	lsl r0, r1, #16
	asr r0, r0, #16
	cmp r0, r2
	bge _080338E6
_080338DA:
	ldrh r0, [r3]
	add r0, r0, #2
_080338DE:
	strh r0, [r3]
	bl 0x08033440
	b _080338F8
_080338E6:
	cmp r0, r4
	ble _080338F8
	ldrh r0, [r3]
	add r0, r0, #2
	strh r0, [r3]
	bl 0x08033440
	mov r2, #0
	str r2, [sp]
_080338F8:
	ldr r3, [sp]
	cmp r3, #0
	beq _08033912
	ldr r0, _08033930  @ =0x030012A0
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r6, r0
	bne _0803391E
	ldr r0, _08033934  @ =0x03001710
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r10, r0
	bne _0803391E
_08033912:
	ldr r0, _08033938  @ =0x03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #12
	orr r1, r1, r2
	str r1, [r0]
_0803391E:
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
_08033930:
	.4byte 0x030012A0
_08033934:
	.4byte 0x03001710
_08033938:
	.4byte 0x03001A1C
	THUMB_FUNC_END sub_08033824

	THUMB_FUNC_START sub_0803393C
sub_0803393C: @ 0x0803393C
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #8
	mov r9, r3
	mov r3, #1
	str r3, [sp]
	ldr r4, _08033988  @ =0x030012A0
	mov r6, #0
	ldrsh r5, [r4, r6]
	str r5, [sp, #4]
	ldr r5, _0803398C  @ =0x03001710
	mov r3, #0
	ldrsh r7, [r5, r3]
	mov r10, r7
	mov r6, #128
	mov r8, r6
	mov r7, r9
	lsl r3, r7, #17
	lsr r3, r3, #16
	mov r9, r3
	lsl r0, r0, #17
	lsr r0, r0, #16
	mov r12, r0
	lsl r1, r1, #17
	lsr r6, r1, #16
	lsl r2, r2, #17
	asr r2, r2, #16
	ldr r3, [sp, #4]
	add r3, r3, #96
	cmp r2, r3
	bge _08033990
	ldrh r0, [r4]
	sub r0, r0, #1
	b _080339A0
	.byte 0x00
	.byte 0x00
_08033988:
	.4byte 0x030012A0
_0803398C:
	.4byte 0x03001710
_08033990:
	ldr r0, [sp, #4]
	mov r7, #160
	lsl r7, r7, #1
	add r1, r0, r7
	cmp r2, r1
	ble _080339A8
	ldrh r0, [r4]
	add r0, r0, #1
_080339A0:
	strh r0, [r4]
	bl 0x08033440
	b _080339E2
_080339A8:
	mov r2, r12
	lsl r0, r2, #16
	asr r2, r0, #16
	cmp r2, r3
	bge _080339C8
	ldrh r0, [r4]
	add r1, r0, #0
	add r1, r1, #160
	sub r1, r2, r1
	lsl r1, r1, #16
	asr r1, r1, #16
	add r1, r1, r0
	strh r1, [r4]
	bl 0x08033440
	b _080339E2
_080339C8:
	cmp r2, r1
	ble _080339E2
	ldrh r0, [r4]
	mov r3, #160
	lsl r3, r3, #1
	add r1, r0, r3
	sub r1, r2, r1
	lsl r1, r1, #16
	asr r1, r1, #16
	add r1, r1, r0
	strh r1, [r4]
	bl 0x08033440
_080339E2:
	ldr r4, _08033A24  @ =0x03001710
	mov r5, #0
	ldrsh r0, [r4, r5]
	mov r7, #160
	lsl r7, r7, #1
	add r1, r0, r7
	mov r2, r8
	sub r1, r1, r2
	add r3, r1, #0
	sub r3, r3, #60
	mov r5, r9
	lsl r1, r5, #16
	asr r1, r1, #16
	add r2, r0, r2
	cmp r1, r2
	bge _08033A30
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r0, r0, r2
	bl 0x080756CC
	ldr r2, _08033A28  @ =0x3FD00000
	ldr r3, _08033A2C  @ =0x00000000
	bl 0x08074FA8
	bl 0x08075748
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r6, [r4]
	add r0, r0, r6
	b _08033A72
	.byte 0x00
	.byte 0x00
_08033A24:
	.4byte 0x03001710
_08033A28:
	.4byte 0x3FD00000
_08033A2C:
	.4byte 0x00000000
_08033A30:
	cmp r1, r3
	ble _08033A5C
	lsl r0, r6, #16
	asr r0, r0, #16
	sub r0, r0, r3
	bl 0x080756CC
	ldr r3, _08033A58  @ =0x00000000
	ldr r2, _08033A54  @ =0x3FD00000
	bl 0x08074FA8
	bl 0x08075748
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r7, [r4]
	add r0, r0, r7
	b _08033A72
_08033A54:
	.4byte 0x3FD00000
_08033A58:
	.4byte 0x00000000
_08033A5C:
	lsl r0, r6, #16
	asr r1, r0, #16
	cmp r1, r2
	bge _08033A7A
	ldrh r3, [r4]
	mov r2, r8
	add r0, r3, r2
	sub r0, r1, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	add r0, r0, r3
_08033A72:
	strh r0, [r4]
	bl 0x08033440
	b _08033A92
_08033A7A:
	cmp r1, r3
	ble _08033A92
	sub r0, r1, r3
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r3, [r4]
	add r0, r0, r3
	strh r0, [r4]
	bl 0x08033440
	mov r5, #0
	str r5, [sp]
_08033A92:
	ldr r6, [sp]
	cmp r6, #0
	beq _08033AAE
	ldr r0, _08033ACC  @ =0x030012A0
	mov r7, #0
	ldrsh r0, [r0, r7]
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _08033ABA
	ldr r0, _08033AD0  @ =0x03001710
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r10, r0
	bne _08033ABA
_08033AAE:
	ldr r0, _08033AD4  @ =0x03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #12
	orr r1, r1, r2
	str r1, [r0]
_08033ABA:
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
_08033ACC:
	.4byte 0x030012A0
_08033AD0:
	.4byte 0x03001710
_08033AD4:
	.4byte 0x03001A1C
	THUMB_FUNC_END sub_0803393C

	THUMB_FUNC_START sub_08033AD8
sub_08033AD8: @ 0x08033AD8
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, sp, #12
	mov r9, r3
	mov r3, #1
	str r3, [sp]
	ldr r4, _08033B28  @ =0x030012A0
	mov r6, #0
	ldrsh r5, [r4, r6]
	str r5, [sp, #8]
	ldr r5, _08033B2C  @ =0x03001710
	mov r3, #0
	ldrsh r7, [r5, r3]
	str r7, [sp, #4]
	mov r6, #1
	mov r7, #128
	mov r8, r7
	mov r7, r9
	lsl r3, r7, #17
	lsr r3, r3, #16
	mov r9, r3
	lsl r0, r0, #17
	lsr r0, r0, #16
	mov r12, r0
	lsl r1, r1, #17
	lsr r1, r1, #16
	mov r10, r1
	lsl r2, r2, #17
	asr r2, r2, #16
	ldr r3, [sp, #8]
	add r3, r3, #96
	cmp r2, r3
	bge _08033B30
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	b _08033B6C
_08033B28:
	.4byte 0x030012A0
_08033B2C:
	.4byte 0x03001710
_08033B30:
	ldr r0, [sp, #8]
	mov r7, #160
	lsl r7, r7, #1
	add r1, r0, r7
	cmp r2, r1
	ble _08033B44
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	b _08033B6C
_08033B44:
	mov r2, r12
	lsl r0, r2, #16
	asr r2, r0, #16
	cmp r2, r3
	bge _08033B56
	ldrh r0, [r4]
	add r1, r0, #0
	add r1, r1, #160
	b _08033B62
_08033B56:
	cmp r2, r1
	ble _08033B72
	ldrh r0, [r4]
	mov r3, #160
	lsl r3, r3, #1
	add r1, r0, r3
_08033B62:
	sub r1, r2, r1
	lsl r1, r1, #16
	asr r1, r1, #16
	add r1, r1, r0
	strh r1, [r4]
_08033B6C:
	bl 0x08033440
	mov r6, #0
_08033B72:
	ldr r4, _08033BA0  @ =0x03001710
	mov r5, #0
	ldrsh r0, [r4, r5]
	mov r7, #160
	lsl r7, r7, #1
	add r1, r0, r7
	mov r2, r8
	sub r1, r1, r2
	add r2, r1, #0
	sub r2, r2, #60
	mov r3, r9
	lsl r1, r3, #16
	asr r1, r1, #16
	mov r5, r8
	add r3, r0, r5
	cmp r1, r3
	bge _08033BA4
	ldrh r0, [r4]
	sub r0, r0, #4
	strh r0, [r4]
	bl 0x08033440
	b _08033BEC
_08033BA0:
	.4byte 0x03001710
_08033BA4:
	cmp r1, r2
	ble _08033BB4
	ldrh r0, [r4]
	add r0, r0, #4
	strh r0, [r4]
	bl 0x08033440
	b _08033BEC
_08033BB4:
	mov r7, r10
	lsl r0, r7, #16
	asr r1, r0, #16
	cmp r1, r3
	bge _08033BD4
	ldrh r3, [r4]
	mov r2, r8
	add r0, r3, r2
	sub r0, r1, r0
	lsl r0, r0, #16
	asr r0, r0, #16
	add r0, r0, r3
	strh r0, [r4]
	bl 0x08033440
	b _08033BEC
_08033BD4:
	cmp r1, r2
	ble _08033BEE
	sub r0, r1, r2
	lsl r0, r0, #16
	asr r0, r0, #16
	ldrh r3, [r4]
	add r0, r0, r3
	strh r0, [r4]
	bl 0x08033440
	mov r5, #0
	str r5, [sp]
_08033BEC:
	mov r6, #0
_08033BEE:
	ldr r7, [sp]
	cmp r7, #0
	beq _08033C0C
	ldr r0, _08033C2C  @ =0x030012A0
	mov r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #8]
	cmp r2, r0
	bne _08033C18
	ldr r0, _08033C30  @ =0x03001710
	mov r3, #0
	ldrsh r0, [r0, r3]
	ldr r5, [sp, #4]
	cmp r5, r0
	bne _08033C18
_08033C0C:
	ldr r0, _08033C34  @ =0x03001A1C
	ldr r1, [r0]
	mov r2, #128
	lsl r2, r2, #12
	orr r1, r1, r2
	str r1, [r0]
_08033C18:
	add r0, r6, #0
	add sp, sp, #12
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08033C2C:
	.4byte 0x030012A0
_08033C30:
	.4byte 0x03001710
_08033C34:
	.4byte 0x03001A1C
	THUMB_FUNC_END sub_08033AD8

