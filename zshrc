# shellcheck shell=bash

autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -z edit-command-line
zle -N edit-command-line

# shellcheck disable=SC2034
typeset -U FPATH fpath

# shellcheck disable=SC2206
fpath=(
  "$HOME/.local/share/zsh/functions"
  "$HOME/.local/share/zsh/completions"
  "$HOME/.zsh/bundle/zsh-completions/src"
  $fpath
)
autoload -Uz compinit && compinit -i

bindkey -e
bindkey "^X^E" edit-command-line
bindkey '^[[Z' reverse-menu-complete

if [ -r /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  . /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

. "$HOME/.zsh/bundle/zsh-history-substring-search/zsh-history-substring-search.zsh"

if [ -r /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  . /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

for rcfile in "$HOME/.zsh/rc.d"/*.zsh; do
  . "$rcfile"
done

if [ -r "$HOME/.zshrc.local" ]; then
  . "$HOME/.zshrc.local"
fi
