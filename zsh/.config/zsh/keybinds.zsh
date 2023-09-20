# --------------------------
#        🍘 keymaps
# --------------------------

# Boops
bindkey -v unsetopt beep

# zsh-autosuggestions
bindkey '^[[Z' autosuggest-accept

# zsh-history-substring-search: keys
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# zsh-history-substring-search: vi mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
