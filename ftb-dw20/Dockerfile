FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

RUN curl -s http://www.creeperrepo.net/FTB2/modpacks%5EDirewolf20_1_6_4%5E1_0_23%5EDirewolf20Server.zip \
         -o /tmp/ftb-dw20.zip && \
    mkdir -p /srv && \
    unzip /tmp/ftb-dw20 -d /srv && \
    rm /tmp/ftb-dw20.zip

RUN cd /srv/mods && curl -s http://big-reactors.com/download/alpha/BigReactors-0.3.4A2.jar -O
ADD server /srv/server

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms2048m -Xmx2048m -XX:PermSize=128m -jar FTBServer-1.6.4-965.jar nogui"]

ENTRYPOINT ["/bin/bash","/srv/server"]
