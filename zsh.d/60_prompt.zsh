local return_code="%(?.%?.%{$fg[red]%}%?%{$reset_color%})"
PROMPT='${return_code}|%n@%m$(prompt_char) '
RPROMPT='%~$(rvm_prompt_info)$(rbenv_prompt_info)$(git_prompt_info)$(git_prompt_status)$(svn_prompt_info)%{$reset_color%}'
