#!/usr/bin/env bash
#
# zsh.sh
#
# Uses Homebrew to install the newest version of zsh and all of the dependencies
# needed for this zsh configuration and then installs the configuration.

# Stop on errors
set -Eeuo pipefail

# Ask for the admin password (necessary for changing shell)
sudo -v

# Keep the sudo active until the script finishes
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install homebrew is not already installed
if test ! $(which brew); then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update

# Install the newest version of zsh
echo "----------------------------------------"
echo "Installing zsh"
echo "----------------------------------------"
brew install zsh
sudo bash -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh

# Install all of the zsh dependencies
echo "----------------------------------------"
echo "Installing zsh dependencies"
echo "----------------------------------------"

brew install zsh-syntax-highlighting
brew install starship

# Install the zsh configuration
stow -v 1 -t ~ "zsh"
