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
SOURCEFILES_QUOTED_IF_SPACED=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../main_modified_timer.c ../rotary_encoder.c ../timer.c ../twi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/main_modified_timer.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/Si5351.o.d ${OBJECTDIR}/_ext/1472/button.o.d ${OBJECTDIR}/_ext/1472/ft232.o.d ${OBJECTDIR}/_ext/1472/lcd1602.o.d ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d ${OBJECTDIR}/_ext/1472/main_modified_timer.o.d ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d ${OBJECTDIR}/_ext/1472/timer.o.d ${OBJECTDIR}/_ext/1472/twi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/Si5351.o ${OBJECTDIR}/_ext/1472/button.o ${OBJECTDIR}/_ext/1472/ft232.o ${OBJECTDIR}/_ext/1472/lcd1602.o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ${OBJECTDIR}/_ext/1472/main_modified_timer.o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ${OBJECTDIR}/_ext/1472/timer.o ${OBJECTDIR}/_ext/1472/twi.o

# Source Files
SOURCEFILES=../Si5351.c ../button.c ../ft232.c ../lcd1602.c ../main_modified_UART.c ../main_modified_timer.c ../rotary_encoder.c ../timer.c ../twi.c



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
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/9b4aa2ec70da64a60966b5bb303f7b715ff6e891 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/8b27004b63809a7e99d458cf2e541a1617151ce4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/ab173e0c546989d3a53a6195eb6c9c1a2a8c4e17 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/bc6db8aa3ab2d6ff0b139feb604f27989cd97e73 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/be89511a49b74d8fe895933bf1e62227d5f14b92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/main_modified_timer.o: ../main_modified_timer.c  .generated_files/flags/default/db80c89cd867bd1ac90b9d3a56230eacaf0f9ea9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_timer.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_timer.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_timer.o -o ${OBJECTDIR}/_ext/1472/main_modified_timer.o ../main_modified_timer.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/2f4b0e50418451325f58a3f6522fb6fa8ab5ddb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/9dd9125156450dfa92eefbea7814423d63c13775 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/951e4e9bfb6240d7875409b3932d76592e570356 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
else
${OBJECTDIR}/_ext/1472/Si5351.o: ../Si5351.c  .generated_files/flags/default/d12b12d82906b4fdc35b46b7c557433c27a6c2c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT "${OBJECTDIR}/_ext/1472/Si5351.o.d" -MT ${OBJECTDIR}/_ext/1472/Si5351.o -o ${OBJECTDIR}/_ext/1472/Si5351.o ../Si5351.c 
	
${OBJECTDIR}/_ext/1472/button.o: ../button.c  .generated_files/flags/default/2006c50a1e796eca4e43c243513257245844916f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/button.o.d" -MT "${OBJECTDIR}/_ext/1472/button.o.d" -MT ${OBJECTDIR}/_ext/1472/button.o -o ${OBJECTDIR}/_ext/1472/button.o ../button.c 
	
${OBJECTDIR}/_ext/1472/ft232.o: ../ft232.c  .generated_files/flags/default/de91da22a885d0040c23c07b034f9de9038ba447 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT "${OBJECTDIR}/_ext/1472/ft232.o.d" -MT ${OBJECTDIR}/_ext/1472/ft232.o -o ${OBJECTDIR}/_ext/1472/ft232.o ../ft232.c 
	
${OBJECTDIR}/_ext/1472/lcd1602.o: ../lcd1602.c  .generated_files/flags/default/cec3741ec7b945f5c7086abe4f9ad6d3d8751347 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/1472/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/1472/lcd1602.o -o ${OBJECTDIR}/_ext/1472/lcd1602.o ../lcd1602.c 
	
${OBJECTDIR}/_ext/1472/main_modified_UART.o: ../main_modified_UART.c  .generated_files/flags/default/fd2e8abf13fcc7fed740ceddf9683ec8e27e8262 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_UART.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_UART.o -o ${OBJECTDIR}/_ext/1472/main_modified_UART.o ../main_modified_UART.c 
	
${OBJECTDIR}/_ext/1472/main_modified_timer.o: ../main_modified_timer.c  .generated_files/flags/default/25ce8e76dd8068a4b1cadb0390795b84f43c65f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main_modified_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/main_modified_timer.o.d" -MT "${OBJECTDIR}/_ext/1472/main_modified_timer.o.d" -MT ${OBJECTDIR}/_ext/1472/main_modified_timer.o -o ${OBJECTDIR}/_ext/1472/main_modified_timer.o ../main_modified_timer.c 
	
${OBJECTDIR}/_ext/1472/rotary_encoder.o: ../rotary_encoder.c  .generated_files/flags/default/b7119e2c03789d267daba96686a98d3e193d2267 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/1472/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/1472/rotary_encoder.o -o ${OBJECTDIR}/_ext/1472/rotary_encoder.o ../rotary_encoder.c 
	
${OBJECTDIR}/_ext/1472/timer.o: ../timer.c  .generated_files/flags/default/ee62a708267968e268c4809c6e2795fdaa317fee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/timer.o.d" -MT "${OBJECTDIR}/_ext/1472/timer.o.d" -MT ${OBJECTDIR}/_ext/1472/timer.o -o ${OBJECTDIR}/_ext/1472/timer.o ../timer.c 
	
${OBJECTDIR}/_ext/1472/twi.o: ../twi.c  .generated_files/flags/default/c5ebc8707922f788eed389fe9796359bf009d0a2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/1472/twi.o.d" -MT "${OBJECTDIR}/_ext/1472/twi.o.d" -MT ${OBJECTDIR}/_ext/1472/twi.o -o ${OBJECTDIR}/_ext/1472/twi.o ../twi.c 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/integrated_ui_2.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
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
