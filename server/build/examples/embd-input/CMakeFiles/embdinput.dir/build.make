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
include examples/embd-input/CMakeFiles/embdinput.dir/depend.make

# Include the progress variables for this target.
include examples/embd-input/CMakeFiles/embdinput.dir/progress.make

# Include the compile flags for this target's objects.
include examples/embd-input/CMakeFiles/embdinput.dir/flags.make

examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.o: examples/embd-input/CMakeFiles/embdinput.dir/flags.make
examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.o: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/embd-input/embd-input-lib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.o"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/embdinput.dir/embd-input-lib.cpp.o -c /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/embd-input/embd-input-lib.cpp

examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/embdinput.dir/embd-input-lib.cpp.i"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/embd-input/embd-input-lib.cpp > CMakeFiles/embdinput.dir/embd-input-lib.cpp.i

examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/embdinput.dir/embd-input-lib.cpp.s"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/embd-input/embd-input-lib.cpp -o CMakeFiles/embdinput.dir/embd-input-lib.cpp.s

# Object files for target embdinput
embdinput_OBJECTS = \
"CMakeFiles/embdinput.dir/embd-input-lib.cpp.o"

# External object files for target embdinput
embdinput_EXTERNAL_OBJECTS = \
"/Users/johnjones/Developer/file-embedding-search/server/build/examples/CMakeFiles/common.dir/common.cpp.o"

examples/embd-input/libembdinput.a: examples/embd-input/CMakeFiles/embdinput.dir/embd-input-lib.cpp.o
examples/embd-input/libembdinput.a: examples/CMakeFiles/common.dir/common.cpp.o
examples/embd-input/libembdinput.a: examples/embd-input/CMakeFiles/embdinput.dir/build.make
examples/embd-input/libembdinput.a: examples/embd-input/CMakeFiles/embdinput.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libembdinput.a"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && $(CMAKE_COMMAND) -P CMakeFiles/embdinput.dir/cmake_clean_target.cmake
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/embdinput.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/embd-input/CMakeFiles/embdinput.dir/build: examples/embd-input/libembdinput.a

.PHONY : examples/embd-input/CMakeFiles/embdinput.dir/build

examples/embd-input/CMakeFiles/embdinput.dir/clean:
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input && $(CMAKE_COMMAND) -P CMakeFiles/embdinput.dir/cmake_clean.cmake
.PHONY : examples/embd-input/CMakeFiles/embdinput.dir/clean

examples/embd-input/CMakeFiles/embdinput.dir/depend:
	cd /Users/johnjones/Developer/file-embedding-search/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnjones/Developer/file-embedding-search/server/llama.cpp /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/embd-input /Users/johnjones/Developer/file-embedding-search/server/build /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input /Users/johnjones/Developer/file-embedding-search/server/build/examples/embd-input/CMakeFiles/embdinput.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/embd-input/CMakeFiles/embdinput.dir/depend
