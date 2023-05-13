#!/data/data/com.termux/files/usr/bin/env bash

export LESS='-RFXia#.5'
export PAGER="${PAGER:-less}"

function man () {
	env LESS_TERMCAP_mb="$(printf '\e[1;31m')" \
    	LESS_TERMCAP_md="$(printf '\e[38;5;40m')" \
        LESS_TERMCAP_me="$(printf '\e[0m')" \
        LESS_TERMCAP_se="$(printf '\e[0m')" \
        LESS_TERMCAP_so="$(printf '\e[1;44;33m')" \
        LESS_TERMCAP_ue="$(printf '\e[0m')" \
        LESS_TERMCAP_us="$(printf '\e[38;5;191;4m')" \
        GROFF_NO_SGR="yes" \
        man "$@"
}
