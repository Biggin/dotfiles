#!/data/data/com.termux/files/usr/bin/env bash

eval $(ssh-agent -s)

printf '%s\n' "Who would you like to load into the ssh-agent?"
printf '%s\n' "Type your selection biggin or clnelson..."

if [ $# != 1 ]; then
    read -r Name || exit 13

    if [ -z $Name ]; then
	    printf '%s\n' "Invalid entry, please try again..."
	exit 13
    fi

else
    local Name = $1
fi

case $Name in
	biggin|Biggin) ssh-add ~/.ssh/biggin_gh_ed25519 ;;
	clnelson|cnelson) ssh-add ~/.ssh/clnelson_gh_ed25519 ;;
	*) printf '%s\n' "Default selection is Biggin" \
	  ssh-add ~/.ssh/biggin_gh_ed25519 ;;
esac

ssh -T git@github.com
