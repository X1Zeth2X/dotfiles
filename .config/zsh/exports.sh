#!/usr/bin/sh

export VISUAL=nvim

# Path to your oh-my-zsh installation.
export ZSH="/home/x1zeth2x/.config/oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"

# CCache
export CCACHE_CONFIGPATH="$XDG_CONFIG_HOME"/ccache.config
export CCACHE_DIR="$XDG_CACHE_HOME"/ccache

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

# Export binaries
export PATH="$PATH:$HOME/.yarn/bin"
export GOPATH=$HOME/.local/share/go
