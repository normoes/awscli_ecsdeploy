# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* image is based on `docker:latest`:
  - `Docker version 18.09.6, build 481bc77`
* python3 is used:
  - `Python 3.6.8`
* `pip freeze` shows:
```
appdirs==1.4.3
attrs==19.1.0
awscli==1.16.180
bandit==1.6.1
black==19.3b0
boto3==1.9.170
botocore==1.12.170
certifi==2019.6.16
chardet==3.0.4
click==6.7
colorama==0.3.9
docutils==0.14
dparse==0.4.1
ecs-deploy==1.7.0
future==0.17.1
gitdb2==2.0.5
GitPython==2.1.11
idna==2.8
jmespath==0.9.4
packaging==19.0
pbr==5.3.0
pyasn1==0.4.5
pyparsing==2.4.0
python-dateutil==2.8.0
PyYAML==5.1
requests==2.22.0
rsa==3.4.2
s3transfer==0.2.1
safety==1.8.5
six==1.12.0
smmap2==2.0.5
stevedore==1.30.1
toml==0.10.0
urllib3==1.25.3
```

* Additionally installed packages:
```
Python 3.6.8
Docker version 18.09.6, build 481bc77
git version 2.20.1
jq-master-v3.8.0-3651-g18d55b6bda
curl 7.64.0 (x86_64-alpine-linux-musl) libcurl/7.64.0 OpenSSL/1.1.1b zlib/1.2.11 libssh2/1.8.2 nghttp2/1.35.1
GNU bash, version 4.4.19(1)-release (x86_64-alpine-linux-musl)
This is Zip 3.0 (July 5th 2008), by Info-ZIP. 
  Compiled with gcc 8.2.0 for Unix (Linux ELF) on Nov 15 2018.
```

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
