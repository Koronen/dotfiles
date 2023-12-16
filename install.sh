#!/bin/sh

set -e

if [ "$CODESPACES" = "true" ]; then
  sudo apt-get update
  sudo apt-get install --yes rcm

  rcup -d . -f
fi
