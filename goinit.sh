#!/bin/bash

if [[ -z ${GOPATH+x} ]]; then
    >&2 echo "You don't have "'$GOPATH'" set. Using './' instead."
    GOPATH='./'
fi

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
pushd $DIR > /dev/null

# Set up initial project state...

if [[ "$GIT_INIT" = true ]]; then
    git init > /dev/null
fi

if [[ "$README" != "" ]]; then
    touch $README
fi

# Clean up
popd > /dev/null

# Ouput the name of the project to stdout
echo $DIR
