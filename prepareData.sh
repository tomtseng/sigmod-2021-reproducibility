#!/bin/bash

if [ ! -d "${HOME}/gbbs" ]
then
    echo "Run prepareSoftware.sh before running this script."
    exit 1
fi

cd ${HOME}/gbbs
# TODO(tomtseng): change references to master to refer to instead  a specific commit
git checkout master
cd benchmarks/SCAN/IndexBased/experiments
bash download_graphs.bash
