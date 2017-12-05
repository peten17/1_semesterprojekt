UnmarkedObjectFolder := C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Draw
MarkedObjectFolder := C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret\ text/semesterprojekt_v003/Logical/Draw

$(AS_CPU_PATH)/Draw.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Draw/Draw.ox
	@'$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe' '$(AS_CPU_PATH)/Draw/Draw.ox' -o '$(AS_CPU_PATH)/Draw.br' -v V1.00.0 -f '$(AS_CPU_PATH)/NT.ofs' -offsetLT '$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs' -T SG4  -M IA32  -B I4.33 -extConstants -d 'runtime: V* - V*,asieccon: V* - V*' -r Cyclic1 -p 2 -s 'Draw' -L 'AsBrStr: V*, AsIecCon: V*, AsMbTCP: V*, AsTCP: V*, astime: V*, operator: V*, runtime: V*, standard: V*' -P '$(AS_PROJECT_PATH)' -secret '$(AS_PROJECT_PATH)_br.as.taskbuilder.exe'

$(AS_CPU_PATH)/Draw/Draw.ox: \
	$(AS_CPU_PATH)/Draw/a.out \
	FORCE 
	@'$(AS_BIN_PATH)/BR.AS.Backend.exe' '$(AS_CPU_PATH)/Draw/a.out' -o '$(AS_CPU_PATH)/Draw/Draw.ox' -T SG4 -r Cyclic1   -G V4.1.2  -B I4.33 -secret '$(AS_PROJECT_PATH)_br.as.backend.exe'

$(AS_CPU_PATH)/Draw/a.out: \
	$(AS_CPU_PATH)/Draw/Main.st.o \
	$(AS_CPU_PATH)/Draw/_bur_pvdef.st.o \
	FORCE
	@'$(AS_BIN_PATH)/BR.AS.CCompiler.exe' -link '$(AS_CPU_PATH)/Draw/Main.st.o' '$(AS_CPU_PATH)/Draw/_bur_pvdef.st.o'  -o '$(AS_CPU_PATH)/Draw/a.out'  -G V4.1.2  -T SG4  -M IA32  '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsMbTCP.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libstandard.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsBrStr.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsTCP.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libAsIecCon.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libastime.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/libruntime.a' '-Wl,$(AS_SYSTEM_PATH)/I0433/SG4/IA32/liboperator.a' -specs=I386specs_brelf -nostdlib -secret '$(AS_PROJECT_PATH)_br.as.ccompiler.exe'

$(AS_CPU_PATH)/Draw/Main.st.o: \
	$(AS_PROJECT_PATH)/Logical/Draw/Main.st \
	FORCE 
	@'$(AS_BIN_PATH)/BR.AS.IecCompiler.exe' '$(AS_PROJECT_PATH)/Logical/Draw/Main.st' -o '$(AS_CPU_PATH)/Draw/Main.st.o'  -O '$(AS_CPU_PATH)//Draw/Main.st.o.opt' -secret '$(AS_PROJECT_PATH)_br.as.ieccompiler.exe'

$(AS_CPU_PATH)/Draw/_bur_pvdef.st.o: \
	FORCE 
	@'$(AS_BIN_PATH)/BR.AS.IecCompiler.exe' '$(AS_PATH)/AS/GnuInst/V4.1.2/i386-elf/include/bur/_bur_pvdef.st' -o '$(AS_CPU_PATH)/Draw/_bur_pvdef.st.o'  -O '$(AS_CPU_PATH)//Draw/_bur_pvdef.st.opt' -secret '$(AS_PROJECT_PATH)_br.as.ieccompiler.exe'

-include $(AS_CPU_PATH)/Force.mak 



FORCE: