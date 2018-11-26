FROM docker:latest

ENV PATH "/root/.local/bin/:${PATH}"

RUN apk update \
    && apk --no-cache add curl python python-dev py-pip jq \
    && pip install --upgrade --user pip \
    && pip install --upgrade --user awscli \
    && pip install --upgrade --user ecs-deploy \
    && pip install --upgrade --user setuptools  \
    && pip install --upgrade --user s3cmd  \
    && rm -rf /var/cache/apk/*

ENTRYPOINT []
CMD []
