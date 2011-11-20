#!/bin/bash

# Some useful aliases (from /usr/share/doc/bash/examples/startup-files/Bash_aliases)
alias texclean='rm -f *.toc *.aux *.log *.cp *.fn *.tp *.vr *.pg *.ky'

# Enable color
if [[ "`uname`" != "SunOS" ]]; then # avoid on s-shell
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls aliases
alias ll='ls -AlhF'
alias l='ls -CF'

# nada printer aliases
alias oops='lprm -'
alias lpview='echo The command you are looking for is called pkview >2!; pkview'

# Misc hacks
alias nano='nano -w'
alias df='df -h'
alias sl='sl -e'

# Handy shorts
alias e='echo'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias trm='rm *~'
alias cls='clear'
function suspend-and-lock { sudo echo && gnome-screensaver-command --lock && sudo pm-suspend; }
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias kthinit='kinit koronen@NADA.KTH.SE'
alias brc='. ~/.bashrc'
alias lockscreen='gnome-screensaver-command --lock'
alias please='sudo'

# Git aliases
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gl="git pull"
alias gh="git log -10 --pretty=\"%C(yellow)%h%Creset|%aN|%Cblue%ar%Creset|%s\""
alias gp="git push"
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gst="git status"

# SVN aliases
#alias sup="svn up"
#alias sco="svn commit"
#alias sd="svn diff"

# Rails aliases
function rsc {
  if [[ -f ./script/console ]]; then
    ./script/console $*;
  else
    rails c $*;
  fi
}
function rss {
  if [[ -f ./script/server ]]; then
    ./script/server $*;
  else
    rails s $*;
  fi
}
alias rssp="rss -e production"
function rsg {
  if [[ -f ./script/generate ]]; then
    ./script/generate $*;
  else
    rails g $*;
  fi
}
alias rdbm="bundle exec rake db:migrate"
alias rcc="bundle exec rake cucumber"
alias rrc="bundle exec rake spec"
