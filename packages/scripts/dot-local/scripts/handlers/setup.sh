#!/usr/bin/env bash

TEST_DOCKER_IMAGE='arch_ansible'
SETUP_PATH="$HOME/.dotfiles/setup"
ANSIBLE_PLAYBOOK=$(which ansible-playbook)

rebuild_env() {
    echo '[rebuild setup test environment] Cleaning any running containers'
    docker rm -f $TEST_DOCKER_IMAGE > /dev/null

    echo '[rebuild setup test environment] Deleting past images'
    docker image rm -f $TEST_DOCKER_IMAGE

    echo "[rebuild setup test environment] Rebuilding $TEST_DOCKER_IMAGE image"
    docker build $SETUP_PATH -t $TEST_DOCKER_IMAGE
}

if [ "$1" = 'Run' ]; then
    $ANSIBLE_PLAYBOOK -i $SETUP_PATH/inventories/inv.yml $SETUP_PATH/tooling_only.yml --ask-become-pass
elif [ "$1" = 'Rebuild' ]; then
    rebuild_env
fi
