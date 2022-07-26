[Building and Installing](https://github.com/mikebrady/shairport-sync#building-and-installing)

Build

sudo ./configure
  --sysconfdir=/etc  
  --with-ssl=openssl  
  --with-soxr # resampling library  
  --with-avahi # aparrently need this even though already on the system?  
  --with-alsa # need for ALSA endpoints  
  --with-apple-alac # need this for losslessly passing ALAC files  
  --with-pipe # need this for snapcast endpoint  
  --with-metadata # need this to read metadata  
  --with-dbus-interface # for dbus control  
  --with-dbus-test-client # for dbus testing  
  --with-mpris-interface (libglib2.0-dev dependent)  
  --with-mqtt-client (libmosquitto-dev dependent)  
  --with-systemd # don't need this, using custom systemd service  
  --with-convolution # don't need this, using LADSPA  
  --with -stdout
  
[Simple Installation Instructions](https://github.com/mikebrady/shairport-sync/blob/master/INSTALL.md)  

`sudo apt-get install build-essential libtool libglib2.0-dev libmosquitto-dev libssl-dev libavahi-client-dev libasound2-dev`  
`sudo apt-get install libpopt-dev libconfig++-dev`  
`git clone https://github.com/mikebrady/shairport-sync.git`  
`cd shairport-sync`  
`autoreconf -i -f`  
`./configure --sysconfdir=/etc --with-alsa --with-apple-alac --with-pipe --with-metadata --with-dbus-interface --with-dbus-test-client --with-mpris-interface --with-mqtt-client --with-ssl=openssl --with-stdout --with-avahi`  
`make`  
`sudo make install`  

`shairport-sync --version`  
`3.3.7rc3-alac-OpenSSL-Avahi-ALSA-stdout-pipe-metadata-mqtt-dbus-mpris-sysconfdir:/etc`  
