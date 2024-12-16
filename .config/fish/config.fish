if status is-interactive
    # Commands to run in interactive sessions can go here
end


# EXA
alias ls "exa --header --git --icons --long --group-directories-first"
alias tree "exa --tree --level=2  --long --ignore-glob='*node_modules*' --group-directories-first"

# You must call it on initialization or listening to directory switching won't work
load_nvm > /dev/stderr
# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

# Config alias for git bare repository
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
