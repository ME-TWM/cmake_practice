# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tanweimin/code/program_practice/ALGORITHM/sort/pt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build

# Include any dependencies generated for this target.
include src/digraphpr/CMakeFiles/digraphpr_library.dir/depend.make

# Include the progress variables for this target.
include src/digraphpr/CMakeFiles/digraphpr_library.dir/progress.make

# Include the compile flags for this target's objects.
include src/digraphpr/CMakeFiles/digraphpr_library.dir/flags.make

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o: src/digraphpr/CMakeFiles/digraphpr_library.dir/flags.make
src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o: ../src/digraphpr/digraphpr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o"
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o -c /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/src/digraphpr/digraphpr.cpp

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/digraphpr_library.dir/digraphpr.cpp.i"
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/src/digraphpr/digraphpr.cpp > CMakeFiles/digraphpr_library.dir/digraphpr.cpp.i

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/digraphpr_library.dir/digraphpr.cpp.s"
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/src/digraphpr/digraphpr.cpp -o CMakeFiles/digraphpr_library.dir/digraphpr.cpp.s

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.requires:

.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.requires

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.provides: src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.requires
	$(MAKE) -f src/digraphpr/CMakeFiles/digraphpr_library.dir/build.make src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.provides.build
.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.provides

src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.provides.build: src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o


# Object files for target digraphpr_library
digraphpr_library_OBJECTS = \
"CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o"

# External object files for target digraphpr_library
digraphpr_library_EXTERNAL_OBJECTS =

src/digraphpr/libdigraphpr_library.so: src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o
src/digraphpr/libdigraphpr_library.so: src/digraphpr/CMakeFiles/digraphpr_library.dir/build.make
src/digraphpr/libdigraphpr_library.so: src/digraphpr/CMakeFiles/digraphpr_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdigraphpr_library.so"
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/digraphpr_library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/digraphpr/CMakeFiles/digraphpr_library.dir/build: src/digraphpr/libdigraphpr_library.so

.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/build

src/digraphpr/CMakeFiles/digraphpr_library.dir/requires: src/digraphpr/CMakeFiles/digraphpr_library.dir/digraphpr.cpp.o.requires

.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/requires

src/digraphpr/CMakeFiles/digraphpr_library.dir/clean:
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr && $(CMAKE_COMMAND) -P CMakeFiles/digraphpr_library.dir/cmake_clean.cmake
.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/clean

src/digraphpr/CMakeFiles/digraphpr_library.dir/depend:
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tanweimin/code/program_practice/ALGORITHM/sort/pt /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/src/digraphpr /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/src/digraphpr/CMakeFiles/digraphpr_library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/digraphpr/CMakeFiles/digraphpr_library.dir/depend
