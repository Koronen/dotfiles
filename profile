# Add user's private bin directories to PATH, if present
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# Load local settings, if present
[ -r "$HOME/.profile.local" ] && . "$HOME/.profile.local"
