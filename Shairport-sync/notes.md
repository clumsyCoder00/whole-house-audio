[Building and Installing](https://github.com/mikebrady/shairport-sync#building-and-installing)

Build (can probably remove many of these options)

sudo ./configure 
  --sysconfdir=/etc
  
  --with-alsa # need for ALSA endpoints
  
  --with-soxr # not sure if I need this
  
  --with-avahi # shouldn't need this, already on the system
  
  --with-ssl=openssl # depricated, don't need this
  
  --with-systemd # use this as a template to start off with, use multi-instance systemd instead
  
  --with-convolution # don't need this, using LADSPA
  
  --with-apple-alac # need this for losslessly passing ALAC files
  
  --with-pipe # need this for snapcast endpoint
  
  --with-metadata # need this to read metadata
  
  --with -stdout # dont think I'm using this
  
  --with-dbus-interface # for dbus control
  
  --with-dbus-test-client # for dbus testing
