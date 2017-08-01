#include "gba/gba.h"
#include "global.h"

/*
struct Struct807DD94
{
    u16 *unk0;
};
*/

extern u16 *const gUnknown_0807DD94;

extern s16 gUnknown_030012E0;
extern u16 gUnknown_030012E8;
extern s16 gUnknown_030012F8;
extern u8 gUnknown_03001744;
extern u32 gUnknown_03001938;
extern u32 gUnknown_030019A0;
extern u32 gUnknown_03001A1C;

void sub_08032FB0(void)
{
    int i;
    struct OamData *oam = &gUnknown_03000EA0;
    u16 *ptr = (u16 *)oam;

    for (i = 0; i < 32; i++)
    {
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x200;
        *ptr++ = 0;
        *ptr++ = 0;
        *ptr++ = 0x100;
    }
    CpuCopy16(oam, (void *)OAM, 0x400);
}

extern void sub_0806D1AC(u16, u16);
extern void sub_080070E8();
extern void sub_08071990();
extern void sub_0800EE70(void);

void sub_08033024(void)
{
    if (gUnknown_030012E8 == 8 || gUnknown_030012E8 == 2)
    {
        sub_080070E8(12, 1);
        gUnknown_030012F8 = 0;
        gUnknown_030012E0 = 0;
        gUnknown_030012E8 = 0;
        sub_08071990(22, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gUnknown_030012E8 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gUnknown_030012E0 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            if ((gUnknown_030012E0 & 0x200) && (gUnknown_030012E8 & 0x40))
            {
                sub_080070E8(18, 0);
                gUnknown_030012F8 = 0;
                gUnknown_030012E0 = 0;
                gUnknown_030012E8 = 0;
                gUnknown_030019A0 |= 0x200000;
                gUnknown_03001744 = 1;
            }
            else
            {
                sub_0806D1AC(gUnknown_030012E8, gUnknown_030012E0);
                if (gUnknown_03001938 & 0x800)
                {
                    sub_0800EE70();
                }
                else
                {
                    gUnknown_030012F8++;
                }
            }
        }
        else
        {
            sub_080070E8(6, 0);
            gUnknown_030012F8 = 0;
            gUnknown_030012E0 = 0;
            gUnknown_030012E8 = 0;
        }
    }
}

void sub_08033148(void)
{
    if (gUnknown_030012E8 == 8 || gUnknown_030012E8 == 2)
    {
        sub_080070E8(7, 1);
        gUnknown_030012F8 = 0;
        gUnknown_030012E0 = 0;
        gUnknown_030012E8 = 0;
        sub_08071990(22, 8, 16, 64, 0, 128, 0);
        return;
    }

    if (gUnknown_03001A1C & 0x2000)
    {
        if (gUnknown_0807DD94[0] > gUnknown_030012F8)
        {
            gUnknown_030012E8 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 0];
            gUnknown_030012E0 = gUnknown_0807DD94[gUnknown_030012F8 * 2 + 1];
            gUnknown_030012F8++;
        }
        else
        {
            sub_080070E8(7, 1);
            gUnknown_030012F8 = 0;
            gUnknown_030012E0 = 0;
            gUnknown_030012E8 = 0;
        }
    }

}

extern u32 gUnknown_030009C0;
extern u16 gUnknown_030002AA;
extern s8 gUnknown_03000B80;
extern u8 gUnknown_03000B58;
extern u8 gUnknown_03000B74;
extern u8 gUnknown_03000BB4;
extern u8 gUnknown_03001740;
extern s32 gUnknown_03000B54;
extern u8 gUnknown_030012B0[];
extern u8 gUnknown_03000C28;
extern u16 gUnknown_03001708;

extern u16 sub_0806C2C4(void);
extern void sub_080720AC(void);
extern void sub_08071C24(void);


struct KeyInput
{
    u16 keys:10;
    u16 dummy:6;
};

// Using inline functions seems to be the only way I can get this to match.

static inline u16 inline_1(void)
{
    if (gUnknown_03000B80 == 5)
        return sub_0806C2C4();
    else
        return 0;
}

static inline bool32 inline_2(void)
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

void sub_080331FC(void)
{
    struct KeyInput keyInput = {.keys = ~REG_KEYINPUT};
    u16 keys;
    u32 r4;
    bool16 r3_2;

    keys = keyInput.keys;
    if (gUnknown_030009C0 == 5 || gUnknown_030009C0 == 2)
        gUnknown_030012E0 = gUnknown_030002AA;
    r4 = gUnknown_03001938;
    if (r4 & 0x400)
    {
        gUnknown_030012E8 = keys & ~gUnknown_030012E0;
        gUnknown_030012E0 = keys;

        if ((keys & (START_BUTTON | SELECT_BUTTON)) == (START_BUTTON | SELECT_BUTTON) && (keys & A_BUTTON) && (keys & B_BUTTON) && gUnknown_030009C0 != 7)
        {
            gUnknown_03001938 = r4 & ~0x400;
        }
        else
        {
            u16 r2 = inline_1();

            gUnknown_030012E8 = r2 & ~gUnknown_030012E0;
            gUnknown_030012E0 = r2;
        }

    }
    else
    {
        gUnknown_030012E8 = keys & ~gUnknown_030012E0;
        gUnknown_030012E0 = keys;
        if (gUnknown_03001740 == 0 && gUnknown_030012E8 == 0 && keys == 0)
            gUnknown_03001740 = 1;
    }

    r3_2 = inline_2();
    if (r3_2 == 0)
    {
        s32 i;

        if (gUnknown_030009C0 == 5)
        {
            gUnknown_030002AA = gUnknown_030012E0;
            sub_08033024();
        }
        else if (gUnknown_030009C0 == 2)
        {
            gUnknown_030002AA = gUnknown_030012E0;
            sub_08033148();
        }
        else if (gUnknown_03000C28 != 0)
        {
            gUnknown_030012E8 = gUnknown_030012E0 = 0;
        }
        else if (gUnknown_030009C0 == 13)
        {
            if (gUnknown_03000B54 <= 10)
            {
                gUnknown_030012E8 = gUnknown_030012E0 = 0;
            }
        }
        gUnknown_03001708 = 0;

        for (i = 0; i < 16; i++)
        {
            u16 r3 = 1 << i;

            if (gUnknown_030012E8 & r3)
                gUnknown_03001708 |= r3;
            if ((u16)gUnknown_030012E0 & r3)
            {
                gUnknown_030012B0[i]--;
                if (gUnknown_030012B0[i] == 0)
                {
                    gUnknown_030012B0[i] = 6;
                    gUnknown_03001708 |= r3;
                }
            }
            else
            {
                gUnknown_030012B0[i] = 20;
            }
        }
    }
}

asm(".align 2, 0");
