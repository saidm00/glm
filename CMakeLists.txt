cmake_minimum_required (VERSION 3.8 FATAL_ERROR)

project(glm LANGUAGES C)

#set(CMAKE_C_COMPILER "clang")

if (CMAKE_BUILD_TYPE EQUAL "DEBUG")
	set(CMAKE_C_FLAGS "-std=c17 -E /Z7 /Zi")
elseif (CMAKE_BUILD_TYPE EQUAL "RELEASE")
endif()

#set(CMAKE_C_STANDARD_REQUIRED 11)
#set(CMAKE_C_STANDARD 11)

add_executable(glm_test "./test/main.c")
target_include_directories(glm_test PUBLIC "${CMAKE_CURRENT_LIST_DIR}")