# awscli_ecsdeploy
docker image including docker, awscli, s3cmd and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* image is based on `docker:latest`:
  - `Docker version 18.09.0, build 4d60db4`
* python2 is used:
  - `Python 2.7.15`
* `pip list` shows:
  - awscli          1.16.61
  - boto3           1.9.51
  - botocore        1.12.51
  - certifi         2018.10.15
  - chardet         3.0.4
  - click           6.7
  - colorama        0.3.9
  - docutils        0.14
  - ecs-deploy      1.5.0
  - future          0.16.0
  - futures         3.2.0
  - idna            2.7
  - jmespath        0.9.3
  - pip             18.1
  - pyasn1          0.4.4
  - python-dateutil 2.7.5
  - PyYAML          3.13
  - requests        2.20.1
  - rsa             3.4.2
  - s3cmd           2.0.2
  - s3transfer      0.1.13
  - setuptools      40.6.2
  - six             1.11.0
  - urllib3         1.24.1
* Additionally installed packages:
  - `curl`
  - `python`
  - `python-dev`
  - `py-pip`
  - `jq`

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
