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
include CMakeFiles/26_largest_contour.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/26_largest_contour.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/26_largest_contour.dir/flags.make

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o: CMakeFiles/26_largest_contour.dir/flags.make
CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o: 26_largest_contour.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o -c /home/bumblebee/Softwares/OpenCV/Examples/26_largest_contour.cpp

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumblebee/Softwares/OpenCV/Examples/26_largest_contour.cpp > CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.i

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumblebee/Softwares/OpenCV/Examples/26_largest_contour.cpp -o CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.s

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.requires:

.PHONY : CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.requires

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.provides: CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.requires
	$(MAKE) -f CMakeFiles/26_largest_contour.dir/build.make CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.provides.build
.PHONY : CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.provides

CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.provides.build: CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o


# Object files for target 26_largest_contour
26_largest_contour_OBJECTS = \
"CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o"

# External object files for target 26_largest_contour
26_largest_contour_EXTERNAL_OBJECTS =

26_largest_contour: CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o
26_largest_contour: CMakeFiles/26_largest_contour.dir/build.make
26_largest_contour: /usr/local/lib/libopencv_videostab.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_ts.a
26_largest_contour: /usr/local/lib/libopencv_superres.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_stitching.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_contrib.so.2.4.13
26_largest_contour: /usr/lib/x86_64-linux-gnu/libGLU.so
26_largest_contour: /usr/lib/x86_64-linux-gnu/libGL.so
26_largest_contour: /usr/local/lib/libopencv_nonfree.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_ocl.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_gpu.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_photo.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_objdetect.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_legacy.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_video.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_ml.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_calib3d.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_features2d.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_highgui.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_imgproc.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_flann.so.2.4.13
26_largest_contour: /usr/local/lib/libopencv_core.so.2.4.13
26_largest_contour: CMakeFiles/26_largest_contour.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 26_largest_contour"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/26_largest_contour.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/26_largest_contour.dir/build: 26_largest_contour

.PHONY : CMakeFiles/26_largest_contour.dir/build

CMakeFiles/26_largest_contour.dir/requires: CMakeFiles/26_largest_contour.dir/26_largest_contour.cpp.o.requires

.PHONY : CMakeFiles/26_largest_contour.dir/requires

CMakeFiles/26_largest_contour.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/26_largest_contour.dir/cmake_clean.cmake
.PHONY : CMakeFiles/26_largest_contour.dir/clean

CMakeFiles/26_largest_contour.dir/depend:
	cd /home/bumblebee/Softwares/OpenCV/Examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles/26_largest_contour.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/26_largest_contour.dir/depend

