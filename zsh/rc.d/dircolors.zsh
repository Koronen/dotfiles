if (( $+commands[dircolors] )); then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi
