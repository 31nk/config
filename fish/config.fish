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
