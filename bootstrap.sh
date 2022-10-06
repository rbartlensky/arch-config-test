#!/bin/bash

set -eou pipefail

lsblk
echo "select drive: "
read drive

echo "hostname: "
read hostname

echo "username: "
read username

sed -i "s/YOUR_DRIVE/$drive/g" *.json
sed -i "s/YOUR_HOSTNAME/$hostname/g" *.json
sed -i "s/YOUR_USERNAME/$username/g" *.json

archinstall --config ./config.json --disk-layout ./disk.json --creds ./creds.json
