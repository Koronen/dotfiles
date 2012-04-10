if which hub > /dev/null 2>&1; then
  alias git=hub
  if type compdef > /dev/null; then
    compdef hub=git
  fi
fi
