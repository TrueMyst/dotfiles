# -------------------------------
#             Exports
# -------------------------------

# Add Variables
set -x FZF_DEFAULT_OPTS $(cat $HOME/.config/fzf/config)
set -x STARSHIP_CONFIG "$HOME/.config/starship/starship.toml"

# Essentials
set -x LANG "en_US.UTF-8"
set -x TERM "foot-direct"

# Applications
set -x EDITOR "nvim"
set -x BROWSER "firefox"
set -x MANPAGER "nvim +Man!"

# PATH Environment
fish_add_path \
  "$HOME/.local/bin/" \
  "$HOME/.config/scripts/"
