# shellcheck shell=sh

export EDITOR='vim'
export ERL_AFLAGS='-kernel shell_history enabled'
export GATSBY_TELEMETRY_DISABLED=1
export GPG_TTY=$(tty)
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HUSKY_SKIP_INSTALL=1
export KERL_BUILD_DOCS='yes'
export LESS='-FRX'
export NEXT_TELEMETRY_DISABLED=1
export PAGER='less'
export SHELL=$(which zsh)
export STORYBOOK_DISABLE_TELEMETRY=1
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
