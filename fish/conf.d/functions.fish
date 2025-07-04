# -------------------------------
#            Functions
# -------------------------------

# Change the working directory upon exiting Yazi.
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"

    if set cwd (command cat -- "$tmp"); 
        and [ -n "$cwd" ]; 
        and [ "$cwd" != "$PWD" ]; 
            builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# Get rid of orphan packages if needed
function orphans
    set orphans (pacman -Qdtq)
  
    if test (count $orphans) -eq 0
        echo "No orphan packages found."
    else
        sudo pacman -Rns $orphans
    end
end
