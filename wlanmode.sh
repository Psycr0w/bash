#!/bin/bash
printf "########### WlanModes ###########\n"
ifconfig wlan0 down
case "$1" in
mon)
iwconfig wlan0 mode monitor
echo "Inferface now in Monitor Mode"
;;
man)
iwconfig wlan0 mode managed
echo "Inferface now in Managed Mode"
;;
esac
ifconfig wlan0 up
