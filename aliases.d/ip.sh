# shellcheck shell=sh

alias ipa='ip address'

ipr() {
  if [ $# -eq 0 ]; then
    ip -4 route && ip -6 route
  else
    ip route "$@"
  fi
}
