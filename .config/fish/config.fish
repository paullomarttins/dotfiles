if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias lvim="~/.local/bin/lvim"

pyenv init - | source

starship init fish | source

alias bundler="~/.local/share/gem/ruby/3.4.0/bin/bundler"

function fish_greeting
    echo Hello $USER!
    fortune brasil
    echo The time is (set_color yellow; date +%T; set_color normal) and this machine is called $hostname
end

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
