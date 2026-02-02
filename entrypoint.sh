#!/bin/bash

# Download Xray Core (Latest)
wget -O webcore.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip

# Unzip
unzip webcore.zip

# Rename to avoid detection
mv xray webcore
chmod +x webcore

# Update Config with Environment Variables
sed -i "s/UUID_PLACEHOLDER/$UUID/g" config.json
sed -i "s/WSPATH_PLACEHOLDER/$WSPATH/g" config.json
sed -i "s/8080/$PORT/g" config.json

# Run fake web server in background
node server.js &

# Run VLESS Core
./webcore run -c config.json
