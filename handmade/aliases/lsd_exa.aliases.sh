## Standard ls aliases for listing files more efficiently
alias ls='ls -FLH --color=always'
alias la='ls -A'
alias l='la -rsh -1S'
alias ll='l --long -Z'
alias l.='la -d .*'
alias lt='ll -ut'
alias d='dirs -v | head -10'

## Aliases for using exa as a stand-in for ls
#alias aliases.ls='nano ${OSH_CUSTOM}/aliases/lsd_exa.aliases.sh'
#
#alias exa='exa -F --color=always --icons'
#alias ls='exa --sort=name'
#alias lsd='ls --group-directories-first'
#alias la='ls --all'
#alias lad='lsd --all'
#alias l='exa --oneline --reverse --sort=size'
#alias ll='la --color-scale --sort=size --long -hH -@ --no-user'
#alias lr='exa -RF --color-scale --sort=name'
#alias ltr='exa --tree --color-scale --all'

## Aliases for lsd an ls replacement, if I ever decide to use it again...
#alias ls='lsd ???'
