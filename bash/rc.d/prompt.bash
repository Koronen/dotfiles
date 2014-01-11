if __git_ps1 > /dev/null 2>&1; then
    PS1='\u@\h:\w$(__git_ps1)\$ '
else
    PS1='\u@\h:\w\$ '
fi
