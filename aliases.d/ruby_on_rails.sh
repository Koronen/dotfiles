rorc() {
    if [ -x bin/rails ]; then
        bin/rails console "$@"
    else
        bundle exec rails console "$@"
    fi
}

rordm() {
    if [ -x bin/rake ]; then
        bin/rake db:migrate "$@"
    else
        bundle exec rake db:migrate "$@"
    fi
}

rordr() {
    if [ -x bin/rake ]; then
        bin/rake db:rollback "$@"
    else
        bundle exec rake db:rollback "$@"
    fi
}

rorro() {
    if [ -x bin/rake ]; then
        bin/rake routes "$@"
    else
        bundle exec rake routes "$@"
    fi
}

rors() {
    if [ -x bin/rails ]; then
        bin/rails server --binding 127.0.0.1 "$@"
    else
        bundle exec rails server --binding 127.0.0.1 "$@"
    fi
}
