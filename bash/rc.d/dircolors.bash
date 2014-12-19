if which dircolors > /dev/null; then
    [ "$(uname)" = "SunOS" ] && return
    if [ -r ~/.dircolors ]; then
        eval "$(dircolors -b ~/.dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi
