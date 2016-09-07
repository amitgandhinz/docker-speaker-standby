## Speaker Standby ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 

RUN apt-get update  && apt-get install git python python-dev python-distribute python-pip
RUN apt-get install python-numpy python-pyaudio alsa-utils
RUN apt-get install cron nano

RUN git clone https://github.com/amitgandhinz/docker-speaker-standby.git

RUN cd docker-speaker-standby && crontab crontab

RUN touch /var/log/cron.log

CMD ["tail", "-f",  "/var/log/cron.log"]




