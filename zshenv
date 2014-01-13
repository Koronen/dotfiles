export SHELL=`which zsh`
export EDITOR='vim'
export VISUAL='view'
export PAGER='less'
export GPG_TTY=`tty`

if [[ -z "$LANG" ]]; then
    export LANG='en_US.UTF-8'
fi

if [[ -r "$HOME/.zshenv.local" ]]; then
    source "$HOME/.zshenv.local"
fi
