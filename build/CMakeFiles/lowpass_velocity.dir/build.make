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
include CMakeFiles/lowpass_velocity.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lowpass_velocity.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lowpass_velocity.dir/flags.make

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o: CMakeFiles/lowpass_velocity.dir/flags.make
CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o: ../src/lowpass_velocity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o -c /home/nakkeslengprosjekt/asdf/src/lowpass_velocity.cpp

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/src/lowpass_velocity.cpp > CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.i

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/src/lowpass_velocity.cpp -o CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.s

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.requires:

.PHONY : CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.requires

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.provides: CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.requires
	$(MAKE) -f CMakeFiles/lowpass_velocity.dir/build.make CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.provides.build
.PHONY : CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.provides

CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.provides.build: CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o


CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o: CMakeFiles/lowpass_velocity.dir/flags.make
CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o: ../common/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o -c /home/nakkeslengprosjekt/asdf/common/shader.cpp

CMakeFiles/lowpass_velocity.dir/common/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lowpass_velocity.dir/common/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/common/shader.cpp > CMakeFiles/lowpass_velocity.dir/common/shader.cpp.i

CMakeFiles/lowpass_velocity.dir/common/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lowpass_velocity.dir/common/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/common/shader.cpp -o CMakeFiles/lowpass_velocity.dir/common/shader.cpp.s

CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.requires:

.PHONY : CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.requires

CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.provides: CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/lowpass_velocity.dir/build.make CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.provides.build
.PHONY : CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.provides

CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.provides.build: CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o


CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o: CMakeFiles/lowpass_velocity.dir/flags.make
CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o: ../src/graphics/plot2d.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o -c /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp

CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp > CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.i

CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nakkeslengprosjekt/asdf/src/graphics/plot2d.cpp -o CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.s

CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.requires:

.PHONY : CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.requires

CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.provides: CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.requires
	$(MAKE) -f CMakeFiles/lowpass_velocity.dir/build.make CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.provides.build
.PHONY : CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.provides

CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.provides.build: CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o


# Object files for target lowpass_velocity
lowpass_velocity_OBJECTS = \
"CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o" \
"CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o" \
"CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o"

# External object files for target lowpass_velocity
lowpass_velocity_EXTERNAL_OBJECTS =

lowpass_velocity: CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o
lowpass_velocity: CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o
lowpass_velocity: CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o
lowpass_velocity: CMakeFiles/lowpass_velocity.dir/build.make
lowpass_velocity: externalGL/glfw-3.1.2/src/libglfw3.a
lowpass_velocity: externalGL/libGLEW_1130.a
lowpass_velocity: libexamples_common.a
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libGL.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libGLU.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/librt.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libm.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libX11.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXrandr.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXinerama.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXi.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXcursor.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libGL.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libGLU.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/librt.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libm.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libX11.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXrandr.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXinerama.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXi.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXxf86vm.so
lowpass_velocity: /usr/lib/x86_64-linux-gnu/libXcursor.so
lowpass_velocity: /usr/local/lib/libfranka.so.0.5.0
lowpass_velocity: CMakeFiles/lowpass_velocity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nakkeslengprosjekt/asdf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable lowpass_velocity"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lowpass_velocity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lowpass_velocity.dir/build: lowpass_velocity

.PHONY : CMakeFiles/lowpass_velocity.dir/build

CMakeFiles/lowpass_velocity.dir/requires: CMakeFiles/lowpass_velocity.dir/src/lowpass_velocity.cpp.o.requires
CMakeFiles/lowpass_velocity.dir/requires: CMakeFiles/lowpass_velocity.dir/common/shader.cpp.o.requires
CMakeFiles/lowpass_velocity.dir/requires: CMakeFiles/lowpass_velocity.dir/src/graphics/plot2d.cpp.o.requires

.PHONY : CMakeFiles/lowpass_velocity.dir/requires

CMakeFiles/lowpass_velocity.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lowpass_velocity.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lowpass_velocity.dir/clean

CMakeFiles/lowpass_velocity.dir/depend:
	cd /home/nakkeslengprosjekt/asdf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nakkeslengprosjekt/asdf /home/nakkeslengprosjekt/asdf /home/nakkeslengprosjekt/asdf/build /home/nakkeslengprosjekt/asdf/build /home/nakkeslengprosjekt/asdf/build/CMakeFiles/lowpass_velocity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lowpass_velocity.dir/depend

