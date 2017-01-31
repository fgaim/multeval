#!/usr/bin/env bash
set -euo pipefail
scriptDir=$(dirname $0)
source $scriptDir/constants

# Specify -Dfile.encoding so that the meteor paraphrase tables load properly
java -Dfile.encoding=UTF8 \
    -cp $scriptDir/multeval.jar multeval.MultEval "$@"
