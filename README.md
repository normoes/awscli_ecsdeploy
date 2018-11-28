# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* image is based on `docker:latest`:
  - `Docker version 18.09.0, build 4d60db4`
* python2 is used:
  - `Python 3.6.6`
* `pip list` shows:
  - appdirs         1.4.3     
  - attrs           18.2.0  
  - awscli          1.16.63
  - black           18.9b0
  - boto3           1.9.53
  - botocore        1.12.53
  - certifi         2018.10.15
  - chardet         3.0.4
  - click           6.7
  - colorama        0.3.9
  - docutils        0.14
  - ecs-deploy      1.5.0
  - future          0.17.1
  - idna            2.7
  - jmespath        0.9.3
  - pip             18.1
  - pyasn1          0.4.4
  - python-dateutil 2.7.5
  - PyYAML          3.13
  - requests        2.20.1
  - rsa             3.4.2
  - s3transfer      0.1.13
  - setuptools      40.6.2
  - six             1.11.0
  - toml            0.10.0  
  - urllib3         1.24.1
* Additionally installed packages:
  - `curl`
  - `python3`
  - `python3-dev`
  - `jq`

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
