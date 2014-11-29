FROM java
MAINTAINER Dave Newman <dave@assembly.com> (@whatupdave)

ENV version 1.8-R0.1

RUN apt-get update
RUN apt-get install -y git
RUN mkdir /build && \
    curl https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar \
            > /build/BuildTools.jar && \
    cd /build && \
    java -jar BuildTools.jar && \
    mkdir /minecraft && \
    cp /build/Spigot/Spigot-Server/target/spigot-${version}-SNAPSHOT.jar /minecraft/server.jar

ADD server /minecraft/server

WORKDIR /data
EXPOSE 25565

CMD ["java -Xms1G -Xmx1G -XX:MaxPermSize=128M -jar server.jar nogui"]

ENTRYPOINT ["/bin/bash","/minecraft/server"]
