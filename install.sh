#!/bin/sh

set -e

. /etc/os-release

if [ "$CODESPACES" = "true" ]; then
  export DEBIAN_FRONTEND=noninteractive
  export DOTFILES_DIRS="$(pwd)"
  export RCRC="${DOTFILES_DIRS}/host-codespace/rcrc"
elif [ "$REMOTE_CONTAINERS" = "true" ]; then
  export DEBIAN_FRONTEND=noninteractive
  export RCRC="$HOME/.dotfiles/host-remote-container/rcrc"
elif [ ! -t 0 ]; then
  export DEBIAN_FRONTEND=noninteractive
fi

if [ "$(id -u)" = 0 ]; then
  sudo=""
else
  case "$ID" in
    "debian" | "ubuntu")
      sudo="sudo --preserve-env=DEBIAN_FRONTEND"
      ;;
    *)
      sudo=sudo
      ;;
  esac
fi

case "$ID" in
  "alpine")
    $sudo apk update
    $sudo apk add curl git rcm vim
    ;;
  "debian" | "ubuntu")
    $sudo apt-get update
    $sudo apt-get install --yes --no-install-recommends curl git rcm vim vim-ctrlp vim-solarized
    ;;
  "fedora")
    $sudo dnf install curl git rcm vim vim-ctrlp
    ;;
  *)
    echo "Unsupported environment" >&2
    exit 1
    ;;
esac

if [ ! -d "${DOTFILES_DIRS:-$HOME/.dotfiles}" ]; then
  git clone https://github.com/Koronen/dotfiles.git "${DOTFILES_DIRS:-$HOME/.dotfiles}"
fi

if [ ! -e "$HOME/.rcrc" ]; then
  ln -s "${RCRC:-$HOME/.dotfiles/rcrc}" "$HOME/.rcrc"
fi

if [ "$CODESPACES" = "true" ] || [ "$REMOTE_CONTAINERS" = "true" ] || [ ! -t 0 ]; then
  rcup -f -v
else
  rcup -v
fi

case "$ID" in
  "alpine" | "fedora")
    mkdir -p "$HOME/.vim/colors"
    curl -sSLo "$HOME/.vim/colors/solarized.vim" \
      "https://raw.githubusercontent.com/altercation/vim-colors-solarized/528a59f26d12278698bb946f8fb82a63711eec21/colors/solarized.vim"
    ;;
esac

if [ "$ID" = "alpine" ]; then
  mkdir -p "$HOME/.vim/pack/alpine/start"

  if [ ! -d "$HOME/.vim/pack/alpine/start/ctrlp.vim" ]; then
    git clone https://github.com/ctrlpvim/ctrlp.vim.git "$HOME/.vim/pack/alpine/start/ctrlp.vim"
    git -C "$HOME/.vim/pack/alpine/start/ctrlp.vim" checkout --quiet 3739dcd638f457559d5a1ae1e398276175694e4b
  fi
fi
