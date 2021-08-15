#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "run brew upgrade..."
brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    z
    colordiff
    "--without-etcdir zsh"
    cask
    ansible
    peco
    hub
    tig
    node
    python3
    lua
    "vim --with-lua"
    mysql
    postgresql
    sqlite
    "php55 --homebrew-apxs"
    httpd22
    ricty
    sqlite
    composer
    markdown
    ctags
    ssh-copy-id
    phantomjs
    mecab
    diff-so-fancy
    thefuck
)

echo "brew tap"
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/homebrew-php
brew tap homebrew/apache
brew tap sanemat/font

echo "start brew install formula..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

# install gui app
casks=(
    dropbox
    google-chrome
    slack
    alfred
    iterm2
    atom
    virtualbox
    sourcetree
    visual-studio-code
)

echo "start brew install apps..."
for cask in "${casks[@]}"; do
    brew cask install $cask
done

echo "remove old formula "
brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
