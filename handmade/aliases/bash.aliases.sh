#: Aliases for quicker syntax of common commands

#------------------------------------------
#           System level aliases
#------------------------------------------
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

#------------------------------------------
#         Shell & environment stuff
#------------------------------------------
alias xx='kill -9 $$'
alias cls='clear'
alias env='env | less'
alias eng='env | grep'
alias what='type -a'
alias h='history'
alias hg='history | grep'
alias shit='inxi -FmMPxx -c 24'
alias rc="nano ${HOME}/.bashrc"
alias bin='cd ~/bin'
alias obin='cd ~/../usr/opt/bin'
alias colors="bash ${OSH_TOOLS}/print_colors.sh"
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
alias path='echo -e ${PATH//:/\\n}'
alias src="source ~/.bashrc"
alias tcfg='nano ~/.termux/termux.properties'


#--------------------------------------------
#  File manipulation things and safety nets
#--------------------------------------------
alias cp='cp -ir'
alias ln='ln -i'
alias mv='mv -i'
alias mkd='mkdir -pv'
alias nano='nano -W'
alias nash='nano -Y sh'
alias modx='chmod u+x'
alias 600='chmod 600'
alias 640='chmod 640'
alias 644='chmod 644'
alias 700='chmod 700'
alias 750='chmod 750'
alias 755='chmod 755'
alias own="chown -R `whoami`:`whoami`"
alias diff='diff -LiwB --suppress-common-lines --color=always'
alias diffy='diff -yw'
alias r='fc -s'
alias c='bat'
alias cb='bat -l bash'
alias blist='bat --list-themes'
alias blang='bat --list-languages'
alias bcfg='nash ~/.config/bat/config'
alias nums='cat -ns'
alias back="tac -r -s 'x\|[^x]' "
alias untar='tar -xvf'
alias ifile='file -i'
alias file='file -s -z'
alias fhere='find . -name '
alias forkat='fortune | lolcat'
alias sync='rsync -arvulimhPgot --mkpath --stats'
alias resync='$(which rsync) -imhavv --mkpath --safe-links -KuPUNtAXE --stats --partial-dir="~/.rsync/partial" --temp-dir="~/.rsync/tmp"'


#------------------------------------------
#: File removal "securely" for the noid...
#------------------------------------------
alias sub='scrub -SRtfr -p pfitzner33'
alias bish='scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst ~/.python_history'
alias shard='shred -fzn 23 --remove=wipe'
alias rmf='rm -rf'


#--------------------------------------------
#: Encryption, decryption, verification and
#: signing using varous cryptographic tools
#--------------------------------------------

#--------------  GPG  --------------
alias gpg-kill='gpgconf --kill gpg-agent'
alias gpg.de='gpg -d'
alias gpg.dml='gpg --decrypt-files'
alias gpg.en='gpg -ec -r Cory'
alias gpg.eml='gpg --encrypt-files'
alias gpg.sgn='gpg -es -r Cory'
alias gpg.arm='gpg -a -r Cory'
alias gpg.ver='gpg --verify'
alias gpg.gen='gpg --full-generate-key'
alias gpg.edk='gpg --edit-key'
alias gpg.ls='gpg --check-sigs'
alias gpg.lf='gpg --list-fingerprints'

#------------  GPGTAR  ------------
alias gtar='gpgtar -v'
alias gtar.en='gtar -esc -u Cory --output '
alias gtar.de='gtar --decrypt'
alias gtar.ls='gtar -t'

#------------  OPENSSL  ------------
alias ssl='openssl'


#------------------------------------------
#   System resource stuff pertaining to
#   CPU, GPU, memory(RAM), processes etc.
#------------------------------------------
alias df='df -H'
alias du='du -chL'
alias used='du -s --time'
alias free='free -lh --total'
alias psa='ps auxf'
alias psag='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias getgov='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setperf='echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias setsave='echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'


#----------------------------------------
#       Internet & networking calls
#----------------------------------------
alias wg='wget2'
alias wget='wg -c -p --progress=bar --force-progress'
alias net='curl -s http://ipinfo.io'
alias ip='ip -c -h -d -s -s a | grep inet'
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='proxychains4'
alias rfkill='rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'

