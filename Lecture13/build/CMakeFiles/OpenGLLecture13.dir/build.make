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
CMAKE_SOURCE_DIR = /home/ican/Desktop/OpenGL/Lecture13

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ican/Desktop/OpenGL/Lecture13/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenGLLecture13.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenGLLecture13.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenGLLecture13.dir/flags.make

CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o: CMakeFiles/OpenGLLecture13.dir/flags.make
CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ican/Desktop/OpenGL/Lecture13/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o -c /home/ican/Desktop/OpenGL/Lecture13/src/main.cpp

CMakeFiles/OpenGLLecture13.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLLecture13.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ican/Desktop/OpenGL/Lecture13/src/main.cpp > CMakeFiles/OpenGLLecture13.dir/src/main.cpp.i

CMakeFiles/OpenGLLecture13.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLLecture13.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ican/Desktop/OpenGL/Lecture13/src/main.cpp -o CMakeFiles/OpenGLLecture13.dir/src/main.cpp.s

CMakeFiles/OpenGLLecture13.dir/src/glad.c.o: CMakeFiles/OpenGLLecture13.dir/flags.make
CMakeFiles/OpenGLLecture13.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ican/Desktop/OpenGL/Lecture13/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/OpenGLLecture13.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/OpenGLLecture13.dir/src/glad.c.o   -c /home/ican/Desktop/OpenGL/Lecture13/src/glad.c

CMakeFiles/OpenGLLecture13.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenGLLecture13.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ican/Desktop/OpenGL/Lecture13/src/glad.c > CMakeFiles/OpenGLLecture13.dir/src/glad.c.i

CMakeFiles/OpenGLLecture13.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenGLLecture13.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ican/Desktop/OpenGL/Lecture13/src/glad.c -o CMakeFiles/OpenGLLecture13.dir/src/glad.c.s

CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o: CMakeFiles/OpenGLLecture13.dir/flags.make
CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o: ../src/shaderprogram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ican/Desktop/OpenGL/Lecture13/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o -c /home/ican/Desktop/OpenGL/Lecture13/src/shaderprogram.cpp

CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ican/Desktop/OpenGL/Lecture13/src/shaderprogram.cpp > CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.i

CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ican/Desktop/OpenGL/Lecture13/src/shaderprogram.cpp -o CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.s

# Object files for target OpenGLLecture13
OpenGLLecture13_OBJECTS = \
"CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o" \
"CMakeFiles/OpenGLLecture13.dir/src/glad.c.o" \
"CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o"

# External object files for target OpenGLLecture13
OpenGLLecture13_EXTERNAL_OBJECTS =

OpenGLLecture13: CMakeFiles/OpenGLLecture13.dir/src/main.cpp.o
OpenGLLecture13: CMakeFiles/OpenGLLecture13.dir/src/glad.c.o
OpenGLLecture13: CMakeFiles/OpenGLLecture13.dir/src/shaderprogram.cpp.o
OpenGLLecture13: CMakeFiles/OpenGLLecture13.dir/build.make
OpenGLLecture13: /usr/local/lib/libglfw3.a
OpenGLLecture13: /usr/lib/x86_64-linux-gnu/librt.so
OpenGLLecture13: /usr/lib/x86_64-linux-gnu/libm.so
OpenGLLecture13: /usr/lib/x86_64-linux-gnu/libX11.so
OpenGLLecture13: CMakeFiles/OpenGLLecture13.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ican/Desktop/OpenGL/Lecture13/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OpenGLLecture13"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenGLLecture13.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenGLLecture13.dir/build: OpenGLLecture13

.PHONY : CMakeFiles/OpenGLLecture13.dir/build

CMakeFiles/OpenGLLecture13.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenGLLecture13.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenGLLecture13.dir/clean

CMakeFiles/OpenGLLecture13.dir/depend:
	cd /home/ican/Desktop/OpenGL/Lecture13/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ican/Desktop/OpenGL/Lecture13 /home/ican/Desktop/OpenGL/Lecture13 /home/ican/Desktop/OpenGL/Lecture13/build /home/ican/Desktop/OpenGL/Lecture13/build /home/ican/Desktop/OpenGL/Lecture13/build/CMakeFiles/OpenGLLecture13.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenGLLecture13.dir/depend

