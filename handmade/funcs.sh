## Function to display uptime of a system. All credits to the original author.
function upinfo() {
    echo -ne "${Blu}${HOSTNAME} ${Mag}uptime is ${Yel} \\t "
    uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10,$11}'
}

## Extract any compRessed file type with one universal command
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

## Make a new directory and change into it
function go () {
	if [ -d $1 ]; then
		echo -e ${Yel}"The directory $1 already exists"${Res}
		cd $1
	else
		mkdir -pv $1 && cd $1 || return 13
		#echo -e ${Yel}"$(pwd)"
	fi
}

## Testing a new clone function to prevent having to type the full domain name each time
function clone () {
	git clone https://github.com/"$@"
}

function lab () {
	git clone https://gitlab.com/"$@"
}

function bash_stats() {
	 fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function quiet () {
	"$*" &> /dev/null &
}

function zipf () {
	zip -r "$1".zip "$1"
}

function buf () {
	local filetime filename
	filename=$1
	filetime=$(date +%m%d%Y_%H%M)
	cp -a "${filename}" "${filename}_${filetime}"
}

function del () {
	mkdir -pv /tmp/.trash && mv "$@" /tmp/.trash
}

function my_ps () {
	ps "$@" -u "$USER" -o \
	pid,%cpu,%mem,start,time,bsdtime,command
}

function batch_chmod() {
	echo -ne "${Blu}Applying 0755 permission for all directories..."
	(find . -type d -print0 | xargs -0 chmod 0755) &
	spinner
	echo -ne "${Res}"
	echo -ne "${Blu}Applying 0644 permission for all files..."
	(find . -type f -print0 | xargs -0 chmod 0644) &
	spinner
	echo -ne "${Res}"
}

function usage () {
	if [ "$(uname)" = "Linux" ]; then
	  if [ -n "$1" ]; then
	  	du -h --max-depth=1 "$1"
	  else
	    du -h --max-depth=1
	  fi
	fi
}

function mans () {
	man "$1" | grep -iC2 --color=always "$2" | less
}

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

# Function to add a directory to $PATH
function pathadd() {
	if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    	PATH="$1${PATH:+":$PATH"}"
    fi
}

# Repo commands with various flags I'm too lazy to type each time
function installRepo () {
    local REPO=$(mktemp /tmp/repo.XXXXXXXXX)
    curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo && sudo install -m 755 ${REPO} /usr/bin/repo

    ln -s /usr/bin/repo ~/.local/bin/repo || return 13
}

function resync () {
    repo sync --no-clone-bundle --current-branch --no-tags --optimized-fetch -j4 "$@"
}

function resub () {
    repo sync --no-clone-bundle --current-branch --no-tags --optimized-fetch --submodules -j4 "$@"
}

function susync () {
	sudo repo sync --force-sync --force-remove-dirty \
	  --no-clone-bundle -j4 "$@"
}

function repair () {
	repo sync --detach --force-sync --force-remove-dirty --no-tags 	--current-branch --no-clone-bundle -j4 "$@"
}

function repoinit () {
	repo init --no-clone-bundle --depth=1 --platform=linux -u ${Aosp_Mirror} -b "$@" --reference=${Los_Mirror} --dissociate
}

function recoinit () {
    repo init --no-clone-bundle --depth=1 --platform=linux -u https://github.com/"$1" -b "$2"
}

function aospinit () {
	repo init --no-clone-bundle --depth=1 --platform=linux -u https://android.googlesource.com/platform/manifest -b "$@" --reference=${Aosp_Mirror}
}

function losinit () {
    repo init --no-clone-bundle --depth=1 --platform=linux -u https://github.com/LineageOS/android -b "$@" --reference=${Los_Mirror}
}

function starch () {
	repo start "$1" --all
	repo checkout "$1"
	repo branches -a
}

# Setup zRAM to take the whole RAM size
alias zramInit &>/dev/null && unalias zramInit

function zramInit () { (
    [[ $(whoami) != root ]] && return 1
    local MEMSIZE

    # Get amount of physical memory (in kB)
    MEMSIZE=$(grep MemTotal /proc/meminfo | awk '{print $2$3}')

    # Turn off HDD swap first
    swapoff /dev/sda1

    # Setup zRAM as swap
    modprobe zram

    # Write same amount of physical memory
    echo "$MEMSIZE" >/sys/devices/virtual/block/zram0/disksize
    mkswap /dev/zram0
    swapon -p 100 /dev/zram0

    # Set swappiness to 100
    sysctl vm.swappiness=100
) || return 1; }
alias zramInit='chkSudo su -c "$(declare -f zramInit) && zramInit &> /dev/null"'

# De-init zRAM configuration set before
alias zramDeinit &>/dev/null && unalias zramDeinit

function zramDeinit () { (
    [[ $(whoami) != root ]] && return 1

    # Turn off zRAM
    swapoff /dev/zram0
    rmmod zram

    # Turn back on HDD swap
    swapon -p -2 /dev/sda1

    # Set swappiness to 1
    sysctl vm.swappiness=1
) || return 0; } # suppress non-zero exit status
alias zramDeinit='chkSudo su -c "$(declare -f zramDeinit) && zramDeinit &> /dev/null"'

# Case-insensitive, extension irrelevant glob search for README files
function cr () {
    bat -l markdown "$@"/**/[Rr][Ee][Aa][Dd][Mm][Ee]*
}

function help () {
    "$@" --help 2>&1 | bat --plain --language=help
}
