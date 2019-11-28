# Add user's private bin directories to PATH
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Load local settings, if present
[ -r "$HOME/.profile.local" ] && . "$HOME/.profile.local"
