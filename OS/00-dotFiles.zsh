#! /usr/bin/env zsh

### Retrieve and use dot files

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Onfroygmx/.zshBigSur/master/.dot/install.zsh)"




# Clone bare repository localy
git clone --bare https://github.com/Onfroygmx/dotgit.git ~/.dotgit

# Checkout files
git --git-dir=$HOME/.dotzsh --work-tree=$HOME checkout
git --git-dir=$HOME/.dotzsh --work-tree=$HOME config --local status.showUntrackedFiles no

find /path/to/base/dir -type d -print0 | xargs -0 chmod 755
find /path/to/base/dir -type f -print0 | xargs -0 chmod 644

# Kill All Terminal Process
killall Terminal


# Clone bare repository localy
git clone https://github.com/Onfroygmx/.dotmac.git .dot
mv .dot/.git .
find .dot -type d -print0 | xargs -0 chmod 700
mv .git .dot
source .dot/zsh/.zshenv
