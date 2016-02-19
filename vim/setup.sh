#!/bin/sh

if [ -x /usr/bin/vim ]; then
    echo "Found vim"
else
    echo "Did not find vim, skipping installation"
fi
