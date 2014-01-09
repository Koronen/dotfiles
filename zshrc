autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

bindkey -e
bindkey '^[[Z' reverse-menu-complete

for rcfile in $HOME/.zsh/rc.d/*.zsh; do
    source "$rcfile"
done

if [[ -r "$HOME/.zshrc.local" ]]; then
    source "$HOME/.zshrc.local"
fi
