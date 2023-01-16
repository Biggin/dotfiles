## Aliases for using exa as a stand-in for ls
alias aliases.exa='nano ${OSH_CUSTOM}/aliases/exa.aliases.sh'

#############################################
#
#                exa aliases
#
#############################################
alias exa='exa -F --color=always --icons'
alias sl='ls'
alias ls='exa'
alias la='ls --all'
alias l.='ls -d .*'
alias l='la --long -bh -1 --sort=size --color-scale'
alias ll='l -Hx -@ --no-user'
alias lr='la -RF --color-scale --sort=name'
alias lt='ll --time-created --sort=newest --reverse'
alias ltr='la --tree --color-scale --depth=3'
alias d='dirs -v | head -10'
