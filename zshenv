# shellcheck shell=sh

export SHELL=$(which zsh)
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'

source "$HOME/.shenv"

if [ -r "$HOME/.zshenv.local" ]; then
    source "$HOME/.zshenv.local"
fi
