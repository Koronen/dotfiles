tssh() {
    ssh -At "$@" -- "[ -f koronen.tmux ] || wget -O koronen.tmux https://raw.githubusercontent.com/Koronen/dotfiles/master/tmux.conf; tmux -f koronen.tmux -L koronen.tmux new-session -A -s 0"
}
if type compdef > /dev/null 2>&1; then
  compdef tssh=ssh
fi
