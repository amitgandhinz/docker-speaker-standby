## Speaker Standby ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 

RUN apt-get update  && apt-get install git python python-dev python-distribute python-pip
RUN apt-get install python-numpy
RUN apt-get install python-pyaudio
RUN apt-get install cron

RUN git clone https://github.com/amitgandhinz/docker-speaker-standby.git

RUN cd docker-speaker-standby && cp crontab /etc/cron.d/standby-cron
RUN chmod 0644 /etc/cron.d/standby-cron

CMD cron



