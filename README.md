# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* `pip freeze` shows:
```
appdirs==1.4.3
astroid==2.3.3
attrs==19.3.0
awscli==1.18.50
bandit==1.6.2
black==19.10b0
boto3==1.13.0
botocore==1.16.0
certifi==2020.4.5.1
chardet==3.0.4
click==7.1.2
colorama==0.4.3
dictdiffer==0.8.0
docutils==0.15.2
dparse==0.5.1
ecs-deploy @ git+https://github.com/normoes/ecs-deploy.git@ef723da0979766c20d352cde000b0898fbf4ff28
entrypoints==0.3
flake8==3.7.9
future==0.18.2
gitdb==4.0.4
GitPython==3.1.1
idna==2.9
importlib-metadata==1.6.0
isort==4.3.21
jmespath==0.9.5
lazy-object-proxy==1.4.3
mccabe==0.6.1
more-itertools==8.2.0
packaging==20.3
pathspec==0.8.0
pbr==5.4.5
pip-tools==5.1.1
pluggy==0.13.1
py==1.8.1
pyasn1==0.4.8
pycodestyle==2.5.0
pyflakes==2.1.1
pylint==2.4.4
pyparsing==2.4.7
pytest==5.4.1
python-dateutil==2.8.1
PyYAML==5.3.1
regex==2020.4.4
requests==2.23.0
rsa==3.4.2
s3transfer==0.3.3
safety==1.8.7
six==1.14.0
smmap==3.0.2
stevedore==1.32.0
toml==0.10.0
typed-ast==1.4.1
urllib3==1.25.9
wcwidth==0.1.9
wrapt==1.11.2
zipp==3.1.0
```

* Additionally installed packages:
```
Python 3.7.7
Docker version 19.03.8, build afacb8b7f0
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
    pip-compile --rebuild --upgrade --output-file requirements.txt requirements.in
```
* Install the project dependencies using the created `requirements.txt`:
```
    pip-sync requirements.txt
```

