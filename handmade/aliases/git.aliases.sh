## Git aliases borrowed from the oh-my-bash git plugin and
## modified for my use on various systems

<<<<<<< HEAD
alias aliases.git="nano $OSH_CUSTOM/aliases/git.aliases.sh"
||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
alias aliases.git='nano $OSH_CUSTOM/aliases/git.aliases.sh'
#alias git='hub'
=======
alias aliases.git='nano $OSH_CUSTOM/aliases/git.aliases.sh'
>>>>>>> 76df9cb (Fixed files for use on Termux, updating paths and configs)


###############
#    	      #
#  FUNCTIONS  #
#	          #
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
function _git_log_prettily() {
  if ! [ -z $1 ]; then
    git log --pretty=$1
  fi
}

<<<<<<< HEAD
# cd to the ROOT of the worktree
function cg () {
	cd $(git rev-parse --show-toplevel)
}

||||||| parent of 76df9cb (Fixed files for use on Termux, updating paths and configs)
# Warn if the current branch is a WIP
function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "WIP!!"
  fi
}

###########
#		  #
# Aliases #
#		  #
###########
=======
###########
#		  #
# Aliases #
#		  #
###########
alias gcfg="nano $HOME/.gitconfig"

# exa cmd to list files with git statuses in long format
alias lg='exa --long -@ -FHhbmrs --color-scale --color=always --icons --git-ignore --git --no-user'

alias gadd='git add .'
alias git.aa='git add --all'
alias git.ap='git add --patch'
alias git.au='git add --update'

alias git.br='git branch'
alias git.bra='git branch -a'

alias git.bs='git bisect'
alias git.bsb='git bisect bad'
alias git.bsg='git bisect good'
alias git.bsr='git bisect reset'
alias git.bss='git bisect start'
#compdef _git git.bs=git-bisect

alias git.c='git commit -m'
alias git.ca='git commit -a -m'

# Scope of config options
alias git.cf='git config --list'
#compdef _git git.cf=git-config
alias git.cfl='git config --local'
#compdef _git git.cfl=git-config
alias git.cfg='git config --global'
#compdef _git git.cfg=git-config
alias git.cfs='git config --system'
#compdef _git git.cfs=git-config

alias clean='git clean -df'
alias pristine='git reset --hard && git clean -dfx'
# Reset local repo with remote branch
alias renew="git fetch origin && git reset --hard origin/master && git clean -df"

alias git.chk='git checkout'
#compdef _git git.chk=git-checkout
alias git.chb='git checkout -b'
#compdef _git git.chb=git-checkout
alias git.chm='git checkout master'
#compdef _git git.chm=git-checkout
alias git.chd='git checkout develop'
#compdef _git git.chd=git-checkout

alias git.cnt='git shortlog -sn'
#compdef _git git.cnt complete -F _git gcount

alias git.cp='git cherry-pick'
#compdef _git git.cp=git-cherry-pick
alias git.cpa='git cherry-pick --abort'
#compdef _git git.cpa=git-cherry-pick
alias git.cpc='git cherry-pick --continue'
#compdef _git git.cpc=git-cherry-pick
alias git.cps='git cherry-pick -s'
#compdef _git git.cps=git-cherry-pick

alias git.d='git diff'
#compdef _git git.d=git-diff
alias git.dc='git diff --cached'
#compdef _git git.dc=git-diff
alias git.dw='git diff --word-diff'
#compdef _git git.dw=git-diff

alias git.dct='git describe --tags `git rev-list --tags --max-count=1`'
alias git.dtr='git diff-tree --no-commit-id --name-only -r'

gdv() {
  git diff -w "$@" | view -
}
#compdef _git gdv=git-diff

alias git.f='git fetch'
#compdef _git git.f=git-fetch
alias git.fo='git fetch origin'
#compdef _git git.fo=git-fetch
alias git.fa='git fetch --all --prune'
#compdef _git git.fa=git-fetch

alias git.push='git push origin $(git_current_branch)'
#compdef _git git.push=git-checkout

gfg() {
  git ls-files | grep "$@"
}
#compdef _grep gfg

alias git.pull='git pull origin $(git_current_branch)'
#compdef _git git.pull=git-checkout

alias git.bsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias git.psup='git push --set-upstream origin $(git_current_branch)'

alias git.h='git help'
#compdef _git git.h=git-help
alias git.ha='git help -a'
#compdef _git git.ha=git-help

alias git.ll='git pull'
#compdef _git git.ll=git-pull
alias git.llr='git pull --rebase'
#compdef _git git.llr=git-pull
alias git.llra='git pull --rebase --autostash'
#compdef _git git.llra=git-pull

alias git.lg='git log --stat -p'
#compdef _git git.lg=git-log
alias git.lo='git log --oneline --decorate'
#compdef _git git.lo=git-log
alias git.log='git log --graph --decorate --all'
#compdef _git git.log=git-log
alias git.logm='git log --graph --max-count=10'
#compdef _git git.logm=git-log
alias git.lp="_git_log_prettily"
#compdef _git git.lp=git-log
alias git.shw='git show --pretty=short --show-signature'
#compdef _git git.shw=git-show

alias git.lol="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#compdef _git git.lol=git-log
alias git.lola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
#compdef _git git.lola=git-log

alias git.mrg='git merge'
#compdef _git git.mrg=git-merge
alias git.mom='git merge origin/master'
#compdef _git git.mom=git-merge
alias git.mum='git merge upstream/master'
#compdef _git git.mum=git-merge

alias git.pu='git push'
#compdef _git git.pu=git-push
alias git.pud='git push --dry-run'
#compdef _git git.pud=git-push
alias git.pat='git push origin --all && git push origin --tags'
#compdef _git git.pat=git-push
alias git.puu='git push upstream'
#compdef _git git.puu=git-push
alias git.puv='git push -v'
#compdef _git git.puv=git-push

alias git.re='git remote'
#compdef _git git.re=git-remote
alias git.rev='git remote -v'
#compdef _git git.rev=git-remote
alias git.rea='git remote add'
#compdef _git git.rea=git-remote
alias git.rem='git remote remove'
#compdef _git git.rem=git-remote
alias git.ren='git remote rename'
#compdef _git git.ren=git-remote
alias git.res='git remote set-url'
#compdef _git git.res=git-remote
alias git.reu='git remote update'
#compdef _git git.reu=git-remote
#compdef _git git.rev=git-remote

alias git.rb='git rebase'
#compdef _git git.rb=git-rebase
alias git.rbi='git rebase -i'
#compdef _git git.rbi=git-rebase
alias git.rba='git rebase --abort'
#compdef _git git.rba=git-rebase
alias git.rbc='git rebase --continue'
#compdef _git git.rbc=git-rebase
alias git.rbs='git rebase --skip'
#compdef _git git.rbs=git-rebase

alias git.rh='git reset --hard'
alias git.rs='git reset --soft'
alias git.rH='git reset HEAD'

alias gstat='git status'

alias git.st='git stash'
alias git.sta='git stash apply'
alias git.sts='git stash save'
alias git.stc='git stash clear'
alias git.std='git stash drop'
alias git.stl='git stash list'
alias git.stp='git stash pop'
alias git.stw='git stash show --text'

alias git.ts='git tag -s'
alias git.tv='git tag | sort -V'

alias git.up='git pull --rebase'
alias git.upa='git pull --rebase --autostash'

alias git.wch='git whatchanged -p --abbrev-commit --pretty=medium'
alias git.wip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
