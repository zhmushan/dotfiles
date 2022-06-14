#!/bin/bash

set_proxy() {
  export http_proxy="$1"
  export https_proxy="$2"
  export all_proxy="$3"
}

read -r -p "Use local proxy? [Y/n]:" use_local_proxy

if [[ "$use_local_proxy" =~ ^([nN][oO]|[nN])$ ]]
  then
    set_proxy
  else
    read -r -p "http port" http_port
    read -r -p "https port" https_port
    read -r -p "all port" all_port
    set_proxy $http_port $https_port $all_port
fi

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install fish
chsh -s /usr/local/bin/fish
