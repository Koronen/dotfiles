if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  source /etc/bash_completion
fi

if command -v asdf >/dev/null; then
  source <(asdf completion bash)
fi

if command -v gh >/dev/null; then
  eval "$(gh completion --shell bash)"
fi

if command -v kubectl >/dev/null; then
  source <(kubectl completion bash)
fi

if command -v sops >/dev/null; then
  source <(sops completion bash)
fi
