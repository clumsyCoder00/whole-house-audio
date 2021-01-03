# whole-house-audio
FOSS linux based whole house audio system. 

The goal of this system is to allow for Airplay devices to send audio to a central managment system which distributes the audio to both local soundcards, a DLNA receiver and (to a lesser extent) chromecast audio receivers. Configuration of local Spotify and Plex media players which allow for remote control of content through their apps is also included.

The intent of this repository is to co-locate all configuration files needed to configure the various components of the system. These components include:
- [Snapcast](https://github.com/badaix/snapcast)
- [shairport-sync](https://github.com/mikebrady/shairport-sync)
- ALSA - the software framework of the Linux kernel which manages sound card device drivers
- LADSPA - an API that allows for effects plugins to be applied to soundcards and other sound destinations in the Linux OS.
- [LADSPA-DSP](https://github.com/bmc0/dsp) - a LADSPA plugin that enables Digital Signal Processing used for acoutic room correction via [RoomEQWizard](https://www.roomeqwizard.com/) and implementation of equal loudness curves
- [esphome](https://esphome.io/) - control of power amplifier power supplies. Script polls for active sound cards, sends ON signal to ESP8266 connected relay of amplifier connected to active soundcards.

(https://community.roonlabs.com/t/a-guide-how-to-do-room-correction-and-use-it-in-roon/23800)
