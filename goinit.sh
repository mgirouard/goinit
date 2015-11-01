#!/bin/bash

# Source in local config, if it exists
if [[ -f $HOME/.goinitrc ]]; then
    source $HOME/.goinitrc
fi

# Ensure sane defaults
BASE_PATH=${BASE_PATH:-misc}
GIT_INIT=${GIT_INIT:-true}
README=${README:-README.md}

# Make the project directory
mkdir -p $BASE_PATH/$1
pushd $BASE_PATH/$1

# Set up initial project state...

if [[ "$GIT_INIT" = true ]]; then
    git init
fi

if [[ -z "$README" ]]; then
    touch README.md
fi

popd
