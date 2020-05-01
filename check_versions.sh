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

# docker run -it normo/aws_test:$1 pip freeze
docker run -it normo/aws_test:$1 pip freeze
docker run -it normo/aws_test:$1 python --version && docker --version && git --version && jq --version && curl --version && bash --version && zip --version
