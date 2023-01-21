#!/data/data/com.termux/files/usr/bin/env bash

function prompt_command() {
    if [ ${EUID} == 0 ]; then
        PS1="${yellow}r00t${red}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
    else
        PS1="${red}h4ck3r${yellow}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
    fi
}

safe_append_prompt_command prompt_command
