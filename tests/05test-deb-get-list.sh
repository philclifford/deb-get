#!/usr/bin/env bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../" && pwd)"
cd "$DIR" || exit 1

set -e
shopt -s nocasematch

deb-get-testing list |tee -a testrun.log
deb-get-testing csvlist >report_postinstall.csv
