#!/usr/bin/env bash

# Environment variables for Ubuntu 18.04 on HP-255-G7 notebook
export Ext="/media/h4ck3r"
export Tc="/opt/toolchains"
export Andy="$HOME/android"
export Studio="/opt/studio"
export Mirrors="${Ext}/mirrors"
export Vend="${Mirrors}/vendors"
export Play="${Andy}/aosp-build"
export Phones="${Andy}/devices"
export Kernels="${Andy}/kernels"
export Recovery="${Andy}/recovery"
export Aosp_Mirror="${Mirrors}/aosp"
export Los_Mirror="${Mirrors}/lineage/LineageOS"

# Android build directory configs
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export OUT_DIR="${Ext}/build/out"
#export DIST_DIR="${Ext}/build/distrib"
#export OUT_DIR_COMMON_BASE="${Ext}/build/common"

# ccache configurations
export USE_CCACHE=1
export CCACHE_MAXSIZE=50G
export CCACHE_NLEVELS=7
export CCACHE_EXEC=/usr/bin/ccache

if [ -d /media/h4ck3r/mirrors ]; then
    export CCACHE_DIR="${Mirrors}/ccache" \
    export CCACHE_LOGFILE="${Mirrors}/ccache/cash.log"
else
    export CCACHE_DIR="/opt/ccache" \
    export CCACHE_LOGFILE="/opt/ccache/cash.log"
fi
