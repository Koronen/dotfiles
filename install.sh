#!/bin/bash

# Settings
LOCAL_ROOT="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET_ROOT="$HOME"
REPLACE_ALL=0

function print_status {
  local white="\033[01;37m"
  local color=""
  local spaces=""
  local reset="\033[00m"

  case "$1" in
    'create')
        color="\033[01;32m" #green
        spaces="   "
        ;;
    'identical')
        color="\033[01;33m" #yellow
        spaces=""
        ;;
    'modified')
        color="\033[01;34m" #blue
        spaces=" "
        ;;
    'replace')
        color="\033[01;31m" #red
        spaces="  "
        ;;
    'skip')
        color="\033[01;30m" #gray
        spaces="     "
        ;;
    'notice')
        color="\033[01;37m" #white
        spaces="   "
        ;;
  esac

  echo -e "${white}[${color}$1${spaces}${white}]${reset} $2"
}

function replace_file {
  print_status "replace" "$2"

  ln -sf $1 $2 >&2
}

function replace_dir {
  print_status "replace" "$2"

  rm -rf $2 >&2
  ln -s $1 $2 >&2
}

function check_file {
  local local_file="$LOCAL_ROOT/$1"
  local target_file="$TARGET_ROOT/$2"

  if [[ ! -f "$target_file" && ! -d "$target_file" ]]; then
    print_status "create" "$target_file"
    mkdir -p "`dirname $target_file`"
    ln -s "$local_file" "$target_file" >&2
  elif [[ `diff -q "$local_file" "$target_file" > /dev/null 2>&1; echo $?` -eq 0 ]]; then
    print_status "identical" "$target_file"
  else
    if [[ $REPLACE_ALL -gt 0 ]]; then
      replace_file "$local_file" "$target_file"
    else
      print_status "modified" "$target_file"
      echo -n "  Replace? [ynaq] "
      read replace
      case $replace in
      a)
        REPLACE_ALL=1
        replace_file "$local_file" "$target_file"
        ;;
      y)
        replace_file "$local_file" "$target_file"
        ;;
      q)
        exit 1
        ;;
      *)
        print_status "skip" "$target_file"
        ;;
      esac
    fi
  fi
}

function check_dir {
  local local_dir="$LOCAL_ROOT/$1"
  local target_dir="$TARGET_ROOT/$2"

  if [[ ! -f "$target_dir" && ! -d "$target_dir" ]]; then
    print_status "create" "$target_dir"
    mkdir -p "`dirname $target_dir`"
    ln -s "$local_dir" "$target_dir" >&2
  # TODO: check identical/modified?
  else
    if [[ $REPLACE_ALL -gt 0 ]]; then
      replace_dir "$local_dir" "$target_dir"
    else
      print_status "modified" "$target_dir"
      echo -n "  Replace? [ynaq] "
      read replace
      case $replace in
      a)
        REPLACE_ALL=1
        replace_dir "$local_dir" "$target_dir"
        ;;
      y)
        replace_dir "$local_dir" "$target_dir"
        ;;
      q)
        exit 1
        ;;
      *)
        print_status "skip" "$target_dir"
        ;;
      esac
    fi
  fi
}

# Install listed files
check_dir  "awesome" ".awesome"
check_file "bash_aliases" ".bash_aliases"
check_file "bash_profile" ".bash_profile"
check_file "bashrc" ".bashrc"
check_file "ls-colors-solarized/dircolors" ".dircolors"
check_file "gemrc" ".gemrc"
check_file "gitconfig" ".gitconfig"
check_file "gitignore" ".gitignore"
check_file "inputrc" ".inputrc"
check_file "irbrc" ".irbrc"
check_dir  "oh-my-zsh" ".oh-my-zsh"
check_file "pentadactylrc" ".pentadactylrc"
check_file "profile" ".profile"
check_file "rvmrc" ".rvmrc"
check_file "screenrc" ".screenrc"
check_file "ssh/config" ".ssh/config"
check_file "terminator/config" ".config/terminator/config"
check_dir  "vim" ".vim"
check_file "vimrc" ".vimrc"
check_file "zshaliases" ".zshaliases"
check_file "zshenv" ".zshenv"
check_file "zshprompt" ".zshprompt"
check_file "zshrc" ".zshrc"
