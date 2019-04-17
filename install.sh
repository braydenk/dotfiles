#!/usr/bin/env bash

# Orginally from Mathias Bynens
# https://github.com/mathiasbynens/dotfiles/blob/bb6c76e410bf7b1693edfe60239461fc9205ec02/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	      rsync --exclude ".git/" \
                --exclude ".DS_Store" \
                --exclude ".macos" \
                --exclude "install.sh" \
                --exclude "README.md" \
                -avh --no-perms . ~;
        source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
