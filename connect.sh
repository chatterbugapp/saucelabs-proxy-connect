#!/bin/bash

if [[ -z "$TUNNEL_ID_ENV_VAR" ]]; then
  exec $SC -u $USER -k $ACCESS_KEY --tunnel-identifier ${!TUNNEL_ID_ENV_VAR}
else
  exec $SC -u $USER -k $ACCESS_KEY
fi
