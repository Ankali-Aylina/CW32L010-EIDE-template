# CW32L010-EIDE-template

- This is an EIDE template based on CW32L010F8, compiled using Arm GNU Toolchain and burned by pyODC.
- 这是一个基于 CW32L010F8 的EIDE模板，使用Arm GNU Toolchain 编译并由pyODC烧录。
- Created using the official CW32 routines.
- 使用CW32官方例程创建。

- PS.Since this is my first time writing an Arm GNU toolchain assembly file, unexpected errors may occur, so if you encounter problems and have a solution to them, you are welcome to submit! Thank you!
- PS.由于这是我第一次编写Arm GNU工具链汇编文件，因此可能会出现意想不到的错误，所以如果您遇到问题并且有办法解决，欢迎提交！谢谢你！

# version

- v0.0.3修复了启动文件错误导致的中断无法触发问题。
- v0.0.3 fixes the issue that interrupts cannot be triggered due to boot file errors.

---

- v0.0.4 修复了SPI向量表错误
- v0.0.4 fixes the SPI vector table error

---

- v0.0.5 修复了.s文件中的严重错误，请拉取全新库！
- v0.0.5 fixes a serious error in the .s file, please pull the new library!

---

- v0.0.6 更新了lib文件为官方的v1.0.4版本。
- **注意：官方v1.0.4的SVD文件存在SYSCTRL外设中断定义XML Schema违规(单个<interrupt>内嵌套两个中断)，已在本版本修复。pack文件已更新至1.0.2版本。**
- V0.0.6 updated the lib file to the official v1.0.4 version.
- **Note: The official v1.0.4 SVD file had an SYSCTRL interrupt XML Schema violation (two interrupts nested in one <interrupt> tag), now fixed. Pack file updated to v1.0.2.**

---

- v0.0.7 修复了链接脚本、启动文件、SVD文件、调试配置中的多个问题，pyOCD GDB调试现已可用。
- **链接脚本 (CW32L010_FLASH.ld)**: 移除 /DISCARD/ 中对 libgcc.a 的丢弃（Cortex-M0+ 依赖其除法辅助函数）；添加 \_\_etext 兼容别名；.bss 对齐移入段内。
- **启动文件 (startup_cw32l010.s)**: 移除 5 个无用的 .word 指令（节约 20 字节 Flash）；修正 .size g_pfnVectors 位置到向量表之后。
- **SVD 文件**: 修复 SYSCTRL 外设中单个 <interrupt> 标签内非法包含两个中断定义的 XML Schema 违规（拆分为两个 <interrupt>）。
- **调试配置**: 修正 launch.json 中 cmsisPack 版本 1.0.0→1.0.2；修正 eide.yml 中 SWD 频率 2M→50k；新增 external 模式调试 + tasks.json 自动启动 GDB Server。
- **使用方法**: Ctrl+Shift+P → Run Task → "Start PyOCD GDB Server" → 等待就绪 → F5 调试。

- v0.0.7 Fixed multiple issues in linker script, startup file, SVD file, and debug config. pyOCD GDB debugging is now functional.
- **Linker Script (CW32L010_FLASH.ld)**: Removed libgcc.a from /DISCARD/ (Cortex-M0+ requires its division helpers); added \_\_etext alias; moved .bss alignment inside section.
- **Startup File (startup_cw32l010.s)**: Removed 5 unused .word directives (saves 20 bytes Flash); fixed .size g_pfnVectors position to after vector table.
- **SVD File**: Fixed SYSCTRL peripheral's XML Schema violation where two interrupts were illegally nested in one <interrupt> tag (split into two <interrupt>).
- **Debug Config**: Fixed launch.json cmsisPack version 1.0.0→1.0.2; fixed eide.yml SWD frequency 2M→50k; added external mode debugging + tasks.json auto-start GDB Server.
- **Usage**: Ctrl+Shift+P → Run Task → "Start PyOCD GDB Server" → wait for ready → F5 to debug.
