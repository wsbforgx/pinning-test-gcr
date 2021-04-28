#!/bin/bash

docker build \
  --build-arg REVISION=$(git rev-parse HEAD) \
  --build-arg SOURCE=docker/Dockerfile \
  -t "gcr.io/personalsdm-216019/pinning-test-gcr:latest" \
  -f docker/Dockerfile .



docker push gcr.io/personalsdm-216019/pinning-test-gcr:latest
