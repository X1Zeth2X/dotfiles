# Source ZSH exports.
. $ZDOTDIR/exports.sh

HISTFILE="$ZDOTDIR/zsh_history"

ZSH_THEME="spaceship"

plugins=(
  git
  vi-mode
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

## Aliases
alias rm="rm -i"
alias downloadMusic="~/Documents/Scripts/download-music.sh"
alias setGaps="~/Documents/Scripts/set-gaps.sh"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Show that cool pfetch
pfetch

[ -f ~/.config/fzf.zsh ] && source ~/.config/fzf.zsh
