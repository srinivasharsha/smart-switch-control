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

add the relay_on and relay_off scripts(in scripts-to-add)

*chmod u+x /relay_control/relay_on.sh*

Next create the directory /www/cgi-bin/ (*mkdir /www/cgi-bin/*) and create the relay.cgi script(from scripts-to-add)

Give execute permission (*chmod +x /www/cgi-bin/relay.cgi*).

# Controlling the switch
Run *relay_on.sh* to turn on the switch

*sh relay_control/relay_on.sh*

# Controlling from browser

Open a browser on the same network and use the following URLs to control the relay:

*http://<your_device_ip>/cgi-bin/relay.cgi?on*

*http://<your_device_ip>/cgi-bin/relay.cgi?off*
