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
GITHUB="zenith lsd git-delta duf bat"
ISSUES="fd mergerfs"
WEBSITE=""
#"strawberry" # is too yooj to use in the smoke testing
# GUI="sleek"

if [ "$(command -v deb-get-testing)" ]; then

for testapp in ${DIRECT} ${PPA} ${GITHUB} ${WEBSITE} ${ISSUES}
    do

        #
        echo "Testing ${testapp} install with $(command -v deb-get-testing)"
        deb-get-testing show "${testapp}"
        deb-get-testing install ${testapp} >/dev/null && echo installation of "${testapp}" completed
        deb-get-testing show "${testapp}"
        echo "-----------------------------------------------"
    done
else
    echo "WARN: did not get my testing - trying with checked out file"
    for testapp in ${DIRECT} ${PPA} ${GITHUB} ${WEBSITE} ${ISSUES}
    do

    #
    echo "Testing ${testapp} install with ./deb-get"
    ./deb-get show "${testapp}"
    ./deb-get install ${testapp}
    ./deb-get show "${testapp}"
    echo "-----------------------------------------------"
    done

fi

echo Completed test installations of ${DIRECT} ${PPA} ${GITHUB} ${WEBSITE} ${ISSUES}
echo "==================================================================================================================="
