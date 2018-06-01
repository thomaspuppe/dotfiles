#!/bin/sh
#echo Install Homebrew and cask
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#brew tap caskroom/cask
#brew install brew-cask

brew install autojump

brew cask install firefox
brew cask install google-chrome
brew cask install alfred
brew cask install dropbox
brew cask install keepassx
brew cask install iterm2
brew cask install slack

brew install node
brew install yarn


echo Install global npm tools
echo ========================
npm install webcoach -g

