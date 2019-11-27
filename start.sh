#!/bin/sh

nc -vnlp 26000 > /tmp/tunnel-identifer
exec  /usr/local/bin/sc --tunnel-identifier `cat /tmp/tunnel-identifier` $@
