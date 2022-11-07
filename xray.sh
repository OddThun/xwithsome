#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8af720e9-5ac0-4ac5-87df-0314503525a2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

