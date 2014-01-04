# Load dircolors.
if [[ -x /usr/bin/dircolors ]]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

source $HOME/.zsh/bundle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add some aliases.
alias zrc='source ~/.zshrc'
alias trm='rm -f **/*~'
alias up='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias kthinit='kinit koronen@NADA.KTH.SE'
alias tails='tail -f'
alias ack='ack-grep'
alias dbus-suspend='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend'

alias pbcopy='xclip -i -sel clip'
alias pbpaste='xclip -o -sel clip'

alias gbd='git diff $(git merge-base master HEAD)..HEAD'
alias gff='git pull --ff-only'
alias glh='git graph'
alias glH='git graph --all'

# Update some aliases.
alias gc='git commit -v'

# Allow redirection to overwrite files.
setopt CLOBBER

# Source local config.
if [[ -s "${ZDOTDIR:-$HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-$HOME}/.zshrc.local"
fi
