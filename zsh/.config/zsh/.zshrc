# Zach's configuration file for zsh
#
# Author: Zach Bedewi

# Use the Starship prompt
eval "$(starship init zsh)"

# Save zsh history in the cache directory (specified by XDG base directory)
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_HOME/zsh/history"

# Load the alias file, if it exists
[ -f "$XDG_CONFIG_HOME/zsh/aliasrc" ] && source "$XDG_CONFIG_HOME/zsh/aliasrc"