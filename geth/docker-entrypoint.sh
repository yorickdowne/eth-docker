#!/usr/bin/env sh
if [ -n "${JWT_SECRET}" ]; then
  echo -n ${JWT_SECRET} > /var/lib/goethereum/secrets/jwtsecret
  echo "JWT secret was supplied in .env"
fi

if [[ ! -f /var/lib/goethereum/secrets/jwtsecret ]]; then
  echo "Generating JWT secret"
  __secret1=$(echo $RANDOM | md5sum | head -c 32)
  __secret2=$(echo $RANDOM | md5sum | head -c 32)
  echo -n ${__secret1}${__secret2} > /var/lib/goethereum/secrets/jwtsecret
fi

if [ -f /var/lib/goethereum/prune-marker ]; then
  $@ snapshot prune-state
  rm -f /var/lib/goethereum/prune-marker
else
  exec $@
fi
