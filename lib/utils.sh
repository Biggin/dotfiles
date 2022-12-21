#!/data/data/com.termux/files/usr/bin/bash

#-------------  Description  ---------------#
#                                           #
# Summary: A collection of handy utilities  #
# and functions for bash                    #
# Support: destro.nnt@gmail.com             #
# C-Date: Mar 18,2017                       #
# M-Date : Mar 18,2017                      #
#                                           #
#-------------------------------------------#

#----------------  Usage   -----------------#
#                                           #
# source ~/path/to/directory/utils.sh       #
#                                           #
#-------------------------------------------#


#-----------  Styled Text Output -----------#
#                                           #
#    e_hder "I am a sample script"          #
#    e_scs "I am a success message"         #
#    e_err "I am an error message"          #
#    e_wrn "I am a warning message"         #
#    e_uln "I am underlined text"           #
#    e_bld "I am bold text"                 #
#    e_nte "I am a note"                    #
#                                           #
#-------------------------------------------#


#---------  Yes/No Confirmations  ----------#
#                                           #
# ask_confirm "Do you want to print a #
# success message?" if is_confirmed; then   #
# e_scs "Here is a success message"     #
# else e_err "You did not ask for a       #
# success message" fi                       #
#                                           #
#-------------------------------------------#

##### Test if packages, etc. are installed #####
# if type_exists 'git'; then
#   e_success "Git good to go"
# else
#   e_error "Git should be installed. It isn't. Aborting."
#   exit 1
# fi

# if is_os "darwin"; then
#   e_success "You are on a mac"
# else
#   e_error "You are not on a mac"
#   exit 1
# fi

##### Sending notifications to Pushover #####
# pushover "We just finished performing a lengthy task."

############### Comparing A List ###############
# recipes=(
#   A-random-package
#   bash
#   Another-random-package
#   git
# )
# list="$(to_install "${recipes[*]}" "$(brew list)")"
# if [[ "$list" ]]; then
# for item in ${list[@]}
#   do
#     echo "$item is not on the list"
#   done
# else
# e_arw "Nothing to install.  You've already got them all."
# fi

#------------------------------------------
# Set Colors
#
# Use colors, but only if connected to a
# terminal, and that terminal supports them.
#------------------------------------------
if which tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
  bold="$(tput bold)"
  underline=$(tput sgr 0 1)
  reset="$(tput sgr0)"
  red="$(tput setaf 1)"
  green="$(tput setaf 2)"
  yellow="$(tput setaf 3)"
  blue="$(tput setaf 4)"
  purple=$(tput setaf 171)
  tan=$(tput setaf 3)
else
  bold=""
  underline=""
  reset=""
  red=""
  green=""
  yellow=""
  blue=""
  purple=""
  tan=""
fi

#---------------------------------
#
#      Headers and Logging
#
#---------------------------------
function e_hdr () { printf "\n${bold}${purple}==========  %s  ==========${reset}\n" "$@"
}
function e_arw () { printf "${cyan}[ ➜ ] %s\n" "$@"
}
function e_scs () { printf "${green}[ ✔ ] %s${reset}\n" "$@"
}
function e_err () { printf "${red}[ ✖ ] %s${reset}\n" "$@"
}
function e_wrn () { printf "${yellow}[ ➜ ] %s${reset}\n" "$@"
}
function e_uln () { printf "${underline}${bold}%s${reset}\n" "$@"
}
function e_bld () { printf "${bold}%s${reset}\n" "$@"
}
function e_nte () { printf "${underline}${bold}${blue}Note:${reset}  ${yellow}%s${reset}\n" "$@"
}

#-------------------------------------------
#       USAGE FOR ASKING CONFIRMATION
# ask_confirm "Ask a question"
# Credit: https://github.com/kevva/dotfiles
#
# if is_confirm; then
#   some action
# else
#   some other action
# fi
#-------------------------------------------
function ask_confirm () {
  printf "\\n${bold}%s${reset}" "$@"
  read -p " (y/n) " -n 1
  printf "\\n"
}

#--------------------------------------
# Test whether the result of an 'ask'
# is a confirmation
#--------------------------------------
function is_confirm () {
  if [[ "$REPLY" =~ ^[Yy]$ ]]; then
    return 0
  fi
  return 1
}

#---------------------------------
# Test whether a command exists
# $1 = cmd to test
# Usage:
# if type_exists 'git'; then
#   some action
# else
#   some other action
# fi
#---------------------------------
function type_exists () {
  [ "$(type -P "$1")" ]
}

#---------------------------------
# Test which OS the user runs
# $1 = OS to test
# Usage: if is_os 'darwin'; then
#---------------------------------
function is_os () {
  if [[ "${OSTYPE}" == $1* ]]; then
    return 0
  fi
  return 1
}
