#: An alias file for faster calls of file manipulation commands
#tmpdir="~/.local/tmp/services/rsync"

alias aliases.file="nano $OSH_CUSTOM/aliases/file.aliases.sh"

#-----------------------------------------#
#       Startup files & Permissions		  #
#-----------------------------------------#
alias src="source ~/.bashrc"
alias 000='chmod 000'
alias 600='chmod 600'
alias 644='chmod 644'
alias 700='chmod 700'
alias 755='chmod 755'
alias 777='chmod 777'
alias moda='chmod a+x'
alias modu='chmod u+x'
alias own="chown -R `whoami`:`whoami`"
alias path='echo -e ${PATH//:/\\n}'

#------  Config file editing  -------#
alias rc="nano $HOME/.bashrc"
alias omy="nano $OSH_CUSTOM/main/omy-bash.sh"
alias funcs="nano $OSH_CUSTOM/funcs.sh"
alias bcfg='nano ~/.config/bat/config'
alias ccfg='nano ~/.config/ccache/ccache.conf'
alias dcfg='nano ~/.local/share/delta/delta.gitconfig'
alias gcfg='nano ~/.gitconfig'
alias tcfg="nano ~/.termux/termux.properties"


#------------------------------------#
#      Security and safety nets		 #
#------------------------------------#
alias cp='cp -irv'
alias rmf='rm -vrf'
alias rm='rm -Iv'
alias mv='mv -iv'
alias ln='ln -iv'
alias lns='ln -s'
alias mkd='mkdir -pv'
alias nano='nano -W'
alias nash='nano -Y sh'
alias diff='diff --color=always --suppress-common-lines'
alias diffy='diff -yw'
alias viff='diff -v'
alias r='fc -s'
alias hd='hexdump'
alias hdc='hexdump -C'
alias fd='fd -LH -i'
alias c='bat'
alias cb='bat -l bash'
alias blist='bat --list-themes'
alias blang='bat --list-languages'
alias dcfg.ls='delta --show-config'
alias dlist='delta --show-syntax-themes'
alias dlang='delta --list-languages'
alias nums='cat -ns'
alias uncat="tac -r -s 'x\|[^x]' "
alias file='file -s -z'
alias ccache='ccache --config-path=$HOME/.config/ccache/ccache.conf'
alias cpv='rsync -avuz --progress'
#alias resync="rsync -avhiuz -AEIX -T $tmpdir --stats --progress --preallocate --fake-super --mkpath --inplace"

function resync () {
	local tmpdir="$PREFIX/var/service/rsync"

	if [ ! -d $tmpdir ]; then
		mkdir -p $tmpdir &> /dev/null || return 13
	fi

	rsync -avhiuz -AEIX -T $tmpdir --progress --preallocate --fake-super --mkpath --inplace "$@"
}

#------  Secure File Removal  -------#
alias sub='scrub -SRtfr -p pfitzner33'
alias bish='scrub -SRfr -p pfitzner33 ~/.bash_history ~/.lesshst'
alias shard='shred -fzn 23 --remove=wipe'

#-----------  Disk Usage  -----------#
alias du='du -chL'
alias used='du -sh --time'
alias df='df -H'
alias free='free -lh --total'


#----------------------------------------------#
#      Cryptographic tools, mainly GPG		   #
#----------------------------------------------#
alias gpg-kill='gpgconf --kill gpg-agent'
alias gpg.d='gpg -d'
alias gpg.df='gpg --decrypt-files'
alias gpg.e='gpg -r @biggin -ec'
alias gpg.ef='gpg -r @biggin --encrypt-files'
alias gpg.s='gpg -r @biggin -s'
alias gpg.a='gpg -r @biggin -a'
alias gpg.v='gpg --verify'
alias gpg.gk='gpg --full-generate-key'
alias gpg.ek='gpg --edit-key'
alias gpg.ls='gpg --check-sigs'
alias gpg.lf='gpg --list-fingerprints'

#-------------  GPGTAR  -------------#
alias gtar='gpgtar -v'
alias gtar.e='gtar -esc -u @biggin --output '
alias gtar.d='gtar --decrypt'
alias gtar.ls='gtar -t'

#------------  OPENSSL  -------------#
alias ssl='openssl'

#------  Encrypt with Openssl  ------#
function ssl-enc () {
	openssl enc -aes-256-cbc -salt -a -in $1 -out $2 || \
	 { echo "\n${Byel}Usage:  ssl-enc <infile> <outfile>"; return 13; }
	echo "\n${Byel}File succesfully encrypted!"
}

#------  Decrypt with Openssl -------#
function ssl-dec () {
	openssl enc -aes-256-cbc -d -a -in $1 -out $2 || \
	 { echo "\n${Byel}Usage:  ssl-dec <infile> <outfile>"; return 13; }
	echo "\n${Byel}File succesfully decrypted!"
}


#----------------------------------------------#
#     Archiving, compression & extraction	   #
#----------------------------------------------#
# gzip -- gunzip
# bzip2 -- bunzip2
# zip -- unzip
# tar -cvf -- tar -xvf
# 7z c -- 7z x
# xz -- unxz
# lz4 -- unlz4
# lzma -- unlzma
# lzop -- unlzop
# brotli -- idk
# compress -- uncompress
# cpio -i -- cpio -o
# pigz -- unpigz

