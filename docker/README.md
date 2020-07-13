For running selenium grid in ECS, Selenium node needs to expose its IP for the Selenium Hub to register it successfully, since they are on different machines.

### export_remote_host.sh
This script exposes the private IP of container for Selenium Node as `REMOTE_HOST` env var. This is done so that the hub (which could be on another FARGATE instance) can register this node.

Run this command to create docker image using Dockerfile -

` docker build --build-arg image_name=<node-chrome-debug|node-chrome> --build-arg image_version=<selenium-version> -t selenium-node-fargate:<selenium-version> .`

For example: 

` docker build --build-arg image_name=node-chrome-debug --build-arg image_version=3.141.59-zinc -t selenium-node-fargate:3.141.59-zinc .`

### Source
https://github.com/SeleniumHQ/docker-selenium#selenium-hub-and-node-configuration-options
