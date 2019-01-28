cmake_minimum_required(VERSION 3.5)
project(eigen_templ VERSION 0.0.1)
set(CMAKE_CXX_STANDARD 17)

# Extra cmake module for auto discovery of tests
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

find_package(Eigen3 3.1.2 REQUIRED)

set(CATCH_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/lib)
add_library(Catch INTERFACE)
target_include_directories(Catch INTERFACE ${CATCH_INCLUDE_DIR})

add_executable(eigentempl src/main.cpp)
target_link_libraries(eigentempl Eigen3::Eigen)

add_executable(tests tests/tests_main.cpp)
target_link_libraries(tests Catch Eigen3::Eigen)