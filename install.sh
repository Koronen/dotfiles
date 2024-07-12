#!/bin/sh

set -e

if [ "$CODESPACES" = "true" ]; then
  # shellcheck disable=SC2155
  export DOTFILES_DIRS="$(pwd)"
  export RCRC="${DOTFILES_DIRS}/host-codespace/rcrc"

  sudo env DEBIAN_FRONTEND=noninteractive apt-get update
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --yes git rcm

  rcup -f -v
elif [ "$REMOTE_CONTAINERS" = "true" ]; then
  export RCRC="$HOME/.dotfiles/host-remote-container/rcrc"

  sudo env DEBIAN_FRONTEND=noninteractive apt-get update
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --yes git rcm

  rcup -f -v
else
  echo "Unsupported environment" >&2
  exit 1
fi
