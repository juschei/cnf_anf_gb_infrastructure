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
CMAKE_SOURCE_DIR = /home/juschei/Desktop/aggregate_sum

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/juschei/Desktop/aggregate_sum/build

# Utility rule file for workflow_library.

# Include the progress variables for this target.
include CMakeFiles/workflow_library.dir/progress.make

CMakeFiles/workflow_library: gen/pnetc/op/libaggregate_sum.so


gen/pnetc/op/libaggregate_sum.so: ../workflow/aggregate_sum.xpnet
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/juschei/Desktop/aggregate_sum/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating gen/pnetc/op/libaggregate_sum.so"
	/home/juschei/Desktop/spack/opt/spack/linux-ubuntu20.04-sandybridge/gcc-9.4.0/gpi-space-22.09-476smvzvxujip2kn3s7bwk4cqfw4luw6/bin/pnetc --gen-cxxflags="-O3" --input="/home/juschei/Desktop/aggregate_sum/workflow/aggregate_sum.xpnet" --output="/dev/null" --path-to-cpp="/home/juschei/Desktop/aggregate_sum/build/gen"
	+make -C /home/juschei/Desktop/aggregate_sum/build/gen

workflow_library: CMakeFiles/workflow_library
workflow_library: gen/pnetc/op/libaggregate_sum.so
workflow_library: CMakeFiles/workflow_library.dir/build.make

.PHONY : workflow_library

# Rule to build all files generated by this target.
CMakeFiles/workflow_library.dir/build: workflow_library

.PHONY : CMakeFiles/workflow_library.dir/build

CMakeFiles/workflow_library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/workflow_library.dir/cmake_clean.cmake
.PHONY : CMakeFiles/workflow_library.dir/clean

CMakeFiles/workflow_library.dir/depend:
	cd /home/juschei/Desktop/aggregate_sum/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/juschei/Desktop/aggregate_sum /home/juschei/Desktop/aggregate_sum /home/juschei/Desktop/aggregate_sum/build /home/juschei/Desktop/aggregate_sum/build /home/juschei/Desktop/aggregate_sum/build/CMakeFiles/workflow_library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/workflow_library.dir/depend

