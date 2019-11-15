#!/bin/bash

cd $(dirname $0)
cd dummyProject

for version in $(cat ../SBT_VERSIONS); do
    echo "==================== Loading $verion... ===================="
    echo $version >project/build.properties
    ../sbt/bin/sbt sbtVersion
done 

echo "Finished!"
