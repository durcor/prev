#!/bin/sh
install_dir=$(echo "$PATH" | tr : '\n' | grep 'home' | tail -1)
[ "$install_dir" ] || install_dir="/usr/local/bin"

cp prev "$install_dir"
command -v nvimpager >/dev/null 2>&1 &&
    cp init.vim "$HOME/.config/nvimpager"
