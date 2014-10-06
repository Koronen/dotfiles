export EDITOR='vim'
export GPG_TTY=`tty`
export LESS='-FRX'
export PAGER='less'
export SHELL=`which zsh`
export VISUAL='view'

if [[ "$COLORTERM" == "gnome-terminal" ]]; then
    export TERM="xterm-256color"
fi

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

if [[ -r "$HOME/.zshenv.local" ]]; then
    source "$HOME/.zshenv.local"
fi
