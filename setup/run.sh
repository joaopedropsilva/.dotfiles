#!/usr/bin/env bash

SETUP_PATH=$HOME/.dotfiles/setup

echo -e 'Choose which play is going to run: \n1. Full setup\n2. Tooling only'
read choice

if [ "$choice" = '1' ]; then
    ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/full.yml --ask-become-pass --ask-vault-pass
else
    ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/tooling_only.yml --ask-become-pass
fi

