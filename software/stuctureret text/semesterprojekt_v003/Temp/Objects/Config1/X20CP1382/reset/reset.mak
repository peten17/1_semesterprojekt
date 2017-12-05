UnmarkedObjectFolder := C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/reset
MarkedObjectFolder := C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret\ text/semesterprojekt_v003/Logical/reset

$(AS_CPU_PATH)/reset.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/reset/reset.ox
	@'$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe' '$(AS_CPU_PATH)/reset/reset.ox' -o '$(AS_CPU_PATH)/reset.br' -v V1.00.0 -f '$(AS_CPU_PATH)/NT.ofs' -offsetLT '$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs' -T SG4  -M IA32  -B I4.33 -extConstants -d 'runtime: V* - V*,asieccon: V* - V*' -r Cyclic1 -p 3 -s 'reset' -L 'AsBrStr: V*, AsIecCon: V*, AsMbTCP: V*, AsTCP: V*, astime: V*, operator: V*, runtime: V*, standard: V*' -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.taskbuilder.exe'

$(AS_CPU_PATH)/reset/reset.ox: \
	$(AS_CPU_PATH)/reset/a.out
	@'$(AS_BIN_PATH)/BR.AS.Backend.exe' '$(AS_CPU_PATH)/reset/a.out' -o '$(AS_CPU_PATH)/reset/reset.ox' -T SG4 -r Cyclic1   -G V4.1.2  -B I4.33 -secret '$(AS_PROJECT_PATH)_br.as.backend.exe'

$(AS_CPU_PATH)/reset/a.out: \
	$(AS_CPU_PATH)/reset/Main.st.o \
	$(AS_CPU_PATH)/reset/_bur_pvdef.st.o
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' -link '$(AS_CPU_PATH)/reset/Main.st.o' '$(AS_CPU_PATH)/reset/_bur_pvdef.st.o'  -o '$(AS_CPU_PATH)/reset/a.out'  -G V4.1.2  -T SG4  -M IA32  '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsMbTCP.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libstandard.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsBrStr.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsTCP.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsIecCon.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libastime.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libruntime.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/liboperator.a' -specs=I386specs_brelf -nostdlib -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/reset/Main.st.o: \
	$(AS_PROJECT_PATH)/Logical/reset/Main.st \
	$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.fun \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/reset/Variables.var
	@'$(AS_BIN_PATH)/BR.AS.IecCompiler.exe' '$(AS_PROJECT_PATH)/Logical/reset/Main.st' -o '$(AS_CPU_PATH)/reset/Main.st.o'  -O '$(AS_CPU_PATH)//reset/Main.st.o.opt' -secret '$(AS_PROJECT_PATH)_br.as.ieccompiler.exe'

$(AS_CPU_PATH)/reset/_bur_pvdef.st.o: \
	$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.fun \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/reset/Variables.var
	@'$(AS_BIN_PATH)/BR.AS.IecCompiler.exe' '$(AS_PATH)/AS/GnuInst/V4.1.2/i386-elf/include/bur/_bur_pvdef.st' -o '$(AS_CPU_PATH)/reset/_bur_pvdef.st.o'  -O '$(AS_CPU_PATH)//reset/_bur_pvdef.st.opt' -secret '$(AS_PROJECT_PATH)_br.as.ieccompiler.exe'

-include $(AS_CPU_PATH)/Force.mak 

