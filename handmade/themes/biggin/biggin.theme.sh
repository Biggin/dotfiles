#!/usr/bin/env bash

function prompt_command() {
    PS1="${red}h4ck3r${yellow}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
}

safe_append_prompt_command prompt_command
