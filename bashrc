if [[ -n $PS1 ]] ; then
    # Load config parts
    for f in $HOME/.bashrc.d/*.bash; do
        . "$f";
    done
fi

# Load RVM into shell session, if present
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add rbenv to PATH, if present
if [ -d "$HOME/.rbenv" ]; then
    PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# Load local settings, if present
if [ -f "$HOME/.bashrc.local" ]; then
    . "$HOME/.bashrc.local"
fi
