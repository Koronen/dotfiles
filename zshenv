# shellcheck shell=sh

export SHELL="$(which zsh)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'

for envfile in "$HOME/.config/shenv.d"/*.sh; do
    . "$envfile"
done

if [ -r "$HOME/.zshenv.local" ]; then
    . "$HOME/.zshenv.local"
fi
