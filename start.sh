#!/bin/sh

exec /usr/local/bin/sc -u $SAUCELABS_USER -k $SAUCELABS_KEY --no-ssl-bump-domains all --tunnel-identifier $TUNNEL_ID $@
