# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/tyler/repos/graal-serverlist

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tyler/repos/graal-serverlist/build

# Include any dependencies generated for this target.
include dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/flags.make

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/codegen:
.PHONY : dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/codegen

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/flags.make
dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o: /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/unittest/libmariadb/view.c
dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/tyler/repos/graal-serverlist/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o"
	cd /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o -MF CMakeFiles/view.dir/view.c.o.d -o CMakeFiles/view.dir/view.c.o -c /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/unittest/libmariadb/view.c

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/view.dir/view.c.i"
	cd /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/unittest/libmariadb/view.c > CMakeFiles/view.dir/view.c.i

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/view.dir/view.c.s"
	cd /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/unittest/libmariadb/view.c -o CMakeFiles/view.dir/view.c.s

# Object files for target view
view_OBJECTS = \
"CMakeFiles/view.dir/view.c.o"

# External object files for target view
view_EXTERNAL_OBJECTS =

/home/tyler/repos/graal-serverlist/bin/view: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/view.c.o
/home/tyler/repos/graal-serverlist/bin/view: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/build.make
/home/tyler/repos/graal-serverlist/bin/view: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/compiler_depend.ts
/home/tyler/repos/graal-serverlist/bin/view: /home/tyler/repos/graal-serverlist/lib/libcctap.a
/home/tyler/repos/graal-serverlist/bin/view: /home/tyler/repos/graal-serverlist/lib/libma_getopt.a
/home/tyler/repos/graal-serverlist/bin/view: /home/tyler/repos/graal-serverlist/lib/libmariadbclient.a
/home/tyler/repos/graal-serverlist/bin/view: /usr/lib/libssl.so
/home/tyler/repos/graal-serverlist/bin/view: /usr/lib/libcrypto.so
/home/tyler/repos/graal-serverlist/bin/view: dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/tyler/repos/graal-serverlist/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /home/tyler/repos/graal-serverlist/bin/view"
	cd /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/view.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/build: /home/tyler/repos/graal-serverlist/bin/view
.PHONY : dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/build

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/clean:
	cd /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb && $(CMAKE_COMMAND) -P CMakeFiles/view.dir/cmake_clean.cmake
.PHONY : dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/clean

dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/depend:
	cd /home/tyler/repos/graal-serverlist/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tyler/repos/graal-serverlist /home/tyler/repos/graal-serverlist/dependencies/mysqlclient/unittest/libmariadb /home/tyler/repos/graal-serverlist/build /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb /home/tyler/repos/graal-serverlist/build/dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : dependencies/mysqlclient/unittest/libmariadb/CMakeFiles/view.dir/depend

