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
include CMakeFiles/19_morph_op.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/19_morph_op.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/19_morph_op.dir/flags.make

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o: CMakeFiles/19_morph_op.dir/flags.make
CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o: 19_morph_op.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o -c /home/bumblebee/Softwares/OpenCV/Examples/19_morph_op.cpp

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/19_morph_op.dir/19_morph_op.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bumblebee/Softwares/OpenCV/Examples/19_morph_op.cpp > CMakeFiles/19_morph_op.dir/19_morph_op.cpp.i

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/19_morph_op.dir/19_morph_op.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bumblebee/Softwares/OpenCV/Examples/19_morph_op.cpp -o CMakeFiles/19_morph_op.dir/19_morph_op.cpp.s

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.requires:

.PHONY : CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.requires

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.provides: CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.requires
	$(MAKE) -f CMakeFiles/19_morph_op.dir/build.make CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.provides.build
.PHONY : CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.provides

CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.provides.build: CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o


# Object files for target 19_morph_op
19_morph_op_OBJECTS = \
"CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o"

# External object files for target 19_morph_op
19_morph_op_EXTERNAL_OBJECTS =

19_morph_op: CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o
19_morph_op: CMakeFiles/19_morph_op.dir/build.make
19_morph_op: /opt/ros/kinetic/lib/libopencv_xphoto3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_xobjdetect3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_tracking3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_surface_matching3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_structured_light3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_stereo3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_saliency3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_rgbd3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_reg3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_plot3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_optflow3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_line_descriptor3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_hdf3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_fuzzy3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_dpm3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_dnn3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_datasets3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_cvv3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_ccalib3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_bioinspired3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_bgsegm3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_aruco3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_viz3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_videostab3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_superres3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_stitching3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_photo3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_text3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_face3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_ximgproc3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_xfeatures2d3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_shape3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_video3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_objdetect3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_calib3d3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_features2d3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_ml3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_highgui3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_videoio3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_imgcodecs3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_imgproc3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_flann3.so.3.1.0
19_morph_op: /opt/ros/kinetic/lib/libopencv_core3.so.3.1.0
19_morph_op: CMakeFiles/19_morph_op.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 19_morph_op"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/19_morph_op.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/19_morph_op.dir/build: 19_morph_op

.PHONY : CMakeFiles/19_morph_op.dir/build

CMakeFiles/19_morph_op.dir/requires: CMakeFiles/19_morph_op.dir/19_morph_op.cpp.o.requires

.PHONY : CMakeFiles/19_morph_op.dir/requires

CMakeFiles/19_morph_op.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/19_morph_op.dir/cmake_clean.cmake
.PHONY : CMakeFiles/19_morph_op.dir/clean

CMakeFiles/19_morph_op.dir/depend:
	cd /home/bumblebee/Softwares/OpenCV/Examples && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples /home/bumblebee/Softwares/OpenCV/Examples/CMakeFiles/19_morph_op.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/19_morph_op.dir/depend

