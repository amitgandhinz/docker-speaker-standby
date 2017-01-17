# docker-speaker-standby
Play a tone to prevent a speaker going into standby

A tone will play at 10Hz - below the normal human hearing levels.
This will send a signal to your speaker that it is still active and will prevent it from going back into standby mode.


# Docker

```
$ docker build -t speaker_standby .
$ docker run -d --net host --device /dev/snd --name speaker_standby --restart=always speaker_standby
```

