## Speaker Standby ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 

RUN apt-get update
RUN apt-get install git python python-dev python-distribute python-pip
RUN apt-get install python-numpy python-pyaudio alsa-utils
RUN apt-get install cron nano

RUN git clone https://github.com/amitgandhinz/docker-speaker-standby.git # clone repo

RUN cd docker-speaker-standby
ADD play_tone.sh /docker-speaker-standby/play_tone.sh

CMD ["/docker-speaker-standby/play_tone.sh"]




