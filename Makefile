# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/enerji/dev/spatialUDF/MariaDB-spatial-UDF

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/enerji/dev/spatialUDF/MariaDB-spatial-UDF

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/enerji/dev/spatialUDF/MariaDB-spatial-UDF/CMakeFiles /home/enerji/dev/spatialUDF/MariaDB-spatial-UDF/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/enerji/dev/spatialUDF/MariaDB-spatial-UDF/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named uninstall

# Build rule for target.
uninstall: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 uninstall
.PHONY : uninstall

# fast build rule for target.
uninstall/fast:
	$(MAKE) -f CMakeFiles/uninstall.dir/build.make CMakeFiles/uninstall.dir/build
.PHONY : uninstall/fast

#=============================================================================
# Target rules for targets named MSUDF

# Build rule for target.
MSUDF: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 MSUDF
.PHONY : MSUDF

# fast build rule for target.
MSUDF/fast:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/build
.PHONY : MSUDF/fast

GeometryUtils.o: GeometryUtils.cpp.o

.PHONY : GeometryUtils.o

# target to build an object file
GeometryUtils.cpp.o:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/GeometryUtils.cpp.o
.PHONY : GeometryUtils.cpp.o

GeometryUtils.i: GeometryUtils.cpp.i

.PHONY : GeometryUtils.i

# target to preprocess a source file
GeometryUtils.cpp.i:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/GeometryUtils.cpp.i
.PHONY : GeometryUtils.cpp.i

GeometryUtils.s: GeometryUtils.cpp.s

.PHONY : GeometryUtils.s

# target to generate assembly for a file
GeometryUtils.cpp.s:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/GeometryUtils.cpp.s
.PHONY : GeometryUtils.cpp.s

MariaDBSpatialUDF.o: MariaDBSpatialUDF.cpp.o

.PHONY : MariaDBSpatialUDF.o

# target to build an object file
MariaDBSpatialUDF.cpp.o:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/MariaDBSpatialUDF.cpp.o
.PHONY : MariaDBSpatialUDF.cpp.o

MariaDBSpatialUDF.i: MariaDBSpatialUDF.cpp.i

.PHONY : MariaDBSpatialUDF.i

# target to preprocess a source file
MariaDBSpatialUDF.cpp.i:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/MariaDBSpatialUDF.cpp.i
.PHONY : MariaDBSpatialUDF.cpp.i

MariaDBSpatialUDF.s: MariaDBSpatialUDF.cpp.s

.PHONY : MariaDBSpatialUDF.s

# target to generate assembly for a file
MariaDBSpatialUDF.cpp.s:
	$(MAKE) -f CMakeFiles/MSUDF.dir/build.make CMakeFiles/MSUDF.dir/MariaDBSpatialUDF.cpp.s
.PHONY : MariaDBSpatialUDF.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/strip"
	@echo "... install/local"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... uninstall"
	@echo "... MSUDF"
	@echo "... GeometryUtils.o"
	@echo "... GeometryUtils.i"
	@echo "... GeometryUtils.s"
	@echo "... MariaDBSpatialUDF.o"
	@echo "... MariaDBSpatialUDF.i"
	@echo "... MariaDBSpatialUDF.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
