#!/bin/bash

# path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/fzf/bin:$PATH"
export PATH="$HOME/.docker/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/pnpm:$PATH"
export PATH="$HOME/.local/opt/lua/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="$HOME/.config/go/bin:$PATH"
export PATH="$HOME/.config/bun/bin:$PATH"
export PATH="$HOME/.config/pyenv/shims:$PATH"

# magick
export DYLD_LIBRARY_PATH="opt/homebrew/lib:$DYLD_LIBRARY_PATH"

# fpath
export FPATH="/opt/homebrew/share/zsh/site-functions:$FPATH"
export FPATH="/opt/homebrew/share/zsh/zsh-completions:$FPATH"
