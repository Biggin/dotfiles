#!/data/data/com.termux/files/usr/bin/env bash

#export PAGER="less -R"

## Enable colored man-page output
function man () {
    export LESS_TERMCAP_mb=$'\e[1;33m'
    export LESS_TERMCAP_md=$'\e[36m'
    export LESS_TERMCAP_so=$'\e[1;35m'
    export LESS_TERMCAP_us=$'\e[1;4;34m'
    export LESS_TERMCAP_me=$'\e[0m'
    export LESS_TERMCAP_se=$'\e[0m'
    export LESS_TERMCAP_ue=$'\e[0m'

    command man "$@"
}

