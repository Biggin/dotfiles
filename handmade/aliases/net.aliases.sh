#: Alias file for quicker calls of common frequently used commands
alias aliases.net="nano ${OSH_CUSTOM}/aliases/net.aliases.sh"

########################################
#
#       Internet & networking
#
########################################
alias wget='wget -c --show-progress'
alias wget2='wget2 -c --show-progress'
alias curl='curl -L'
alias ip="ip -c -h -d -s -s a"
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='proxychains4'
alias iface="ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'"
alias net="$(which curl) -w '\n' ipinfo.io"
alias private_ip="ifconfig 2> /dev/null | grep 'inet' | cut -d '.' -f 1-4 | awk '{ print \$2 }' | tail -1"
alias public_ip="curl -w '\n' ipinfo.io/ip"
alias rfkill='rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'


########################################
#
#            SSH Stuff
#
########################################
alias ssh-eval='eval $(ssh-agent -s)'
alias ssh-genEd='ssh-keygen -t ed25519 -C'
alias ssh-genRsa='ssh-keygen -t rsa -b 4096 -C'
alias ssh-add-tux='ssh-add ~/.ssh/tux_id_rsa'
alias ssh-add-big='ssh-add ~/.ssh/biggin_gh_ed25519'
alias ssh-add-cl='ssh-add ~/.ssh/clnelson_gh_ed25519'
alias deagent-ssh='pgrep ssh-agent | xargs kill'
alias ssh-gpg-connect='gpg-connect-agent /bye'
alias ssh-gpg-update='gpg-connect-agent updatestartuptty /bye'
alias ssh.T="ssh -T git@github.com"


###############################################
#
#    Mega.nz aliases for multiple accounts
#
###############################################
alias megadf.b="megadf -h --config=${HOME}/.config/mega/biggin.megarc"
alias megals.b="megals -h --config=${HOME}/.config/mega/biggin.megarc /Root/"
alias megadl.b="megadl --config=${HOME}/.config/mega/biggin.megarc --path"
alias megacopy.b="megacopy --config=${HOME}/.config/mega/biggin.megarc"
alias megaget.b="megaget --config=${HOME}/.config/mega/biggin.megarc --path"
alias megaput.b="megaput --config=${HOME}/.config/mega/biggin.megarc --enable-previews --path"

alias megadf.d="megadf -h --config=${HOME}/.config/mega/droid.megarc"
alias megals.d="megals -h --config=${HOME}/.config/mega/droid.megarc /Root/"
alias megadl.d="megadl --config=${HOME}/.config/mega/droid.megarc --path"
alias megacopy.d="megacopy --config=${HOME}/.config/mega/droid.megarc"
alias megaget.d="megaget --config=${HOME}/.config/mega/droid.megarc --path"
alias megaput.d="megaput --config=${HOME}/.config/mega/droid.megarc --enable-previews --path"

alias megadf.k="megadf -h --config=${HOME}/.config/mega/kyle.megarc"
alias megals.k="megals -h --config=${HOME}/.config/mega/kyle.megarc /Root/"
alias megadl.k="megadl --config=${HOME}/.config/mega/kyle.megarc --path"
alias megacopy.k="megacopy --config=${HOME}/.config/mega/kyle.megarc"
alias megaget.k="megaget --config=${HOME}/.config/mega/kyle.megarc --path"
alias megaput.k="megaput --config=${HOME}/.config/mega/kyle.megarc --enable-previews --path"
