# smart-switch-control
This is the guide with code to turn on/off the relay on a kankun smart switch


# Connecting to the smart switch
When you power the switch on initally, it will be in Wireless Access Point mode with an SSID OK_SP3. Connect to this network.
Next SSH to the device using '*ssh root@192.168.10.253*' (default ip: *192.168.10.253*, password: '*p9z34c*' or '*1234*', depending on model)

Once you have successfully connected vis ssh, it is recommended to chagne the default password using '*passwd*' command.

# Connecting to local network
*cd /etc/config*

Replace the two files, network and wireless with the given files(in files-changed)

*reboot*

Upon successful reboot, your device must now be connected to your local wifi network.

# Adding relay control scripts
*cd /*

*mkdir relay_conrtol*

add the given scripts(in scripts-to-add)

*chmod u+x /relay_control/relay_on.sh*

# Controlling the switch
Run *relay_on.sh* to turn on the switch

*sh relay_control/relay_on.sh*
