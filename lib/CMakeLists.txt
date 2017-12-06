cmake_minimum_required(VERSION 3.5)
project(tims-super-project)

add_library(dog_lib
    ${CMAKE_CURRENT_SOURCE_DIR}/include/dog.hpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/dog.cpp
)

install(DIRECTORY include/ DESTINATION include)

install(TARGETS dog_lib
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
)
