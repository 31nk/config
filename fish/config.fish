if status is-interactive
    # Commands to run in interactive sessions can go here
end

#init starship
starship init fish | source

#enable mouse mode 
function enable_mouse_mode
    echo -ne "\e[?1000h"
end

# set termianl to foot and editor to nvim 
set -x TERMINAL foot
set -x EDITOR nvim
set -x VISUAL nvim

# define a function to run Commands

#change direcotry to ~/.config
function cdc
    cd ~/.config/
end

#git push orirgin main 
function gpom
    git push origin main
end

#update packages and system
function update
    sudo pacman -Syu && yay
end
