# shellcheck shell=sh

if command -v dircolors >/dev/null; then
    if [ -r ~/.config/dircolors ]; then
        eval "$(dircolors -b ~/.config/dircolors)"
    else
        eval "$(dircolors -b)"
    fi
fi
