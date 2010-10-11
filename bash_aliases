#!/bin/bash

# enable color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls aliases
alias ll='ls -lh'
alias la='ls -alh'
alias lA='ls -Alh'

# misc hacks
alias nano='nano -w'
alias df='df -h'

# handy shorts
alias ..='cd ..'
alias e='editor'
alias trm='rm *~'
function lsd { cd $*; ls -aF; }
function suspend-and-lock { sudo su -c 'gnome-screensaver-command --lock && pm-suspend'; }

# various shell-fu
alias unixtime='date +%s'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias gen8Bpasswd='< /dev/urandom tr -dc A-Za-z0-9_ | head -c8 && echo'
alias utop='top -u $(whoami)'

