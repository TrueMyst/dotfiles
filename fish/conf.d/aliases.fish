# -------------------------------
#             Aliases
# -------------------------------

# Essentials
alias cls "clear"
alias reload "source $HOME/.config/fish/config.fish"

# Pacman-Related
alias packages "paru -Qqe | sort | bat"
alias pacman-fix "rm /var/lib/pacman/db.lck"

# Mirrors
alias mirrors "sudo reflector --verbose --latest 10 \
              --protocol https --download-timeout 60 \
              --sort rate --save /etc/pacman.d/mirrorlist"

# CD Paths
alias ..  "cd .."
alias ... "cd ../.."

# Eza
alias ls "exa -x --icons --group-directories-first"
alias ll "exa -lah --icons --group-directories-first"
alias tree "exa -T --icons"

# Tools
alias nv "nvim"
alias cn "catnap"
alias lg "lazygit"
alias np "ncmpcpp"

# Bat Tools
alias bg "batgrep -C=0 --no-separator"

# Abbreviations
abbr -a --position anywhere -- --help "--help | bat -plhelp"
