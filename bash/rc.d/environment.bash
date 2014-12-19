export EDITOR='vim'
export GPG_TTY=$(tty)
export LESS='-FRX'
export PAGER='less'
export SHELL=$(which bash)
export VISUAL='view'

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
    export TERM="xterm-256color"
fi
