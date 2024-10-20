#!/usr/bin/env bash

# unalias -a

# sudo
alias se='sudo -e'
alias root='sudo -s'

# source .zshrc
alias src='source ~/.zshrc'

# nvim
alias v='vim'
alias nv='nvim'

# codium
alias codium="codium --user-data-dir \$HOME/.config/vscode-oss"

# packages
alias n='npm'
alias pn='pnpm'

# list packages
alias lsg-npm='npm ls -g --depth 0'
alias lsg-yarn='yarn global list'
alias lsg-bun='bun pm ls --global'
alias lsg-pnpm='pnpm ls -g'

# rm quarintine
alias rmqar="xattr -dr com.apple.quarantine"

# curl
alias curl='curl --silent'

# wget
alias wget="wget --config=\$HOME/.dotfiles/config/wget/wgetrc --no-check-certificate"

# bat
alias cat='bat'
alias man='batman'
alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# brew
alias b='brew'
alias bbu='b update && b upgrade && b autoremove && b cleanup --prune=all -s'

# brew bundle
alias bb='brew bundle'
alias bbdump="bb dump -f --file=\$HOME/.dotfiles/macos/brewfile"
alias bbinstall="bb install --file=\$HOME/.dotfiles/macos/brewfile"
alias bbclean="bb cleanup --file=\$HOME/.dotfiles/macos/brewfile"
alias bbcheck="bb check --file=\$HOME/.dotfiles/macos/brewfile"

# tools
alias r='ranger'
alias top='sudo htop'
alias neo='neofetch'
alias uuid='uuidgen'
alias ping='prettyping --nolegend -Anc 5 1.1.1.1'

# ls
alias ls='/opt/homebrew/bin/gls --color=auto --human-readable --group-directories-first'
alias la='ls -A'
alias ll='ls -lAh'
alias l='ls -lh'

# afk
alias afk="/System/Library/CoreServices/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# pub key
alias sshkeygen='ssh-keygen -o -a 100 -t ed25519'
alias pubkey='more ~/.config/ssh/id_ed25519.pub | pbcopy | echo "=> Public key copied to pasteboard."'

# paths
alias fpath='echo -e ${FPATH//:/\\n}'
alias path='echo -e ${PATH//:/\\n}'

# spotlight on/off
alias spot_off='sudo mdutil -a -i off'
alias spot_on='sudo mdutil -a -i on'

# launch apps
alias ios='open -a Simulator.app'
alias xcode='open -a Xcode.app'
alias mon_icloud="brctl monitor com.apple.CloudDocs | grep %"
alias chrome-dev='open -a "Google Chrome" --args --remote-debugging-port=9229'

# show pkgs
alias sys-pl='pkgutil --pkgs'

# show scutil info
alias sys-cpu='sysctl -n machdep.cpu.brand_string'
alias sys-get-computername='scutil --get ComputerName'
alias sys-get-localhostname='scutil --get LocalHostName'
alias sys-get-hostname='scutil --get HostName'
alias sys-get-dns='scutil --dns'
alias sys-get-proxy='scutil --proxy'
alias sys-get-network-interface='scutil --nwi'

# show network location
alias sys-uti-file='mdls -name kMDItemContentTypeTree '

# launch services register
alias lsregister='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister'
