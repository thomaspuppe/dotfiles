#!/bin/sh
echo Install Homebrew and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap caskroom/cask
brew install brew-cask

brew install autojump

brew cask install alfred
