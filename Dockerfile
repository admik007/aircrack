FROM debian:stretch

RUN echo "#Debian Stable (9) Stretch \n\
deb http://ftp.debian.sk/debian/ stretch main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ stretch main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ stretch-updates main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ stretch-updates main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ stretch-proposed-updates main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ stretch-proposed-updates main contrib non-free \n\
\n\
deb http://ftp.debian.sk/debian/ stretch-backports main contrib non-free \n\
deb-src http://ftp.debian.sk/debian/ stretch-backports main contrib non-free \n\
\n\
deb http://security.debian.org/ stretch/updates main contrib \n\
deb-src http://security.debian.org/ stretch/updates main contrib" > /etc/apt/sources.list

RUN apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get -y autoremove
RUN apt-get -y install git screen vim wget p7zip p7zip-full build-essential libssl-dev libsqlite3-dev crunch aircrack-ng beignet-opencl-icd beignet beignet-dev nvidia-cuda-*
RUN apt-get clean

RUN cd /root/ && wget https://hashcat.net/files/hashcat-4.0.1.7z && 7z x hashcat-4.0.1.7z
RUN cd /root/ && wget https://hashcat.net/files_legacy/hashcat-3.30.7z && 7z x hashcat-3.30.7z

VOLUME [ " /data " ]

CMD while true; do sleep 10; done
