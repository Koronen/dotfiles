#
# Executes commands at logout.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source local config.
if [[ -s "${ZDOTDIR:-$HOME}/.zlogout.local" ]]; then
  source "${ZDOTDIR:-$HOME}/.zlogout.local"
fi

