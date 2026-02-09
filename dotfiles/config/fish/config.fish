if status is-interactive
# Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2026-02-08 13:51:45
set PATH $PATH /home/pmartins/.local/bin

pyenv init - | source

starship init fish | source

function fish_greeting
    echo Hello $USER!
    echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
end
