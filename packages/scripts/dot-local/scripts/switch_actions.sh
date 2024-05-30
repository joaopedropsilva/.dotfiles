#! /usr/bin/bash

VIM=$(which vim)
SCRIPTS_PATH=$HOME/.local/scripts
ACTIONS=$(cat "$SCRIPTS_PATH/actions")

readarray -t OBJECTS < <(ls "$SCRIPTS_PATH/objects")

selected=($(echo "$ACTIONS" | fzf))
action="${selected[0]}"
object="${selected[${#selected[@]} - 1]}"

# switch case to call objects scripts
# pass qualfier to those scripts
