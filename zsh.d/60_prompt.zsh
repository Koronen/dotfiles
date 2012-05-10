local return_code="%(?.%?.%{$fg[red]%}%?%{$reset_color%})"
PROMPT='${return_code}|%n@%m$(prompt_char) '
RPROMPT='%~$(git_prompt_info)$(git_prompt_status)$(svn_prompt_info)%{$reset_color%} %D{%H:%M:%S}'
