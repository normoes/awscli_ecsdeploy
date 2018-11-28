FROM docker:latest

ENV PATH "/root/.local/bin/:${PATH}"

RUN apk update \
    && apk --no-cache add curl python3 python3-dev jq \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && pip install --upgrade --user pip \
    && pip install --upgrade --user awscli \
    && pip install --upgrade --user ecs-deploy \
    && pip install --upgrade --user setuptools  \
    && pip install --upgrade --user black  \
    && rm -rf /var/cache/apk/*

ENTRYPOINT []
CMD []
