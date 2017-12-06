cmake_minimum_required(VERSION 3.5)
project(tims-super-project)

include(CMakePackageConfigHelpers)

add_library(dog_lib
    ${CMAKE_CURRENT_SOURCE_DIR}/include/dog.hpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/dog.cpp
)

target_include_directories(dog_lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
)

install(DIRECTORY include/ DESTINATION include)

install(TARGETS dog_lib
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    INCLUDES DESTINATION include
)
