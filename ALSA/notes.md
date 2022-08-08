[asoundrc file configuration parameters](https://alsa.opensrc.org/Asoundrc)

non-user asound.conf file is found at /etc/asound.conf
confirm that profiles created in asound.conf were entered correctly using  
`sudo /etc/init.d/alsa-utils restart` then  
`aplay -L`  

`aplay -L` - list sink/output ports

`arecord -L` - list source/input ports

sound level meter  
`arecord -vv -D plughw:7,0 /dev/null`  

restart sound server
`sudo /etc/init.d/alsa-utils restart`
