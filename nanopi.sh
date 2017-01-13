#!/bin/bash

echo "${MAGENTA}"
echo "************************************"
echo "********* NanoPi setup... **********"
echo "************************************"
echo "${WHITE}"

##############################################################
## Change "op_mode" value to "2" for Wi-Fi controller driver.
##  This enables access point mode.
##############################################################

echo "options bcmdhd firmware_path=/lib/firmware/ap6212/fw_bcm43438a0.bin op_mode=2" >/etc/modprobe.d/bcmdhd.conf 
