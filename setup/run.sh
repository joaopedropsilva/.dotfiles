#! /usr/bin/bash

SETUP_PATH=$HOME/.dotfiles/setup
TESTING_PATH=/usr/local/bin

if [ "$#" -gt 0 ]; then
    ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/$1.yml --ask-become-pass --ask-vault-pass
    exit 0
fi

echo -e 'Choose which play is going to run: \n1. Full setup\n2. Tooling only'
read setup_level

if [ "$setup_level" = '1' ]; then
    setup_level='full'
else
    setup_level='tooling_only'
fi

echo -e 'Are you running in a testing environment? [y/n]'
read is_testing

if [ "$is_testing" = 'y' ]; then
    ansible-playbook -i $TESTING_PATH/inventories/inv.yml $TESTING_PATH/$setup_level.yml --ask-become-pass --ask-vault-pass
else
    ansible-playbook -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/$setup_level.yml --ask-become-pass --ask-vault-pass
fi

