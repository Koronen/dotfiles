# shellcheck shell=bash

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  source /etc/bash_completion
fi

if command -v asdf >/dev/null && [ "$(command -v asdf)" != "$HOME/.asdf/bin/asdf" ]; then
  # shellcheck source=/dev/null
  source <(asdf completion bash)
fi

if command -v gh >/dev/null; then
  eval "$(gh completion --shell bash)"
fi

if command -v kubectl >/dev/null; then
  # shellcheck source=/dev/null
  source <(kubectl completion bash)
fi
