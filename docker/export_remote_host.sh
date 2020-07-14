#!/bin/sh
CONTAINER_IP=$(curl -s http://169.254.170.2/v2/metadata | jq -r '.Containers[1].Networks[0].IPv4Addresses[0]')
export REMOTE_HOST="http://$CONTAINER_IP:5555"

/opt/bin/entry_point.sh
