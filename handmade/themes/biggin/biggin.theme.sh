#!/data/data/com.termux/files/usr/bin/env bash

function prompt_command() {
    if [ ${EUID} == 0 ]; then
        PS1="\n${echo_yellow}r00t${echo_red}@${echo_cyan}LG-Droid${echo_reset_color} ${echo_green} \w${echo_reset_color}\n$(scm_prompt_info) ${echo_white} → ${echo_reset_color}";
    else
     PS1="${echo_red}h4ck3r${echo_yellow}@${echo_cyan}LG-Droid${echo_reset_color}${echo_green} \w${echo_reset_color}$(scm_prompt_info)\n ${echo_orange} → ${echo_normal}";
    fi
}

safe_append_prompt_command prompt_command

