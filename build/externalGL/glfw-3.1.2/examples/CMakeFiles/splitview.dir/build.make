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
CMAKE_SOURCE_DIR = /home/nakkeslengprosjekt/asdf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nakkeslengprosjekt/asdf/build

# Include any dependencies generated for this target.
include externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend.make

# Include the progress variables for this target.
include externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/progress.make

# Include the compile flags for this target's objects.
include externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/flags.make

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/flags.make
externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o: ../externalGL/glfw-3.1.2/examples/splitview.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o"
	cd /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/splitview.dir/splitview.c.o   -c /home/nakkeslengprosjekt/asdf/externalGL/glfw-3.1.2/examples/splitview.c

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/splitview.dir/splitview.c.i"
	cd /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nakkeslengprosjekt/asdf/externalGL/glfw-3.1.2/examples/splitview.c > CMakeFiles/splitview.dir/splitview.c.i

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/splitview.dir/splitview.c.s"
	cd /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nakkeslengprosjekt/asdf/externalGL/glfw-3.1.2/examples/splitview.c -o CMakeFiles/splitview.dir/splitview.c.s

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.requires:

.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.requires

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.provides: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.requires
	$(MAKE) -f externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build.make externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.provides.build
.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.provides

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.provides.build: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o


# Object files for target splitview
splitview_OBJECTS = \
"CMakeFiles/splitview.dir/splitview.c.o"

# External object files for target splitview
splitview_EXTERNAL_OBJECTS =

externalGL/glfw-3.1.2/examples/splitview: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o
externalGL/glfw-3.1.2/examples/splitview: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build.make
externalGL/glfw-3.1.2/examples/splitview: externalGL/glfw-3.1.2/src/libglfw3.a
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/librt.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libm.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libX11.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libXrandr.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libXinerama.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libXi.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libXcursor.so
externalGL/glfw-3.1.2/examples/splitview: /usr/lib/x86_64-linux-gnu/libGL.so
externalGL/glfw-3.1.2/examples/splitview: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable splitview"
	cd /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/splitview.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build: externalGL/glfw-3.1.2/examples/splitview

.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/build

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/requires: externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/splitview.c.o.requires

.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/requires

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/clean:
	cd /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples && $(CMAKE_COMMAND) -P CMakeFiles/splitview.dir/cmake_clean.cmake
.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/clean

externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend:
	cd /home/nakkeslengprosjekt/asdf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nakkeslengprosjekt/asdf /home/nakkeslengprosjekt/asdf/externalGL/glfw-3.1.2/examples /home/nakkeslengprosjekt/asdf/build /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples /home/nakkeslengprosjekt/asdf/build/externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : externalGL/glfw-3.1.2/examples/CMakeFiles/splitview.dir/depend

