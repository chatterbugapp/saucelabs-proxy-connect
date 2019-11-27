#!/bin/sh

exec /usr/local/bin/sc --no-ssl-bump-domains all --tunnel-identifier $TUNNEL_ID $@
