#! /usr/bin/bash

SETUP_PATH=$HOME/.dotfiles/setup

if [ "$#" -gt 0 ]; then
    ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/$1.yml --ask-become-pass --ask-vault-pass
    exit 0
fi

echo -e 'Choose which play is going to run: \n1. Full setup\n2. Tooling only'
read choice

if [ "$choice" = '1' ]; then
    setup_level='full'
else
    setup_level='tooling_only'
fi

ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/$setup_level.yml --ask-become-pass --ask-vault-pass

