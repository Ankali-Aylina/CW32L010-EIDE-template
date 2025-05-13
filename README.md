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

----

- v0.0.5 修复了.s文件中的严重错误，请拉取全新库！
- v0.0.5 fixes a serious error in the .s file, please pull the new library!

----
- v0.0.6 更新了lib文件为官方的v1.0.4版本。
- **注意：该文件未同步官方v1.0.4固件库的.svd文件以及.pack文件！！！由于pyOCD解析v1.0.4的.svd文件会出现异常错误，因此未同步！！！**
- V0.0.6 updated the lib file to the official v1.0.4 version.
- **Note: this file is not synchronized with the .svd file and .pack file of the official v1.0.4 firmware library! ! ! Because pyOCD will have an abnormal error when parsing the .svd file of v1.0.4, it is not synchronized! ! !**