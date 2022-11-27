#!/usr/bin/env bash

#function prompt_command() {
 #   if [ ${EUID} == 0 ]; then
  #      PS1="${yellow}r00t${red}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
 #   else
  #      PS1="${red}h4ck3r${yellow}@${cyan}linux-box${reset_color} ${green}\w${reset_color}$(scm_prompt_info)${white} → ${reset_color}";
  #  fi
#}
## ParrotOS User Prompt
function prompt_command () {
	if [[ ${EUID} == 0 ]]; then
		PS1="${red}\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo -e \"${red}[\342\234\227]\342\224\200\")[ r${white}00${red}t${bold_yellow}@${reset_color}${cyan}\h${red} ]\342\224\200[ ${green}\w ${red}]\342\224\200${reset_color}$(scm_prompt_info)\n${red}\342\224\224\342\224\200\342\224\200\342\225\274${bold_green} \\$ ${reset_color}"
	else
		 PS1="${cyan}\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo -e \"${red}[\342\234\227]\342\224\200\")${white}[${red}\u${bold_yellow}@${blue}\h${reset_color} ${white}]${cyan}\342\224\200${white}[${green}\w${white}]${cyan}\342\224\200${reset_color}$(scm_prompt_info)\n${cyan}\342\224\224\342\224\200\342\224\200\342\225\274${bold_yellow}\\$ ${reset_color}"
	fi
}

safe_append_prompt_command prompt_command

#     PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
