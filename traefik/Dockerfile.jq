# hadolint global ignore=DL3007,DL3008,DL3059
FROM debian:trixie-slim

RUN set -eux; \
  apt-get update; \
  DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install -y --no-install-recommends curl jq gosu; \
  rm -rf /var/lib/apt/lists/*; \
# verify that the binary works
  gosu nobody true
