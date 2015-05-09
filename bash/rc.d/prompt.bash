PS1="\$( ret=\$?; [[ \$ret -ne 0 ]] && echo \"\[\e[0;31m\]\$ret\[\e[0m\] \" )"
[[ -n "$SSH_CONNECTION" ]] && PS1+='\h:'
PS1+='\w'
__git_ps1 > /dev/null 2>&1 && PS1+='$(__git_ps1)'
PS1+='\$ '
