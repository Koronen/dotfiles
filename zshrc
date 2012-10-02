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

# Load dircolors
if [[ -x /usr/bin/dircolors ]]; then
    test -r $HOME/.dircolors && eval "$(dircolors -b $HOME/.dircolors)" || eval "$(dircolors -b)"
fi

# Source local config.
if [[ -f "${ZDOTDIR:-HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-HOME}/.zshrc.local"
fi
