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
#alias xx='kill -9 $$'
alias xx='exit'
alias cls='clear'
alias env='env | less'
alias eng='env | grep'
alias what='type -a'
alias h='history'
alias hg='history | grep'
alias shit='inxi -FmMPxx -c 24'
alias rc="nano $HOME/.bashrc"
alias bin='ls ~/bin'
alias cbin='cd ~/bin'
alias obin='cd ~/../usr/opt/bin'
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias aliases="nano $OSH_CUSTOM/aliases/bash.aliases.sh"
alias path='echo -e ${PATH//:/\\n}'
alias what='type -a'
alias src="source ~/.bashrc"
alias tcfg='nano ~/.termux/termux.properties'

#--------------------------------------------
#  File manipulation things and safety nets
#--------------------------------------------
alias cp='cp -irv'
alias ln='ln -iv'
alias mv='mv -iv'
alias mkd='mkdir -pv'
alias nano='nano -W'
alias nash='nano -Y sh'
alias moda='chmod a+x'
alias modu='chmod u+x'
alias 000='chmod 000'
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
alias ccache='ccache --config-path=$HOME/.config/ccache/ccache.conf'
#alias resync='rsync -ihavEz --links --update --stats --progress'
alias fhere='find . -name '
alias forkat='fortune | lolcat'
alias rsync='rsync -rv --progress --mkpath --inplace'
alias sync='rsync -aulimhPgot'
alias cpv='rsync -au'
alias resync='rsync -imhav --safe-links -KuPUNtAXE --partial-dir="~/.local/rsync/partial" --temp-dir="~/.lical/rsync/tmp"'


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

#----------------  SSH Stuffs  ------------------
alias genkeys='ssh-keygen -t ed25519 -C'
alias add-tux='eval $(ssh-agent -s) && ssh-add ~/.ssh/tux_id_rsa'
alias add-big='eval $(ssh-agent -s) && ssh-add ~/.ssh/biggin_gh_ed25519'
alias add-cl='eval $(ssh-agent -s) && ssh-add ~/.ssh/clnelson_gh_ed25519'
alias deagent='pgrep ssh-agent | xargs kill'
alias ssh-gpg='gpg-connect-agent /bye'
alias ssh-update='gpg-connect-agent updatestartuptty /bye'
alias ssh.T="ssh -T git@github.com"


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


#----------------------------------------
#           Hacking Things
#----------------------------------------
alias db_stop='pg_ctl -D $HOME/.msf4/db stop'
alias db_start='pg_ctl -D $HOME/.msf4/db stop && pg_ctl -D $HOME/.msf4/db -l $HOME/.msf4/msf-$(date +%D-%_l:%M%p).log start'
alias msf_start='db_start && msfconsole'
