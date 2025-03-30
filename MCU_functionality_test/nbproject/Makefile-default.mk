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
FINAL_IMAGE=${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../Milestones/M3/M3_demo/Si5351.c ../Milestones/M3/M3_demo/button.c ../Milestones/M3/M3_demo/ft232.c ../Milestones/M3/M3_demo/lcd1602.c ../Milestones/M3/M3_demo/main_modified_UART.c ../Milestones/M3/M3_demo/rotary_encoder.c ../Milestones/M3/M3_demo/timer.c ../Milestones/M3/M3_demo/twi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/581199568/Si5351.o ${OBJECTDIR}/_ext/581199568/button.o ${OBJECTDIR}/_ext/581199568/ft232.o ${OBJECTDIR}/_ext/581199568/lcd1602.o ${OBJECTDIR}/_ext/581199568/main_modified_UART.o ${OBJECTDIR}/_ext/581199568/rotary_encoder.o ${OBJECTDIR}/_ext/581199568/timer.o ${OBJECTDIR}/_ext/581199568/twi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/581199568/Si5351.o.d ${OBJECTDIR}/_ext/581199568/button.o.d ${OBJECTDIR}/_ext/581199568/ft232.o.d ${OBJECTDIR}/_ext/581199568/lcd1602.o.d ${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d ${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d ${OBJECTDIR}/_ext/581199568/timer.o.d ${OBJECTDIR}/_ext/581199568/twi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/581199568/Si5351.o ${OBJECTDIR}/_ext/581199568/button.o ${OBJECTDIR}/_ext/581199568/ft232.o ${OBJECTDIR}/_ext/581199568/lcd1602.o ${OBJECTDIR}/_ext/581199568/main_modified_UART.o ${OBJECTDIR}/_ext/581199568/rotary_encoder.o ${OBJECTDIR}/_ext/581199568/timer.o ${OBJECTDIR}/_ext/581199568/twi.o

# Source Files
SOURCEFILES=../Milestones/M3/M3_demo/Si5351.c ../Milestones/M3/M3_demo/button.c ../Milestones/M3/M3_demo/ft232.c ../Milestones/M3/M3_demo/lcd1602.c ../Milestones/M3/M3_demo/main_modified_UART.c ../Milestones/M3/M3_demo/rotary_encoder.c ../Milestones/M3/M3_demo/timer.c ../Milestones/M3/M3_demo/twi.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/581199568/Si5351.o: ../Milestones/M3/M3_demo/Si5351.c  .generated_files/flags/default/2eceececf61fd9d2dd67cd1307b399a2ab63e519 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/Si5351.o.d" -MT "${OBJECTDIR}/_ext/581199568/Si5351.o.d" -MT ${OBJECTDIR}/_ext/581199568/Si5351.o -o ${OBJECTDIR}/_ext/581199568/Si5351.o ../Milestones/M3/M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/581199568/button.o: ../Milestones/M3/M3_demo/button.c  .generated_files/flags/default/8845c108284ee9289bb513427816ed605df292e2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/button.o.d" -MT "${OBJECTDIR}/_ext/581199568/button.o.d" -MT ${OBJECTDIR}/_ext/581199568/button.o -o ${OBJECTDIR}/_ext/581199568/button.o ../Milestones/M3/M3_demo/button.c 
	
${OBJECTDIR}/_ext/581199568/ft232.o: ../Milestones/M3/M3_demo/ft232.c  .generated_files/flags/default/5f155efa766640a6e762259078ea06f309342b77 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/ft232.o.d" -MT "${OBJECTDIR}/_ext/581199568/ft232.o.d" -MT ${OBJECTDIR}/_ext/581199568/ft232.o -o ${OBJECTDIR}/_ext/581199568/ft232.o ../Milestones/M3/M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/581199568/lcd1602.o: ../Milestones/M3/M3_demo/lcd1602.c  .generated_files/flags/default/685fc8cf8708dfdcddc8348b14f2b93b5cf09122 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/581199568/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/581199568/lcd1602.o -o ${OBJECTDIR}/_ext/581199568/lcd1602.o ../Milestones/M3/M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/581199568/main_modified_UART.o: ../Milestones/M3/M3_demo/main_modified_UART.c  .generated_files/flags/default/1bc42443a1c29342f9cff47a950d8b9b74b8dfa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/581199568/main_modified_UART.o -o ${OBJECTDIR}/_ext/581199568/main_modified_UART.o ../Milestones/M3/M3_demo/main_modified_UART.c 
	
${OBJECTDIR}/_ext/581199568/rotary_encoder.o: ../Milestones/M3/M3_demo/rotary_encoder.c  .generated_files/flags/default/615373a6ba60d9612bf85eb0de74fd6c9015c4e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/581199568/rotary_encoder.o -o ${OBJECTDIR}/_ext/581199568/rotary_encoder.o ../Milestones/M3/M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/581199568/timer.o: ../Milestones/M3/M3_demo/timer.c  .generated_files/flags/default/22e0dbda13b717ed015fa6c5a82062c72faf418 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/timer.o.d" -MT "${OBJECTDIR}/_ext/581199568/timer.o.d" -MT ${OBJECTDIR}/_ext/581199568/timer.o -o ${OBJECTDIR}/_ext/581199568/timer.o ../Milestones/M3/M3_demo/timer.c 
	
${OBJECTDIR}/_ext/581199568/twi.o: ../Milestones/M3/M3_demo/twi.c  .generated_files/flags/default/589c61bb9338ae80b8b290a7b091e52e5e26c7b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/twi.o.d" -MT "${OBJECTDIR}/_ext/581199568/twi.o.d" -MT ${OBJECTDIR}/_ext/581199568/twi.o -o ${OBJECTDIR}/_ext/581199568/twi.o ../Milestones/M3/M3_demo/twi.c 
	
else
${OBJECTDIR}/_ext/581199568/Si5351.o: ../Milestones/M3/M3_demo/Si5351.c  .generated_files/flags/default/15a4af02da76a21e08118534f9a9eff3b675162 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/Si5351.o.d" -MT "${OBJECTDIR}/_ext/581199568/Si5351.o.d" -MT ${OBJECTDIR}/_ext/581199568/Si5351.o -o ${OBJECTDIR}/_ext/581199568/Si5351.o ../Milestones/M3/M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/581199568/button.o: ../Milestones/M3/M3_demo/button.c  .generated_files/flags/default/3d7a41578aee52ee2b942a1d278dbc64f3e8d4b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/button.o.d" -MT "${OBJECTDIR}/_ext/581199568/button.o.d" -MT ${OBJECTDIR}/_ext/581199568/button.o -o ${OBJECTDIR}/_ext/581199568/button.o ../Milestones/M3/M3_demo/button.c 
	
${OBJECTDIR}/_ext/581199568/ft232.o: ../Milestones/M3/M3_demo/ft232.c  .generated_files/flags/default/b014d876e6a9037c24ce93d1220cae1c2e8b55ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/ft232.o.d" -MT "${OBJECTDIR}/_ext/581199568/ft232.o.d" -MT ${OBJECTDIR}/_ext/581199568/ft232.o -o ${OBJECTDIR}/_ext/581199568/ft232.o ../Milestones/M3/M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/581199568/lcd1602.o: ../Milestones/M3/M3_demo/lcd1602.c  .generated_files/flags/default/406de321759ec7be3aa78ad6f1f026587832bb0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/581199568/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/581199568/lcd1602.o -o ${OBJECTDIR}/_ext/581199568/lcd1602.o ../Milestones/M3/M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/581199568/main_modified_UART.o: ../Milestones/M3/M3_demo/main_modified_UART.c  .generated_files/flags/default/95a0f30cfdd9959e0a6aec795ac8b8fe37597814 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/581199568/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/581199568/main_modified_UART.o -o ${OBJECTDIR}/_ext/581199568/main_modified_UART.o ../Milestones/M3/M3_demo/main_modified_UART.c 
	
${OBJECTDIR}/_ext/581199568/rotary_encoder.o: ../Milestones/M3/M3_demo/rotary_encoder.c  .generated_files/flags/default/45add96dfcd054654dda3c84a062156690cdd06e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/581199568/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/581199568/rotary_encoder.o -o ${OBJECTDIR}/_ext/581199568/rotary_encoder.o ../Milestones/M3/M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/581199568/timer.o: ../Milestones/M3/M3_demo/timer.c  .generated_files/flags/default/a6088e6142636fbf2dfe43ea457be0b555708712 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/timer.o.d" -MT "${OBJECTDIR}/_ext/581199568/timer.o.d" -MT ${OBJECTDIR}/_ext/581199568/timer.o -o ${OBJECTDIR}/_ext/581199568/timer.o ../Milestones/M3/M3_demo/timer.c 
	
${OBJECTDIR}/_ext/581199568/twi.o: ../Milestones/M3/M3_demo/twi.c  .generated_files/flags/default/6d44410b180e1faf32b1c11bbba2ea4a7aa59bc1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/581199568" 
	@${RM} ${OBJECTDIR}/_ext/581199568/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/581199568/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/581199568/twi.o.d" -MT "${OBJECTDIR}/_ext/581199568/twi.o.d" -MT ${OBJECTDIR}/_ext/581199568/twi.o -o ${OBJECTDIR}/_ext/581199568/twi.o ../Milestones/M3/M3_demo/twi.c 
	
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
${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/MCU_functionality_test.${IMAGE_TYPE}.hex"
	
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
