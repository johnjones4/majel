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
include examples/server/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include examples/server/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/server/CMakeFiles/server.dir/flags.make

examples/server/CMakeFiles/server.dir/server.cpp.o: examples/server/CMakeFiles/server.dir/flags.make
examples/server/CMakeFiles/server.dir/server.cpp.o: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/server/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/server/CMakeFiles/server.dir/server.cpp.o"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/server.cpp.o -c /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/server/server.cpp

examples/server/CMakeFiles/server.dir/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/server.cpp.i"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/server/server.cpp > CMakeFiles/server.dir/server.cpp.i

examples/server/CMakeFiles/server.dir/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/server.cpp.s"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/server && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/server/server.cpp -o CMakeFiles/server.dir/server.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS = \
"/Users/johnjones/Developer/file-embedding-search/server/build/examples/CMakeFiles/common.dir/common.cpp.o"

bin/server: examples/server/CMakeFiles/server.dir/server.cpp.o
bin/server: examples/CMakeFiles/common.dir/common.cpp.o
bin/server: examples/server/CMakeFiles/server.dir/build.make
bin/server: libllama.a
bin/server: examples/server/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/server"
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/server/CMakeFiles/server.dir/build: bin/server

.PHONY : examples/server/CMakeFiles/server.dir/build

examples/server/CMakeFiles/server.dir/clean:
	cd /Users/johnjones/Developer/file-embedding-search/server/build/examples/server && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : examples/server/CMakeFiles/server.dir/clean

examples/server/CMakeFiles/server.dir/depend:
	cd /Users/johnjones/Developer/file-embedding-search/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnjones/Developer/file-embedding-search/server/llama.cpp /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/examples/server /Users/johnjones/Developer/file-embedding-search/server/build /Users/johnjones/Developer/file-embedding-search/server/build/examples/server /Users/johnjones/Developer/file-embedding-search/server/build/examples/server/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/server/CMakeFiles/server.dir/depend

