#!/data/data/com.termux/files/usr/bin/bash
#--------------- Description ----------------#
# Summary:                                   #
# A collection of handy utilities            #
# and functions for bash                     #
# Support:                                   #
# destro.nnt@gmail.com                       #
# C-Date: Mar 18,2017                        #
# M-Date : Mar 18,2017                       #
#                                            # #----------------  Usage  -------------------#
# Add line below to your script or I have    #
# it loaded on terminal startup so it's      #
# always available to my shell...            #
#                                            #
#  ``source ~/path/to/directory/util_msgs``  #
#                                            #
#------------ Styled Text Output ------------#
# _header "I am a sample script"             #
# _success "I am a success message"          #
# _error "I am an error message"             #
# _warn "I am a warning message"             #
# _uline "I am underlined text"              #
# _bold "I am bold text"                     #
# _note "I am a note"                        #
#                                            #
#----------- Yes/No Confirmations -----------#
# ask_confirm "Do you want to print a        #
# success message?"                          #
# if is_confirmed; then                      #
#     success "Here is a success message"    #
# else                                       #
#     error "You did not ask for a           #
#       success message"                     #
# fi                                         #
#                                            #
#---- Test if packages, etc.are installed ---#
# if type_exists 'git'; then                 #
#     success "Git good to go"               #
# else                                       #
#     error "Git should be installed. It     #
#       isn't. Aborting."                    #
#     exit 1                                 #
# fi                                         #
#                                            #
#-------  Check which OS we're using  -------#
# if is_os "darwin"; then                    #
#     success "You are on a mac"             #
# else                                       #
#     error "You are not on a mac!"          #
#       exit 1                               #
# fi                                         #
#                                            #
#---- Sending notifications to Pushover  ----#
# pushover "We just finished performing a    #
# lengthy task."                             #
#                                            #
#------------- Comparing A List -------------#
# recipes=(                                  #
# A-random-package                           #
# bash                                       #
# Another-random-package                     #
# git                                        #
# )                                          #
# list="$(to_install \"${recipes[*]}"        #
# "$(brew list)\")"                          #
# if [[ "$list" ]]; then                     #
#    for item in ${list[@]}                  #
#    do                                      #
#       echo "$item is not on the list"      #
#    done                                    #
# else                                       #
#   arrow "Nothing to install. You've        #
#      already got them all."                #
# fi                                         #
#                                            # #--------------------------------------------#
# Use colors, but only if connected to a     #
# terminal, and that terminal supports them  #
#                                            # #--------------------------------------------#
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
    white=$(tput setaf 255)
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
    white=""
 fi

#----------  Headers and Logging  -----------#
#function _header () {
#   echo -ne "\n${bold}${purple}========== ${white}$@ ${purple} ==========${reset}\n"
#}
#
#function _arrow () {
#    echo -ne "${white}[${cyan} ➜ ${white}] ${cyan}$@\n"
#}
#
#function _success () {
#    echo -ne "${white}[${green} ✔ ${white}] ${green}$@${reset}\n"
#}
#
#function _error () {
#    echo -ne "${white}[${red} ✖ ${white}]${red}$@${reset}\n"
#}
#
#function _warn () {
#    echo -ne "${white}[${yellow} ➜ ${white}] ${yellow}$@${reset}\n"
#}
#
#function _uline () {
#    echo -ne "${underline}${bold}$@${reset}\n"
#}
#
#function _bold () {
#    echo -ne "${bold}$@${reset}\n"
#}
#
#function _note () {
#    echo -ne "${underline}${bold}${blue}Note${white}: ${reset}${yellow}$@${reset}\n"
#}


function _header () {
   printf "\n${bold}${purple}========== ${white}%s ${purple} ==========${reset}\n" "$@"
}

function _arrow () {
    printf "${white}[${cyan} ➜ ${white}] ${cyan}%s\n" "$@"
}

function _success () {
    printf "${white}[${green} ✔ ${white}] ${green}%s${reset}\n" "$@"
}

function _error () {
    printf "${white}[${red} ✖ ${white}]${red}%s${reset}\n" "$@"
}

function _warn () {
    printf "${white}[${yellow} ➜ ${white}] ${yellow}%s${reset}\n" "$@"
}

function _uline () {
    printf "${underline}${bold}%s${reset}\n" "$@"
}

function _bold () {
    printf "${bold}%s${reset}\n" "$@"
}

function _note () {
    printf "${underline}${bold}${blue}Note${white}: ${reset}${yellow}%s${reset}\n" "$@"
}

#------   USAGE FOR ASKING CONFIRMATION  ------#
# ask_confirm "Ask a question"                 #
# Credit: https://github.com/kevva/dotfiles    #
# if is_confirm; then                          #
#   some action                                #
# else                                         #
#   some other action                          #
# fi                                           #
#                                              #
#----------------------------------------------#
function ask_confirm () {
#    printf "\\n${bold}%s${reset}" "$@"
    echo -ne "\n${bold}$@${reset}"
    read -p " (y/n) " -n 1
#    printf "\\n"
    echo -ne "\n"
}

#---------------------------------------------#
# Test whether the result of an 'ask'         #
# is a confirmation                           #
#                                             #
#---------------------------------------------#
function is_confirm () {
    if [[ "$REPLY" =~ ^[Yy] ]]; then
        return 0
    fi
    return 1
}

#---------------------------------------------#
# Test whether a command exists               #
# $1 = cmd to test                            #
# Usage:                                      #
# if type_exists 'git'; then                  #
#    some action                              #
# else                                        #
#    some other action                        #
# fi                                          #
#---------------------------------------------#
function type_exists () {
    [ "$(type -P "$1")" ]
}

#---------------------------------------------#
# Test which OS the user runs $1 = OS to test #
# Usage: if is_os 'darwin'; then              #
#                                             #
#---------------------------------------------#
function is_os () {
    if [[ "${OSTYPE}" == $1* ]]; then
        return 0
    fi
    return 1
}
