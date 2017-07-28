@-------------------------------------------------------------------------------
@ Program Status Register
@-------------------------------------------------------------------------------

PSR_USR_MODE  = 0x00000010
PSR_FIQ_MODE  = 0x00000011
PSR_IRQ_MODE  = 0x00000012
PSR_SVC_MODE  = 0x00000013
PSR_ABT_MODE  = 0x00000017
PSR_UND_MODE  = 0x0000001B
PSR_SYS_MODE  = 0x0000001F
PSR_MODE_MASK = 0x0000001F
PSR_T_BIT     = 0x00000020
PSR_F_BIT     = 0x00000040
PSR_I_BIT     = 0x00000080


@-------------------------------------------------------------------------------
@ Memory
@-------------------------------------------------------------------------------

EWRAM_START = 0x02000000
EWRAM_END   = EWRAM_START + 0x40000
IWRAM_START = 0x03000000
IWRAM_END   = IWRAM_START + 0x8000

PLTT        = 0x5000000
BG_PLTT     = PLTT
OBJ_PLTT    = PLTT + 0x200

VRAM        = 0x6000000
BG_VRAM     = VRAM
OBJ_VRAM0   = VRAM + 0x10000 @ text-mode BG
OBJ_VRAM1   = VRAM + 0x14000 @ bitmap-mode BG

OAM         = 0x7000000
