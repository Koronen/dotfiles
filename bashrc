# shellcheck shell=bash

for rcfile in $HOME/.bash/rc.d/*.bash; do
    source "$rcfile"
done

if [ -f "$HOME/.bashrc.local" ]; then
    source "$HOME/.bashrc.local"
fi
