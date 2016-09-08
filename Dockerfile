## Speaker Standby ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 

RUN apt-get update  && apt-get install git python python-dev python-distribute python-pip
RUN apt-get install python-numpy python-pyaudio alsa-utils
RUN apt-get install cron nano

VOLUME /var/log/

RUN git clone https://github.com/amitgandhinz/docker-speaker-standby.git # clone repo

RUN cd docker-speaker-standby && crontab crontab

RUN touch /var/log/speaker_standby.log

CMD ["tail", "-f",  "/var/log/speaker_standby.log"]




