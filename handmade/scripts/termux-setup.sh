#!/data/data/com.termux/files/usr/bin/env bash

## Script for helping automate new Termux
## installations on Android devices
#pkg upgrade -y && pkg install git

apt update && apt-get install \
	science-repo game-repo unstable-repo \
	x11-repo fd file inxi neofetch curl wget \
	aapt ffmpeg gzip bat nmap make man nano \
	openssh python python2 rsync texinfo unzip \
	xz-utils zlib tar zstd shtool aapt bzip2 android-tools -y

#git clone https://github.com/Biggin/Termux_Bash -b mobile ~/termux_bash

#if [ -d ~/termux_bash/bash ]; then
#	cd ~/termux_bash/bash || return 13
#	cp ../.infokey ~/
#	cp -r .config .termux banner nanorc \
#		.dircolors .git* ~/
#	cd ~/ && mv banner nanorc $PREFIX/etc/
#	echo -ne '\nneofetch\ncat $PREFIX/etc/banner' >> $PREFIX/etc/profile
#	mv $PREFIX/etc/motd $PREFIX/etc/motd.bak
#
#	git clone https://github.com/ohmybash/oh-my-bash ~/.dotfiles
#	if [ -d ~/.dotfiles ]; then
#		cp -r ~/termux_bash/bash/dotfiles/handmade ~/.dotfiles/
#		cp ~/termux_bash/bash/dotfiles/bashrc \
#		~/.bashrc && source ~/.bashrc
#		rm -rf ~/.dotfiles/custom
#	fi


#!/data/data/com.termux/files/usr/bin/bash -e
# Termux environment setup
# Copyright (C) 2019-2020, 2022 Albert I (krasCGQ)
# SPDX-License-Identifier: GPL-3.0-or-later

# Modified styled message print from my scripts
prInfo() { echo "[-] $*"; }

# Move to home directory just in case
cd "$HOME" || exit 1

# Initiate system update
prInfo "Executing system update..."
pkg update -o Dpkg::Options::="--force-confnew" -y

## Install a number of basic packages
# Explainer:
# - antibody: Zsh plugin manager
# - axel: alternative CLI download manager
# - git: version control system
# - nano: CLI text editor
# - python: Python 3
# - wget: CLI download manager
# - zsh: Unix shell
prInfo "Installing basic packages..."
pkg install --no-install-recommends -y \
    antibody \
    axel \
    git \
    nano \
    python \
    wget \
    zsh

# Python 3 modules, since outdated versions are installed by default
prInfo "Upgrading Python 3 modules..."
python3 -m pip install --upgrade \
    pip \
    setuptools

# dotfiles
prInfo "Setting up dotfiles..."
git clone https://github.com/krasCGQ/dotfiles.git .files
git -C "$HOME"/.files submodule update --init scripts
mkdir -p .config/nano
# .zshrc
ln -sf "$HOME"/.files/.zshrc-android "$HOME"/.zshrc
# nanorc
<"$HOME"/.files/.config/nano/nanorc |
    sed -e "s|/usr|$PREFIX|" >"$HOME"/.config/nano/nanorc

# Move to zsh
prInfo "Moving to Zsh..."
chsh -s zsh

# Done!
prInfo "Done."
