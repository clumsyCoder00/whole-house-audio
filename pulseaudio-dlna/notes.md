Compile this fork of the software:  

https://github.com/Cygn/pulseaudio-dlna  

cd to new directory to make venv environment  
`$ python -m venv pulseaudio-dlna`
`$ source pulseaudio-dlna`  
cd to files containing project  
`$ make`  

I needed to install newer version of protobuf  

`$ pip install protobuf==3.19.1'  

`$ /bin/pulseaudio-dlna --version'  
