alias aliases.git="nano ${OSH_CUSTOM}/aliases/git.aliases.sh"

## Git for lazy people
alias gadd='git add -A'
alias git.h='git help'
alias git.ha='git help -a'

alias git.pu='git push'
alias git.ll='git pull'

alias git.br='git branch'
alias git.bra='git branch -a'

alias git.chk='git checkout'
alias git.chb='git checkout -b'

alias git.c='git commit -m'
alias git.cl='git clean -xdf'

alias git.cp='git cherry-pick'
alias git.cpa='git cherry-pick --abort'
alias git.cpc='git cherry-pick --continue'
alias git.cps='git cherry-pick --skip'

alias git.d='git diff'
alias git.dc='git diff --cached'

alias git.m='git merge'
alias git.mi='git merge -i'

alias git.stb='git stash branch'
alias git.stc='git stash create'
alias git.std='git stash drop'
alias git.stl='git stash list'
alias git.sts='git stash show'

alias gstat='git status'
alias gstab='git status -sb'

alias git.rb='git rebase'
alias git.rbi='git rebase -i'
alias git.rbs='git rebase --skip'
alias git.rba='git rebase --abort'
alias git.rbc='git rebase --continue'

alias git.rt='git remote'
alias git.rta='git remote add'
alias git.rts='git remote --set-upstream'
alias git.rtd='git remote delete'

alias git.r='git reset'
alias git.rs='git reset --soft'
alias git.rh='git reset --hard'
alias git.rH='git reset HEAD'



#############
#           #
# FUNCTIONS #
#           #
#############

# The name of the current branch
# Backward-compatibility wrapper for when this function was
# defined here in the plugin, before being pulled in to core
# lib/git.zsh as git_current_branch() to fix the core -> git
# plugin dependency.

function current_branch () {
  git_current_branch
}

# The list of remotes
function current_repository() {
    if ! $_omb_git_git_cmd rev-parse --is-inside-work-tree &> /dev/null; then
        return
    fi
    echo $($_omb_git_git_cmd remote -v | cut -d':' -f 2)
}

# Pretty log messages
function _git_log_prettily(){
    if ! [ -z $1 ]; then
        git log --pretty=$1
    fi
}

# Warn if the current branch is a WIP
function work_in_progress() {
    if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
        echo "WIP!!"
    fi
}
