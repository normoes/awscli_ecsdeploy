FROM docker:latest

ENV PATH "/root/.local/bin/:${PATH}"

RUN apk update \
    && apk --no-cache add curl python python-dev py-pip jq \
    && pip install --upgrade pip \
    && pip install awscli --upgrade --user \
    && pip install ecs-deploy --upgrade --user \
    && rm -rf /var/cache/apk/* \
    && aws --version \
    && docker --version

ENTRYPOINT []
CMD []
