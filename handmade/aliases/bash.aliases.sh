## An alias file for quicker syntax of common commands
<<<<<<< HEAD
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
=======
alias kali='cd ~ && ./start-kali.sh'
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)

<<<<<<< HEAD
###############################################
#
#           System level aliases
#
###############################################
alias cd..='cd ../'
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
## System level aliases
alias _='sudo'
=======
## System level aliases
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
<<<<<<< HEAD

alias ,,='cd ..'
alias ,,,='cd ../../'
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
=======

alias cd..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'

<<<<<<< HEAD
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
alias d='dirs -v | head -10'
alias ls='ls -FC --color=always'
alias l.='ls -d .*'
alias la='ls -A'
alias l='ls -sh'
alias ll='l -lA'
alias lt='ll -shut'
=======
#alias ls='ls -FC --color=always'
#alias la='ls -A'
#alias l='ls -sh'
#alias ll='l -lA'
alias l.='ls -d .*'
alias lt='ll -ut'
alias d='dirs -v | head -10'
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)

<<<<<<< HEAD
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
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
alias xx='exit'
alias shit='sudo inxi'
alias 600='sudo chmod 600'
alias 644='sudo chmod 644'
alias 700='sudo chmod 700'
alias 755='sudo chmod 755'
alias modx='sudo chmod +x'
alias own="sudo chown -R $(whoami):$(whoami)"
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
alias file='file -s -z'
alias ifile='file -s -z -i'
alias fhere='find . -name '
alias cls='clear'
alias mkd='mkdir -pv'
alias path='echo ${PATH}'
alias top='htop'
alias du='du -h'
alias df='df -Tha --total'
alias free='free -mth'
alias psa='ps auxf'
alias wg='wget2'
alias wget2='wget2 -c --progress=bar'
alias histg='history | grep'
alias eng='env | grep'
alias ens='env | sort'
alias rc="nano -Y sh ${HOME}/.bashrc"
alias envit="nano ${OSH_CUSTOM}/lib/bourne-shell.sh"
alias colors="bash ${OSH_CUSTOM}/tools/print_colors.sh"
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

## Aliases for package management
alias ag='sudo apt-get'
alias ai='sudo apt-get install'
alias ap='sudo apt-get purge'
alias al='sudo apt list'
alias ali='sudo apt list --installed'
alias alig='sudo apt list --installed | grep'
alias as='sudo apt search'
alias aptsh='sudo apt show'
alias au='sudo apt-get update'
alias auu='sudo apt-get update && sudo apt-get upgrade'
alias clapt='sudo apt autoremove && sudo apt remove && sudo apt autoclean && sudo apt clean'

## Dpkg simplification
alias dp='sudo dpkg'
alias dp.h='sudo dpkg --help'
alias dp.fh='sudo dpkg --force-help'
alias dp.i='sudo dpkg -i'
alias dp.l='sudo dpkg -l'
alias dp.lg='sudo dpkg -l | grep'
alias dp.L='sudo dpkg -L'
alias dp.s='sudo dpkg -S'
alias dp.con='sudo dpkg --configure -a'
alias installed='dpkg --get-selections'

## Mega.nz cli aliases for different accounts
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

## Git for lazy people
#alias git.h='git help'
#alias git.ha='git help -a'
#alias git.bra='git branch --list -a --color=always'
#alias regit='git rebase -i'
#alias git.rbc='git rebase --continue'
#alias git.rba='git rebase --abort'
#alias git.rbs='git rebase --skip'
#alias git.chk='git checkout'
#alias git.cl='git clone'
#alias gstat='git status'
#alias gadd='git add . '
#alias git.l='git log'
#alias git.c='git commit -m'
#alias git.ca='git commit --amend -m'
#alias git.cn='git commit --no-edit -m'
#alias git.pu='git push'
#alias git.ll='git pull'
#alias git.re='git reset --hard'
#alias git.add='git remote add'
#alias git.set='git remote --set-upstream'
#alias git.re='git reset'
#alias git.rh='git reset --hard'
#alias git.rs='git reset --soft'
#alias git.cp='git cherry-pick'
#alias git.st='git stash'
#alias git.sq='git squash'
=======


## Shell & environment stuff
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
alias colors="bash ~/scripts/setup/print_colors.sh"
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
alias src="source ~/.bashrc"
alias path='echo -e ${PATH//:/\\n}'



## File manipulation things and safety
## nets for ease of mind
alias cp='cp -ir'
alias ln='ln -i'
alias mv='mv -i'
alias nano='nano -W'
alias nash='nano -Y sh'
alias edit='nano -W'
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
alias bconfig='nano -Y sh ~/.config/bat/config'
alias nums='cat -ns'
alias back="tac -r -s 'x\|[^x]' "
alias untar='tar -xvf'
alias ifile='file -i'
alias file='file -s -z'
alias fhere='find . -name '
alias katty='fortune | lolcat'
alias resync='rsync -ihavEz --links  --update --stats --progress'

## File removal "securely" for the noid...
alias sub='scrub -SRtfr -p pfitzner33'
alias bish='scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst'
alias shard='shred -fzn 23 --remove=wipe'
alias rmf='rm -rf'



## System resource stuff pertaining to
## CPU, GPU, memory(RAM), processes and
## high-level junk
alias du='du -chL'
alias d.used='du -s --time'
alias df='df -H'
alias free='free -lh --total'
alias psa='ps auxf'
alias psag='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'



## Internet & networking calls to free
## up some of my brain cells
alias wg='wget2'
alias wget2='wget2 -c -p --progress=bar --force-progress'
alias active_if="ip addr | awk '/state UP/ {print $2}' | sed 's/.$//' "
alias net='curl ipinfo.io'
alias inet='curl ipinfo.io/ip'
alias ip='ip -c -h -d -s -s a'
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='proxychains4'
alias rfkill='sudo rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'



## Aliases for package management
alias ag='apt-get'
alias ai='apt-get install'
alias afb='apt --fix-broken install'
alias ap='apt-get purge'
alias al='apt list'
alias ali='al --installed'
alias alig='ali | grep'
alias as='apt search'
alias aptsh='apt show'
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

#: Sort by amount of disk space
#: currently used by the program
alias dp.ss="dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"


## Mega.nz cli aliases for different
## accounts
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


## From a simpler time.....
## Git for lazy people
#alias git.h='git help'
#alias git.ha='git help -a'
#alias git.bra='git branch --list -a --color=always'
#alias regit='git rebase -i'
#alias git.rbc='git rebase --continue'
#alias git.rba='git rebase --abort'
#alias git.rbs='git rebase --skip'
#alias git.chk='git checkout'
#alias git.cl='git clone'
#alias gstat='git status'
#alias gadd='git add . '
#alias git.l='git log'
#alias git.c='git commit -m'
#alias git.ca='git commit --amend -m'
#alias git.cn='git commit --no-edit -m'
#alias git.pu='git push'
#alias git.ll='git pull'
#alias git.re='git reset --hard'
#alias git.add='git remote add'
#alias git.set='git remote --set-upstream'
#alias git.re='git reset'
#alias git.rh='git reset --hard'
#alias git.rs='git reset --soft'
#alias git.cp='git cherry-pick'
#alias git.st='git stash'
#alias git.sq='git squash'
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)
