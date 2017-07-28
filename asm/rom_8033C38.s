	.INCLUDE "macro.inc"

THUMB_FUNC_START sub_08033C38
sub_08033C38:
	ldr r3, _08033C64  @ =0x04000208
	mov r0, #0
	strh r0, [r3]
	ldr r2, _08033C68  @ =0x04000200
	ldrh r0, [r2]
	mov r1, #32
	orr r0, r0, r1
	strh r0, [r2]
	ldr r1, _08033C6C  @ =0x03001714
	mov r0, #0
	str r0, [r1]
	ldr r1, _08033C70  @ =0x04000108
	mov r0, #128
	lsl r0, r0, #16
	str r0, [r1]
	add r1, r1, #4
	mov r0, #132
	lsl r0, r0, #16
	str r0, [r1]
	mov r0, #1
	strh r0, [r3]
	bx lr
_08033C64:
	.4byte 0x04000208
_08033C68:
	.4byte 0x04000200
_08033C6C:
	.4byte 0x03001714
_08033C70:
	.4byte 0x04000108
THUMB_FUNC_END sub_08033C38

_08033C74:
	ldr r3, _08033C90  @ =0x04000208
	mov r0, #0
	strh r0, [r3]
	ldr r2, _08033C94  @ =0x03001718
	ldr r0, _08033C98  @ =0x0400010C
	ldrh r0, [r0]
	lsl r0, r0, #16
	ldr r1, _08033C9C  @ =0x04000108
	ldrh r1, [r1]
	orr r0, r0, r1
	str r0, [r2]
	mov r0, #1
	strh r0, [r3]
	bx lr
_08033C90:
	.4byte 0x04000208
_08033C94:
	.4byte 0x03001718
_08033C98:
	.4byte 0x0400010C
_08033C9C:
	.4byte 0x04000108
_08033CA0:
	ldr r3, _08033CC0  @ =0x04000208
	mov r0, #0
	strh r0, [r3]
	ldr r0, _08033CC4  @ =0x04000108
	mov r1, #0
	str r1, [r0]
	add r0, r0, #4
	str r1, [r0]
	ldr r2, _08033CC8  @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08033CCC  @ =0x0000FFDF
	and r0, r0, r1
	strh r0, [r2]
	mov r0, #1
	strh r0, [r3]
	bx lr
_08033CC0:
	.4byte 0x04000208
_08033CC4:
	.4byte 0x04000108
_08033CC8:
	.4byte 0x04000200
_08033CCC:
	.4byte 0x0000FFDF
_08033CD0:
	push {lr}
	bl sub_08033CE0
	bl 0x08033D1C
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
.globl sub_08033CE0
sub_08033CE0:
	sub sp, sp, #4
	mov r2, #0
	str r2, [sp]
	ldr r0, _08033D10  @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	mov r1, #128
	lsl r1, r1, #18
	str r1, [r0, #4]
	ldr r1, _08033D14  @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	mov r1, #192
	lsl r1, r1, #18
	str r1, [r0, #4]
	ldr r1, _08033D18  @ =0x85001F80
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add sp, sp, #4
	bx lr
	.byte 0x00
	.byte 0x00
_08033D10:
	.4byte 0x040000D4
_08033D14:
	.4byte 0x85010000
_08033D18:
	.4byte 0x85001F80
_08033D1C:
	push {lr}
	bl 0x08033D30
	bl 0x08032FB0
	bl 0x08033D58
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033D30:
	push {lr}
	sub sp, sp, #4
	mov r1, #252
	mov r0, sp
	strh r1, [r0]
	mov r3, sp
	mov r2, #192
	lsl r2, r2, #19
	mov r1, #192
	lsl r1, r1, #8
_08033D44:
	ldrh r0, [r3]
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	cmp r1, #0
	bne _08033D44
	add sp, sp, #4
	pop {r0}
	bx r0
	.byte 0x00
	.byte 0x00
_08033D58:
	sub sp, sp, #4
	mov r1, sp
	mov r0, #0
	strh r0, [r1]
	ldr r1, _08033D78  @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	mov r0, #160
	lsl r0, r0, #19
	str r0, [r1, #4]
	ldr r0, _08033D7C  @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, sp, #4
	bx lr
	.byte 0x00
	.byte 0x00
_08033D78:
	.4byte 0x040000D4
_08033D7C:
	.4byte 0x81000200

	.INCBIN "baserom.gba", 0x33D80
