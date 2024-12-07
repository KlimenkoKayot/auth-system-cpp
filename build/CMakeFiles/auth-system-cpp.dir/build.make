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
include CMakeFiles/auth-system-cpp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/auth-system-cpp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/auth-system-cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/auth-system-cpp.dir/flags.make

openspace.h: /home/kayotklimenko/code/auth-system-cpp/views/openspace.csp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating openspace.h, openspace.cc"
	cd /home/kayotklimenko/code/auth-system-cpp && drogon_ctl create view views/openspace.csp -o /home/kayotklimenko/code/auth-system-cpp/build

openspace.cc: openspace.h
	@$(CMAKE_COMMAND) -E touch_nocreate openspace.cc

signin.h: /home/kayotklimenko/code/auth-system-cpp/views/signin.csp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating signin.h, signin.cc"
	cd /home/kayotklimenko/code/auth-system-cpp && drogon_ctl create view views/signin.csp -o /home/kayotklimenko/code/auth-system-cpp/build

signin.cc: signin.h
	@$(CMAKE_COMMAND) -E touch_nocreate signin.cc

signup.h: /home/kayotklimenko/code/auth-system-cpp/views/signup.csp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating signup.h, signup.cc"
	cd /home/kayotklimenko/code/auth-system-cpp && drogon_ctl create view views/signup.csp -o /home/kayotklimenko/code/auth-system-cpp/build

signup.cc: signup.h
	@$(CMAKE_COMMAND) -E touch_nocreate signup.cc

CMakeFiles/auth-system-cpp.dir/main.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/main.cc.o: /home/kayotklimenko/code/auth-system-cpp/main.cc
CMakeFiles/auth-system-cpp.dir/main.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/auth-system-cpp.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/main.cc.o -MF CMakeFiles/auth-system-cpp.dir/main.cc.o.d -o CMakeFiles/auth-system-cpp.dir/main.cc.o -c /home/kayotklimenko/code/auth-system-cpp/main.cc

CMakeFiles/auth-system-cpp.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/main.cc > CMakeFiles/auth-system-cpp.dir/main.cc.i

CMakeFiles/auth-system-cpp.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/main.cc -o CMakeFiles/auth-system-cpp.dir/main.cc.s

CMakeFiles/auth-system-cpp.dir/openspace.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/openspace.cc.o: openspace.cc
CMakeFiles/auth-system-cpp.dir/openspace.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/auth-system-cpp.dir/openspace.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/openspace.cc.o -MF CMakeFiles/auth-system-cpp.dir/openspace.cc.o.d -o CMakeFiles/auth-system-cpp.dir/openspace.cc.o -c /home/kayotklimenko/code/auth-system-cpp/build/openspace.cc

CMakeFiles/auth-system-cpp.dir/openspace.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/openspace.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/build/openspace.cc > CMakeFiles/auth-system-cpp.dir/openspace.cc.i

CMakeFiles/auth-system-cpp.dir/openspace.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/openspace.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/build/openspace.cc -o CMakeFiles/auth-system-cpp.dir/openspace.cc.s

CMakeFiles/auth-system-cpp.dir/signin.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/signin.cc.o: signin.cc
CMakeFiles/auth-system-cpp.dir/signin.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/auth-system-cpp.dir/signin.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/signin.cc.o -MF CMakeFiles/auth-system-cpp.dir/signin.cc.o.d -o CMakeFiles/auth-system-cpp.dir/signin.cc.o -c /home/kayotklimenko/code/auth-system-cpp/build/signin.cc

CMakeFiles/auth-system-cpp.dir/signin.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/signin.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/build/signin.cc > CMakeFiles/auth-system-cpp.dir/signin.cc.i

CMakeFiles/auth-system-cpp.dir/signin.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/signin.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/build/signin.cc -o CMakeFiles/auth-system-cpp.dir/signin.cc.s

CMakeFiles/auth-system-cpp.dir/signup.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/signup.cc.o: signup.cc
CMakeFiles/auth-system-cpp.dir/signup.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/auth-system-cpp.dir/signup.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/signup.cc.o -MF CMakeFiles/auth-system-cpp.dir/signup.cc.o.d -o CMakeFiles/auth-system-cpp.dir/signup.cc.o -c /home/kayotklimenko/code/auth-system-cpp/build/signup.cc

CMakeFiles/auth-system-cpp.dir/signup.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/signup.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/build/signup.cc > CMakeFiles/auth-system-cpp.dir/signup.cc.i

CMakeFiles/auth-system-cpp.dir/signup.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/signup.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/build/signup.cc -o CMakeFiles/auth-system-cpp.dir/signup.cc.s

CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o: /home/kayotklimenko/code/auth-system-cpp/controllers/Guest.cc
CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o -MF CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o.d -o CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o -c /home/kayotklimenko/code/auth-system-cpp/controllers/Guest.cc

CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/controllers/Guest.cc > CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.i

CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/controllers/Guest.cc -o CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.s

CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o: /home/kayotklimenko/code/auth-system-cpp/controllers/User.cc
CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o -MF CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o.d -o CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o -c /home/kayotklimenko/code/auth-system-cpp/controllers/User.cc

CMakeFiles/auth-system-cpp.dir/controllers/User.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/controllers/User.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/controllers/User.cc > CMakeFiles/auth-system-cpp.dir/controllers/User.cc.i

CMakeFiles/auth-system-cpp.dir/controllers/User.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/controllers/User.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/controllers/User.cc -o CMakeFiles/auth-system-cpp.dir/controllers/User.cc.s

CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o: /home/kayotklimenko/code/auth-system-cpp/filters/SessionFilter.cc
CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o -MF CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o.d -o CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o -c /home/kayotklimenko/code/auth-system-cpp/filters/SessionFilter.cc

CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/filters/SessionFilter.cc > CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.i

CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/filters/SessionFilter.cc -o CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.s

CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o: /home/kayotklimenko/code/auth-system-cpp/includes/smanager/smanager.cpp
CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o -MF CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o.d -o CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o -c /home/kayotklimenko/code/auth-system-cpp/includes/smanager/smanager.cpp

CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/includes/smanager/smanager.cpp > CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.i

CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/includes/smanager/smanager.cpp -o CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.s

CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o: /home/kayotklimenko/code/auth-system-cpp/includes/sha256/sha256.cpp
CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o -MF CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o.d -o CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o -c /home/kayotklimenko/code/auth-system-cpp/includes/sha256/sha256.cpp

CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/includes/sha256/sha256.cpp > CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.i

CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/includes/sha256/sha256.cpp -o CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.s

CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o: CMakeFiles/auth-system-cpp.dir/flags.make
CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o: /home/kayotklimenko/code/auth-system-cpp/includes/validate/user.cpp
CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o: CMakeFiles/auth-system-cpp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o -MF CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o.d -o CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o -c /home/kayotklimenko/code/auth-system-cpp/includes/validate/user.cpp

CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kayotklimenko/code/auth-system-cpp/includes/validate/user.cpp > CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.i

CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kayotklimenko/code/auth-system-cpp/includes/validate/user.cpp -o CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.s

# Object files for target auth-system-cpp
auth__system__cpp_OBJECTS = \
"CMakeFiles/auth-system-cpp.dir/main.cc.o" \
"CMakeFiles/auth-system-cpp.dir/openspace.cc.o" \
"CMakeFiles/auth-system-cpp.dir/signin.cc.o" \
"CMakeFiles/auth-system-cpp.dir/signup.cc.o" \
"CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o" \
"CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o" \
"CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o" \
"CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o" \
"CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o" \
"CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o"

# External object files for target auth-system-cpp
auth__system__cpp_EXTERNAL_OBJECTS =

auth-system-cpp: CMakeFiles/auth-system-cpp.dir/main.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/openspace.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/signin.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/signup.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/controllers/Guest.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/controllers/User.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/filters/SessionFilter.cc.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/includes/smanager/smanager.cpp.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/includes/sha256/sha256.cpp.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/includes/validate/user.cpp.o
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/build.make
auth-system-cpp: /usr/local/lib64/libdrogon.a
auth-system-cpp: /usr/local/lib64/libtrantor.a
auth-system-cpp: /usr/lib64/libssl.so
auth-system-cpp: /usr/lib64/libcrypto.so
auth-system-cpp: /usr/lib64/libjsoncpp.so
auth-system-cpp: /lib64/libossp-uuid.so
auth-system-cpp: /usr/lib64/libpq.so
auth-system-cpp: /usr/lib64/libz.so
auth-system-cpp: CMakeFiles/auth-system-cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable auth-system-cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/auth-system-cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/auth-system-cpp.dir/build: auth-system-cpp
.PHONY : CMakeFiles/auth-system-cpp.dir/build

CMakeFiles/auth-system-cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/auth-system-cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/auth-system-cpp.dir/clean

CMakeFiles/auth-system-cpp.dir/depend: openspace.cc
CMakeFiles/auth-system-cpp.dir/depend: openspace.h
CMakeFiles/auth-system-cpp.dir/depend: signin.cc
CMakeFiles/auth-system-cpp.dir/depend: signin.h
CMakeFiles/auth-system-cpp.dir/depend: signup.cc
CMakeFiles/auth-system-cpp.dir/depend: signup.h
	cd /home/kayotklimenko/code/auth-system-cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kayotklimenko/code/auth-system-cpp /home/kayotklimenko/code/auth-system-cpp /home/kayotklimenko/code/auth-system-cpp/build /home/kayotklimenko/code/auth-system-cpp/build /home/kayotklimenko/code/auth-system-cpp/build/CMakeFiles/auth-system-cpp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/auth-system-cpp.dir/depend

