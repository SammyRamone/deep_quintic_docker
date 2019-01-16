#!/usr/bin/env bash

IMAGE_NAME=ros-melodic
DIRNAME=`dirname $0`

# Build the docker image
docker build\
  --build-arg user=$USER\
  --build-arg uid=$UID\
  --build-arg home=$HOME\
  --build-arg workspace=$SCRIPTPATH\
  --build-arg shell=$SHELL\
  -t $IMAGE_NAME $DIRNAME
