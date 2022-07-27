#!/bin/bash


helm repo add gremlin https://helm.gremlin.com/
kubectl create namespace gremlin
helm install gremlin gremlin/gremlin --namespace gremlin \
    --set gremlin.hostPID=true \
    --set gremlin.container.driver=any \
    --set gremlin.secret.managed=true \
    --set gremlin.secret.type=secret \
    --set gremlin.secret.teamID=<teamid>   \
    --set gremlin.secret.clusterID=cluster-bank-of-anthos \
    --set gremlin.secret.teamSecret=<secret>

