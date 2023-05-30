#: ParrotOS (ParrotSec) User Prompt
function prompt_command () {
	if [ ${EUID} == 0 ]; then
		PS1="${echo_bold_green}\342\224\214\342\224\200\$([ \$? != 0 ] && echo -e \"${echo_bold_blue}[${echo_bold_green}\342\234\227${echo_bold_blue}]${echo_bold_green}\342\224\200\")${echo_bold_blue}[$(if [ ${EUID} == 0 ]; then echo -e ${echo_green}r${echo_purple}00${echo_green}t${echo_bold_yellow}@${echo_white}'\h'; else echo -e ${echo_cyan}'\u'${echo_bold_yellow}@${echo_purple}'\h'; fi)${echo_bold_blue}]${echo_bold_green}\342\224\200${echo_bold_blue}[${echo_purple}\w${echo_bold_blue}]${echo_bold_green}\n\342\224\224\342\224\200\342\224\200\342\225\274$(scm_prompt_info) ${echo_white}\\$ ${echo_normal}"
	else
		 PS1="${echo_bold_red}\342\224\214\342\224\200\$([ \$? != 0 ] && echo -e \"${echo_bold_white}[${echo_bold_red}\342\234\227${echo_bold_white}]${echo_bold_red}\342\224\200\")${echo_bold_white}[$(if [ ${EUID} == 0 ]; then echo -e ${echo_cyan}r${echo_purple}00${echo_cyan}t${echo_orange}@${echo_yellow}'\h'; else echo -e ${echo_cyan}Biggin${echo_bold_yellow}@${echo_purple}Galaxy-A03s; fi)${echo_bold_white}]${echo_bold_red}\342\224\200${echo_bold_white}[${echo_bold_blue}\w${echo_bold_white}]\n${echo_bold_red}\342\224\224\342\224\200\342\224\200\342\225\274$(scm_prompt_info) ${echo_bold_yellow}\\$ ${echo_normal}"
	fi
}

safe_append_prompt_command prompt_command

#     PS1='┌──[\u@\h]─[\w]\n└──╼ \$ '
