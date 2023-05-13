# Aliases for using exa as a stand-in for ls
alias aliases.exa='nano $OSH_CUSTOM/aliases/exa.aliases.sh'

#############################################
#
#                exa aliases
#
#############################################
alias ls='exa -F --color=always --color-scale'
alias la='ls --all'
alias l.='la -d .*'
alias l='la --long -bhr --sort=size --no-user --no-time --no-permissions'
alias lp='la -lhbr -s size --octal-permissions --no-permissions --no-user --no-time'
alias ll='la --long -hbSg@ --sort=Name --changed'
alias lr='la -R --level=5 | less'
alias d='dirs -v | head -10'
alias tree='la --tree --level=3'

# Display entries listed by corresponding time fields
alias lm='la -lhbS@m  --no-user --no-permissions --sort=modified'
alias lt='la -lhbS@U --no-user --no-permissions --sort=created'
alias lv='la -lhbS@u --no-user --no-permissions --sort=accessed'

function ltr () {
	exa -F --color=always --color-scale --level=3 --tree $@ | less
}
