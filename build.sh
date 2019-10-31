#!/bin/bash

if [ "$1" = "" ]
then
  echo "Usage: $0 <tag>"
  exit 1
fi

TAG=$1

docker build \
  -t avejidah/py3-tf2-opencv4:latest \
  .

docker push avejidah/py3-tf2-opencv4:latest
docker tag avejidah/py3-tf2-opencv4:latest avejidah/py3-tf2-opencv4:${TAG}
docker push avejidah/py3-tf2-opencv4:${TAG}
