# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lzx/WorkSpace/Project/leemartix/cpp-demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug

# Include any dependencies generated for this target.
include sdl2/CMakeFiles/sdl2-demo.dir/depend.make

# Include the progress variables for this target.
include sdl2/CMakeFiles/sdl2-demo.dir/progress.make

# Include the compile flags for this target's objects.
include sdl2/CMakeFiles/sdl2-demo.dir/flags.make

sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.o: sdl2/CMakeFiles/sdl2-demo.dir/flags.make
sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.o: ../sdl2/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.o"
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sdl2-demo.dir/main.cpp.o -c /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/sdl2/main.cpp

sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sdl2-demo.dir/main.cpp.i"
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/sdl2/main.cpp > CMakeFiles/sdl2-demo.dir/main.cpp.i

sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sdl2-demo.dir/main.cpp.s"
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/sdl2/main.cpp -o CMakeFiles/sdl2-demo.dir/main.cpp.s

# Object files for target sdl2-demo
sdl2__demo_OBJECTS = \
"CMakeFiles/sdl2-demo.dir/main.cpp.o"

# External object files for target sdl2-demo
sdl2__demo_EXTERNAL_OBJECTS =

sdl2/sdl2-demo: sdl2/CMakeFiles/sdl2-demo.dir/main.cpp.o
sdl2/sdl2-demo: sdl2/CMakeFiles/sdl2-demo.dir/build.make
sdl2/sdl2-demo: sdl2/CMakeFiles/sdl2-demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sdl2-demo"
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sdl2-demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdl2/CMakeFiles/sdl2-demo.dir/build: sdl2/sdl2-demo

.PHONY : sdl2/CMakeFiles/sdl2-demo.dir/build

sdl2/CMakeFiles/sdl2-demo.dir/clean:
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 && $(CMAKE_COMMAND) -P CMakeFiles/sdl2-demo.dir/cmake_clean.cmake
.PHONY : sdl2/CMakeFiles/sdl2-demo.dir/clean

sdl2/CMakeFiles/sdl2-demo.dir/depend:
	cd /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lzx/WorkSpace/Project/leemartix/cpp-demo /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/sdl2 /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2 /Users/lzx/WorkSpace/Project/leemartix/cpp-demo/cmake-build-debug/sdl2/CMakeFiles/sdl2-demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdl2/CMakeFiles/sdl2-demo.dir/depend
