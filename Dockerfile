FROM debian:stable

RUN echo "#Debian Stable (9) Stretch" >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-proposed-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-proposed-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-backports main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-backports main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://security.debian.org/ stable/updates main contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/ stable/updates main contrib" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -y autoremove
RUN apt-get -y install build-essential libssl-dev libsqlite3-dev crunch aircrack-ng wget p7zip p7zip-full beignet-opencl-icd beignet beignet-dev nvidia-cuda-* git screen

RUN wget https://hashcat.net/files/hashcat-4.0.1.7z
RUN 7z x hashcat-4.0.1.7z

RUN wget https://hashcat.net/files_legacy/hashcat-3.30.7z
RUN 7z x hashcat-3.30.7z

VOLUME [ " /data " ]

CMD while true; do echo ""; sleep 10; done
