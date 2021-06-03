[Snap server Config Paramaters](https://github.com/badaix/snapcast/blob/master/doc/configuration.md)  
`sudo systemctl restart snapserver`  
snapserver service file path:  
`/lib/systemd/system/snapserver.service`  
snapserver config file path:  
`/etc/snapserver.conf`  

[Snapclient Config Paramaters](http://manpages.ubuntu.com/manpages/cosmic/man1/snapclient.1.html)  
snapclient service file path:  
`/lib/systemd/system/snapclient@.service`  
snapserver config file path:  
`/etc/default/snapclient-bedroom`

stream = airplay:///shairport-sync?name=Airplay[&devicename=Snapcast][&port=5000]

alsa: alsa://?name=<name>&device=<alsa device>
  
get alsa hardware info with arecord -l

hw:X,Y comes from this mapping of your hardware

X is the card number, while Y is the device number

