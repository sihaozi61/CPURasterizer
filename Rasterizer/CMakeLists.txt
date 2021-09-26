cmake_minimum_required(VERSION 3.15.0)

project(CPURasterizer)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")

# Split dependencies file to make it easier for packagers
include(CMake/Dependencies.cmake)
find_package(OpenMP REQUIRED COMPONENTS CXX)

add_subdirectory(Rasterizer)