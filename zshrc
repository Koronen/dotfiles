# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler gem git mercurial rails3 ruby svn)

source $ZSH/oh-my-zsh.sh

# Set term idle titles
ZSH_THEME_TERM_TAB_TITLE_IDLE="%7>..>%m%>>: %15<..<%~%<<" #host..: ..command
ZSH_THEME_TERM_TITLE_IDLE="%n@%m: %~" #user@host: command

# Load dircolors
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Load aliases
if [ -f "$HOME/.zshaliases" ]; then
    source "$HOME/.zshaliases"
fi

# Load prompt
if [ -f "$HOME/.zshprompt" ]; then
    source "$HOME/.zshprompt"
fi

# Load local settings
if [ -f "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi
