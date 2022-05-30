#!/data/data/com.termux/files/usr/bin/env bash

#: Load default color themes for Oh-My-Bash
source $OSH_CUSTOM/themes/base.theme.sh
source $OSH_CUSTOM/themes/colour.theme.sh

#: My first custom prompt theme for OMB
function prompt_command() {
<<<<<<< HEAD
    if [ ${EUID} == 0 ]; then
        PS1="${yellow}r00t${red}@${cyan}pixel-2${reset_color} ${green}\w${reset_color}\n$(scm_prompt_info) ${red}#${white} → ${reset_color}";
    else
        PS1="${purple}biggin${bold_yellow}@${reset_color}${cyan}pixel-2${bold_white} [${green}\w${bold_white}]${reset_color}\n$(scm_prompt_info)${white} → ${reset_color}";
    fi
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
    if [ ${EUID} == 0 ]; then
        PS1="${yellow}r00t${red}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
    else
        PS1="${red}h4ck3r${yellow}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
    fi
=======
    PS1="${bold_green}Biggin${white}@${reset_color}${bold_purple}androidable-droid ${reset_color}${yellow}\w${reset_color}$(scm_prompt_info)${blue} → ${reset_color} ";
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)
}

safe_append_prompt_command prompt_command
