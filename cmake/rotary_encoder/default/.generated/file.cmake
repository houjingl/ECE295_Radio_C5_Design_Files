# The following variables contains the files used by the different stages of the build process.
set(rotary_encoder_default_default_XC8_FILE_TYPE_assemble)
set_source_files_properties(${rotary_encoder_default_default_XC8_FILE_TYPE_assemble} PROPERTIES LANGUAGE ASM)
set(rotary_encoder_default_default_XC8_FILE_TYPE_assemblePreprocess)
set_source_files_properties(${rotary_encoder_default_default_XC8_FILE_TYPE_assemblePreprocess} PROPERTIES LANGUAGE ASM)
set(rotary_encoder_default_default_XC8_FILE_TYPE_compile
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../LCDfirmware/twi.c"
    "${CMAKE_CURRENT_SOURCE_DIR}/../../../rotary_encoder/rotary_encoder.X/rotary_encoder.c")
set_source_files_properties(${rotary_encoder_default_default_XC8_FILE_TYPE_compile} PROPERTIES LANGUAGE C)
set(rotary_encoder_default_default_XC8_FILE_TYPE_link)

# The (internal) path to the resulting build image.
set(rotary_encoder_default_internal_image_name "${CMAKE_CURRENT_SOURCE_DIR}/../../../_build/rotary_encoder/default/default.elf")

# The name of the resulting image, including namespace for configuration.
set(rotary_encoder_default_image_name "rotary_encoder_default_default.elf")

# The name of the image, excluding the namespace for configuration.
set(rotary_encoder_default_original_image_name "default.elf")

# The output directory of the final image.
set(rotary_encoder_default_output_dir "${CMAKE_CURRENT_SOURCE_DIR}/../../../out/rotary_encoder")
