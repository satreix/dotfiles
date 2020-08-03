#!/bin/bash
set -euo pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for dir in $DIR/*/ ; do
    pushd "$dir" > /dev/null
    echo $(pwd)
    [[ -x "setup.sh" ]] && ./setup.sh
    popd > /dev/null
done
