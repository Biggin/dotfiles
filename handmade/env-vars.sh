# Environment variables for Ubuntu 18.04 on HP-255-G7 notebook
export Ext="/media/droid"
export Tc="/opt/toolchains"
export Andy="${HOME}/Android"
export Studio="${HOME}/Studio"
export Mirrors="${Ext}/mirrors"
export Aosp_Mirror="${Mirrors}/aosp"
export Los_Mirror="${Mirrors}/lineage/LineageOS"

# Android build directory configs
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export OUT_DIR="${Ext}/build/out"
export DIST_DIR="${Ext}/build/distrib"
export OUT_DIR_COMMON_BASE="${Ext}/build/common"

# ccache configurations
export USE_CCACHE=1
export CCACHE_MAXSIZE=50G
export CCACHE_DIR="${Andy}/ccache"
export CCACHE_LOGFILE="${Andy}/ccache/cash.log"
export CCACHE_NLEVELS=7
