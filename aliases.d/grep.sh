# shellcheck shell=sh

if [ "$(uname)" = "Linux" ]; then
  alias grep='grep --color=auto'
  alias egrep='egrep --color=auto'
fi
