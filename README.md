# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* `pip-compile --rebuild --upgrade --output-file=requirements_compiled.txt requirements.txt` shows:
```
appdirs==1.4.3            # via black, virtualenv
astroid==2.3.3            # via pylint
attrs==19.3.0             # via black, pytest
awscli==1.18.32
bandit==1.6.2
black==19.10b0
boto3==1.12.32
botocore==1.15.32         # via awscli, boto3, s3transfer
certifi==2019.11.28       # via pipenv, requests
chardet==3.0.4            # via requests
click==7.1.1              # via black, pip-tools, safety
colorama==0.4.3           # via awscli
dictdiffer==0.8.0
distlib==0.3.0            # via virtualenv
docutils==0.15.2          # via awscli, botocore
dparse==0.5.0             # via safety
git+https://github.com/normoes/ecs-deploy.git@upstream_merge
entrypoints==0.3          # via flake8
filelock==3.0.12          # via virtualenv
flake8==3.7.9
future==0.18.2
gitdb==4.0.2              # via gitpython
gitpython==3.1.0          # via bandit
idna==2.9                 # via requests
importlib-metadata==1.6.0  # via pluggy, pytest, virtualenv
isort==4.3.21             # via pylint
jmespath==0.9.5           # via boto3, botocore
lazy-object-proxy==1.4.3  # via astroid
mccabe==0.6.1             # via flake8, pylint
more-itertools==8.2.0     # via pytest
packaging==20.3           # via dparse, pytest, safety
pathspec==0.7.0           # via black
pbr==5.4.4                # via stevedore
pip-tools==4.4.1
pipenv==2018.11.26        # via dparse
pluggy==0.13.1            # via pytest
py==1.8.1                 # via pytest
pyasn1==0.4.8             # via rsa
pycodestyle==2.5.0        # via flake8
pyflakes==2.1.1           # via flake8
pylint==2.4.4
pyparsing==2.4.6          # via packaging
pytest==5.4.1
python-dateutil==2.8.1    # via botocore
pyyaml==5.3.1             # via awscli, bandit, dparse
regex==2020.2.20          # via black
requests==2.23.0          # via safety
rsa==3.4.2                # via awscli
s3transfer==0.3.3         # via awscli, boto3
safety==1.8.7
six==1.14.0               # via astroid, bandit, packaging, pip-tools, python-dateutil, stevedore, virtualenv
smmap==3.0.1              # via gitdb
stevedore==1.32.0         # via bandit
toml==0.10.0              # via black, dparse
typed-ast==1.4.1          # via astroid, black
urllib3==1.25.8           # via botocore, requests
virtualenv-clone==0.5.4   # via pipenv
virtualenv==20.0.15       # via pipenv
wcwidth==0.1.9            # via pytest
wrapt==1.11.2             # via astroid
zipp==3.1.0               # via importlib-metadata
```

* Additionally installed packages:
```
Python 3.7.7
Docker version 19.03.7, build 7141c199a2
git version 2.18.0
jq-1.5-1-a5b5cbe
curl 7.58.0 (x86_64-pc-linux-gnu) libcurl/7.58.0 OpenSSL/1.1.1 zlib/1.2.11 libidn2/2.0.4 libpsl/0.19.1 (+libidn2/2.0.4) nghttp2/1.30.0 librtmp/2.3
GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)
This is Zip 3.0 (July 5th 2008), by Info-ZIP.
  Compiled with gcc 6.3.0 20170415 for Unix (Linux ELF).
```

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)

---

This project uses `pip-tools` to create a requirements file that is used during the installation of the project dependencies - This should happen during tests, when developing and in production.

The general workflow:
* Create the requirements file:
```
    pip-compile --rebuild --output-file requirements_compiled.txt requirements.txt
```
* Install the project dependencies using the created `requirements_compiled.txt`:
```
    pip-sync requirements_compiled.txt
```

