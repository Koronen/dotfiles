# git aliases
alias gdh='git diff HEAD'
compdef _git gdh=git-diff

alias glr='git pull --rebase'
compdef _git glr=git-pull

alias gs='git stash'
compdef _git gs=git-stash

alias gsp='git stash pop'
compdef _git gsp=git-stash

# reload zsh config
alias zrc='source ~/.zshrc'

# ls aliases
alias ll='ls -AlhF'
alias l='ls -CF'

# Handy shorts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias trm='rm *~'
alias up='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
alias kthinit='kinit koronen@NADA.KTH.SE'
alias open='gnome-open'
alias tails='tail -f'
alias ack='ack-grep'
