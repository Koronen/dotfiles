# shellcheck shell=sh

alias ipa='ip address'
alias ipA='curl -4 https://ip.hetzner.com && curl -6 https://ip.hetzner.com'

ipr() {
  if [ $# -eq 0 ]; then
    ip -4 route && ip -6 route
  else
    ip route "$@"
  fi
}
