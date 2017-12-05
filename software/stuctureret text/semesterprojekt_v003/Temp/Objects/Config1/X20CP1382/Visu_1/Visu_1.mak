######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Palette.vcr
VCCFLAGS_Visu_1=-server -proj Visu_1 -vc '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.33.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.33.0/SG4
VCOBJECT_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_Visu_1=$(AS_CPU_PATH)/Visu_1.br
OBJ_SCOPE_Visu_1=
PRJ_PATH_Visu_1=$(AS_PROJECT_PATH)
SRC_PATH_Visu_1=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visu_1)/Visu_Resized_Resized
TEMP_PATH_Visu_1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu_1
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visu_1=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visu_1=$(TEMP_PATH_Visu_1)/libraries.vci
VC_XREF_BUILDFILE_Visu_1=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visu_1=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_Visu_1)/cpuhwc.vci'
VC_STATIC_OPTIONS_Visu_1='$(TEMP_PATH_Visu_1)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Visu_1.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Visu_1=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Visu_1='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Visu_1=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)'
BDRFLAGS_Visu_1=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)'

# Local Libs
LIB_LOCAL_OBJ_Visu_1=$(TEMP_PATH_Visu_1)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Visu_1=$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu_1/dis.Hardware.vco
PANEL_HW_VCI_Visu_1=$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu_1/dis.Hardware.vci
PANEL_HW_SOURCE_Visu_1=C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret\ text/semesterprojekt_v003/Physical/Config1/Hardware.hw 
DIS_OBJECTS_Visu_1=$(PANEL_HW_OBJECT_Visu_1) $(KEYMAP_OBJECTS_Visu_1)

# KeyMapping flags
$(TEMP_PATH_Visu_1)/dis.PS2-Keyboard1.vco: $(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard1.dis $(PANEL_HW_SOURCE_Visu_1)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_Visu_1)' -o '$(subst .vco,.vci,$(TEMP_PATH_Visu_1)/dis.PS2-Keyboard1.vco)' -n Visu_Resized_Resized -d Visu_1 -pal '$(PALFILE_Visu_1)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'I4.33' -L '' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visu_1) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard1.dis' -fp '$(AS_VC_PATH)/Firmware/V4.33.0/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'semesterprojekt' -sfas -vcob '$(VCOBJECT_Visu_1)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visu_1)' $(VCCFLAGS_Visu_1) -p Visu_1 -sfas

KEYMAP_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard1.dis 
KEYMAP_OBJECTS_Visu_1=$(TEMP_PATH_Visu_1)/dis.PS2-Keyboard1.vco 

# All Source Objects
FNINFO_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/indexsdsds.bminfo \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/rsz_logo_2.bminfo 

BMGRP_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Informaion.page \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Config.page \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Testing.page 

LAYER_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Layers/CommonLayer_1.layer 

VCS_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/StyleSheets/Color.vcs 

BDR_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/FrameHeader.bdr 

TPR_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/EditPad.tpr 

TDC_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Trends/TrendData.tdc 

CLM_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/ColorMaps/status.clm 

VCVK_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/VirtualKeys.vcvk 

VCR_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Visu_1=$(TEMP_PATH_Visu_1)/vcrt.vco
VCR_SOURCE_Visu_1=$(SRC_PATH_Visu_1)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Visu_1): $(PANEL_HW_SOURCE_Visu_1) $(VC_LIBRARY_LIST_Visu_1) $(KEYMAP_SOURCES_Visu_1)
	$(VCHWPP) -f '$<' -o '$@' -n Visu_Resized_Resized -d Visu_1 -pal '$(PALFILE_Visu_1)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'I4.33' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visu_1) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.33.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'semesterprojekt' -vcob '$(VCOBJECT_Visu_1)'

$(PANEL_HW_OBJECT_Visu_1): $(PANEL_HW_VCI_Visu_1) $(PALFILE_Visu_1) $(VC_LIBRARY_LIST_Visu_1)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visu_1)' $(VCCFLAGS_Visu_1) -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


# Pages
PAGE_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/page., $(notdir $(PAGE_SOURCES_Visu_1:.page=.vco)))

$(TEMP_PATH_Visu_1)/page.Informaion.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Informaion.page $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu_1)/StyleSheets/Color.vcs' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/page.Config.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Config.page $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu_1)/StyleSheets/Color.vcs' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/page.Testing.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Pages/Testing.page $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu_1)/StyleSheets/Color.vcs' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/vcs., $(notdir $(VCS_SOURCES_Visu_1:.vcs=.vco)))

