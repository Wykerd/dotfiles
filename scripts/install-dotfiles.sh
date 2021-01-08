#!/bin/bash

echo "Dotfiles Setup:\n"

read -r -p "What shell are you using? Type 'b' for bash and 'z' for zsh: " is_bash

if [ "$is_bash" == "b" ] then
	echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
else if [ "$is_bash" == "z" ] then
	echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
else
	echo "Invalid option"
	exit 1
fi

git clone --bare https://github.com/Wykerd/dotfiles.git $HOME/.cfg

function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

config checkout
if [ $? = 0 ]; then
	echo "Checked out config.";
else
	mkdir -p .config.old
	echo "Backing up exisiting config to .config.old"
	config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config.old/{}
	config checkout
fi;

config config --local status.showUntrackedFiles no
