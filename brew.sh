#!/usr/bin/env bash

# Originally from Mathias Bynens
# https://github.com/mathiasbynens/dotfiles/blob/bb6c76e410bf7b1693edfe60239461fc9205ec02/brew.sh

echo "Installing brew formulae..."

# Update to the latest homebrew.
brew update

# Upgrade any already-installed formulae. 
brew upgrade

# Save Homebrew's installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdate).
# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, this will overwrite the built-in `sed`.
brew install gnu-sed --with-default-names

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# I need this for `fzf` to ignore files listed in my .gitignore and to show hidden files.
brew install ag

# Needed for Python support on Neovim for YouCompleteMe
# See: https://github.com/neovim/neovim/issues/1315
brew install python3
pip3 install --user --upgrade neovim

# Install `wget` with IRI support.
brew install wget --with-iri

brew install curl

# Install more recent versions of some macOS tools.
brew install neovim
brew install grep
brew install openssh

# Install other binaries I use.
brew install git
brew install tmux

# ----------------------
# Casks
# ----------------------
brew install cask

# Get that vim working
brew install vim --with-override-system-vi
brew install neovim --with-override-system-vi
nvim +PlugClean! +qall
nvim +silent +PlugInstall +qall
python3 ~/.config/nvim/plugged/YouCompleteMe/install.py

brew install tmux

brew install git

# Remove outdated versions from the cellar.
brew cleanup
