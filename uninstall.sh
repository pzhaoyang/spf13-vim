#!/usr/bin/env sh

app_dir="$HOME/.spf13-vim-3"
clean="rm -rf"
warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

$clean $HOME/.vimrc
$clean $HOME/.vimrc.bundles
$clean $HOME/.vim

$clean $app_dir

#clean trash
cd $HOME
$clean .vimswap .vimviews .vimundo .vimbackup .vimrc.local .vimrc.before
