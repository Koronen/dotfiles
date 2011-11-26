# ~/.bash_profile: executed by bash(1) for login shells

# Add user's private bin to PATH, if present
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Load local settings, if present
if [ -f "$HOME/.bash_profile.local" ]; then
    . "$HOME/.bash_profile.local"
fi

# execute bashrc, if present
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi
