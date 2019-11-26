#!/bin/bash

if [[ -z "$TUNNEL_ID_ENV_VAR" ]]; then
  exec /usr/local/bin/sc $@
else
  exec /usr/local/bin/sc --tunnel-identifier ${!TUNNEL_ID_ENV_VAR} $@
fi
