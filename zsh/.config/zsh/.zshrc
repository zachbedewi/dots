# .zshrc
#
# Sources files and sets up the zsh environment.

# Save zsh history in the cache directory (specified by XDG base directory)
HISTFILE=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history
HISTSIZE=10000
SAVEHIST=10000

# Load the alias file, if it exists
if [[ -f "${XDG_CONFIG_HOME}/zsh/aliasrc" ]]; then
    source "${XDG_CONFIG_HOME}/zsh/aliasrc"
fi

# Source zsh syntax highlighting plugin if it exists
if [[ -f "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
    source "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Set vi mode keybinds for command line editing
bindkey -v
export KEYTIMEOUT=1

# Use the Starship prompt
eval "$(starship init zsh)"
