## Aliases for using exa as a stand-in for ls
alias aliases.ls='nano ${OSH_CUSTOM}/aliases/ls_exa.aliases.sh'

alias exa='exa -F --color=always'
alias ls='exa --icons'
alias lsd='ls --group-directories-first'
alias la='ls --all'
alias lad='lsd --all'
alias l='exa --long -bhH --reverse -1 --sort=size --color-scale'
alias ll='la --color-scale --sort=size --long -bhHx -@ --no-user'
alias lr='exa -RF --color-scale --sort=name'
alias ltr='exa --tree --color-scale --all --depth=3'
