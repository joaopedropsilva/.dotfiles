#! /usr/bin/bash

TEST_ENV_DOCKER_IMAGE='arch_ansible'
SETUP_PATH="$HOME/.dotfiles/setup"
ANSIBLE_PLAYBOOK=$(which ansible-playbook)
DOCKER=$(which docker)
BASH=$(which bash)

rebuild_test_env() {
    echo '[rebuild setup test environment] Cleaning any running containers'
    docker rm -f $TEST_ENV_DOCKER_IMAGE > /dev/null

    echo '[rebuild setup test environment] Deleting past images'
    docker image rm -f $TEST_ENV_DOCKER_IMAGE

    echo "[rebuild setup test environment] Rebuilding $TEST_ENV_DOCKER_IMAGE image"
    docker build $SETUP_PATH -t $TEST_ENV_DOCKER_IMAGE
}

launch_test_env() {
    $DOCKER rm -f $TEST_ENV_DOCKER_IMAGE > /dev/null 2>&1
    $DOCKER run --name=$TEST_ENV_DOCKER_IMAGE -it $TEST_ENV_DOCKER_IMAGE $BASH
}

if [ "$1" = 'Run' ]; then
    $SETUP_PATH/run.sh tooling_only
elif [ "$1" = 'Rebuild' ]; then
    rebuild_test_env
elif [ "$1" = 'Launch' ]; then
    launch_test_env
fi

