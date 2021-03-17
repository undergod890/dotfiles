#! /usr/bin/env bash
set -e

dir=`pwd`

# Source: https://gist.github.com/davejamesmiller/1965569
ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

if ask "Install missing directories for Stow?" Y; then
	echo "Installing directories"
	mkdir -pv ~/.config/mpv ~/.config/ranger/ ~/.newsboat/ ~/.config/neofetch/
	fi

for file in $(ls); do
  if [ -d $file ]; then
    if ask "Install configuration files $file?" Y; then
      stow $file -t $HOME -v
    fi
  fi
done
