# ~/.bash_profile: executed by bash(1) for login shells

# add user's private bin to PATH, if present
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# add android sdk tools to PATH, if present
if [ -d "$HOME/lib/android-sdk-linux_86" ]; then
    PATH="$HOME/lib/android-sdk-linux_86/tools:$HOME/lib/android-sdk-linux_86/platform-tools:$PATH"
fi

# add rbenv to PATH, if present
if [ -d "$HOME/.rbenv" ]; then
    PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi

# execute bashrc, if present
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
