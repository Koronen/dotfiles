if command -v kubectl > /dev/null; then
    # shellcheck source=/dev/null
    source <(kubectl completion bash)
fi

if command -v kops > /dev/null; then
    # shellcheck source=/dev/null
    source <(kops completion bash)
fi
