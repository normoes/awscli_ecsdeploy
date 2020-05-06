FROM python:3.7-alpine3.10

RUN apk --no-cache add \
        musl-dev \
        gcc \
        curl \
        docker \
        jq \
        git \
        bash \
        zip \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir --upgrade setuptools  \
    && pip install --no-cache-dir --upgrade pip-tools==5.1.1  \
    && rm -rf /var/cache/apk/*

COPY requirements.txt /

RUN pip-sync requirements.txt

ENTRYPOINT []
CMD []
