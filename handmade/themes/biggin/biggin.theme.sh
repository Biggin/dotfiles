#!/data/data/com.termux/files/usr/bin/env bash

#: Load default color themes for Oh-My-Bash
source $OSH_CUSTOM/themes/base.theme.sh
source $OSH_CUSTOM/themes/colour.theme.sh

#: My first custom prompt theme for OMB
function prompt_command() {
    if [ ${EUID} == 0 ]; then
        PS1="${yellow}r00t${red}@${cyan}pixel-2${reset_color} ${green}\w${reset_color}\n$(scm_prompt_info) ${red}#${white} → ${reset_color}";
    else
        PS1="${purple}biggin${bold_yellow}@${reset_color}${cyan}pixel-2${bold_white} [${green}\w${bold_white}]${reset_color}\n$(scm_prompt_info)${white} → ${reset_color}";
    fi
}

safe_append_prompt_command prompt_command
