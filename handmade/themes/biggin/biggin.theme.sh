#!/data/data/com.termux/files/usr/bin/env bash

function prompt_command() {
    PS1="${bold_green}Biggin${white}@${reset_color}${bold_purple}androidable-droid ${reset_color}${yellow}\w${reset_color}$(scm_prompt_info)${blue} → ${reset_color} ";
}

safe_append_prompt_command prompt_command
