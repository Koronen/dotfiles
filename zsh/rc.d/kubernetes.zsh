if command -v kubectl > /dev/null; then
    source <(kubectl completion zsh)
fi

if command -v kops > /dev/null; then
    source <(kops completion zsh)
fi
