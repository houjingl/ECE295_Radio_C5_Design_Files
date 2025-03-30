# The following variables contains the files used by the different stages of the build process.
set(LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)
set(LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)
set(LCDfirmwaretest_default_default_XC8_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../LCDfirmware/LCDfirmwaretest.X/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../LCDfirmware/lcd.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../LCDfirmware/twi.c")
set_source_files_properties(${LCDfirmwaretest_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(LCDfirmwaretest_default_default_XC8_FILE_TYPE_link)

# The (internal) path to the resulting build image.
set(LCDfirmwaretest_default_internal_image_name "${CMAKE_CURRENT_SOURCE_DIR}/../../../_build/LCDfirmwaretest/default/default.elf")

# The name of the resulting image, including namespace for configuration.
set(LCDfirmwaretest_default_image_name "LCDfirmwaretest_default_default.elf")

# The name of the image, excluding the namespace for configuration.
set(LCDfirmwaretest_default_original_image_name "default.elf")

# The output directory of the final image.
set(LCDfirmwaretest_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/LCDfirmwaretest")
