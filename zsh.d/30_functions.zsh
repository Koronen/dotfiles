# sed with extended regex flag differs on OS X and Linux.
# This is a bit annoying, so I created this little function.
# It chooses the appropriate flag depending on the current OS.
rsed() {
    case $(uname) in
        (Darwin)
            sed -E $1
            ;;
        (Linux)
            sed -r $1
            ;;
    esac
}

# collapse long paths (/foo/bar/baz/blargh to /f/b/b/blargh)
function collapse_path { pwd | sed -e "s|$HOME|~|" | rsed 's|([^/])[^/]*/|\1/|g' }

function prompt_char {
    git branch > /dev/null 2>&1 && echo '±' && return
    hg root > /dev/null 2>&1 && echo '☿' && return
    svn info > /dev/null 2>&1 && echo '§' && return
    if [ $UID -eq 0 ]; then echo '#'; else echo '$'; fi
}

function rvm_prompt_info {
  ruby_version=$($rvm_bin_path/rvm-prompt 2> /dev/null) || return
  echo "$ZSH_THEME_RVM_PROMPT_PREFIX$ruby_version$ZSH_THEME_RVM_PROMPT_SUFFIX"
}

function rbenv_prompt_info {
  ruby_version=$(rbenv version-name 2> /dev/null) || return
  echo "$ZSH_THEME_RBENV_PROMPT_PREFIX$ruby_version$ZSH_THEME_RBENV_PROMPT_SUFFIX"
}

function gh {
  cd ~/git/github/$@;
}
compctl -/ -W ~/git/github gh
