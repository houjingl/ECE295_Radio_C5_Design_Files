include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(rotary_encoder_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(rotary_encoder_default_default_XC8_FILE_TYPE_assemble)
add_library(rotary_encoder_default_default_XC8_assemble OBJECT ${rotary_encoder_default_default_XC8_FILE_TYPE_assemble})
    rotary_encoder_default_default_XC8_assemble_rule(rotary_encoder_default_default_XC8_assemble)
    list(APPEND rotary_encoder_default_library_list "$<TARGET_OBJECTS:rotary_encoder_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(rotary_encoder_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(rotary_encoder_default_default_XC8_assemblePreprocess OBJECT ${rotary_encoder_default_default_XC8_FILE_TYPE_assemblePreprocess})
    rotary_encoder_default_default_XC8_assemblePreprocess_rule(rotary_encoder_default_default_XC8_assemblePreprocess)
    list(APPEND rotary_encoder_default_library_list "$<TARGET_OBJECTS:rotary_encoder_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(rotary_encoder_default_default_XC8_FILE_TYPE_compile)
add_library(rotary_encoder_default_default_XC8_compile OBJECT ${rotary_encoder_default_default_XC8_FILE_TYPE_compile})
    rotary_encoder_default_default_XC8_compile_rule(rotary_encoder_default_default_XC8_compile)
    list(APPEND rotary_encoder_default_library_list "$<TARGET_OBJECTS:rotary_encoder_default_default_XC8_compile>")
endif()

add_executable(${rotary_encoder_default_image_name} ${rotary_encoder_default_library_list})

target_link_libraries(${rotary_encoder_default_image_name} PRIVATE ${rotary_encoder_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
rotary_encoder_default_link_rule(${rotary_encoder_default_image_name})


# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${rotary_encoder_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${rotary_encoder_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${rotary_encoder_default_image_name} ${rotary_encoder_default_output_dir}/${rotary_encoder_default_original_image_name}
                    BYPRODUCTS ${rotary_encoder_default_output_dir}/${rotary_encoder_default_original_image_name})
