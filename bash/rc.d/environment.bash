export SHELL="$(which bash)"

for envfile in "$HOME/.config/shenv.d"/*.sh; do
  . "$envfile"
done
