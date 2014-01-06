alias ..='cd ..'
alias ack='ack-grep'
alias dbus-suspend='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
alias trm='rm -f **/*~'
alias up='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y'

# Ruby
alias rbb='bundle'
alias rbbe='bundle exec'

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
alias gfc='git clone'
alias gff='git pull --ff-only'
alias gfm='git pull'
alias gfr='git pull --rebase'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias gid='git diff --no-ext-diff --cached'

# Log (l)
alias glg='git log --topo-order --all --graph --pretty="format:%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n"'
alias glh='git graph'
alias glH='git graph --all'

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

# ls
alias ls='ls --color=auto --time-style=long-iso'
alias la='ls -aFhl'
alias ll='ls -AFhl'
