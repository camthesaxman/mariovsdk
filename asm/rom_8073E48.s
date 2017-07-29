	.INCLUDE "macro.inc"

	@ SwitchFlashBank

	THUMB_FUNC_START sub_08073E48
sub_08073E48: @ 0x08073E48
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r3, _08073E64  @ =0x0E005555
	mov r1, #170
	strb r1, [r3]
	ldr r2, _08073E68  @ =0x0E002AAA
	mov r1, #85
	strb r1, [r2]
	mov r1, #176
	strb r1, [r3]
	mov r1, #224
	lsl r1, r1, #20
	strb r0, [r1]
	bx lr
_08073E64:
	.4byte 0x0E005555
_08073E68:
	.4byte 0x0E002AAA
	THUMB_FUNC_END sub_08073E48

	@ ReadFlashId

	THUMB_FUNC_START sub_08073E6C
sub_08073E6C: @ 0x08073E6C
	push {r4,r5,lr}
	sub sp, sp, #68
	mov r0, sp
	bl 0x0807405C
	mov r5, sp
	add r5, r5, #1
	ldr r2, _08073E94  @ =0x0E005555
	mov r0, #170
	strb r0, [r2]
	ldr r1, _08073E98  @ =0x0E002AAA
	mov r0, #85
	strb r0, [r1]
	mov r0, #144
	strb r0, [r2]
	add r1, sp, #64
	ldr r2, _08073E9C  @ =0x00004E20
	add r0, r2, #0
	b _08073EA4
	.byte 0x00
	.byte 0x00
_08073E94:
	.4byte 0x0E005555
_08073E98:
	.4byte 0x0E002AAA
_08073E9C:
	.4byte 0x00004E20
_08073EA0:
	ldrh r0, [r1]
	sub r0, r0, #1
_08073EA4:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08073EA0
	ldr r0, _08073EE0  @ =0x0E000001
	bl 0x080747EC
	lsl r0, r0, #24
	lsr r4, r0, #16
	mov r0, #224
	lsl r0, r0, #20
	bl 0x080747EC
	lsl r0, r0, #24
	lsr r0, r0, #24
	orr r4, r4, r0
	ldr r1, _08073EE4  @ =0x0E005555
	mov r0, #170
	strb r0, [r1]
	ldr r2, _08073EE8  @ =0x0E002AAA
	mov r0, #85
	strb r0, [r2]
	mov r0, #240
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #64
	ldr r2, _08073EEC  @ =0x00004E20
	add r0, r2, #0
	b _08073EF4
	.byte 0x00
	.byte 0x00
_08073EE0:
	.4byte 0x0E000001
_08073EE4:
	.4byte 0x0E005555
_08073EE8:
	.4byte 0x0E002AAA
_08073EEC:
	.4byte 0x00004E20
_08073EF0:
	ldrh r0, [r1]
	sub r0, r0, #1
_08073EF4:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08073EF0
	add r0, r4, #0
	add sp, sp, #68
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08073E6C

	@ FlashTimerIntr

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08073F08
sub_08073F08: @ 0x08073F08
	push {lr}
	ldr r1, _08073F28  @ =0x03000882
	ldrh r0, [r1]
	cmp r0, #0
	beq _08073F24
	ldrh r0, [r1]
	sub r0, r0, #1
	strh r0, [r1]
	lsl r0, r0, #16
	cmp r0, #0
	bne _08073F24
	ldr r1, _08073F2C  @ =0x03001F2C
	mov r0, #1
	strb r0, [r1]
_08073F24:
	pop {r0}
	bx r0
_08073F28:
	.4byte 0x03000882
_08073F2C:
	.4byte 0x03001F2C
	THUMB_FUNC_END sub_08073F08

	@ SetFlashTimerIntr

	THUMB_FUNC_START sub_08073F30
sub_08073F30: @ 0x08073F30
	push {lr}
	add r2, r1, #0
	lsl r0, r0, #24
	lsr r1, r0, #24
	cmp r1, #3
	bhi _08073F64
	ldr r0, _08073F54  @ =0x03000880
	strb r1, [r0]
	ldr r1, _08073F58  @ =0x03000884
	ldrb r0, [r0]
	lsl r0, r0, #2
	ldr r3, _08073F5C  @ =0x04000100
	add r0, r0, r3
	str r0, [r1]
	ldr r0, _08073F60  @ =0x08073F09
	str r0, [r2]
	mov r0, #0
	b _08073F66
