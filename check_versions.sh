#!/bin/bash

set -euo pipefail

if [ -z "$@" ]; then
  echo "Please provide a tag for the docker image, like 1.1"
  exit 1
fi

if [ $# -ne 1 ]; then
  echo "Please provide a tag for the docker image, like 1.1"
  exit 1
fi

docker run -it normo/aws_test:$1 pip list
docker run -it normo/aws_test:$1 python --version
docker run -it normo/aws_test:$1 docker --version
