#!/data/data/com.termux/files/usr/bin/env bash

#--------------------
LESS='-RFXwia#.5 '
LESS+='--mouse --use-color '
#LESS+='-DN+219. '
#LESS+='-DS3;4;226 '
#LESS+='-DE1;231.196 '
#LESS+='-DM189 '
#LESS+='-DP118 '
#LESS+='-Du+213 '
#LESS+='-Dk+ '
#LESS+='-Dd+ '
#LESS+='-Ds+226.91'
export LESS
#--------------------

#-----------------------------------------------
#export LESS_TERMCAP_mb="$(printf '\e[1;38;5;112m')"
#export LESS_TERMCAP_md="$(printf '\e[1;3;38;5;123m')"
#export LESS_TERMCAP_so="$(printf '\e[48;5;135m')"
#export LESS_TERMCAP_us="$(printf '\e[1;4;38;5;226m')"
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_ue=$'\e[0m'
#--------------------------

export PAGER="${PAGER:-less}"
