#!/bin/bash

if [[ $TUNNEL_ID == "" ]]; then
  exec $SC -u $USER -k $ACCESS_KEY
else
  exec $SC -u $USER -k $ACCESS_KEY --tunnel-identifier $TUNNEL_ID
fi
