#!/bin/sh

set -e

if [ "$CODESPACES" = "true" ]; then
  export DOTFILES_DIRS="$(pwd)"
  export RCRC="${DOTFILES_DIRS}/host-codespace/rcrc"
elif [ "$REMOTE_CONTAINERS" = "true" ]; then
  export RCRC="$HOME/.dotfiles/host-remote-container/rcrc"
else
  echo "Unsupported environment" >&2
  exit 1
fi

if [ "$(id -u)" = 0 ]; then
  sudo=""
else
  sudo=sudo
fi

$sudo env DEBIAN_FRONTEND=noninteractive apt-get update
$sudo env DEBIAN_FRONTEND=noninteractive apt-get install --yes git rcm

rcup -f -v
