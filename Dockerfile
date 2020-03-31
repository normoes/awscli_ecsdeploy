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
    && pip install --no-cache-dir --upgrade pip-tools==4.4.1  \
    && rm -rf /var/cache/apk/*

COPY requirements.txt /
COPY requirements_compiled.txt /

RUN pip-sync requirements_compiled.txt

ENTRYPOINT []
CMD []
