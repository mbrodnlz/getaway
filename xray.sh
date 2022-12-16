#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a3a2ba4a-ec41-4737-ae60-523b1ef825b5"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

