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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.6/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.6/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/johnjones/Developer/file-embedding-search/server/llama.cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/johnjones/Developer/file-embedding-search/server/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/common.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/common.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/common.dir/flags.make

examples/CMakeFiles/common.dir/common.cpp.o: examples/CMakeFiles/common.dir/flags.make
examples/CMakeFiles/common.dir/common.cpp.o: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/common.dir/common.cpp.o"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/common.dir/common.cpp.o -c /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/common.cpp

examples/CMakeFiles/common.dir/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/common.dir/common.cpp.i"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/common.cpp > CMakeFiles/common.dir/common.cpp.i

examples/CMakeFiles/common.dir/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/common.dir/common.cpp.s"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/common.cpp -o CMakeFiles/common.dir/common.cpp.s

common: examples/CMakeFiles/common.dir/common.cpp.o
common: examples/CMakeFiles/common.dir/build.make

.PHONY : common

# Rule to build all files generated by this target.
examples/CMakeFiles/common.dir/build: common

.PHONY : examples/CMakeFiles/common.dir/build

examples/CMakeFiles/common.dir/clean:
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/common.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/common.dir/clean

examples/CMakeFiles/common.dir/depend:
	cd /Users/johnjones/Developer/file-embedding-search/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnjones/Developer/file-embedding-search/server/llama.cpp /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples /Users/johnjones/Developer/file-embedding-search/server/build /Users/johnjones/Developer/file-embedding-search/server/build/examples /Users/johnjones/Developer/file-embedding-search/server/build/examples/CMakeFiles/common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/common.dir/depend

