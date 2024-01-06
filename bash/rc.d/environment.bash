# shellcheck disable=SC2155
export SHELL="$(which bash)"

for envfile in "$HOME/.config/shenv.d"/*.sh; do
    . "$envfile"
done
