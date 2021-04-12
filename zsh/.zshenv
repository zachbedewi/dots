# .zshenv
#
# Sets environment variables.

# XDG Base Directory Specification
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_CACHE_HOME="$HOME/.cache"

# Use the XDG Base Directory Specification for apps without native support
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

source "$HOME/.cargo/env"
