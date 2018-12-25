#!/bin/bash
set -Ceu

script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
ln -sf  $script_dir/.vimrc ~/.vimrc
