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
include CMakeFiles/practice.exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/practice.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/practice.exe.dir/flags.make

CMakeFiles/practice.exe.dir/entry.cpp.o: CMakeFiles/practice.exe.dir/flags.make
CMakeFiles/practice.exe.dir/entry.cpp.o: ../entry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/practice.exe.dir/entry.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/practice.exe.dir/entry.cpp.o -c /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/entry.cpp

CMakeFiles/practice.exe.dir/entry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/practice.exe.dir/entry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/entry.cpp > CMakeFiles/practice.exe.dir/entry.cpp.i

CMakeFiles/practice.exe.dir/entry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/practice.exe.dir/entry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/entry.cpp -o CMakeFiles/practice.exe.dir/entry.cpp.s

CMakeFiles/practice.exe.dir/entry.cpp.o.requires:

.PHONY : CMakeFiles/practice.exe.dir/entry.cpp.o.requires

CMakeFiles/practice.exe.dir/entry.cpp.o.provides: CMakeFiles/practice.exe.dir/entry.cpp.o.requires
	$(MAKE) -f CMakeFiles/practice.exe.dir/build.make CMakeFiles/practice.exe.dir/entry.cpp.o.provides.build
.PHONY : CMakeFiles/practice.exe.dir/entry.cpp.o.provides

CMakeFiles/practice.exe.dir/entry.cpp.o.provides.build: CMakeFiles/practice.exe.dir/entry.cpp.o


# Object files for target practice.exe
practice_exe_OBJECTS = \
"CMakeFiles/practice.exe.dir/entry.cpp.o"

# External object files for target practice.exe
practice_exe_EXTERNAL_OBJECTS =

practice.exe: CMakeFiles/practice.exe.dir/entry.cpp.o
practice.exe: CMakeFiles/practice.exe.dir/build.make
practice.exe: src/digraphpr/libdigraphpr_library.so
practice.exe: src/checkCycle/libcheckCycle.so
practice.exe: src/depthFirstOrder/libdepthFirstOrder.so
practice.exe: src/kosa/libkkkosa.so
practice.exe: CMakeFiles/practice.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable practice.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/practice.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/practice.exe.dir/build: practice.exe

.PHONY : CMakeFiles/practice.exe.dir/build

CMakeFiles/practice.exe.dir/requires: CMakeFiles/practice.exe.dir/entry.cpp.o.requires

.PHONY : CMakeFiles/practice.exe.dir/requires

CMakeFiles/practice.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/practice.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/practice.exe.dir/clean

CMakeFiles/practice.exe.dir/depend:
	cd /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tanweimin/code/program_practice/ALGORITHM/sort/pt /home/tanweimin/code/program_practice/ALGORITHM/sort/pt /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build /home/tanweimin/code/program_practice/ALGORITHM/sort/pt/build/CMakeFiles/practice.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/practice.exe.dir/depend

