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
FINAL_IMAGE=${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c ../twi.c ../uart_testing.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o ${OBJECTDIR}/_ext/1472/uart_testing.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Si5351.o.d ${OBJECTDIR}/_ext/1472/button.o.d ${OBJECTDIR}/_ext/1472/ft232.o.d ${OBJECTDIR}/_ext/1472/lcd1602.o.d ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d ${OBJECTDIR}/_ext/1472/timer.o.d ${OBJECTDIR}/_ext/1472/twi.o.d ${OBJECTDIR}/_ext/1472/uart_testing.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o ${OBJECTDIR}/_ext/1472/uart_testing.o

# Source Files
SOURCEFILES=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../rotary_encoder.c ../timer.c ../twi.c ../uart_testing.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/d9fd309110ae9ff518d28617f94579e14ac3e4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/38d18b09feeb3d9e7559618f19c12bb2140476a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/c3cebe158114805cfc449d41a1df1e5f0e2cc15a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/f27b418bb6366142d19f2bf6bf4b038b9426c647 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/876af187e4440ae6d8270e09f7933373eab0e687 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/eacc6efe14541e95d29ce13fa52e6c0eea321ee3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/47dee8819752e46ca74e22402c3a9407abd9d501 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/61dcd5fba3b54591083399ef24c5b237ff2c9684 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/uart_testing.o: ../uart_testing.c  .generated_files/flags/default/c39b66ee5584699b0cc338826f5e6d2c84491871 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT ${OBJECTDIR}/_ext/1472/uart_testing.o -o ${OBJECTDIR}/_ext/1472/uart_testing.o ../uart_testing.c 
	
else
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/a4b977bec045e970633ffb1a0cdc6823124e7475 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/d29d44961b7537c4e13839165733c1bb04a7ea98 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/fa6d8174116313b02410a6a5c7bc9a0c857da215 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/234475f67586718dc0e6651ae2585bf11b79b935 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/4de2b42c8b21c9ca6de99461a495bdd4e41ba6ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/a331bc85010da955af2a61342e47353c75ca2f7b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/10e5a35dca568a234ef9a1c659498dd6b805c777 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/d965e8d0a657df0602b0d5acb0e7957a19b02f0e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/uart_testing.o: ../uart_testing.c  .generated_files/flags/default/885f9a2d065db7a8fa17e7f14a4a17dca5e9bd16 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT ${OBJECTDIR}/_ext/1472/uart_testing.o -o ${OBJECTDIR}/_ext/1472/uart_testing.o ../uart_testing.c 
	
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
${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/integrated_UI2_testing1.X.${IMAGE_TYPE}.hex"
	
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
