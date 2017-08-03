#include "gba/gba.h"
#include "global.h"
#include "main.h"

void sub_08007154(void)
{
    gUnknown_030009C4 = gUnknown_030009CC;
    gUnknown_03000024 = 1;
}

void sub_08007170(void)
{
    sub_08034898(2);
    sub_0802BA94();
    sub_0802BC98();
    sub_0802D1D0();
    sub_0803109C();
    sub_080714A8();
    sub_080317F8();
    gUnknown_030009EC = 1;
    sub_0802BF1C();
    gUnknown_03000B54 = gUnknown_03000B90.unk0->unk8 * 60 + 60;
    if (gUnknown_03000B80 == 0 && (gUnknown_03000B90.unk20 & 8))
    {
        u32 var;
        
        if (gUnknown_03000B44 > 60)
            gUnknown_03000B54 += gUnknown_03000B44 - 60;
        var = sub_0802F5C0(gUnknown_03000B44);
        gUnknown_030009DC = var;
        gUnknown_03000B44 = 0;
    }
    sub_0802C20C();
    if (gUnknown_030009D0 & 24)
        sub_0802C7A4();
    else
        sub_0802CF08();
    sub_08006968(gUnknown_03000B90.unk4);
    gUnknown_03000B5C = 0;
    gUnknown_0300002C = -1;
    gUnknown_03000B60 = 0;
    sub_080386DC();
    sub_08031BF0(gUnknown_0300192C, gUnknown_03001930);
    if (gUnknown_03000B90.unk20 & 8)
    {
        gUnknown_03000B4C = gUnknown_03000B48;
        gUnknown_03000B6C = gUnknown_03000BB8;
        CpuCopy16(gUnknown_030009E4, gUnknown_03001A30, 4);
    }
    else
    {
        gUnknown_03000B4C = 0;
    }
    gUnknown_03000033 = 0;
}

void sub_080072A4(void)
{
    u32 r5;
    struct UnknownStruct6 *r1;
    
    gUnknown_030009D4 = 1;
    sub_08007170();
    r5 = gMainState;
    gMainState = MAIN_STATE_LEVEL_PLAY;
    sub_08004634(1);
    gMainState = r5;
    r1 = sub_08040F30(sub_08040EE8(2));
    if (r1 == NULL)
        r1 = sub_08040F30(sub_08040EE8(0));
    if (gUnknown_03000B80 == 4)
        sub_08033FAC(0, 0);
    else if (gUnknown_03000B80 == 5)
        sub_08033FAC(0, 16);
    else if (r1 != NULL)
        sub_08033FAC((r1->unk20 >> 7) - DISPLAY_WIDTH, (r1->unk24 >> 7) - DISPLAY_HEIGHT);
    if (gUnknown_030009D0 & 8)
        sub_0802C938();
    gUnknown_03000028 = 0;
    gUnknown_030009E8 = 0;
    if ((!(gUnknown_03000B68 & 2) || (gUnknown_03000B90.unk20 & 32))
     && gMainState != MAIN_STATE_TUTORIAL)
    {
        sub_080720AC();
        if (gUnknown_03000B80 == 2 || gUnknown_03000B80 == 3 || gUnknown_03000BB4 != 0)
        {
            gUnknown_03001BDC = 1;
            sub_0807204C(17, 128, 0);
        }
        else
        {
            if (!(gUnknown_03000B90.unk20 & 3) && gUnknown_03000B80 != 4 && gUnknown_03000B80 != 5)
            {
                if (gUnknown_03000B90.unk10 > 0)
                    gUnknown_03001BDC = 1;
                if (gUnknown_03001BDC == 0)
                    sub_0807204C(7, 128, 0);
                else
                    sub_0807204C(17, 128, 0);
            }
            else if (gUnknown_03000B90.unk20 & 1)
            {
                sub_0807204C(32, 128, 1);
            }
        }
        if ((gUnknown_03000B90.unk20 & 2) || gUnknown_03000B80 == 4)
            sub_0807204C(16, 128, 0);
    }
    sub_08033FC8();
    gUnknown_03000034 = 0;
    gUnknown_03000029 = 0;
    gUnknown_03000032 = 0;
    gUnknown_03000030 = 0;
    gUnknown_03000031 = 0;
    sub_0802919C(gUnknown_03000B58, gUnknown_03000B74);
}

