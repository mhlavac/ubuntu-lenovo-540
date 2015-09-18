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

# Intel microcode
apt-get install intel-microcode

# Intel Graphics Installer for Linux* 1.2.0
wget https://download.01.org/gfx/ubuntu/15.04/main/pool/main/i/intel-linux-graphics-installer/intel-linux-graphics-installer_1.2.0-0intel1_amd64.deb
dpkg -i intel-linux-graphics-installer_1.2.0-0intel1_amd64.deb

# Install network driver
cd network/realtek_rtl8111_8168_8411_pci_express
./install.sh
cd ../..
