#!/usr/bin/env bash
#
# brew.sh
#
# Installs many basic command line programs and applications.

# Stop on errors
set -Eeuo pipefail

# Ask for the admin password
sudo -v

# Keep alive the sudo for the entire script
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew if necessary
if test ! $(which brew); then
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew
brew update

# Upgrade all installed Homebrew packages
brew upgrade

# Command line utilities
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed
brew install stow
brew install tree
brew install tmux
brew install exa
brew install bat
brew install fd
brew install procs
brew install sd
brew install dust
brew install ripgrep
brew install tokei
brew install clementtsang/bottom/bottom
brew install zoxide

# Neovim
brew install neovim

# CTF tools
brew install aircrack-ng
brew install binutils
brew install binwalk
brew install cifer
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpdump
brew install tcpflow
brew install tcpreplay
brew install xz

# Useful utilities
brew install imagemagick
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install webkit2png
brew install zopfli
brew install pandoc

# Quickloop plugins
# brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Applications
brew install --cask firefox
brew install --cask skim
brew install --cask visual-studio-code
brew install --cask alacritty
brew install --cask macdown
brew install --cask virtualbox
