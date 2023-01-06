## An alias file for quicker syntax of package
# manager commands
alias aliases.pkg="nano ${OSH_CUSTOM}/aliases/pkg.aliases.sh"

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
alias asw='apt show'
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
alias dp.ah='dpkg --assertion-help'
alias dp.i='dpkg --install'
alias dp.u='dpkg --unpack'
alias dp.a='dpkg --audit'
alias dp.p='dpkg --purge'
alias dp.s='dpkg --status'
alias dp.l='dpkg --list'
alias dp.lg='dp.lp | grep'
alias dp.lf='dpkg --listfiles'
alias dp.ca='dpkg --configure -a'
alias dp.aa='dpkg --add-architecture'
alias dp.ra='dpkg --remove-architecture'
alias dp.pa='dpkg --print-foreign-architectures'
#: Sort by amount of disk space currently used by the program
alias dp.ss="dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"

## Shortening of dpkg-deb commands
alias dpd='dpkg-deb'
alias dpd.h='dpkg-deb --help'
alias dpd.b='dpkg-deb --build'
alias dpd.i='dpkg-deb --info'
alias dpd.l='dpkg-deb --contents'
alias dpd.x='dpkg-deb --vextract'
alias dpd.r='dpkg-deb --raw-extract'
alias dpd.c='dpkg-deb --control'
