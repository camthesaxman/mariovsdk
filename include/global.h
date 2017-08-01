#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H


//------------------------------------------------------------------------------
// Types
//------------------------------------------------------------------------------

struct KeyInput
{
    u16 keys:10;
    u16 dummy:6;
};

struct Struct30002B8
{
    s32 unk0;
    s32 unk4;
};

struct Struct30012D0
{
    u8 filler0[6];
    u16 unk6;
};

struct Struct30009B0
{
    s32 unk0;
    s32 unk4;
    u8 unk8;
    s16 unk10;
    s16 unk12;
};


//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------

extern u32 gUnknown_03000020;
extern u32 gUnknown_03000024;
extern u8 gUnknown_030002A0[];
extern u16 gUnknown_030002AA;
extern struct Struct30002B8 gUnknown_030002B0;
extern struct Struct30002B8 gUnknown_030002B8;
extern struct Struct30002B8 gUnknown_030002C0;
extern struct Struct30002B8 gUnknown_030002C8;
extern int (*gUnknown_03000964)(u32 *, int, int, int);
extern struct Struct30009B0 gUnknown_030009B0;
extern u32 gUnknown_030009C0;
extern u32 gUnknown_030009C4;
extern u32 gUnknown_030009C8;
extern u32 gUnknown_030009CC;
extern s32 gUnknown_03000B54;
extern u8 gUnknown_03000B58;
extern u8 gUnknown_03000B64;
extern u32 gUnknown_03000B70;
extern u8 gUnknown_03000B74;
extern u8 gUnknown_03000B78;
extern s8 gUnknown_03000B80;
extern s8 gUnknown_03000BB4;
extern u8 gUnknown_03000C28;
extern struct OamData gUnknown_03000EA0;
extern s16 gUnknown_030012A0;
extern void (*gUnknown_030012A8)(void);
extern u8 gUnknown_030012B0[];
extern void (*gUnknown_030012C0)(void);
extern struct Struct30012D0 gUnknown_030012D0;
extern u16 gUnknown_030012E0;
extern u16 gUnknown_030012E8;
extern s16 gUnknown_030012F4;
extern s16 gUnknown_030012F8;
extern void (*gUnknown_030012FC)(void);
extern u8 gUnknown_03001300[];
extern volatile u16 gUnknown_03001700;  // vblank counter, to run at 30 FPS?
extern u16 gUnknown_03001708;
extern s16 gUnknown_0300170C;
extern s16 gUnknown_03001710;
extern u32 gUnknown_03001714;
extern u32 gUnknown_03001718;
extern u16 gUnknown_0300171C;
extern s16 gUnknown_03001720;
extern s16 gUnknown_03001724;
extern struct Struct30012D0 gUnknown_03001730;  // no idea what type this is
extern u8 gUnknown_03001740;
extern u8 gUnknown_03001744;
extern u16 gUnknown_03001748;
extern u32 gUnknown_03001938;
extern u32 gUnknown_030019A0;
extern u32 gUnknown_03001A1C;
extern void *gUnknown_03007FFC;

extern u16 *const gUnknown_0807820C;
extern void (*const gUnknown_0807823C[])(void);
extern void (*const gUnknown_080782C8[])(void);
extern const u32 gUnknown_08078354[];
extern void (*const gUnknown_080783E0[])(void);
extern const u32 gUnknown_0807846C[];
extern u16 *const gUnknown_0807DD94;


//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------

// crt0.s
void sub_080000FC_t(void);
void sub_08000114_t(void);
void interrupt_main(void);

void sub_0801500C();
int sub_080066FC(u32 *, int, int, int);
void sub_0802BE74(void);
void sub_0802BEEC();
void sub_0802BFA4(void);
void sub_0802C058(void);
void sub_0802C144();
void sub_08032FB0(void);
void sub_08033440(void);
void sub_08033C38(void);
void sub_08033CE0(void);
void sub_08033D1C(void);
void sub_08033D30(void);
void sub_08033D58(void);
void sub_08033EA0();
void sub_08033EBC(void);
void sub_08033EC8(void);
void sub_08033EE0(void);
void sub_08034138(void);
u16 sub_0806C2C4(void);
void sub_0806D1AC(u16, u16);
void sub_080070E8();
void sub_0800EE70(void);
void sub_08071800(void);
void sub_0807194C(void);
void sub_08071990();
void sub_08071C24(void);
void sub_080720AC(void);


#endif  // GUARD_GLOBAL_H
