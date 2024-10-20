#!/bin/zsh

DEFAULT_USER=$(whoami)

# consistent colouring
export CLICOLOR=1

ZSH_THEME="powerlevel10k/powerlevel10k"

# instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.config/cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.config/cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# run -> p10k configure
[[ ! -f ~/.dotfiles/prompt/p10k.zsh ]] || source ~/.dotfiles/prompt/p10k.zsh

# completion dump
zcompdump="${ZDOTDIR:-$HOME/.config/zsh}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
  zcompile "$zcompdump"
fi

