set -e -x -u -p

linkFile=$(ls ~/dotfiles/handmade/symlinks | sed -e 's/\s/./gm' -- | cut -d '.' -f 1,2)

files=$(ls ~/dotfiles/handmade/symlinks | cut -d '.' -f 1)

for link in $HOME/dotfiles/handmade/symlinks/*.link; do
	echo $files
#	ln -s ${HOME}/${link}
done
unset link files
