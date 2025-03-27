# shellcheck shell=sh

alias rbb=bundle
alias rbbe='bundle exec'
alias rbbo='bundle open'
alias rbbu='bundle update'

alias rbc=bin/rubocop
alias rbca='bin/rubocop --autocorrect'
alias rbcag='bin/rubocop --autocorrect $(git status --porcelain | grep -v "^ \?D" | cut -b 4-)'
alias rbcaG='bin/rubocop --autocorrect $(git diff-tree --no-commit-id --name-only --diff-filter=d -r HEAD)'

alias rbt=bin/standardrb
alias rbtf='bin/standardrb --fix'

alias rspec=bin/rspec