#----------------  SSH Stuffs  ------------------
alias genkeys='ssh-keygen -t ed25519 -C'
alias add-tux='ssh-add ~/.ssh/tux_id_rsa'
alias add-big='ssh-add ~/.ssh/biggin_gh_ed25519'
alias add-cl='ssh-add ~/.ssh/clnelson_gh_ed25519'
alias deagent='pgrep ssh-agent | xargs kill'
alias ssh-gpg='gpg-connect-agent /bye'
alias ssh-update='gpg-connect-agent updatestartuptty /bye'
alias ssh.T="ssh -T git@github.com"


#----------------------------------------
#     Aliases for package management
#----------------------------------------
alias ag='apt-get'
alias ai='apt-get install'
alias afb='apt --fix-broken install'
alias ap='apt-get purge'
alias al='apt list'
alias ali='al --installed'
alias alig='ali | grep'
alias as='apt search'
alias asw='apt show'
alias au='apt-get update'
alias auu='au && apt-get upgrade'
alias clapt='apt autoremove && apt remove && apt autoclean && apt clean'

#-------------------------------------
#: Termux specific package commands
#-------------------------------------
alias pk.fl='pkg files'
alias pk.la='pkg list-all'
alias pk.li='pkg list-installed'
alias pk.ug='pkg upgrade'
alias pk.sw='pkg show'
alias pk.sr='pkg search'

#------------------------
#: Dpkg simplification
#------------------------
alias dp='dpkg'
alias dp.h='dpkg --help'
alias dp.fh='dpkg --force-help'
alias dp.i='dpkg -i'
alias dp.lp='dpkg -l'
alias dp.lg='dp.lp | grep'
alias dp.lf='dpkg -L'
alias dp.s='dpkg -S'
alias dp.con='dpkg --configure -a'
## Sort by amount of disk space currently used by the program
alias dp.ss="dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"


#-------------------------------------------
#    Mega.nz aliases for multiple accounts
#-------------------------------------------
alias megadf.b="megadf -h --config=${Secrets}/biggin.megarc"
alias megals.b="megals -nh --config=${Secrets}/biggin.megarc /Root"
alias megadl.b="megadl --config=${Secrets}/biggin.megarc --path"
alias megacopy.b="megacopy --config=${Secrets}/biggin.megarc"
alias megaget.b="megaget --config=${Secrets}/biggin.megarc --path"
alias megaput.b="megaput --config=${Secrets}/biggin.megarc --enable-previews --path"
alias megareg.b="megareg -n \"Biggin\" -e \"biggin61186@gmail.com\" --register --password=Penguin88 --config=${Secrets}/biggin.megarc"

#----------------------------------------
alias megadf.d="megadf -h --config=${Secrets}/droid.megarc"
alias megals.d="megals -nh --config=${Creds}/droid.megarc /Root"
alias megadl.d="megadl --config=${Secrets}/droid.megarc --path"
alias megacopy.d="megacopy --config=${Secrets}/droid.megarc"
alias megaget.d="megaget --config=${Secrets}/droid.megarc --path"
alias megaput.d="megaput --config=${Secrets}/droid.megarc --enable-previews --path"
alias megareg.d="megareg -n \"DumbDroid\" -e \"dumb.droid.dev@gmail.com\" --register --password=Penguin88 --config=${Creds}/droid.megarc"

#----------------------------------------
alias megadf.k="megadf -h --config=${Secrets}/kyle.megarc"
alias megals.k="megals -nh --config=${Secrets}/kyle.megarc /Root"
alias megadl.k="megadl --config=${Secrets}/kyle.megarc --path"
alias megacopy.k="megacopy --config=${Secrets}/kyle.megarc"
alias megaget.k="megaget --config=${Secrets}/kyle.megarc --path"
alias megaput.k="megaput --config=${Secrets}/kyle.megarc --enable-previews --path"
alias megareg.k="megareg -n \"Kyle Johnson\" -e \"kjanonkj@gmail.com\" --register --password=Penguin88 --config=${Creds}/kyle.megarc"
