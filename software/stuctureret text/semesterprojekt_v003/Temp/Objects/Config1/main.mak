SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\ProgramData\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files (x86)\Skype\Phone\;C:\Program Files\MiKTeX 2.9\miktex\bin\x64\;C:\Program Files (x86)\Wolfram Research\WolframScript\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Microsoft SQL Server\130\Tools\Binn\;C:\Users\gusta\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\gusta\AppData\Local\GitHubDesktop\bin;C:\ProgramData\gusta\GitHubDesktop\bin;C:\Users\gusta\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\gusta\AppData\Local\GitHubDesktop\bin;C:\ProgramData\gusta\GitHubDesktop\bin
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.3.3.196
export AS_COMPANY_NAME :=  
export AS_USER_NAME := gusta
export AS_PATH := C:/BrAutomation/AS43
export AS_BIN_PATH := C:/BrAutomation/AS43/bin-en
export AS_PROJECT_PATH := C:/projects/semesterprojekt
export AS_PROJECT_NAME := semesterprojekt
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS43/AS/VC
export AS_TEMP_PATH := C:/projects/semesterprojekt/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/projects/semesterprojekt/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS43
export WIN32_AS_PATH := "C:\BrAutomation\AS43"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS43\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\projects\semesterprojekt"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS43\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\projects\semesterprojekt\Temp"
export WIN32_AS_BINARIES_PATH := "C:\projects\semesterprojekt\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS43\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS43"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/semesterprojekt.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/projects/semesterprojekt/Temp/Objects/$(AS_CONFIGURATION)/X20CP1382/#cpu.mak' -k 

