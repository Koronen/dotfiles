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
alias gbl='git branch -v'
alias gbL='git branch -av'

# Commit (c)
alias gc='git commit --verbose'
alias gco='git checkout'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcs='git show'

# Fetch (f)
alias gfc='git clone'
alias gff='git pull --ff-only'
alias gfm='git pull'
alias gfr='git pull --rebase'

# Index (i)
alias gia='git add'
alias gid='git diff --no-ext-diff --cached'

# Log (l)
alias glg='git log --topo-order --all --graph --pretty="format:%C(green)%h%C(reset) %s%C(red)%d%C(reset)%n"'
alias glh='git graph'
alias glH='git graph --all'

# Merge (m)
alias gmt='git mergetool'

# Push (p)
alias gp='git push'
alias gpf='git push --force'
alias gpc='git push --set-upstream origin "$(git-branch-current 2> /dev/null)"'

# Rebase (r)
alias grc='git rebase --continue'

# Remote (R)
alias gRp='git remote prune'

# Stash (s)
alias gs='git stash'
alias gsp='git stash pop'

# Working Copy (w)
alias gwd='git diff --no-ext-diff'
alias gws='git status --short'
alias gwR='git reset --hard'

# ls
alias ls='ls --color=auto --time-style=long-iso'
alias la='ls -aFhl'
alias ll='ls -AFhl'
