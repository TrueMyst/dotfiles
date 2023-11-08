# --------------------------
#         📜 exports
# --------------------------

export LANG=en_US.UTF-8
export TERM="xterm-256color"

export TERMINAL="alacritty"
export EDITOR="lvim"
export BROWSER="firefox"

export STARSHIP_CONFIG="$HOME/.config/starship.toml"

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Adding PATH(s) to the environment
# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

path=(
    /usr/bin
    /usr/local/bin
    /usr/local/sbin
    $HOME/.local/bin
    $HOME/.local/sbin

    ~/.config/scripts/
    $path)

# Commands-On-Startup
pokemon-colorscripts -r -s --no-title
eval "$(starship init zsh)"
