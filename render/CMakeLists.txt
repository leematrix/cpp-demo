cmake_minimum_required(VERSION 3.19)
project(render)

set(CMAKE_CXX_STANDARD 11)
include_directories(/Users/lzx/WorkSpace/Project/filament-v1.23.2/include)
link_directories(/Users/lzx/WorkSpace/Project/filament-v1.23.2/lib/x86_64)

add_executable(render main.cpp)