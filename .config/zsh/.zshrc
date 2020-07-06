# Path to your oh-my-zsh installation.
export ZSH="/home/x1zeth2x/.config/oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"

# CCache
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME"/ccache.config
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export YARN_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/yarn/global"

export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export VISUAL=nvim
export GOPATH=$HOME/.local/share/go
export PATH="$PATH:$HOME/Documents/flutter/bin"

HISTFILE="$ZDOTDIR/.zsh_history"

ZSH_THEME="spaceship"

plugins=(
  git
  vi-mode
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

## Aliases
alias rm="rm -i"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

setgaps() {
	if [ -z "$1" ]; then
        	echo "No arguments provided!";
	elif [ "$1" -lt 0 ] || [ "$1" -gt 100 ]; then
        	echo "Value exceeded limits (0-100)";
	else
        	bspc config window_gap "$1"
	fi
}

downloadMusic() {
	youtube-dl -o "%(title)s.%(ext)s" -x -i "$1"
}

# Show that cool pfetch
pfetch

