#!/bin/sh

if [ `id -u` -ne '0' ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Install network driver
cd network/realtek_rtl8111_8168_8411_pci_express
./install.sh
cd ../..
