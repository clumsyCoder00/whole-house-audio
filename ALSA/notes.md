[asoundrc file configuration parameters](https://alsa.opensrc.org/Asoundrc)

non-user asound.conf file is found at /etc/asound.conf

restart sound server

aplay -L - list sink/output ports

arecord -L - list source/input ports

sound level meter  
arecord -vv -D plughw:7,0 /dev/null  

sudo /etc/init.d/alsa-utils restart
