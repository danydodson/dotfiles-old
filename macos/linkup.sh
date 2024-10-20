#!/usr/bin/env bash

# shellcheck disable=SC1091
. "${DOTFILES}/macos/helper.sh"

__info_ ' ➡ cruding...'

mkdir -p ~/.config/zsh
cp ~/.dotfiles/zsh/zshrc ~/.zshrc

mkdir -p ~/.ssh
cp ~/.dotfiles/config/ssh/config ~/.ssh/config

touch ~/.hushlogin

mkdir -p ~/.config/alacritty
ln -s -f ~/.dotfiles/config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

mkdir -p ~/.config/atuin
ln -s -f ~/.dotfiles/config/atuin/config.toml ~/.config/atuin/config.toml

mkdir -p ~/.config/git
ln -s -f ~/.dotfiles/config/git/config ~/.config/git/config
cp ~/.dotfiles/config/git/secret ~/.config/git/secret

mkdir -p ~/.config/htop
ln -s -f ~/.dotfiles/config/htop/htoprc ~/.config/htop/htoprc

mkdir -p ~/.config/kitty
ln -s -f ~/.dotfiles/config/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s -f ~/.dotfiles/config/kitty/launch-actions.conf ~/.config/kitty/launch-actions.conf
ln -s -f ~/.dotfiles/config/kitty/open-actions.conf ~/.config/kitty/open-actions.conf

mkdir -p ~/.config/lua
ln -s -f ~/.dotfiles/config/lua/luarocks-5.1.lua ~/.config/lua-5.1.lua

mkdir -p ~/.config/macchina
ln -s -f ~/.dotfiles/config/macchina/macchina.toml ~/.config/macchina/macchina.toml

mkdir -p ~/.config/neofetch
ln -s -f ~/.dotfiles/config/neofetch/config.conf ~/.config/neofetch/config.conf

mkdir -p ~/.config/ranger
ln -s -f ~/.dotfiles/config/ranger/rc.conf ~/.config/ranger/rc.conf

mkdir -p ~/.config/skhd
ln -s -f ~/.dotfiles/config/skhd/skhdrc ~/.config/skhd/skhdrc

mkdir -p ~/.config/tmux
ln -s -f ~/.dotfiles/config/tmux/tmux.conf ~/.config/tmux/tmux.conf

mkdir -p ~/.config/vim
ln -s -f ~/.dotfiles/config/vim/vimrc ~/.config/vim/vimrc

mkdir -p ~/.config/wget
ln -s -f ~/.dotfiles/config/wget/wgetrc ~/.config/wget/wgetrc

mkdir -p ~/.config/wezterm
ln -s -f ~/.dotfiles/config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

mkdir -p ~/.config/yabai
ln -s -f ~/.dotfiles/config/yabai/yabairc ~/.config/yabai/yabairc

mkdir -p ~/.config/yazi
ln -s -f ~/.dotfiles/config/yazi/yazi ~/.config/yazi/yazi

mkdir -P /Applications/code-portable-data
mkdir -p /Applications/code-portable-data/user-data
mkdir -p /Applications/code-portable-data/extensions
