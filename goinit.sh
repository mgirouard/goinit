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
DIR=$GOPATH/src/$BASE_PATH/$1
mkdir -p $DIR
pushd $DIR

# Set up initial project state...

if [[ "$GIT_INIT" = true ]]; then
    git init
fi

if [[ "$README" != "" ]]; then
    touch $README
fi

popd
