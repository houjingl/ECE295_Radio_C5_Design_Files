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
FINAL_IMAGE=${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../M3_demo/Si5351.c ../M3_demo/button.c ../M3_demo/ft232.c ../M3_demo/lcd1602.c ../M3_demo/rotary_encoder.c ../M3_demo/timer.c ../M3_demo/twi.c ../M3_demo/main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/511298643/Si5351.o ${OBJECTDIR}/_ext/511298643/button.o ${OBJECTDIR}/_ext/511298643/ft232.o ${OBJECTDIR}/_ext/511298643/lcd1602.o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ${OBJECTDIR}/_ext/511298643/timer.o ${OBJECTDIR}/_ext/511298643/twi.o ${OBJECTDIR}/_ext/511298643/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/511298643/Si5351.o.d ${OBJECTDIR}/_ext/511298643/button.o.d ${OBJECTDIR}/_ext/511298643/ft232.o.d ${OBJECTDIR}/_ext/511298643/lcd1602.o.d ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d ${OBJECTDIR}/_ext/511298643/timer.o.d ${OBJECTDIR}/_ext/511298643/twi.o.d ${OBJECTDIR}/_ext/511298643/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/511298643/Si5351.o ${OBJECTDIR}/_ext/511298643/button.o ${OBJECTDIR}/_ext/511298643/ft232.o ${OBJECTDIR}/_ext/511298643/lcd1602.o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ${OBJECTDIR}/_ext/511298643/timer.o ${OBJECTDIR}/_ext/511298643/twi.o ${OBJECTDIR}/_ext/511298643/main.o

# Source Files
SOURCEFILES=../M3_demo/Si5351.c ../M3_demo/button.c ../M3_demo/ft232.c ../M3_demo/lcd1602.c ../M3_demo/rotary_encoder.c ../M3_demo/timer.c ../M3_demo/twi.c ../M3_demo/main.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega324PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/511298643/Si5351.o: ../M3_demo/Si5351.c  .generated_files/flags/default/6e07cac7c9775118630be0c55cf26dc252ad327c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT ${OBJECTDIR}/_ext/511298643/Si5351.o -o ${OBJECTDIR}/_ext/511298643/Si5351.o ../M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/511298643/button.o: ../M3_demo/button.c  .generated_files/flags/default/ad8e42a15750a5c1ccb52541c31b07fd600a0a05 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/button.o.d" -MT "${OBJECTDIR}/_ext/511298643/button.o.d" -MT ${OBJECTDIR}/_ext/511298643/button.o -o ${OBJECTDIR}/_ext/511298643/button.o ../M3_demo/button.c 
	
${OBJECTDIR}/_ext/511298643/ft232.o: ../M3_demo/ft232.c  .generated_files/flags/default/27baa989ba6e8430245a6c762f45a6bdfb2c307b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT ${OBJECTDIR}/_ext/511298643/ft232.o -o ${OBJECTDIR}/_ext/511298643/ft232.o ../M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/511298643/lcd1602.o: ../M3_demo/lcd1602.c  .generated_files/flags/default/61be410b36d7e17b3fac335917bca79e5b7a728b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/511298643/lcd1602.o -o ${OBJECTDIR}/_ext/511298643/lcd1602.o ../M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/511298643/rotary_encoder.o: ../M3_demo/rotary_encoder.c  .generated_files/flags/default/88395004b9c15e7f4ffb2c528f301f5f80e90cfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/511298643/rotary_encoder.o -o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ../M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/511298643/timer.o: ../M3_demo/timer.c  .generated_files/flags/default/b51829f49cb48f6e5a0b5074747e37e99834045d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/timer.o.d" -MT "${OBJECTDIR}/_ext/511298643/timer.o.d" -MT ${OBJECTDIR}/_ext/511298643/timer.o -o ${OBJECTDIR}/_ext/511298643/timer.o ../M3_demo/timer.c 
	
${OBJECTDIR}/_ext/511298643/twi.o: ../M3_demo/twi.c  .generated_files/flags/default/fea5f9c71afe24bd2a0f93d167bf8d4535b932fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT ${OBJECTDIR}/_ext/511298643/twi.o -o ${OBJECTDIR}/_ext/511298643/twi.o ../M3_demo/twi.c 
	
${OBJECTDIR}/_ext/511298643/main.o: ../M3_demo/main.c  .generated_files/flags/default/873d720392ba6be00c5f6b9ebb137edd23b8dc06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/main.o.d" -MT "${OBJECTDIR}/_ext/511298643/main.o.d" -MT ${OBJECTDIR}/_ext/511298643/main.o -o ${OBJECTDIR}/_ext/511298643/main.o ../M3_demo/main.c 
	
else
${OBJECTDIR}/_ext/511298643/Si5351.o: ../M3_demo/Si5351.c  .generated_files/flags/default/a15798d56ce968cccd03b664b8a45835a762f05e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/Si5351.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT "${OBJECTDIR}/_ext/511298643/Si5351.o.d" -MT ${OBJECTDIR}/_ext/511298643/Si5351.o -o ${OBJECTDIR}/_ext/511298643/Si5351.o ../M3_demo/Si5351.c 
	
${OBJECTDIR}/_ext/511298643/button.o: ../M3_demo/button.c  .generated_files/flags/default/9a0c65efb3e57b844f5f16240ca812e020412ac2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/button.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/button.o.d" -MT "${OBJECTDIR}/_ext/511298643/button.o.d" -MT ${OBJECTDIR}/_ext/511298643/button.o -o ${OBJECTDIR}/_ext/511298643/button.o ../M3_demo/button.c 
	
${OBJECTDIR}/_ext/511298643/ft232.o: ../M3_demo/ft232.c  .generated_files/flags/default/702a268ec7106727ee80ffec5fc6584ed0b14354 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/ft232.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT "${OBJECTDIR}/_ext/511298643/ft232.o.d" -MT ${OBJECTDIR}/_ext/511298643/ft232.o -o ${OBJECTDIR}/_ext/511298643/ft232.o ../M3_demo/ft232.c 
	
${OBJECTDIR}/_ext/511298643/lcd1602.o: ../M3_demo/lcd1602.c  .generated_files/flags/default/146c66399ce7e1e65d74c6133bd94829c1a46156 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/lcd1602.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT "${OBJECTDIR}/_ext/511298643/lcd1602.o.d" -MT ${OBJECTDIR}/_ext/511298643/lcd1602.o -o ${OBJECTDIR}/_ext/511298643/lcd1602.o ../M3_demo/lcd1602.c 
	
${OBJECTDIR}/_ext/511298643/rotary_encoder.o: ../M3_demo/rotary_encoder.c  .generated_files/flags/default/d9d54f542412f7cdb020ba893d12116fefc37aa7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/rotary_encoder.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT "${OBJECTDIR}/_ext/511298643/rotary_encoder.o.d" -MT ${OBJECTDIR}/_ext/511298643/rotary_encoder.o -o ${OBJECTDIR}/_ext/511298643/rotary_encoder.o ../M3_demo/rotary_encoder.c 
	
${OBJECTDIR}/_ext/511298643/timer.o: ../M3_demo/timer.c  .generated_files/flags/default/2a178beec9e966a897942a24a114d4ddeb76a468 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/timer.o.d" -MT "${OBJECTDIR}/_ext/511298643/timer.o.d" -MT ${OBJECTDIR}/_ext/511298643/timer.o -o ${OBJECTDIR}/_ext/511298643/timer.o ../M3_demo/timer.c 
	
${OBJECTDIR}/_ext/511298643/twi.o: ../M3_demo/twi.c  .generated_files/flags/default/1e92aaf811812c6145908fb4cb00eaeb71a064eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT "${OBJECTDIR}/_ext/511298643/twi.o.d" -MT ${OBJECTDIR}/_ext/511298643/twi.o -o ${OBJECTDIR}/_ext/511298643/twi.o ../M3_demo/twi.c 
	
${OBJECTDIR}/_ext/511298643/main.o: ../M3_demo/main.c  .generated_files/flags/default/4efe6265281fdbd1590ac7b1207ecf3bdad8ba00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/511298643" 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/511298643/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/_ext/511298643/main.o.d" -MT "${OBJECTDIR}/_ext/511298643/main.o.d" -MT ${OBJECTDIR}/_ext/511298643/main.o -o ${OBJECTDIR}/_ext/511298643/main.o ../M3_demo/main.c 
	
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
${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1     -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/m3_testing.X.${IMAGE_TYPE}.hex"
	
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
