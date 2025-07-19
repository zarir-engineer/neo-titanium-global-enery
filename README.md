use commands

ffmpeg -i /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half.png -qscale:v 3 /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half-compressed.png


# qscale:v from 1 - 31, where 31 is the lightest file
ffmpeg -i /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half.png.heavy -qscale:v 3 /home/sinhurry/Documents/GitHub/neo-titanium-global-enery/assets/images/main-top-half-compressed.png
