# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/ican/Desktop/OpenGL/Breakout

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ican/Desktop/OpenGL/Breakout/build

# Include any dependencies generated for this target.
include CMakeFiles/Breakout.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Breakout.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Breakout.dir/flags.make

CMakeFiles/Breakout.dir/src/library.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/src/library.cpp.o: ../src/library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ican/Desktop/OpenGL/Breakout/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Breakout.dir/src/library.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/src/library.cpp.o -c /home/ican/Desktop/OpenGL/Breakout/src/library.cpp

CMakeFiles/Breakout.dir/src/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/src/library.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ican/Desktop/OpenGL/Breakout/src/library.cpp > CMakeFiles/Breakout.dir/src/library.cpp.i

CMakeFiles/Breakout.dir/src/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/src/library.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ican/Desktop/OpenGL/Breakout/src/library.cpp -o CMakeFiles/Breakout.dir/src/library.cpp.s

CMakeFiles/Breakout.dir/src/main.cpp.o: CMakeFiles/Breakout.dir/flags.make
CMakeFiles/Breakout.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ican/Desktop/OpenGL/Breakout/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Breakout.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Breakout.dir/src/main.cpp.o -c /home/ican/Desktop/OpenGL/Breakout/src/main.cpp

CMakeFiles/Breakout.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Breakout.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ican/Desktop/OpenGL/Breakout/src/main.cpp > CMakeFiles/Breakout.dir/src/main.cpp.i

CMakeFiles/Breakout.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Breakout.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ican/Desktop/OpenGL/Breakout/src/main.cpp -o CMakeFiles/Breakout.dir/src/main.cpp.s

# Object files for target Breakout
Breakout_OBJECTS = \
"CMakeFiles/Breakout.dir/src/library.cpp.o" \
"CMakeFiles/Breakout.dir/src/main.cpp.o"

# External object files for target Breakout
Breakout_EXTERNAL_OBJECTS =

Breakout: CMakeFiles/Breakout.dir/src/library.cpp.o
Breakout: CMakeFiles/Breakout.dir/src/main.cpp.o
Breakout: CMakeFiles/Breakout.dir/build.make
Breakout: CMakeFiles/Breakout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ican/Desktop/OpenGL/Breakout/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Breakout"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Breakout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Breakout.dir/build: Breakout

.PHONY : CMakeFiles/Breakout.dir/build

CMakeFiles/Breakout.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Breakout.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Breakout.dir/clean

CMakeFiles/Breakout.dir/depend:
	cd /home/ican/Desktop/OpenGL/Breakout/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ican/Desktop/OpenGL/Breakout /home/ican/Desktop/OpenGL/Breakout /home/ican/Desktop/OpenGL/Breakout/build /home/ican/Desktop/OpenGL/Breakout/build /home/ican/Desktop/OpenGL/Breakout/build/CMakeFiles/Breakout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Breakout.dir/depend

