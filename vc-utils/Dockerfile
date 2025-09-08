# hadolint global ignore=DL3007,DL3008,DL3059
FROM debian:trixie-slim

RUN set -eux; \
  apt-get update; \
  DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends curl jq gosu; \
  rm -rf /var/lib/apt/lists/*; \
# verify that the binary works
  gosu nobody true

# A user had root:984 and 755 permissions on /tmp. Root cause unknown; work around it
RUN chmod 1777 /tmp
COPY --chown=1000:1000 ./keymanager.sh /usr/local/bin/
# Belt and suspenders
RUN chmod -R 755 /usr/local/bin/*
