#!/bin/sh

if [ -x /usr/bin/i3 ]; then
    echo "Found i3"
else
    echo "Did not find i3, skipping installation"
fi
