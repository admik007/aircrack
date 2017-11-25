FROM debian:stretch

RUN echo "#Debian Stable (9) Stretch" >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable main contrib non-free" >> /etc/apt/sources.list
RUN echo " " >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo " " >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-proposed-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-proposed-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo " " >> /etc/apt/sources.list
RUN echo "deb http://ftp.debian.sk/debian/ stable-backports main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.debian.sk/debian/ stable-backports main contrib non-free" >> /etc/apt/sources.list
RUN echo " " >> /etc/apt/sources.list
RUN echo "deb http://security.debian.org/ stable/updates main contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/ stable/updates main contrib" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -y autoremove
RUN apt-get -y install crunch aircrack-ng

CMD /while true; do echo ""; sleep 10; done
