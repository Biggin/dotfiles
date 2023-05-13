## An alias file for quicker syntax of common commands
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"

###############################################
#
#           System level aliases
#
###############################################
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


###############################################
#
#         Shell & environment stuff
#
###############################################
#alias xx='exit'
alias xx='kill -9 $$'
alias cls='clear'
alias env='env | sort | less'
alias eng='$PREFIX/bin/env | grep'
alias path='echo -e ${PATH//:/\\n}'
alias echo='echo -e'
alias help='help -m'
alias what='type -a'
alias h='history'
alias ha='history -a'
alias hg='history | grep'
alias debug='set -o nounset; set -o xtrace'
alias own="chown -R `whoami`:`whoami`"
alias moda='chmod a+x'
alias modu='chmod u+x'
alias 000='chmod 000'
alias 600='chmod 600'
alias 644='chmod 644'
alias 700='chmod 700'
alias 755='chmod 755'
alias 777='chmod 777'


###############################################
#
#         Termux specific shorteners
#
###############################################
alias shebang='termux-fix-shebang'
alias settings='termux-reload-settings'
alias sdcard='termux-setup-storage'
alias tbak='termux-backup ~/termux-$(date +%m-%d-%y_%H:%M%P).tar.xz'
alias topen='termux-open --chooser'


###############################################
#
#   System resource stuff pertaining to
#   CPU, GPU, memory(RAM), processes etc.
#
###############################################
alias shit='inxi -FmMPxx -c 24'
alias psa='ps axf'
alias psag='ps ax | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps axf | sort -nr -k 4 | head -10'
alias pscpu='ps axf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
