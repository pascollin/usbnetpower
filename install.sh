#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

#Dependencies
apt install python3 python3-pip
pip3 install pyusb

cp usbnetpower8800.py /bin/power
chmod a+x /bin/power
cp 50-usbnetpower.rules /etc/udev/rules.d/

echo "Need to reboot now"
