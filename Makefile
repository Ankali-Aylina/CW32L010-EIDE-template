#################################################################
# AUTO GENERATE AT 2024-11-08 14:13:12 BY unify_builder v3.8.0.0
#################################################################

# Usage:
#  1. make prebuild
#  2. make all

# Targets Dependences Chain:
#  all -> postbuild -> bin -> elf

# Use 'make V=1' to see the full commands
ifdef V
	Q = 
else
	Q = @
endif

COLOR_END="\e[0m"
COLOR_ERR="\e[31;1m"
COLOR_WRN="\e[33;1m"
COLOR_SUC="\e[32;1m"
COLOR_INF="\e[34;1m"

# system environment variables
TMP_PATH:=$(addprefix /C/Users/Aylina/.eide/tools/gcc_arm/bin:/c/Users/Aylina/.vscode/extensions/cl.eide-3.20.0/res/tools/win32/unify_builder:, $(PATH))
export PATH=$(TMP_PATH)
# project variables
export workspaceFolder=d:/code/EIDE/CW32/CW32L010-EIDE-template
export workspaceFolderBasename=CW32L010-EIDE-template
export OutDir=d:/code/EIDE/CW32/CW32L010-EIDE-template/build/Debug
export OutDirRoot=build
export OutDirBase=build/Debug
export ProjectName=CW32L010-EIDE-template
export ConfigName=Debug
export ProjectRoot=d:/code/EIDE/CW32/CW32L010-EIDE-template
export ExecutableName=d:/code/EIDE/CW32/CW32L010-EIDE-template/build/Debug/CW32L010-EIDE-template
export ChipPackDir=
export ChipName=
export EIDE_BUILDER_DIR=c:/Users/Aylina/.vscode/extensions/cl.eide-3.20.0/res/tools/win32/unify_builder
export EIDE_BINARIES_VER=12.0.1
export EIDE_MSYS=C:/Users/Aylina/.eide/bin/builder/msys/bin
export EIDE_TOOL_GCC_ARM=C:/Users/Aylina/.eide/tools/gcc_arm/bin
export EIDE_TOOL_JLINK=C:/Users/Aylina/.eide/tools/jlink
export EIDE_TOOL_JLINK_DEV_ADDON=C:/Users/Aylina/.eide/tools/jlink_dev_addon/jlink-device-addon-0.1.8
export EIDE_TOOL_OPENOCD=C:/Users/Aylina/.eide/tools/openocd_7a1adfbec_mingw32/bin
export EIDE_TOOL_OPENOCD_7A1ADFBEC_MINGW32=C:/Users/Aylina/.eide/tools/openocd_7a1adfbec_mingw32/bin
export EIDE_TOOL_ST_CUBE_PROGRAMER=C:/Users/Aylina/.eide/tools/st_cube_programer/bin
export ToolchainRoot=C:/Users/Aylina/.eide/tools/gcc_arm

CC=C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-gcc.exe
AS=C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-gcc.exe
CXX=C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-g++.exe
LD=C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-gcc.exe
AR=C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-ar.exe

