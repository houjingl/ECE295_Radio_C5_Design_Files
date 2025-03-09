# The following variables contains the files used by the different stages of the build process.
set(M1_Firmware_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${M1_Firmware_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)
set(M1_Firmware_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${M1_Firmware_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)
set(M1_Firmware_default_default_XC8_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../M1_firmware/M1_Firmware.X/main.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../M1_firmware/Si5351.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../M1_firmware/twi.c")
set_source_files_properties(${M1_Firmware_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(M1_Firmware_default_default_XC8_FILE_TYPE_link)

# The (internal) path to the resulting build image.
set(M1_Firmware_default_internal_image_name "${CMAKE_CURRENT_SOURCE_DIR}/../../../_build/M1_Firmware/default/default.elf")

# The name of the resulting image, including namespace for configuration.
set(M1_Firmware_default_image_name "M1_Firmware_default_default.elf")

# The name of the image, excluding the namespace for configuration.
set(M1_Firmware_default_original_image_name "default.elf")

# The output directory of the final image.
set(M1_Firmware_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/M1_Firmware")
