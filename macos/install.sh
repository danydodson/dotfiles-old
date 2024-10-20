
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

wget -P $HOME/Downloads https://github.com/g-plane/pnpm-shell-completion/releases/download/v0.5.4/pnpm-shell-completion_aarch64-apple-darwin.zip

./install.zsh $ZSH_CUSTOM/plugins

wget https://www.lua.org/ftp/lua-5.1.5.tar.gz