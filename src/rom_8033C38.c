#include "gba/gba.h"
#include "global.h"

#define EWRAM 0x02000000
#define IWRAM 0x03000000

void sub_08033C38(void)
{
    REG_IME = 0;
    REG_IE |= INTR_FLAG_TIMER2;
    gUnknown_03001714 = 0;
    REG_TM2CNT = (TIMER_ENABLE) << 16;
    REG_TM3CNT = (TIMER_ENABLE | TIMER_COUNT_UP) << 16;
    REG_IME = 1;
}

void sub_08033C74(void)
{
    REG_IME = 0;
    gUnknown_03001718 = (REG_TM3CNT_L << 16) | REG_TM2CNT_L;
    REG_IME = 1;
}

void sub_08033CA0(void)
{
    REG_IME = 0;
    REG_TM2CNT = 0;
    REG_TM3CNT = 0;
    REG_IE &= ~INTR_FLAG_TIMER2;
    REG_IME = 1;
}

void sub_08033CD0(void)
{
    sub_08033CE0();
    sub_08033D1C();
}

// 0x08033CE0
void sub_08033CE0(void)
{
    DmaFill32(3, 0, (void *)EWRAM, 0x40000);
    DmaFill32(3, 0, (void *)IWRAM, 0x7E00);
}

void sub_08033D1C(void)
{
    sub_08033D30();
    sub_08032FB0();
    sub_08033D58();
}

void sub_08033D30(void)
{
    int i;
    u16 var = 252;
    u16 *ptr = &var;  // Why would you do this?

    for (i = 0; i < 0xC000; i++)
        *((u16 *)VRAM + i) = *ptr;
}

void sub_08033D58(void)
{
    DmaFill16(3, 0, (void *)PLTT, 0x400);
}

// Maybe inline functions that got placed here?

s16 sub_08033D80(s16 a, s16 b)
{
    s32 var;

    var = a * b;
    var /= 256;
    return var;
}

s16 sub_08033D9C(s16 a, s16 b)
{
    return 256 * a / b;
}

s16 sub_08033DB4(s16 a)
{
    s32 var = 0x10000;
    
    return var / a;
}

void sub_08033DCC(void)
{
    sub_0802BEEC(&gUnknown_030012D0);
    sub_0802BFA4();
    sub_0802C144(gUnknown_030012D0.unk6);
    sub_0802C058();
    sub_0807194C();
    sub_080000FC_t();
    if (gUnknown_030012C0 != NULL)
    {
        if (gUnknown_03001700 == 0)
        {
            sub_08033EC8();
            gUnknown_03001748 = 0;
            CpuCopy16(&gUnknown_03001730, &gUnknown_030012D0, 16);
            sub_0802BEEC(&gUnknown_030012D0);
            sub_0802BE74();
            gUnknown_030012C0();
            sub_08033EC8();
        }
    }
    else
    {
        sub_08033EC8();
        sub_08033EC8();
    }
    gUnknown_03001748++;
    sub_08071800();
    sub_08000114_t();
}

void sub_08033E60(void)
{
    sub_08033EBC();
    gUnknown_030012C0 = sub_08034138;
    DmaCopy16(3, interrupt_main, gUnknown_03001300, 0x400);
    gUnknown_03007FFC = gUnknown_03001300;
}

void sub_08033EA0(void (*func)(void))
{
    gUnknown_030012C0 = func;
    if (gUnknown_030012C0 == NULL)
        gUnknown_030012C0 = sub_08034138;
}

void sub_08033EBC(void)
{
    gUnknown_03001700 = 0;
}

void sub_08033EC8(void)
{
    REG_IF = INTR_FLAG_VBLANK;
    gUnknown_03001700++;
}

void sub_08033EE0(void)
{
    gUnknown_03001700 = 0;
    while (gUnknown_03001700 < 2)
        ;
}

void sub_08033EF8(void (*func)(void))
{
    gUnknown_030012FC = func;
    if (gUnknown_030012FC == NULL)
        gUnknown_030012FC = sub_08034138;
}

void sub_08033F14(void)
{
    gUnknown_0300171C &= ~INTR_FLAG_HBLANK;
}

