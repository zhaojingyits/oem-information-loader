# oem-information-loader
An Inno Setup script for loading OEM information to new-installed system.

# 使用
使用带有ISPP的Inno Setup 5软件编译。编译时确认有chs.isl语言文件、info.txt安装提示信息文件、OEMLOGO.bmp图案文件和script.iss脚本文件在同一文件夹下即可。本脚本默认你的文件在文件夹`E:\文档\科协OEM信息`下，请自行更改。

OEMLOGO.bmp建议尺寸不大于`100*100`，显示时的尺寸方可不被压缩。

本脚本所带chs.isl为网络搜集得到，不知具体作者。

chs.isl与script.iss均为ANSI编码。如需使用Unicode版本的Inno Setup，请自行修改编码。

如果使用汉化版的Inno Setup编译，可不使用本项目带的chs.isl。
