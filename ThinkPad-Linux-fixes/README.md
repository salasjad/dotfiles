##Lenovo ThinkPad configurations for Linux users
I bought a Lenovo ThinkPad T460p and noticed that a few things should be configured in order to properly run Ubuntu. I will add some of these fixes here in case they can come into use by some of you.

###trackpoint.rules
To increase the sensitivity and speed of the trackpointer. Add the rule to: /etc/udev/rules.d/trackpoint.rules and then do a reboot.

###alsadock.conf
The ALSA sound drivers are not loaded properly which created issues when you try to play audio from the audio jack on Thinkpad Ultra- and Pro docking stations. Add this config file to: /etc/modprobe.d/alsadock.conf and then do a reboot.
