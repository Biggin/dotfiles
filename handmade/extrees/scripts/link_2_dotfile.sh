#!/data/data/com.termux/files/usr/bin/bash
set -e -x -u

Links="$OSH_CUSTOM/config/*"

#------------------------------------------------
#  Finally, something that does as I expect...
#------------------------------------------------
while [ $# != 0 ];
    dir="$1"    #"$(( $# - $(( $# - 1 )) ))"
   	mkdir -pv $dir || return 13
   	shift
   	shift $dir

    if [ $# == 0 ]; then
        break
    else
        continue
    fi
do
    break
done
#--------------------------------------------
