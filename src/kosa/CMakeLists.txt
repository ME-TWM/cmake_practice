cmake_minimum_required(VERSION 3.5)

project(kosa)

# 奇怪，如果没有 depthFirstOrder.cpp 的话会报错：undefined reference to `depthFirstOrder::getOrder()'
# 而没有 digraphpr.cpp 却不会报错
add_library(kosa_library SHARED 
    kosa.cpp
    #${PROJECT_SOURCE_DIR}/../digraphpr/digraphpr.cpp
    ${PROJECT_SOURCE_DIR}/../depthFirstOrder/depthFirstOrder.cpp)

set_target_properties(kosa_library PROPERTIES OUTPUT_NAME "kkkosa")  # 会在build/src目录下生成一个名为libkkkosa.so的动态库

target_include_directories(kosa_library PRIVATE ${PROJECT_SOURCE_DIR}/../../include)