# General
alias ..='cd ..'
alias ack='ack-grep'
alias dbus-suspend='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
alias pag='ps aux | grep -i'
alias trm='rm -f **/*~'
alias up='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'

# Git
alias g='git'

# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'
alias gbl='git branch -v'
alias gbL='git branch -av'
alias gbx='git branch -d'
alias gbX='git branch -D'

# Commit (c)
alias gc='git commit --verbose'
alias gco='git checkout'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcF='git commit --amend --verbose'
alias gcs='git show'

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gff='git pull --ff-only'
alias gfm='git pull'
alias gfr='git pull --rebase'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias gid='git diff --no-ext-diff --cached'

# Log (l)
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias glG='git log --graph --oneline --decorate'
alias glp='git log --patch'

# Merge (m)
alias gm='git merge'
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpc='git push --set-upstream origin `git symbolic-ref HEAD 2> /dev/null | sed -e "s/refs\/heads\///"`'
alias gpf='git push --force'

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias grs='git rebase --skip'

# Remote (R)
alias gR='git remote'
alias gRl='git remote --verbose'
alias gRp='git remote prune'

# Stash (s)
alias gs='git stash'
alias gsp='git stash pop'
alias gsx='git stash drop'

# Working Copy (w)
alias gwd='git diff --no-ext-diff'
alias gwR='git reset --hard'
alias gws='git status --short'
alias gwS='git status'

# grep
if [[ "`uname`" != "SunOS" ]]; then
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# ls
if [[ "`uname`" != "SunOS" ]]; then
    alias ls='ls --color=auto --time-style=long-iso'
fi
alias la='ls -aFhl'
alias ll='ls -AFhl'

# Ruby
alias rbb='bundle'
alias rbbe='bundle exec'

# Ruby on Rails
alias rorc='bundle exec rails console'
alias rordm='bundle exec rake db:migrate'
alias rors='bundle exec rails server'

# vim
alias v='vim'