void sub_08033F28(void)
{
    REG_IF = INTR_FLAG_HBLANK;
    gUnknown_0300171C = INTR_FLAG_HBLANK;
}

void sub_08033F3C(void (*func)(void))
{
    gUnknown_030012A8 = func;
    if (gUnknown_030012A8 == NULL)
        gUnknown_030012A8 = sub_08034138;
}

void sub_08033F58(void)
{
    gUnknown_0300171C &= ~INTR_FLAG_VCOUNT;
}

void sub_08033F6C(void)
{
    REG_IF = INTR_FLAG_VCOUNT;
    gUnknown_0300171C = INTR_FLAG_VCOUNT;
}

void sub_08033F80(s16 a, s16 b)
{
    gUnknown_030012A0 += a;
    gUnknown_03001710 += b;
    sub_08033440();
}

void sub_08033FAC(s16 a, s16 b)
{
    gUnknown_030012A0 = a;
    gUnknown_03001710 = b;
    sub_08033440();
}

void sub_08033FC8(void)
{
    s32 i;
    
    gUnknown_030012E0 = 0xFFFF;
    gUnknown_030012E8 = 0;
    gUnknown_03001708 = 0;
    for (i = 0; i < 16; i++)
        gUnknown_030012B0[i] = 20;
}

int sub_08034004(void)
{
    if (gUnknown_03001740 != 0 && (gUnknown_030012E8 & 9))
        return TRUE;
    else
        return FALSE;
}

// Converts number to string. Appears to be unused.
u8 *sub_08034030(u32 num, char *str, u32 digits)
{
    u32 i;
    u32 j;
    
    if (str == NULL)
        str = gUnknown_030002A0;
    for (i = 0; i < digits; i++, num /= 10)
    {
        j = num % 10;
        str[i] = 48 + j;
    }
    // Reverse the string
    i--;
    for (j = 0; j <= i / 2; j++)
    {
        u8 temp = str[j];
        
        str[j] = str[i - j];
        str[i - j] = temp;
    }
    str[i + 1] = '\0';
    return str;
}

// TODO: Get this matching in a better way
void sub_080340A0(int unused, void *b, void *c, u32 d)
{
    if (d & 0xFFFF)
    {
        u32 r12 = d & 0x1000000;
        u32 r7 = d & 0x4000000;
        u16 *r1 = b;
        register u32 *r4 asm("r4") = b;
        u16 *r2 = c;
        register u32 *r3 asm("r3") = c;
        
        u32 r5;
        for (r5 = d & 0xFFFF; r5 != 0; r5--)
        {
            if (r12 != 0)
            {
                if (r7 != 0)
                    *r3 = *(u32 *)b;
                else
                    *r2 = *(u16 *)b;
            }
            else
            {
                if (r7 != 0)
                    *r3 = *r4;
                else
                    *r2 = *r1;
            }
            r1++;
            r2++;
            r4++;
            r3++;
        }
    }
}

void sub_08034100(void)
{
    if (gUnknown_030012FC != NULL)
        gUnknown_030012FC();
    sub_08033F28();
}

void sub_0803411C(void)
{
    if (gUnknown_030012A8 != NULL)
        gUnknown_030012A8();
    sub_08033F6C();
}

void sub_08034138(void)
{
}

void sub_0803413C(void)
{
    REG_IF = INTR_FLAG_TIMER2;
    gUnknown_03001714++;
}

// probably an inline function
u16 sub_08034154(void)
{
    if (gUnknown_03000B80 == 5)
        return sub_0806C2C4();
    else
        return 0;
}

// probably an inline function
bool32 sub_08034178(void)
{
    if ((gUnknown_030012E0 & START_BUTTON) &&  (gUnknown_030012E0 & SELECT_BUTTON) && (gUnknown_030012E0 & A_BUTTON) && (gUnknown_030012E0 & B_BUTTON)
     && gUnknown_030009C0 != 7 && gUnknown_030009C0 != 34)
    {
        sub_080070E8(7, 1);
        gUnknown_03000B80 = 0;
        gUnknown_03000B58 = 0;
        gUnknown_03000B74 = 0;
        gUnknown_03000BB4 = 0;
        sub_080720AC();
        sub_08071C24();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

asm(".align 2, 0");
