[ -r /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh

if [ -r /usr/local/share/chruby/auto.sh ]; then
    source /usr/local/share/chruby/auto.sh

    chruby_fix_binstubs() {
        if [[ "${PATH/:*/}" != ".git/safe/../../bin" ]]; then
            PATH=".git/safe/../../bin:${PATH/:.git\/safe\/..\/..\/bin:/:}"
        fi
    }

    trap '[[ "$BASH_COMMAND" != "$PROMPT_COMMAND" ]] && chruby_fix_binstubs' DEBUG
fi
