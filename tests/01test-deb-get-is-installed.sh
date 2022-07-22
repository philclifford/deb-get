#!/usr/bin/env bash

#


DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../" && pwd)"
cd "$DIR" || exit 1

set -e

#sudo rm -f "$(command -v deb-get)"

# This is the same code as in the README.md

#sudo curl -SsL https://raw.githubusercontent.com/philclifford/deb-get/testing/deb-get -o /usr/bin/deb-get-testing
#sudo chmod +x /usr/bin/deb-get-testing


if ! command -v deb-get >/dev/null; then
    echo "deb-get is not installed, but should be!" >&2
    exit 1
fi
cat <<INTRO
   ========================================================
     A Few Smoke-tests for deb-get to try and ensure we can
       * Install by the self-install in the Readme.md
       * Install some small non-gui applications from various sources
       * Install from ppas on Ubuntu and derivatives
       * work at least on Ubuntu and Debian
   ========================================================


INTRO

#diff $(command -v deb-get) /usr/bin/deb-get-testing
sudo curl -sL https://raw.githubusercontent.com/philclifford/deb-get/testing/deb-get -o /usr/bin/deb-get-testing \
&& sudo chmod 755 /usr/bin/deb-get-testing \
&& echo deb-get-testing installed

diff -qs $(command -v deb-get-testing) $(command -v deb-get) #|| echo "These should differ because we installed the main version with testing:" ;echo

cat <<EOT

    the container build uses testing script to install main from upstream so it will be different
    but proves that the testing script works to a point and the build installed it OK too

    in the github workflow the testing branch is checked out (also the various os branches)


EOT

# this is the diff against where we're checked out to
# # except we now checkout the branch with the test scripts on to test the testing script
# # on a matrix of OSes in runners ....
##
diff -qs $(command -v deb-get-testing) deb-get && echo "These should not differ if we are checked out on testing - this is OK"