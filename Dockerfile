## Speaker Standby ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 

RUN git clone https://github.com/amitgandhinz/docker-speaker-standby.git

ADD crontab /etc/cron.d/standby-cron
RUN chmod 0644 /etc/cron.d/standby-cron

CMD cron



