#!/bin/sh

if [ `id -u` -ne '0' ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Install nvidia driver
add-apt-repository -y ppa:xorg-edgers/ppa
apt-get update
apt-get install -y nvidia-346 nvidia-settings
#Screen Blanks/Monitor Turns Off (Geforce Go card)
#If screen is blank then: edit /etc/X11/xorg.conf insert new line below "Screen" "UseDisplayDevice" "DFP", reboot

# Install network driver
cd network/realtek_rtl8111_8168_8411_pci_express
./install.sh
cd ../..
