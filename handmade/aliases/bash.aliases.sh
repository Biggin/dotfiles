## An alias file for quicker syntax of common commands
#alias kali='cd ~ && ./start-kali.sh'

###############################################
#
#           System level aliases
#
###############################################
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

alias sl='ls'
alias l.='ls -d .*'
alias lt="ll --time=created --sort=newest --reverse"
alias d='dirs -v | head -10'

###############################################
#
#         Shell & environment stuff
#
###############################################
alias xx='exit'
alias cls='clear'
alias env='env | less'
alias eng='env | grep'
alias h='history'
alias histg='history | grep'
alias shit='inxi -FmMPxx -c 24'
alias rc="nano $HOME/.bashrc"
alias bin='ls ~/.local/bin'
alias cbin='cd ~/.local/bin'
alias colors="bash ${OSH_CUSTOM}/tools/print_colors.sh"
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
alias src="source ~/.bashrc"
alias path='echo -e ${PATH//:/\\n}'

###############################################
#
#  File manipulation things and safety nets
#
###############################################
alias cp='cp -ir'
alias ln='ln -i'
alias mv='mv -i'
alias mkd='mkdir -pv'
alias nano='nano -W'
alias nash='nano -Y sh'
alias modx='chmod +x'
alias 600='chmod 600'
alias 644='chmod 644'
alias 700='chmod 700'
alias 755='chmod 755'
alias 777='chmod 777'
alias own="chown -R `whoami`:`whoami`"
alias diff='diff --color=always'
alias diffy='diff -yw --suppress-common-lines'
alias r='fc -s'
alias c='bat'
alias cb='bat -l bash'
alias blist='bat --list-themes'
alias blang='bat --list-languages'
alias bconfig='nash ~/.config/bat/config'
alias nums='cat -ns'
alias back="tac -r -s 'x\|[^x]' "
alias untar='tar -xvf'
alias ifile='file -i'
alias file='file -s -z'
alias fhere='find . -name '
alias forkat='fortune | lolcat'
alias resync='rsync -ihavEz --links --update --stats --progress'

## File removal "securely" for the noid...
alias sub='scrub -SRtfr -p pfitzner33'
alias bish='scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst'
alias shard='shred -fzn 23 --remove=wipe'
alias rmf='rm -rf'

###############################################
#
#   System resource stuff pertaining to
#   CPU, GPU, memory(RAM), processes etc.
#
###############################################
alias du='du -chL'
alias used='du -s --time'
alias df='df -H'
alias free='free -lh --total'
alias psa='ps auxf'
alias psag='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'

###############################################
#
#       Internet & networking calls
#
###############################################
alias wg='wget2'
alias wget2='wget2 -c -p --progress=bar --force-progress'
alias iface="ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'"
alias net='curl ipinfo.io'
alias inet="curl -w '\n' ipinfo.io/ip"
alias ip="ip -c -h -d -s -s a | grep 'inet'"
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='proxychains4'
alias rfkill='rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'
alias genkeys='eval $(ssh-agent -s); ssh-keygen -t ed25519 -C'

###############################################
#
#       Aliases for package management
#
###############################################
alias ag='apt-get'
alias ai='apt-get install'
alias afb='apt --fix-broken install'
alias ap='apt-get purge'
alias al='apt list'
alias ali='al --installed'
alias alig='ali | grep'
alias as='apt search'
alias asho='apt show'
alias au='apt-get update'
alias auu='au && apt-get upgrade'
alias clapt='apt autoremove && apt remove && apt autoclean && apt clean'

## Termux specific package commands
alias pk.fl='pkg files'
alias pk.la='pkg list-all'
alias pk.li='pkg list-installed'
alias pk.ug='pkg upgrade'
alias pk.sw='pkg show'
alias pk.sr='pkg search'

## Dpkg simplification
alias dp='dpkg'
alias dp.h='dpkg --help'
alias dp.fh='dpkg --force-help'
alias dp.i='dpkg -i'
alias dp.lp='dpkg -l'
alias dp.lg='dp.lp | grep'
alias dp.lf='dpkg -L'
alias dp.s='dpkg -S'
alias dp.con='dpkg --configure -a'
#: Sort by amount of disk space currently used by the program
alias dp.ss="dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"

###############################################
#
#    Mega.nz aliases for multiple accounts
#
###############################################
alias megadf.b="megadf -h --config=${HOME}/.biggin.megarc"
alias megals.b="megals -nh --config=${HOME}/.biggin.megarc /Root"
alias megadl.b="megadl --config=${HOME}/.biggin.megarc --path"
alias megacopy.b="megacopy --config=${HOME}/.biggin.megarc"
alias megaget.b="megaget --config=${HOME}/.biggin.megarc --path"
alias megaput.b="megaput --config=${HOME}/.biggin.megarc --enable-previews --path"

alias megadf.d="megadf -h --config=${HOME}/.droid.megarc"
alias megals.d="megals -nh --config=${HOME}/.droid.megarc /Root"
alias megadl.d="megadl --config=${HOME}/.droid.megarc --path"
alias megacopy.d="megacopy --config=${HOME}/.droid.megarc"
alias megaget.d="megaget --config=${HOME}/.droid.megarc --path"
alias megaput.d="megaput --config=${HOME}/.droid.megarc --enable-previews --path"

alias megadf.k="megadf -h --config=${creds}/.kyle.megarc"
alias megals.k="megals -nh --config=${creds}/.kyle.megarc /Root"
alias megadl.k="megadl --config=${creds}/.kyle.megarc --path"
alias megacopy.k="megacopy --config=${creds}/.kyle.megarc"
alias megaget.k="megaget --config=${creds}/.creds.megarc --path"
alias megaput.k="megaput --config=${creds}/.kyle.megarc --enable-previews --path"

###############################################
#
#    Extra cmds and aliases for playing
#    around with and adding functionality
#
###############################################
alias root="python2 ${HOME}/github/FakeRoot/root.py"
alias seeker="python ${HOME}/github/seeker/seeker.py"
alias proxy="bash $HOME/github/Free-Proxy/FreeProxy.sh"
