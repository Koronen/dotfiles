# shellcheck shell=bash

# shellcheck disable=SC2034
typeset -U CDPATH cdpath

# shellcheck disable=SC2034
typeset -U PATH path

export CDPATH="$HOME/src/github.com"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export SHELL="$(which zsh)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=13'

if [ -z "$SSH_AUTH_SOCK" ] && [ -S "${XDG_RUNTIME_DIR}/openssh_agent" ]; then
  export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/openssh_agent"
fi

for envfile in "$HOME/.config/shenv.d"/*.sh; do
  . "$envfile"
done

if [ -r "$HOME/.zshenv.local" ]; then
  . "$HOME/.zshenv.local"
fi
