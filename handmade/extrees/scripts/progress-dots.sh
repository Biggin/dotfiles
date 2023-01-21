#!/data/data/com.termux/files/usr/bin/env bash

#-------------------------------------------------
#: Script I'm playing with to output some kind of
#: visual aid for progress or whatever....
#: just trying to get better with scripting!
#-------------------------------------------------
printf "[ "
syms=(
    "|"
    "/"
    "-"
    "\\"
    "|"
    "/"
    "-"
    "\\"
)
for i in {0..48}
do
    if [[ $i -eq 48 ]]; then
        break
    else
        for sym in ${syms[@]}
        do
            printf '%s' $sym
            sleep .5
        done
    fi
done
printf " ]"
