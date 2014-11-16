autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -z edit-command-line
zle -N edit-command-line

bindkey -e
bindkey "^X^E" edit-command-line
bindkey '^[[Z' reverse-menu-complete

for rcfile in $HOME/.zsh/rc.d/*.zsh; do
    source "$rcfile"
done

if [[ -r "$HOME/.zshrc.local" ]]; then
    source "$HOME/.zshrc.local"
fi
