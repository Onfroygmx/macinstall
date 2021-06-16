#! /usr/bin/env zsh

# Applies application defaults.

printf "%s\n" "Finder - Show the $HOME/Library folder."
chflags nohidden $HOME/Library

printf "%s\n" "Finder - Show hidden files."
defaults write com.apple.finder AppleShowAllFiles -bool true

printf "%s\n" "Finder - Show filename extensions."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "%s\n" "Finder - Disable the warning when changing a file extension."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "%s\n" "Finder - Show path bar."
defaults write com.apple.finder ShowPathbar -bool true

printf "%s\n" "Finder - Show status bar."
defaults write com.apple.finder ShowStatusBar -bool true

printf "%s\n" "Finder - Use list view in all Finder windows."
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

printf "%s\n" "Finder - Allow quitting via COMMAND+Q -- Doing so will also hide desktop icons."
defaults write com.apple.finder QuitMenuItem -bool true

printf "%s\n" "Finder - Disable the warning before emptying the Trash."
defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "%s\n" "Finder - Allow text selection in Quick Look."
defaults write com.apple.finder QLEnableTextSelection -bool true


printf "%s\n" "Safari - Disable sending search queries to Apple.."
defaults write com.apple.Safari UniversalSearchEnabled -bool false


printf "%s\n" "TextEdit - Use plain text mode for new documents."
defaults write com.apple.TextEdit RichText -int 0

printf "%s\n" "TextEdit - Open and save files as UTF-8 encoding."
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


printf "%s\n" "Disk Utility - Enable debug menu."
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true


printf "%s\n" "Time Machine - Prevent prompting to use new hard drives as backup volume."
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true


printf "%s\n" "Game Center - Disable Game Center."
defaults write com.apple.gamed Disabled -bool true
