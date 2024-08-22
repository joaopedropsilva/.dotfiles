#! /usr/bin/bash

ZET=~/zet
VIM=$(which nvim || which vim)

get_filename() {
    echo "Enter filename: "
    read filename

}

cd $ZET \
    && $VIM "./$(date '+%Y%m%d%H%M%S').md" \
    && cd - > /dev/null

