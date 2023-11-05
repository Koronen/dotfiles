# shellcheck shell=sh

export SHELL=$(which zsh)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'

. "$HOME/.shenv"

if [ -r "$HOME/.zshenv.local" ]; then
    . "$HOME/.zshenv.local"
fi
