# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/doeringc/Projects/tiled02

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/doeringc/Projects/tiled02/build

# Include any dependencies generated for this target.
include CMakeFiles/tiled.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tiled.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tiled.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tiled.dir/flags.make

CMakeFiles/tiled.dir/src/layout.c.o: CMakeFiles/tiled.dir/flags.make
CMakeFiles/tiled.dir/src/layout.c.o: ../src/layout.c
CMakeFiles/tiled.dir/src/layout.c.o: CMakeFiles/tiled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/doeringc/Projects/tiled02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tiled.dir/src/layout.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tiled.dir/src/layout.c.o -MF CMakeFiles/tiled.dir/src/layout.c.o.d -o CMakeFiles/tiled.dir/src/layout.c.o -c /home/doeringc/Projects/tiled02/src/layout.c

CMakeFiles/tiled.dir/src/layout.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiled.dir/src/layout.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/doeringc/Projects/tiled02/src/layout.c > CMakeFiles/tiled.dir/src/layout.c.i

CMakeFiles/tiled.dir/src/layout.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiled.dir/src/layout.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/doeringc/Projects/tiled02/src/layout.c -o CMakeFiles/tiled.dir/src/layout.c.s

CMakeFiles/tiled.dir/src/main.c.o: CMakeFiles/tiled.dir/flags.make
CMakeFiles/tiled.dir/src/main.c.o: ../src/main.c
CMakeFiles/tiled.dir/src/main.c.o: CMakeFiles/tiled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/doeringc/Projects/tiled02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/tiled.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tiled.dir/src/main.c.o -MF CMakeFiles/tiled.dir/src/main.c.o.d -o CMakeFiles/tiled.dir/src/main.c.o -c /home/doeringc/Projects/tiled02/src/main.c

CMakeFiles/tiled.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiled.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/doeringc/Projects/tiled02/src/main.c > CMakeFiles/tiled.dir/src/main.c.i

CMakeFiles/tiled.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiled.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/doeringc/Projects/tiled02/src/main.c -o CMakeFiles/tiled.dir/src/main.c.s

CMakeFiles/tiled.dir/src/mainwindow.c.o: CMakeFiles/tiled.dir/flags.make
CMakeFiles/tiled.dir/src/mainwindow.c.o: ../src/mainwindow.c
CMakeFiles/tiled.dir/src/mainwindow.c.o: CMakeFiles/tiled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/doeringc/Projects/tiled02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/tiled.dir/src/mainwindow.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tiled.dir/src/mainwindow.c.o -MF CMakeFiles/tiled.dir/src/mainwindow.c.o.d -o CMakeFiles/tiled.dir/src/mainwindow.c.o -c /home/doeringc/Projects/tiled02/src/mainwindow.c

CMakeFiles/tiled.dir/src/mainwindow.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiled.dir/src/mainwindow.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/doeringc/Projects/tiled02/src/mainwindow.c > CMakeFiles/tiled.dir/src/mainwindow.c.i

CMakeFiles/tiled.dir/src/mainwindow.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiled.dir/src/mainwindow.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/doeringc/Projects/tiled02/src/mainwindow.c -o CMakeFiles/tiled.dir/src/mainwindow.c.s

CMakeFiles/tiled.dir/src/zone.c.o: CMakeFiles/tiled.dir/flags.make
CMakeFiles/tiled.dir/src/zone.c.o: ../src/zone.c
CMakeFiles/tiled.dir/src/zone.c.o: CMakeFiles/tiled.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/doeringc/Projects/tiled02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/tiled.dir/src/zone.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tiled.dir/src/zone.c.o -MF CMakeFiles/tiled.dir/src/zone.c.o.d -o CMakeFiles/tiled.dir/src/zone.c.o -c /home/doeringc/Projects/tiled02/src/zone.c

CMakeFiles/tiled.dir/src/zone.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tiled.dir/src/zone.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/doeringc/Projects/tiled02/src/zone.c > CMakeFiles/tiled.dir/src/zone.c.i

CMakeFiles/tiled.dir/src/zone.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tiled.dir/src/zone.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/doeringc/Projects/tiled02/src/zone.c -o CMakeFiles/tiled.dir/src/zone.c.s

# Object files for target tiled
tiled_OBJECTS = \
"CMakeFiles/tiled.dir/src/layout.c.o" \
"CMakeFiles/tiled.dir/src/main.c.o" \
"CMakeFiles/tiled.dir/src/mainwindow.c.o" \
"CMakeFiles/tiled.dir/src/zone.c.o"

# External object files for target tiled
tiled_EXTERNAL_OBJECTS =

tiled: CMakeFiles/tiled.dir/src/layout.c.o
tiled: CMakeFiles/tiled.dir/src/main.c.o
tiled: CMakeFiles/tiled.dir/src/mainwindow.c.o
tiled: CMakeFiles/tiled.dir/src/zone.c.o
tiled: CMakeFiles/tiled.dir/build.make
tiled: CMakeFiles/tiled.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/doeringc/Projects/tiled02/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable tiled"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tiled.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tiled.dir/build: tiled
.PHONY : CMakeFiles/tiled.dir/build

CMakeFiles/tiled.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tiled.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tiled.dir/clean

CMakeFiles/tiled.dir/depend:
	cd /home/doeringc/Projects/tiled02/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/doeringc/Projects/tiled02 /home/doeringc/Projects/tiled02 /home/doeringc/Projects/tiled02/build /home/doeringc/Projects/tiled02/build /home/doeringc/Projects/tiled02/build/CMakeFiles/tiled.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tiled.dir/depend

