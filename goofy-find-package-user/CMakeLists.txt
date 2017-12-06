cmake_minimum_required(VERSION 3.5)
project(cat-app)

find_package(cat)

add_executable(mew ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_link_libraries(mew cat_lib)
