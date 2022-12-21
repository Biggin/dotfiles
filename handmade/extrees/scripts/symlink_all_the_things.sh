#!/data/data/com.termux/files/usr/bin/bash

# Just linking the files in this directory
# to their respective counterparts in $HOME
ln -s ${OSH_CUSTOM}/symlinks/bashrc.link ${HOME}/.bashrc
ln -s ${OSH_CUSTOM}/symlinks/config.link ${HOME}/.config
ln -s ${OSH_CUSTOM}/symlinks/dircolors.link ${HOME}/.dircolors
ln -s ${OSH_CUSTOM}/symlinks/extras.link ${HOME}/.extras
ln -s ${OSH_CUSTOM}/symlinks/gitconfig.link ${HOME}/.gitconfig
ln -s ${OSH_CUSTOM}/symlinks/infokey.link ${HOME}/.infokey
ln -s ${OSH_CUSTOM}/symlinks/local.link ${HOME}/.local
ln -s ${OSH_CUSTOM}/symlinks/nanorc.link ${HOME}/.nanorc
ln -s ${OSH_CUSTOM}/symlinks/termux.link ${HOME}/.termux
