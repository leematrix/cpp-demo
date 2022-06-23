cmake_minimum_required(VERSION 3.19)
project(sdl2-demo)

set(CMAKE_CXX_STANDARD 11)
include_directories(/opt/homebrew/Cellar/sdl2/2.0.22/include/SDL2)
link_directories(/opt/homebrew/Cellar/sdl2/2.0.22/lib)

add_executable(sdl2-demo main.cpp hello-world.hpp hello-world2.hpp cleanup.hpp)
target_link_libraries(sdl2-demo SDL2)
