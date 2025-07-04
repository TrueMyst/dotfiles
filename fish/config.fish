# -------------------------------
#       Fish Configurations
# -------------------------------

# Run commands during startup
if status is-interactive
  source $HOME/.config/fish/startup.fish
end

# Allows Ctrl+F to be available in vim motion
for mode in insert default visual
    bind -M $mode \cf forward-char
end

# Source the modules in conf.d
for modules in $HOME/.config/fish/conf.d/*.fish
    source $modules
end
