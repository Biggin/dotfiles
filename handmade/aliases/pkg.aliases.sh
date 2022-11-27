## An alias file for quicker syntax of package manager commands
alias aliases.pkg="nano $OSH_CUSTOM/aliases/pkg.aliases.sh"

###############################################
#
#       Aliases for package management
#
###############################################
alias clapt='sudo apt autoremove && sudo apt remove && sudo apt autoclean && sudo apt clean'
alias afb='sudo apt --fix-broken install'
alias ag='sudo apt-get'
alias ai='sudo apt-get install'          # Add a '-' to package names (with no space) to remove packages
alias al='apt list'
alias ali='apt list --installed'
alias alig='apt list --installed | grep'
alias ap='sudo apt-get purge'
alias ar='sudo apt-get remove'           # Add a '+' to package names (with no space) to install packages
alias ari='sudo apt-get reinstall'
alias as='apt search'
alias asw='apt show'
alias au='sudo apt-get update'
alias auu='sudo apt-get update && sudo apt-get upgrade'

## Dpkg simplification
alias dp='sudo dpkg'
alias dp.a='sudo dpkg --audit'
alias dp.aa='sudo dpkg --add-architecture'
alias dp.ah='sudo dpkg --assertion-help'
alias dp.ca='sudo dpkg --configure -a'
alias dp.fh='dpkg --force-help'
alias dp.h='dpkg --help'
alias dp.i='sudo dpkg --install'
alias dp.l='dpkg --list'
alias dp.lf='dpkg --listfiles'
alias dp.lg='dpkg --list | grep'
alias dp.p='sudo dpkg --purge'
alias dp.pa='dpkg --print-foreign-architectures'
alias dp.ra='sudo dpkg --remove-architecture'
alias dp.s='dpkg --status'
alias dp.u='sudo dpkg --unpack'
#: Sort by amount of disk space currently used by the program
alias dp.ss="sudo dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"

## Shortening of sudo dpkg-deb commands
alias dpd='sudo dpkg-deb'
alias dpd.b='sudo dpkg-deb --build'
alias dpd.c='sudo dpkg-deb --control'
alias dpd.h='dpkg-deb --help'
alias dpd.i='dpkg-deb --info'
alias dpd.l='dpkg-deb --contents'
alias dpd.r='sudo dpkg-deb --raw-extract'
alias dpd.x='sudo dpkg-deb --vextract'
