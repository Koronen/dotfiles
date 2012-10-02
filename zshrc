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

# Add rbenv to PATH.
if [[ -d "$HOME/.rbenv/bin" ]]; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Source local config.
if [[ -f "${ZDOTDIR:-HOME}/.zshrc.local" ]]; then
  source "${ZDOTDIR:-HOME}/.zshrc.local"
fi
