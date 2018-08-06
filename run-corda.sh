#!/bin/sh

set -e

nodeScreenName="corda-node"
webScreenName="corda-webserver"

echo "Starting Corda node in screen called $nodeScreenName"
screen -S corda-node -dm java -jar corda.jar

echo "Starting Corda webserver in screen called $webScreenName"
screen -S corda-webserver -dm java -jar corda-webserver.jar

echo "Finished starting Corda"