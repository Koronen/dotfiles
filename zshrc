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
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias kthinit='kinit koronen@NADA.KTH.SE'
alias tails='tail -f'
alias ack='ack-grep'


# Source local config.
if [[ -s "${ZDOTDIR:-HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-HOME}/.zshrc.local"
fi
