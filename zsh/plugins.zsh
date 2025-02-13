#!/bin/zsh

# omz plugins
plugins+=(
  brew
  git
  pnpm-shell-completion
  zsh-syntax-highlighting
  zsh-history-substring-search
)

# extra zsh completions
source ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/zsh-completions.plugin.zsh
source ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions-zchee/zsh-completions.plugin.zsh

# source omz
source $HOME/.config/omz/oh-my-zsh.sh

# add colors
if [ -f "/opt/homebrew/bin/gdircolors" ]; then
  eval "$(gdircolors -b "${DOTFILES}"/config/dircolors/dircolors)"
fi

# start ssh-agent
eval "$(ssh-agent -s)" >/dev/null 2>&1

# load op
eval "$(op completion zsh)"
eval "$(__load_op_completion)"
compdef _op op

# load cargo
[[ ! -f $HOME/.config/cargo/env ]] || . $HOME/.config/cargo/env

# load pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
# shell history
eval "$(atuin init zsh)"

# fzf -> get completions
source /opt/homebrew/opt/fzf/shell/completion.zsh

# fzf -> get key bindings
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

# unset to avoid conflicts
unset FZF_DEFAULT_COMMAND

# fzf -> default options
export FZF_DEFAULT_OPTS="\
  --walker-skip=.git,node_modules,target,Library,Pictures,Documents,Music,.Trash \
  --bind 'ctrl-space:toggle' \
  --bind 'ctrl-o:toggle-preview' \
  --bind 'ctrl-s:toggle-sort' \
  --border=rounded\
  --layout=reverse \
  --info=right \
  --no-scrollbar \
  --highlight-line \
  --margin=1,3 \
  --padding=1,1 \
  --literal \
  --no-hscroll \
  --height=60% \
  --prompt='> ' \
  --ellipsis=' ...' \
  --tac \
  --ansi "

# fzf -> all types
export FZF_CTRL_T_OPTS="\
  --header='Fuzzy Searching...' \
  --walker=file \
  --preview 'bat -n --color=always {}' | xargs nvim"

# fzf -> just dirs
export FZF_ALT_C_OPTS="\
  --header='Go to Directory' \
  --walker=dir,hidden,follow \
  --preview 'tree -C {} | head -200'"

# magick
export DYLD_LIBRARY_PATH="opt/homebrew/lib:$DYLD_LIBRARY_PATH"

# load iterm shell integration
test -e $HOME/.config/zsh/.iterm2_shell_integration.zsh && source $HOME/.config/zsh/.iterm2_shell_integration.zsh || true

# zsh -> completion options
autoload -U compinit && compinit

# de-dupe $PATH
typeset -U path
typeset -U fpath
