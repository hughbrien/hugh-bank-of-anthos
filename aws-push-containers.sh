#!/bin/bash


aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/z6u6t6j2
docker build -t boa-frontend .
docker tag boa-frontend:latest public.ecr.aws/z6u6t6j2/boa-frontend:1.1.1
docker push public.ecr.aws/z6u6t6j2/boa-frontend:1.1.1


