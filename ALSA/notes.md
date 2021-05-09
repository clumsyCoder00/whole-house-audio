[asoundrc file configuration parameters](https://alsa.opensrc.org/Asoundrc)

non-user asound.conf file is found at /etc/asound.conf

restart sound server

aplay -L - list sink/output ports

arecord -L - list source/input ports

sudo /etc/init.d/alsa-utils restart
