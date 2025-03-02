#! bin/sh

mkdir ~/Screenshots

defaults write com.apple.screencapture location ~/Screenshots

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
