cmake_minimum_required(VERSION 2.6)
 
include_directories(${CMAKE_SOURCE_DIR})
 
project(app)
 
add_executable(app main.c)
target_link_libraries(app calc)
