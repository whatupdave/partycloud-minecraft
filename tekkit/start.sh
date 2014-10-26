#!/bin/bash

cp --update /srv/*.jar /data
cp --update -r /srv/config /data
cp --update -r /srv/libraries /data
cp --update -r /srv/mods /data
cp --update -r /srv/server.properties /data

exec $@
