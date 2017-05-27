#! /bin/bash -

# Get package path
THIS_SCRIPT=`readlink -f $0`
THIS_SCRIPT_DIR=`dirname $THIS_SCRIPT`
THIS_PKG=`dirname $THIS_SCRIPT_DIR`
WS_SRC_DIR=`dirname $THIS_PKG`
WS_DIR=`dirname $WS_SRC_DIR`

source $WS_DIR/installer/config.bash
source $WS_SRC_DIR/bwslam_meta/deps_tool/dep_tools.sh

# Identify package name and version
identify_package $THIS_PKG

#################### Add your scripts below  ####################
resolve_debian_pkg ros-indigo-tf
resolve_debian_pkg libsdl-image1.2-dev
resolve_debian_pkg ros-indigo-bfl
resolve_debian_pkg ros-indigo-pcl-ros
resolve_debian_pkg ros-indigo-costmap-converter
