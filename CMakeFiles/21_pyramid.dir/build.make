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
include CMakeFiles/21_pyramid.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/21_pyramid.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/21_pyramid.dir/flags.make

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o: CMakeFiles/21_pyramid.dir/flags.make
CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o: 21_pyramid.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o -c /home/bumblebee/Softwares/OpenCV/Examples/21_pyramid.cpp

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/21_pyramid.dir/21_pyramid.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumblebee/Softwares/OpenCV/Examples/21_pyramid.cpp > CMakeFiles/21_pyramid.dir/21_pyramid.cpp.i

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/21_pyramid.dir/21_pyramid.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumblebee/Softwares/OpenCV/Examples/21_pyramid.cpp -o CMakeFiles/21_pyramid.dir/21_pyramid.cpp.s

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.requires:

.PHONY : CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.requires

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.provides: CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.requires
	$(MAKE) -f CMakeFiles/21_pyramid.dir/build.make CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.provides.build
.PHONY : CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.provides

CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.provides.build: CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o


# Object files for target 21_pyramid
21_pyramid_OBJECTS = \
"CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o"

# External object files for target 21_pyramid
21_pyramid_EXTERNAL_OBJECTS =

21_pyramid: CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o
21_pyramid: CMakeFiles/21_pyramid.dir/build.make
21_pyramid: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_tracking3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_reg3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_plot3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_dnn3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_viz3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_superres3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_photo3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_text3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_face3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_shape3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_video3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_ml3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_flann3.so.3.1.0
21_pyramid: /opt/ros/kinetic/lib/libopencv_core3.so.3.1.0
21_pyramid: CMakeFiles/21_pyramid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 21_pyramid"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/21_pyramid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/21_pyramid.dir/build: 21_pyramid

.PHONY : CMakeFiles/21_pyramid.dir/build

CMakeFiles/21_pyramid.dir/requires: CMakeFiles/21_pyramid.dir/21_pyramid.cpp.o.requires

.PHONY : CMakeFiles/21_pyramid.dir/requires

CMakeFiles/21_pyramid.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/21_pyramid.dir/cmake_clean.cmake
.PHONY : CMakeFiles/21_pyramid.dir/clean

CMakeFiles/21_pyramid.dir/depend:
	cd /home/bumblebee/Softwares/OpenCV/Examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles/21_pyramid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/21_pyramid.dir/depend

