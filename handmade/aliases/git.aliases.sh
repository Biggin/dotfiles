## Git aliases borrowed from the oh-my-bash git plugin and
## modified for my use on various systems

alias aliases.git='nano $OSH_CUSTOM/aliases/git.aliases.sh'

#############
#			#
# FUNCTIONS #
#			#
#############

# The name of the current branch
# Backward-compatibility wrapper for when this function was
# defined here in the plugin, before being pulled in to core
# lib/git.zsh as git_current_branch() to fix the core -> git
# plugin dependency.
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

###########
#		  #
# Aliases #
#		  #
###########

# Sorted Alphabetically
# exa cmd to list files with git status shown in long format
alias lg='exa --long --git --header -H --no-user -@'

alias gadd='git add -A'

alias git.br='git branch'
alias git.bra='git branch -a'

alias git.bs='git bisect'
alias git.bsb='git bisect bad'
alias git.bsg='git bisect good'
alias git.bsr='git bisect reset'
alias git.bss='git bisect start'

alias git.c='git commit -m'
alias git.cf='git config --list'

alias git.cln='git clean -fd'
alias git.recln='git reset --hard && git clean -dfx'

alias git.chk='git checkout'
alias git.chb='git checkout -b'

alias git.cp='git cherry-pick'
alias git.cpa='git cherry-pick --abort'
alias git.cpc='git cherry-pick --continue'
alias git.cps='git cherry-pick -s'

alias git.d='git diff'
alias git.dc='git diff --cached'
alias git.dt='git diff-tree --no-commit-id --name-only -r'
alias git.dw='git diff --word-diff'

alias git.f='git fetch'
alias git.fa='git fetch --all --prune'
alias git.fo='git fetch origin'

alias git.pull='git pull origin $(git_current_branch)'
#compdef _git git.pull=git-checkout

alias git.push='git push origin $(git_current_branch)'
#compdef _git git.push=git-checkout

alias git.bsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias git.psup='git push --set-upstream origin $(git_current_branch)'

alias git.h='git help'
alias git.ha='git help -a'

alias git.ll='git pull'
alias git.llr='git pull --rebase'
alias git.llra='git pull --rebase --autostash'

alias git.lg='git log --stat -p'
alias git.logg='git log --graph --decorate --all'
alias git.logm='git log --graph --max-count=10'
alias git.lo='git log --oneline --decorate'
alias git.log='git log --oneline --decorate --graph'
alias git.loga='git log --oneline --decorate --graph --all'
alias git.lp="_git_log_prettily"
#compdef _git git.lp=git-log
alias git.sps='git show --pretty=short --show-signature'

alias git.mrg='git merge'
alias git.mom='git merge origin/master'
alias git.mt='git mergetool --no-prompt'

alias git.pu='git push'
#compdef _git git.pu=git-push
alias git.puv='git push -v'
#compdef _git git.puv=git-push

alias git.re='git remote'
alias git.rea='git remote add'
alias git.rem='git remote remove'
alias git.ren='git remote rename'
alias git.res='git remote set-url'
alias git.reu='git remote update'

alias git.rb='git rebase'
alias git.rba='git rebase --abort'
alias git.rbc='git rebase --continue'
alias git.rbi='git rebase -i'
alias git.rbm='git rebase master'
alias git.rbs='git rebase --skip'

alias git.rh='git reset --hard'
alias git.rs='git reset --soft'
alias git.rH='git reset HEAD'

alias gstat='git status'
alias gstab='git status -sb'

alias git.st='git stash'
alias git.sta='git stash apply'
alias git.stc='git stash clear'
alias git.std='git stash drop'
alias git.stl='git stash list'
alias git.stp='git stash pop'
alias git.sts='git stash show --text'
alias git.stsv='git stash save'

alias git.ts='git tag -s'
alias git.tv='git tag | sort -V'

alias git.wch='git whatchanged -p --abbrev-commit --pretty=medium'


alias glol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
