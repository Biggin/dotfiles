## Aliases for using exa as a stand-in for ls
alias aliases.exa='nano ${OSH_CUSTOM}/aliases/exa.aliases.sh'

#############################################
#
#                exa aliases
#
#############################################
alias exa='exa -F --color=always'
alias sl='ls'
alias ls='exa --icons'
alias la='ls --all'
alias l.='ls -d .*'
alias l='exa -bhH -1 --sort=size --color-scale'
alias ll='la --color-scale --sort=size --long -bhHx -@ --no-user'
alias lr='exa -RF --color-scale --sort=name'
alias lt='ll --time-created --sort=newest --reverse'
alias ltr='exa --tree --color-scale --all --depth=3'
alias d='dirs -v | head -10'
