if (( $+commands[fasd] )); then
    eval "$(fasd --init auto)"
    alias i='fasd_cd -d -i'
    alias j='fasd_cd -d'
fi
