# --------------------------
#        ⚡aliases
# --------------------------

alias zshrc="lvim ~/.zshrc"
alias zmods="lvim ~/.config/zsh/"

alias reload="source ~/.zshrc"

alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Reload your Terminal.'"
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Reload your Terminal.'"

alias mirrors="sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"

alias tree="exa --icons --tree --color=always"
alias ls="exa --icons --color=always --grid --group-directories-first"
alias ll="exa --icons --color=always --grid --group-directories-first -F -al"

alias nf="neofetch"
alias nvim="lvim"

alias ..="cd ..; ll ."
alias ...="cd ..; cd ..; ll ."

alias cat="bat"

alias cls="clear"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias df="df -h"
alias free="free -m"

alias pr="paru"
