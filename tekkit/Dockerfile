FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN curl -s http://mirror.technicpack.net/Technic/servers/tekkitmain/Tekkit_Server_v1.2.9e.zip \
         -o /tmp/tekkit.zip && \
    mkdir -p /srv && \
    unzip /tmp/tekkit.zip -d /srv

ADD start.sh /srv/start.sh

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms1G -Xmx1G -jar minecraft_server.jar nogui"]

ENTRYPOINT ["/bin/bash","/srv/start.sh"]
