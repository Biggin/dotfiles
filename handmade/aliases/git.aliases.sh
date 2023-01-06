## Git aliases borrowed from the oh-my-bash git plugin and
## modified for my use on various systems

alias aliases.git='nano $OSH_CUSTOM/aliases/git.aliases.sh'

alias gcfg="nano ${HOME}/.gitconfig"

###############
#	      #
#  FUNCTIONS  #
#	      #
###############
# The name of the current branch
# Backward-compatibility wrapper for when
# this function was defined here in the
# plugin, before being pulled in to core
# lib/git.zsh as git_current_branch() to
# fix the core -> git plugin dependency.
function current_branch() {
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


#############
#	    #
#  Aliases  #
#           #
#############
# Sorted Alphabetically
# exa cmd to list files with git status shown in long format
alias lg='exa --long --git --header -Hb --no-user -@'

alias gadd='git add -A'

alias git.br='git branch'
alias git.bra='git branch -a'

alias git.bs='git bisect'
alias git.bsb='git bisect bad'
alias git.bsg='git bisect good'
alias git.bsr='git bisect reset'
alias git.bss='git bisect start'
#compdef _git git.bs=git-bisect

alias git.c='git commit -m'
# Scope of config options
alias git.glb='git config --global'
#compdef _git git.glb=git-config
alias git.sys='git config --system'
#compdef _git git.sys=git-config
alias git.lcl='git config --local'
#compdef _git git.lcl=git-config

# Query config options
alias git.cfl='git config --list'
alias git.cfm='git config --get'
alias git.cfu='git config --unset'

alias git.cln='git clean -f -d'
alias git.recln='git reset --hard && git clean -dfx'
# Reset local repo with remote branch
alias renew="git fetch origin && git reset --hard origin/master && git clean -f -d"


alias git.chk='git checkout'
#compdef _git git.chk=git-checkout
alias git.chb='git checkout -b'
#compdef _git git.chb=git-checkout

alias git.cp='git cherry-pick'
#compdef _git git.cp=git-cherry-pick
alias git.cpa='git cherry-pick --abort'
alias git.cpc='git cherry-pick --continue'
#compdef _git git.cpc=git-cherry-pick
alias git.cps='git cherry-pick -s'
#compdef _git git.cps=git-cherry-pick

alias git.d='git diff'
#compdef _git git.d=git-diff
alias git.dc='git diff --cached'
#compdef _git git.dc=git-diff
alias git.dt='git diff-tree --no-commit-id --name-only -r'
alias git.dw='git diff --word-diff'
#compdef _git git.dw=git-diff

alias git.f='git fetch'
alias git.fo='git fetch origin'
alias git.fa='git fetch --all --prune'
#compdef _git git.f=git-fetch
#compdef _git git.fo=git-fetch
#compdef _git git.fa=git-fetch

alias git.push='git push origin $(git_current_branch)'
#compdef _git git.push=git-checkout

alias git.bsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias git.psup='git push --set-upstream origin $(git_current_branch)'

alias git.h='git help -m'
alias git.ha='git help -a'

alias git.ll='git pull'
#compdef _git git.ll=git-pull
alias git.llr='git pull --rebase'
#compdef _git git.llr=git-pull
alias git.llra='git pull --rebase --autostash'

alias git.lg='git log --stat -p'
#compdef _git git.lg=git-log

alias git.lo='git log --graph --decorate --all'
alias git.logm='git log --graph --max-count=10'
alias git.log='git log --oneline --decorate --graph'
alias git.lp="_git_log_prettily"
#compdef _git git.lp=git-log
alias git.shw='git show --pretty=short --show-signature'
#compdef _git git.shw=git-show

alias git.mrg='git merge'
alias git.mom='git merge origin/master'
#compdef _git git.mrg=git-merge

alias git.pu='git push'
#compdef _git git.pu=git-push

alias git.re='git remote'
alias git.rev='git remote -v'
alias git.rea='git remote add'
alias git.rem='git remote remove'
alias git.ren='git remote rename'
alias git.res='git remote set-url'
alias git.reu='git remote update'
#compdef _git git.re=git-remote
#compdef _git git.rev=git-remote

#alias git.rb='git rebase'
#alias git.rbi='git rebase -i'
#alias git.rba='git rebase --abort'
#alias git.rbc='git rebase --continue'
#alias git.rbs='git rebase --skip'
#compdef _git git.rb=git-rebase
#compdef _git git.rbi=git-rebase

alias git.rh='git reset --hard'
alias git.rs='git reset --soft'
alias git.rH='git reset HEAD'

alias gstat='git status'

alias git.st='git stash'
alias git.sta='git stash apply'
alias git.stc='git stash clear'
alias git.std='git stash drop'
alias git.stl='git stash list'
alias git.stp='git stash pop'
alias git.sts='git stash show --text'
alias git.stsv='git stash save'
