#!/bin/bash

set -e
set -u
set -x

if [ ! -d ${HOME}/blueocean-plugin/blueocean-plugin/target ]; then
    cd ${HOME}/blueocean-plugin
    mvn clean install -DskipTests
fi

cd ${HOME}/blueocean-acceptance-test
bash ./run.sh -a=${HOME}/blueocean-plugin/blueocean-plugin
