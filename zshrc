# shellcheck shell=bash

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -z edit-command-line
zle -N edit-command-line

# shellcheck disable=SC2034
typeset -U FPATH fpath
typeset -U PATH path

# shellcheck disable=SC2206
fpath=(
  "$HOME/.zsh/functions"
  "$HOME/.zsh/bundle/zsh-completions/src"
  $fpath
)
autoload -Uz compinit && compinit -i

bindkey -e
bindkey "^X^E" edit-command-line
bindkey '^[[Z' reverse-menu-complete

. "$HOME/.zsh/bundle/zsh-autosuggestions/zsh-autosuggestions.zsh"
. "$HOME/.zsh/bundle/zsh-history-substring-search/zsh-history-substring-search.zsh"
. "$HOME/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

for rcfile in "$HOME/.zsh/rc.d"/*.zsh; do
  . "$rcfile"
done

# shellcheck disable=SC2206
path=(
  "$HOME/.asdf/shims"
  $path
)

if [ -r "$HOME/.zshrc.local" ]; then
  . "$HOME/.zshrc.local"
fi
