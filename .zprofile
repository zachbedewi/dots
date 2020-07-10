#!/bin/zsh

# This file will run on login to the shell. Environmental variables are set in
# this file.
#
# Author: Zach Bedewi

# Set the default programs
export EDITOR="/usr/local/bin/nvim"
export TERMINAL="/usr/local/bin/kitty"

# Set the variable that will be used to follow the XDG base directory 
# specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Use the XDG base directory specification for programs that can use it
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"