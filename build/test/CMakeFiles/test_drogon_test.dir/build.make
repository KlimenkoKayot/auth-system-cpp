# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/kayotklimenko/code/auth-system-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kayotklimenko/code/auth-system-cpp/build

# Include any dependencies generated for this target.
include test/CMakeFiles/test_drogon_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_drogon_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_drogon_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_drogon_test.dir/flags.make

test/CMakeFiles/test_drogon_test.dir/test_main.cc.o: test/CMakeFiles/test_drogon_test.dir/flags.make
test/CMakeFiles/test_drogon_test.dir/test_main.cc.o: /home/kayotklimenko/code/auth-system-cpp/test/test_main.cc
test/CMakeFiles/test_drogon_test.dir/test_main.cc.o: test/CMakeFiles/test_drogon_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_drogon_test.dir/test_main.cc.o"
	cd /home/kayotklimenko/code/auth-system-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_drogon_test.dir/test_main.cc.o -MF CMakeFiles/test_drogon_test.dir/test_main.cc.o.d -o CMakeFiles/test_drogon_test.dir/test_main.cc.o -c /home/kayotklimenko/code/auth-system-cpp/test/test_main.cc

test/CMakeFiles/test_drogon_test.dir/test_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_drogon_test.dir/test_main.cc.i"
	cd /home/kayotklimenko/code/auth-system-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/test/test_main.cc > CMakeFiles/test_drogon_test.dir/test_main.cc.i

test/CMakeFiles/test_drogon_test.dir/test_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_drogon_test.dir/test_main.cc.s"
	cd /home/kayotklimenko/code/auth-system-cpp/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/test/test_main.cc -o CMakeFiles/test_drogon_test.dir/test_main.cc.s

# Object files for target test_drogon_test
test_drogon_test_OBJECTS = \
"CMakeFiles/test_drogon_test.dir/test_main.cc.o"

# External object files for target test_drogon_test
test_drogon_test_EXTERNAL_OBJECTS =

test/test_drogon_test: test/CMakeFiles/test_drogon_test.dir/test_main.cc.o
test/test_drogon_test: test/CMakeFiles/test_drogon_test.dir/build.make
test/test_drogon_test: /usr/local/lib64/libdrogon.a
test/test_drogon_test: /usr/local/lib64/libtrantor.a
test/test_drogon_test: /usr/lib64/libssl.so
test/test_drogon_test: /usr/lib64/libcrypto.so
test/test_drogon_test: /usr/lib64/libjsoncpp.so
test/test_drogon_test: /lib64/libossp-uuid.so
test/test_drogon_test: /usr/lib64/libpq.so
test/test_drogon_test: /usr/lib64/libz.so
test/test_drogon_test: test/CMakeFiles/test_drogon_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_drogon_test"
	cd /home/kayotklimenko/code/auth-system-cpp/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_drogon_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_drogon_test.dir/build: test/test_drogon_test
.PHONY : test/CMakeFiles/test_drogon_test.dir/build

test/CMakeFiles/test_drogon_test.dir/clean:
	cd /home/kayotklimenko/code/auth-system-cpp/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_drogon_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_drogon_test.dir/clean

test/CMakeFiles/test_drogon_test.dir/depend:
	cd /home/kayotklimenko/code/auth-system-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kayotklimenko/code/auth-system-cpp /home/kayotklimenko/code/auth-system-cpp/test /home/kayotklimenko/code/auth-system-cpp/build /home/kayotklimenko/code/auth-system-cpp/build/test /home/kayotklimenko/code/auth-system-cpp/build/test/CMakeFiles/test_drogon_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/test_drogon_test.dir/depend

