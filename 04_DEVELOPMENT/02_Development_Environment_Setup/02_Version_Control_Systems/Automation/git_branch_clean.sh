#!/bin/bash

# Checkout to main branch
git checkout main

# Fetch updates from the remote
git fetch --all

# Delete local branches that are merged into main
for branch in $(git branch --merged main | grep -v '^\*' | grep -v 'main'); do
    git branch -d "$branch"
done
