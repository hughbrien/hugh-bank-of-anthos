#!/bin/bash

sudo docker run \
   --detach \
   --name instana-agent \
   --volume /var/run:/var/run \
   --volume /run:/run \
   --volume /dev:/dev:ro \
   --volume /sys:/sys:ro \
   --volume /var/log:/var/log:ro \
   --privileged \
   --net=host \
   --pid=host \
   --env="INSTANA_AGENT_ENDPOINT=ingress-coral-saas.instana.io" \
   --env="INSTANA_AGENT_ENDPOINT_PORT=443" \
   --env="INSTANA_AGENT_KEY=j10ulnZ6Ro2OSl5rr1hM5Q" \
   --env="INSTANA_DOWNLOAD_KEY=j10ulnZ6Ro2OSl5rr1hM5Q" \
   --volume /Users/hughbrien/Software/hugh-bank-of-anthos/configuration-pingers.yaml:/opt/instana/agent/etc/instana/configuration-pingers.yaml \
   icr.io/instana/agent