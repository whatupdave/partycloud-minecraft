FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN curl http://www.creeperrepo.net/FTB2/modpacks%5EFTBInfinity%5E1_6_2%5EFTBInfinityServer.zip \
         -o /tmp/ftb-infinity.zip && \
    mkdir -p /srv && \
    unzip /tmp/ftb-infinity -d /srv && \
    rm /tmp/ftb-infinity.zip

ADD server /srv/server

RUN cd /srv && /bin/sh ./FTBInstall.sh
RUN ls -la /srv
RUN mv /srv/FTBServer-1.7.10-1408.jar /srv/server.jar

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms2048m -Xmx2048m -XX:PermSize=128m -jar server.jar nogui"]
ENTRYPOINT ["/bin/bash","/srv/server"]
