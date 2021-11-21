cmake_minimum_required(VERSION 3.5)

project(depthFirstOrder)

add_library(${PROJECT_NAME} SHARED depthFirstOrder.cpp)

target_include_directories(${PROJECT_NAME}
    PRIVATE
    ${PROJECT_SOURCE_DIR}/../../include)

