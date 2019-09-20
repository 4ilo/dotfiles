#!/bin/sh
if [ $# -ne 2 ]; then
    echo "Usage: addvimplugin <plugin git url> <plugin name>" >&2
    exit 1
fi  

cd ~
yadm submodule init
yadm submodule add "$1" .vim/pack/plugins/start/"$2"
yadm add .gitmodules .vim/pack/plugins/start/"$2"
