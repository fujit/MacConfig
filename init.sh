#!/bin/sh

####################
# MacOS
####################
defaults write com.apple.screencapture name "screenShot"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.dock mcx-expose-disabled -bool true
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.screencapture location ~/Downloads