_08073F54:
	.4byte 0x03000880
_08073F58:
	.4byte 0x03000884
_08073F5C:
	.4byte 0x04000100
_08073F60:
	.4byte 0x08073F09
_08073F64:
	mov r0, #1
_08073F66:
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_08073F30

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_08073F6C
sub_08073F6C: @ 0x08073F6C
	push {r4-r6,lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4-r6}
	lsl r0, r0, #24
	lsr r0, r0, #24
	ldr r1, _08073FF0  @ =0x03001F4C
	lsl r2, r0, #1
	add r2, r2, r0
	lsl r2, r2, #1
	ldr r0, [r1]
	add r2, r2, r0
	ldr r1, _08073FF4  @ =0x03000888
	ldr r0, _08073FF8  @ =0x04000208
	mov r9, r0
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, #0
	mov r1, r9
	strh r3, [r1]
	ldr r0, _08073FFC  @ =0x03000884
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _08074000  @ =0x04000200
	ldr r1, _08074004  @ =0x03000880
	mov r10, r1
	ldrb r1, [r1]
	mov r5, #8
	add r0, r5, #0
	lsl r0, r0, r1
	add r1, r0, #0
	ldrh r0, [r6]
	orr r0, r0, r1
	strh r0, [r6]
	ldr r0, _08074008  @ =0x03001F2C
	strb r3, [r0]
	ldr r1, _0807400C  @ =0x03000882
	ldrh r0, [r2]
	strh r0, [r1]
	add r2, r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	add r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _08074010  @ =0x04000202
	mov r2, r10
	ldrb r0, [r2]
	lsl r5, r5, r0
	strh r5, [r1]
	mov r0, #1
	mov r3, r9
	strh r0, [r3]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r6}
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08073FF0:
	.4byte 0x03001F4C
_08073FF4:
	.4byte 0x03000888
_08073FF8:
	.4byte 0x04000208
_08073FFC:
	.4byte 0x03000884
_08074000:
	.4byte 0x04000200
_08074004:
	.4byte 0x03000880
_08074008:
	.4byte 0x03001F2C
_0807400C:
	.4byte 0x03000882
_08074010:
	.4byte 0x04000202
	THUMB_FUNC_END sub_08073F6C

	THUMB_FUNC_START sub_08074014
sub_08074014: @ 0x08074014
	ldr r3, _08074044  @ =0x04000208
	mov r1, #0
	strh r1, [r3]
	ldr r2, _08074048  @ =0x03000884
	ldr r0, [r2]
	strh r1, [r0]
	add r0, r0, #2
	str r0, [r2]
	strh r1, [r0]
	sub r0, r0, #2
	str r0, [r2]
	ldr r2, _0807404C  @ =0x04000200
	ldr r0, _08074050  @ =0x03000880
	ldrb r0, [r0]
	mov r1, #8
	lsl r1, r1, r0
	ldrh r0, [r2]
	bic r0, r0, r1
	strh r0, [r2]
	ldr r0, _08074054  @ =0x03000888
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.byte 0x00
	.byte 0x00
_08074044:
	.4byte 0x04000208
_08074048:
	.4byte 0x03000884
_0807404C:
	.4byte 0x04000200
_08074050:
	.4byte 0x03000880
_08074054:
	.4byte 0x03000888
	THUMB_FUNC_END sub_08074014

	THUMB_FUNC_START sub_08074058
sub_08074058: @ 0x08074058
	ldrb r0, [r0]
	bx lr
	THUMB_FUNC_END sub_08074058

	THUMB_FUNC_START sub_0807405C
sub_0807405C: @ 0x0807405C
	push {lr}
	add r2, r0, #0
	ldr r1, _08074078  @ =0x03001F30
	add r0, r2, #1
	str r0, [r1]
	ldr r3, _0807407C  @ =0x08074059
	mov r0, #1
	bic r3, r3, r0
	ldr r0, _08074080  @ =0x0807405D
	ldr r1, _0807407C  @ =0x08074059
	sub r0, r0, r1
	lsl r0, r0, #15
	b _08074090
	.byte 0x00
	.byte 0x00
