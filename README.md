Debian Stretch (9) + aircrack-ng + crunch + hashcat-4.0.1 & hashcat-3.30.7z
# crunch [min] [max] [characters] -s [start_from]
crunch 10 12 0123456789
crunch 8 8 | aircrack-ng -e [ESSID] -w – [file path to the .cap file]
