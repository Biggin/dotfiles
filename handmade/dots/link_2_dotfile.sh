set -e -x -u -p

#linkFile=$(ls ~/dotfiles/handmade/symlinks | sed -e 's/\s/./gm' -- | cut -d '.' -f 1,2)
#
#files=$(ls ~/dotfiles/handmade/symlinks | cut -d '.' -f 1)
#
#for link in $HOME/dotfiles/handmade/symlinks/*.link; do
#	echo $files
##	ln -s ${HOME}/${link}
#done
#unset link files
if [ $# -gt 1 ]; then
 	arg=$(echo "$#")
 	shift $(( $arg - 1  ))
 	dir=$1
	mkdir -pv $dir && cd $dir || return 13
fi
