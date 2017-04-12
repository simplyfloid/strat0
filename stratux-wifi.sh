#!/bin/bash


# Preliminaries. Kill off old services.
/usr/bin/killall -9 hostapd hostapd-edimax
/usr/sbin/service isc-dhcp-server stop


# Detect RPi version.
#  Per http://elinux.org/RPi_HardwareHistory

DAEMON_CONF=/etc/hostapd/hostapd.conf
DAEMON_SBIN=/usr/sbin/hostapd

DAEMON_CONF=/etc/hostapd/hostapd-edimax.conf
DAEMON_SBIN=/usr/sbin/hostapd-edimax

${DAEMON_SBIN} -B ${DAEMON_CONF}

sleep 5

/usr/sbin/service isc-dhcp-server start
