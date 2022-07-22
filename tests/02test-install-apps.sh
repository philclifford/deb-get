#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../" && pwd)"
cd "$DIR" || exit 1

set -e
shopt -s nocasematch

DIRECT=""
# dont install deb-get as it'll replace testing
#don't try igdm  - not fun getting graphical stuff to test on container
PPA="yq"
#copyq is yooj and much gui depends
GITHUB="zenith lsd mergerfs git-delta duf bat"
ISSUES="fd mergerfs"
WEBSITE=""
#"strawberry" # is too yooj to use in the smoke testing
# GUI="sleek"


for testapp in ${DIRECT} ${PPA} ${GITHUB} ${WEBSITE} ${ISSUES}
do

    #
    echo "Testing ${testapp} install with $(command -v deb-get-testing)"
    deb-get-testing show "${testapp}"
    deb-get-testing install ${testapp}
    deb-get-testing show "${testapp}"
    echo "-----------------------------------------------"
done

echo Completed test installations of ${DIRECT} ${PPA} ${GITHUB} ${WEBSITE} ${ISSUES}
echo "==================================================================================================================="