void sub_0800748C(void)
{
    u32 r5;
    struct UnknownStruct6 *r1;
    
    sub_08007170();
    r5 = gMainState;
    if (gMainState != MAIN_STATE_DEMO)
        gMainState = MAIN_STATE_TUTORIAL;
    sub_08004634(1);
    gMainState = r5;
    r1 = sub_08040F30(sub_08040EE8(2));
    if (r1 == NULL)
        r1 = sub_08040F30(sub_08040EE8(0));
    if (r1 != NULL)
        sub_08033FAC((r1->unk20 >> 7) - DISPLAY_WIDTH, (r1->unk24 >> 7) - DISPLAY_HEIGHT);
    gUnknown_03000028 = 0;
    gUnknown_030009E8 = 0;
    sub_08033FC8();
    gUnknown_03000034 = 0;
    gUnknown_03000029 = 0;
    gUnknown_03000032 = 0;
    gUnknown_03000030 = 0;
    gUnknown_03000031 = 0;
    if (sub_08071FE4() != 11)
        sub_0807204C(11, 128, 1);
}

void sub_08007544(void)
{
    bool32 r7 = FALSE;
    s32 *r3 = &gUnknown_03000B54;
    s32 r2 = *r3;
    
    if (r2 > 0x708)
        r7 = TRUE;
    if (r2 > 0 && gUnknown_030009E8 != 0 && gUnknown_03000B5C == 0)
    {
        if (!(gUnknown_03001A1C & 0x901000) && gUnknown_03001A38 == 0)
        {
            if ((gUnknown_03000B90.unk20 & 2) && gUnknown_03001C78->unk34 == 0)
            {
                if (gUnknown_03000033 == 0)
                {
                    sub_08071CD4();
                    gUnknown_03000033 = 1;
                    gUnknown_030009E8 = 0;
                }
            }
            else
            {
                *r3 = r2 - gUnknown_03001748;
            }
        }
        if (gUnknown_03000B54 <= 0 && !(gUnknown_030019A0 & 0x80000000))
        {
            gUnknown_03001B30.unk14 |= 32;
            gUnknown_03000B54 = 0;
            gUnknown_03001A1C |= 0x400;
            gUnknown_03000029 = 0;
            if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            {
                sub_080720AC();
                sub_0807204C(63, 128, 0);
            }
        }
    }
    
    if (gUnknown_03000038 & 0x2000000)
        sub_08071990(68, 8, 16, 64, 0, 128, 0);
    
    if (r7 && gUnknown_03000B54 <= 0x708 && !(gUnknown_03001A1C & 0x80))
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_080720AC();
            sub_0807204C(6, 128, 0);
        }
    }
    
    if (gUnknown_03000038 & 0x8000)
    {
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_080720AC();
            sub_08071CD4();
        }
        gUnknown_030009E8 = 0;
    }
    
    if (gUnknown_03000038 & 0x800)
        sub_08071CD4();
    if ((gUnknown_03001A1C & 0x800) && sub_08072144() != 0)
    {
        gUnknown_030009D8++;
        if (gUnknown_03000BBC > 1)
        {
            asm(""::"r"(gUnknown_03000B54));  // Why is this variable read? Is it volatile?
            sub_08014A58(-1);
            sub_080070E8(14, 0);
        }
        else
        {
            sub_08014A58(-1);
            sub_080070E8(20, 1);
        }
    }

    if (gUnknown_03000038 & 0x80)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_080720AC();
            sub_0807204C(3, 128, 0);
        }
    }
    else
    {
        if ((gUnknown_03001A1C & 0x80) && sub_08072144() != 0)
            sub_080070E8(13, 1);
    }

    if (gUnknown_03000038 & 0x2000)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            if (gUnknown_03000B90.unk20 & 2)
            {
                gUnknown_03000029 = 0;
            }
            else
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO && gUnknown_03000B80 != 5)
                {
                    sub_080720AC();
                    sub_08071FA0(gUnknown_03000B90.unk14, gUnknown_03000B90.unk18, 1, gUnknown_03000B90.unk1D);
                }
                gUnknown_03000029 = 1;
            }
        }
        else
        {
            gUnknown_03000029 = 1;
        }
        gUnknown_030009E8 = 1;
    }

    if (gUnknown_03000B5C == 0 && (gUnknown_03000B90.unk20 & 2) && gUnknown_03000029 == 0
     && gUnknown_030009E8 != 0 && sub_08072144() != 0)
    {
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
            sub_08071FA0(gUnknown_03000B90.unk14, gUnknown_03000B90.unk18, 1, gUnknown_03000B90.unk1D);
        gUnknown_03000029 = 1;
    }

    if (gUnknown_03000038 & 0x10000)
    {
        gUnknown_030009E8 = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
        {
            sub_08071CD4();
            sub_080720AC();
            sub_0807204C(3, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }
    
    if (gUnknown_03000038 & 0x20000)
    {
        gUnknown_030009E8 = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && gUnknown_03000B5C == 0)
        {
            sub_08071CD4();
            sub_080720AC();
            sub_0807204C(4, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x40000)
    {
        gUnknown_030009E8 = 0;
        gUnknown_03000029 = 0;
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && gUnknown_03000B5C == 0)
        {
            sub_08071CD4();
            sub_080720AC();
            sub_0807204C(5, 128, 0);
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000038 & 0x100)
    {
        gUnknown_03000029 = 0;
        gUnknown_030009E8 = 0;
        if (gUnknown_03000B80 != 5)
            sub_08071CD4();
        if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO
         && !(gUnknown_03000B90.unk20 & 2))
        {
            if (gUnknown_03000B90.unk20 & 8)
            {
                sub_080720AC();
                sub_0807204C(21, 128, 0);
            }
            else if (gUnknown_03000B80 == 5)
            {
                sub_080720AC();
                sub_0807204C(65, 128, 0);
            }
            else if (!(gUnknown_03000B90.unk20 & 1))
            {
                sub_080720AC();
                sub_0807204C(2, 128, 0);
            }
        }
        gUnknown_03000B5C = 1;
    }

    if (gUnknown_03000B5C == 0)
    {
        if (gUnknown_03000B54 > 0x708)
        {
            if (gUnknown_03000038 & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sub_080720AC();
                    sub_0807204C(14, 128, 1);
                }
            }
            else if (gUnknown_0300003C & 0x4000000)
            {
                if (gMainState != MAIN_STATE_TUTORIAL && gMainState != MAIN_STATE_DEMO)
                {
                    sub_080720AC();
                    sub_08071FA0(gUnknown_03000B90.unk14, gUnknown_03000B90.unk18, 1, gUnknown_03000B90.unk1D);
                }
            }
        }
        if (gUnknown_03000B5C == 0 && gUnknown_03000B54 > 0x708)
        {
            if ((gUnknown_03000038 & 1)
             || ((gUnknown_03001A1C & 1) && (gUnknown_03000034 & 4) && !(gUnknown_03001A1C & 4)))
            {
                sub_080720AC();
                sub_0807204C(1, 128, 1);
            }
            if ((gUnknown_03000038 & 4)
             || ((gUnknown_03000034 & 1) && !(gUnknown_03001A1C & 1)))
            {
                if (sub_08072038() != gUnknown_03000B90.unk14)
                {
                    sub_080720AC();
                    sub_08071FA0(gUnknown_03000B90.unk14, gUnknown_03000B90.unk18, 1, gUnknown_03000B90.unk1D);
                }
            }
        }
    }

    if (gUnknown_03000038 & 0x4000)
    {
        if (gUnknown_03000B90.unk20 & 2)
            gUnknown_0300002C = 30;
        else if (gUnknown_03000B90.unk20 & 8)
            gUnknown_0300002C = 240;
        else if (gUnknown_03000B90.unk20 & 1)
            gUnknown_0300002C = 30;
        else if (gUnknown_03000B80 == 5)
            gUnknown_0300002C = 269;
        else
            gUnknown_0300002C = 150;
    }
    sub_08006D44();
}
