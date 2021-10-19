#!/bin/sh

set -e

# install homebrew
if [ ! -f /usr/local/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# clone dotfiles
if [ ! -d ~/dotfiles/ ]; then
  cd ~
  git clone https://github.com/kazuki827/dotfiles.git 
fi

# install via brew
brew bundle -v --file=~/dotfiles/Brewfile