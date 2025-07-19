use commands

###### first convert to jpg, because qscale:v filters do not have any effect on png. png is not lossless, jpg is lossless
ffmpeg -i /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half.png.heavy /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half.jpg

###### qscale:v from 1 - 31, where 31 is the lightest file
ffmpeg -i /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half.jpg -qscale:v 3 /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half-compressed.png
