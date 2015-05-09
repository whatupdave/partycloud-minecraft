FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN curl -s http://ftb.cursecdn.com/FTB2/modpacks/FTBInfinity/1_5_1/FTBInfinityServer.zip \
         -o /tmp/ftb-infinity.zip && \
    mkdir -p /srv && \
    unzip /tmp/ftb-infinity -d /srv && \
    rm /tmp/ftb-infinity.zip

ADD server /srv/server

RUN cd /srv && /bin/sh ./FTBInstall.sh
RUN ls -la /srv
RUN mv /srv/FTBServer-1.7.10-1395.jar /srv/server.jar

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms2048m -Xmx2048m -XX:PermSize=128m -jar server.jar nogui"]
ENTRYPOINT ["/bin/bash","/srv/server"]
