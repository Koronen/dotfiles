function pair {
    # Check for presence of pair config name
    if [ -z "$1" ]; then
        echo "No pair config name specified!" >&2
        return 1
    fi

    # Check for presence of pair name and email
    local pair_name="`git config pair.$1.name`"
    local pair_email="`git config pair.$1.email`"
    if [[ -z "$pair_name" || -z "$pair_email" ]]; then
        echo "Pair config \"$1\" does not exist or is not set up properly!" >&2
        echo "Please set \"pair.${1}.name\" and \"pair.${1}.email\" in git config." >&2
        return 1
    fi

    # Store local solo name
    local solo_name="`git config --local user.name`"
    if [[ -n "$solo_name" && -z "`git config --local user.pair`" ]]; then
        git config --local user.soloname "$solo_name"
    fi

    # Store local solo email
    local solo_email="`git config --local user.email`"
    if [[ -n "$solo_email" && -z "`git config --local user.pair`" ]]; then
        git config --local user.soloemail "$solo_email"
    fi

    # Use pair name and email
    git config --local user.name "$pair_name"
    git config --local user.email "$pair_email"

    # Set pair flag
    git config --local user.pair "$1"

    # Display current config
    echo "Committing as: $(git config user.name) <$(git config user.email)>"
}

function unpair {
    # Bail out if not currently pairing
    if ! git config --local user.pair > /dev/null; then
        return 0
    fi

    # Restore local solo name
    local solo_name="`git config --local user.soloname`"
    if [ -n "$solo_name" ]; then
        git config --local user.name "$solo_name"
        git config --local --unset user.soloname
    else
        git config --local --unset user.name
    fi

    # Restore local solo email
    local solo_email="`git config --local user.soloemail`"
    if [ -n "$solo_email" ]; then
        git config --local user.email "$solo_email"
        git config --local --unset user.soloemail
    else
        git config --local --unset user.email
    fi

    # Unset pair flag
    git config --local --unset user.pair

    # Display current config
    echo "Committing as: $(git config user.name) <$(git config user.email)>"
}
