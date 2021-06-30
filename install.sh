#!/bin/bash

set -e

function dotdir()
{
  dir=$1
  source="$PWD/$dir"
  destination="$HOME/.$dir"
  chmod 700 "$source"
  ln -sfn "$source" "$destination"
}

function dotfile()
{
  file=$1
  source=$PWD/$file
  destination=$HOME/.$file
  parent_dir="$(dirname "$destination")"
  mkdir -p "$parent_dir"
  echo "linking $source to $destination"
  chmod 700 "$(dirname "$source")"
  if [ "$(basename "$parent_dir")" == 'bin' ]; then
    chmod 700 "$source"
  else
    chmod 600 "$source"
  fi
  ln -sfn "$source" "$destination"
}

function install_pkgs()
{
  if [[ -n $CODESPACES ]]; then
    mv /etc/apt/sources.list /etc/apt/sources.list.bak
    cp -f ./etc/apt/sources.list /etc/apt/sources.list
    apt-get update -y
    # shellcheck disable=SC2046
    apt-get install -y --no-install-recommends $(tr '\n' ' ' < ./apt.list)
    ./vim/pack/plugins/start/fzf/install --all
    cp -f ./vim/pack/plugins/start/fzf/bin/fzf "$HOME/.local/bin/"
  fi
}

mkdir -p "$HOME/.config" "$HOME/.local/bin" "$HOME/.local/share"
git submodule update --init

dotdir "vim"
dotfile "ackrc"
dotfile "agignore"
dotfile "bashrc"
dotfile "ctags"
dotfile "curlrc"
dotfile "editrc"
dotfile "gitconfig"
dotfile "gitignore_global"
dotfile "inputrc"
dotfile "npmrc"
dotfile "profile"
dotfile "ssh/config"
dotfile "vimrc"
dotfile "wgetrc"

install_pkgs