$(TEMP_PATH_Visu_1)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visu_1) -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visu_1) -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/layer., $(notdir $(LAYER_SOURCES_Visu_1:.layer=.vco)))

$(TEMP_PATH_Visu_1)/layer.CommonLayer_1.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Layers/CommonLayer_1.layer $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -ds $(DEFAULT_STYLE_SHEET_Visu_1) -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/vcvk., $(notdir $(VCVK_SOURCES_Visu_1:.vcvk=.vco)))

$(TEMP_PATH_Visu_1)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas

$(VCVK_OBJECTS_Visu_1): $(VC_LANGUAGES_Visu_1)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/tpr., $(notdir $(TPR_SOURCES_Visu_1:.tpr=.vco)))

$(TEMP_PATH_Visu_1)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1) -prj 'C:/Users/gusta/Documents/GitHub/1_semesterprojekt/software/stuctureret text/semesterprojekt_v003/Logical/Visu_Resized_Resized' -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/bmgrp., $(notdir $(BMGRP_SOURCES_Visu_1:.bmgrp=.vco)))

$(TEMP_PATH_Visu_1)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/bminfo., $(notdir $(BMINFO_SOURCES_Visu_1:.bminfo=.vco)))

$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.indexsdsds.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/indexsdsds.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/indexsdsds.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


$(TEMP_PATH_Visu_1)/bminfo.rsz_logo_2.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/rsz_logo_2.bminfo $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Bitmaps/rsz_logo_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/tdc., $(notdir $(TDC_SOURCES_Visu_1:.tdc=.vco)))

$(TEMP_PATH_Visu_1)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#Trend Data Configuration END




# ColorMap Table
CLM_OBJECTS_Visu_1 = $(addprefix $(TEMP_PATH_Visu_1)/clm., $(notdir $(CLM_SOURCES_Visu_1:.clm=.vco)))

$(TEMP_PATH_Visu_1)/clm.status.vco: $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/ColorMaps/status.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu_1)' $(VCCFLAGS_Visu_1)  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas


#ColorMap Table END


#
# Borders
#
BDR_SOURCES_Visu_1=$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Borders/FrameHeader.bdr 
BDR_OBJECTS_Visu_1=$(TEMP_PATH_Visu_1)/bdr.Bordermanager.vco
$(TEMP_PATH_Visu_1)/bdr.Bordermanager.vco: $(BDR_SOURCES_Visu_1)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Visu_1)' $(BDRFLAGS_Visu_1) $(VCCFLAGS_Visu_1) -p Visu_1$(SRC_PATH_Visu_1)
#
# Logical fonts
#
$(TEMP_PATH_Visu_1)/lfnt.en.vco: $(TEMP_PATH_Visu_1)/en.lfnt $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu_1) $(VCCFLAGS_Visu_1) -p Visu_1 -sfas
$(TEMP_PATH_Visu_1)/lfnt.da.vco: $(TEMP_PATH_Visu_1)/da.lfnt $(VC_LANGUAGES_Visu_1)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu_1) $(VCCFLAGS_Visu_1) -p Visu_1 -sfas
LFNT_OBJECTS_Visu_1=$(TEMP_PATH_Visu_1)/lfnt.en.vco $(TEMP_PATH_Visu_1)/lfnt.da.vco 

#Runtime Object
$(VCR_OBJECT_Visu_1) : $(VCR_SOURCE_Visu_1)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_Visu_1) -rt  -p Visu_1 -so $(VC_STATIC_OPTIONS_Visu_1) -vcr 4330 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Visu_1=$(TEMP_PATH_Visu_1)/localres.vca
$(LIB_LOCAL_RES_Visu_1) : $(TEMP_PATH_Visu_1)/Visu_102.ccf

# Bitmap Library rules
LIB_BMP_RES_Visu_1=$(TEMP_PATH_Visu_1)/bmpres.vca
$(LIB_BMP_RES_Visu_1) : $(TEMP_PATH_Visu_1)/Visu_103.ccf
$(BMGRP_OBJECTS_Visu_1) : $(PALFILE_Visu_1) $(VC_LANGUAGES_Visu_1)
$(BMINFO_OBJECTS_Visu_1) : $(PALFILE_Visu_1)

