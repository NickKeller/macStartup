#setting defaults for Finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder
defaults write com.apple.finder AppleShowAllFiles YES; killall Finder

#Setting defaults for Dock
defaults write com.apple.Dock showhidden -bool TRUE; killall Dock
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock
defaults write com.apple.dock workspaces-edge-delay -float 2.0; killall Dock

#Allowing all apps to be installed
sudo spctl --master-disable;

#installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#homebrew install packages
brew update;
brew install git kubectl htop openssh wget;

