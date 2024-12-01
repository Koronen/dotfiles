# shellcheck shell=sh

alias dip='cat $HOME/.docker/images.txt | xargs -L 1 --no-run-if-empty docker pull'
