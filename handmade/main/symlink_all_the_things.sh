#!/data/data/com.termux/files/usr/bin/bash

# Justing the files in this directory
# to their respective counterparts in $HOME
ln -s ${OSH_CUSTOM}/main/bashrc ${HOME}/.bashrc
ln -s ${OSH_CUSTOM}/main/bin ${HOME}/bin
ln -s ${OSH_CUSTOM}/main/config ${HOME}/.config
ln -s ${OSH_CUSTOM}/main/dircolors ${HOME}/.dircolors
#ln -s ${OSH_CUSTOM}/main/extras ${HOME}/.extras
ln -s ${OSH_CUSTOM}/main/gitconfig ${HOME}/.gitconfig
ln -s ${OSH_CUSTOM}/main/gnupg ${HOME}/.gnupg
ln -s ${OSH_CUSTOM}/main/infokey ${HOME}/.infokey
ln -s ${OSH_CUSTOM}/main/local ${HOME}/.local
ln -s ${OSH_CUSTOM}/main/nanorc ${HOME}/.nanorc
ln -s ${OSH_CUSTOM}/main/secrets ${HOME}/.secrets
ln -s ${OSH_CUSTOM}/main/ssh ${HOME}/.ssh
ln -s ${OSH_CUSTOM}/main/termux ${HOME}/.termux
