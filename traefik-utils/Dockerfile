FROM python:3.13-alpine

WORKDIR /app

ARG USER=dns
ARG UID=11000

# See https://stackoverflow.com/a/55757473/12429735RUN
RUN adduser \
    --disabled-password \
    --gecos "" \
    --shell "/sbin/nologin" \
    --uid "${UID}" \
    --home "/home/dns" \
    --no-create-home \
    "${USER}"

RUN mkdir -p /home/dns && chown ${USER}:${USER} /home/dns

RUN pip install --no-cache-dir boto3 requests tenacity

COPY --chown=${USER}:${USER} app/updater.py .
RUN chmod 555 ./updater.py

CMD ["python", "updater.py"]
