#!/bin/bash
printf "########### WlanModes ###########\n########## By 94erBrom ##########\n\n"
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
)
var=$(iwconfig 2>&1 | sed -e '/wlan/,/Mode/!d')
case "$var" in
Managed)
iwconfig wlan0 mode monitor
echo "Inferface now in Monitor Mode"
;;
Monitor)
iwconfig wlan0 mode managed
echo "Inferface now in Managed Mode"
;;
esac
esac
ifconfig wlan0 up
