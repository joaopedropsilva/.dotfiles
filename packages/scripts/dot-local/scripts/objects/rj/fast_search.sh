#! /usr/bin/bash

RJ_PATH=$HOME/.local/rj

search_through=$(find $RJ_PATH -mindepth 1 -maxdepth 1 -type f | fzf)

