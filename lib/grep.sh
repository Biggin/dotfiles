#!/usr/bin/env bash
# is x grep argument available?
grep_flag_available() {
    echo | grep $1 "" >/dev/null 2>&1
}

GREP_OPTIONS="--color=always"

# ignore VCS folders (if the necessary grep flags are available)
VCS_FOLDERS="{.bzr,CVS,.git,.hg,.svn}"
SECRETS="{.secrets,.keys,.creds,.ks,.jks,.token,.ssh,.gnupg}"

if grep_flag_available --exclude-dir=.cvs; then
    GREP_OPTIONS+=( " --exclude-dir=$VCS_FOLDERS --exclude-dir=$SECRETS" )
elif grep_flag_available --exclude=.cvs; then
    GREP_OPTIONS+=( " --exclude=$VCS_FOLDERS --exclude=$SECRETS" )
fi

# export grep settings
alias grep="grep $GREP_OPTIONS"
alias grev='grep -v'

# clean up
unset GREP_OPTIONS
unset VCS_FOLDERS
unset SECRETS
unset -f grep_flag_available
