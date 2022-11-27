## An alias file for quicker syntax of common commands

####################################
#
# 						          System level aliases
#
####################################
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'

alias cd..='cd ../'
alias .1='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'


#######################################
#
#					         Shell & environment stuff
#
#######################################
alias xx='exit'
#alias xx="kill -9 $$"
alias cls='clear'
alias env='env | less'
alias eng='env | grep'
alias h='history'
alias hg='history | grep'
alias what='type -a'
alias shit='sudo inxi -FmMPxx -c 24'
alias rc="nano $HOME/.bashrc"
alias bin='ls ~/bin/ /bin/ /usr/bin/'
alias cbin='cd ~/.local/bin'
#alias colors="bash ${OSH_CUSTOM}/tools/print_colors.sh"
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
alias src="source ~/.bashrc"
alias path='echo -e ${PATH//:/\\n}'

######################################
#
#			  File manipulation things and safety nets
#
######################################
alias cp='cp -ir'
alias ln='ln -i'
alias mv='mv -i'
alias mkd='mkdir -pv'
alias nano='nano -W'
alias nash='nano -Y sh'
alias modx='sudo chmod +x'
alias 600='sudo chmod 600'
alias 644='sudo chmod 644'
alias 700='sudo chmod 700'
alias 755='sudo chmod 755'
alias 777='sudo chmod 777'
alias own="sudo chown -R `whoami`:`whoami`"
alias diff='diff --color=always --suppress-common-lines'
alias diffy='diff -yw'
alias grep='grep -Hin'
alias grev='grep -v'
alias r='fc -s'
alias hd='hexdump'
alias hdc='hexdump -C'
alias c='bat'
alias cb='bat -l bash'
alias blist='bat --list-themes'
alias blang='bat --list-languages'
alias bcfg='nash ~/.config/bat/config'
alias nums='cat -ns'
alias back="tac -r -s 'x\|[^x]' "
alias untar='tar -xvf'
alias file='file -s -z'
alias fhere='find . -name '
alias resync='rsync -ihavEz --links --update --stats --progress'

## File removal "securely" for the noid...
alias sub='sudo scrub -SRtfr -p pfitzner33'
alias bish='sudo scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst'
alias shard='sudo shred -fzn 23 --remove=wipe'
alias rmf='rm -rf'
alias surf='sudo rm -rf'

######################################
#
# 				  System resource stuff pertaining to
# 		    CPU, GPU, memory(RAM), processes etc.
#
######################################
alias du='du -chL'
alias used='du -s --time'
alias df='df -Tha'
alias free='free -lbh --total'
alias psa='ps auxf'
alias psag='ps aux | grep -v grep | grep -i -e VSZ -e'
# List the top 10 processes using RAM
alias psmem='ps auxf | sort -nr -k 4 | head -10'
# List the top 10 processes consuming CPU
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
# Prints the current active governor for the CPU's
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
# Sets the governor to performance mode for resource intensive tasks
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
# Sets the governor to powersave mode to reserve battery life
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

##############################
#
#		       Internet & networking calls
#
##############################
alias wg='wget2 -c -p --progress=bar --force-progress'
alias iface="ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'"
alias inet='curl ipinfo.io'
alias public_ip='curl ipinfo.io/ip -w "\n"'
alias private_ip='p -4 -br -o a  | cut -d / -f 1 | cut -d\" \" -f 26'
alias netinfo='curl -w "\n%{local_ip} \n%{remote_ip} \n" ipinfo.io/ip'
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='sudo proxychains4'
alias rfkill='sudo  rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'
alias ssh.T='ssh -T git@github.com'
alias genkeys='ssh-keygen -t ed25519 -b 4096 -f ~/.ssh/user_ed25519 -C'
alias ssh-prep='eval $(ssh-agent -s); ssh-add ~/.ssh/*ed25519'

###############################################
#
#					 	   Mega.nz aliases for multiple accounts
#
###############################################
#alias megadf.b="megadf -h --config=${HOME}/.biggin.megarc"
#alias megals.b="megals -nh --config=${HOME}/.biggin.megarc /Root"
#alias megadl.b="megadl --config=${HOME}/.biggin.megarc --path"
#alias megacopy.b="megacopy --config=${HOME}/.biggin.megarc"
#alias megaget.b="megaget --config=${HOME}/.biggin.megarc --path"
#alias megaput.b="megaput --config=${HOME}/.biggin.megarc --enable-previews --path"

#alias megadf.d="megadf -h --config=${HOME}/.droid.megarc"
#alias megals.d="megals -nh --config=${HOME}/.droid.megarc /Root"
#alias megadl.d="megadl --config=${HOME}/.droid.megarc --path"
#alias megacopy.d="megacopy --config=${HOME}/.droid.megarc"
#alias megaget.d="megaget --config=${HOME}/.droid.megarc --path"
#alias megaput.d="megaput --config=${HOME}/.droid.megarc --enable-previews --path"

#alias megadf.k="megadf -h --config=${creds}/.kyle.megarc"
#alias megals.k="megals -nh --config=${creds}/.kyle.megarc /Root"
#alias megadl.k="megadl --config=${creds}/.kyle.megarc --path"
#alias megacopy.k="megacopy --config=${creds}/.kyle.megarc"
#alias megaget.k="megaget --config=${creds}/.creds.megarc --path"
#alias megaput.k="megaput --config=${creds}/.kyle.megarc --enable-previews --path"

###############################################
#
#						    Extra cmds and aliases for playing
#					    around with and adding functionality
#
###############################################
