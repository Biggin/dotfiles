#!/usr/bin/env bash

#function fix_perms () {
source /home/h4ck3r/.dotfiles/handmade/tools/colors.sh

echo -ne "${Bblu}\n\tApplying 0755 permission for all directories..."

(find . -type d -print0 | xargs -0 chmod 0755) &
sleep 3

#echo -ne \033[0m
echo -ne "\n\n\t${Byel}Applying 0644 permission for all files...\n\n"

(find . -type f -print0 | xargs -0 chmod 0644) &

echo -ne "\n ${Res}"
ls -lah $(pwd) || exit 13
sleep 2
echo -ne "\n\t\t${Bgrn}...Done!\n"

#}
