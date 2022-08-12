#!/bin/bash

helm install instana-agent \
   --repo https://agents.instana.io/helm \
   --namespace instana-agent \
   --create-namespace \
   --set agent.key=j10ulnZ6Ro2OSl5rr1hM5Q \
   --set agent.downloadKey=j10ulnZ6Ro2OSl5rr1hM5Q \
   --set agent.endpointHost=ingress-coral-saas.instana.io \
   --set agent.endpointPort=443 \
   --set cluster.name='hugh-bank-of-anthos' \
   --set zone.name='us-west-1' \
   instana-agent


