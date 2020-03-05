cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

project(glm VERSION 0.0.1 LANGUAGES C)

set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "Build the GLFW example programs" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "Build the GLFW test programs" FORCE)
add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/deps/glfw")

#set(CMAKE_C_COMPILER "C:/Program Files/LLVM/bin/clang.exe")
set(CMAKE_C_COMPILER "C:/msys64/mingw64/bin/gcc.exe")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large -m64 -std=gnu17")

#add_executable(teapot "./test/teapot.c")
#target_include_directories(teapot PRIVATE "${CMAKE_CURRENT_LIST_DIR}")
#target_link_libraries(teapot PRIVATE glfw OpenGL32)

add_executable(matrix_transform_test "./test/matrix_transform_test.c")
target_include_directories(matrix_transform_test PRIVATE "${CMAKE_CURRENT_LIST_DIR}")