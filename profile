# Add user's private bin to PATH, if present
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Load local settings, if present
if [ -f "$HOME/.profile.local" ]; then
    . "$HOME/.profile.local"
fi
