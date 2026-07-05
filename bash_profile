# shellcheck shell=bash

if [ -d "/nix" ] && [ -r /usr/lib/environment.d/nix-daemon.conf ]; then
  export NIX_REMOTE="${NIX_REMOTE:-daemon}"

  case ":$PATH:" in
    *:$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:*)
      # no-op
      ;;

    *)
      export PATH="$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH"
      ;;
  esac
fi

export CDPATH="$HOME/src/github.com"
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

if [ -n "$SSH_CONNECTION" ] || [ "$TERM" = "linux" ]; then
  . "$HOME/.bashrc"
fi
