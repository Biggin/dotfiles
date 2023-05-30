#!/data/data/com.termux/files/usr/bin/env bash

#export LESS='-RFXia#.5 --mouse'
#export PAGER="${PAGER:-less}"

## Enable colored man-page output
#export LESS_TERMCAP_mb=$'\e[1;33m'
#export LESS_TERMCAP_md=$'\e[36m'
#export LESS_TERMCAP_so=$'\e[1;35m'
#export LESS_TERMCAP_us=$'\e[1;4;34m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_ue=$'\e[0m'


function man () {
	command -p env \
	  LESS_TERMCAP_mb="$(printf '\e[1;31m')" \
      LESS_TERMCAP_md="$(printf '\e[1;38;5;76m')" \
      LESS_TERMCAP_so="$(printf '\e[48;5;135m \e[1;3;38;5;226m')" \
      LESS_TERMCAP_us="$(printf '\e[3;4;38;5;51m')" \
      LESS_TERMCAP_me="$(printf '\e[0m')" \
      LESS_TERMCAP_se="$(printf '\e[0m')" \
      LESS_TERMCAP_ue="$(printf '\e[0m')" \
      GROFF_NO_SGR="yes" \
      man "$@"
}
