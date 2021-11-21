cmake_minimum_required(VERSION 3.5)

project(practice.exe)

message("build project ${PROJECT_NAME} begin! project dir: ${PROJECT_SOURCE_DIR}")

add_executable(${PROJECT_NAME} entry.cpp)

#set_target_properties(${PROJECT_NAME} PROPERTIES OUTPUT_NAME "practice.exe")

target_include_directories(${PROJECT_NAME} PRIVATE ${PROJECT_SOURCE_DIR}/include)

#对下面引用的库，要先生成这些库  (下面 add_subdirectory 和 target_link_libraries 先写哪个都可以)
# add_subdirectory: 添加一个子目录并构建该子目录(即如果这个dir下有CMakeLists.txt,就要先 add_subdirectory(dir))
# dir必须是当前 CMakeLists.txt 所在目录的子目录，否则会报错：dir is not a subdirectory of XXX
add_subdirectory(src/digraphpr)  
add_subdirectory(src/checkCycle)
add_subdirectory(src/depthFirstOrder)
add_subdirectory(src/kosa)

target_link_libraries(${PROJECT_NAME} PRIVATE digraphpr.so)  # 可以用ALIAS
target_link_libraries(${PROJECT_NAME} PRIVATE checkCycle_library)
target_link_libraries(${PROJECT_NAME} PRIVATE depthFirstOrder)
target_link_libraries(${PROJECT_NAME} PRIVATE kosa_library)  # 不能用kkkosa

