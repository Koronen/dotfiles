# Add user's private bin directories to PATH
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Load local settings, if present
[ -r "$HOME/.profile.local" ] && . "$HOME/.profile.local"

# Load ~/.bashrc if present and running bash(1)
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
