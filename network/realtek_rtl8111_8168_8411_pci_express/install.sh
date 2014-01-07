#!/bin/sh
if [ `id -u` -ne '0' ]; then
  echo "This script must be run as root" >&2
  exit 1
fi


tar -xvjf r8168-8.037.00.bz2
cd r8168-8.037.00
autoload.sh
