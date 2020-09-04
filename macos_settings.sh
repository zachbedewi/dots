#!/bin/bash
#
# macos_settings.sh

# Dock Settings
echo "Updating the dock settings ..."

# Disable auto-rearranging spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Turn on auto-hiding
defaults write com.apple.dock autohide -bool true

# Resize the dock
defaults write com.apple.dock tilesize -int 35

# Set show/hide delay
defaults write com.apple.dock autohide-time-modifier -float 0.0
defaults write com.apple.dock autohide-delay -float 0

# Show only active applications
defaults write com.apple.dock static-only -bool true

# Disable showing recent apps
defaults write com.apple.dock show-recents -bool false

killall Dock

echo "Finished updating the dock settings ..."

# Finder Settings
echo "Updating the finder settings ..."

# Show external media
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true

# Show removable media
defaults write com.apple.finder ShowRemovableMediaDesktop -bool true

# Show all file extensions
defaults write -g AppleShowAllExtensions -bool true

# Show full path in finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Make the Library folder visible
chflags nohidden ~/Library

# Expand the save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true

# Show the path bar
defaults write com.apple.finder ShowPathbar -bool true

# Scrollbar visibility
defaults write -g AppleShowScrollBars -string "Always"

# Show the status bar
defaults write com.apple.finder ShowStatusBar -bool true
 
# Use list view by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Finished updating the finder settings ..."

# Input Devices

echo "Updating input device settings ..."

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

echo "Finished updating input device settings ..."
echo "Finished updating the default settings."