_08074078:
	.4byte 0x03001F30
_0807407C:
	.4byte 0x08074059
_08074080:
	.4byte 0x0807405D
_08074084:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r0, r1, #1
	lsl r0, r0, #16
_08074090:
	lsr r1, r0, #16
	cmp r1, #0
	bne _08074084
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0807405C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0807409C
sub_0807409C: @ 0x0807409C
	push {r4,lr}
	add r4, r0, #0
	sub r3, r2, #1
	cmp r2, #0
	beq _080740B8
	mov r2, #1
	neg r2, r2
_080740AA:
	ldrb r0, [r4]
	strb r0, [r1]
	add r4, r4, #1
	add r1, r1, #1
	sub r3, r3, #1
	cmp r3, r2
	bne _080740AA
_080740B8:
	pop {r4}
	pop {r0}
	bx r0
	THUMB_FUNC_END sub_0807409C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_080740C0
sub_080740C0: @ 0x080740C0
	push {r4-r7,lr}
	sub sp, sp, #128
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	lsl r3, r0, #16
	lsr r4, r3, #16
	ldr r2, _0807410C  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08074110  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _08074114  @ =0x03001F3C
	ldr r0, [r0]
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #10
	cmp r1, r0
	bne _080740F8
	lsr r0, r3, #20
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08073E48
	mov r0, #15
	and r4, r4, r0
_080740F8:
	ldr r3, _08074118  @ =0x0807409D
	mov r0, #1
	bic r3, r3, r0
	mov r2, sp
	ldr r0, _0807411C  @ =0x080740C1
	ldr r1, _08074118  @ =0x0807409D
	sub r0, r0, r1
	lsl r0, r0, #15
	b _0807412C
	.byte 0x00
	.byte 0x00
_0807410C:
	.4byte 0x04000204
_08074110:
	.4byte 0x0000FFFC
_08074114:
	.4byte 0x03001F3C
_08074118:
	.4byte 0x0807409D
_0807411C:
	.4byte 0x080740C1
_08074120:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r0, r1, #1
	lsl r0, r0, #16
_0807412C:
	lsr r1, r0, #16
	cmp r1, #0
	bne _08074120
	mov r3, sp
	add r3, r3, #1
	ldr r0, _08074158  @ =0x03001F3C
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsl r4, r4, r0
	add r0, r4, #0
	mov r2, #224
	lsl r2, r2, #20
	add r1, r5, r2
	add r0, r0, r1
	add r1, r6, #0
	add r2, r7, #0
	bl 0x080747E4
	add sp, sp, #128
	pop {r4-r7}
	pop {r0}
	bx r0
_08074158:
	.4byte 0x03001F3C
	THUMB_FUNC_END sub_080740C0

	THUMB_FUNC_START sub_0807415C
sub_0807415C: @ 0x0807415C
	push {r4,r5,lr}
	add r5, r0, #0
	add r3, r1, #0
	sub r4, r2, #1
	cmp r2, #0
	beq _08074182
	mov r2, #1
	neg r2, r2
_0807416C:
	ldrb r1, [r3]
	ldrb r0, [r5]
	add r5, r5, #1
	add r3, r3, #1
	cmp r1, r0
	beq _0807417C
	sub r0, r3, #1
	b _08074184
_0807417C:
	sub r4, r4, #1
	cmp r4, r2
	bne _0807416C
_08074182:
	mov r0, #0
_08074184:
	pop {r4,r5}
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_0807415C

	.byte 0x00
	.byte 0x00
	THUMB_FUNC_START sub_0807418C
sub_0807418C: @ 0x0807418C
	push {r4,r5,lr}
	sub sp, sp, #256
	add r5, r1, #0
	lsl r3, r0, #16
	lsr r4, r3, #16
	ldr r2, _080741D4  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080741D8  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
	ldr r0, _080741DC  @ =0x03001F3C
	ldr r0, [r0]
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #10
	cmp r1, r0
	bne _080741C0
	lsr r0, r3, #20
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08073E48
	mov r0, #15
	and r4, r4, r0
