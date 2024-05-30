#! /usr/bin/bash

VIM=$(which vim)

sub_path="$1"

# Change rj path
cd $HOME/rj/$sub_path/ && $VIM ; cd -

