# Load dircolors.
if [[ -x /usr/bin/dircolors ]]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

source $HOME/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($HOME/.zsh/bundle/zsh-completions/src $fpath)
autoload -Uz compinit && compinit -i

fpath=($HOME/.zsh/functions.d $fpath)
autoload -Uz promptinit && promptinit
prompt koronen

source $HOME/.aliases.sh

# Allow redirection to overwrite files.
setopt CLOBBER

# Source local config.
if [[ -s "${ZDOTDIR:-$HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-$HOME}/.zshrc.local"
fi
