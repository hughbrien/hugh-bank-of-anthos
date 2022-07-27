#!/bin/bash

helm repo add gremlin https://helm.gremlin.com/
kubectl create namespace gremlin
helm install gremlin gremlin/gremlin --namespace gremlin \
    --set gremlin.hostPID=true \
    --set gremlin.container.driver=any \
    --set gremlin.secret.managed=true \
    --set gremlin.secret.type=secret \
    --set gremlin.secret.teamID=a4aa6238-c6ed-470f-aa62-38c6ed770ff7   \
    --set gremlin.secret.clusterID=hughbrien-bank-of-athos \
    --set gremlin.secret.teamSecret=ca1c657c-154f-4456-9c65-7c154fb45646

