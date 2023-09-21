# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] &&
source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# ZSH Plugins
plug "zap-zsh/supercharge"
plug "zap-zsh/vim"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# Source it :)
source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/keybinds.zsh"
