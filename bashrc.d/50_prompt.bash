# prompt building blocks
#
# \[\033[01;32m\] -- colorize!
# ${debian_chroot:+($debian_chroot)} -- display current chroot, if any
# \u@\h -- user@hostname
# \w -- current working directory
# \$(__git_ps1 " (%s)") -- print git branch, if any
# \$(__my_command) -- print output of command "__my_command"

# sets the prompt (set $1 for forced color)
__set_prompt() {
  # default behavior
  # set a fancy prompt (non-color, unless we know we "want" color)
  case "$TERM" in
    xterm-color)
      color_prompt=yes
      ;;
#    xterm*|rxvt*)
#      # If this is an xterm set the title to user@host:dir
#      PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#      return
#      ;;
  esac

  # override?
  if [ -n "$1" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
      # We have color support; assume it's compliant with Ecma-48
      # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
      # a case would tend to support setf rather than setaf.)
          color_prompt=yes
    else
          color_prompt=
    fi
  fi

  # set the prompt
  if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}${c_green}%u@%h${c_reset}:${c_blue}\w${c_yellow}\$(__git_ps1)${c_reset}\$ "
  else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(__git_ps1)\$ '
  fi
  unset color_prompt

  # use a simple prompt on s-shell and OSX hosts
  if [[ "`uname`" == "SunOS" ||  "`uname`" == "Darwin" ]]; then
    PS1='\u@\h:\w\$ '
  fi
}
__set_prompt
