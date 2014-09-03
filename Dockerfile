FROM ubuntu:14.04
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless

ADD https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar /srv/minecraft_server.jar
ADD start.sh /srv/start.sh

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms1G -Xmx1G -jar minecraft_server.jar nogui"]

ENTRYPOINT ["/bin/bash","/srv/start.sh"]