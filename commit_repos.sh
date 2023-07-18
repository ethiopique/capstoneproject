#!/bin/bash

PARENT_DIR=$(pwd)

for repo in $(find $PARENT_DIR -name ".git" -type d | xargs -n 1 dirname); do
    cd $repo
    for file in $(git ls-files); do
        git add $file
        git commit -m "Update $file"
    done
done

