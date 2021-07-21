#! /usr/bin/env zsh

### Install base home brew formulae

# Install xcode command line tools
xcode-select --install

# Install base package
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
local BREW_PREFIX
BREW_PREFIX=$(brew --prefix)
export PATH=${BREW_PREFIX}/bin:${BREW_PREFIX}/sbin:$PATH

# Don't send google analytics
brew analytics off

## GNU Tools
brew install coreutils      # GNU File, Shell, and Text utilities
brew install binutils       # GNU binary tools for native development
brew install diffutils      # File comparison utilities
brew install findutils      # Collection of GNU find, xargs, and locate
brew install gawk           # GNU awk utility
brew install gnu-indent     # C code prettifier
brew install gnu-sed        # GNU implementation of the famous stream editor
brew install gnu-tar        # GNU version of the tar archiving utility
brew install gnu-time       # GNU implementation of time utility
brew install gnu-which      # GNU implementation of which utility
brew install gnutls         # GNU Transport Layer Security (TLS) Library
brew install ed             # Classic UNIX line editor
brew install grep           # GNU grep, egrep and fgrep
brew install make           # Utility for directing compilation



## Other tools
brew install wget           # Internet file retriever
brew install nano           # Free (GNU) replacement for the Pico text editor

## Other tools
brew install git            # Distributed revision control system
brew install less           # Pager program similar to more
brew install lesspipe       # Input filter for the pager less
brew install zsh            # UNIX shell (command interpreter)

## Extras

brew install \
    cask \                          # Emacs dependency management
    colordiff \                     # Color-highlighted diff(1) output
    dnscrypt-proxy \                # Secure communications between a client and a DNS resolver
    htop \                          # Improved top (interactive process viewer)
    nanorc \                        # Improved Nano Syntax Highlighting Files
    pstree \                        # Show ps output as a tree
    tree \                          # Display directories as trees (with optional color/HTML output)
    zsh-autosuggestions \           # Fish-like fast/unobtrusive autosuggestions for zsh
    zsh-completions \               # Additional completion definitions for zsh
    zsh-history-substring-search \  # Zsh port of Fish shell's history search
    zsh-syntax-highlighting         # Fish shell like syntax highlighting for zsh

brew leaves | xargs -n1 brew desc
