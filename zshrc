autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

autoload -z edit-command-line
zle -N edit-command-line

fpath=(
    $HOME/.asdf/completions
    $HOME/.zsh/bundle/zsh-completions/src
    $HOME/.zsh/functions
    $fpath
)
autoload -Uz compinit && compinit -i

bindkey -e
bindkey "^X^E" edit-command-line
bindkey '^[[Z' reverse-menu-complete

source "$HOME/.zsh/bundle/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zsh/bundle/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "$HOME/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

for rcfile in $HOME/.zsh/rc.d/*.zsh; do
    source "$rcfile"
done

path=(.git/safe/../../bin $path)

if [ -r "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi
