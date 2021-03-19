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

  --with-avahi # don't need this, already on the system

  --with-systemd # don't need this, using custom systemd service

  --with-convolution # don't need this, using LADSPA

  --with -stdout # not using this


  
[Simple Installation Instructions](https://github.com/mikebrady/shairport-sync/blob/master/INSTALL.md)

git clone https://github.com/mikebrady/shairport-sync.git

cd shairport-sync

autoreconf -i -f

sudo apt-get install libglib2.0-dev

sudo apt-get install libmosquitto-dev

./configure --sysconfdir=/etc --with-alsa --with-apple-alac --with-pipe --with-metadata --with-dbus-interface --with-dbus-test-client --with-mpris-interface --with-mqtt-client --with-ssl=openssl

make

sudo make install

which shairport-sync

shairport-sync --version
# 3.3.8rc3-alac-OpenSSL-ALSA-pipe-metadata-mqtt-dbus-mpris-sysconfdir:/etc
