if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias lvim="~/.local/bin/lvim"

pyenv init - | source

starship init fish | source

function fish_greeting
    echo Hello $USER!
    fortune brasil
    echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
end

alias config='/usr/bin/git --git-dir=/home/pmartins/.dotfiles/ --work-tree=/home/pmartins'
