#!/bin/bash

# Enable color
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls aliases
alias ll='ls -lh'
alias la='ls -alh'
alias lA='ls -Alh'

# some more ls aliases
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so: 'sleep 10; alert'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Misc hacks
alias nano='nano -w'
alias df='df -h'

# Handy shorts
alias ..='cd ..'
alias trm='rm *~'
function lsd { cd $*; ls -aF; }
#function suspend-and-lock { sudo su -c 'gnome-screensaver-command --lock && pm-suspend'; }

# Git aliases
alias gst="git status"
alias gco="git commit -v"
#alias gca="git commit -v -a"
#alias ga="git add"
#alias gb="git branch"
#alias gd="git diff"
#alias gco="git checkout"
#alias gr="git rm"
#alias gp="git push"

# SVN aliases
#alias sup="svn up"
#alias sco="svn commit"
#alias sd="svn diff"

# Rails aliases
alias rsc="script/console"
alias rss="script/server"
#alias ssd="script/server --debugger"
#alias sg="script/generate"
#alias sp="script/plugin"
alias rdbm="rake db:migrate"
#alias fl="rake db:fixtures:load"
#alias prepare="RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && RAILS_ENV=test rdm"
#alias cpd="cap deploy"

# Misc Shell-Fu
alias unixtime='date +%s'
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias gen8Bpasswd='< /dev/urandom tr -dc A-Za-z0-9_ | head -c8 && echo'
alias utop='top -u $(whoami)'

