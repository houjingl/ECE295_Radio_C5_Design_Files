#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c ../twi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Si5351.o.d ${OBJECTDIR}/_ext/1472/button.o.d ${OBJECTDIR}/_ext/1472/ft232.o.d ${OBJECTDIR}/_ext/1472/lcd1602.o.d ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d ${OBJECTDIR}/_ext/1472/timer.o.d ${OBJECTDIR}/_ext/1472/twi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o

# Source Files
SOURCEFILES=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c ../twi.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/9e4b47e6f7427b496cb3c472e7558e68be9db645 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/1b8aaa676da81f1aaf2c8655230fe3e9a934deb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/c335b37894628057004aa8f64ad40e18fbfed63d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/e77b117d5d97f05439e23cd68764c90f27b06ca4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/ec7565987af21775f93ed34d2686c9896d809659 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/e4c4cd79d997ce6f3ad087d9664f38251aa7ed80 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/c8d3515d1fee1c55223964bc308e392c333c7e23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/b7254782d247cb8efc5a5a55d670e2dc6fdb9067 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
else
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/ee74bfc5af6a29f0689bf999c3e24cb92504c168 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/1e788e5ce6879b812858c7dc03ac2f6e0ae3ff24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/5485d48f1f0a749a86e8032fc98e7e92130b1301 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/5d682403df050687ebba12c62d8148822b0874a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/acac2d908aa52b73ef4b7037d6cc13945a585b23 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/ce8db982f3a5251106aadb0bcf527d7be217d0df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/2148e7b1014bb70a29e8fbaadd29a36702590db7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/24882d3d64540d54efa53df89fc06829e896b8e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
