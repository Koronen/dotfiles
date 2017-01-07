if command -v gpg2 > /dev/null; then
    alias gpg=gpg2
fi

gpg-decrypt() {
    src="$1"
    dest=$(basename -s .gpg "$src")
    gpg --decrypt --output "$dest" "$src"
}

gpg-encrypt() {
    src="$1"
    dest="$1.gpg"
    gpg --encrypt --recipient B0FF78CD0CB41DB1 --output "$dest" "$src"
}
