# Path to your oh-my-zsh installation.
export ZSH="/home/x1zeth2x/.config/oh-my-zsh"

HISTFILE=$HOME/.config/zsh_history

ZSH_THEME="spaceship"
#ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git
  vi-mode
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

## Aliases
alias dance="vis"
alias matrix="unimatrix -a -s 90 -f"
alias rm="rm -i"

## Default editor
export VISUAL=nvim
# Set paths for GOlang
export GOPATH=$HOME/.go
# Set paths for AppImages
export APPIMAGE=$HOME/Documents/AppImages
## Pywal
export PATH="${PATH}:${HOME}/.local/bin/"

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

loadVisColors() {
	tac ~/.cache/wal/colors > ~/.config/vis/colors/wal
}

# Show that cool pfetch
pfetch
