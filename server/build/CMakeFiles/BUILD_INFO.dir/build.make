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

# Utility rule file for BUILD_INFO.

# Include the progress variables for this target.
include CMakeFiles/BUILD_INFO.dir/progress.make

CMakeFiles/BUILD_INFO: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/build-info.h


/Users/johnjones/Developer/file-embedding-search/server/llama.cpp/build-info.h: /Users/johnjones/Developer/file-embedding-search/.git/modules/server/llama.cpp/index
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating build details from Git"
	cd /Users/johnjones/Developer/file-embedding-search/server/llama.cpp && /usr/local/Cellar/cmake/3.19.6/bin/cmake -P /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/scripts/build-info.cmake

BUILD_INFO: CMakeFiles/BUILD_INFO
BUILD_INFO: /Users/johnjones/Developer/file-embedding-search/server/llama.cpp/build-info.h
BUILD_INFO: CMakeFiles/BUILD_INFO.dir/build.make

.PHONY : BUILD_INFO

# Rule to build all files generated by this target.
CMakeFiles/BUILD_INFO.dir/build: BUILD_INFO

.PHONY : CMakeFiles/BUILD_INFO.dir/build

CMakeFiles/BUILD_INFO.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BUILD_INFO.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BUILD_INFO.dir/clean

CMakeFiles/BUILD_INFO.dir/depend:
	cd /Users/johnjones/Developer/file-embedding-search/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/johnjones/Developer/file-embedding-search/server/llama.cpp /Users/johnjones/Developer/file-embedding-search/server/llama.cpp /Users/johnjones/Developer/file-embedding-search/server/build /Users/johnjones/Developer/file-embedding-search/server/build /Users/johnjones/Developer/file-embedding-search/server/build/CMakeFiles/BUILD_INFO.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BUILD_INFO.dir/depend

