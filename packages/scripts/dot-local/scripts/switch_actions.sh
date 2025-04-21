#! /usr/bin/bash

SCRIPTS_PATH=$HOME/.local/scripts
ACTIONS=$(cat "$SCRIPTS_PATH/actions.txt")

selected_action_string=($(echo "$ACTIONS" | fzf))

# Grabs the last word of the sentence
handler=$(echo "${selected_action_string[0]}" | sed 's/\[\(.*\)\]/\1/')

if [ "$handler" = '' ]; then
    exit 1
fi

$SCRIPTS_PATH/"$handler.sh" "${selected_action_string[@]:1}"

