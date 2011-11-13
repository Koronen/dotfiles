# ~/.bash_profile: executed by bash(1) for login shells

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# add android sdk tools to PATH, if exist
if [ -d "$HOME/lib/android-sdk-linux_86" ]; then
    PATH="$HOME/lib/android-sdk-linux_86/tools:$HOME/lib/android-sdk-linux_86/platform-tools:$PATH"
fi

