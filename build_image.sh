#!/bin/bash

set -euo pipefail

if [ -z "$@" ]; then
  echo "Please provide a build version of the docker image, like 1.1"
  exit 1
fi

if [ $# -ne 1 ]; then
  echo "Please provide a build version of the docker image, like 1.1"
  exit 1
fi

docker build --no-cache -t normo/aws_test:$1 .

