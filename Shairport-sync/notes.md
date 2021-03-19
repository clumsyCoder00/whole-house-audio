[Building and Installing](https://github.com/mikebrady/shairport-sync#building-and-installing)

Build (can probably remove many of these options)

sudo ./configure

  --sysconfdir=/etc

  --with-ssl=openssl

  --with-soxr # resampling library

  --with-alsa # need for ALSA endpoints

  --with-apple-alac # need this for losslessly passing ALAC files

  --with-pipe # need this for snapcast endpoint

  --with-metadata # need this to read metadata

  --with-dbus-interface # for dbus control

  --with-dbus-test-client # for dbus testing

  --with-mpris-interface (libglib2.0-dev dependent)

  --with-mqtt-client (libmosquitto-dev dependent)

  --with-avahi # shouldn't need this, already on the system

  --with-systemd # use this as a template to start off with, use multi-instance systemd instead

  --with-convolution # don't need this, using LADSPA

  --with -stdout # not using this


  
[Simple Installation Instructions](https://github.com/mikebrady/shairport-sync/blob/master/INSTALL.md)
