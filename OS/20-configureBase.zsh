#

# Check shell used at the moment
dscl . -read /Users/$USER UserShell

# Force use of homebrew zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

dscl . -read /Users/$USER UserShell

# Ensure all installed packages are owned by user
sudo chown -R $(whoami):admin /usr/local
