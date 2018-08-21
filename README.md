# awscli_ecsdeploy
docker image including docker, awscli and ecs-deploy


* image is based on docker image including version 18.06
 - alpine:3.8
* python2 is used
* awscli==1.15.82 is installed using pip
* ecs-deploy==1.4.3 is installed using pip (https://github.com/fabfuel/ecs-deploy/releases)

additionally installed packages:
* curl 
* python
* python-dev

removed packages:
* py-pip (is used only on image creation)
