#!/usr/bin/env bash

IMAGE='arch_ansible'
SETUP_PATH="$HOME/.dotfiles/setup"

echo 'Cleaning any running containers'
docker rm -f $IMAGE

echo 'Deleting past images'
docker image rm -f $IMAGE

echo "Rebuilding $IMAGE image"
docker build $SETUP_PATH -t $IMAGE

