# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* image is based on `docker:latest`:
  - `Docker version 18.09.1, build 4c52b90`
* python2 is used:
  - `Python 3.6.6`
* `pip list` shows:
  - appdirs         1.4.3     
  - attrs           18.2.0  
  - awscli          1.16.87
  - bandit          1.5.1 
  - black           18.9b0
  - boto3           1.9.77
  - botocore        1.12.77
  - certifi         2018.11.29
  - chardet         3.0.4
  - click           6.7
  - colorama        0.3.9
  - docutils        0.14
  - ecs-deploy      1.6.0
  - future          0.17.1
  - gitdb2          2.0.5     
  - GitPython       2.1.11
  - idna            2.8
  - jmespath        0.9.3
  - pbr             5.1.1 
  - pip             18.1
  - pyasn1          0.4.5
  - python-dateutil 2.7.5
  - PyYAML          3.13
  - requests        2.21.0
  - rsa             3.4.2
  - s3transfer      0.1.13
  - setuptools      40.6.2
  - six             1.12.0
  - smmap2          2.0.5     
  - stevedore       1.30.0 
  - toml            0.10.0  
  - urllib3         1.24.1
* Additionally installed packages:
  - `curl`
  - `python3`
  - `python3-dev`
  - `jq`

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
