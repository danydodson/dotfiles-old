#!/bin/bash

export EDITOR="nvim"
export VISUAL="nvim"

export DOTFILES="$HOME/.dotfiles"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZSH="$HOME/.config/omz"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
export ZSH_CUSTOM="$XDG_CONFIG_HOME/omz/custom"

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_BUNDLE_FILE_GLOBAL="$DOTFILES/macos/brewfile"

export OP_BIOMETRIC_UNLOCK_ENABLED=true
export SSH_AUTH_SOCK="$HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock"

export AWS_HOME="$XDG_CONFIG_HOME/aws"
export AWS_ECR_CACHE_DIR="$XDG_CACHE_HOME/ecr"

export GOPATH="$XDG_CONFIG_HOME/go"
export CARGO_HOME="$XDG_CONFIG_HOME/cargo"
export RUSTUP_HOME="$XDG_CONFIG_HOME/rust"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/config"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export BUN_INSTALL="$XDG_CONFIG_HOME/bun"
export DENO_INSTALL="$XDG_CONFIG_HOME/deno"
export YARN_CACHE_FOLDER="$XDG_CACHE_HOME/yarn"

export PYENV_ROOT="$XDG_CONFIG_HOME/pyenv"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"
export RBENV_ROOT="$XDG_DATA_HOME/rbenv"
export FLY_CONFIG_DIR="$XDG_CONFIG_HOME/fly"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export BAT_CONFIG_PATH="$DOTFILES/config/bat/bat.conf"
export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/readline/inputrc"

LD1="$HOME/.local/opt/lua/share/lua/5.1/?.lua"
LD2="$HOME/.local/opt/lua/share/lua/5.1/?/init.lua"
export LUA_PATH="$LUA_PATH:$LD1:$LD2"
export LUAROCKS_CONFIG="$HOME/.config/lua/luarocks-5.1.lua"
export LUA_CPATH="$HOME/.local/opt/lua/lib/lua/5.1/?.so"
