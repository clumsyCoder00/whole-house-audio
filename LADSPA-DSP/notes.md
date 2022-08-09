# Installation

[https://github.com/bmc0/dsp](https://github.com/bmc0/dsp)

[Installation Guide](https://github.com/bmc0/dsp/wiki/System-Wide-DSP-Guide)

# Configuration
[Instructions for multiple configurations](https://github.com/bmc0/dsp#configuration)

run: `sudo /etc/init.d/alsa-utils restart`
`sudo alsa force-reload`  
to apply changes made to config files


/etc/ladspa_dsp/config - global config folder, make if doesn't exist

~/.config/ladspa_dsp/config - user ladspa dsp config (cant use with snapcast client as it uses a different user)
