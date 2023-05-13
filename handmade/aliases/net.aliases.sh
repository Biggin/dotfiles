#: Alias file for quicker calls of common frequently used commands
alias aliases.net="nano $OSH_CUSTOM/aliases/net.aliases.sh"

########################################
#
#       Internet & networking
#
########################################
alias wget='wget -c --progress=bar --show-progress'
alias wget2='wget2 -c --progress=bar --show-progress'
alias curl='curl -L'
alias ip="ip -c -h -d -s -s a"
alias ping='ping -c 10'
alias ports='netstat -tulanp'
alias chains='proxychains4'
alias iface="ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'"
alias net="\curl -w '\n' ipinfo.io"
alias private_ip="ifconfig 2> /dev/null | grep 'inet' | cut -d '.' -f 1-4 | awk '{ print \$2 }' | tail -1"
alias public_ip="curl -w '\n' ipinfo.io/ip"
alias rfkill='rfkill --output DEVICE,ID,TYPE,TYPE-DESC,SOFT,HARD'

# Requires root access
alias wifikey="sudo grep -r '^psk=' /etc/NetworkManager/system-connections/"


########################################
#
#        	   SSH Stuff
#
########################################
alias ssh-eval='eval $(ssh-agent -s)'
alias ssh-genkeys='ssh-keygen -t ed25519 -b 4096 -C'  # better as function?
alias ssh-add-tux='ssh-add ~/.ssh/tux_id_rsa'
alias ssh-add-big='ssh-add ~/.ssh/biggin_ed25519'
alias ssh-add-cl='ssh-add ~/.ssh/clnelson_ed25519'
alias deagent-ssh='pgrep ssh-agent | xargs kill'
alias ssh-gpg-connect='gpg-connect-agent /bye'
alias ssh-gpg-update='gpg-connect-agent updatestartuptty /bye'
alias ssh.T="ssh -T git@github.com"

function genkeys () {
	ssh-keygen -t ed25519 -b 4096 -C "$1" || printf 'The ssh-keygen command has exited with error code: %d' "$?" > 2 && return $?
	eval $(ssh-agent -s) &> /dev/null || printf 'The ssh-agent has failed to load... \n\t Exit code: %d' "$?" && return $?
}
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
