## Aliases for using exa as a stand-in for ls
alias aliases.exa='nano ${OSH_CUSTOM}/aliases/exa.aliases.sh'

#############################################
#
#                exa aliases
#
#############################################
if [ -x $PREFIX/bin/exa > /dev/null ]; then
    alias ls='exa -F --color=always --color-scale --git --icons'
    alias sl='ls'
    alias ks='ls'
    alias kd='ls'
    alias la='ls --all'
    alias l.='ls -d .*'
    alias l='la --long -bhr -1 --sort=size --no-users --no-time --no-permissions'
    alias ll='la --sort=Name --long -bhx -@ --no-user'
    alias lr='la -R --sort=name'
    alias lm='ls --long -mbh@1 --sort=date'
    alias lt='ls --long -ubh@1 --sort=accessed'
    alias ltr='la --tree --level=3'
    alias d='dirs -v | head -10'
else
    alias ls='ls -FC --color=always'
    alias la='ls -A'
    alias l='la -Sshr'
    alias ll='la -lut'
    alias l.='ls -d .*'
    alias lr='la -R'
fi
