cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

project(glm VERSION 0.0.1 LANGUAGES C)

set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "Build the GLFW example programs" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "Build the GLFW test programs" FORCE)
#option(BUILD_SHARED_LIBS "Build shared libraries" CACHE OFF)
#option(GLFW_BUILD_EXAMPLES "Build the GLFW example programs" CACHE ON)
#option(GLFW_BUILD_TESTS "Build the GLFW test programs" CACHE OFF)
#option(GLFW_BUILD_DOCS "Build the GLFW documentation" CACHE OFF)
#option(GLFW_INSTALL "Generate installation target" CACHE OFF)
#option(GLFW_VULKAN_STATIC "Assume the Vulkan loader is linked with the application" CACHE OFF)
add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/deps/glfw")

#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcmodel=large -m64 -std=c17")
#set(CMAKE_C_STANDARD_REQUIRED 11)
#set(CMAKE_C_STANDARD 11)

#add_library(glm STATIC "glm/ext/type_float4.h")


#add_executable(glm_hadd_vec4_test "./test/hadd_vec4_test.c")
#target_link_libraries(glm_hadd_vec4_test PRIVATE pthread)
#target_link_libraries(glm_test PRIVATE glm)

add_executable(hello_particles_gl1 "./test/hello_particles_gl1.c")
target_include_directories(hello_particles_gl1 PRIVATE "${CMAKE_CURRENT_LIST_DIR}")
target_link_libraries(hello_particles_gl1 PRIVATE glfw OpenGL32)