#!/data/data/com.termux/files/usr/bin/env bash
# Options and configs from the standard
# ~/.bashrc file
# Make less more friendly for non-text
# input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

## Environment variables for Ubuntu
## 18.04 on personal laptop/notebook
#export Ext="/media/h4ck3r"
#export Tc="/opt/toolchains"
#export Andy="/opt/android"
#export Studio="/opt/studio"
#export Mirrors="${Ext}/mirrors"
#export Vend="${Mirrors}/vendors"
#export Play="${Andy}/aosp-build"
#export Phones="${Andy}/devices"
#export Kernels="${Andy}/kernels"
#export Recovery="${Andy}/recovery"
#export Aosp_Mirror="${Mirrors}/aosp"
#export Los_Mirror="${Mirrors}/lineage/LineageOS"

## Android build directory configs
#export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
#export OUT_DIR="${Ext}/build/out"
#export DIST_DIR="${Ext}/build/distrib"
#export OUT_DIR_COMMON_BASE="${Ext}/build/common"

## ccache configurations
#export USE_CCACHE=1
#export CCACHE_NLEVELS=7
#export CCACHE_MAXSIZE=50G
#export CCACHE_DIR="${Mirrors}/ccache"
#export CCACHE_LOGFILE="${Mirrors}/ccache/cash.log"
