cmake_minimum_required(VERSION 3.5)

project(checkCycle)

add_library(checkCycle_library SHARED checkCycle.cpp)

SET_TARGET_PROPERTIES(checkCycle_library PROPERTIES OUTPUT_NAME ${PROJECT_NAME})

target_include_directories(checkCycle_library
    PRIVATE
    ${PROJECT_SOURCE_DIR}/../../include)

