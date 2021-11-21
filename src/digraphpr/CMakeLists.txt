cmake_minimum_required(VERSION 3.5)

project(digraphpr)

# 如果找不到这里的cpp文件，则报错： CMake can not determine linker language for target XXX
add_library(digraphpr_library SHARED digraphpr.cpp)  # SHARED STATIC 分别对应生成动态库 静态库

#SET_TARGET_PROPERTIES(digraphpr_library PROPERTIES OUTPUT_NAME "lib_digraphpr.so")

add_library(digraphpr.so ALIAS digraphpr_library)

target_include_directories(digraphpr_library 
    PRIVATE
    ${PROJECT_SOURCE_DIR}/../../include)