_080741C0:
	ldr r3, _080741E0  @ =0x0807415D
	mov r0, #1
	bic r3, r3, r0
	mov r2, sp
	ldr r0, _080741E4  @ =0x0807418D
	ldr r1, _080741E0  @ =0x0807415D
	sub r0, r0, r1
	lsl r0, r0, #15
	b _080741F4
	.byte 0x00
	.byte 0x00
_080741D4:
	.4byte 0x04000204
_080741D8:
	.4byte 0x0000FFFC
_080741DC:
	.4byte 0x03001F3C
_080741E0:
	.4byte 0x0807415D
_080741E4:
	.4byte 0x0807418D
_080741E8:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r0, r1, #1
	lsl r0, r0, #16
_080741F4:
	lsr r1, r0, #16
	cmp r1, #0
	bne _080741E8
	mov r3, sp
	add r3, r3, #1
	ldr r0, _08074220  @ =0x03001F3C
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsl r4, r4, r1
	add r1, r4, #0
	mov r2, #224
	lsl r2, r2, #20
	add r1, r1, r2
	ldrh r2, [r0, #4]
	add r0, r5, #0
	bl 0x080747E4
	add sp, sp, #256
	pop {r4,r5}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08074220:
	.4byte 0x03001F3C
	THUMB_FUNC_END sub_0807418C

	THUMB_FUNC_START sub_08074224
sub_08074224: @ 0x08074224
	push {r4-r6,lr}
	sub sp, sp, #256
	add r5, r1, #0
	add r6, r2, #0
	lsl r2, r0, #16
	lsr r4, r2, #16
	ldr r0, _0807426C  @ =0x03001F3C
	ldr r0, [r0]
	ldr r1, [r0]
	mov r0, #128
	lsl r0, r0, #10
	cmp r1, r0
	bne _0807424C
	lsr r0, r2, #20
	lsl r0, r0, #24
	lsr r0, r0, #24
	bl 0x08073E48
	mov r0, #15
	and r4, r4, r0
_0807424C:
	ldr r2, _08074270  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08074274  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
	ldr r3, _08074278  @ =0x0807415D
	mov r0, #1
	bic r3, r3, r0
	mov r2, sp
	ldr r0, _0807427C  @ =0x0807418D
	ldr r1, _08074278  @ =0x0807415D
	sub r0, r0, r1
	lsl r0, r0, #15
	b _0807428C
_0807426C:
	.4byte 0x03001F3C
_08074270:
	.4byte 0x04000204
_08074274:
	.4byte 0x0000FFFC
_08074278:
	.4byte 0x0807415D
_0807427C:
	.4byte 0x0807418D
_08074280:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r0, r1, #1
	lsl r0, r0, #16
_0807428C:
	lsr r1, r0, #16
	cmp r1, #0
	bne _08074280
	mov r3, sp
	add r3, r3, #1
	ldr r0, _080742B8  @ =0x03001F3C
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsl r4, r4, r1
	add r1, r4, #0
	mov r0, #224
	lsl r0, r0, #20
	add r1, r1, r0
	add r0, r5, #0
	add r2, r6, #0
	bl 0x080747E4
	add sp, sp, #256
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080742B8:
	.4byte 0x03001F3C
	THUMB_FUNC_END sub_08074224

	THUMB_FUNC_START sub_080742BC
sub_080742BC: @ 0x080742BC
	push {r4-r6,lr}
	add r5, r1, #0
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r6, #0
	b _080742CE
_080742C8:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
_080742CE:
	cmp r6, #2
	bhi _080742F4
	ldr r0, _080742FC  @ =0x03001F38
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl 0x080747E0
	lsl r0, r0, #16
	lsr r2, r0, #16
	cmp r2, #0
	bne _080742C8
	add r0, r4, #0
	add r1, r5, #0
	bl 0x0807418C
	add r2, r0, #0
	cmp r2, #0
	bne _080742C8
_080742F4:
	add r0, r2, #0
	pop {r4-r6}
	pop {r1}
	bx r1
_080742FC:
	.4byte 0x03001F38
	THUMB_FUNC_END sub_080742BC

	THUMB_FUNC_START sub_08074300
sub_08074300: @ 0x08074300
	push {r4-r7,lr}
	add r5, r1, #0
	add r7, r2, #0
	lsl r0, r0, #16
	lsr r4, r0, #16
	mov r6, #0
	b _08074314
_0807430E:
	add r0, r6, #1
	lsl r0, r0, #24
	lsr r6, r0, #24
_08074314:
	cmp r6, #2
	bhi _0807433C
	ldr r0, _08074344  @ =0x03001F38
	ldr r2, [r0]
	add r0, r4, #0
	add r1, r5, #0
	bl 0x080747E0
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #0
	bne _0807430E
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl 0x08074224
	add r3, r0, #0
	cmp r3, #0
	bne _0807430E
_0807433C:
	add r0, r3, #0
	pop {r4-r7}
	pop {r1}
	bx r1
_08074344:
	.4byte 0x03001F38
	THUMB_FUNC_END sub_08074300

	THUMB_FUNC_START sub_08074348
sub_08074348: @ 0x08074348
	push {r4,lr}
	ldr r2, _08074368  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0807436C  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
	bl 0x08073E6C
	lsl r0, r0, #16
	lsr r3, r0, #16
	ldr r2, _08074370  @ =0x08077FAC
	mov r4, #1
	b _08074376
	.byte 0x00
	.byte 0x00
_08074368:
	.4byte 0x04000204
_0807436C:
	.4byte 0x0000FFFC
_08074370:
	.4byte 0x08077FAC
_08074374:
	add r2, r2, #4
_08074376:
	ldr r1, [r2]
	add r0, r1, #0
	add r0, r0, #40
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807438A
	ldrh r0, [r1, #40]
	cmp r3, r0
	bne _08074374
	mov r4, #0
_0807438A:
	ldr r1, _080743C4  @ =0x03001F38
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080743C8  @ =0x03001F44
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _080743CC  @ =0x03001F48
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _080743D0  @ =0x03001F34
	ldr r0, [r2]
	ldr r0, [r0, #12]
	str r0, [r1]
	ldr r1, _080743D4  @ =0x03001F4C
	ldr r0, [r2]
	ldr r0, [r0, #16]
	str r0, [r1]
	ldr r1, _080743D8  @ =0x03001F3C
	ldr r0, [r2]
	add r0, r0, #20
	str r0, [r1]
	add r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080743C4:
	.4byte 0x03001F38
_080743C8:
	.4byte 0x03001F44
_080743CC:
	.4byte 0x03001F48
_080743D0:
	.4byte 0x03001F34
_080743D4:
	.4byte 0x03001F4C
_080743D8:
	.4byte 0x03001F3C
	THUMB_FUNC_END sub_08074348

	THUMB_FUNC_START sub_080743DC
sub_080743DC: @ 0x080743DC
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	add r4, r0, #0
	add r5, r1, #0
	lsl r4, r4, #24
	lsr r4, r4, #24
	lsl r2, r2, #24
	lsr r6, r2, #24
	mov r0, #0
	mov r8, r0
	add r0, r4, #0
	bl 0x08073F6C
	ldr r7, _08074404  @ =0x03001F30
	mov r0, #192
	lsl r0, r0, #8
	orr r4, r4, r0
	lsl r4, r4, #16
	b _08074428
_08074404:
	.4byte 0x03001F30
_08074408:
	ldr r0, _08074420  @ =0x03001F3C
	ldr r0, [r0]
	ldrb r0, [r0, #20]
	cmp r0, #194
	bne _08074418
	ldr r1, _08074424  @ =0x0E005555
	mov r0, #240
	strb r0, [r1]
_08074418:
	lsr r4, r4, #16
	mov r8, r4
	b _08074450
	.byte 0x00
	.byte 0x00
_08074420:
	.4byte 0x03001F3C
_08074424:
	.4byte 0x0E005555
_08074428:
	ldr r1, [r7]
	add r0, r5, #0
	bl 0x080747DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, r6
	beq _08074450
	ldr r0, _08074460  @ =0x03001F2C
	ldrb r0, [r0]
	cmp r0, #0
	beq _08074428
	ldr r1, [r7]
	add r0, r5, #0
	bl 0x080747DC
	lsl r0, r0, #24
	lsr r0, r0, #24
	cmp r0, r6
	bne _08074408
_08074450:
	bl 0x08074014
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r1}
	bx r1
_08074460:
	.4byte 0x03001F2C
	THUMB_FUNC_END sub_080743DC

	THUMB_FUNC_START sub_08074464
sub_08074464: @ 0x08074464
	push {r4-r6,lr}
	sub sp, sp, #64
	ldr r5, _080744C0  @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _080744C4  @ =0x0000FFFC
	and r1, r1, r6
	ldr r0, _080744C8  @ =0x03001F3C
	ldr r0, [r0]
	ldrh r0, [r0, #16]
	orr r1, r1, r0
	strh r1, [r5]
	ldr r1, _080744CC  @ =0x0E005555
	mov r4, #170
	strb r4, [r1]
	ldr r3, _080744D0  @ =0x0E002AAA
	mov r2, #85
	strb r2, [r3]
	mov r0, #128
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	mov r0, #16
	strb r0, [r1]
	mov r0, sp
	bl 0x0807405C
	ldr r0, _080744D4  @ =0x03001F34
	mov r1, #224
	lsl r1, r1, #20
	ldr r3, [r0]
	mov r0, #3
	mov r2, #255
	bl 0x080747E4
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r5]
	and r1, r1, r6
	mov r2, #3
	orr r1, r1, r2
	strh r1, [r5]
	add sp, sp, #64
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_080744C0:
	.4byte 0x04000204
_080744C4:
	.4byte 0x0000FFFC
_080744C8:
	.4byte 0x03001F3C
_080744CC:
	.4byte 0x0E005555
_080744D0:
	.4byte 0x0E002AAA
_080744D4:
	.4byte 0x03001F34
	THUMB_FUNC_END sub_08074464

	THUMB_FUNC_START sub_080744D8
sub_080744D8: @ 0x080744D8
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, sp, #64
	lsl r0, r0, #16
	lsr r3, r0, #16
	cmp r3, #15
	bhi _08074560
	ldr r6, _08074548  @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _0807454C  @ =0x0000FFFC
	mov r8, r0
	and r1, r1, r0
	ldr r0, _08074550  @ =0x03001F3C
	ldr r2, [r0]
	ldrh r0, [r2, #16]
	orr r1, r1, r0
	strh r1, [r6]
	ldrb r4, [r2, #8]
	lsl r3, r3, r4
	add r4, r3, #0
	mov r2, #224
	lsl r2, r2, #20
	add r4, r4, r2
	ldr r1, _08074554  @ =0x0E005555
	mov r5, #170
	strb r5, [r1]
	ldr r3, _08074558  @ =0x0E002AAA
	mov r2, #85
	strb r2, [r3]
	mov r0, #128
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	mov r0, #48
	strb r0, [r4]
	mov r0, sp
	bl 0x0807405C
	ldr r0, _0807455C  @ =0x03001F34
	ldr r3, [r0]
	mov r0, #2
	add r1, r4, #0
	mov r2, #255
	bl 0x080747E4
	lsl r0, r0, #16
	lsr r0, r0, #16
	ldrh r1, [r6]
	mov r2, r8
	and r1, r1, r2
	mov r2, #3
	orr r1, r1, r2
	strh r1, [r6]
	b _08074562
	.byte 0x00
	.byte 0x00
_08074548:
	.4byte 0x04000204
_0807454C:
	.4byte 0x0000FFFC
_08074550:
	.4byte 0x03001F3C
_08074554:
	.4byte 0x0E005555
_08074558:
	.4byte 0x0E002AAA
_0807455C:
	.4byte 0x03001F34
_08074560:
	ldr r0, _08074570  @ =0x000080FF
_08074562:
	add sp, sp, #64
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r1}
	bx r1
	.byte 0x00
	.byte 0x00
_08074570:
	.4byte 0x000080FF
	THUMB_FUNC_END sub_080744D8

	THUMB_FUNC_START sub_08074574
sub_08074574: @ 0x08074574
	push {r4,lr}
	ldr r4, _080745A0  @ =0x0E005555
	mov r2, #170
	strb r2, [r4]
	ldr r3, _080745A4  @ =0x0E002AAA
	mov r2, #85
	strb r2, [r3]
	mov r2, #160
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _080745A8  @ =0x03001F34
	ldrb r2, [r0]
	ldr r3, [r3]
	mov r0, #1
	bl 0x080747E4
	lsl r0, r0, #16
	lsr r0, r0, #16
	pop {r4}
	pop {r1}
	bx r1
_080745A0:
	.4byte 0x0E005555
_080745A4:
	.4byte 0x0E002AAA
_080745A8:
	.4byte 0x03001F34
	THUMB_FUNC_END sub_08074574

	THUMB_FUNC_START sub_080745AC
sub_080745AC: @ 0x080745AC
	push {r4-r7,lr}
	mov r7, r9
	mov r6, r8
	push {r6,r7}
	sub sp, sp, #96
	mov r9, r1
	lsl r0, r0, #16
	lsr r0, r0, #16
	mov r8, r0
	cmp r0, #15
	bls _080745CC
	ldr r0, _080745C8  @ =0x000080FF
	b _080746BA
	.byte 0x00
	.byte 0x00
_080745C8:
	.4byte 0x000080FF
_080745CC:
	ldr r0, _080745EC  @ =0x03001F3C
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsl r7, r7, r0
	mov r0, #224
	lsl r0, r0, #20
	add r7, r7, r0
	ldr r1, _080745F0  @ =0x080746D1
	mov r0, #1
	add r3, r1, #0
	bic r3, r3, r0
	mov r2, sp
	ldr r0, _080745F4  @ =0x080746F5
	sub r0, r0, r1
	b _08074602
_080745EC:
	.4byte 0x03001F3C
_080745F0:
	.4byte 0x080746D1
_080745F4:
	.4byte 0x080746F5
_080745F8:
	ldrh r0, [r3]
	strh r0, [r2]
	add r3, r3, #2
	add r2, r2, #2
	sub r0, r1, #2
_08074602:
	lsl r0, r0, #16
	lsr r1, r0, #16
	cmp r1, #0
	bne _080745F8
	mov r4, #0
	b _08074618
_0807460E:
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, #81
	beq _080746B8
_08074618:
	mov r0, r8
	bl 0x080744D8
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _0807460E
	add r0, r7, #0
	mov r1, sp
	add r1, r1, #1
	bl 0x080746F4
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _0807460E
	mov r6, #1
	cmp r4, #0
	beq _08074640
	mov r6, #6
_08074640:
	mov r4, #1
	cmp r4, r6
	bhi _08074656
_08074646:
	mov r0, r8
	bl 0x080744D8
	add r0, r4, #1
	lsl r0, r0, #24
	lsr r4, r0, #24
	cmp r4, r6
	bls _08074646
_08074656:
	mov r0, sp
	bl 0x0807405C
	ldr r3, _08074678  @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _0807467C  @ =0x0000FFFC
	and r1, r1, r0
	ldr r0, _08074680  @ =0x03001F3C
	ldr r2, [r0]
	ldrh r0, [r2, #16]
	orr r1, r1, r0
	strh r1, [r3]
	ldr r1, _08074684  @ =0x03001F40
	ldr r0, [r2, #4]
	strh r0, [r1]
	add r4, r1, #0
	b _08074694
_08074678:
	.4byte 0x04000204
_0807467C:
	.4byte 0x0000FFFC
_08074680:
	.4byte 0x03001F3C
_08074684:
	.4byte 0x03001F40
_08074688:
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #1
	add r9, r9, r0
	add r7, r7, #1
_08074694:
	ldrh r0, [r4]
	cmp r0, #0
	beq _080746AA
	mov r0, r9
	add r1, r7, #0
	bl 0x08074574
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08074688
_080746AA:
	ldr r2, _080746C8  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080746CC  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
_080746B8:
	add r0, r5, #0
_080746BA:
	add sp, sp, #96
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r7}
	pop {r1}
	bx r1
_080746C8:
	.4byte 0x04000204
_080746CC:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_080745AC

	THUMB_FUNC_START sub_080746D0
sub_080746D0: @ 0x080746D0
	push {lr}
	add r2, r0, #0
	ldr r0, _080746DC  @ =0x03001F3C
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _080746E2
_080746DC:
	.4byte 0x03001F3C
_080746E0:
	sub r1, r1, #1
_080746E2:
	cmp r1, #0
	beq _080746EE
	ldrb r0, [r2]
	add r2, r2, #1
	cmp r0, #255
	beq _080746E0
_080746EE:
	add r0, r1, #0
	pop {r1}
	bx r1
	THUMB_FUNC_END sub_080746D0

	THUMB_FUNC_START sub_080746F4
sub_080746F4: @ 0x080746F4
	push {lr}
	bl 0x080747DC
	cmp r0, #0
	bne _08074702
	mov r0, #0
	b _08074704
_08074702:
	ldr r0, _08074708  @ =0x00008004
_08074704:
	pop {r1}
	bx r1
_08074708:
	.4byte 0x00008004
	THUMB_FUNC_END sub_080746F4

	THUMB_FUNC_START sub_0807470C
sub_0807470C: @ 0x0807470C
	push {r4-r7,lr}
	sub sp, sp, #64
	add r7, r1, #0
	lsl r0, r0, #16
	lsr r4, r0, #16
	ldr r0, _08074724  @ =0x03001F3C
	ldr r0, [r0]
	ldrh r0, [r0, #10]
	cmp r4, r0
	bcc _0807472C
	ldr r0, _08074728  @ =0x000080FF
	b _080747A8
_08074724:
	.4byte 0x03001F3C
_08074728:
	.4byte 0x000080FF
_0807472C:
	add r0, r4, #0
	bl 0x080744D8
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	bne _080747A6
	mov r0, sp
	bl 0x0807405C
	ldr r3, _08074768  @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _0807476C  @ =0x0000FFFC
	and r1, r1, r0
	ldr r0, _08074770  @ =0x03001F3C
	ldr r2, [r0]
	ldrh r0, [r2, #16]
	orr r1, r1, r0
	strh r1, [r3]
	ldr r1, _08074774  @ =0x03001F40
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsl r4, r4, r0
	mov r0, #224
	lsl r0, r0, #20
	add r4, r4, r0
	add r6, r1, #0
	b _08074782
	.byte 0x00
	.byte 0x00
_08074768:
	.4byte 0x04000204
_0807476C:
	.4byte 0x0000FFFC
_08074770:
	.4byte 0x03001F3C
_08074774:
	.4byte 0x03001F40
_08074778:
	ldrh r0, [r6]
	sub r0, r0, #1
	strh r0, [r6]
	add r7, r7, #1
	add r4, r4, #1
_08074782:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08074798
	add r0, r7, #0
	add r1, r4, #0
	bl 0x08074574
	lsl r0, r0, #16
	lsr r5, r0, #16
	cmp r5, #0
	beq _08074778
_08074798:
	ldr r2, _080747B0  @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080747B4  @ =0x0000FFFC
	and r0, r0, r1
	mov r1, #3
	orr r0, r0, r1
	strh r0, [r2]
_080747A6:
	add r0, r5, #0
_080747A8:
	add sp, sp, #64
	pop {r4-r7}
	pop {r1}
	bx r1
_080747B0:
	.4byte 0x04000204
_080747B4:
	.4byte 0x0000FFFC
	THUMB_FUNC_END sub_0807470C

	THUMB_FUNC_START sub_080747B8
sub_080747B8: @ 0x080747B8
	ldr r3, _080747D0  @ =0x080000B2
	ldrb r0, [r3]
	sub r0, r0, #150
	beq _080747CC
	ldr r2, _080747D4  @ =0x04000134
	ldrh r0, [r2]
	lsr r0, r0, #14
	cmp r0, #3
	bne _080747CC
	svc #38
_080747CC:
	bx lr
	.byte 0x00
	.byte 0x00
_080747D0:
	.4byte 0x080000B2
_080747D4:
	.4byte 0x04000134
	THUMB_FUNC_END sub_080747B8
