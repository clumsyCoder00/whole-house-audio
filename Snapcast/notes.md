Installation  
`sudo apt-get install 'snapserver_0.25.0-1_amd64.deb'`  
Restart Service  
`sudo systemctl restart snapserver`  



[Snap server Config Paramaters](https://github.com/badaix/snapcast/blob/master/doc/configuration.md)  
`sudo systemctl restart snapserver`  
snapserver service file path:  
`/lib/systemd/system/snapserver.service`  
snapserver config file path:  
`/etc/snapserver.conf`  

stream = airplay:///shairport-sync?name=Airplay[&devicename=Snapcast][&port=5000]

alsa: alsa://?name=<name>&device=<alsa device>
  
get alsa pulseaudio-dlna device with 'pacmd list-sinks | grep name:'
  
get alsa hardware info with arecord -l

hw:X,Y comes from this mapping of your hardware

X is the card number, while Y is the device number

[Snapclient Config Paramaters](http://manpages.ubuntu.com/manpages/cosmic/man1/snapclient.1.html)  
snapclient service file path:  
`/lib/systemd/system/snapclient@.service`  
snapserver config file path:  
`/etc/default/snapclient-bedroom`
  
Tail logs with this command:  
  `tail -f /var/log/syslog | grep snap*'  
   
For snapcast client connecting to dlna sink, need to use a [user systemd process](https://nts.strzibny.name/systemd-user-services/)
locate snapclient service in `/etc/systemd/user`  
`systemctl --user daemon-reload`  
`systemctl --user enable snapclient@family_room`  
`systemctl --user start snapclient@family_room`  
