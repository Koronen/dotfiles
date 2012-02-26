#!/usr/bin/zsh

# Load config parts
for f in $HOME/.zsh.d/*.zsh; do
    source "$f";
done

# Load local settings
if [ -f "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi
