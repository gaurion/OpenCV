# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/bumblebee/Softwares/OpenCV/Examples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bumblebee/Softwares/OpenCV/Examples

# Include any dependencies generated for this target.
include CMakeFiles/4_masking.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/4_masking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/4_masking.dir/flags.make

CMakeFiles/4_masking.dir/4_masking.cpp.o: CMakeFiles/4_masking.dir/flags.make
CMakeFiles/4_masking.dir/4_masking.cpp.o: 4_masking.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/4_masking.dir/4_masking.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/4_masking.dir/4_masking.cpp.o -c /home/bumblebee/Softwares/OpenCV/Examples/4_masking.cpp

CMakeFiles/4_masking.dir/4_masking.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/4_masking.dir/4_masking.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumblebee/Softwares/OpenCV/Examples/4_masking.cpp > CMakeFiles/4_masking.dir/4_masking.cpp.i

CMakeFiles/4_masking.dir/4_masking.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/4_masking.dir/4_masking.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumblebee/Softwares/OpenCV/Examples/4_masking.cpp -o CMakeFiles/4_masking.dir/4_masking.cpp.s

CMakeFiles/4_masking.dir/4_masking.cpp.o.requires:

.PHONY : CMakeFiles/4_masking.dir/4_masking.cpp.o.requires

CMakeFiles/4_masking.dir/4_masking.cpp.o.provides: CMakeFiles/4_masking.dir/4_masking.cpp.o.requires
	$(MAKE) -f CMakeFiles/4_masking.dir/build.make CMakeFiles/4_masking.dir/4_masking.cpp.o.provides.build
.PHONY : CMakeFiles/4_masking.dir/4_masking.cpp.o.provides

CMakeFiles/4_masking.dir/4_masking.cpp.o.provides.build: CMakeFiles/4_masking.dir/4_masking.cpp.o


# Object files for target 4_masking
4_masking_OBJECTS = \
"CMakeFiles/4_masking.dir/4_masking.cpp.o"

# External object files for target 4_masking
4_masking_EXTERNAL_OBJECTS =

4_masking: CMakeFiles/4_masking.dir/4_masking.cpp.o
4_masking: CMakeFiles/4_masking.dir/build.make
4_masking: /usr/local/lib/libopencv_videostab.so.2.4.13
4_masking: /usr/local/lib/libopencv_ts.a
4_masking: /usr/local/lib/libopencv_superres.so.2.4.13
4_masking: /usr/local/lib/libopencv_stitching.so.2.4.13
4_masking: /usr/local/lib/libopencv_contrib.so.2.4.13
4_masking: /usr/lib/x86_64-linux-gnu/libGLU.so
4_masking: /usr/lib/x86_64-linux-gnu/libGL.so
4_masking: /usr/local/lib/libopencv_nonfree.so.2.4.13
4_masking: /usr/local/lib/libopencv_ocl.so.2.4.13
4_masking: /usr/local/lib/libopencv_gpu.so.2.4.13
4_masking: /usr/local/lib/libopencv_photo.so.2.4.13
4_masking: /usr/local/lib/libopencv_objdetect.so.2.4.13
4_masking: /usr/local/lib/libopencv_legacy.so.2.4.13
4_masking: /usr/local/lib/libopencv_video.so.2.4.13
4_masking: /usr/local/lib/libopencv_ml.so.2.4.13
4_masking: /usr/local/lib/libopencv_calib3d.so.2.4.13
4_masking: /usr/local/lib/libopencv_features2d.so.2.4.13
4_masking: /usr/local/lib/libopencv_highgui.so.2.4.13
4_masking: /usr/local/lib/libopencv_imgproc.so.2.4.13
4_masking: /usr/local/lib/libopencv_flann.so.2.4.13
4_masking: /usr/local/lib/libopencv_core.so.2.4.13
4_masking: CMakeFiles/4_masking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 4_masking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/4_masking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/4_masking.dir/build: 4_masking

.PHONY : CMakeFiles/4_masking.dir/build

CMakeFiles/4_masking.dir/requires: CMakeFiles/4_masking.dir/4_masking.cpp.o.requires

.PHONY : CMakeFiles/4_masking.dir/requires

CMakeFiles/4_masking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/4_masking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/4_masking.dir/clean

CMakeFiles/4_masking.dir/depend:
	cd /home/bumblebee/Softwares/OpenCV/Examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles/4_masking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/4_masking.dir/depend
