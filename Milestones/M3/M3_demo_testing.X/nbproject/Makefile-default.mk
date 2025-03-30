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
FINAL_IMAGE=${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../M3_demo/Si5351.c ../M3_demo/button.c ../M3_demo/ft232.c ../M3_demo/lcd1602.c ../M3_demo/rotary_encoder.c ../M3_demo/twi.c ../M3_demo/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/511298643/Si5351.o ${OBJECTDIR}/_ext/511298643/button.o ${OBJECTDIR}/_ext/511298643/ft232.o ${OBJECTDIR}/_ext/511298643/lcd1602.o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ${OBJECTDIR}/_ext/511298643/twi.o ${OBJECTDIR}/_ext/511298643/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/511298643/Si5351.o.d ${OBJECTDIR}/_ext/511298643/button.o.d ${OBJECTDIR}/_ext/511298643/ft232.o.d ${OBJECTDIR}/_ext/511298643/lcd1602.o.d ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d ${OBJECTDIR}/_ext/511298643/twi.o.d ${OBJECTDIR}/_ext/511298643/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/511298643/Si5351.o ${OBJECTDIR}/_ext/511298643/button.o ${OBJECTDIR}/_ext/511298643/ft232.o ${OBJECTDIR}/_ext/511298643/lcd1602.o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ${OBJECTDIR}/_ext/511298643/twi.o ${OBJECTDIR}/_ext/511298643/main.o

# Source Files
SOURCEFILES=../M3_demo/Si5351.c ../M3_demo/button.c ../M3_demo/ft232.c ../M3_demo/lcd1602.c ../M3_demo/rotary_encoder.c ../M3_demo/twi.c ../M3_demo/main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/511298643/Si5351.o: ../M3_demo/Si5351.c  .generated_files/flags/default/8ab5827dcad3398ff3d60bc143c9daab8b393ae2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT ${OBJECTDIR}/_ext/511298643/Si5351.o -o ${OBJECTDIR}/_ext/511298643/Si5351.o ../M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/511298643/button.o: ../M3_demo/button.c  .generated_files/flags/default/2d3fd66a55120adc973bdff01efc549fc7d8bdd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/button.o.d" -MT "${OBJECTDIR}/_ext/511298643/button.o.d" -MT ${OBJECTDIR}/_ext/511298643/button.o -o ${OBJECTDIR}/_ext/511298643/button.o ../M3_demo/button.c 
	
${OBJECTDIR}/_ext/511298643/ft232.o: ../M3_demo/ft232.c  .generated_files/flags/default/471e46ad30d6fa1994c66c01e7f92213160af7b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT ${OBJECTDIR}/_ext/511298643/ft232.o -o ${OBJECTDIR}/_ext/511298643/ft232.o ../M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/511298643/lcd1602.o: ../M3_demo/lcd1602.c  .generated_files/flags/default/a77162413593cac9ed58c835e41973d8d9555284 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/511298643/lcd1602.o -o ${OBJECTDIR}/_ext/511298643/lcd1602.o ../M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/511298643/rotary_encoder.o: ../M3_demo/rotary_encoder.c  .generated_files/flags/default/a79d65abf59fce51c7059b48e2014e8a24e590b9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/511298643/rotary_encoder.o -o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ../M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/511298643/twi.o: ../M3_demo/twi.c  .generated_files/flags/default/2accde06106495d0390a7c06013c711d94134231 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT ${OBJECTDIR}/_ext/511298643/twi.o -o ${OBJECTDIR}/_ext/511298643/twi.o ../M3_demo/twi.c 
	
${OBJECTDIR}/_ext/511298643/main.o: ../M3_demo/main.c  .generated_files/flags/default/5179d60553f558da8e22d1d7d3a2f36aabd9997a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/main.o.d" -MT "${OBJECTDIR}/_ext/511298643/main.o.d" -MT ${OBJECTDIR}/_ext/511298643/main.o -o ${OBJECTDIR}/_ext/511298643/main.o ../M3_demo/main.c 
	
else
${OBJECTDIR}/_ext/511298643/Si5351.o: ../M3_demo/Si5351.c  .generated_files/flags/default/9c4bc67afc6a0c1d424a52ac3705af80048c705e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT ${OBJECTDIR}/_ext/511298643/Si5351.o -o ${OBJECTDIR}/_ext/511298643/Si5351.o ../M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/511298643/button.o: ../M3_demo/button.c  .generated_files/flags/default/b9d87684dbfa929ea688f31807c4695856f14eb6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/button.o.d" -MT "${OBJECTDIR}/_ext/511298643/button.o.d" -MT ${OBJECTDIR}/_ext/511298643/button.o -o ${OBJECTDIR}/_ext/511298643/button.o ../M3_demo/button.c 
	
${OBJECTDIR}/_ext/511298643/ft232.o: ../M3_demo/ft232.c  .generated_files/flags/default/c6756b70c80586528c78c351dc637da27a9f7796 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT ${OBJECTDIR}/_ext/511298643/ft232.o -o ${OBJECTDIR}/_ext/511298643/ft232.o ../M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/511298643/lcd1602.o: ../M3_demo/lcd1602.c  .generated_files/flags/default/f92157836a0515e68824235b55f100aff435c69a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/511298643/lcd1602.o -o ${OBJECTDIR}/_ext/511298643/lcd1602.o ../M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/511298643/rotary_encoder.o: ../M3_demo/rotary_encoder.c  .generated_files/flags/default/f68724f97392e1296e15b258ddc0f251106c4003 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/511298643/rotary_encoder.o -o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ../M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/511298643/twi.o: ../M3_demo/twi.c  .generated_files/flags/default/e4269930478de834c43ac7ed87b6fa11e3e74cf1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT ${OBJECTDIR}/_ext/511298643/twi.o -o ${OBJECTDIR}/_ext/511298643/twi.o ../M3_demo/twi.c 
	
${OBJECTDIR}/_ext/511298643/main.o: ../M3_demo/main.c  .generated_files/flags/default/ba6bed988e1a0013cd3738ed1021dc7d6c8bb5aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/main.o.d" -MT "${OBJECTDIR}/_ext/511298643/main.o.d" -MT ${OBJECTDIR}/_ext/511298643/main.o -o ${OBJECTDIR}/_ext/511298643/main.o ../M3_demo/main.c 
	
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
${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/M3_demo_testing.X.${IMAGE_TYPE}.hex"
	
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
