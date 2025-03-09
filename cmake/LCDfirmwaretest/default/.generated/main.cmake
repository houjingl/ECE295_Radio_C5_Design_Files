include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(LCDfirmwaretest_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemble)
add_library(LCDfirmwaretest_default_default_XC8_assemble OBJECT ${LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemble})
    LCDfirmwaretest_default_default_XC8_assemble_rule(LCDfirmwaretest_default_default_XC8_assemble)
    list(APPEND LCDfirmwaretest_default_library_list "$<TARGET_OBJECTS:LCDfirmwaretest_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(LCDfirmwaretest_default_default_XC8_assemblePreprocess OBJECT ${LCDfirmwaretest_default_default_XC8_FILE_TYPE_assemblePreprocess})
    LCDfirmwaretest_default_default_XC8_assemblePreprocess_rule(LCDfirmwaretest_default_default_XC8_assemblePreprocess)
    list(APPEND LCDfirmwaretest_default_library_list "$<TARGET_OBJECTS:LCDfirmwaretest_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(LCDfirmwaretest_default_default_XC8_FILE_TYPE_compile)
add_library(LCDfirmwaretest_default_default_XC8_compile OBJECT ${LCDfirmwaretest_default_default_XC8_FILE_TYPE_compile})
    LCDfirmwaretest_default_default_XC8_compile_rule(LCDfirmwaretest_default_default_XC8_compile)
    list(APPEND LCDfirmwaretest_default_library_list "$<TARGET_OBJECTS:LCDfirmwaretest_default_default_XC8_compile>")
endif()

add_executable(${LCDfirmwaretest_default_image_name} ${LCDfirmwaretest_default_library_list})

target_link_libraries(${LCDfirmwaretest_default_image_name} PRIVATE ${LCDfirmwaretest_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
LCDfirmwaretest_default_link_rule(${LCDfirmwaretest_default_image_name})


# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${LCDfirmwaretest_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${LCDfirmwaretest_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${LCDfirmwaretest_default_image_name} ${LCDfirmwaretest_default_output_dir}/${LCDfirmwaretest_default_original_image_name}
                    BYPRODUCTS ${LCDfirmwaretest_default_output_dir}/${LCDfirmwaretest_default_original_image_name})
