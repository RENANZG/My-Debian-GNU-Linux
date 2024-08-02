#!/bin/bash

# Ensure the user is on a branch
if [ -z "$(git rev-parse --abbrev-ref HEAD)" ]; then
    echo "You are not on a branch."
    exit 1
fi

# Perform interactive rebase
git rebase -i HEAD~10
