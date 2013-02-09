#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load dircolors.
if [[ -x /usr/bin/dircolors ]]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

# Add some aliases.
alias zrc='source ~/.zshrc'
alias trm='rm *~'
alias up='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'
alias kthinit='kinit koronen@NADA.KTH.SE'
alias tails='tail -f'
alias ack='ack-grep'

alias pbcopy='xclip -i -sel clip'
alias pbpaste='xclip -o -sel clip'

# Update some aliases.
alias gc='git commit -v'

# Remove some aliases.
unalias rm

# Allow redirection to overwrite files.
setopt CLOBBER

# Source local config.
if [[ -s "${ZDOTDIR:-HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-HOME}/.zshrc.local"
fi
