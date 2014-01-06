if (( $+commands[fasd] )); then
    eval "$(fasd --init auto)"
    alias j='fasd_cd -d'
fi
