# -------------------------------
#             Startup            
# -------------------------------

# Fish VI keybinds
fish_vi_key_bindings

# Cowsay & Fortune
cowsay $(fortune -as)

# Essential Tools
starship init fish | source
zoxide init --cmd cd fish | source

# Virtual Environment for Python
source $HOME/.python-venv/bin/activate.fish
