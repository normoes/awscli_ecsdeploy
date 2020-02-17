# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* `pip freeze` shows:
```
appdirs==1.4.3
attrs==19.3.0
awscli==1.18.0
bandit==1.6.2
black==19.10b0
boto3==1.12.0
botocore==1.15.0
certifi==2019.11.28
chardet==3.0.4
click==6.7
colorama==0.4.3
dictdiffer==0.8.0
docutils==0.15.2
dparse==0.4.1
ecs-deploy==1.10.0
entrypoints==0.3
flake8==3.7.9
future==0.18.2
gitdb2==3.0.2
GitPython==3.0.8
idna==2.8
jmespath==0.9.4
mccabe==0.6.1
more-itertools==8.2.0
packaging==20.1
pathspec==0.7.0
pbr==5.4.4
pluggy==0.13.1
py==1.8.1
pyasn1==0.4.8
pycodestyle==2.5.0
pyflakes==2.1.1
pyparsing==2.4.6
pytest==5.3.5
python-dateutil==2.8.1
PyYAML==5.2
regex==2020.1.8
requests==2.22.0
rsa==3.4.2
s3transfer==0.3.3
safety==1.8.5
six==1.14.0
smmap2==2.0.5
stevedore==1.32.0
toml==0.10.0
typed-ast==1.4.1
urllib3==1.25.8
wcwidth==0.1.8
```

* Additionally installed packages:
```
Python 3.8.1
Docker version 19.03.6, build 369ce74a3c
git version 2.24.1
jq-master-v20191114-85-g260888d269
curl 7.67.0 (x86_64-alpine-linux-musl) libcurl/7.67.0 OpenSSL/1.1.1d zlib/1.2.11 nghttp2/1.40.0
GNU bash, version 5.0.11(1)-release (x86_64-alpine-linux-musl)
This is Zip 3.0 (July 5th 2008), by Info-ZIP.
  Compiled with gcc 8.3.0 for Unix (Linux ELF) on Nov 15 2019.
```

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
