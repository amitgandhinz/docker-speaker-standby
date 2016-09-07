# docker-speaker-standby
Play a tone to prevent a speaker going into standby

Initiate with crontab to run every N minutes.
A tone will play at 10Hz - below the normal human hearing levels.
This will send a signal to your speaker that it is still active and will prevent it from going back into standby mode.


Schedule using CronTab::
```
$ crontab -e
```


```
*/10 * * * * aplay ~/docker/docker-speaker_standby/10.wav
```


# Docker

```
$ docker build -t speaker_standby .
$ docker run -d --net host --device /dev/snd --name speaker_standby --restart=always speaker_standby
```

