# awscli_ecsdeploy
docker image including docker, awscli and [ecs-deploy](https://github.com/fabfuel/ecs-deploy/releases)

I use this image to avoid downloading/installing necessary tools during the **gitlab-ci deployment** pipelines.

* image is based on `docker:latest`:
 - `Docker version 18.06.1-ce, build e68fc7a`
* python2 is used:
 - `Python 2.7.15`
* `pip list` shows:
 - awscli          1.16.14            
 - boto3           1.9.4              
 - botocore        1.12.4             
 - certifi         2018.8.24          
 - chardet         3.0.4              
 - click           6.7                
 - colorama        0.3.9              
 - docutils        0.14               
 - ecs-deploy      1.4.3
 - future          0.16.0             
 - futures         3.2.0              
 - idna            2.7                
 - jmespath        0.9.3              
 - pip             18.0               
 - pyasn1          0.4.4              
 - python-dateutil 2.7.3              
 - PyYAML          3.13               
 - requests        2.19.1             
 - rsa             3.4.2              
 - s3transfer      0.1.13             
 - setuptools      39.1.0.post20180508
 -  - six             1.11.0             
 - urllib3         1.23
* Additionally installed packages:
* curl 
* python
* python-dev
* py-pip

---

at [docker hub](https://hub.docker.com/r/normoes/awscli_ecsdeploy/)
