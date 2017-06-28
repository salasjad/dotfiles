#Lenovo ThinkPad configurations for Linux users
I bought a Lenovo ThinkPad T460p and Thinkpad Ultra docking station, and noticed that a few things had to be configured in order to properly run Ubuntu. I will add some of these fixes here in case they can come into use by some of you.

## Configurations for ThinkPad laptops:

### Increase speed and sensitivitity trackpointer - trackpoint.rules
To increase the sensitivity and speed of the trackpointer. Add the rule to: /etc/udev/rules.d/trackpoint.rules and then do a reboot.

### Remove flickering when using Google Chrome and Skype - 20-intel.conf
I noticed that the ThinkPad screen is flickering whenever I move the cursor while using Google Chrome, Skype and a few other applications. Add the 20-intel.conf file to /etc/share/X11/xorg.conf.d/ and then do a reboot. 
#### If you use an external monitor, notice that you will not be able to rotate into clock- or counterwise orientation. 

### Fix network manager problem after a suspend - wifi-resume.service
I registered that the integrated network manager in Ubuntu 16.04 wasn't shoing nearby wifi networks. So here is a script to resume the network manager after a suspend. Just place the wifi-resume.service script into /etc/systemd/system/.

## Configurations for Thinkpad docking stations:

### Solve irritating noise when connected to docking station - TP-ultra-dock/alsadock.conf 
The ALSA sound drivers are not loaded properly which created issues when you try to play audio from the audio jack on Thinkpad Ultra- and Pro docking stations. Add this config file to: /etc/modprobe.d/alsadock.conf and then do a reboot.

### dock.sh & undock.sh
The docking and undocking events didn't work properly right out of the box. You need to add the lenovo-dock and lenovo-undock files inside /etc/acpi/events folder and modify the files according to your username. Then add dock.sh and undock.sh to /etc/acpi and make sure that these two files are executable (chmod if not).
