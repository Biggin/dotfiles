## An alias file for quicker syntax of common commands
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"

###############################################
#
#           System level aliases
#
###############################################
alias _='sudo'

alias cd..='cd ../'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias ,,='cd ..'
alias ,,,='cd ../../'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'

#alias d='dirs -v | head -10'
#alias ls='ls -FC --color=always'
#alias l.='ls -d .*'
#alias la='ls -A'
#alias l='ls -sh'
#alias ll='l -lA'
#alias lt='ll -shut'


###############################################
#
#         Shell & environment stuff
#
###############################################
#alias xx='exit'
alias xx='kill -9 $$'
alias cls='clear'
alias pff='poweroff'
alias env='env | sort | less'
alias eng='/bin/env | grep'
alias path='echo -e ${PATH//:/\\n}'
alias echo='echo -e'
alias help='help -m'
alias what='type -a'
alias debug='set -o nounset; set -o xtrace'
alias 000='sudo chmod 000'
alias 600='sudo chmod 600'
alias 644='sudo chmod 644'
alias 700='sudo chmod 700'
alias 755='sudo chmod 755'
alias 777='sudo chmod 777'
alias modx='sudo chmod +x'
alias modu='sudo chmod u+x'
alias own="sudo chown -R $(whoami):$(whoami)"

###############################################
#
#   System resource stuff pertaining to
#   CPU, GPU, memory(RAM), processes etc.
#
###############################################
alias du='sudo du -h'
alias df='sudo df -Tha --total'
alias free='sudo free -mth'
alias psa='sudo ps axf'
alias shit='sudo inxi -FmMPxx -c 24'
alias psag='sudo ps ax | grep -v grep | grep -i -e VSZ -e'
alias psmem='sudo ps axf | sort -nr -k 4 | head -10'
alias pscpu='sudo ps axf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
