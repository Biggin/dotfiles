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
alias du='du -h'
alias df='df -Tha --total'
alias free='free -mth'
alias psa='ps axf'
alias shit='sudo inxi -FmMPxx -c 24'
alias psag='ps ax | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps axf | sort -nr -k 4 | head -10'
alias pscpu='ps axf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

alias diff='diff --color=always'
alias diffy='diff -yw --suppress-common-lines'
alias c='bat'
alias cb='bat -l bash'
alias cr='bat **/README.*'
alias blist='bat --list-themes'
alias blang='bat --list-languages'
alias cn='cat -nst'
alias back="tac -r -s 'x\|[^x]' " # Reverse file and lines
alias cp='cp -ir'
alias mv='mv -i'
alias mkd='mkdir -pv'
alias file='file -s -z'
alias ifile='file -s -z -i'
alias fhere='find . -name '
alias cls='clear'
alias wg='wget -c --progress'
alias wget2='wget2 -c --progress=bar'
alias h='history'
alias ha='history -a'
alias hg='history | grep'
alias eng='env | grep'
alias ens='env | sort'
alias rc="nano -Y sh ${HOME}/.bashrc"
alias envit="nano ${OSH_CUSTOM}/lib/bourne-shell.sh"
alias funcs="nano ${OSH_CUSTOM}/funcs.sh"
alias aliases="nano ${OSH_CUSTOM}/aliases/bash.aliases.sh"
alias src="source ~/.bashrc"
alias net='curl ipinfo.io'
alias inet='curl ipinfo.io/ip'
alias ip='ip -c -h -d -s -s a'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias rfkill='sudo rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'

## File removal "securely" for the noid...
alias sub='sudo scrub -SRfr -p pfitzner33'
alias bish='scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst'
alias shard='sudo shred -fzn 23 --remove=wipe'
alias rmf='sudo rm -rf'
