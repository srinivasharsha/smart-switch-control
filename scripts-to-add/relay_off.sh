#!/bin/bash

#Change directory
cd /sys/class/leds/tp-link:blue:relay/

#Update value
#Turn relay of
echo 0 > brightness
