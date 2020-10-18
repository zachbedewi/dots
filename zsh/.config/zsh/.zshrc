# Primary zsh configuration file. This file sets the prompt and handles all 
# other major settings
#
# Author: Zach Bedewi

# Use the Starship prompt
eval "$(starship init zsh)"

# Save zsh history in the cache directory (specified by XDG base directory)
HISTFILE=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history
HISTSIZE=10000
SAVEHIST=10000

# Load the alias file, if it exists
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/aliasrc"

# Set vi mode keybinds for command line editing
bindkey -v
export KEYTIMEOUT=1

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
