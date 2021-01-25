#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


ln -s ${BASEDIR}/zshrc ~/.zshrc
ln -s ${BASEDIR}/editorconfig ~/.editorconfig
ln -s ${BASEDIR}/gitconfig ~/.gitconfig
ln -s ${BASEDIR}/Brewfile ~/Brewfile

# ======================================

#!/bin/sh
echo Install xcodeutils…
read -p "Press any key to continue... " -n1 -s
echo  '\n'
xcode-select --install
echo Install Homebrew, and homebrew bundle…
read -p "Press any key to continue... " -n1 -s
echo  '\n'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew tap Homebrew/bundle
echo  '\n'
echo Install bundled software
read -p "Press any key to continue... " -n1 -s
# brew bundle
