$(AS_CPU_PATH)/iomap.br: \
	$(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)/IoMap.iom \
	$(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)/PvMap.vvm \
	$(AS_CPU_PATH)/ChannelConfiguration.xml \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw \
	$(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)/Cpu.sw 
	@'$(AS_BIN_PATH)/BR.AS.IOMapBuilder.exe' '$(AS_PROJECT_CPU_PATH)/IoMap.iom' '$(AS_PROJECT_CPU_PATH)/PvMap.vvm'  -m '$(AS_CPU_PATH)/ConfigInfo.cfi' -g '$(AS_TEMP_PATH)/Objects/Declarations.lst' -x '$(AS_CPU_PATH)/ChannelConfiguration.xml' -v V1.00.0 -f '$(AS_CPU_PATH)' -iomap -o '$(AS_CPU_PATH)/iomap.br' -T SG4  -B I4.33 -P '$(AS_PROJECT_PATH)' -s 'Config1.X20CP1382'

-include $(AS_CPU_PATH)/Force.mak 
