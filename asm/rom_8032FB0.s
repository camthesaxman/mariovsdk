	.INCLUDE "macro.inc"

	THUMB_FUNC_START sub_08033658
sub_08033658: @ 0x08033658
	push {r4-r7,lr}
	mov r7, #0
	ldr r0, _0803369C  @ =gUnknown_030002B8
	ldr r1, _080336A0  @ =gUnknown_030002B0
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
	ldr r0, _080336A4  @ =gUnknown_030002C8
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
	.4byte gUnknown_030002B8
_080336A0:
	.4byte gUnknown_030002B0
_080336A4:
	.4byte gUnknown_030002C8
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
	ldr r3, _080336D0  @ =gUnknown_030002C8
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
	.4byte gUnknown_030002C8
_080336D4:
	str r0, [r5, #4]
_080336D6:
	add r7, r7, #1
_080336D8:
	ldr r1, [r5]
	lsr r1, r1, #7
	ldr r2, [r5, #4]
	lsr r2, r2, #7
	ldr r0, _080336FC  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08033700  @ =gUnknown_03001710
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
	.4byte gUnknown_030012A0
_08033700:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_08033658

	THUMB_FUNC_START sub_08033704
sub_08033704: @ 0x08033704
	push {r4-r6,lr}
	mov r6, #0
	ldr r0, _08033738  @ =gUnknown_030002B8
	ldr r1, _0803373C  @ =gUnknown_030002B0
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
	ldr r5, _08033740  @ =gUnknown_030002C8
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
	.4byte gUnknown_030002B8
_0803373C:
	.4byte gUnknown_030002B0
_08033740:
	.4byte gUnknown_030002C8
_08033744:
	str r0, [r4]
_08033746:
	mov r6, #1
_08033748:
	ldr r1, [r4]
	lsr r1, r1, #7
	ldr r2, [r4, #4]
	lsr r2, r2, #7
	ldr r0, _08033764  @ =gUnknown_030012A0
	strh r1, [r0]
	ldr r0, _08033768  @ =gUnknown_03001710
	strh r2, [r0]
	bl 0x08033440
	add r0, r6, #0
	pop {r4-r6}
	pop {r1}
	bx r1
_08033764:
	.4byte gUnknown_030012A0
_08033768:
	.4byte gUnknown_03001710
	THUMB_FUNC_END sub_08033704

	THUMB_FUNC_START sub_0803376C
sub_0803376C: @ 0x0803376C
	push {r4-r7,lr}
	mov r6, #0
	ldr r0, _080337A4  @ =gUnknown_030002B8
	ldr r1, _080337A8  @ =gUnknown_030002B0
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
	ldr r1, _080337AC  @ =gUnknown_030002C8
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
	.4byte gUnknown_030002B8
_080337A8:
	.4byte gUnknown_030002B0
_080337AC:
	.4byte gUnknown_030002C8
_080337B0:
	str r3, [r5, #4]
_080337B2:
	mov r6, #1
_080337B4:
	ldr r0, [r5, #4]
	lsl r0, r0, #9
	asr r0, r0, #16
	mov r4, #0
	ldr r3, _080337F8  @ =gUnknown_03001710
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
	ldr r2, _080337FC  @ =gUnknown_0300170C
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
	ldr r1, _08033800  @ =gUnknown_030012F4
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
	.4byte gUnknown_03001710
_080337FC:
	.4byte gUnknown_0300170C
_08033800:
	.4byte gUnknown_030012F4
_08033804:
	mov r1, #0
	ldrsh r0, [r3, r1]
	lsl r0, r0, #7
	mov r7, r12
	str r0, [r7, #4]
	str r0, [r5, #4]
	ldr r1, _08033820  @ =gUnknown_030002C8
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
	.4byte gUnknown_030002C8
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
	ldr r4, _08033878  @ =gUnknown_030012A0
	mov r5, #0
	ldrsh r6, [r4, r5]
	ldr r5, _0803387C  @ =gUnknown_03001710
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
	.4byte gUnknown_030012A0
_0803387C:
	.4byte gUnknown_03001710
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
	ldr r3, _080338C8  @ =gUnknown_03001710
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
	.4byte gUnknown_03001710
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
	ldr r0, _08033930  @ =gUnknown_030012A0
	mov r5, #0
	ldrsh r0, [r0, r5]
	cmp r6, r0
	bne _0803391E
	ldr r0, _08033934  @ =gUnknown_03001710
	mov r7, #0
	ldrsh r0, [r0, r7]
	cmp r10, r0
	bne _0803391E
_08033912:
	ldr r0, _08033938  @ =gUnknown_03001A1C
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
	.4byte gUnknown_030012A0
_08033934:
	.4byte gUnknown_03001710
_08033938:
	.4byte gUnknown_03001A1C
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
	ldr r4, _08033988  @ =gUnknown_030012A0
	mov r6, #0
	ldrsh r5, [r4, r6]
	str r5, [sp, #4]
	ldr r5, _0803398C  @ =gUnknown_03001710
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
	.4byte gUnknown_030012A0
_0803398C:
	.4byte gUnknown_03001710
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
	ldr r4, _08033A24  @ =gUnknown_03001710
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
	.4byte gUnknown_03001710
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
	ldr r0, _08033ACC  @ =gUnknown_030012A0
	mov r7, #0
	ldrsh r0, [r0, r7]
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _08033ABA
	ldr r0, _08033AD0  @ =gUnknown_03001710
	mov r2, #0
	ldrsh r0, [r0, r2]
	cmp r10, r0
	bne _08033ABA
_08033AAE:
	ldr r0, _08033AD4  @ =gUnknown_03001A1C
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
	.4byte gUnknown_030012A0
_08033AD0:
	.4byte gUnknown_03001710
_08033AD4:
	.4byte gUnknown_03001A1C
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
	ldr r4, _08033B28  @ =gUnknown_030012A0
	mov r6, #0
	ldrsh r5, [r4, r6]
	str r5, [sp, #8]
	ldr r5, _08033B2C  @ =gUnknown_03001710
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
	.4byte gUnknown_030012A0
_08033B2C:
	.4byte gUnknown_03001710
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
	ldr r4, _08033BA0  @ =gUnknown_03001710
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
	.4byte gUnknown_03001710
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
	ldr r0, _08033C2C  @ =gUnknown_030012A0
	mov r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #8]
	cmp r2, r0
	bne _08033C18
	ldr r0, _08033C30  @ =gUnknown_03001710
	mov r3, #0
	ldrsh r0, [r0, r3]
	ldr r5, [sp, #4]
	cmp r5, r0
	bne _08033C18
_08033C0C:
	ldr r0, _08033C34  @ =gUnknown_03001A1C
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
	.4byte gUnknown_030012A0
_08033C30:
	.4byte gUnknown_03001710
_08033C34:
	.4byte gUnknown_03001A1C
	THUMB_FUNC_END sub_08033AD8

