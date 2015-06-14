[ -r /usr/local/share/chruby/chruby.sh ] && source /usr/local/share/chruby/chruby.sh

if [ -r /usr/local/share/chruby/auto.sh ]; then
    source /usr/local/share/chruby/auto.sh

    chruby_fix_binstubs() {
        if [[ "${PATH/:*/}" != ".git/safe/../../bin" ]]; then
            PATH=".git/safe/../../bin:${PATH/:.git\/safe\/..\/..\/bin:/:}"
        fi
    }

    if [[ ! "$preexec_functions" == *chruby_fix_binstubs* ]]; then
        preexec_functions+=("chruby_fix_binstubs")
    fi
fi
