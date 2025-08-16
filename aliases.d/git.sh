# shellcheck shell=sh

# Most of these aliases are borrowed from prezto.
# <https://github.com/sorin-ionescu/prezto/blob/master/modules/git/alias.zsh>

# shellcheck disable=SC2016
remote_head='`git symbolic-ref --short refs/remotes/origin/HEAD | cut -d/ -f2-`'

alias cdr='cd `git rev-parse --show-toplevel`'

alias g='git'
alias g-='git checkout -'
alias g.='git add .'

# Branch (b)
alias gb='git branch'
alias gbc='git checkout -b'
alias gbd='git diff origin/HEAD...HEAD'
# shellcheck disable=SC2142
alias gbg='git branch -vv | grep -E "\[origin/([^:]+): gone\]" | awk "{ print \$1 }" | xargs -r git branch -D'
alias gbl='git branch -v'
alias gbL='git branch -av'
# shellcheck disable=SC2139
alias gbw="git branch --merged | grep -v ${remote_head} | grep -vF '*' | xargs -r git branch -d"
alias gbx='git branch -d'
alias gbX='git branch -D'

# Commit (c)
alias gc='git commit --verbose'
# shellcheck disable=SC2139
alias gcm="git checkout ${remote_head}"
alias gco='git checkout'
alias gcf='git commit --amend --reuse-message HEAD'
alias gcfd='git commit --amend --date=now --reuse-message HEAD'
alias gcF='git commit --amend --verbose'
alias gcFd='git commit --amend --date=now --verbose'
alias gcs='git show --format=fuller'
alias gcs1='git show --format=fuller HEAD~1'
alias gcss='git show --format=fuller --stat'

# Fetch (f)
alias gf='git fetch'
alias gfa='git fetch --all'
alias gfc='git clone'
alias gff='git pull --ff-only'
# shellcheck disable=SC2139
alias gfm="git fetch origin ${remote_head}:${remote_head}"
alias gfr='git pull --rebase'

# Index (i)
alias gia='git add'
alias giA='git add --patch'
alias gid='git diff --no-ext-diff --cached'
alias giD='git diff --no-ext-diff --cached --word-diff'

# Log (l)
alias gl='git log'
alias glg='git log --graph --oneline --no-show-signature'
alias glG='git log --graph --oneline --no-show-signature --all'
alias glp='git log --patch --no-merges --topo-order'
alias glpr='git log --patch --no-merges --topo-order --reverse'
alias gls='git log --stat --no-merges --topo-order'

# Push (p)
alias gp='git push'
alias gpc='git push --set-upstream origin `git symbolic-ref --short HEAD`'
alias gpf='git push --force-with-lease'
alias gpF='git push --force'
gpx() {
  if [ $# -gt 1 ]; then
    git push --delete "$@"
  else
    git push --delete origin "$@"
  fi
}
if command -v compdef >/dev/null 2>&1; then
  compdef _git gpx=git-push
fi

# Rebase (r)
alias gr='git rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri='git rebase --interactive'
alias griom='git rebase --interactive `git symbolic-ref --short refs/remotes/origin/HEAD`'
alias gro='git rebase --onto'
alias grom='git rebase `git symbolic-ref --short refs/remotes/origin/HEAD`'
alias grs='git rebase --skip'

# Remote (R)
alias gR='git remote'
alias gRl='git remote --verbose'

# Stash (s)
alias gs='git stash'
alias gsd='git stash show --patch --stat'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gsx='git stash drop'

# Working Copy (w)
alias gwd='git diff --no-ext-diff'
alias gwD='git diff --no-ext-diff --word-diff'
alias gwR='git reset --hard'
alias gwR1='git reset --hard HEAD~1'
alias gwRR='git reset --hard `git rev-parse --abbrev-ref @{upstream}`'
alias gws='git status --short'
alias gwS='git status'
