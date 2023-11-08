# --------------------------
#        ⚡aliases
# --------------------------

alias zshrc="lvim ~/.zshrc"
alias zmods="lvim ~/.config/zsh/"
alias config="cd ~/.config/"
alias dotfiles="cd ~/dotfiles/"

alias reload="source ~/.zshrc"

alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Reload your Terminal.'"
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Reload your Terminal.'"

alias mirrors="sudo reflector --verbose --latest 10 --protocol https --download-timeout 60 --sort rate --save /etc/pacman.d/mirrorlist"

alias tree="exa --icons --tree --color=always"
alias ls="exa --icons --color=always --grid --group-directories-first"
alias ll="exa --icons --color=always --grid --group-directories-first -F -al"

alias nf="neofetch"
alias nv="lvim"

alias ..="cd ..; ll ."
alias ...="cd ..; cd ..; ll ."

alias cat="bat --theme=gruvbox-dark"

alias cls="clear"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias ff="find . -type f -name $1"
alias grep="grep --color"

alias df="df -h"
alias free="free -m"

alias orphan="sudo pacman -Qtdq | sudo pacman -Rns -"
alias installed="comm -23 <(pacman -Qqe | sort) <({ pacman -Qqg xorg; expac -l '\n' '%E' base; } | sort -u)"

alias pr="paru"
alias lg="lazygit"
alias gitspeed="git fsck"

alias gruvbox="lutgen apply -p gruvbox-dark --lum 0.8 $1"
