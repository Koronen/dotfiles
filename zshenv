SHELL=`which zsh`

# Add user's private bin to PATH, if present
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Load RVM into shell session, if present
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add rbenv to PATH, if present
if [ -d "$HOME/.rbenv" ]; then
    PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# Load local settings, if present
if [ -f "$HOME/.zshenv.local" ]; then
    source "$HOME/.zshenv.local"
fi
