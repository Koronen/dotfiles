# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
#[ -z "$PS1" ] && return
if [[ -n $PS1 ]] ; then

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# prompt colors as variables
c_gray='\033[01;30m'
c_red='\033[01;31m'
c_green='\033[01;32m'
c_yellow='\033[01;33m'
c_blue='\033[01;34m'
c_purple='\033[01;35m'
c_teal='\033[01;36m'
c_white='\033[01;37m'
c_reset='\033[00m'

# output a colored hostname
__hostname_colored() {
  case $(hostname -s| tr "[:upper:]" "[:lower:]") in
    equidae)
      echo -ne "${c_purple}$(hostname)${c_reset}"
      ;;
    accipitridae)
      echo -ne "${c_blue}$(hostname)${c_reset}"
      ;;
    strigiformes)
      echo -ne "${c_yellow}$(hostname)${c_reset}"
      ;;
    *)
      echo -ne "${c_white}$(hostname)${c_reset}"
      ;;
  esac
}

# output a colored username
__username_colored() {
  case $(whoami) in
    root)
      echo -ne "${c_red}root${c_reset}"
      ;;
    *)
      echo -ne "${c_white}$(whoami)${c_reset}"
      ;;
  esac
}

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

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
    PS1="${debian_chroot:+($debian_chroot)}${c_green}$(__username_colored)@$(__hostname_colored)${c_reset}:${c_blue}\w${c_yellow}\$(__git_ps1)${c_reset}\$ "
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

# enable color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Environmental variables
export EDITOR=vim
export VISUAL=vim
export PAGER=less
export TMPDIR=/tmp

# '[ -z $PS1 ] && return' substitute
fi

# Load RVM into shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Load local settings, if present
if [ -f "$HOME/.bashrc.local" ]; then
    . "$HOME/.bashrc.local"
fi
