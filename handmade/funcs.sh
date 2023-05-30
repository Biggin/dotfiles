#------------------------------------------------------------
#
# Function library to extend usability and readability
# providing warning, error, success, info messages.
# Along with headers, confirmation dialogs, is_os parser
# and more helpful functions to make life easier....
#------------------------------------------------------------
source "$OSH_CUSTOM/helpers/replies"

#-------------------------------------------------------------------------------------
# My custom color lib for 256 color terminals to pretty
# things up just a bit. Falls back to default 16 color
# Linux terminal if tput isn't available or if the system don't support 256 colors.
#-------------------------------------------------------------------------------------
source "$OSH_CUSTOM/helpers/256colors"

#---------------------------------------------------------------------------------------------
# Script to allow showing an animated progress bar for drawn-out tasks in the terminal...
source "$OSH_CUSTOM/helpers/progress"
#---------------------------------------------------------------------------------------------

#---------------------------------------------
# Function to display uptime of a system....
# All credits to the original author.
#---------------------------------------------
function upinfo() {
    echo -ne "${Blu}${HOSTNAME} ${Mag}uptime is ${Yel} \\t "
    uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10,$11}'
}

#--------------------------------------------------------------------
# Read 'ALL' Readme files recursively regardless of file extension
#--------------------------------------------------------------------
function cr () {
    if [ $# == 0 ]; then
        bat ./**/*[Rr][Ee][Aa][Dd][Mm][Ee]*
    else
        bat $1/*[Rr][Ee][Aa][Dd][Mm][Ee]*
    fi
}

#---------------------------------------------
# List files in directory after entering it
#---------------------------------------------
function cd () {
    if [ $# != 0 ]; then
        command cd "$1" && ls
    else
        command cd ~/ && ls || return 13
    fi
}

#---------------------------------------------
# Make a new directory and change into it
#---------------------------------------------
#function go () {
#	if [ -d $1 ]; then
#		echo -e ${Yel}"The directory $1 already exists"${Res}
#		sleep 1.5
#		cd $1
#	else
#		mkdir -pv $1 && cd $1 || return 13
#	fi
#}

#-----------------------------------------------------------------------------------------
# Testing a new clone function to prevent having to type the full domain name each time
#-----------------------------------------------------------------------------------------
function clone () {
	git clone https://github.com/"$@"

	local dir=$(echo "$@" | cut -d '/' -f 2)
	cd ${dir} || return 13
}

#--------------------
function lab () {
	git clone https://gitlab.com/"$@"

	local dir=$(echo "$@" | cut -d '/' -f 2)
	cd ${dir} || return 13
}

#--------------------------
function bash_stats() {
	 fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

#-----------------------------------------
# Function to add a directory to $PATH
#-----------------------------------------
function add2Path () {
	if [ -d "$1" ] && [ ":$PATH:" != *":$1:"* ]; then
    	PATH="$1${PATH:+":$PATH"}"
    fi
}

#---------------------
function quiet () {
	"$*" &> /dev/null &
}

#---------------------
function mkzip () {
	zip -r "$1".zip "$1"
}

#--------------------
function del () {
	mkdir -pv /tmp/.trash && mv "$@" /tmp/.trash
}

#---------------------
function bakup () {
	local filetime filename
	filename=$1
	filetime=$(date +%m%d%Y)
	cp -a "${filename}" "${filename}_${filetime}"
}

#----------------------
function my_ps () {
	ps "$@" -u "$USER" -o \
	pid,%cpu,%mem,start,time,bsdtime,command
}

#-------------------------
function fix_perms () {
	echo -ne "${Blu}Applying 0755 permission for all directories..."
	(find . -type d -print0 | xargs -0 chmod 0755) &
	spinner
	echo -ne "${Res}"
	echo -ne "${Blu}Applying 0644 permission for all files..."
	(find . -type f -print0 | xargs -0 chmod 0644) &
	spinner
	echo -ne "${Res}"
}

#---------------------
function gist () {
	local end arg
	gh gist clone https://gist.github.com/"$@"

	if [ -d $_ ]; then
		cd $(echo $_) || return 13
	else
		bat $_ || return 13
	fi
#	else
#		arg=$(echo $_)
#		bat -l ${arg#*.} $arg
#	if [ $# == 4 ]; then
#		cd $4 || return 13
#	fi
#
#	if [ $# == 2 ]; then
#		dir=$(echo $2)
#		cd $dir || return 13
#	else
#		dir=$(echo "$@" | cut -d '/' -f 2)
#		cd $dir || return 13
#	fi
}

#----------------------
function usage () {
	if [ "$(uname)" = "Linux" ]; then
	  if [ -n "$1" ]; then
	  	du -h --max-depth=1 "$1"
	  else
	    du -h --max-depth=1
	  fi
	fi
}

#---------
#: TODO
#---------
function private_ip () {
#    if ifconfig 2>&1 > /dev/null; then
        ifconfig 2> /dev/null | grep 'inet' | cut -d '.' -f 1-4 | awk '{ print $2 }' | tail -1
#    else
#        return 13
}

#---------
#: TODO
#---------
function public_ip () {
#    local IP=$(curl -s http://whatismyip.akamai.com)
#    printf "%s\n" "$IP"

    local IP=$(curl -s http://ipinfo.io/ip)
    echo -ne "$IP \n"
}

#---------------------------------------------------------------
# Extract any compRessed file type with one universal command
#---------------------------------------------------------------
function extract {
 if [ -z "$1" ]; then
      # display usage if no parameters given
      echo -e ${Yel}"Usage: extract      <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
      echo -e ${Yel}"       extract <path/file_name_1.ext> [path/file_name_2.ext] [path/file_name_3.ext]"${Res}
	return 1
 else
      for n in $@
      do
        if [ -f "$n" ] ; then
             case "${n%,}" in
               *.tar.bz2|*.tar.gz|*.tar.xz|*.tbz2|*.tgz|*.txz|*.tar)
                            tar xvf "$n"       ;;
               *.lzma)      unlzma ./"$n"      ;;
               *.bz2)       bunzip2 ./"$n"     ;;
               *.rar)       unrar x -ad ./"$n" ;;
               *.gz)        gunzip ./"$n"      ;;
               *.zip)       unzip ./"$n"       ;;
               *.z)         uncompRess ./"$n"  ;;
                *.7z|*.arj|*.cab|*.chm|*.deb|*.dmg|*.iso|*.lzh|*.msi|*.rpm|*.udf|*.wim|*.xar)
                            7z x ./"$n"        ;;
               *.xz)        unxz ./"$n"        ;;
               *.exe)       cabextract ./"$n"  ;;
               *)
                            echo -e ${Red}"extract: '$n' - unknown archive  method"${Res}
                            return 1
                            ;;
             esac
         else
             echo -e ${Red}"'$n' - file does not exist"${Res}
             return 1
        fi
      done
 fi
}

#----------------------
function untar () {
	tar -xf $1 &> /dev/null || _error "Invalid archive format: $1" >2 && return 13
	ls -AFC --color
	return 0
}

#----------------------
function mktar () {
	tar -cvf $1.tar "$2"
}

#-------------------------
function mktar.gz () {
	tar -cavf $1.tar.gz "$2"
}

#-------------------------
function mktar.xz () {
	tar -cavf $1.tar.xz "$2"
}

#-------------------------
function mktar.bz2 () {
	tar -cavf $1.tar.bz2 "$2"
}

#-------------------------
function mktar.lz () {
	tar -cavf $1.tar.lz "$2"
}

#--------------------------
function mktar.lzma () {
	tar -cavf $1.tar.lzma "$2"
}

#--------------------------
function mktar.lzo () {
	tar -cavf $1.tar.lzo "$2"
}

#-----------------------
function mkiso () {
	if type "mkisofs" > /dev/null; then
		 if [ -z ${1+x} ]; then
           local isoname=${PWD##*/}
         else
           local isoname=$1
         fi

         if [ -z ${2+x} ]; then
           local destpath=../
         else
           local destpath=$2
         fi

         if [ -z ${3+x} ]; then
           local srcpath=${PWD}
         else
           local srcpath=$3
         fi

         if [ ! -f "${destpath}${isoname}.iso" ]; then
           echo "writing ${isoname}.iso to ${destpath} from ${srcpath}"
           mkisofs -V "${isoname}" -iso-level 3 -r -o "${destpath}${isoname}.iso" "${srcpath}"
         else
           echo "${destpath}${isoname}.iso already exists"
         fi
    else
         echo "mkisofs cmd does not exist, please install cdrtools"
    fi
}

###############################################
#
# Next 'BIG' idea   ...(insert here)...
#
##############################################
#: TODO

#function set_git_id () {
	# Check git user

	# If desired ID already set, do nothing
	# and return config options set else
	# ask User for desired git-cli user
	# and email saving both to variables.

	# Check whether this shld be a local
	# (current working tree) or a global
	# config change.

	# Set the required options with the
	# entered values or fallback to local
	# machine pre-defined defaults.

	# Confirm the proper changes and print
	# the results....display both global
	# and local options in the results.

	# Check ssh-agent and load the proper
	# keys for the defined user, check the
	# connection and credentials. Return ssh
	# verification and config options set.
#}
