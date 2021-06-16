#! /usr/bin/env zsh

# Applies system defaults.

printf "%s\n" "System - Disable boot sound effects."
sudo nvram SystemAudioVolume=" "

printf "%s\n" "System - Reveal IP address, hostname, OS version, etc. when clicking login window clock."
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName


printf "%s\n" "System - Disable automatic termination of inactive apps."
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

printf "%s\n" "System - Disable 'Are you sure you want to open this application?' dialog."
defaults write com.apple.LaunchServices LSQuarantine -bool false

printf "%s\n" "System - Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

printf "%s\n" "System - Disable window resume system-wide."
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

printf "%s\n" "System - Disable auto-correct."
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

printf "%s\n" "System - Disable smart quotes (not useful when writing code)."
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

printf "%s\n" "System - Disable smart dashes (not useful when writing code)."
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false


printf "%s\n" "System - Require password immediately after sleep or screen saver begins."
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


printf "%s\n" "System - Avoid creating .DS_Store files on network volumes."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

printf "%s\n" "System - Avoid creating .DS_Store files on network volumes."
sudo mdutil -i off /Volumes/WORK


printf "%s\n" "System - Disable software updates."
sudo softwareupdate --schedule off


printf "%s\n" "Keyboard - Set a fast keyboard repeat rate."
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 15


printf "%s\n" "Dock - Remove all default app icons."
defaults write com.apple.dock persistent-apps -array

printf "%s\n" "Dock - Automatically hide and show."
defaults write com.apple.dock autohide -bool true

printf "%s\n" "Dock - Remove the auto-hiding delay."
defaults write com.apple.dock "autohide-delay" -float 0

printf "%s\n" "Dock - Don’t show Dashboard as a Space."
defaults write com.apple.dock "dashboard-in-overlay" -bool true
