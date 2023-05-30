# Aliases for using exa as a stand-in for ls
alias aliases.exa='nano ${OSH_CUSTOM}/aliases/exa.aliases.sh'

#############################################
#
#                exa aliases
#
#############################################
if [[ -x $PREFIX/bin/exa ]]; then
	alias ls='exa -F --color=always --color-scale --git --icons'
	alias la='ls --all'
	alias l.='la -d .*'
	alias l='la --long -bhr --sort=size --no-user --no-time --no-permissions'
	alias lpp='l --octal-permissions'
	#alias lp='la -lhbr -s size --octal-permissions --no-permissions --no-user --no-time'
	alias ll='la --long -hbSg@ --sort=Name --changed'
	alias lr='la -R --level=5 | less'
	alias d='dirs -v | head -10'
	alias tree='la --tree --level=3 | less'

	# Display entries listed by corresponding time fields
	alias lm='la -lhbS@m  --no-user --sort=modified'
	alias lt='la -lhbS@U --no-user --sort=created'
	alias lv='la -lhbS@u --no-user --sort=accessed'

	function ltr () {
		exa -F --color=always --color-scale --git --icons --level=3 --tree $@ | less
	}
else
	alias ls='ls -FLCHZ --color=always'
	alias la='ls -A'
	alias l='la -Ssh'
	alias ll='la -gls'
	alias lc='ll -tc'
	alias lm='ll -t'
	alias lt='ll -tu'
	alias lr='la -R'
fi
