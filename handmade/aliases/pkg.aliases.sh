# An alias file for quicker syntax of package manager commands
alias aliases.pkg="nano ${OSH_CUSTOM}/aliases/pkg.aliases.sh"

###############################################
#
#       Aliases for package management
#
###############################################
alias pk='pkg'
alias pk.i='pkg install'
alias pk.ri='pkg reinstall'
alias pk.un='pkg uninstall'
alias pk.up='pkg update'
alias pk.ug='pkg upgrade'
alias pk.uu='pkg update && pkg upgrade'
alias pk.ac='pkg autoclean'
alias pk.lf='pkg files'
alias pk.s='pkg search'
alias pk.sh='pkg show'
alias pk.la='pkg list-all'
alias pk.li='pkg list-installed'
alias pk.lig='pkg list-installed | grep '
#-----------------------------------------------

# apt & apt-get (it's what I know best...)
alias clapt='apt autoremove && apt autoclean'
alias afb='apt --fix-broken install'
alias ag='apt-get'
alias ai='apt-get install'          # Add a '-' to package names (with no space) to remove packages
alias al='apt list'
alias ali='apt list --installed'
alias alig='apt list --installed | grep'
alias ap='apt-get purge'
alias ar='apt-get remove'           # Add a '+' to package names (with no space) to install packages
alias ari='apt-get reinstall'
alias as='apt search'
alias asw='apt show'
alias au='apt-get update'
alias auu='apt-get update && apt-get upgrade'
#-----------------------------------------------

# Dpkg simplification
alias dp='dpkg'
alias dp.a='dpkg --audit'
alias dp.aa='dpkg --add-architecture'
alias dp.ah='dpkg --assertion-help'
alias dp.ca='dpkg --configure -a'
alias dp.fh='dpkg --force-help'
alias dp.h='dpkg --help'
alias dp.i='dpkg --install'
alias dp.l='dpkg --list'
alias dp.lf='dpkg --listfiles'
alias dp.lg='dpkg --list | grep'
alias dp.p='dpkg --purge'
alias dp.pa='dpkg --print-foreign-architectures'
alias dp.ra='dpkg --remove-architecture'
alias dp.s='dpkg --status'
alias dp.u='dpkg --unpack'
# Sort by amount of disk space currently used by the program
alias dp.ss="dpkg-query -W --showformat='${Installed-Size} ${Package}\n' | sort -nr | less"

# Shortening of dpkg-deb commands
alias dpd='dpkg-deb'
alias dpd.b='dpkg-deb --build'
alias dpd.c='dpkg-deb --control'
alias dpd.h='dpkg-deb --help'
alias dpd.i='dpkg-deb --info'
alias dpd.l='dpkg-deb --contents'
alias dpd.r='dpkg-deb --raw-extract'
alias dpd.x='dpkg-deb --vextract'
