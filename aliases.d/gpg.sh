# shellcheck shell=sh

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
    gpg --encrypt --default-recipient-self --output "$dest" "$src"
}
