#!/usr/bin/env bash

echo -e 'Choose which play is going to run: \n1. Full setup\n2. Tooling only'
read choice

if [ "$choice" == '1' ]; then
    ansible-playbook -i inventories/inv.yml ./full.yml --ask-become-pass --ask-vault-pass
else
    ansible-playbook -i inventories/inv.yml ./tooling_only.yml --ask-become-pass
fi


