autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -z edit-command-line
zle -N edit-command-line

bindkey -e
bindkey "^X^E" edit-command-line
bindkey '^[[Z' reverse-menu-complete

source "$HOME/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.zsh/bundle/zsh-history-substring-search/zsh-history-substring-search.zsh"

for rcfile in $HOME/.zsh/rc.d/*.zsh; do
    source "$rcfile"
done

path=(.git/safe/../../bin $path)

if [ -r "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi
