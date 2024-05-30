#!/usr/bin/env bash

ansible-playbook -i inventories/inv.yml ./full.yml --ask-become-pass

