export EDITOR='vim'
export GPG_TTY=`tty`
export PAGER='less'
export SHELL=`which zsh`
export VISUAL='view'

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

if [[ -r "$HOME/.zshenv.local" ]]; then
    source "$HOME/.zshenv.local"
fi
