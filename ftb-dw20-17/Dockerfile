FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN curl -s http://www.creeperrepo.net/FTB2/modpacks%5Edirewolf20_17%5E1_0_2%5Edirewolf20_17-server.zip \
         -o /tmp/ftb-dw20.zip && \
    mkdir -p /srv && \
    unzip /tmp/ftb-dw20 -d /srv && \
    rm /tmp/ftb-dw20.zip

ADD server /srv/server

RUN cd /srv && ./FTBInstall.sh

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms2048m -Xmx2048m -XX:PermSize=128m -jar minecraft_server.1.7.10.jar nogui"]
ENTRYPOINT ["/bin/bash","/srv/server"]
