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
include CMakeFiles/control_loop.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/control_loop.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/control_loop.dir/flags.make

CMakeFiles/control_loop.dir/src/control_loop.cpp.o: CMakeFiles/control_loop.dir/flags.make
CMakeFiles/control_loop.dir/src/control_loop.cpp.o: ../src/control_loop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/control_loop.dir/src/control_loop.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/control_loop.dir/src/control_loop.cpp.o -c /home/nakkeslengprosjekt/asdf/src/control_loop.cpp

CMakeFiles/control_loop.dir/src/control_loop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/control_loop.dir/src/control_loop.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/src/control_loop.cpp > CMakeFiles/control_loop.dir/src/control_loop.cpp.i

CMakeFiles/control_loop.dir/src/control_loop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/control_loop.dir/src/control_loop.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/src/control_loop.cpp -o CMakeFiles/control_loop.dir/src/control_loop.cpp.s

CMakeFiles/control_loop.dir/src/control_loop.cpp.o.requires:

.PHONY : CMakeFiles/control_loop.dir/src/control_loop.cpp.o.requires

CMakeFiles/control_loop.dir/src/control_loop.cpp.o.provides: CMakeFiles/control_loop.dir/src/control_loop.cpp.o.requires
	$(MAKE) -f CMakeFiles/control_loop.dir/build.make CMakeFiles/control_loop.dir/src/control_loop.cpp.o.provides.build
.PHONY : CMakeFiles/control_loop.dir/src/control_loop.cpp.o.provides

CMakeFiles/control_loop.dir/src/control_loop.cpp.o.provides.build: CMakeFiles/control_loop.dir/src/control_loop.cpp.o


CMakeFiles/control_loop.dir/common/shader.cpp.o: CMakeFiles/control_loop.dir/flags.make
CMakeFiles/control_loop.dir/common/shader.cpp.o: ../common/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/control_loop.dir/common/shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/control_loop.dir/common/shader.cpp.o -c /home/nakkeslengprosjekt/asdf/common/shader.cpp

CMakeFiles/control_loop.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/control_loop.dir/common/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/common/shader.cpp > CMakeFiles/control_loop.dir/common/shader.cpp.i

CMakeFiles/control_loop.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/control_loop.dir/common/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/common/shader.cpp -o CMakeFiles/control_loop.dir/common/shader.cpp.s

CMakeFiles/control_loop.dir/common/shader.cpp.o.requires:

.PHONY : CMakeFiles/control_loop.dir/common/shader.cpp.o.requires

CMakeFiles/control_loop.dir/common/shader.cpp.o.provides: CMakeFiles/control_loop.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/control_loop.dir/build.make CMakeFiles/control_loop.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/control_loop.dir/common/shader.cpp.o.provides

CMakeFiles/control_loop.dir/common/shader.cpp.o.provides.build: CMakeFiles/control_loop.dir/common/shader.cpp.o


CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o: CMakeFiles/control_loop.dir/flags.make
CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o: ../src/graphics/plot2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o -c /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp

CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp > CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.i

CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp -o CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.s

CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.requires:

.PHONY : CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.requires

CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.provides: CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.requires
	$(MAKE) -f CMakeFiles/control_loop.dir/build.make CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.provides.build
.PHONY : CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.provides

CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.provides.build: CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o


# Object files for target control_loop
control_loop_OBJECTS = \
"CMakeFiles/control_loop.dir/src/control_loop.cpp.o" \
"CMakeFiles/control_loop.dir/common/shader.cpp.o" \
"CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o"

# External object files for target control_loop
control_loop_EXTERNAL_OBJECTS =

control_loop: CMakeFiles/control_loop.dir/src/control_loop.cpp.o
control_loop: CMakeFiles/control_loop.dir/common/shader.cpp.o
control_loop: CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o
control_loop: CMakeFiles/control_loop.dir/build.make
control_loop: externalGL/glfw-3.1.2/src/libglfw3.a
control_loop: externalGL/libGLEW_1130.a
control_loop: libexamples_common.a
control_loop: /usr/lib/x86_64-linux-gnu/libGL.so
control_loop: /usr/lib/x86_64-linux-gnu/libGLU.so
control_loop: /usr/lib/x86_64-linux-gnu/librt.so
control_loop: /usr/lib/x86_64-linux-gnu/libm.so
control_loop: /usr/lib/x86_64-linux-gnu/libX11.so
control_loop: /usr/lib/x86_64-linux-gnu/libXrandr.so
control_loop: /usr/lib/x86_64-linux-gnu/libXinerama.so
control_loop: /usr/lib/x86_64-linux-gnu/libXi.so
control_loop: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
control_loop: /usr/lib/x86_64-linux-gnu/libXcursor.so
control_loop: /usr/lib/x86_64-linux-gnu/libGL.so
control_loop: /usr/lib/x86_64-linux-gnu/libGLU.so
control_loop: /usr/lib/x86_64-linux-gnu/librt.so
control_loop: /usr/lib/x86_64-linux-gnu/libm.so
control_loop: /usr/lib/x86_64-linux-gnu/libX11.so
control_loop: /usr/lib/x86_64-linux-gnu/libXrandr.so
control_loop: /usr/lib/x86_64-linux-gnu/libXinerama.so
control_loop: /usr/lib/x86_64-linux-gnu/libXi.so
control_loop: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
control_loop: /usr/lib/x86_64-linux-gnu/libXcursor.so
control_loop: /usr/local/lib/libfranka.so.0.5.0
control_loop: CMakeFiles/control_loop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable control_loop"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/control_loop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/control_loop.dir/build: control_loop

.PHONY : CMakeFiles/control_loop.dir/build

CMakeFiles/control_loop.dir/requires: CMakeFiles/control_loop.dir/src/control_loop.cpp.o.requires
CMakeFiles/control_loop.dir/requires: CMakeFiles/control_loop.dir/common/shader.cpp.o.requires
CMakeFiles/control_loop.dir/requires: CMakeFiles/control_loop.dir/src/graphics/plot2d.cpp.o.requires

.PHONY : CMakeFiles/control_loop.dir/requires

CMakeFiles/control_loop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/control_loop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/control_loop.dir/clean

CMakeFiles/control_loop.dir/depend:
	cd /home/nakkeslengprosjekt/asdf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nakkeslengprosjekt/asdf /home/nakkeslengprosjekt/asdf /home/nakkeslengprosjekt/asdf/build /home/nakkeslengprosjekt/asdf/build /home/nakkeslengprosjekt/asdf/build/CMakeFiles/control_loop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/control_loop.dir/depend

