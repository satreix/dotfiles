#!/bin/sh

current_dir="$(pwd)"
for dir in */ ; do
    cd "$dir"
    echo "$dir"
    if [[ -x "setup.sh" ]]; then
        ./setup.sh
    fi
    cd $current_dir
done
