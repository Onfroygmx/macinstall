#! /usr/bin/env zsh

### Install home brew casks

## Utilities
brew install --cask appcleaner
brew install --cask bitwarden
brew install --cask commander-one
brew install --cask easyfind
brew install --cask etrecheckpro
brew install --cask openoffice
brew install --cask sourcetree
brew install --cask thunderbird
brew install --cask transmission
brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask vlc

## Editors

brew install --cask \
    atom \
    sublime-text \
    visual-studio-code

## Browsers

brew install --cask \
    brave-browser \
    firefox \
    tor \
    opera

brew cleanup -s
brew cask cleanup

# Check if everything is ok
brew doctor
brew missing
