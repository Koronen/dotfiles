#!/bin/sh

set -e

if [ "$CODESPACES" = "true" ]; then
  # shellcheck disable=SC2155
  export DOTFILES_DIRS="$(pwd)"
  export RCRC="${DOTFILES_DIRS}/rcrc"

  sudo env DEBIAN_FRONTEND=noninteractive apt-get update
  sudo env DEBIAN_FRONTEND=noninteractive apt-get install --yes \
    git \
    rcm \
    shellcheck \
    yamllint

  rcup -f
else
  echo "Unsupported environment" >&2
  exit 1
fi
