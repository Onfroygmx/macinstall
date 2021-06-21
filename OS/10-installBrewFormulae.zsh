#! /usr/bin/env zsh

### Install base home brew formulae

# Install xcode command line tools
xcode-select --install

# Install base package
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Check if everything is ok
brew doctor

# Don't send google analytics
brew analytics off

## GNU Tools
brew install coreutils
brew install binutils
brew install diffutils
brew install findutils
brew install gawk
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-which
brew install gnutls
brew install grep
brew install wget
brew install nano

## Other tools
brew install git
brew install less
brew install zsh

## Extras

brew install \
    cask \
    colordiff \
    git-delta \
    htop \
    nanorc \
    pstree \
    tree \
    zsh-autosuggestions \
    zsh-completions \
    zsh-history-substring-search \
    zsh-syntax-highlighting
