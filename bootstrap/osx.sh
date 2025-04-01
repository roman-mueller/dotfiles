#!/bin/sh
# Run once on a new Mac

defaults write com.apple.Terminal "Default Window Settings" "Pro"
defaults write com.apple.Terminal "Startup Window Settings" "Pro"

defaults write com.apple.terminal SecureKeyboardEntry -bool true
defaults write com.apple.Terminal ShowLineMarks -bool false
defaults write com.apple.Terminal shellExitAction -int 0
defaults write com.apple.Terminal useOptionAsMetaKey -bool true 
defaults write com.apple.Terminal StrictVTKeypad -bool false 

defaults read com.apple.Terminal

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# hot corner, top right lock screen
defaults write com.apple.dock wvous-tr-corner -int 5 
defaults write com.apple.dock wvous-tr-modifier -int 0
# bottom right, mission control
defaults write com.apple.dock wvous-br-corner -int 2
defaults write com.apple.dock wvous-br-modifier -int 0

# disable showing the language next to the cursor if keyboard language is changed
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled 0
