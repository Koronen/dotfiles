if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    source /etc/bash_completion
fi

if command -v gh > /dev/null; then
    eval "$(gh completion --shell bash)"
fi
