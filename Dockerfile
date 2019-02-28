FROM docker:latest

RUN apk update \
    && apk --no-cache add curl python3 python3-dev jq git\
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip install --upgrade pip \
    && pip install --upgrade awscli \
    && pip install git+https://github.com/normoes/ecs-deploy.git@develop \
    && pip install --upgrade setuptools  \
    && pip install --upgrade black  \
    && pip install --upgrade bandit  \
    && pip install --upgrade sphinx  \
    && pip install --upgrade sphinx_rtd_theme  \
    && apk del git \
    && rm -rf /var/cache/apk/*
# && pip install --upgrade ecs-deploy \
ENTRYPOINT []
CMD []
