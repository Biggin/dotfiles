## Aliases for using lsd as a stand-in for ls
alias aliases.lsd='nano $OSH_CUSTOM/aliases/lsd.aliases.sh'

#############################################
#
#               lsd aliases
#
#############################################
alias ls='lsd --color=always --icon=always -F --human-readable'
alias l='la -1 -SL --reverse --blocks=name,size --total-size'
alias l.='ls -d .*'
alias la='ls -A'
alias ll='la -S --long --total-size --reverse --header --blocks=permission,user,size,name'
alias llp='ll --permission=octal'
alias lt='la -t --long --header --blocks=links,permission,date,user,size,name --reverse'
alias ltr='ls -d --tree --depth=3 --sort=none'
