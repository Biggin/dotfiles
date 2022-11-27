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
		PS1="\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo -e \"[\342\234\227]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo -e 'root@\h'; else echo -e '\u@\h'; fi)]\342\224\200[\w]\n\342\224\224\342\224\200\342\224\200\342\225\274\\$ "
	else
		 PS1="\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo -e \"[\342\234\227]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo -e '\u@\h'; fi)]\342\224\200[\w]\n\342\224\224\342\224\200\342\224\200\342\225\274\\$ "
	fi
}

safe_append_prompt_command prompt_command

#     PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
