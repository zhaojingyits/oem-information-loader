; 需要使用带有ISPP的Inno Setup 5编译。
; 在5.5.9版本的Inno Setup ANSI下编译通过。
; 请自行修改目录信息。

#define MyAppName "西大科协OEM信息导入程序"
#define MyAppVersion "1.3"
#define MyAppPublisher "广西大学学生科技协会"
#define Builder "赵敬一"
#define Info "广西大学学生科技协会OEM支持信息"
#define InfoS "OEM支持信息"

[Setup]
; 请用Shift+Ctrl+G自行生成AppID。由于不需要卸载，也可以不生成。
; AppId=
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DisableReadyPage=yes
CreateAppDir=no
MinVersion=6.0
ArchitecturesInstallIn64BitMode=x64
Uninstallable=no
InfoBeforeFile=E:\文档\科协OEM信息\info.txt
OutputDir=E:\文档\科协OEM信息
OutputBaseFilename=OEM信息导入程序{#MyAppVersion}
Compression=lzma2
SolidCompression=yes

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"; ValueType: string; ValueName: "Logo"; ValueData: "%windir%\system32\oobe\info\OEMLOGO.bmp"; Flags: deletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"; ValueType: string; ValueName: "Manufacturer"; ValueData: "广西大学学生科技协会"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"; ValueType: string; ValueName: "SupportPhone"; ValueData: "咨询QQ群：465435239 微信公众号：Gxukexie"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"; ValueType: string; ValueName: "SupportHours"; ValueData: "周一至周三18:10~19:10在西校园21栋19号开展例行维修"

[Languages]
Name: "chinesesimp"; MessagesFile: "E:\文档\科协OEM信息\Chs.isl"

[Messages]
AboutSetupNote=广西大学学生科技协会赵敬一根据MIT协议发布。
BeveledLabel={#MyAppPublisher} {#Builder} 版本{#MyAppVersion}
SetupWindowTitle=%1
InfoBeforeLabel=程序现在准备开始导入{#InfoS}到您的电脑中。
WizardInfoBefore=准备导入
InfoBeforeClickLabel=单击“下一步”将立即导入{#Info}。
WizardInstalling=正在导入
InstallingLabel=正在导入{#InfoS}到您的电脑中，请等待。
FinishedHeadingLabel={#InfoS}导入完成
FinishedLabelNoIcons=已在电脑中导入了{#Info}。
ClickFinish=单击“完成”退出导入程序。

[Files]
Source: "E:\文档\科协OEM信息\OEMLOGO.bmp"; DestDir: "{sys}\oobe\info"; Flags: ignoreversion
