ZSH_PROMPT_BASE_COLOR="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX=" git:"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_no_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_no_bold[yellow]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_no_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_no_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_no_bold[cyan]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_no_bold[blue]%}?"

ZSH_THEME_SVN_PROMPT_PREFIX=" svn:"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg_no_bold[red]%}!"
ZSH_THEME_SVN_PROMPT_CLEAN=""
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX=" ruby:"
ZSH_THEME_RVM_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_RBENV_PROMPT_PREFIX=" ruby:"
ZSH_THEME_RBENV_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_TERM_TAB_TITLE_IDLE='%7>..>%m%>>: $(collapse_path %~)' #host..: /p/a/t/h
