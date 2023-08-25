# shellcheck shell=sh

if ls --color=auto --time-style=long-iso > /dev/null 2>&1; then
    alias ls='ls --color=auto --time-style=long-iso'
fi

alias l='ls'
alias la='ls -aFhl'
alias ll='ls -Fhl'
