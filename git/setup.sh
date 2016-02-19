#!/bin/sh

if [ -x /usr/bin/git ]; then
    echo "Found git"
else
    echo "Did not find git, skipping installation"
fi
