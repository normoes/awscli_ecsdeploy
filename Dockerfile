FROM docker:latest

RUN apk update \
    && apk --no-cache add curl python3 python3-dev jq \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip install --upgrade pip \
    && pip install --upgrade awscli \
    && pip install --upgrade ecs-deploy \
    && pip install --upgrade setuptools  \
    && pip install --upgrade black  \
    && rm -rf /var/cache/apk/*

ENTRYPOINT []
CMD []
