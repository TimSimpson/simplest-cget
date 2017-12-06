cmake_minimum_required(VERSION 3.5)
project(dog-app)

find_library(dog_lib_path NAMES "dog_lib")
add_library(dog_lib STATIC IMPORTED)
set_property(TARGET dog_lib PROPERTY IMPORTED_LOCATION "${dog_lib_path}")

add_executable(yippy ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(yippy dog_lib)
