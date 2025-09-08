# hadolint global ignore=DL3007,DL3008,DL3013,DL3018,DL3059
# Add AWS CLI to traefik image
ARG DOCKER_TAG=latest

FROM traefik:${DOCKER_TAG}

RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --no-cache-dir --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli \
	tzdata \
    && rm -rf /var/cache/apk/*
