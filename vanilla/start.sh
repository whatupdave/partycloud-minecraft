#!/bin/bash

mv /srv/minecraft_server.jar /data/minecraft_server.jar
echo "eula=true" > /data/eula.txt

exec $@
