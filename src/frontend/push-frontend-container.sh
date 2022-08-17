#!/bin/bash

export VERSION=1.1.12
# aws ecr-public get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin public.ecr.aws/z6u6t6j2

sudo docker build . --tag frontend:${VERSION}
sudo docker tag frontend:${VERSION} public.ecr.aws/z6u6t6j2/frontend:${VERSION}
sudo docker push public.ecr.aws/z6u6t6j2/frontend:${VERSION}


