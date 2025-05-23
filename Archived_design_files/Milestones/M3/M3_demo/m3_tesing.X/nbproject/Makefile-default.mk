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
FINAL_IMAGE=${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../twi.c ../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/twi.o ${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/twi.o.d ${OBJECTDIR}/_ext/1472/Si5351.o.d ${OBJECTDIR}/_ext/1472/button.o.d ${OBJECTDIR}/_ext/1472/ft232.o.d ${OBJECTDIR}/_ext/1472/lcd1602.o.d ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d ${OBJECTDIR}/_ext/1472/timer.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/twi.o ${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o

# Source Files
SOURCEFILES=../twi.c ../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/d5b676b89f5d1874bec3e1d4bc66d582adadd530 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/e19b0ceac72053d99a6a29214234566994a2daf5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/fd512d7402932fc114d19987569a4b341c164e3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/fadb543cb62f8758576cf3e2d1b3cbe05feb8570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/86bda43f6fb815dfadede116fe11ed8f0a87aad4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/eee2e359e0d53ca8a1259225f56fc12bbcb46c88 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/243ce107616f869e7541760a674a59a5bac59d4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/7eb42d7e2930fc624668b664bb133ab23b31e751 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
else
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/6f2b6ca821005fc5b8820496a9358e83fcc6a10f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/bb54f75bf9557227703fa5f6ca400938957388cf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/525279494da20f8c007f7b8269bdeb8c813f7f4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/1264493bb7d723d07e84cbeb6e6db297d2334cbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/b0812397e79130f5cc5badafc84fe14f90b2885a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/d05bacfaac714e387afb4f60edf5b946dfcc7af6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/cdc347ae7c2725b00f81c94e5d6c78bf3322d4f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/1548d99acd163d5858f01eb14a7a90a96b578600 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
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
${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/m3_tesing.X.${IMAGE_TYPE}.hex"
	
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
