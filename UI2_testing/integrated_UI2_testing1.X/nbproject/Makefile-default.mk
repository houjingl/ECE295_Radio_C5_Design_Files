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
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/d04868e100b4848a56672653a937aa57112b7916 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/bf88e2fc72f3f09ebaad3525756e8363b882276f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/b042b19e14c43fc473806c32e56a90922f348177 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/e43737d1a2c531ca9e8734041c8ca5869ef593a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/84303bcffa81216cef9b25b4083084bf04130186 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/2ba6a45e63d5d6d442668187478996f2cfbeacb1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/2eaa807739cad341c31ebdd8a15e1b9d9087f5c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/18559c2ce15e55bf8ee79c799f6c1c75768f128c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/uart_testing.o: ../uart_testing.c  .generated_files/flags/default/3bfc35aaad0a6d9741453c3333cde0f376d00fea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/uart_testing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT "${OBJECTDIR}/_ext/1472/uart_testing.o.d" -MT ${OBJECTDIR}/_ext/1472/uart_testing.o -o ${OBJECTDIR}/_ext/1472/uart_testing.o ../uart_testing.c 
	
else
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/45257bbfbb4e1fbe923567a0536d3651da4825f4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/bd2fe3a197e74a0d1950bc1ef7943b4ae3c75244 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/be4845085bf8453813fcde1c3da589a985c6a043 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/16fb4aff06d075ef10d1da021b737c881a758ea1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/d5891698caabf3a1bb82e14ebbd8414cd0cfd23d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/6be23c92ad2f29d46c1700c53a8341a60f3a389 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/243ef9fd6f003db7b79e55012bc1d3d92657b6d5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/ef9b38d4a1c15db1c966e94bf8724c588236a9f6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
${OBJECTDIR}/_ext/1472/uart_testing.o: ../uart_testing.c  .generated_files/flags/default/42aeb67a7d563ebe84eb53cea211157f6fabf436 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
