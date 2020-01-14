cmake_minimum_required (VERSION 3.8)

project(glm LANGUAGES C)

set(CMAKE_C_STANDARD 11)
#set(CMAKE_C_FLAGS "-O0")

add_executable(glm_test "./test/main.c")

target_include_directories(glm_test PRIVATE "${CMAKE_CURRENT_LIST_DIR}")