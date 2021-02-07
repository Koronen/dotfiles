export EDITOR='vim'
export ERL_AFLAGS='-kernel shell_history enabled'
export GPG_TTY=$(tty)
export HUSKY_SKIP_INSTALL=1
export KERL_BUILD_DOCS='yes'
export LESS='-FRX'
export PAGER='less'
export SHELL=$(which bash)
export VISUAL='view'

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
    export TERM="xterm-256color"
fi
