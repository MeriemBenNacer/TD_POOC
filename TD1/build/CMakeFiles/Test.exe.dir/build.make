# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/meriemben/TD_C++/TD_POOC/TD1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/meriemben/TD_C++/TD_POOC/TD1/build

# Include any dependencies generated for this target.
include CMakeFiles/Test.exe.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Test.exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Test.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Test.exe.dir/flags.make

CMakeFiles/Test.exe.dir/test.cpp.o: CMakeFiles/Test.exe.dir/flags.make
CMakeFiles/Test.exe.dir/test.cpp.o: ../test.cpp
CMakeFiles/Test.exe.dir/test.cpp.o: CMakeFiles/Test.exe.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/meriemben/TD_C++/TD_POOC/TD1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Test.exe.dir/test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Test.exe.dir/test.cpp.o -MF CMakeFiles/Test.exe.dir/test.cpp.o.d -o CMakeFiles/Test.exe.dir/test.cpp.o -c /home/meriemben/TD_C++/TD_POOC/TD1/test.cpp

CMakeFiles/Test.exe.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Test.exe.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/meriemben/TD_C++/TD_POOC/TD1/test.cpp > CMakeFiles/Test.exe.dir/test.cpp.i

CMakeFiles/Test.exe.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Test.exe.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/meriemben/TD_C++/TD_POOC/TD1/test.cpp -o CMakeFiles/Test.exe.dir/test.cpp.s

# Object files for target Test.exe
Test_exe_OBJECTS = \
"CMakeFiles/Test.exe.dir/test.cpp.o"

# External object files for target Test.exe
Test_exe_EXTERNAL_OBJECTS =

Test.exe: CMakeFiles/Test.exe.dir/test.cpp.o
Test.exe: CMakeFiles/Test.exe.dir/build.make
Test.exe: /usr/lib/x86_64-linux-gnu/libgtest_main.a
Test.exe: /usr/lib/x86_64-linux-gnu/libgtest.a
Test.exe: CMakeFiles/Test.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/meriemben/TD_C++/TD_POOC/TD1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Test.exe.dir/build: Test.exe
.PHONY : CMakeFiles/Test.exe.dir/build

CMakeFiles/Test.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Test.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Test.exe.dir/clean

CMakeFiles/Test.exe.dir/depend:
	cd /home/meriemben/TD_C++/TD_POOC/TD1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/meriemben/TD_C++/TD_POOC/TD1 /home/meriemben/TD_C++/TD_POOC/TD1 /home/meriemben/TD_C++/TD_POOC/TD1/build /home/meriemben/TD_C++/TD_POOC/TD1/build /home/meriemben/TD_C++/TD_POOC/TD1/build/CMakeFiles/Test.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Test.exe.dir/depend

