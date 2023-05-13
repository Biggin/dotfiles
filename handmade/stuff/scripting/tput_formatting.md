## Syntax for using 256 colors in scripts
babyblue=$(tput setaf 51)

function babyblue () {
    printf "${babyblue} %s \n" "$@"
}

################################################
## For syntax of Regular 30-37 term colors
cyan="$(tput setaf 6)"

function tput_cyan () {
    printf "${cyan} %s \n" "$@"
}
