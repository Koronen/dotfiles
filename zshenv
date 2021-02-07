export EDITOR='vim'
export ERL_AFLAGS='-kernel shell_history enabled'
export GPG_TTY=$(tty)
export HUSKY_SKIP_INSTALL=1
export KERL_BUILD_DOCS='yes'
export LESS='-FRX'
export PAGER='less'
export SHELL=$(which zsh)
export VISUAL='view'
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'

if [ "$COLORTERM" = "gnome-terminal" ]; then
    export TERM="xterm-256color"
fi

if [ -z "$LANG" ]; then
    export LANG='en_US.UTF-8'
fi

if [ -r "$HOME/.zshenv.local" ]; then
    source "$HOME/.zshenv.local"
fi
