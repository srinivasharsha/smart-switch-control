#!/bin/bash

#Change directory
cd /sys/class/leds/tp-link:blue:relay/

#Update value
#Turn relay on
echo 1 > brightness
