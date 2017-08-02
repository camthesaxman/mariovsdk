#include "gba/gba.h"
#include "global.h"

struct Struct2004000
{
    u8 filler0[0xC];
    u16 unkC[0];
};

extern u8 *const gUnknown_0807820C;

int sub_080066FC(u32 *a, int b, int c, int d)
{
    return gUnknown_03000964(a, b, c, d);
}

/*
int sub_08006710(s32 *a)
{
    u32 r4 = (a[1] >> 11) * 64;
    u32 r5 = (a[3] >> 11) * 64;
    u32 r7 = (a[0] >> 11);
    u32 r6 = (a[2] >> 11);
    
    if (r6 > 63)
        r6 = 63;
    if (r5 > 0xFBF)
        r5 = 0xFC0;
    while (r4 <= r5)
    {
        u32 r2 = r4 + r7;
        u32 r3 = r4 + r6;
        
        while (r2 <= r3)
        {
            //if (gUnknown_0807820C[0x400C + r2] == 4)
            //if (((u16 *)(gUnknown_0807820C + 0x400C))[r2] == 4)
            if ((*(struct Struct2004000 *)(gUnknown_0807820C + 0x4000)).unkC[r2] == 4)
                return 1;
            r2++;
        }
        r4 += 64;
    }
    return 0;
}
*/

__attribute__((naked))
int sub_08006710(s32 *a)
{
    asm("push {r4-r7,lr}\n\
	mov r7, r8\n\
	push {r7}\n\
	ldr r1, [r0, #4]\n\
	asr r1, r1, #11\n\
	lsl r4, r1, #6\n\
	ldr r1, [r0, #12]\n\
	asr r1, r1, #11\n\
	lsl r5, r1, #6\n\
	ldr r1, [r0]\n\
	asr r7, r1, #11\n\
	ldr r0, [r0, #8]\n\
	asr r6, r0, #11\n\
	cmp r6, #63\n\
	bls _08006730\n\
	mov r6, #63\n\
_08006730:\n\
	ldr r0, _08006764  @ =0x00000FBF\n\
	cmp r5, r0\n\
	bls _0800673A\n\
	mov r5, #252\n\
	lsl r5, r5, #4\n\
_0800673A:\n\
	cmp r4, r5\n\
	bhi _0800677E\n\
	ldr r0, _08006768  @ =gUnknown_0807820C\n\
	mov r8, r0\n\
	ldr r0, _0800676C  @ =0x0000400C\n\
	mov r12, r0\n\
_08006746:\n\
	add r2, r4, r7\n\
	add r3, r4, r6\n\
	cmp r2, r3\n\
	bhi _08006778\n\
	mov r0, r8\n\
	ldr r1, [r0]\n\
	lsl r0, r2, #1\n\
	add r0, r0, r12\n\
	add r1, r0, r1\n\
_08006758:\n\
	ldrh r0, [r1]\n\
	cmp r0, #4\n\
	bne _08006770\n\
	mov r0, #1\n\
	b _08006780\n\
	.byte 0x00\n\
	.byte 0x00\n\
_08006764:\n\
	.4byte 0x00000FBF\n\
_08006768:\n\
	.4byte gUnknown_0807820C\n\
_0800676C:\n\
	.4byte 0x0000400C\n\
_08006770:\n\
	add r1, r1, #2\n\
	add r2, r2, #1\n\
	cmp r2, r3\n\
	bls _08006758\n\
_08006778:\n\
	add r4, r4, #64\n\
	cmp r4, r5\n\
	bls _08006746\n\
_0800677E:\n\
	mov r0, #0\n\
_08006780:\n\
	pop {r3}\n\
	mov r8, r3\n\
	pop {r4-r7}\n\
	pop {r1}\n\
	bx r1\n");
}

/*
int sub_0800678C(s32 *a, u32 b)
{
    s32 r1;
    s32 r2 = a[0] >> 11;
    s32 r5 = (a[1] >> 11) * 64;
    s32 r3 = a[2] >> 11;
    u16 *r4 = (u16 *)(gUnknown_0807820C + 0x400C);
    
    if (r2 == r3)
        return 0;
    r1 = r2 + r5;
    if (r1 > 0xFFF || (r4[r1] & 0x80) != b)
        return 0;
    r1 = r3 + r5;
    if (r1 > 0xFFF || (r4[r1] & 0x80) != b)
        return 0;
    return 1;
}
*/

__attribute__((naked))
int sub_0800678C(s32 *a, u32 b)
{
    asm("push {r4-r7,lr}\n\
	add r7, r1, #0\n\
	ldr r1, [r0]\n\
	asr r2, r1, #11\n\
	ldr r1, [r0, #4]\n\
	asr r1, r1, #11\n\
	lsl r5, r1, #6\n\
	ldr r0, [r0, #8]\n\
	asr r3, r0, #11\n\
	ldr r0, _080067DC  @ =gUnknown_0807820C\n\
	ldr r0, [r0]\n\
	ldr r1, _080067E0  @ =0x0000400C\n\
	add r4, r0, r1\n\
	cmp r2, r3\n\
	beq _080067D6\n\
	add r1, r2, r5\n\
	ldr r2, _080067E4  @ =0x00000FFF\n\
	cmp r1, r2\n\
	bhi _080067D6\n\
	lsl r0, r1, #1\n\
	add r0, r0, r4\n\
	ldrh r0, [r0]\n\
	mov r6, #127\n\
	add r1, r6, #0\n\
	and r1, r1, r0\n\
	cmp r1, r7\n\
	bne _080067D6\n\
	add r1, r3, r5\n\
	cmp r1, r2\n\
	bhi _080067D6\n\
	lsl r0, r1, #1\n\
	add r0, r0, r4\n\
	ldrh r0, [r0]\n\
	add r1, r6, #0\n\
	and r1, r1, r0\n\
	cmp r1, r7\n\
	beq _080067E8\n\
_080067D6:\n\
	mov r0, #0\n\
	b _080067EA\n\
	.byte 0x00\n\
	.byte 0x00\n\
_080067DC:\n\
	.4byte gUnknown_0807820C\n\
_080067E0:\n\
	.4byte 0x0000400C\n\
_080067E4:\n\
	.4byte 0x00000FFF\n\
_080067E8:\n\
	mov r0, #1\n\
_080067EA:\n\
	pop {r4-r7}\n\
	pop {r1}\n\
	bx r1\n");
}

asm(".align 2, 0");
