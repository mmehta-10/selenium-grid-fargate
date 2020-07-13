ARG image_name
ARG image_version
FROM selenium/$image_name:$image_version

USER root

RUN apt-get update -y \	
  && apt-get install curl -y \
  && apt-get install jq -y 

# export_remote_host.sh exposes node's REMOTE_HOST as explained here -
# https://github.com/SeleniumHQ/docker-selenium#selenium-hub-and-node-configuration-options

COPY export_remote_host.sh /opt/bin/export_remote_host.sh
RUN chmod +x /opt/bin/export_remote_host.sh

# Selenium Base dockerfile entrypoint is defined here:
# https://github.com/SeleniumHQ/docker-selenium/blob/bba2ca8439c7f5d44869032192d0c6852c3dc58f/Base/Dockerfile#L81
# Our entrypoint is defined in export_remote_host.sh, where the above entrypoing is included.

# Switch to being a non-privileged user
USER seluser

CMD ["/opt/bin/export_remote_host.sh"]
