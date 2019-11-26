#!/bin/sh

TAG=$(git rev-parse --short HEAD)
IMAGE=chatterbugapp/saucelabs-connect-proxy:${TAG}
docker build -t $IMAGE .
docker push $IMAGE
