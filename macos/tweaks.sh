#! bin/sh

mkdir ~/Screenshots

defaults write com.apple.screencapture location ~/Screenshots

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