BUILD_FILE_Visu_1=$(TEMP_PATH_Visu_1)/BuildFiles.arg
$(BUILD_FILE_Visu_1) : BUILD_FILE_CLEAN_Visu_1 $(BUILD_SOURCES_Visu_1)
BUILD_FILE_CLEAN_Visu_1:
	$(RM) /F /Q '$(BUILD_FILE_Visu_1)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Visu_1=$(AS_CPU_PATH)/Visu_101.br $(AS_CPU_PATH)/Visu_102.br $(AS_CPU_PATH)/Visu_103.br $(FONT_MODULES_Visu_1) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Visu_1): $(PROJECT_MODULES_Visu_1) $(TEMP_PATH_Visu_1)/Visu_1.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu_1) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Visu_1)/Visu_1.prj' -o '$@' -vc '$(VCOBJECT_Visu_1)' $(DEPENDENCIES_Visu_1) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Visu_1:.br=)))

$(AS_CPU_PATH)/Visu_101.br: $(TEMP_PATH_Visu_1)/Visu_101.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu_1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu_1)' -f '$<' -o '$@' $(DEPENDENCIES_Visu_1)

$(AS_CPU_PATH)/Visu_102.br: $(TEMP_PATH_Visu_1)/Visu_102.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu_1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu_1)' -f '$<' -o '$@' $(DEPENDENCIES_Visu_1)

$(AS_CPU_PATH)/Visu_103.br: $(TEMP_PATH_Visu_1)/Visu_103.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu_1) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu_1)' -f '$<' -o '$@' $(DEPENDENCIES_Visu_1)

# General Build rules END
$(LIB_LOCAL_OBJ_Visu_1) : $(TEMP_PATH_Visu_1)/Visu_101.ccf

# Main Module
$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu_1.vcm:
$(TEMP_PATH_Visu_1)/Visu_1.prj: $(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu_1.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu_1.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_Visu_1) -o Visu_1 -proj Visu_1
	$(VCPL) $(notdir $(PROJECT_MODULES_Visu_1:.br=,4)) Visu_1,2 -o '$@' -p Visu_1 -vc 'Visu_1' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Visu_1)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu_1.vcm' -vcr '$(VCR_SOURCE_Visu_1)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Visu_1=$(TEMP_PATH_Visu_1)\Visu_101.ccf.lfl
$(TEMP_PATH_Visu_1)/Visu_101.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu_1) $(TEMP_PATH_Visu_1)/Visu_103.ccf $(LIB_LOCAL_RES_Visu_1) $(TEMP_PATH_Visu_1)/Visu_102.ccf $(DIS_OBJECTS_Visu_1) $(PAGE_OBJECTS_Visu_1) $(VCS_OBJECTS_Visu_1) $(VCVK_OBJECTS_Visu_1) $(VCRT_OBJECTS_Visu_1) $(TPR_OBJECTS_Visu_1) $(TXTGRP_OBJECTS_Visu_1) $(LAYER_OBJECTS_Visu_1) $(VCR_OBJECT_Visu_1) $(TDC_OBJECTS_Visu_1) $(TRD_OBJECTS_Visu_1) $(TRE_OBJECTS_Visu_1) $(PRC_OBJECTS_Visu_1) $(SCR_OBJECTS_Visu_1)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Visu_1)" DEL /F /Q "$(DEL_TARGET01_LFL_Visu_1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu_1)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Visu_1)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu_1 -lib '$(LIB_LOCAL_OBJ_Visu_1)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Visu_1=$(TEMP_PATH_Visu_1)\Visu_102.ccf.lfl
$(TEMP_PATH_Visu_1)/Visu_102.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu_1) $(TEMP_PATH_Visu_1)/Visu_103.ccf $(BDR_OBJECTS_Visu_1) $(LFNT_OBJECTS_Visu_1) $(CLM_OBJECTS_Visu_1)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Visu_1)" DEL /F /Q "$(DEL_TARGET02_LFL_Visu_1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu_1)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Visu_1:.vco=.vco|)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu_1 -lib '$(LIB_LOCAL_RES_Visu_1)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Visu_1=$(TEMP_PATH_Visu_1)\Visu_103.ccf.lfl
$(TEMP_PATH_Visu_1)/Visu_103.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Visu_1) $(BMINFO_OBJECTS_Visu_1) $(PALFILE_Visu_1)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Visu_1)" DEL /F /Q "$(DEL_TARGET03_LFL_Visu_1)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/Visu_Resized_Resized/Package.vcp' -temp '$(TEMP_PATH_Visu_1)' -prj '$(PRJ_PATH_Visu_1)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu_1 -lib '$(LIB_BMP_RES_Visu_1)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Visu_1

vcPostBuild_Visu_1 :
	$(VCC) -pb -vcm '$(TEMP_PATH_Visu_1)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Visu_1) -p Visu_1 -vcr 4330 -sfas

# Post Build Steps END
