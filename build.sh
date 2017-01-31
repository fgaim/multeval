#!/usr/bin/env bash
set -xeo pipefail
scriptDir=$(dirname $0)

distDir=$scriptDir/dist
mkdir -p $distDir

cd $scriptDir
ant
cp -r multeval.sh \
    get_deps.sh \
    constants \
    LICENSE.txt \
    README.md \
    CHANGELOG \
    example \
    $distDir
rm $distDir/README.txt
