## Aliases for using exa as a stand-in for ls
alias aliases.exa='nano ${OSH_CUSTOM}/aliases/exa.aliases.sh'

###################################8##########
#
#                exa aliases
#
#############################################
alias exa='exa -F --color=always'
#alias sl='ls'
alias ls='exa --icons'
alias la='ls --all'
alias l.='la -d .* -s name --group-directories-first'
alias sl='ls -lhbr -s size --color-scale --octal-permissions --no-user --no-time'

# Displays size used on system and filename
alias l='la -lhbr@ --sort=size --no-user --no-time --no-permissions --octal-permissions --color-scale --git -L 1'
alias ll='la --long -hHbg@ --sort=name --no-user --no-time --octal-permissions'
alias ls.age='ls -x --sort=new'
alias tree='la -RL 3 --tree -s name'
alias d='dirs -v | head -10'

# List files with git status shown in long format
alias ls.git="ll --git --git-ignore"
alias lr='la -Rx | less -R'
alias lrl='la -Rlhbg@nur --sort=size --git --no-permissions --octal-permissions | less -R'
