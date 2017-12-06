cmake_minimum_required(VERSION 3.5)
project(tims-super-project)

add_library(cat_lib
    ${CMAKE_CURRENT_SOURCE_DIR}/include/cat.hpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/cat.cpp
)

install(DIRECTORY include/ DESTINATION include)

install(TARGETS cat_lib
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)

install(FILES
    "${CMAKE_CURRENT_SOURCE_DIR}/cat-config.cmake"
    DESTINATION lib/cmake/cat
)