.PHONY : all postbuild bin elf prebuild clean
clean:
	-rm -rfv ./build/Debug/*
	-rm -rfv ./build/Debug/.obj

all: postbuild
	@echo ==========
	@echo -e $(COLOR_SUC)"ALL DONE."$(COLOR_END)
	@echo ==========

prebuild:
	@echo -e $(COLOR_INF)"prebuild ..."$(COLOR_END)
	@echo nothing to prebuild.

./build/Debug/.obj/lib/src:
	$(Q)mkdir -p $@
-include ./build/Debug/.obj/lib/src/cw32l010_adc.d
./build/Debug/.obj/lib/src/cw32l010_adc.o: ./lib/src/cw32l010_adc.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_adc.o -MMD ./lib/src/cw32l010_adc.c

-include ./build/Debug/.obj/lib/src/cw32l010_atim.d
./build/Debug/.obj/lib/src/cw32l010_atim.o: ./lib/src/cw32l010_atim.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_atim.o -MMD ./lib/src/cw32l010_atim.c

-include ./build/Debug/.obj/lib/src/cw32l010_btim.d
./build/Debug/.obj/lib/src/cw32l010_btim.o: ./lib/src/cw32l010_btim.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_btim.o -MMD ./lib/src/cw32l010_btim.c

-include ./build/Debug/.obj/lib/src/cw32l010_crc.d
./build/Debug/.obj/lib/src/cw32l010_crc.o: ./lib/src/cw32l010_crc.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_crc.o -MMD ./lib/src/cw32l010_crc.c

-include ./build/Debug/.obj/lib/src/cw32l010_debug.d
./build/Debug/.obj/lib/src/cw32l010_debug.o: ./lib/src/cw32l010_debug.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_debug.o -MMD ./lib/src/cw32l010_debug.c

-include ./build/Debug/.obj/lib/src/cw32l010_digitalsign.d
./build/Debug/.obj/lib/src/cw32l010_digitalsign.o: ./lib/src/cw32l010_digitalsign.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_digitalsign.o -MMD ./lib/src/cw32l010_digitalsign.c

-include ./build/Debug/.obj/lib/src/cw32l010_flash.d
./build/Debug/.obj/lib/src/cw32l010_flash.o: ./lib/src/cw32l010_flash.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_flash.o -MMD ./lib/src/cw32l010_flash.c

-include ./build/Debug/.obj/lib/src/cw32l010_gpio.d
./build/Debug/.obj/lib/src/cw32l010_gpio.o: ./lib/src/cw32l010_gpio.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_gpio.o -MMD ./lib/src/cw32l010_gpio.c

-include ./build/Debug/.obj/lib/src/cw32l010_gtim.d
./build/Debug/.obj/lib/src/cw32l010_gtim.o: ./lib/src/cw32l010_gtim.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_gtim.o -MMD ./lib/src/cw32l010_gtim.c

-include ./build/Debug/.obj/lib/src/cw32l010_i2c.d
./build/Debug/.obj/lib/src/cw32l010_i2c.o: ./lib/src/cw32l010_i2c.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_i2c.o -MMD ./lib/src/cw32l010_i2c.c

-include ./build/Debug/.obj/lib/src/cw32l010_iwdt.d
./build/Debug/.obj/lib/src/cw32l010_iwdt.o: ./lib/src/cw32l010_iwdt.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_iwdt.o -MMD ./lib/src/cw32l010_iwdt.c

-include ./build/Debug/.obj/lib/src/cw32l010_lptim.d
./build/Debug/.obj/lib/src/cw32l010_lptim.o: ./lib/src/cw32l010_lptim.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_lptim.o -MMD ./lib/src/cw32l010_lptim.c

-include ./build/Debug/.obj/lib/src/cw32l010_lvd.d
./build/Debug/.obj/lib/src/cw32l010_lvd.o: ./lib/src/cw32l010_lvd.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_lvd.o -MMD ./lib/src/cw32l010_lvd.c

-include ./build/Debug/.obj/lib/src/cw32l010_pwr.d
./build/Debug/.obj/lib/src/cw32l010_pwr.o: ./lib/src/cw32l010_pwr.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_pwr.o -MMD ./lib/src/cw32l010_pwr.c

-include ./build/Debug/.obj/lib/src/cw32l010_ram.d
./build/Debug/.obj/lib/src/cw32l010_ram.o: ./lib/src/cw32l010_ram.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_ram.o -MMD ./lib/src/cw32l010_ram.c

-include ./build/Debug/.obj/lib/src/cw32l010_rtc.d
./build/Debug/.obj/lib/src/cw32l010_rtc.o: ./lib/src/cw32l010_rtc.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_rtc.o -MMD ./lib/src/cw32l010_rtc.c

-include ./build/Debug/.obj/lib/src/cw32l010_spi.d
./build/Debug/.obj/lib/src/cw32l010_spi.o: ./lib/src/cw32l010_spi.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_spi.o -MMD ./lib/src/cw32l010_spi.c

-include ./build/Debug/.obj/lib/src/cw32l010_sysctrl.d
./build/Debug/.obj/lib/src/cw32l010_sysctrl.o: ./lib/src/cw32l010_sysctrl.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_sysctrl.o -MMD ./lib/src/cw32l010_sysctrl.c

-include ./build/Debug/.obj/lib/src/cw32l010_systick.d
./build/Debug/.obj/lib/src/cw32l010_systick.o: ./lib/src/cw32l010_systick.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_systick.o -MMD ./lib/src/cw32l010_systick.c

-include ./build/Debug/.obj/lib/src/cw32l010_uart.d
./build/Debug/.obj/lib/src/cw32l010_uart.o: ./lib/src/cw32l010_uart.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_uart.o -MMD ./lib/src/cw32l010_uart.c

-include ./build/Debug/.obj/lib/src/cw32l010_vc.d
./build/Debug/.obj/lib/src/cw32l010_vc.o: ./lib/src/cw32l010_vc.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/cw32l010_vc.o -MMD ./lib/src/cw32l010_vc.c

-include ./build/Debug/.obj/lib/src/i2c_eeprom.d
./build/Debug/.obj/lib/src/i2c_eeprom.o: ./lib/src/i2c_eeprom.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/i2c_eeprom.o -MMD ./lib/src/i2c_eeprom.c

-include ./build/Debug/.obj/lib/src/system_cw32l010.d
./build/Debug/.obj/lib/src/system_cw32l010.o: ./lib/src/system_cw32l010.c Makefile | ./build/Debug/.obj/lib/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/lib/src/system_cw32l010.o -MMD ./lib/src/system_cw32l010.c

./build/Debug/.obj/user/src:
	$(Q)mkdir -p $@
-include ./build/Debug/.obj/user/src/interrupts_cw32l010.d
./build/Debug/.obj/user/src/interrupts_cw32l010.o: ./user/src/interrupts_cw32l010.c Makefile | ./build/Debug/.obj/user/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/user/src/interrupts_cw32l010.o -MMD ./user/src/interrupts_cw32l010.c

-include ./build/Debug/.obj/user/src/main.d
./build/Debug/.obj/user/src/main.o: ./user/src/main.c Makefile | ./build/Debug/.obj/user/src
	@echo compiling $< ...
	$(Q)$(CC) -c -xc -mthumb -std=c11 -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -Og -Wall -g --specs=nosys.specs --specs=nano.specs -ffunction-sections -fdata-sections -o ./build/Debug/.obj/user/src/main.o -MMD ./user/src/main.c

./build/Debug/.obj/user:
	$(Q)mkdir -p $@
-include ./build/Debug/.obj/user/startup_cw32l010.d
./build/Debug/.obj/user/startup_cw32l010.o: ./user/startup_cw32l010.s Makefile | ./build/Debug/.obj/user
	@echo assembling $< ...
	$(Q)$(CC) -c -x assembler-with-cpp -mthumb -I.cmsis/include -Iuser/inc -Ilib/inc -Iuser -mcpu=cortex-m0plus -g --specs=nosys.specs --specs=nano.specs -o ./build/Debug/.obj/user/startup_cw32l010.o -MMD ./user/startup_cw32l010.s

objs = ./build/Debug/.obj/lib/src/cw32l010_adc.o ./build/Debug/.obj/lib/src/cw32l010_atim.o ./build/Debug/.obj/lib/src/cw32l010_btim.o ./build/Debug/.obj/lib/src/cw32l010_crc.o ./build/Debug/.obj/lib/src/cw32l010_debug.o ./build/Debug/.obj/lib/src/cw32l010_digitalsign.o ./build/Debug/.obj/lib/src/cw32l010_flash.o ./build/Debug/.obj/lib/src/cw32l010_gpio.o ./build/Debug/.obj/lib/src/cw32l010_gtim.o ./build/Debug/.obj/lib/src/cw32l010_i2c.o ./build/Debug/.obj/lib/src/cw32l010_iwdt.o ./build/Debug/.obj/lib/src/cw32l010_lptim.o ./build/Debug/.obj/lib/src/cw32l010_lvd.o ./build/Debug/.obj/lib/src/cw32l010_pwr.o ./build/Debug/.obj/lib/src/cw32l010_ram.o ./build/Debug/.obj/lib/src/cw32l010_rtc.o ./build/Debug/.obj/lib/src/cw32l010_spi.o ./build/Debug/.obj/lib/src/cw32l010_sysctrl.o ./build/Debug/.obj/lib/src/cw32l010_systick.o ./build/Debug/.obj/lib/src/cw32l010_uart.o ./build/Debug/.obj/lib/src/cw32l010_vc.o ./build/Debug/.obj/lib/src/i2c_eeprom.o ./build/Debug/.obj/lib/src/system_cw32l010.o ./build/Debug/.obj/user/src/interrupts_cw32l010.o ./build/Debug/.obj/user/src/main.o ./build/Debug/.obj/user/startup_cw32l010.o
elf: $(objs) Makefile
	@echo -e $(COLOR_INF)"linking ./build/Debug/CW32L010-EIDE-template.elf ..."$(COLOR_END)
	$(CC) -mthumb -Llib -Luser -mcpu=cortex-m0plus -T "d:/code/EIDE/CW32/CW32L010-EIDE-template/link/CW32L010_FLASH.ld" -Wl,--print-memory-usage --specs=nosys.specs --specs=nano.specs -Wl,--gc-sections -Wl,-Map=./build/Debug/CW32L010-EIDE-template.map -o ./build/Debug/CW32L010-EIDE-template.elf ./build/Debug/.obj/lib/src/cw32l010_adc.o ./build/Debug/.obj/lib/src/cw32l010_atim.o ./build/Debug/.obj/lib/src/cw32l010_btim.o ./build/Debug/.obj/lib/src/cw32l010_crc.o ./build/Debug/.obj/lib/src/cw32l010_debug.o ./build/Debug/.obj/lib/src/cw32l010_digitalsign.o ./build/Debug/.obj/lib/src/cw32l010_flash.o ./build/Debug/.obj/lib/src/cw32l010_gpio.o ./build/Debug/.obj/lib/src/cw32l010_gtim.o ./build/Debug/.obj/lib/src/cw32l010_i2c.o ./build/Debug/.obj/lib/src/cw32l010_iwdt.o ./build/Debug/.obj/lib/src/cw32l010_lptim.o ./build/Debug/.obj/lib/src/cw32l010_lvd.o ./build/Debug/.obj/lib/src/cw32l010_pwr.o ./build/Debug/.obj/lib/src/cw32l010_ram.o ./build/Debug/.obj/lib/src/cw32l010_rtc.o ./build/Debug/.obj/lib/src/cw32l010_spi.o ./build/Debug/.obj/lib/src/cw32l010_sysctrl.o ./build/Debug/.obj/lib/src/cw32l010_systick.o ./build/Debug/.obj/lib/src/cw32l010_uart.o ./build/Debug/.obj/lib/src/cw32l010_vc.o ./build/Debug/.obj/lib/src/i2c_eeprom.o ./build/Debug/.obj/lib/src/system_cw32l010.o ./build/Debug/.obj/user/src/interrupts_cw32l010.o ./build/Debug/.obj/user/src/main.o ./build/Debug/.obj/user/startup_cw32l010.o -lm

bin: elf Makefile
	@echo -e $(COLOR_INF)"make bin files ..."$(COLOR_END)
	C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-objcopy.exe -O ihex ./build/Debug/CW32L010-EIDE-template.elf ./build/Debug/CW32L010-EIDE-template.hex
	C:/Users/Aylina/.eide/tools/gcc_arm/bin/arm-none-eabi-objcopy.exe -O binary ./build/Debug/CW32L010-EIDE-template.elf ./build/Debug/CW32L010-EIDE-template.bin

postbuild: bin
	@echo -e $(COLOR_INF)"postbuild ..."$(COLOR_END)
	@echo nothing to postbuild.

