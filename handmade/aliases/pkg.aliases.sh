## An alias file for quicker syntax of package
# manager commands
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
alias al='sudo apt list'
alias ali='sudo apt list --installed'
alias alig='sudo apt list --installed | grep'
alias ap='sudo apt-get purge'
alias ar='sudo apt-get remove'           # Add a '+' to package names (with no space) to install packages
alias ari='sudo apt-get reinstall'
alias as='sudo apt search'
alias asw='sudo apt show'
alias au='sudo apt-get update'
alias auu='sudo apt-get update && sudo apt-get upgrade'

## Dpkg simplification
alias dp='sudo dpkg'
alias dp.a='sudo dpkg --audit'
alias dp.aa='sudo dpkg --add-architecture'
alias dp.ah='sudo dpkg --assertion-help'
alias dp.ca='sudo dpkg --configure -a'
alias dp.fh='sudo dpkg --force-help'
alias dp.h='sudo dpkg --help'
alias dp.i='sudo dpkg --install'
alias dp.l='sudo dpkg --list'
alias dp.lf='sudo dpkg --listfiles'
alias dp.lg='sudo dpkg --list | grep'
alias dp.p='sudo dpkg --purge'
alias dp.pa='sudo dpkg --print-foreign-architectures'
alias dp.ra='sudo dpkg --remove-architecture'
alias dp.s='sudo dpkg --status'
alias dp.u='sudo dpkg --unpack'
#: Sort by amount of disk space currently used by the program
alias dp.ss="sudo dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"

## Shortening of sudo dpkg-deb commands
alias dpd='sudo dpkg-deb'
alias dpd.b='sudo dpkg-deb --build'
alias dpd.c='sudo dpkg-deb --control'
alias dpd.h='sudo dpkg-deb --help'
alias dpd.i='sudo dpkg-deb --info'
alias dpd.l='sudo dpkg-deb --contents'
alias dpd.r='sudo dpkg-deb --raw-extract'
alias dpd.x='sudo dpkg-deb --vextract'
