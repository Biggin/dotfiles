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

# Moved to a dedicated file
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
alias env='env | sort | less'
alias eng='/bin/env | grep'
alias echo='echo -e'
alias help='help -m'
alias what='type -a'


###############################################
#
#   System resource stuff pertaining to
#   CPU, GPU, memory(RAM), processes etc.
#
###############################################
alias du='du -h'
alias df='df -Tha --total'
alias free='free -mth'
alias psa='ps axf'
alias shit='inxi -FmMPxx -c 24'
alias psag='ps ax | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps axf | sort -nr -k 4 | head -10'
alias pscpu='ps axf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'


####################################
#
#    Termux Specific Commands
#
####################################
alias shebang='termux-fix-shebang'
alias setts='termux-reload-settings'
alias storage='termux-setup-storage'
alias topen='termux-open'
