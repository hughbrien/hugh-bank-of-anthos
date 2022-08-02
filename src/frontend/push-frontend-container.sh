#!/bin/bash

export VERSION=1.1.7
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/z6u6t6j2

docker build . --platform linux/amd64  --tag boa-frontend:${VERSION}
docker tag boa-frontend:${VERSION} public.ecr.aws/z6u6t6j2/boa-frontend:${VERSION}
docker push public.ecr.aws/z6u6t6j2/boa-frontend:${VERSION}



