#!/bin/bash

set -Eeo pipefail

echo -e "\e[32mCompile python dependencies.\e[39m"
pip-compile --rebuild --upgrade --output-file requirements.txt requirements.in

echo -e "\e[32mDone. Check faucet/requirements.txt.\e[39m"
