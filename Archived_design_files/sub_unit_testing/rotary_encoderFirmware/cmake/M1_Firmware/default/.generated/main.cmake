include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(M1_Firmware_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(M1_Firmware_default_default_XC8_FILE_TYPE_assemble)
add_library(M1_Firmware_default_default_XC8_assemble OBJECT ${M1_Firmware_default_default_XC8_FILE_TYPE_assemble})
    M1_Firmware_default_default_XC8_assemble_rule(M1_Firmware_default_default_XC8_assemble)
    list(APPEND M1_Firmware_default_library_list "$<TARGET_OBJECTS:M1_Firmware_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(M1_Firmware_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(M1_Firmware_default_default_XC8_assemblePreprocess OBJECT ${M1_Firmware_default_default_XC8_FILE_TYPE_assemblePreprocess})
    M1_Firmware_default_default_XC8_assemblePreprocess_rule(M1_Firmware_default_default_XC8_assemblePreprocess)
    list(APPEND M1_Firmware_default_library_list "$<TARGET_OBJECTS:M1_Firmware_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(M1_Firmware_default_default_XC8_FILE_TYPE_compile)
add_library(M1_Firmware_default_default_XC8_compile OBJECT ${M1_Firmware_default_default_XC8_FILE_TYPE_compile})
    M1_Firmware_default_default_XC8_compile_rule(M1_Firmware_default_default_XC8_compile)
    list(APPEND M1_Firmware_default_library_list "$<TARGET_OBJECTS:M1_Firmware_default_default_XC8_compile>")
endif()

add_executable(${M1_Firmware_default_image_name} ${M1_Firmware_default_library_list})

target_link_libraries(${M1_Firmware_default_image_name} PRIVATE ${M1_Firmware_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
M1_Firmware_default_link_rule(${M1_Firmware_default_image_name})


# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${M1_Firmware_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${M1_Firmware_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${M1_Firmware_default_image_name} ${M1_Firmware_default_output_dir}/${M1_Firmware_default_original_image_name}
                    BYPRODUCTS ${M1_Firmware_default_output_dir}/${M1_Firmware_default_original_image_name})
