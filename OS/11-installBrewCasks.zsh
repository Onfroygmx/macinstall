#! /usr/bin/env zsh

### Install home brew casks
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew cask install eul

## Utilities
brew install --cask appcleaner                    # Application uninstaller
brew install --cask bitwarden                     # Secure and free password manager for all of your devices
brew install --cask commander-one                 # Two-panel file manager

brew install --cask easyfind                      # Find files, folders, or contents in any file
brew install --cask openoffice                    # Free and open-source productivity suite
brew install --cask sourcetree                    # Graphical client for Git version control
brew install --cask thunderbird                   # Customizable email client
brew install --cask transmission                  # Lightweight BitTorrent client
brew install --cask virtualbox                    # Free and open-source hosted hypervisor for x86 virtualization
brew install --cask virtualbox-extension-pack     # Oracle VirtualBox Extension Pack
brew install --cask vlc                           # Multimedia player

## Editors
brew install --cask \
    atom \                  # Text editor
    sublime-text \          # Text editor for code, markup and prose
    visual-studio-code      # Open-source code editor

## Browsers
brew install --cask \
    brave-browser \
    firefox \
    tor-browser \
    opera

## SystemTools
brew install --cask \
    chronycontrol \               # Install and configure chronyd
    etrecheckpro \                # Utility to finds and fix problems on computer systems
    lockrattler \                 # Checks security systems and reports issues
    onyx \                        # Verify system files structure, run miscellaneous maintenance and more
    silentknight                  # Automatically checks computer's security

# Cleanup leftovers
brew cleanup -s
brew cask cleanup

# Check if everything is ok
brew doctor
brew missing

# Write a dump with all installed first party packages
brew bundle dump
