#!/bin/bash

##########################
# Envirmont Path
#########################

CPKG_TOPDIR="/opt/build-top"
CPKG_DL_DIR="$CPKG_TOPDIR/dl_dir"
CPKG_BUILD_DIR="$CPKG_TOPDIR/build_dir"
CPKG_STAGE_DIR="$CPKG_TOPDIR/stage_dir"

#export  CPKG_INCLUDE_DIR="${CPKG_TOPDIR}/include"
#export  CPKG_PACKAGE_DIR="${CPKG_TOPDIR}/package"
#export  CPKG_SCRIPTS_DIR="${CPKG_TOPDIR}/scripts"

[ ! -d $CPKG_DL_DIR ] && mkdir -p $CPKG_DL_DIR
[ ! -d $CPKG_BUILD_DIR ] && mkdir -p $CPKG_BUILD_DIR
[ ! -d $CPKG_STAGE_DIR ] && mkdir -p $CPKG_STAGE_DIR