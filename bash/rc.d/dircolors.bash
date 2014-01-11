if which dircolors > /dev/null; then
    [[ "`uname`" == "SunOS" ]] && return
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi
