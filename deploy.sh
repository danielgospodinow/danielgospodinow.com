#!/bin/bash

commitmsg=$1
if [ -z "$1" ]; then
    echo "[Error] Please provide commit message"
    exit 1
fi

function commitAndPush {
    git add . && git commit -m $commitmsg && git push
}

echo "Commiting and pushing changes in the source project"
commitAndPush

cd ./public/
echo "Commiting and pushing changes in the content project"
commitAndPush
