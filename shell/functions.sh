#!/usr/bin/env bash

dots() {
  cd ~/.dotfiles/ && nvim .
}

nvconf() {
  cd ~/.config/nvim/ && nvim .
}

batman() {
  BAT_THEME="OneHalfDark" command batman "$@"
  return $?
}

function ipv4() {
  dig -4 @resolver1.opendns.com myip.opendns.com A +short
}

function ipv6() {
  dig -6 @resolver1.opendns.com myip.opendns.com AAAA +short
}

function copy() {
  printf "%s" "$*" | tr -d "\n" | pbcopy
}

function yabai_error() {
  btail -f /tmp/yabai_"$USER"\.err.log
}

function yabai_debug() {
  tail -f /tmp/yabai_"$USER"\.out.log
}

function randpass() {
  local len=${1:-32}
  openssl rand -base64 256 | tr -d '\n/+=' | cut -c -"$len"
}

function clipboard() {
  if [ -t 0 ]; then
    pbpaste
  else
    pbcopy
  fi
}

# # vf -> find and open a file in nvim
# function vf() {
#   if [[ $# -eq 0 ]]; then
#     fd -t f | fzf --header "Open File in nvim" --walker-skip=.git,node_modules,target,Library,Pictures,Documents,Music,.Trash --ansi --no-bold --preview "bat --color=always {}" | xargs nvim
#   else
#     fd -t f | fzf --header "Open File in nvim" --walker-skip=.git,node_modules,target,Library,Pictures,Documents,Music,.Trash --ansi --no-bold --preview "bat --color=always {}" -q "$@" | xargs nvim
#   fi
# }

# zle -N vf vf
# bindkey "^[v" vf

# __my_op_plugin_run -> fixes op completion
function __my_op_plugin_run() {
  _op_plugin_run
  for ((i = 2; i < CURRENT; i++)); do
    # shellcheck disable=SC2116,SC2154
    if [[ ${words[i]} == -- ]]; then
      shift $i words
      ((CURRENT -= i))
      _normal
      return
    fi
  done
}

# __load_op_completion -> fixes op completion
function __load_op_completion() {
  completion_function="$(op completion zsh)"
  sed -E 's/^( +)_op_plugin_run/\1__my_op_plugin_run/' <<<"${completion_function}"
}
