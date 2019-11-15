#!/bin/bash

cd $(dirname $0)
cd dummyProject

for version in $(cat ../SBT_VERSIONS); do
    echo "==================== Loading $version ... ===================="
    echo "sbt.version=$version" >project/build.properties
    ../sbt/bin/sbt -mem 512 -Djline.terminal=none sbtVersion </dev/null
done

echo "Finished!"
