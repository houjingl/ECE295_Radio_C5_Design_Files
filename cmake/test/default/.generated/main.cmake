include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(test_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(test_default_default_XC8_FILE_TYPE_assemble)
add_library(test_default_default_XC8_assemble OBJECT ${test_default_default_XC8_FILE_TYPE_assemble})
    test_default_default_XC8_assemble_rule(test_default_default_XC8_assemble)
    list(APPEND test_default_library_list "$<TARGET_OBJECTS:test_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(test_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(test_default_default_XC8_assemblePreprocess OBJECT ${test_default_default_XC8_FILE_TYPE_assemblePreprocess})
    test_default_default_XC8_assemblePreprocess_rule(test_default_default_XC8_assemblePreprocess)
    list(APPEND test_default_library_list "$<TARGET_OBJECTS:test_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(test_default_default_XC8_FILE_TYPE_compile)
add_library(test_default_default_XC8_compile OBJECT ${test_default_default_XC8_FILE_TYPE_compile})
    test_default_default_XC8_compile_rule(test_default_default_XC8_compile)
    list(APPEND test_default_library_list "$<TARGET_OBJECTS:test_default_default_XC8_compile>")
endif()

add_executable(${test_default_image_name} ${test_default_library_list})

target_link_libraries(${test_default_image_name} PRIVATE ${test_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
test_default_link_rule(${test_default_image_name})


# Post build target to copy built file to the output directory.
add_custom_command(TARGET ${test_default_image_name} POST_BUILD
                    COMMAND ${CMAKE_COMMAND} -E make_directory ${test_default_output_dir}
                    COMMAND ${CMAKE_COMMAND} -E copy ${test_default_image_name} ${test_default_output_dir}/${test_default_original_image_name}
                    BYPRODUCTS ${test_default_output_dir}/${test_default_original_image_name})
