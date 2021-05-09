/etc/pulse/default.pa - global preferences

sudo pkill pulseaudio

pulseaudio -D

Cannot create pipe sinks when snapserver is running and polling for new content


pacmd load-module module-pipe-sink file=/tmp/spotify_fifo sink_name=Spotify format=s16le rate=48000

pacmd update-sink-proplist Spotify device.description=Spotify

pacmd load-module module-pipe-sink file=/tmp/plex_fifo sink_name=Plex format=s16le rate=48000

pacmd update-sink-proplist Plex device.description=Plex

pacmd load-module module-pipe-sink file=/tmp/bluetooth_fifo sink_name=Bluetooth format=s16le rate=48000

pacmd unload-module

pacmd list-sinks - list output devices

pacmd list-sink-inputs - list program sources

pactl list short modules
