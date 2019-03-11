cmake_minimum_required(VERSION 2.8)
project(cglm)

#set(CMAKE_C_STANDARD 11)

set(CGLM_INCLUDE_DIR ${CMAKE_CURRENT_LIST_DIR}/cglm)
set(CGLM_SOURCE_DIR ${CGLM_INCLUDE_DIR})

file(GLOB CGLM_HEADERS ${CGLM_INCLUDE_DIR} *.h)
file(GLOB CGLM_SOURCES ${CGLM_SOURCE_DIR} *.c)
add_library(cglm SHARED ${CGLM_SOURCES} ${CGLM_HEADERS})

add_executable(cglm_test main.c)

include_directories(cglm_test PRIVATE ${CMAKE_CURRENT_LIST_DIR})
target_link_libraries(cglm_test PRIVATE cglm)