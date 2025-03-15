# shellcheck shell=bash

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ -n "$SSH_CONNECTION" ] || [ "$TERM" = "linux" ]; then
  . "$HOME/.bashrc"
fi
