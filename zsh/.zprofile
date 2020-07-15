#!/bin/zsh

# This file will be run every time the shell is logged into. The primary
# purpose of this file is to set environmental variables.
#
# Author: Zach Bedewi

# Adds the 'gnubin' directory to the PATH so that the GNU coreutils will be
# prioritized over MacOS utilities
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# Set the default programs
export EDITOR="/usr/local/bin/nvim"
export TERMINAL="/usr/local/bin/kitty"

# Set the variables that will be used to follow the XDG base directory 
# specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Use the XDG base directory specification when applicable
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
