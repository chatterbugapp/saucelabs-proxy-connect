#!/bin/sh

nc -vnlp 26000 > /tmp/tunnel-identifer
/usr/local/bin/sc --no-ssl-bump-domains all --tunnel-identifier `cat /tmp/tunnel-identifier` $@
