#!/bin/bash

# Enable color on GNU/Linux systems
if [[ "`uname`" == "Linux" ]]; then
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

source $HOME/.aliases.sh
