#### Tools ####

CC1      := tools/agbcc/bin/agbcc
CPP      := $(DEVKITARM)/bin/arm-none-eabi-cpp
AS       := $(DEVKITARM)/bin/arm-none-eabi-as
LD       := $(DEVKITARM)/bin/arm-none-eabi-ld
OBJCOPY  := $(DEVKITARM)/bin/arm-none-eabi-objcopy

CC1FLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2
CPPFLAGS := -I tools/agbcc/include -iquote include -nostdinc -undef
ASFLAGS  := -mcpu=arm7tdmi -I asminclude
LDFLAGS  := --no-gc-sections


#### Files ####

ROM      := mariovsdk.gba
ELF      := $(ROM:.gba=.elf)
MAP      := $(ROM:.gba=.map)
LDSCRIPT := ldscript.txt
CFILES   := src/main.c src/rom_8033C38.c
SFILES   := asm/rom.s asm/rom_800023C.s asm/rom_80066FC.s asm/main.s asm/rom1.s asm/rom_8032FB0.s asm/rom_8033D80.s asm/rom_8074814.s
OFILES   := $(SFILES:.s=.o) $(CFILES:.c=.o)


#### Main Targets ####

compare: $(ROM)
	md5sum -c checksum.md5

clean:
	$(RM) $(ROM) $(ELF) $(MAP) $(OFILES)


#### Recipes ####

$(ELF): $(OFILES)
	$(LD) $(LDFLAGS) -T $(LDSCRIPT) -Map $(MAP) $^ tools/agbcc/lib/libgcc.a -o $@

%.gba: %.elf
	$(OBJCOPY) -O binary --pad-to 0x9000000 $< $@

%.o: %.c
	$(CPP) $(CPPFLAGS) $< | $(CC1) $(CC1FLAGS) -o $*.s
	$(AS) $(ASFLAGS) $*.s -o $*.o

%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@
